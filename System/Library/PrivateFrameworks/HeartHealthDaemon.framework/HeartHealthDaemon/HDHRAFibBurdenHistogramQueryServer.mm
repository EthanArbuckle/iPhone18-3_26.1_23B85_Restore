@interface HDHRAFibBurdenHistogramQueryServer
+ (id)requiredEntitlements;
- (HDHRAFibBurdenHistogramQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (id)_makeEmptyHistogramResult;
- (id)objectTypes;
- (void)_queue_start;
@end

@implementation HDHRAFibBurdenHistogramQueryServer

- (HDHRAFibBurdenHistogramQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a5;
  v18.receiver = self;
  v18.super_class = HDHRAFibBurdenHistogramQueryServer;
  v11 = [(HDQueryServer *)&v18 initWithUUID:a3 configuration:a4 client:v10 delegate:a6];
  if (v11)
  {
    v12 = [v10 profile];
    v13 = [v12 profileExtensionWithIdentifier:*MEMORY[0x277D12F10]];

    v14 = [v13 aFibBurdenComponents];
    v15 = [v14 analyzer];
    analyzer = v11->_analyzer;
    v11->_analyzer = v15;
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
  v3 = [(HDQueryServer *)self clientProxy];
  v4 = [v3 remoteObjectProxy];

  v5 = [(HDQueryServer *)self client];
  v6 = [v5 authorizationOracle];
  v7 = [(HDHRAFibBurdenHistogramQueryServer *)self objectTypes];
  v30 = 0;
  v8 = [v6 authorizationStatusRecordsForTypes:v7 error:&v30];
  v9 = v30;

  if (!v8)
  {
    v19 = [(HDQueryServer *)self queryUUID];
    [v4 client_deliverError:v9 forQuery:v19];
    goto LABEL_22;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = [v8 allValues];
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (!v11)
  {

LABEL_18:
    analyzer = self->_analyzer;
    v25 = v9;
    v19 = [(HKHRAFibBurdenAnalyzer *)analyzer generateSixWeekBurdenHistogramsWithError:&v25];
    v22 = v25;

    v23 = [(HDQueryServer *)self queryUUID];
    if (v19)
    {
      [v4 client_deliverHistogramResult:v19 queryUUID:v23];
    }

    else
    {
      [v4 client_deliverError:v22 forQuery:v23];
    }

    v9 = v22;
    goto LABEL_22;
  }

  v12 = v11;
  v13 = *v27;
  v14 = 1;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v27 != v13)
      {
        objc_enumerationMutation(v10);
      }

      if (v14)
      {
        v14 = [*(*(&v26 + 1) + 8 * i) canRead];
      }

      else
      {
        v14 = 0;
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v26 objects:v36 count:16];
  }

  while (v12);

  if (v14)
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

  v19 = [(HDHRAFibBurdenHistogramQueryServer *)self _makeEmptyHistogramResult];
  v20 = [(HDQueryServer *)self queryUUID];
  [v4 client_deliverHistogramResult:v19 queryUUID:v20];

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