@interface HKStatisticsCollection(HKCodingSupport)
+ (id)statisticsCollectionWithCodableCollection:()HKCodingSupport;
- (HKCodableStatisticsCollection)codableCollection;
@end

@implementation HKStatisticsCollection(HKCodingSupport)

+ (id)statisticsCollectionWithCodableCollection:()HKCodingSupport
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E695DF10];
    statisticsInterval = [v3 statisticsInterval];
    v6 = [v4 hkui_dateComponentsWithCodableDateComponents:statisticsInterval];

    statistics = [v3 statistics];
    v8 = [statistics hk_map:&__block_literal_global_89];

    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x1E696C4C8]);
      firstObject = [v8 firstObject];
      startDate = [firstObject startDate];
      v12 = [v9 initWithAnchorDate:startDate statisticsInterval:v6];

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v13 = v8;
      v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v20;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v20 != v16)
            {
              objc_enumerationMutation(v13);
            }

            [v12 _insertStatistics:{*(*(&v19 + 1) + 8 * i), v19}];
          }

          v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v15);
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (HKCodableStatisticsCollection)codableCollection
{
  v2 = objc_alloc_init(HKCodableStatisticsCollection);
  statisticsInterval = [self statisticsInterval];
  hkui_codableDateComponents = [statisticsInterval hkui_codableDateComponents];
  [(HKCodableStatisticsCollection *)v2 setStatisticsInterval:hkui_codableDateComponents];

  statistics = [self statistics];
  v6 = [statistics hk_map:&__block_literal_global_351];
  v7 = [v6 mutableCopy];
  [(HKCodableStatisticsCollection *)v2 setStatistics:v7];

  return v2;
}

@end