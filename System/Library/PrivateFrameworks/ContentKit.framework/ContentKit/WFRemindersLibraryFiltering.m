@interface WFRemindersLibraryFiltering
+ (void)getItemsMatchingQuery:(id)a3 withInput:(id)a4 resultHandler:(id)a5;
+ (void)performCustomFilteringUsingContentPredicates:(id)a3 compoundPredicateType:(unint64_t)a4 forQuery:(id)a5 withInput:(id)a6 resultHandler:(id)a7;
@end

@implementation WFRemindersLibraryFiltering

+ (void)getItemsMatchingQuery:(id)a3 withInput:(id)a4 resultHandler:(id)a5
{
  v8 = a4;
  if (v8)
  {
    v9 = a5;
    v10 = a3;
    v11 = +[WFContentItem contentPropertySubstitutor];
    [v10 runWithObjects:v8 propertySubstitutor:v11 completionHandler:v9];
  }

  else
  {
    v14.receiver = a1;
    v14.super_class = &OBJC_METACLASS___WFRemindersLibraryFiltering;
    v12 = a5;
    v13 = a3;
    objc_msgSendSuper2(&v14, sel_getItemsMatchingQuery_withInput_resultHandler_, v13, 0, v12);
  }
}

+ (void)performCustomFilteringUsingContentPredicates:(id)a3 compoundPredicateType:(unint64_t)a4 forQuery:(id)a5 withInput:(id)a6 resultHandler:(id)a7
{
  v107 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v79 = a5;
  v74 = a6;
  v77 = a7;
  v78 = a4;
  if (!a4)
  {
    v12 = [v11 firstObject];
    v13 = [WFContentCompoundPredicate notPredicateWithSubpredicate:v12];
    v103 = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v103 count:1];

    v78 = 1;
    v11 = v14;
  }

  if (getWFRemindersLibraryFilteringLogObject_onceToken != -1)
  {
    dispatch_once(&getWFRemindersLibraryFilteringLogObject_onceToken, &__block_literal_global_5906);
  }

  v15 = getWFRemindersLibraryFilteringLogObject_log;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = @"OR";
    *&buf[4] = "+[WFRemindersLibraryFiltering performCustomFilteringUsingContentPredicates:compoundPredicateType:forQuery:withInput:resultHandler:]";
    *buf = 136315650;
    if (v78 == 1)
    {
      v16 = @"AND";
    }

    *&buf[12] = 2114;
    *&buf[14] = v16;
    *&buf[22] = 2112;
    v105 = v11;
    _os_log_impl(&dword_21E1BD000, v15, OS_LOG_TYPE_INFO, "%s Filtering using predicate of type %{public}@ and subpredicates %@", buf, 0x20u);
  }

  v80 = objc_opt_new();
  v17 = objc_opt_new();
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v18 = v11;
  v19 = [v18 countByEnumeratingWithState:&v93 objects:v102 count:16];
  if (v19)
  {
    v20 = *v94;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v94 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v93 + 1) + 8 * i);
        v23 = WFReminderPredicateDescriptorFromContentPredicate(v22);
        if (v23)
        {
          [v17 addObject:v23];
        }

        else
        {
          [v80 addObject:v22];
        }
      }

      v19 = [v18 countByEnumeratingWithState:&v93 objects:v102 count:16];
    }

    while (v19);
  }

  if (v78 == 2 && [v80 count])
  {
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = __131__WFRemindersLibraryFiltering_performCustomFilteringUsingContentPredicates_compoundPredicateType_forQuery_withInput_resultHandler___block_invoke;
    v92[3] = &__block_descriptor_40_e60_v32__0__WFContentPredicate_8Q16___v____NSArray___NSError__24l;
    v92[4] = a1;
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = __131__WFRemindersLibraryFiltering_performCustomFilteringUsingContentPredicates_compoundPredicateType_forQuery_withInput_resultHandler___block_invoke_3;
    v88[3] = &unk_278346FE0;
    v91 = a1;
    v89 = v79;
    v90 = v77;
    [v18 if_flatMapAsynchronously:v92 completionHandler:v88];

    v24 = v89;
  }

  else
  {
    if ([v80 count] || (objc_msgSend(v79, "sortDescriptors"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "count") == 0, v26, v27))
    {
      v72 = 0;
      v25 = 1;
    }

    else
    {
      v28 = [v79 sortDescriptors];
      v29 = objc_opt_new();
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      obj = v28;
      v75 = [obj countByEnumeratingWithState:&v97 objects:buf count:16];
      if (v75)
      {
        v73 = *v98;
        while (2)
        {
          for (j = 0; j != v75; ++j)
          {
            if (*v98 != v73)
            {
              objc_enumerationMutation(obj);
            }

            v31 = *(*(&v97 + 1) + 8 * j);
            v32 = [v31 comparator];

            if (v32)
            {
LABEL_41:

LABEL_42:
              v72 = 0;
              goto LABEL_43;
            }

            v33 = [v31 property];
            v34 = [v33 name];
            v35 = @"Creation Date";
            v36 = [v34 isEqualToString:@"Creation Date"];

            if (v36)
            {
              v37 = [getREMReminderSortDescriptorClass() sortDescriptorSortingByCreationDateAscending:{objc_msgSend(v31, "ascending")}];
            }

            else
            {
              v38 = [v31 property];
              v39 = [v38 name];
              v40 = WFLocalizedContentPropertyNameMarker(@"Due Date");
              v41 = [v39 isEqualToString:v40];

              if (v41)
              {
                v37 = [getREMReminderSortDescriptorClass() sortDescriptorSortingByDueDateAscending:{objc_msgSend(v31, "ascending")}];
              }

              else
              {
                v42 = [v31 property];
                v43 = [v42 name];
                v44 = WFLocalizedContentPropertyNameMarker(@"Priority");
                v45 = [v43 isEqualToString:v44];

                if (!v45)
                {
                  goto LABEL_41;
                }

                v37 = [getREMReminderSortDescriptorClass() sortDescriptorSortingByPriorityAscending:{objc_msgSend(v31, "ascending")}];
              }
            }

            v46 = v37;

            if (!v46)
            {
              goto LABEL_42;
            }

            [v29 addObject:v46];
          }

          v75 = [obj countByEnumeratingWithState:&v97 objects:buf count:16];
          if (v75)
          {
            continue;
          }

          break;
        }
      }

      v72 = v29;
LABEL_43:

      v25 = v72 != 0;
    }

    if ([v80 count])
    {
      v47 = 0;
    }

    else
    {
      v47 = v25;
    }

    v68 = v47;
    if (v79)
    {
      v48 = v47;
    }

    else
    {
      v48 = 0;
    }

    v49 = WFGetWorkflowReminderStore();
    if ([v17 count])
    {
      v50 = WFCompoundReminderPredicateDescriptorWithSubpredicates(v17, v78);
      *&v97 = 0;
      *(&v97 + 1) = &v97;
      *&v98 = 0x2050000000;
      v51 = getREMReminderClass_softClass_5869;
      *(&v98 + 1) = getREMReminderClass_softClass_5869;
      if (!getREMReminderClass_softClass_5869)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __getREMReminderClass_block_invoke_5870;
        v105 = &unk_27834A178;
        v106 = &v97;
        __getREMReminderClass_block_invoke_5870(buf);
        v51 = *(*(&v97 + 1) + 24);
      }

      v52 = v51;
      _Block_object_dispose(&v97, 8);
      v53 = [v51 fetchRequestWithPredicateDescriptor:v50 sortDescriptors:v72];
      v87 = 0;
      v76 = [v49 executeFetchRequest:v53 error:&v87];
      obja = v87;
    }

    else
    {
      v54 = objc_opt_new();
      v85[0] = MEMORY[0x277D85DD0];
      v85[1] = 3221225472;
      v85[2] = __131__WFRemindersLibraryFiltering_performCustomFilteringUsingContentPredicates_compoundPredicateType_forQuery_withInput_resultHandler___block_invoke_4;
      v85[3] = &unk_278345D48;
      v76 = v54;
      v86 = v76;
      [v49 enumerateAllRemindersWithBlock:v85];
      obja = 0;
      v50 = v86;
    }

    if (v76)
    {
      v55 = [v79 slice];
      v57 = v56;
      v58 = v76;
      v59 = v58;
      if (v48)
      {
        v60 = WFIndexSetFromContentSlice(v55, v57, [v58 count]);
        v61 = [v59 objectsAtIndexes:v60];

        v59 = v61;
      }

      v62 = objc_opt_new();
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v63 = v59;
      v64 = [v63 countByEnumeratingWithState:&v81 objects:v101 count:16];
      if (v64)
      {
        v65 = *v82;
        do
        {
          for (k = 0; k != v64; ++k)
          {
            if (*v82 != v65)
            {
              objc_enumerationMutation(v63);
            }

            v67 = [WFReminderContentItem itemWithReminder:*(*(&v81 + 1) + 8 * k) fromReminderStore:v49];
            [v62 addObject:v67];
          }

          v64 = [v63 countByEnumeratingWithState:&v81 objects:v101 count:16];
        }

        while (v64);
      }

      if (v68)
      {
        (*(v77 + 2))(v77, v62, 0);
      }

      else
      {
        [a1 performFallbackFilteringWithItems:v62 withContentPredicates:v80 compoundPredicateType:v78 originalQuery:v79 resultHandler:v77];
      }
    }

    else
    {
      (*(v77 + 2))(v77, 0, obja);
    }

    v24 = v72;
  }
}

void __131__WFRemindersLibraryFiltering_performCustomFilteringUsingContentPredicates_compoundPredicateType_forQuery_withInput_resultHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
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
  v12[2] = __131__WFRemindersLibraryFiltering_performCustomFilteringUsingContentPredicates_compoundPredicateType_forQuery_withInput_resultHandler___block_invoke_2;
  v12[3] = &unk_27834A430;
  v13 = v6;
  v11 = v6;
  [v7 performCustomFilteringUsingContentPredicates:v10 compoundPredicateType:1 forQuery:0 withInput:0 resultHandler:v12];
}

void __131__WFRemindersLibraryFiltering_performCustomFilteringUsingContentPredicates_compoundPredicateType_forQuery_withInput_resultHandler___block_invoke_3(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEB40];
  v4 = a2;
  v7 = [[v3 alloc] initWithArray:v4];

  v5 = a1[6];
  v6 = [v7 array];
  [v5 performFallbackFilteringWithItems:v6 withContentPredicates:0 compoundPredicateType:0 originalQuery:a1[4] resultHandler:a1[5]];
}

@end