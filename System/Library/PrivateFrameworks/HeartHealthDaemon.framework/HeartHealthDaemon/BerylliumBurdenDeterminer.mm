@interface BerylliumBurdenDeterminer
- (BerylliumBurdenDeterminer)initWithAnalyticsEventSubmissionManager:(id)manager;
- (id)burdenForTachogramClassifications:(id)classifications calculationType:(int64_t)type calculationTypeContext:(id)context error:(id *)error;
@end

@implementation BerylliumBurdenDeterminer

- (BerylliumBurdenDeterminer)initWithAnalyticsEventSubmissionManager:(id)manager
{
  managerCopy = manager;
  v10.receiver = self;
  v10.super_class = BerylliumBurdenDeterminer;
  v6 = [(BerylliumBurdenDeterminer *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CE9B60]);
    analyzer = v6->_analyzer;
    v6->_analyzer = v7;

    objc_storeStrong(&v6->_analyticsEventSubmissionManager, manager);
  }

  return v6;
}

- (id)burdenForTachogramClassifications:(id)classifications calculationType:(int64_t)type calculationTypeContext:(id)context error:(id *)error
{
  v67 = *MEMORY[0x277D85DE8];
  classificationsCopy = classifications;
  contextCopy = context;
  if (![MEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    goto LABEL_17;
  }

  v12 = HKHRAFibBurdenSevenDayAnalysisUnavailabilityReasonOverride();
  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x277D12F28]) initWithBurdenPercentage:0 burdenPercentageWasClampedToLowerBound:0 unavailabilityReason:{objc_msgSend(v12, "integerValue")}];
  }

  else
  {
    v14 = HKHRAFibBurdenAnalysisPercentageOverride();
    v15 = v14;
    if (v14)
    {
      errorCopy = error;
      integerValue = [v14 integerValue];
      v18 = integerValue;
      if (integerValue >= 0x65)
      {
        _HKInitializeLogging();
        v25 = HKHRAFibBurdenLogForCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [BerylliumBurdenDeterminer burdenForTachogramClassifications:v18 calculationType:v25 calculationTypeContext:? error:?];
        }

        v13 = 0;
      }

      else
      {
        v19 = integerValue < 3;
        v20 = integerValue >= 3 ? integerValue : 2;
        v21 = objc_alloc(MEMORY[0x277D12F28]);
        [MEMORY[0x277CCABB0] numberWithDouble:v20 / 100.0];
        v22 = contextCopy;
        v24 = v23 = type;
        v13 = [v21 initWithBurdenPercentage:v24 burdenPercentageWasClampedToLowerBound:v19 unavailabilityReason:0];

        type = v23;
        contextCopy = v22;
      }

      error = errorCopy;
    }

    else
    {
      v13 = 0;
    }
  }

  if (!v13)
  {
LABEL_17:
    v61 = contextCopy;
    typeCopy = type;
    v27 = [classificationsCopy hk_map:{&__block_literal_global_2, error}];
    v28 = [(ABAfibBurdenAnalyzer *)self->_analyzer determineBurdenForTachogramClassificationBuckets:v27];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v29 = classificationsCopy;
    v30 = [v29 countByEnumeratingWithState:&v62 objects:v66 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = 0;
      v33 = *v63;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v63 != v33)
          {
            objc_enumerationMutation(v29);
          }

          v32 += [*(*(&v62 + 1) + 8 * i) count];
        }

        v31 = [v29 countByEnumeratingWithState:&v62 objects:v66 count:16];
      }

      while (v31);
    }

    else
    {
      v32 = 0;
    }

    if (!v28)
    {
      _HKInitializeLogging();
      v47 = HKHRAFibBurdenLogForCategory();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        [BerylliumBurdenDeterminer burdenForTachogramClassifications:v47 calculationType:? calculationTypeContext:? error:?];
      }

      v48 = [HDHRAFibBurdenAnalysisAnalyticsEvent alloc];
      v49 = typeCopy;
      contextCopy = v61;
      v46 = [(HDHRAFibBurdenAnalysisAnalyticsEvent *)v48 initWithResult:0 calculationType:v49 calculationTypeDetails:v61 numberOfTachograms:v32 additionalPayloadFromAlgorithm:0];
      [(HKAnalyticsEventSubmissionManager *)self->_analyticsEventSubmissionManager submitEvent:v46 error:0];
      v50 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Infrastructure error when determining AFib Burden value"];
      v51 = v50;
      if (v50)
      {
        if (v60)
        {
          v52 = v50;
          *v60 = v51;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      goto LABEL_46;
    }

    burdenPercentage = [v28 burdenPercentage];

    if (burdenPercentage)
    {
      burdenPercentage2 = [v28 burdenPercentage];
      [burdenPercentage2 floatValue];
      v38 = v37 - *MEMORY[0x277CE9B58];

      v39 = -v38;
      if (v38 >= 0.0)
      {
        v39 = v38;
      }

      v40 = v39 < 2.2204e-16;
      v41 = objc_alloc(MEMORY[0x277D12F28]);
      burdenPercentage3 = [v28 burdenPercentage];
      v13 = [v41 initWithBurdenPercentage:burdenPercentage3 burdenPercentageWasClampedToLowerBound:v40 unavailabilityReason:0];

      if (v13)
      {
        goto LABEL_31;
      }

      goto LABEL_61;
    }

    unavailabilityReason = [v28 unavailabilityReason];
    if (unavailabilityReason <= 1)
    {
      if (!unavailabilityReason)
      {
        _HKInitializeLogging();
        v58 = HKHRAFibBurdenLogForCategory();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
        {
          [BerylliumBurdenDeterminer burdenForTachogramClassifications:v58 calculationType:? calculationTypeContext:? error:?];
        }

        goto LABEL_56;
      }

      if (unavailabilityReason == 1)
      {
        v54 = objc_alloc(MEMORY[0x277D12F28]);
        v55 = 1;
        goto LABEL_60;
      }

LABEL_52:
      _HKInitializeLogging();
      v58 = HKHRAFibBurdenLogForCategory();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
      {
        [BerylliumBurdenDeterminer burdenForTachogramClassifications:v28 calculationType:v58 calculationTypeContext:? error:?];
      }

LABEL_56:

      v46 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Unknown error occurred in AFib Burden infrastructure"];
      contextCopy = v61;
      if (v46)
      {
        if (v60)
        {
          v59 = v46;
          *v60 = v46;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

LABEL_46:
      v13 = 0;
      goto LABEL_47;
    }

    if (unavailabilityReason == 2)
    {
      v54 = objc_alloc(MEMORY[0x277D12F28]);
      v55 = 2;
    }

    else
    {
      if (unavailabilityReason != 3)
      {
        goto LABEL_52;
      }

      v54 = objc_alloc(MEMORY[0x277D12F28]);
      v55 = 3;
    }

LABEL_60:
    v13 = [v54 initWithBurdenPercentage:0 burdenPercentageWasClampedToLowerBound:0 unavailabilityReason:v55];
    if (v13)
    {
LABEL_31:
      v43 = [HDHRAFibBurdenAnalysisAnalyticsEvent alloc];
      metricsForCoreAnalytics = [v28 metricsForCoreAnalytics];
      v45 = typeCopy;
      contextCopy = v61;
      v46 = [(HDHRAFibBurdenAnalysisAnalyticsEvent *)v43 initWithResult:v13 calculationType:v45 calculationTypeDetails:v61 numberOfTachograms:v32 additionalPayloadFromAlgorithm:metricsForCoreAnalytics];

      [(HKAnalyticsEventSubmissionManager *)self->_analyticsEventSubmissionManager submitEvent:v46 error:0];
LABEL_47:

LABEL_48:
      goto LABEL_49;
    }

LABEL_61:
    contextCopy = v61;
    goto LABEL_48;
  }

LABEL_49:

  v56 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)burdenForTachogramClassifications:(uint64_t)a1 calculationType:(NSObject *)a2 calculationTypeContext:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_229486000, a2, OS_LOG_TYPE_ERROR, "Invalid percentage given for HKHRAFibBurdenAnalysisPercentageOverride: %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)burdenForTachogramClassifications:(uint64_t)a1 calculationType:(NSObject *)a2 calculationTypeContext:error:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_229486000, a2, OS_LOG_TYPE_FAULT, "[%@] No burden percentage given but also no unavailability reason", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)burdenForTachogramClassifications:(NSObject *)a3 calculationType:calculationTypeContext:error:.cold.3(uint64_t a1, void *a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 138412546;
  v6 = a1;
  v7 = 2048;
  v8 = [a2 unavailabilityReason];
  _os_log_fault_impl(&dword_229486000, a3, OS_LOG_TYPE_FAULT, "[%@] Unexpected unavailability reason given: %lu", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)burdenForTachogramClassifications:(uint64_t)a1 calculationType:(NSObject *)a2 calculationTypeContext:error:.cold.4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_229486000, a2, OS_LOG_TYPE_ERROR, "[%@] Nil result received from Beryllium, implying infrastructure error", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end