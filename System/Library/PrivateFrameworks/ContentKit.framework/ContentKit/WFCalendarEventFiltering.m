@interface WFCalendarEventFiltering
+ (id)itemsToQueryForPredicate:(id)a3;
@end

@implementation WFCalendarEventFiltering

+ (id)itemsToQueryForPredicate:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = WFRequiredContentComparisonPredicatesFromPredicate(v3);
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"property.propertyClasses CONTAINS %@ AND value != nil", objc_opt_class()];
  v6 = [v4 filteredArrayUsingPredicate:v5];

  v7 = [v6 if_objectsPassingTest:&__block_literal_global_19759];
  v8 = [v7 valueForKeyPath:@"@max.value"];

  v9 = [v6 if_objectsPassingTest:&__block_literal_global_7_19761];
  v10 = [v9 valueForKeyPath:@"@min.value"];

  if (v8)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = getWFGeneralLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "+[WFCalendarEventFiltering itemsToQueryForPredicate:]";
      v28 = 2112;
      v29 = v3;
      _os_log_impl(&dword_21E1BD000, v12, OS_LOG_TYPE_ERROR, "%s Failed to parse calendar predicate %@", buf, 0x16u);
    }

    v13 = 0;
  }

  else
  {
    if ([v8 isEqualToDate:v10])
    {
      v15 = [v10 dateByAddingTimeInterval:60.0];

      v10 = v15;
    }

    v16 = WFGetWorkflowEventStore();
    v17 = [v16 calendarsForEntityType:0];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __53__WFCalendarEventFiltering_itemsToQueryForPredicate___block_invoke_3;
    v24[3] = &unk_278348658;
    v25 = v3;
    v18 = [v17 if_objectsPassingTest:v24];

    v19 = [v16 predicateForEventsWithStartDate:v8 endDate:v10 calendars:v18];
    v20 = [v16 eventsMatchingPredicate:v19];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __53__WFCalendarEventFiltering_itemsToQueryForPredicate___block_invoke_4;
    v22[3] = &unk_278348680;
    v23 = v16;
    v12 = v16;
    v13 = [v20 if_map:v22];
  }

  return v13;
}

uint64_t __53__WFCalendarEventFiltering_itemsToQueryForPredicate___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 title];
  v4 = WFEKCalendarMatchesContentPredicate(v2, v3);
  v5 = [v4 BOOLValue];

  return v5;
}

@end