@interface HDHRAFibBurdenHistogramQueryServer
+ (id)requiredEntitlements;
- (HDHRAFibBurdenHistogramQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)_makeEmptyHistogramResult;
- (id)objectTypes;
- (void)_queue_start;
@end

@implementation HDHRAFibBurdenHistogramQueryServer

- (HDHRAFibBurdenHistogramQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  clientCopy = client;
  v18.receiver = self;
  v18.super_class = HDHRAFibBurdenHistogramQueryServer;
  v11 = [(HDQueryServer *)&v18 initWithUUID:d configuration:configuration client:clientCopy delegate:delegate];
  if (v11)
  {
    profile = [clientCopy profile];
    v13 = [profile profileExtensionWithIdentifier:*MEMORY[0x277D12F10]];

    aFibBurdenComponents = [v13 aFibBurdenComponents];
    analyzer = [aFibBurdenComponents analyzer];
    analyzer = v11->_analyzer;
    v11->_analyzer = analyzer;
  }

  return v11;
}

+ (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)objectTypes
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC950]];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [v2 setWithArray:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_queue_start
{
  v37 = *MEMORY[0x277D85DE8];
  v31.receiver = self;
  v31.super_class = HDHRAFibBurdenHistogramQueryServer;
  [(HDQueryServer *)&v31 _queue_start];
  clientProxy = [(HDQueryServer *)self clientProxy];
  remoteObjectProxy = [clientProxy remoteObjectProxy];

  client = [(HDQueryServer *)self client];
  authorizationOracle = [client authorizationOracle];
  objectTypes = [(HDHRAFibBurdenHistogramQueryServer *)self objectTypes];
  v30 = 0;
  v8 = [authorizationOracle authorizationStatusRecordsForTypes:objectTypes error:&v30];
  v9 = v30;

  if (!v8)
  {
    queryUUID = [(HDQueryServer *)self queryUUID];
    [remoteObjectProxy client_deliverError:v9 forQuery:queryUUID];
    goto LABEL_22;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  allValues = [v8 allValues];
  v11 = [allValues countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (!v11)
  {

LABEL_18:
    analyzer = self->_analyzer;
    v25 = v9;
    queryUUID = [(HKHRAFibBurdenAnalyzer *)analyzer generateSixWeekBurdenHistogramsWithError:&v25];
    v22 = v25;

    queryUUID2 = [(HDQueryServer *)self queryUUID];
    if (queryUUID)
    {
      [remoteObjectProxy client_deliverHistogramResult:queryUUID queryUUID:queryUUID2];
    }

    else
    {
      [remoteObjectProxy client_deliverError:v22 forQuery:queryUUID2];
    }

    v9 = v22;
    goto LABEL_22;
  }

  v12 = v11;
  v13 = *v27;
  canRead = 1;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v27 != v13)
      {
        objc_enumerationMutation(allValues);
      }

      if (canRead)
      {
        canRead = [*(*(&v26 + 1) + 8 * i) canRead];
      }

      else
      {
        canRead = 0;
      }
    }

    v12 = [allValues countByEnumeratingWithState:&v26 objects:v36 count:16];
  }

  while (v12);

  if (canRead)
  {
    goto LABEL_18;
  }

  _HKInitializeLogging();
  v16 = HKHRAFibBurdenLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    *buf = 138412546;
    v33 = v17;
    v34 = 2112;
    v35 = v8;
    v18 = v17;
    _os_log_impl(&dword_229486000, v16, OS_LOG_TYPE_DEFAULT, "[%@] Avoiding exposing health data due to missing authorization: %@", buf, 0x16u);
  }

  queryUUID = [(HDHRAFibBurdenHistogramQueryServer *)self _makeEmptyHistogramResult];
  queryUUID3 = [(HDQueryServer *)self queryUUID];
  [remoteObjectProxy client_deliverHistogramResult:queryUUID queryUUID:queryUUID3];

LABEL_22:
  v24 = *MEMORY[0x277D85DE8];
}

- (id)_makeEmptyHistogramResult
{
  v2 = [objc_alloc(MEMORY[0x277D12F28]) initWithBurdenPercentage:0 burdenPercentageWasClampedToLowerBound:0 unavailabilityReason:0];
  v3 = [objc_alloc(MEMORY[0x277D12F30]) initWithSundayBurden:v2 mondayBurden:v2 tuesdayBurden:v2 wednesdayBurden:v2 thursdayBurden:v2 fridayBurden:v2 saturdayBurden:v2];
  v4 = [objc_alloc(MEMORY[0x277D12F68]) initWithMidnightToFourAMBurden:v2 fourAMtoEightAMBurden:v2 eightAMToNoonBurden:v2 noonToFourPMBurden:v2 fourPMToEightPMBurden:v2 eightPMToMidnightBurden:v2];
  v5 = [objc_alloc(MEMORY[0x277D12F48]) initWithDayOfWeekHistogram:v3 timeOfDayHistogram:v4];

  return v5;
}

@end