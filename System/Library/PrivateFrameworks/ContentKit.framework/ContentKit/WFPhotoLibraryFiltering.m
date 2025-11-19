@interface WFPhotoLibraryFiltering
+ (void)performCustomFilteringUsingContentPredicates:(id)a3 compoundPredicateType:(unint64_t)a4 forQuery:(id)a5 withInput:(id)a6 resultHandler:(id)a7;
@end

@implementation WFPhotoLibraryFiltering

+ (void)performCustomFilteringUsingContentPredicates:(id)a3 compoundPredicateType:(unint64_t)a4 forQuery:(id)a5 withInput:(id)a6 resultHandler:(id)a7
{
  v134 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  if (!a4)
  {
    v15 = [v11 firstObject];
    v16 = [WFContentCompoundPredicate notPredicateWithSubpredicate:v15];
    v127 = v16;
    a4 = 1;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v127 count:1];

    v11 = v17;
  }

  v104 = v13;
  v105 = v14;
  v18 = getWFPhotoLibraryFilteringLogObject();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = @"OR";
    v129 = "+[WFPhotoLibraryFiltering performCustomFilteringUsingContentPredicates:compoundPredicateType:forQuery:withInput:resultHandler:]";
    *buf = 136315650;
    if (a4 == 1)
    {
      v19 = @"AND";
    }

    v130 = 2114;
    v131 = v19;
    v132 = 2112;
    v133 = v11;
    _os_log_impl(&dword_21E1BD000, v18, OS_LOG_TYPE_INFO, "%s Filtering using predicate of type %{public}@ and subpredicates %@", buf, 0x20u);
  }

  v103 = a4;

  v20 = objc_opt_new();
  v21 = objc_opt_new();
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v22 = v11;
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

  v33 = v103;
  if (v103 != 2 || ![v20 count])
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
      v41 = [v12 sortDescriptors];
      v42 = [v41 count];

      if (v42)
      {
        v96 = v12;
        v43 = [v12 sortDescriptors];
        v44 = objc_opt_new();
        v121 = 0u;
        v122 = 0u;
        v123 = 0u;
        v124 = 0u;
        obj = v43;
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
              v50 = [v49 comparator];

              if (v50)
              {

LABEL_45:
                v54 = obj;

                v55 = 0;
                v36 = v104;
                goto LABEL_46;
              }

              v51 = [v49 property];
              v52 = WFPHAssetKeyPathForContentProperty(v51);

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

        v56 = [v101 sortDescriptors];
        v39 = v56 != 0;

        v34 = v105;
        v33 = v103;
        v12 = v96;
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
    if (v12)
    {
      v58 = v57;
    }

    else
    {
      v58 = 0;
    }

    obja = [v12 slice];
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

      v63 = [v38 sortDescriptors];

      if (!v63)
      {
        v65 = v61;
        v58 = v91;
        if (v65)
        {
LABEL_80:
          v93 = v65;
          v78 = v65;
          v79 = v78;
          v97 = v12;
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
            v12 = v97;
          }

          else
          {
            v12 = v97;
            [a1 performFallbackFilteringWithItems:v82 withContentPredicates:v20 compoundPredicateType:v103 originalQuery:v97 resultHandler:v105];
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

      v64 = [v38 sortDescriptors];
      v65 = v61;
      [v61 sortUsingDescriptors:v64];
      v58 = v91;
    }

    else
    {
      v92 = [v21 if_objectsPassingTest:&__block_literal_global_212];
      if ([v92 count] && (v33 == 1 || objc_msgSend(v21, "count") == 1))
      {
        v66 = [v92 if_objectsPassingTest:&__block_literal_global_217];
        v67 = [v66 firstObject];

        v89 = v67;
        if (v67)
        {
          v68 = v67;
        }

        else
        {
          v68 = [v92 firstObject];
        }

        v71 = v68;
        v72 = [v68 assetCollection];
        [v21 removeObject:v71];
        if ([v21 count])
        {
          v73 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:v103 subpredicates:v21];
          v74 = [v73 wf_photoLibraryFilteringPredicate];
          [v101 setPredicate:v74];
        }

        v75 = getWFPhotoLibraryFilteringLogObject();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
        {
          v76 = [v72 wfName];
          *buf = 136315650;
          v129 = "+[WFPhotoLibraryFiltering performCustomFilteringUsingContentPredicates:compoundPredicateType:forQuery:withInput:resultHandler:]";
          v130 = 2112;
          v131 = v76;
          v132 = 2112;
          v133 = v21;
          _os_log_impl(&dword_21E1BD000, v75, OS_LOG_TYPE_INFO, "%s Performing optimized photo lookup for album %@, remaining predicates %@", buf, 0x20u);
        }

        v77 = [getPHAssetClass_11424() fetchAssetsInAssetCollection:v72 options:v101];

        v38 = v101;
        v65 = v77;

        v34 = v105;
      }

      else
      {
        if ([v21 count])
        {
          v69 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:v33 subpredicates:v21];
          v70 = [v69 wf_photoLibraryFilteringPredicate];
          [v101 setPredicate:v70];

          v38 = v101;
        }

        v65 = [getPHAssetClass_11424() fetchAssetsWithOptions:v38];
      }

      v64 = v92;
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
  v115[4] = a1;
  v111[0] = MEMORY[0x277D85DD0];
  v111[1] = 3221225472;
  v111[2] = __127__WFPhotoLibraryFiltering_performCustomFilteringUsingContentPredicates_compoundPredicateType_forQuery_withInput_resultHandler___block_invoke_3;
  v111[3] = &unk_278346FE0;
  v114 = a1;
  v112 = v12;
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