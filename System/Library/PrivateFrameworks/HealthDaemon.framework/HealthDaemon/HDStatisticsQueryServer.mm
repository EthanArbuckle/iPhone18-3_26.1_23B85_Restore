@interface HDStatisticsQueryServer
+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error;
- (HDStatisticsQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)_queue_start;
@end

@implementation HDStatisticsQueryServer

- (HDStatisticsQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v24.receiver = self;
  v24.super_class = HDStatisticsQueryServer;
  v11 = [(HDQueryServer *)&v24 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
  if (v11)
  {
    dateInterval = [configurationCopy dateInterval];
    dateInterval = v11->_dateInterval;
    v11->_dateInterval = dateInterval;

    v11->_statisticsOptions = [configurationCopy options];
    v11->_mergeStrategy = [configurationCopy mergeStrategy];
    v23.receiver = v11;
    v23.super_class = HDStatisticsQueryServer;
    quantityType = [(HDQueryServer *)&v23 quantityType];
    quantityType = v11->_quantityType;
    v11->_quantityType = quantityType;

    if (!v11->_quantityType)
    {
      sampleType = [(HDQueryServer *)v11 sampleType];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        sampleType2 = [(HDQueryServer *)v11 sampleType];
        countUnit = [MEMORY[0x277CCDAB0] countUnit];
        v20 = [_HDStatisticsSyntheticQuantityType syntheticQuantityTypeWithUnderlyingSampleType:sampleType2 aggregationStyle:1 canonicalUnit:countUnit];
        v21 = v11->_quantityType;
        v11->_quantityType = v20;
      }
    }
  }

  return v11;
}

+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error
{
  configurationCopy = configuration;
  clientCopy = client;
  v10 = configurationCopy;
  objc_opt_self();
  options = [v10 options];
  if ((_HKStatisticsOptionPercentile() & options) != 0 || (v12 = [v10 options], (_HKStatisticsOptionPresence() & v12) != 0) || (v13 = objc_msgSend(v10, "options"), (_HKStatisticOptionsAverageSampleDuration() & v13) != 0) || (v14 = objc_msgSend(v10, "options"), (_HKStatisticsOptionBaselineRelativeQuantities() & v14) != 0) || (v15 = objc_msgSend(v10, "options"), (_HKStatisticsOptionSleepStages() & v15) != 0))
  {

    goto LABEL_7;
  }

  objectType = [v10 objectType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_7:
    if (![clientCopy hasRequiredEntitlement:*MEMORY[0x277CCC8B0] error:error])
    {
      goto LABEL_15;
    }
  }

  options2 = [v10 options];
  if ((_HKStatisticsOptionPresence() & options2) != 0)
  {
    v17 = MEMORY[0x277CCA9B8];
    v18 = @"Use a sample query with limit 1 for non-collection presence calculations.";
  }

  else
  {
    options3 = [v10 options];
    if ((_HKStatisticsOptionBaselineRelativeQuantities() & options3) != 0)
    {
      v17 = MEMORY[0x277CCA9B8];
      v18 = @"Use HKStatisticsCollectionQuery for relative quantity calculations";
    }

    else
    {
      options4 = [v10 options];
      if ((_HKStatisticsOptionSleepStages() & options4) == 0)
      {
        v25.receiver = self;
        v25.super_class = &OBJC_METACLASS___HDStatisticsQueryServer;
        v21 = objc_msgSendSuper2(&v25, sel_validateConfiguration_client_error_, v10, clientCopy, error);
        goto LABEL_16;
      }

      v17 = MEMORY[0x277CCA9B8];
      v18 = @"This statistics option is currently only intended to be used via HDStatisticsCalculator directly.";
    }
  }

  [v17 hk_assignError:error code:3 format:v18];
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

  objectType = [(HDQueryServer *)self objectType];
  v4 = [(HDQueryServer *)self authorizationStatusRecordForType:objectType error:&v36];

  if (v4 && [v4 canRead])
  {
    filter = [(HDQueryServer *)self filter];
    if (filter)
    {
      profile = [(HDQueryServer *)self profile];
      v7 = [filter predicateWithProfile:profile];

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
    authorizationPredicate = [v4 authorizationPredicate];
    v11 = [v9 compoundPredicateWithPredicate:v7 otherPredicate:authorizationPredicate];

    quantityType = [(HDStatisticsQueryServer *)self quantityType];
    restrictedSourceEntities = [v4 restrictedSourceEntities];
    v14 = quantityType;
    v15 = v11;
    v16 = restrictedSourceEntities;
    v17 = filter;
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
    profile2 = [(HDQueryServer *)self profile];
    v24 = [(HDStatisticsCollectionCalculatorAttenuatedDataSource *)v22 initForProfile:profile2 quantityType:v14 predicate:v15 restrictedSourceEntities:v16 attenuationType:v21];

    if (!v24)
    {
LABEL_12:
      v25 = [HDStatisticsCollectionCalculatorDefaultDataSource alloc];
      profile3 = [(HDQueryServer *)self profile];
      v24 = [(HDStatisticsCollectionCalculatorDefaultDataSource *)v25 initForProfile:profile3 quantityType:v14 predicate:v15 restrictedSourceEntities:v16];
    }

    [v24 setFilter:v17];
    [v24 setIncludeUnfrozenSeries:1];

    v27 = [HDStatisticsCollectionCalculatorDefaultSourceOrderProvider alloc];
    profile4 = [(HDQueryServer *)self profile];
    v29 = [(HDStatisticsCollectionCalculatorDefaultSourceOrderProvider *)v27 initWithProfile:profile4 quantityType:v14];

    v30 = [HDStatisticsCollectionCalculator calculatorForQuantityType:v14 intervalCollection:0 options:self->_statisticsOptions mergeStrategy:self->_mergeStrategy];
    [v30 setDataSource:v24];
    [v30 setSourceOrderProvider:v29];
    if (self->_dateInterval)
    {
      [v30 setDateInterval:?];
    }

    if ([v30 queryForInitialStatisticsWithError:&v36])
    {
      currentStatistics = [v30 currentStatistics];
      if ([currentStatistics dataCount])
      {
        v8 = currentStatistics;
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
  clientProxy = [(HDQueryServer *)self clientProxy];
  if (v8 || !v33)
  {
    -[HDQueryServer setDataCount:](self, "setDataCount:", [v8 dataCount]);
    queryUUID = [(HDQueryServer *)self queryUUID];
    [clientProxy client_deliverStatistics:v8 forQuery:queryUUID];
  }

  else
  {
    queryUUID = [(HDQueryServer *)self queryUUID];
    [clientProxy client_deliverError:v33 forQuery:queryUUID];
  }
}

@end