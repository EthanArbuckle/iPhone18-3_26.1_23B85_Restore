@interface HDStatisticsQueryServer
+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5;
- (HDStatisticsQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)_queue_start;
@end

@implementation HDStatisticsQueryServer

- (HDStatisticsQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a4;
  v24.receiver = self;
  v24.super_class = HDStatisticsQueryServer;
  v11 = [(HDQueryServer *)&v24 initWithUUID:a3 configuration:v10 client:a5 delegate:a6];
  if (v11)
  {
    v12 = [v10 dateInterval];
    dateInterval = v11->_dateInterval;
    v11->_dateInterval = v12;

    v11->_statisticsOptions = [v10 options];
    v11->_mergeStrategy = [v10 mergeStrategy];
    v23.receiver = v11;
    v23.super_class = HDStatisticsQueryServer;
    v14 = [(HDQueryServer *)&v23 quantityType];
    quantityType = v11->_quantityType;
    v11->_quantityType = v14;

    if (!v11->_quantityType)
    {
      v16 = [(HDQueryServer *)v11 sampleType];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v18 = [(HDQueryServer *)v11 sampleType];
        v19 = [MEMORY[0x277CCDAB0] countUnit];
        v20 = [_HDStatisticsSyntheticQuantityType syntheticQuantityTypeWithUnderlyingSampleType:v18 aggregationStyle:1 canonicalUnit:v19];
        v21 = v11->_quantityType;
        v11->_quantityType = v20;
      }
    }
  }

  return v11;
}

+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v8;
  objc_opt_self();
  v11 = [v10 options];
  if ((_HKStatisticsOptionPercentile() & v11) != 0 || (v12 = [v10 options], (_HKStatisticsOptionPresence() & v12) != 0) || (v13 = objc_msgSend(v10, "options"), (_HKStatisticOptionsAverageSampleDuration() & v13) != 0) || (v14 = objc_msgSend(v10, "options"), (_HKStatisticsOptionBaselineRelativeQuantities() & v14) != 0) || (v15 = objc_msgSend(v10, "options"), (_HKStatisticsOptionSleepStages() & v15) != 0))
  {

    goto LABEL_7;
  }

  v23 = [v10 objectType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_7:
    if (![v9 hasRequiredEntitlement:*MEMORY[0x277CCC8B0] error:a5])
    {
      goto LABEL_15;
    }
  }

  v16 = [v10 options];
  if ((_HKStatisticsOptionPresence() & v16) != 0)
  {
    v17 = MEMORY[0x277CCA9B8];
    v18 = @"Use a sample query with limit 1 for non-collection presence calculations.";
  }

  else
  {
    v19 = [v10 options];
    if ((_HKStatisticsOptionBaselineRelativeQuantities() & v19) != 0)
    {
      v17 = MEMORY[0x277CCA9B8];
      v18 = @"Use HKStatisticsCollectionQuery for relative quantity calculations";
    }

    else
    {
      v20 = [v10 options];
      if ((_HKStatisticsOptionSleepStages() & v20) == 0)
      {
        v25.receiver = a1;
        v25.super_class = &OBJC_METACLASS___HDStatisticsQueryServer;
        v21 = objc_msgSendSuper2(&v25, sel_validateConfiguration_client_error_, v10, v9, a5);
        goto LABEL_16;
      }

      v17 = MEMORY[0x277CCA9B8];
      v18 = @"This statistics option is currently only intended to be used via HDStatisticsCalculator directly.";
    }
  }

  [v17 hk_assignError:a5 code:3 format:v18];
LABEL_15:
  v21 = 0;
LABEL_16:

  return v21;
}

- (void)_queue_start
{
  v37.receiver = self;
  v37.super_class = HDStatisticsQueryServer;
  [(HDQueryServer *)&v37 _queue_start];
  v36 = 0;
  if (!self)
  {
    v32 = 0;
    v8 = 0;
    goto LABEL_24;
  }

  v3 = [(HDQueryServer *)self objectType];
  v4 = [(HDQueryServer *)self authorizationStatusRecordForType:v3 error:&v36];

  if (v4 && [v4 canRead])
  {
    v5 = [(HDQueryServer *)self filter];
    if (v5)
    {
      v6 = [(HDQueryServer *)self profile];
      v7 = [v5 predicateWithProfile:v6];

      if (!v7)
      {
        [MEMORY[0x277CCA9B8] hk_assignError:&v36 code:100 format:@"Error building predicate for query"];
        v8 = 0;
LABEL_22:

        goto LABEL_23;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = MEMORY[0x277D10B20];
    v10 = [v4 authorizationPredicate];
    v11 = [v9 compoundPredicateWithPredicate:v7 otherPredicate:v10];

    v12 = [(HDStatisticsQueryServer *)self quantityType];
    v13 = [v4 restrictedSourceEntities];
    v14 = v12;
    v15 = v11;
    v16 = v13;
    v17 = v5;
    statisticsOptions = self->_statisticsOptions;
    if ((_HKStatisticsOptionAttenuateSamples() & statisticsOptions) == 0)
    {
      goto LABEL_12;
    }

    v19 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB58]];
    v20 = [v14 isEqual:v19];

    if (!v20)
    {
      goto LABEL_12;
    }

    v21 = [MEMORY[0x277CCD830] _quantityTypeWithCode:272];
    v22 = [HDStatisticsCollectionCalculatorAttenuatedDataSource alloc];
    v23 = [(HDQueryServer *)self profile];
    v24 = [(HDStatisticsCollectionCalculatorAttenuatedDataSource *)v22 initForProfile:v23 quantityType:v14 predicate:v15 restrictedSourceEntities:v16 attenuationType:v21];

    if (!v24)
    {
LABEL_12:
      v25 = [HDStatisticsCollectionCalculatorDefaultDataSource alloc];
      v26 = [(HDQueryServer *)self profile];
      v24 = [(HDStatisticsCollectionCalculatorDefaultDataSource *)v25 initForProfile:v26 quantityType:v14 predicate:v15 restrictedSourceEntities:v16];
    }

    [v24 setFilter:v17];
    [v24 setIncludeUnfrozenSeries:1];

    v27 = [HDStatisticsCollectionCalculatorDefaultSourceOrderProvider alloc];
    v28 = [(HDQueryServer *)self profile];
    v29 = [(HDStatisticsCollectionCalculatorDefaultSourceOrderProvider *)v27 initWithProfile:v28 quantityType:v14];

    v30 = [HDStatisticsCollectionCalculator calculatorForQuantityType:v14 intervalCollection:0 options:self->_statisticsOptions mergeStrategy:self->_mergeStrategy];
    [v30 setDataSource:v24];
    [v30 setSourceOrderProvider:v29];
    if (self->_dateInterval)
    {
      [v30 setDateInterval:?];
    }

    if ([v30 queryForInitialStatisticsWithError:&v36])
    {
      v31 = [v30 currentStatistics];
      if ([v31 dataCount])
      {
        v8 = v31;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_22;
  }

  v8 = 0;
LABEL_23:

  v32 = v36;
LABEL_24:
  v33 = v32;
  v34 = [(HDQueryServer *)self clientProxy];
  if (v8 || !v33)
  {
    -[HDQueryServer setDataCount:](self, "setDataCount:", [v8 dataCount]);
    v35 = [(HDQueryServer *)self queryUUID];
    [v34 client_deliverStatistics:v8 forQuery:v35];
  }

  else
  {
    v35 = [(HDQueryServer *)self queryUUID];
    [v34 client_deliverError:v33 forQuery:v35];
  }
}

@end