@interface WFPhotoLibraryFiltering
+ (void)performCustomFilteringUsingContentPredicates:(id)predicates compoundPredicateType:(unint64_t)type forQuery:(id)query withInput:(id)input resultHandler:(id)handler;
@end

@implementation WFPhotoLibraryFiltering

+ (void)performCustomFilteringUsingContentPredicates:(id)predicates compoundPredicateType:(unint64_t)type forQuery:(id)query withInput:(id)input resultHandler:(id)handler
{
  v134 = *MEMORY[0x277D85DE8];
  predicatesCopy = predicates;
  queryCopy = query;
  inputCopy = input;
  handlerCopy = handler;
  if (!type)
  {
    firstObject = [predicatesCopy firstObject];
    v16 = [WFContentCompoundPredicate notPredicateWithSubpredicate:firstObject];
    v127 = v16;
    type = 1;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v127 count:1];

    predicatesCopy = v17;
  }

  v104 = inputCopy;
  v105 = handlerCopy;
  v18 = getWFPhotoLibraryFilteringLogObject();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = @"OR";
    v129 = "+[WFPhotoLibraryFiltering performCustomFilteringUsingContentPredicates:compoundPredicateType:forQuery:withInput:resultHandler:]";
    *buf = 136315650;
    if (type == 1)
    {
      v19 = @"AND";
    }

    v130 = 2114;
    v131 = v19;
    v132 = 2112;
    v133 = predicatesCopy;
    _os_log_impl(&dword_21E1BD000, v18, OS_LOG_TYPE_INFO, "%s Filtering using predicate of type %{public}@ and subpredicates %@", buf, 0x20u);
  }

  typeCopy = type;

  v20 = objc_opt_new();
  v21 = objc_opt_new();
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v22 = predicatesCopy;
  v23 = [(__CFString *)v22 countByEnumeratingWithState:&v117 objects:v126 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v118;
    while (2)
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v118 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v117 + 1) + 8 * i);
        v116 = 0;
        v28 = WFPHAssetPredicateFromContentPredicate(v27, &v116);
        v29 = v116;
        v30 = v29;
        if (v28)
        {
          v31 = v21;
          v32 = v28;
        }

        else
        {
          if (v29)
          {
            v34 = v105;
            (v105)[2](v105, 0, v29);

            v35 = v22;
            goto LABEL_22;
          }

          v31 = v20;
          v32 = v27;
        }

        [v31 addObject:v32];
      }

      v24 = [(__CFString *)v22 countByEnumeratingWithState:&v117 objects:v126 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }
  }

  v33 = typeCopy;
  if (typeCopy != 2 || ![v20 count])
  {
    v37 = +[WFSharedPhotoLibrary sharedLibrary];
    v110 = 0;
    v38 = [v37 fetchOptionsWithError:&v110];
    v35 = v110;

    v36 = v104;
    v34 = v105;
    if (!v38)
    {
      v40 = getWFGeneralLogObject();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v129 = "+[WFPhotoLibraryFiltering performCustomFilteringUsingContentPredicates:compoundPredicateType:forQuery:withInput:resultHandler:]";
        v130 = 2112;
        v131 = v35;
        _os_log_impl(&dword_21E1BD000, v40, OS_LOG_TYPE_ERROR, "%s Unable to get fetch options for photo library: %@", buf, 0x16u);
      }

      (v105)[2](v105, 0, v35);
      goto LABEL_94;
    }

    [v38 setWantsIncrementalChangeDetails:0];
    [v38 setIncludeAssetSourceTypes:7];
    v101 = v38;
    v98 = v35;
    if ([v20 count])
    {
      v39 = 1;
    }

    else
    {
      sortDescriptors = [queryCopy sortDescriptors];
      v42 = [sortDescriptors count];

      if (v42)
      {
        v96 = queryCopy;
        sortDescriptors2 = [queryCopy sortDescriptors];
        v44 = objc_opt_new();
        v121 = 0u;
        v122 = 0u;
        v123 = 0u;
        v124 = 0u;
        obj = sortDescriptors2;
        v45 = [obj countByEnumeratingWithState:&v121 objects:buf count:16];
        if (v45)
        {
          v46 = v45;
          v47 = *v122;
          while (2)
          {
            for (j = 0; j != v46; ++j)
            {
              if (*v122 != v47)
              {
                objc_enumerationMutation(obj);
              }

              v49 = *(*(&v121 + 1) + 8 * j);
              comparator = [v49 comparator];

              if (comparator)
              {

LABEL_45:
                v54 = obj;

                v55 = 0;
                v36 = v104;
                goto LABEL_46;
              }

              property = [v49 property];
              v52 = WFPHAssetKeyPathForContentProperty(property);

              if (v52)
              {
                v53 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:v52 ascending:{objc_msgSend(v49, "ascending")}];
              }

              else
              {
                v53 = 0;
              }

              if (!v53)
              {
                goto LABEL_45;
              }

              [v44 addObject:v53];
            }

            v46 = [obj countByEnumeratingWithState:&v121 objects:buf count:16];
            v36 = v104;
            if (v46)
            {
              continue;
            }

            break;
          }
        }

        v54 = obj;

        v55 = v44;
LABEL_46:

        v38 = v101;
        [v101 setSortDescriptors:v55];

        sortDescriptors3 = [v101 sortDescriptors];
        v39 = sortDescriptors3 != 0;

        v34 = v105;
        v33 = typeCopy;
        queryCopy = v96;
      }

      else
      {
        v39 = 1;
        v38 = v101;
      }
    }

    if ([v20 count])
    {
      v57 = 0;
    }

    else
    {
      v57 = v39;
    }

    v95 = v57;
    if (queryCopy)
    {
      v58 = v57;
    }

    else
    {
      v58 = 0;
    }

    obja = [queryCopy slice];
    v94 = v59;
    if (v58 && obja == 0x7FFFFFFFFFFFFFFFLL && v59 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v38 setFetchLimit:v59];
    }

    if (v36)
    {
      v91 = v58;
      v60 = [v36 if_map:&__block_literal_global_207_11452];
      v61 = [v60 mutableCopy];

      if ([v21 count])
      {
        v62 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:v33 subpredicates:v21];
        [v61 filterUsingPredicate:v62];
      }

      sortDescriptors4 = [v38 sortDescriptors];

      if (!sortDescriptors4)
      {
        v65 = v61;
        v58 = v91;
        if (v65)
        {
LABEL_80:
          v93 = v65;
          v78 = v65;
          v79 = v78;
          v97 = queryCopy;
          if (v58)
          {
            v80 = WFIndexSetFromContentSlice(obja, v94, [v78 count]);
            v81 = [v79 objectsAtIndexes:v80];

            v79 = v81;
          }

          v82 = objc_opt_new();
          v106 = 0u;
          v107 = 0u;
          v108 = 0u;
          v109 = 0u;
          v83 = v79;
          v84 = [v83 countByEnumeratingWithState:&v106 objects:v125 count:16];
          if (v84)
          {
            v85 = v84;
            v86 = *v107;
            do
            {
              for (k = 0; k != v85; ++k)
              {
                if (*v107 != v86)
                {
                  objc_enumerationMutation(v83);
                }

                v88 = [(WFContentItem *)WFPhotoMediaContentItem itemWithObject:*(*(&v106 + 1) + 8 * k)];
                [v82 addObject:v88];
              }

              v85 = [v83 countByEnumeratingWithState:&v106 objects:v125 count:16];
            }

            while (v85);
          }

          if (v95)
          {
            (v105)[2](v105, v82, 0);
            queryCopy = v97;
          }

          else
          {
            queryCopy = v97;
            [self performFallbackFilteringWithItems:v82 withContentPredicates:v20 compoundPredicateType:typeCopy originalQuery:v97 resultHandler:v105];
          }

          v36 = v104;
          v35 = v98;
          v65 = v93;

          v34 = v105;
          v38 = v101;
          goto LABEL_93;
        }

LABEL_68:
        v34[2](v34, 0, 0);
        v35 = v98;
LABEL_93:

LABEL_94:
        goto LABEL_95;
      }

      sortDescriptors5 = [v38 sortDescriptors];
      v65 = v61;
      [v61 sortUsingDescriptors:sortDescriptors5];
      v58 = v91;
    }

    else
    {
      v92 = [v21 if_objectsPassingTest:&__block_literal_global_212];
      if ([v92 count] && (v33 == 1 || objc_msgSend(v21, "count") == 1))
      {
        v66 = [v92 if_objectsPassingTest:&__block_literal_global_217];
        firstObject2 = [v66 firstObject];

        v89 = firstObject2;
        if (firstObject2)
        {
          firstObject3 = firstObject2;
        }

        else
        {
          firstObject3 = [v92 firstObject];
        }

        v71 = firstObject3;
        assetCollection = [firstObject3 assetCollection];
        [v21 removeObject:v71];
        if ([v21 count])
        {
          v73 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:typeCopy subpredicates:v21];
          wf_photoLibraryFilteringPredicate = [v73 wf_photoLibraryFilteringPredicate];
          [v101 setPredicate:wf_photoLibraryFilteringPredicate];
        }

        v75 = getWFPhotoLibraryFilteringLogObject();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
        {
          wfName = [assetCollection wfName];
          *buf = 136315650;
          v129 = "+[WFPhotoLibraryFiltering performCustomFilteringUsingContentPredicates:compoundPredicateType:forQuery:withInput:resultHandler:]";
          v130 = 2112;
          v131 = wfName;
          v132 = 2112;
          v133 = v21;
          _os_log_impl(&dword_21E1BD000, v75, OS_LOG_TYPE_INFO, "%s Performing optimized photo lookup for album %@, remaining predicates %@", buf, 0x20u);
        }

        v77 = [getPHAssetClass_11424() fetchAssetsInAssetCollection:assetCollection options:v101];

        v38 = v101;
        v65 = v77;

        v34 = v105;
      }

      else
      {
        if ([v21 count])
        {
          v69 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:v33 subpredicates:v21];
          wf_photoLibraryFilteringPredicate2 = [v69 wf_photoLibraryFilteringPredicate];
          [v101 setPredicate:wf_photoLibraryFilteringPredicate2];

          v38 = v101;
        }

        v65 = [getPHAssetClass_11424() fetchAssetsWithOptions:v38];
      }

      sortDescriptors5 = v92;
    }

    if (v65)
    {
      goto LABEL_80;
    }

    goto LABEL_68;
  }

  v115[0] = MEMORY[0x277D85DD0];
  v115[1] = 3221225472;
  v115[2] = __127__WFPhotoLibraryFiltering_performCustomFilteringUsingContentPredicates_compoundPredicateType_forQuery_withInput_resultHandler___block_invoke;
  v115[3] = &__block_descriptor_40_e60_v32__0__WFContentPredicate_8Q16___v____NSArray___NSError__24l;
  v115[4] = self;
  v111[0] = MEMORY[0x277D85DD0];
  v111[1] = 3221225472;
  v111[2] = __127__WFPhotoLibraryFiltering_performCustomFilteringUsingContentPredicates_compoundPredicateType_forQuery_withInput_resultHandler___block_invoke_3;
  v111[3] = &unk_278346FE0;
  selfCopy = self;
  v112 = queryCopy;
  v34 = v105;
  v113 = v105;
  [(__CFString *)v22 if_flatMapAsynchronously:v115 completionHandler:v111];

  v35 = v112;
