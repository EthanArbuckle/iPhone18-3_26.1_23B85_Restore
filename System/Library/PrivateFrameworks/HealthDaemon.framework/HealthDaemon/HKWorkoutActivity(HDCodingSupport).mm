@interface HKWorkoutActivity(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
@end

@implementation HKWorkoutActivity(HDCodingSupport)

+ (id)createWithCodable:()HDCodingSupport
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = objc_alloc(MEMORY[0x277CCAD78]);
    uuid = [v4 uuid];
    v7 = [v5 initWithUUIDString:uuid];

    v8 = MEMORY[0x277CCDC38];
    configuration = [v4 configuration];
    v10 = [v8 createWithCodable:configuration];

    [v4 startDate];
    v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
    if ([v4 hasEndDate])
    {
      [v4 endDate];
      v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v12 = 0;
    }

    [v4 duration];
    v15 = v14;
    if ([v4 hasMetadata])
    {
      v16 = MEMORY[0x277CBEAC0];
      metadata = [v4 metadata];
      v18 = [v16 hk_dictionaryWithCodableMetadata:metadata];
    }

    else
    {
      v18 = 0;
    }

    statistics = [v4 statistics];
    v20 = v11;
    v21 = v12;
    objc_opt_self();
    if ([statistics count])
    {
      v53 = v21;
      v47 = v18;
      v48 = v10;
      v49 = v7;
      v50 = v4;
      v51 = v3;
      v52 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(statistics, "count")}];
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v46 = statistics;
      v22 = statistics;
      v23 = [v22 countByEnumeratingWithState:&v54 objects:v60 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v55;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v55 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v54 + 1) + 8 * i);
            quantityType = [v27 quantityType];
            if (_HKValidDataTypeCode())
            {
              v29 = [MEMORY[0x277CCD830] _quantityTypeWithCode:quantityType];
              if (v29)
              {
                v30 = v20;
                v31 = [objc_alloc(MEMORY[0x277CCDA50]) initWithDataType:v29 startDate:v20 endDate:v53];
                canonicalUnit = [v29 canonicalUnit];
                if ([v27 hasSumQuantity])
                {
                  v33 = MEMORY[0x277CCD7E8];
                  [v27 sumQuantity];
                  v34 = [v33 quantityWithUnit:canonicalUnit doubleValue:?];
                  [v31 setSumQuantity:v34];
                }

                if ([v27 hasMinQuantity])
                {
                  v35 = MEMORY[0x277CCD7E8];
                  [v27 minQuantity];
                  v36 = [v35 quantityWithUnit:canonicalUnit doubleValue:?];
                  [v31 setMinimumQuantity:v36];
                }

                if ([v27 hasMaxQuantity])
                {
                  v37 = MEMORY[0x277CCD7E8];
                  [v27 maxQuantity];
                  v38 = [v37 quantityWithUnit:canonicalUnit doubleValue:?];
                  [v31 setMaximumQuantity:v38];
                }

                if ([v27 hasAvgQuantity])
                {
                  v39 = MEMORY[0x277CCD7E8];
                  [v27 avgQuantity];
                  v40 = [v39 quantityWithUnit:canonicalUnit doubleValue:?];
                  [v31 setAverageQuantity:v40];
                }

                [v52 setObject:v31 forKeyedSubscript:v29];

                v20 = v30;
              }
            }

            else
            {
              _HKInitializeLogging();
              v41 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
              {
                *buf = 134217984;
                v59 = quantityType;
                _os_log_error_impl(&dword_228986000, v41, OS_LOG_TYPE_ERROR, "Ignoring workout statistics for invalid data type code %ld", buf, 0xCu);
              }
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v54 objects:v60 count:16];
        }

        while (v24);
      }

      v4 = v50;
      v3 = v51;
      v10 = v48;
      v7 = v49;
      statistics = v46;
      v18 = v47;
      v42 = v52;
      v21 = v53;
    }

    else
    {
      v42 = 0;
    }

    [v10 activityType];
    if (_HKWorkoutActivityTypeIsValid())
    {
      v43 = objc_alloc(MEMORY[0x277CCDBF0]);
      v13 = [v43 _initWithUUID:v7 workoutConfiguration:v10 startDate:v20 endDate:v21 workoutEvents:MEMORY[0x277CBEBF8] startsPaused:0 duration:v15 metadata:v18 statisticsPerType:v42];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v44 = *MEMORY[0x277D85DE8];

  return v13;
}

@end