LABEL_22:
  v36 = v104;
LABEL_95:
}

void __127__WFPhotoLibraryFiltering_performCustomFilteringUsingContentPredicates_compoundPredicateType_forQuery_withInput_resultHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = *(a1 + 32);
  v14[0] = a2;
  v8 = MEMORY[0x277CBEA60];
  v9 = a2;
  v10 = [v8 arrayWithObjects:v14 count:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __127__WFPhotoLibraryFiltering_performCustomFilteringUsingContentPredicates_compoundPredicateType_forQuery_withInput_resultHandler___block_invoke_2;
  v12[3] = &unk_27834A430;
  v13 = v6;
  v11 = v6;
  [v7 performCustomFilteringUsingContentPredicates:v10 compoundPredicateType:1 forQuery:0 withInput:0 resultHandler:v12];
}

void __127__WFPhotoLibraryFiltering_performCustomFilteringUsingContentPredicates_compoundPredicateType_forQuery_withInput_resultHandler___block_invoke_3(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEB40];
  v4 = a2;
  v7 = [[v3 alloc] initWithArray:v4];

  v5 = a1[6];
  v6 = [v7 array];
  [v5 performFallbackFilteringWithItems:v6 withContentPredicates:0 compoundPredicateType:0 originalQuery:a1[4] resultHandler:a1[5]];
}

BOOL __127__WFPhotoLibraryFiltering_performCustomFilteringUsingContentPredicates_compoundPredicateType_forQuery_withInput_resultHandler___block_invoke_3_214(uint64_t a1, void *a2)
{
  v2 = [a2 assetCollection];
  v3 = [v2 assetCollectionType] == 2 && objc_msgSend(v2, "assetCollectionSubtype") == 209;

  return v3;
}

uint64_t __127__WFPhotoLibraryFiltering_performCustomFilteringUsingContentPredicates_compoundPredicateType_forQuery_withInput_resultHandler___block_invoke_2_209(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end