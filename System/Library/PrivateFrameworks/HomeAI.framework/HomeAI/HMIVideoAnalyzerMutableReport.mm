@interface HMIVideoAnalyzerMutableReport
+ (NSDictionary)systemDeviceInformation;
+ (id)chartSpecWithRange:(CGRect)a3 colors:(id)a4 labels:(id)a5;
+ (id)greedyMatchBetweenPredictionEvents:(id)a3 truthEvents:(id)a4 falsePositiveIndices:(id)a5 falseNegativeIndices:(id)a6 eventClass:(Class)a7 regionOfInterest:(CGRect)a8 confidenceThreshold:(float)a9 scoreThreshold:(float)a10 scoreFunction:(id)a11;
+ (void)sihouetteScoreForMatches:(id)a3 previousMatches:(id)a4 truePositiveScores:(id)a5 falsePositiveScores:(id)a6 falseNegativeScores:(id)a7;
+ (void)writeImageCropFromFrame:(id)a3 events:(id)a4 outputPath:(id)a5 source:(id)a6;
+ (void)writeJSONChartData:(id)a3 outputPath:(id)a4;
- (HMIVideoAnalyzerMutableReport)initWithCoder:(id)a3;
- (HMIVideoAnalyzerMutableReport)initWithData:(id)a3 error:(id *)a4;
- (HMIVideoAnalyzerMutableReport)initWithName:(id)a3;
- (NSData)data;
- (NSSet)eventClasses;
- (id)averagePrecisionForMinPrecision:(float)a3 comparator:(id)a4;
- (id)averagePrecisionWithClassificationTruth:(id)a3 minPrecision:(float)a4;
- (id)averagePrecisionWithDetectionTruth:(id)a3 minPrecision:(float)a4 iouThreshold:(float)a5 videoMetric:(BOOL)a6;
- (id)chartDataWithBaseline:(BOOL)a3 comparator:(id)a4;
- (id)chartDataWithClassificationTruth:(id)a3 isBaseline:(BOOL)a4;
- (id)chartDataWithDetectionTruth:(id)a3 isBaseline:(BOOL)a4 iouThreshold:(float)a5 videoMetric:(BOOL)a6;
- (id)compareWithClassificationTruth:(id)a3 eventClass:(Class)a4 confidenceThreshold:(float)a5;
- (id)compareWithDetectionTruth:(id)a3 eventClass:(Class)a4 confidenceThreshold:(float)a5 iouThreshold:(float)a6 videoMetric:(BOOL)a7;
- (id)compareWithTrackingTruth:(id)a3 eventClass:(Class)a4 confidenceThreshold:(float)a5 ioaThreshold:(float)a6;
- (id)selectFramesWithRecord:(id)a3 truth:(id)a4 frameResults:(id)a5;
- (id)truthReportFromLegacyClassificationFormat:(id)a3;
- (id)truthReportFromLegacyDetectionFormat:(id)a3;
- (void)appendFragmentResult:(id)a3 forKey:(id)a4 source:(id)a5 redactFrames:(BOOL)a6;
- (void)appendFragmentResultsFromReport:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)writeFragmentFileComparison:(id)a3 eventClass:(Class)a4 outputPath:(id)a5;
- (void)writeHTMLReportComparison:(id)a3 truth:(id)a4 eventClass:(Class)a5 comparisonType:(id)a6 assetPath:(id)a7 outputPath:(id)a8 limit:(unint64_t)a9 shuffle:(BOOL)a10;
- (void)writeImageCropForEventClass:(Class)a3 outputPath:(id)a4 assetPath:(id)a5;
@end

@implementation HMIVideoAnalyzerMutableReport

- (HMIVideoAnalyzerMutableReport)initWithName:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HMIVideoAnalyzerMutableReport;
  v5 = [(HMIVideoAnalyzerMutableReport *)&v13 init];
  if (v5)
  {
    v6 = [v4 copy];
    name = v5->_name;
    v5->_name = v6;

    v5->_version = 2;
    v8 = [objc_opt_class() systemDeviceInformation];
    deviceInformation = v5->_deviceInformation;
    v5->_deviceInformation = v8;

    v10 = [MEMORY[0x277CBEB38] dictionary];
    sessions = v5->_sessions;
    v5->_sessions = v10;
  }

  return v5;
}

- (HMIVideoAnalyzerMutableReport)initWithData:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCAAC8];
  v7 = a3;
  v8 = [v6 unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:a4];

  return v8;
}

- (void)appendFragmentResult:(id)a3 forKey:(id)a4 source:(id)a5 redactFrames:(BOOL)a6
{
  v6 = a6;
  v18 = a4;
  v10 = a5;
  v11 = a3;
  v12 = [(HMIVideoAnalyzerMutableReport *)self sessions];
  v13 = [v12 objectForKeyedSubscript:v18];

  if (!v13)
  {
    v14 = [[HMIVideoAnalyzerMutableReportSession alloc] initWithSource:v10];
    v15 = [(HMIVideoAnalyzerMutableReport *)self sessions];
    [v15 setObject:v14 forKeyedSubscript:v18];
  }

  v16 = [(HMIVideoAnalyzerMutableReport *)self sessions];
  v17 = [v16 objectForKeyedSubscript:v18];
  [v17 appendFragmentResult:v11 redactFrames:v6];
}

- (void)appendFragmentResultsFromReport:(id)a3
{
  v4 = a3;
  v6 = [(HMIVideoAnalyzerMutableReport *)self sessions];
  v5 = [v4 sessions];

  [v6 addEntriesFromDictionary:v5];
}

- (NSSet)eventClasses
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(HMIVideoAnalyzerMutableReport *)self sessions];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__HMIVideoAnalyzerMutableReport_eventClasses__block_invoke;
  v8[3] = &unk_2787535C8;
  v9 = v3;
  v5 = v3;
  [v4 na_each:v8];

  v6 = [v5 copy];

  return v6;
}

void __45__HMIVideoAnalyzerMutableReport_eventClasses__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 fragments];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__HMIVideoAnalyzerMutableReport_eventClasses__block_invoke_2;
  v5[3] = &unk_2787535A0;
  v6 = *(a1 + 32);
  [v4 na_each:v5];
}

void __45__HMIVideoAnalyzerMutableReport_eventClasses__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 events];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__HMIVideoAnalyzerMutableReport_eventClasses__block_invoke_3;
  v4[3] = &unk_2787527D0;
  v5 = *(a1 + 32);
  [v3 na_each:v4];
}

void __45__HMIVideoAnalyzerMutableReport_eventClasses__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 allEvents];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__HMIVideoAnalyzerMutableReport_eventClasses__block_invoke_4;
  v4[3] = &unk_2787527D0;
  v5 = *(a1 + 32);
  [v3 na_each:v4];
}

uint64_t __45__HMIVideoAnalyzerMutableReport_eventClasses__block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();

  return [v1 addObject:v2];
}

- (id)averagePrecisionForMinPrecision:(float)a3 comparator:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v7 = +[HMIVideoAnalyzerEvent eventClassesArray];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__HMIVideoAnalyzerMutableReport_averagePrecisionForMinPrecision_comparator___block_invoke;
  v13[3] = &unk_2787535F0;
  v15 = v5;
  v16 = a3;
  v8 = v6;
  v14 = v8;
  v9 = v5;
  [v7 na_each:v13];

  v10 = v14;
  v11 = v8;

  return v8;
}

void __76__HMIVideoAnalyzerMutableReport_averagePrecisionForMinPrecision_comparator___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = 0.0;
  v5 = 1.0;
  v6 = 0.0;
  v7 = 0.0;
  do
  {
    v8 = (*(*(a1 + 40) + 16))(v7);
    [v8 precision];
    if (v9 >= v6)
    {
      [v8 recall];
      if (v10 <= v5)
      {
        [v8 precision];
        if (v11 > *(a1 + 48))
        {
          [v8 recall];
          v13 = (v5 + v12) * 0.5;
          [v8 precision];
          v15 = *(a1 + 48);
          v16 = v14 - fmax(v6, v15);
          v4 = (v13 * v16) / (1.0 - v15) + v4;
        }

        [v8 precision];
        v6 = v17;
        [v8 recall];
        v5 = v18;
      }
    }

    v19 = v7 + 0.01;
    v7 = v19;
  }

  while (v7 <= 1.0);
  *&v19 = v4;
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  [*(a1 + 32) setObject:v20 forKeyedSubscript:a2];
}

- (id)averagePrecisionWithClassificationTruth:(id)a3 minPrecision:(float)a4
{
  v6 = a3;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __86__HMIVideoAnalyzerMutableReport_averagePrecisionWithClassificationTruth_minPrecision___block_invoke;
  v15 = &unk_278753618;
  v16 = self;
  v17 = v6;
  v7 = v6;
  v8 = MEMORY[0x2318CB8E0](&v12);
  *&v9 = a4;
  v10 = [(HMIVideoAnalyzerMutableReport *)self averagePrecisionForMinPrecision:v8 comparator:v9, v12, v13, v14, v15, v16];

  return v10;
}

- (id)averagePrecisionWithDetectionTruth:(id)a3 minPrecision:(float)a4 iouThreshold:(float)a5 videoMetric:(BOOL)a6
{
  v10 = a3;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __106__HMIVideoAnalyzerMutableReport_averagePrecisionWithDetectionTruth_minPrecision_iouThreshold_videoMetric___block_invoke;
  v16[3] = &unk_278753640;
  v16[4] = self;
  v17 = v10;
  v18 = a5;
  v19 = a6;
  v11 = v10;
  v12 = MEMORY[0x2318CB8E0](v16);
  *&v13 = a4;
  v14 = [(HMIVideoAnalyzerMutableReport *)self averagePrecisionForMinPrecision:v12 comparator:v13];

  return v14;
}

- (id)chartDataWithBaseline:(BOOL)a3 comparator:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = 1.0;
  do
  {
    v8 = +[HMIVideoAnalyzerEvent eventClassesArray];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__HMIVideoAnalyzerMutableReport_chartDataWithBaseline_comparator___block_invoke;
    v12[3] = &unk_278753668;
    v9 = v5;
    v14 = v9;
    v15 = v7;
    v10 = v6;
    v13 = v10;
    v16 = a3;
    [v8 na_each:v12];

    v7 = v7 + -0.01;
  }

  while (v7 >= 0.0);

  return v10;
}

void __66__HMIVideoAnalyzerMutableReport_chartDataWithBaseline_comparator___block_invoke(uint64_t a1, uint64_t a2)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v4 = (*(*(a1 + 40) + 16))(*(a1 + 48));
  [v4 precision];
  if (v5 != 0.0 || ([v4 recall], v6 != 0.0))
  {
    v7 = (*(a1 + 48) * 100.0) % 10;
    v8 = *(a1 + 32);
    v20[0] = @"precision";
    v9 = MEMORY[0x277CCABB0];
    [v4 precision];
    v10 = [v9 numberWithFloat:?];
    v21[0] = v10;
    v20[1] = @"recall";
    v11 = MEMORY[0x277CCABB0];
    [v4 recall];
    v12 = [v11 numberWithFloat:?];
    v21[1] = v12;
    v20[2] = @"threshold";
    LODWORD(v13) = *(a1 + 48);
    v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
    v21[2] = v14;
    v20[3] = @"annotation";
    if (v7)
    {
      v15 = &stru_284057FB8;
    }

    else
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f", *(a1 + 48)];
    }

    v21[3] = v15;
    v20[4] = @"class";
    v16 = [HMIVideoAnalyzerEvent shortNameForEventClass:a2];
    v17 = v16;
    v20[5] = @"opacity";
    if (*(a1 + 52))
    {
      v18 = &unk_284075858;
    }

    else
    {
      v18 = &unk_284075078;
    }

    v21[4] = v16;
    v21[5] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:6];
    [v8 addObject:v19];

    if (!v7)
    {
    }
  }
}

- (id)chartDataWithClassificationTruth:(id)a3 isBaseline:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __77__HMIVideoAnalyzerMutableReport_chartDataWithClassificationTruth_isBaseline___block_invoke;
  v14 = &unk_278753618;
  v15 = self;
  v16 = v6;
  v7 = v6;
  v8 = MEMORY[0x2318CB8E0](&v11);
  v9 = [(HMIVideoAnalyzerMutableReport *)self chartDataWithBaseline:v4 comparator:v8, v11, v12, v13, v14, v15];

  return v9;
}

- (id)chartDataWithDetectionTruth:(id)a3 isBaseline:(BOOL)a4 iouThreshold:(float)a5 videoMetric:(BOOL)a6
{
  v8 = a4;
  v10 = a3;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __97__HMIVideoAnalyzerMutableReport_chartDataWithDetectionTruth_isBaseline_iouThreshold_videoMetric___block_invoke;
  v15[3] = &unk_278753640;
  v15[4] = self;
  v16 = v10;
  v17 = a5;
  v18 = a6;
  v11 = v10;
  v12 = MEMORY[0x2318CB8E0](v15);
  v13 = [(HMIVideoAnalyzerMutableReport *)self chartDataWithBaseline:v8 comparator:v12];

  return v13;
}

- (NSData)data
{
  v4 = 0;
  v2 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v4];

  return v2;
}

+ (NSDictionary)systemDeviceInformation
{
  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];
  v3 = MGCopyAnswer();
  [v2 setObject:v3 forKeyedSubscript:@"HardwareModel"];

  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HomeAI"];
  v5 = [v4 infoDictionary];
  v6 = *MEMORY[0x277CBED58];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277CBED58]];
  [v2 setObject:v7 forKeyedSubscript:@"HomeAIBundleVersion"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:HMIIsDebug()];
  [v2 setObject:v8 forKeyedSubscript:@"Debug"];

  return v2;
}

- (id)truthReportFromLegacyClassificationFormat:(id)a3
{
  v4 = a3;
  v5 = [[HMIVideoAnalyzerMutableReport alloc] initWithName:@"Truth"];
  v6 = [(HMIVideoAnalyzerMutableReport *)self sessions];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __75__HMIVideoAnalyzerMutableReport_truthReportFromLegacyClassificationFormat___block_invoke;
  v14 = &unk_2787536D8;
  v15 = v4;
  v16 = self;
  v7 = v4;
  v8 = [v6 na_dictionaryByMappingValues:&v11];

  v9 = [(HMIVideoAnalyzerMutableReport *)v5 sessions:v11];
  [v9 addEntriesFromDictionary:v8];

  return v5;
}

HMIVideoAnalyzerMutableReportSession *__75__HMIVideoAnalyzerMutableReport_truthReportFromLegacyClassificationFormat___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __75__HMIVideoAnalyzerMutableReport_truthReportFromLegacyClassificationFormat___block_invoke_2;
  v32[3] = &unk_278753690;
  v8 = v6;
  v33 = v8;
  v9 = [v7 na_firstObjectPassingTest:v32];
  if (v9)
  {
    v10 = [v8 fragments];
    v11 = [v10 firstObject];

    v31 = [v9 objectForKeyedSubscript:@"classification_classes"];
    v30 = [v31 na_map:&__block_literal_global_231];
    v12 = [HMIVideoAnalyzerFragmentResult alloc];
    v13 = [v11 fragment];
    v14 = [MEMORY[0x277CBEB98] setWithArray:v30];
    v15 = [v11 configuration];
    [v11 outcome];
    v17 = v16 = v5;
    v18 = v9;
    v19 = [(HMIVideoAnalyzerFragmentResult *)v12 initWithFragment:v13 events:v14 frameResults:MEMORY[0x277CBEBF8] thumbnails:MEMORY[0x277CBEBF8] configuration:v15 outcome:v17];

    v20 = [HMIVideoAnalyzerMutableReportSession alloc];
    v21 = [v8 source];
    v22 = v20;
    v5 = v16;
    v23 = [(HMIVideoAnalyzerMutableReportSession *)v22 initWithSource:v21];

    [(HMIVideoAnalyzerMutableReportSession *)v23 appendFragmentResult:v19 redactFrames:1];
    v9 = v18;
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = *(a1 + 40);
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      v28 = [v8 source];
      *buf = 138543618;
      v35 = v27;
      v36 = 2112;
      v37 = v28;
      _os_log_impl(&dword_22D12F000, v26, OS_LOG_TYPE_ERROR, "%{public}@Cannot find ground truth for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v23 = 0;
  }

  return v23;
}

uint64_t __75__HMIVideoAnalyzerMutableReport_truthReportFromLegacyClassificationFormat___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"image_id"];
  v4 = [*(a1 + 32) source];
  v5 = [v3 isEqual:v4];

  return v5;
}

id __75__HMIVideoAnalyzerMutableReport_truthReportFromLegacyClassificationFormat___block_invoke_228(uint64_t a1, uint64_t a2)
{
  v2 = objc_alloc([HMIVideoAnalyzerEvent eventClassForShortName:a2]);
  v3 = [[HMIConfidence alloc] initWithValue:&unk_284075540 levelThresholds:1.0];
  v4 = [v2 initWithConfidence:v3 boundingBox:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

  return v4;
}

- (id)truthReportFromLegacyDetectionFormat:(id)a3
{
  v4 = a3;
  v5 = [[HMIVideoAnalyzerMutableReport alloc] initWithName:@"Truth"];
  v6 = [(HMIVideoAnalyzerMutableReport *)self sessions];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __70__HMIVideoAnalyzerMutableReport_truthReportFromLegacyDetectionFormat___block_invoke;
  v14 = &unk_2787536D8;
  v15 = v4;
  v16 = self;
  v7 = v4;
  v8 = [v6 na_dictionaryByMappingValues:&v11];

  v9 = [(HMIVideoAnalyzerMutableReport *)v5 sessions:v11];
  [v9 addEntriesFromDictionary:v8];

  return v5;
}

HMIVideoAnalyzerMutableReportSession *__70__HMIVideoAnalyzerMutableReport_truthReportFromLegacyDetectionFormat___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v6 source];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    v42 = v5;
    v40 = v9;
    v10 = [[HMIVideoAnnotationParser alloc] initWithArray:v9];
    v41 = v6;
    v11 = [v6 fragments];
    v12 = [v11 firstObject];

    v39 = v12;
    v13 = [v12 frameResults];
    v14 = [MEMORY[0x277CBEB18] array];
    [v13 count];
    v15 = 0;
    v16 = *MEMORY[0x277CBF3A8];
    v17 = *(MEMORY[0x277CBF3A8] + 8);
    do
    {
      if (v15 >= [v13 count])
      {
        v20 = [HMIVideoFrame alloc];
        v18 = [MEMORY[0x277CBEA90] data];
        if (v10)
        {
          [(HMIVideoAnnotationParser *)v10 lastKnownTimeStamp];
        }

        else
        {
          memset(buf, 0, sizeof(buf));
        }

        v19 = [(HMIVideoFrame *)v20 initWithJPEGData:v18 size:buf presentationTimeStamp:v16, v17];
      }

      else
      {
        v18 = [v13 objectAtIndexedSubscript:v15];
        v19 = [v18 frame];
      }

      v21 = v19;

      if (v21)
      {
        [v21 presentationTimeStamp];
      }

      else
      {
        memset(buf, 0, sizeof(buf));
      }

      v22 = [(HMIVideoAnnotationParser *)v10 eventsForTimeStamp:buf];
      v23 = [[HMIVideoAnalyzerFrameResult alloc] initWithFrame:v21 events:v22 regionOfInterest:0.0, 0.0, 1.0, 1.0];
      [v14 addObject:v23];

      ++v15;
    }

    while ([v13 count] > v15);
    v24 = [(HMIVideoAnnotationParser *)v10 eventsForFragment];
    v25 = [HMIVideoAnalyzerFragmentResult alloc];
    v26 = [v39 fragment];
    v27 = [v39 configuration];
    v28 = [v39 outcome];
    v29 = [(HMIVideoAnalyzerFragmentResult *)v25 initWithFragment:v26 events:v24 frameResults:v14 thumbnails:MEMORY[0x277CBEBF8] configuration:v27 outcome:v28];

    v30 = [HMIVideoAnalyzerMutableReportSession alloc];
    v6 = v41;
    v31 = [v41 source];
    v32 = [(HMIVideoAnalyzerMutableReportSession *)v30 initWithSource:v31];

    [(HMIVideoAnalyzerMutableReportSession *)v32 appendFragmentResult:v29 redactFrames:1];
    v5 = v42;
    v9 = v40;
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    v34 = *(a1 + 40);
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      v37 = [v6 source];
      *buf = 138543618;
      *&buf[4] = v36;
      *&buf[12] = 2112;
      *&buf[14] = v37;
      _os_log_impl(&dword_22D12F000, v35, OS_LOG_TYPE_ERROR, "%{public}@Cannot find ground truth for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
    v32 = 0;
  }

  return v32;
}

- (id)compareWithClassificationTruth:(id)a3 eventClass:(Class)a4 confidenceThreshold:(float)a5
{
  v8 = a3;
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = [MEMORY[0x277CBEB18] array];
  v12 = [(HMIVideoAnalyzerMutableReport *)self sessions];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __95__HMIVideoAnalyzerMutableReport_compareWithClassificationTruth_eventClass_confidenceThreshold___block_invoke;
  v26 = &unk_278753700;
  v30 = v10;
  v31 = a4;
  v32 = a5;
  v27 = v8;
  v28 = v9;
  v29 = v11;
  v13 = v10;
  v14 = v11;
  v15 = v9;
  v16 = v8;
  [v12 na_each:&v23];

  v17 = [HMIVideoAnalyzerMutableReportComparison alloc];
  v18 = [v15 copy];
  v19 = [v14 copy];
  v20 = [v13 copy];
  v21 = [(HMIVideoAnalyzerMutableReportComparison *)v17 initWithTruePositiveKeys:v18 falseNegativeKeys:v19 falsePositiveKeys:v20 groupByKey:0];

  return v21;
}

void __95__HMIVideoAnalyzerMutableReport_compareWithClassificationTruth_eventClass_confidenceThreshold___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 sessions];
  v8 = [v7 objectForKeyedSubscript:v41];

  v9 = [v6 fragments];

  v10 = [v9 firstObject];
  v11 = [v10 maxConfidenceEventForEventClass:*(a1 + 64)];

  v12 = [v11 confidence];
  v13 = [v8 fragments];
  v14 = [v13 firstObject];
  v15 = [v14 maxConfidenceEventForEventClass:*(a1 + 64)];
  v16 = [v15 confidence];

  [v12 value];
  v18 = v17;
  v19 = *(a1 + 72);
  [v16 value];
  v21 = v20;
  if (v18 >= v19 && v20 > 0.0)
  {
    v22 = *(a1 + 40);
    v23 = [HMIVideoAnalyzerReportRecord alloc];
    v24 = MEMORY[0x277CCABB0];
    [v12 value];
    v25 = [v24 numberWithDouble:?];
    v26 = [(HMIVideoAnalyzerReportRecord *)v23 initWithKey:v41 classificationScore:v25];
    [v22 addObject:v26];
  }

  if (v18 < v19 && v21 > 0.0)
  {
    v27 = *(a1 + 48);
    v28 = [HMIVideoAnalyzerReportRecord alloc];
    v29 = MEMORY[0x277CCABB0];
    [v11 boundingBox];
    v34 = [v29 numberWithDouble:{HMICGRectArea(v30, v31, v32, v33)}];
    v35 = [(HMIVideoAnalyzerReportRecord *)v28 initWithKey:v41 classificationScore:v34];
    [v27 addObject:v35];
  }

  if (v18 >= v19 && v21 <= 0.0)
  {
    v36 = *(a1 + 56);
    v37 = [HMIVideoAnalyzerReportRecord alloc];
    v38 = MEMORY[0x277CCABB0];
    [v12 value];
    v39 = [v38 numberWithDouble:?];
    v40 = [(HMIVideoAnalyzerReportRecord *)v37 initWithKey:v41 classificationScore:v39];
    [v36 addObject:v40];
  }
}

- (id)compareWithDetectionTruth:(id)a3 eventClass:(Class)a4 confidenceThreshold:(float)a5 iouThreshold:(float)a6 videoMetric:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = [MEMORY[0x277CBEB18] array];
  v14 = [MEMORY[0x277CBEB18] array];
  v15 = [MEMORY[0x277CBEB18] array];
  if (v7)
  {
    v16 = [MEMORY[0x277CBEB18] array];
    v17 = [MEMORY[0x277CBEB18] array];
    v18 = [MEMORY[0x277CBEB18] array];
  }

  else
  {
    v16 = v13;
    v17 = v14;
    v18 = v15;
  }

  v19 = v18;
  v20 = [(HMIVideoAnalyzerMutableReport *)self sessions];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __115__HMIVideoAnalyzerMutableReport_compareWithDetectionTruth_eventClass_confidenceThreshold_iouThreshold_videoMetric___block_invoke_2;
  v34[3] = &unk_2787537E0;
  v44 = a5;
  v45 = a6;
  v35 = v12;
  v36 = v16;
  v37 = v17;
  v38 = v19;
  v46 = v7;
  v39 = v13;
  v40 = v15;
  v42 = &__block_literal_global_247;
  v43 = a4;
  v41 = v14;
  v21 = v14;
  v22 = v15;
  v23 = v13;
  v33 = v19;
  v32 = v17;
  v24 = v16;
  v25 = v12;
  [v20 na_each:v34];

  v26 = [HMIVideoAnalyzerMutableReportComparison alloc];
  v27 = [v23 copy];
  v28 = [v22 copy];
  v29 = [v21 copy];
  v30 = [(HMIVideoAnalyzerMutableReportComparison *)v26 initWithTruePositiveKeys:v27 falseNegativeKeys:v28 falsePositiveKeys:v29 groupByKey:v7];

  return v30;
}

BOOL __115__HMIVideoAnalyzerMutableReport_compareWithDetectionTruth_eventClass_confidenceThreshold_iouThreshold_videoMetric___block_invoke(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, void *a6, void *a7)
{
  v8 = a7;
  [a6 boundingBox];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v8 boundingBox];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  return HMICGRectIntersectionOverUnionWithRespectToROI(v10, v12, v14, v16, v18, v20, v22, v24, a1, a2, a3, a4);
}

void __115__HMIVideoAnalyzerMutableReport_compareWithDetectionTruth_eventClass_confidenceThreshold_iouThreshold_videoMetric___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v6 sessions];
  v9 = [v8 objectForKeyedSubscript:v5];

  v10 = [v7 fragments];

  v11 = [v10 firstObject];
  v12 = [v11 frameResults];

  v13 = [v9 fragments];
  v14 = [v13 firstObject];
  v15 = [v14 frameResults];

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __115__HMIVideoAnalyzerMutableReport_compareWithDetectionTruth_eventClass_confidenceThreshold_iouThreshold_videoMetric___block_invoke_3;
  v32[3] = &unk_2787537B8;
  v16 = v15;
  v33 = v16;
  v39 = *(a1 + 104);
  v30 = *(a1 + 88);
  v17 = v30;
  v38 = v30;
  v34 = *(a1 + 40);
  v18 = v5;
  v35 = v18;
  v36 = *(a1 + 48);
  v37 = *(a1 + 56);
  [v12 enumerateObjectsUsingBlock:v32];
  if (*(a1 + 112) == 1)
  {
    v19 = [v9 fragments];
    v20 = [v19 firstObject];
    v21 = [v20 events];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __115__HMIVideoAnalyzerMutableReport_compareWithDetectionTruth_eventClass_confidenceThreshold_iouThreshold_videoMetric___block_invoke_9;
    v31[3] = &__block_descriptor_40_e31_B16__0__HMIVideoAnalyzerEvent_8lu32l8;
    v31[4] = *(a1 + 96);
    v22 = [v21 na_any:v31];

    if (v22)
    {
      if ([*(a1 + 40) count])
      {
        v23 = *(a1 + 64);
        v24 = [*(a1 + 40) firstObject];
        [v23 addObject:v24];
      }

      if (![*(a1 + 40) count] && objc_msgSend(*(a1 + 56), "count"))
      {
        v25 = *(a1 + 72);
        v26 = [*(a1 + 56) firstObject];
        [v25 addObject:v26];
      }

      if ([*(a1 + 40) count] || objc_msgSend(*(a1 + 56), "count"))
      {
        goto LABEL_14;
      }

      v27 = *(a1 + 72);
      v28 = [[HMIVideoAnalyzerReportRecord alloc] initWithKey:v18 detectionScores:&unk_284075558 frameResultIndex:0];
    }

    else
    {
      if (![*(a1 + 48) count])
      {
LABEL_14:
        [*(a1 + 40) removeAllObjects];
        [*(a1 + 48) removeAllObjects];
        [*(a1 + 56) removeAllObjects];
        goto LABEL_15;
      }

      v27 = *(a1 + 80);
      v28 = [*(a1 + 48) firstObject];
    }

    v29 = v28;
    [v27 addObject:{v28, v30}];

    goto LABEL_14;
  }

LABEL_15:
}

void __115__HMIVideoAnalyzerMutableReport_compareWithDetectionTruth_eventClass_confidenceThreshold_iouThreshold_videoMetric___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 events];
  v7 = [v6 allObjects];
  v8 = [v7 na_flatMap:&__block_literal_global_250];

  v9 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v10 = [v9 events];
  v11 = [v10 allObjects];
  v12 = [v11 na_flatMap:&__block_literal_global_252];

  v13 = [MEMORY[0x277CBEB18] array];
  v14 = [MEMORY[0x277CBEB18] array];
  v15 = *(a1 + 80);
  [v5 regionOfInterest];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  LODWORD(v24) = *(a1 + 88);
  LODWORD(v25) = *(a1 + 92);
  v26 = [HMIVideoAnalyzerMutableReport greedyMatchBetweenPredictionEvents:v8 truthEvents:v12 falsePositiveIndices:v13 falseNegativeIndices:v14 eventClass:v15 regionOfInterest:*(a1 + 72) confidenceThreshold:v17 scoreThreshold:v19 scoreFunction:v21, v23, v24, v25];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __115__HMIVideoAnalyzerMutableReport_compareWithDetectionTruth_eventClass_confidenceThreshold_iouThreshold_videoMetric___block_invoke_6;
  v47[3] = &unk_278753768;
  v27 = v8;
  v48 = v27;
  v41 = v26;
  v28 = [v26 na_map:v47];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __115__HMIVideoAnalyzerMutableReport_compareWithDetectionTruth_eventClass_confidenceThreshold_iouThreshold_videoMetric___block_invoke_7;
  v45[3] = &unk_278753790;
  v29 = v27;
  v46 = v29;
  v42 = v13;
  v30 = v13;
  v31 = a3;
  v32 = [v30 na_map:v45];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __115__HMIVideoAnalyzerMutableReport_compareWithDetectionTruth_eventClass_confidenceThreshold_iouThreshold_videoMetric___block_invoke_8;
  v43[3] = &unk_278753790;
  v33 = v12;
  v44 = v33;
  v34 = [v14 na_map:v43];
  if ([v28 count])
  {
    v35 = *(a1 + 40);
    v36 = [[HMIVideoAnalyzerReportRecord alloc] initWithKey:*(a1 + 48) detectionScores:v28 frameResultIndex:v31];
    [v35 addObject:v36];
  }

  if ([v32 count])
  {
    v37 = *(a1 + 56);
    v38 = [[HMIVideoAnalyzerReportRecord alloc] initWithKey:*(a1 + 48) detectionScores:v32 frameResultIndex:v31];
    [v37 addObject:v38];
  }

  if ([v34 count])
  {
    v39 = *(a1 + 64);
    v40 = [[HMIVideoAnalyzerReportRecord alloc] initWithKey:*(a1 + 48) detectionScores:v34 frameResultIndex:v31];
    [v39 addObject:v40];
  }
}

id __115__HMIVideoAnalyzerMutableReport_compareWithDetectionTruth_eventClass_confidenceThreshold_iouThreshold_videoMetric___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [*(a1 + 32) objectAtIndexedSubscript:{objc_msgSend(a2, "unsignedIntegerValue")}];
  v4 = [v3 confidence];
  [v4 value];
  v5 = [v2 numberWithDouble:?];

  return v5;
}

id __115__HMIVideoAnalyzerMutableReport_compareWithDetectionTruth_eventClass_confidenceThreshold_iouThreshold_videoMetric___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [*(a1 + 32) objectAtIndexedSubscript:{objc_msgSend(a2, "unsignedIntegerValue")}];
  v4 = [v3 confidence];
  [v4 value];
  v5 = [v2 numberWithDouble:?];

  return v5;
}

id __115__HMIVideoAnalyzerMutableReport_compareWithDetectionTruth_eventClass_confidenceThreshold_iouThreshold_videoMetric___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [*(a1 + 32) objectAtIndexedSubscript:{objc_msgSend(a2, "unsignedIntegerValue")}];
  [v3 boundingBox];
  v8 = [v2 numberWithDouble:{HMICGRectArea(v4, v5, v6, v7)}];

  return v8;
}

BOOL __115__HMIVideoAnalyzerMutableReport_compareWithDetectionTruth_eventClass_confidenceThreshold_iouThreshold_videoMetric___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_class() == *(a1 + 32))
  {
    v5 = [v3 confidence];
    [v5 value];
    v4 = v6 > 0.0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)compareWithTrackingTruth:(id)a3 eventClass:(Class)a4 confidenceThreshold:(float)a5 ioaThreshold:(float)a6
{
  v10 = a3;
  v11 = [MEMORY[0x277CBEB18] array];
  v12 = [MEMORY[0x277CBEB18] array];
  v13 = [MEMORY[0x277CBEB18] array];
  v14 = [(HMIVideoAnalyzerMutableReport *)self sessions];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __102__HMIVideoAnalyzerMutableReport_compareWithTrackingTruth_eventClass_confidenceThreshold_ioaThreshold___block_invoke_2;
  v25[3] = &unk_278753830;
  v32 = a5;
  v33 = a6;
  v30 = &__block_literal_global_266;
  v31 = a4;
  v26 = v10;
  v27 = v11;
  v28 = v12;
  v29 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  [v14 na_each:v25];

  v19 = [HMIVideoAnalyzerMutableReportComparison alloc];
  v20 = [v17 copy];
  v21 = [v15 copy];
  v22 = [v16 copy];
  v23 = [(HMIVideoAnalyzerMutableReportComparison *)v19 initWithTruePositiveKeys:v20 falseNegativeKeys:v21 falsePositiveKeys:v22 groupByKey:0];

  return v23;
}

float __102__HMIVideoAnalyzerMutableReport_compareWithTrackingTruth_eventClass_confidenceThreshold_ioaThreshold___block_invoke(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, void *a6, void *a7)
{
  v12 = a6;
  v13 = a7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v16 = v15;
  if (!v15)
  {
    goto LABEL_10;
  }

  v17 = [v15 torso];

  if (!v17)
  {
    v19 = [v16 face];

    if (v19)
    {
      v18 = [v16 face];
      goto LABEL_9;
    }

LABEL_10:
    [v12 boundingBox];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    [v13 boundingBox];
    HMICGRectIntersectionOverMinAreaWithRespectToROI(v36, v38, v40, v42, v43, v44, v45, v46, a1, a2, a3, a4);
    v34 = v47;
    goto LABEL_11;
  }

  v18 = [v16 torso];
LABEL_9:
  v20 = v18;
  [v18 boundingBox];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [v13 boundingBox];
  HMICGRectIntersectionOverMinAreaWithRespectToROI(v22, v24, v26, v28, v29, v30, v31, v32, a1, a2, a3, a4);
  v34 = v33;

LABEL_11:
  return v34;
}

void __102__HMIVideoAnalyzerMutableReport_compareWithTrackingTruth_eventClass_confidenceThreshold_ioaThreshold___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v63[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) sessions];
  v52 = v5;
  v8 = [v7 objectForKeyedSubscript:v5];

  v49 = v6;
  v9 = [v6 fragments];
  v10 = [v9 firstObject];
  v11 = [v10 frameResults];

  v48 = v8;
  v12 = [v8 fragments];
  v13 = [v12 firstObject];
  v51 = [v13 frameResults];

  v58 = [MEMORY[0x277CBEB18] array];
  if ([v11 count])
  {
    v14 = 0;
    v57 = MEMORY[0x277CBEC10];
    v50 = v11;
    do
    {
      v15 = [v11 objectAtIndexedSubscript:v14];
      v16 = [v15 events];
      v55 = [v16 allObjects];

      v17 = [v51 objectAtIndexedSubscript:v14];
      v18 = [v17 events];
      v19 = [v18 allObjects];

      v20 = [MEMORY[0x277CBEB18] array];
      v21 = [MEMORY[0x277CBEB18] array];
      v22 = *(a1 + 72);
      v23 = [v11 objectAtIndexedSubscript:v14];
      [v23 regionOfInterest];
      v24 = [HMIVideoAnalyzerMutableReport greedyMatchBetweenPredictionEvents:"greedyMatchBetweenPredictionEvents:truthEvents:falsePositiveIndices:falseNegativeIndices:eventClass:regionOfInterest:confidenceThreshold:scoreThreshold:scoreFunction:" truthEvents:v55 falsePositiveIndices:v19 falseNegativeIndices:v20 eventClass:v21 regionOfInterest:v22 confidenceThreshold:*(a1 + 64) scoreThreshold:? scoreFunction:?];

      v25 = [MEMORY[0x277CBEB38] dictionary];
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = __102__HMIVideoAnalyzerMutableReport_compareWithTrackingTruth_eventClass_confidenceThreshold_ioaThreshold___block_invoke_3;
      v59[3] = &unk_278753808;
      v54 = v55;
      v60 = v54;
      v53 = v19;
      v61 = v53;
      v26 = v25;
      v62 = v26;
      v56 = v24;
      [v24 enumerateKeysAndObjectsUsingBlock:v59];
      v27 = [MEMORY[0x277CBEB18] array];
      v28 = [MEMORY[0x277CBEB18] array];
      v29 = [MEMORY[0x277CBEB18] array];
      v30 = [v26 copy];
      [HMIVideoAnalyzerMutableReport sihouetteScoreForMatches:v30 previousMatches:v57 truePositiveScores:v27 falsePositiveScores:v28 falseNegativeScores:v29];

      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
      [v58 addObject:v31];

      if ([v27 count])
      {
        v32 = *(a1 + 40);
        v33 = [HMIVideoAnalyzerReportRecord alloc];
        v34 = [v58 copy];
        v35 = [(HMIVideoAnalyzerReportRecord *)v33 initWithKey:v52 trackingScores:v27 frameResultIndices:v34];
        [v32 addObject:v35];
      }

      if ([v28 count])
      {
        v36 = *(a1 + 48);
        v37 = [HMIVideoAnalyzerReportRecord alloc];
        v38 = [v58 copy];
        v39 = [(HMIVideoAnalyzerReportRecord *)v37 initWithKey:v52 trackingScores:v28 frameResultIndices:v38];
        [v36 addObject:v39];
      }

      v40 = v58;
      if ([v29 count])
      {
        v41 = *(a1 + 56);
        v42 = [HMIVideoAnalyzerReportRecord alloc];
        v43 = [v58 copy];
        v44 = [(HMIVideoAnalyzerReportRecord *)v42 initWithKey:v52 trackingScores:v29 frameResultIndices:v43];
        [v41 addObject:v44];

        v40 = v58;
      }

      if ([v26 count])
      {
        v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
        v63[0] = v45;
        v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:1];
        [v40 setArray:v46];

        v47 = [v26 copy];
        v57 = v47;
      }

      ++v14;
      v11 = v50;
    }

    while (v14 < [v50 count]);
  }

  else
  {
    v57 = MEMORY[0x277CBEC10];
  }
}

void __102__HMIVideoAnalyzerMutableReport_compareWithTrackingTruth_eventClass_confidenceThreshold_ioaThreshold___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectAtIndexedSubscript:{objc_msgSend(a2, "unsignedIntegerValue")}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v19 = v8;

  v9 = *(a1 + 40);
  v10 = [v6 unsignedIntegerValue];

  v11 = [v9 objectAtIndexedSubscript:v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v19)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v15 = [v19 sessionEntityUUID];
    v16 = [v13 sessionEntityUUID];
    v17 = v16;
    if (v15)
    {
      v18 = v16 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      [*(a1 + 48) setObject:v19 forKeyedSubscript:v16];
    }
  }
}

- (id)selectFramesWithRecord:(id)a3 truth:(id)a4 frameResults:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [v6 frameResultIndices];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [v6 frameResultIndices];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __75__HMIVideoAnalyzerMutableReport_selectFramesWithRecord_truth_frameResults___block_invoke;
    v20[3] = &unk_278753858;
    v21 = v8;
    [v11 na_each:v20];

    v12 = v21;
LABEL_5:

    goto LABEL_6;
  }

  if ([v7 count])
  {
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __75__HMIVideoAnalyzerMutableReport_selectFramesWithRecord_truth_frameResults___block_invoke_2;
    v18 = &unk_278753880;
    v19 = v8;
    [v7 enumerateObjectsUsingBlock:&v15];
    v12 = v19;
    goto LABEL_5;
  }

  [v8 addObject:&unk_284075090];
LABEL_6:
  v13 = [v8 copy];

  return v13;
}

void __75__HMIVideoAnalyzerMutableReport_selectFramesWithRecord_truth_frameResults___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  [v1 addObject:v2];
}

- (void)writeHTMLReportComparison:(id)a3 truth:(id)a4 eventClass:(Class)a5 comparisonType:(id)a6 assetPath:(id)a7 outputPath:(id)a8 limit:(unint64_t)a9 shuffle:(BOOL)a10
{
  v56[3] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v48 = a4;
  v15 = a6;
  v46 = a7;
  v49 = a8;
  v55[0] = @"TP";
  v16 = [v14 truePositiveKeys];
  v56[0] = v16;
  v55[1] = @"FP";
  v17 = [v14 falsePositiveKeys];
  v56[1] = v17;
  v55[2] = @"FN";
  v18 = [v14 falseNegativeKeys];
  v56[2] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:3];
  v20 = [v19 objectForKeyedSubscript:v15];

  v21 = [v20 count];
  if (v21 >= a9)
  {
    v22 = a9;
  }

  else
  {
    v22 = v21;
  }

  if (a10)
  {
    v23 = [v20 mutableCopy];
    if (v22)
    {
      for (i = 0; i != v22; ++i)
      {
        [v23 exchangeObjectAtIndex:i withObjectAtIndex:{arc4random_uniform(objc_msgSend(v20, "count"))}];
      }
    }

    v25 = [v23 subarrayWithRange:{0, v22}];
    v44 = [v25 copy];
  }

  else
  {
    v23 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"score" ascending:0];
    v54 = v23;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
    v26 = [v20 sortedArrayUsingDescriptors:v25];
    v44 = [v26 subarrayWithRange:{0, v22}];
  }

  v27 = MEMORY[0x277CCACA8];
  v28 = [HMIVideoAnalyzerEvent shortNameForEventClass:a5];
  v43 = v15;
  v29 = [v27 stringWithFormat:@"%@%@", v28, v15];

  v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Object detection (%@)", v29];
  v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Visualize%@.html", v29];
  v32 = [v49 stringByAppendingPathComponent:v31];
  v33 = [[HMIHTMLReport alloc] initWithTitle:v30 outputPath:v32];
  v34 = MEMORY[0x277CCACA8];
  v35 = [v20 count];
  [v14 precision];
  v37 = v36;
  [v14 recall];
  v39 = [v34 stringWithFormat:@"%lu %@s (Precision: %.3f, Recall: %.3f)", v35, v29, *&v37, v38];
  [(HMIHTMLReport *)v33 appendText:v39];

  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __126__HMIVideoAnalyzerMutableReport_writeHTMLReportComparison_truth_eventClass_comparisonType_assetPath_outputPath_limit_shuffle___block_invoke;
  v50[3] = &unk_278753920;
  v50[4] = self;
  v51 = v48;
  v52 = v46;
  v53 = v33;
  v40 = v33;
  v41 = v46;
  v42 = v48;
  [v44 na_each:v50];
}

void __126__HMIVideoAnalyzerMutableReport_writeHTMLReportComparison_truth_eventClass_comparisonType_assetPath_outputPath_limit_shuffle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) sessions];
  v5 = [v3 key];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [v6 fragments];
  v8 = [v7 firstObject];
  v9 = [v8 frameResults];

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = [v10 sessions];
    v12 = [v3 key];
    v13 = [v11 objectForKeyedSubscript:v12];
    v14 = [v13 fragments];
    v15 = [v14 firstObject];
    v16 = [v15 frameResults];
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  v17 = [*(a1 + 32) selectFramesWithRecord:v3 truth:*(a1 + 40) frameResults:v9];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __126__HMIVideoAnalyzerMutableReport_writeHTMLReportComparison_truth_eventClass_comparisonType_assetPath_outputPath_limit_shuffle___block_invoke_2;
  v39[3] = &unk_2787538A8;
  v18 = v9;
  v40 = v18;
  v19 = v16;
  v41 = v19;
  v20 = [v17 na_map:v39];
  v21 = *(a1 + 48);
  v22 = [v6 source];
  v23 = [v21 stringByAppendingPathComponent:v22];

  v24 = [HMIVideoFragment alloc];
  v25 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v23];
  v26 = [(HMIVideoFragment *)v24 initWithData:v25];

  v27 = [[HMIVideoFrameGenerator alloc] initWithVideoFragment:v26];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __126__HMIVideoAnalyzerMutableReport_writeHTMLReportComparison_truth_eventClass_comparisonType_assetPath_outputPath_limit_shuffle___block_invoke_3;
  v33[3] = &unk_2787538F8;
  v34 = v17;
  v35 = v18;
  v36 = v6;
  v37 = v19;
  v38 = *(a1 + 56);
  v28 = v19;
  v29 = v6;
  v30 = v18;
  v31 = v17;
  v32 = MEMORY[0x2318CB8E0](v33);
  [(HMIVideoFrameGenerator *)v27 generateVideoFramesForTimes:v20 completionHandler:v32];
}

id __126__HMIVideoAnalyzerMutableReport_writeHTMLReportComparison_truth_eventClass_comparisonType_assetPath_outputPath_limit_shuffle___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 unsignedIntegerValue];
  if (v4 < [*(a1 + 32) count])
  {
    v5 = MEMORY[0x277CCAE60];
    v6 = *(a1 + 32);
LABEL_5:
    v9 = [v6 objectAtIndexedSubscript:{objc_msgSend(v3, "unsignedIntegerValue")}];
    v10 = [v9 frame];
    v11 = v10;
    if (v10)
    {
      [v10 presentationTimeStamp];
    }

    else
    {
      v14 = 0uLL;
      v15 = 0;
    }

    v12 = [v5 valueWithCMTime:&v14];

    goto LABEL_10;
  }

  v7 = [v3 unsignedIntegerValue];
  v8 = [*(a1 + 40) count];
  v5 = MEMORY[0x277CCAE60];
  if (v7 < v8)
  {
    v6 = *(a1 + 40);
    goto LABEL_5;
  }

  v14 = *MEMORY[0x277CC08F0];
  v15 = *(MEMORY[0x277CC08F0] + 16);
  v12 = [MEMORY[0x277CCAE60] valueWithCMTime:&v14];
LABEL_10:

  return v12;
}

void __126__HMIVideoAnalyzerMutableReport_writeHTMLReportComparison_truth_eventClass_comparisonType_assetPath_outputPath_limit_shuffle___block_invoke_3(id *a1, void *a2)
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __126__HMIVideoAnalyzerMutableReport_writeHTMLReportComparison_truth_eventClass_comparisonType_assetPath_outputPath_limit_shuffle___block_invoke_4;
  v10[3] = &unk_2787538D0;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v11 = v9;
  v12 = v8;
  v13 = a1[8];
  [a2 enumerateObjectsUsingBlock:v10];
}

void __126__HMIVideoAnalyzerMutableReport_writeHTMLReportComparison_truth_eventClass_comparisonType_assetPath_outputPath_limit_shuffle___block_invoke_4(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [a1[4] objectAtIndexedSubscript:a3];
  v7 = [v6 unsignedIntegerValue];

  v8 = [a1[5] count];
  v9 = [HMIVideoAnalyzerFrameResult alloc];
  if (v7 >= v8)
  {
    v10 = [MEMORY[0x277CBEB98] set];
    v13 = [(HMIVideoAnalyzerFrameResult *)v9 initWithFrame:v5 events:v10 regionOfInterest:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  }

  else
  {
    v10 = [a1[5] objectAtIndexedSubscript:v7];
    v11 = [v10 events];
    v12 = [a1[5] objectAtIndexedSubscript:v7];
    [v12 regionOfInterest];
    v13 = [(HMIVideoAnalyzerFrameResult *)v9 initWithFrame:v5 events:v11 regionOfInterest:?];
  }

  v14 = MEMORY[0x277CCACA8];
  v15 = [a1[5] count];
  v16 = [a1[6] source];
  if (v5)
  {
    [v5 presentationTimeStamp];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v17 = [v14 stringWithFormat:@"[%lu/%lu] %@ (%.2fs)", v7, v15, v16, CMTimeGetSeconds(&time)];

  if (v7 >= [a1[7] count])
  {
    [a1[8] appendFrameResult:v13 frameTruth:0 description:v17];
  }

  else
  {
    v18 = [a1[7] objectAtIndexedSubscript:v7];
    memset(&time, 0, sizeof(time));
    v19 = [v18 frame];
    v20 = v19;
    if (v19)
    {
      [v19 presentationTimeStamp];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v21 = [(HMIVideoAnalyzerFrameResult *)v13 frame];
    v22 = v21;
    if (v21)
    {
      [v21 presentationTimeStamp];
    }

    [a1[8] appendFrameResult:v13 frameTruth:v18 description:v17];
  }
}

- (void)writeImageCropForEventClass:(Class)a3 outputPath:(id)a4 assetPath:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(HMIVideoAnalyzerMutableReport *)self sessions];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__HMIVideoAnalyzerMutableReport_writeImageCropForEventClass_outputPath_assetPath___block_invoke;
  v13[3] = &unk_278753A20;
  v15 = v9;
  v16 = a3;
  v14 = v8;
  v11 = v9;
  v12 = v8;
  [v10 na_each:v13];
}

void __82__HMIVideoAnalyzerMutableReport_writeImageCropForEventClass_outputPath_assetPath___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [v4 fragments];
  v8 = [v7 firstObject];
  v9 = [v8 frameResults];

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __82__HMIVideoAnalyzerMutableReport_writeImageCropForEventClass_outputPath_assetPath___block_invoke_2;
  v29[3] = &unk_278753968;
  v32 = *(a1 + 48);
  v10 = v5;
  v30 = v10;
  v11 = v6;
  v31 = v11;
  [v9 enumerateObjectsUsingBlock:v29];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __82__HMIVideoAnalyzerMutableReport_writeImageCropForEventClass_outputPath_assetPath___block_invoke_7;
  v25 = &unk_2787539B8;
  v12 = v4;
  v26 = v12;
  v13 = v11;
  v27 = v13;
  v28 = *(a1 + 32);
  v14 = MEMORY[0x2318CB8E0](&v22);
  v15 = *(a1 + 40);
  if (v15)
  {
    v16 = [v12 source];
    v17 = [v15 stringByAppendingPathComponent:v16];

    v18 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v17];
    v19 = [[HMIVideoFragment alloc] initWithData:v18];
    v20 = [[HMIVideoFrameGenerator alloc] initWithVideoFragment:v19];
    v21 = [v10 na_map:&__block_literal_global_316];
    [(HMIVideoFrameGenerator *)v20 generateVideoFramesForTimes:v21 completionHandler:v14];
  }

  else
  {
    v17 = [v10 na_map:{&__block_literal_global_319, v22, v23, v24, v25, v26, v27}];
    (v14)[2](v14, v17);
  }
}

void __82__HMIVideoAnalyzerMutableReport_writeImageCropForEventClass_outputPath_assetPath___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 events];
  v5 = [v4 allObjects];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__HMIVideoAnalyzerMutableReport_writeImageCropForEventClass_outputPath_assetPath___block_invoke_3;
  v13[3] = &__block_descriptor_40_e40___NSArray_16__0__HMIVideoAnalyzerEvent_8lu32l8;
  v13[4] = *(a1 + 48);
  v6 = [v5 na_flatMap:v13];

  v7 = *(a1 + 48);
  if (v7 == objc_opt_class())
  {
    v8 = [v6 na_filter:&__block_literal_global_309];

    v6 = v8;
  }

  v9 = *(a1 + 48);
  if (v9 == objc_opt_class())
  {
    v10 = [v6 na_filter:&__block_literal_global_312];

    v6 = v10;
  }

  if ([v6 count])
  {
    v11 = *(a1 + 32);
    v12 = [v3 frame];
    [v11 addObject:v12];

    [*(a1 + 40) addObject:v6];
  }
}

id __82__HMIVideoAnalyzerMutableReport_writeImageCropForEventClass_outputPath_assetPath___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 allEvents];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__HMIVideoAnalyzerMutableReport_writeImageCropForEventClass_outputPath_assetPath___block_invoke_4;
  v6[3] = &__block_descriptor_40_e31_B16__0__HMIVideoAnalyzerEvent_8lu32l8;
  v6[4] = *(a1 + 32);
  v4 = [v3 na_filter:v6];

  return v4;
}

BOOL __82__HMIVideoAnalyzerMutableReport_writeImageCropForEventClass_outputPath_assetPath___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 faceRecognition];
  v3 = v2 != 0;

  return v3;
}

BOOL __82__HMIVideoAnalyzerMutableReport_writeImageCropForEventClass_outputPath_assetPath___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 torsoRecognition];
  v3 = v2 != 0;

  return v3;
}

void __82__HMIVideoAnalyzerMutableReport_writeImageCropForEventClass_outputPath_assetPath___block_invoke_7(id *a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __82__HMIVideoAnalyzerMutableReport_writeImageCropForEventClass_outputPath_assetPath___block_invoke_8;
  v4[3] = &unk_278753990;
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  [a2 enumerateObjectsUsingBlock:v4];
}

void __82__HMIVideoAnalyzerMutableReport_writeImageCropForEventClass_outputPath_assetPath___block_invoke_8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 source];
  v9 = [v7 stringByDeletingPathExtension];

  v8 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  [HMIVideoAnalyzerMutableReport writeImageCropFromFrame:v6 events:v8 outputPath:*(a1 + 48) source:v9];
}

id __82__HMIVideoAnalyzerMutableReport_writeImageCropForEventClass_outputPath_assetPath___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAE60];
  if (a2)
  {
    [a2 presentationTimeStamp];
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  v3 = [v2 valueWithCMTime:v5];

  return v3;
}

id __82__HMIVideoAnalyzerMutableReport_writeImageCropForEventClass_outputPath_assetPath___block_invoke_10(uint64_t a1, void *a2)
{
  v4 = 0;
  v2 = [a2 pixelBufferFrameWithError:&v4];

  return v2;
}

- (void)writeFragmentFileComparison:(id)a3 eventClass:(Class)a4 outputPath:(id)a5
{
  v19[3] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v18[0] = @"TP";
  v9 = a3;
  v10 = [v9 truePositiveKeys];
  v19[0] = v10;
  v18[1] = @"FP";
  v11 = [v9 falsePositiveKeys];
  v19[1] = v11;
  v18[2] = @"FN";
  v12 = [v9 falseNegativeKeys];

  v19[2] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83__HMIVideoAnalyzerMutableReport_writeFragmentFileComparison_eventClass_outputPath___block_invoke;
  v15[3] = &unk_278753A90;
  v16 = v8;
  v17 = a4;
  v15[4] = self;
  v14 = v8;
  [v13 na_each:v15];
}

void __83__HMIVideoAnalyzerMutableReport_writeFragmentFileComparison_eventClass_outputPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CBEB98];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __83__HMIVideoAnalyzerMutableReport_writeFragmentFileComparison_eventClass_outputPath___block_invoke_2;
  v17[3] = &unk_278753A48;
  v17[4] = *(a1 + 32);
  v6 = a2;
  v7 = [a3 na_map:v17];
  v8 = [v5 setWithArray:v7];

  v9 = [v8 allObjects];
  v10 = [v9 sortedArrayUsingComparator:&__block_literal_global_323];
  v11 = [v10 componentsJoinedByString:@"\n"];

  v12 = MEMORY[0x277CCACA8];
  v13 = [HMIVideoAnalyzerEvent shortNameForEventClass:*(a1 + 48)];
  v14 = [v12 stringWithFormat:@"Fragment%@%@.txt", v13, v6];

  v15 = [*(a1 + 40) stringByAppendingPathComponent:v14];
  v16 = 0;
  [v11 writeToFile:v15 atomically:1 encoding:4 error:&v16];
}

id __83__HMIVideoAnalyzerMutableReport_writeFragmentFileComparison_eventClass_outputPath___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 sessions];
  v5 = [v3 key];

  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 source];

  return v7;
}

+ (void)writeJSONChartData:(id)a3 outputPath:(id)a4
{
  v5 = MEMORY[0x277CBEB38];
  v6 = a4;
  v7 = a3;
  v8 = [v5 dictionary];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63__HMIVideoAnalyzerMutableReport_writeJSONChartData_outputPath___block_invoke;
  v17[3] = &unk_278752CF0;
  v18 = v8;
  v9 = v8;
  [v7 na_each:v17];

  v10 = [v6 stringByAppendingPathComponent:@"PRArray.json"];

  v16 = 0;
  v11 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v9 options:1 error:&v16];
  v12 = v16;
  v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v11 encoding:4];
  v15 = v12;
  [v13 writeToFile:v10 atomically:1 encoding:4 error:&v15];
  v14 = v15;
}

void __63__HMIVideoAnalyzerMutableReport_writeJSONChartData_outputPath___block_invoke(uint64_t a1, void *a2)
{
  v13[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v4 = [v3 objectForKeyedSubscript:@"class"];
    v5 = [v3 objectForKeyedSubscript:@"precision"];
    v6 = [v3 objectForKeyedSubscript:@"recall"];
    v7 = [v3 objectForKeyedSubscript:@"threshold"];
    v8 = [*(a1 + 32) objectForKeyedSubscript:v4];

    if (!v8)
    {
      v9 = [MEMORY[0x277CBEB18] array];
      [*(a1 + 32) setObject:v9 forKeyedSubscript:v4];
    }

    v10 = [*(a1 + 32) objectForKeyedSubscript:v4];
    v12[0] = @"precision";
    v12[1] = @"recall";
    v13[0] = v5;
    v13[1] = v6;
    v12[2] = @"threshold";
    v13[2] = v7;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
    [v10 addObject:v11];
  }
}

+ (id)chartSpecWithRange:(CGRect)a3 colors:(id)a4 labels:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v92[7] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x277CBEB38] dictionary];
  if ([v10 count])
  {
    v13 = [v10 allKeys];
    v14 = [v13 sortedArrayUsingSelector:sel_localizedStandardCompare_];

    [v12 setObject:v14 forKeyedSubscript:@"domain"];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __66__HMIVideoAnalyzerMutableReport_chartSpecWithRange_colors_labels___block_invoke;
    v56[3] = &unk_278753AB8;
    v57 = v10;
    v15 = [v14 na_map:v56];
    [v12 setObject:v15 forKeyedSubscript:@"range"];
  }

  v54 = v10;
  v55 = v12;
  v16 = [MEMORY[0x277CBEB38] dictionary];
  if ([v11 count])
  {
    v17 = [v11 na_map:&__block_literal_global_347];
    v18 = [v17 componentsJoinedByString:{@", "}];

    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%@}[datum.label]", v18];
    [v16 setObject:v19 forKeyedSubscript:@"labelExpr"];
  }

  v91[0] = @"$schema";
  v91[1] = @"description";
  v92[0] = @"https://vega.github.io/schema/vega-lite/v4.json";
  v92[1] = @"PR Curves";
  v91[2] = @"width";
  v91[3] = @"height";
  v92[2] = @"container";
  v92[3] = @"container";
  v91[4] = @"data";
  v91[5] = @"config";
  v92[4] = &unk_2840759A0;
  v92[5] = &unk_284075A18;
  v91[6] = @"layer";
  v89[0] = &unk_284075A40;
  v88[0] = @"mark";
  v88[1] = @"encoding";
  v86[0] = @"x";
  v53 = v11;
  v84[0] = @"field";
  v84[1] = @"type";
  v85[0] = @"recall";
  v85[1] = @"quantitative";
  v84[2] = @"scale";
  v82 = @"domain";
  v94.origin.x = x;
  v94.origin.y = y;
  v94.size.width = width;
  v94.size.height = height;
  v52 = [MEMORY[0x277CCABB0] numberWithDouble:CGRectGetMinX(v94)];
  v81[0] = v52;
  v95.origin.x = x;
  v95.origin.y = y;
  v95.size.width = width;
  v95.size.height = height;
  v51 = [MEMORY[0x277CCABB0] numberWithDouble:CGRectGetMaxX(v95)];
  v81[1] = v51;
  v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:2];
  v83 = v50;
  v42 = v16;
  v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
  v85[2] = v49;
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:3];
  v87[0] = v48;
  v86[1] = @"y";
  v79[0] = @"field";
  v79[1] = @"type";
  v80[0] = @"precision";
  v80[1] = @"quantitative";
  v79[2] = @"scale";
  v77 = @"domain";
  v96.origin.x = x;
  v96.origin.y = y;
  v96.size.width = width;
  v96.size.height = height;
  v47 = [MEMORY[0x277CCABB0] numberWithDouble:CGRectGetMinY(v96)];
  v76[0] = v47;
  v97.origin.x = x;
  v97.origin.y = y;
  v97.size.width = width;
  v97.size.height = height;
  v46 = [MEMORY[0x277CCABB0] numberWithDouble:CGRectGetMaxY(v97)];
  v76[1] = v46;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:2];
  v78 = v45;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
  v80[2] = v44;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:3];
  v87[1] = v43;
  v86[2] = @"color";
  v74[0] = @"field";
  v74[1] = @"type";
  v75[0] = @"class";
  v75[1] = @"nominal";
  v74[2] = @"scale";
  v74[3] = @"legend";
  v75[2] = v12;
  v75[3] = v16;
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:4];
  v87[2] = v41;
  v86[3] = @"opacity";
  v72[0] = @"field";
  v72[1] = @"type";
  v73[0] = @"opacity";
  v73[1] = @"nominal";
  v72[2] = @"legend";
  v40 = [MEMORY[0x277CBEB68] null];
  v73[2] = v40;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:3];
  v87[3] = v39;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:4];
  v89[1] = v38;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:2];
  v90[0] = v37;
  v70[0] = @"mark";
  v70[1] = @"encoding";
  v71[0] = &unk_284075A68;
  v69[0] = &unk_284075A90;
  v68[0] = @"text";
  v68[1] = @"x";
  v66[0] = @"field";
  v66[1] = @"type";
  v67[0] = @"recall";
  v67[1] = @"quantitative";
  v66[2] = @"scale";
  v64 = @"domain";
  v98.origin.x = x;
  v98.origin.y = y;
  v98.size.width = width;
  v98.size.height = height;
  v36 = [MEMORY[0x277CCABB0] numberWithDouble:CGRectGetMinX(v98)];
  v63[0] = v36;
  v99.origin.x = x;
  v99.origin.y = y;
  v99.size.width = width;
  v99.size.height = height;
  v35 = [MEMORY[0x277CCABB0] numberWithDouble:CGRectGetMaxX(v99)];
  v63[1] = v35;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:2];
  v65 = v34;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
  v67[2] = v33;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:3];
  v69[1] = v20;
  v68[2] = @"y";
  v61[0] = @"field";
  v61[1] = @"type";
  v62[0] = @"precision";
  v62[1] = @"quantitative";
  v61[2] = @"scale";
  v59 = @"domain";
  v100.origin.x = x;
  v100.origin.y = y;
  v100.size.width = width;
  v100.size.height = height;
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:CGRectGetMinY(v100)];
  v58[0] = v21;
  v101.origin.x = x;
  v101.origin.y = y;
  v101.size.width = width;
  v101.size.height = height;
  v22 = [MEMORY[0x277CCABB0] numberWithDouble:CGRectGetMaxY(v101)];
  v58[1] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
  v60 = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
  v62[2] = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:3];
  v69[2] = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:3];
  v71[1] = v26;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:2];
  v90[1] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:2];
  v92[6] = v28;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:7];

  v30 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v29 options:0 error:0];
  v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v30 encoding:4];

  return v31;
}

+ (void)writeImageCropFromFrame:(id)a3 events:(id)a4 outputPath:(id)a5 source:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = MEMORY[0x277CBEBC0];
  v12 = a4;
  v13 = [v11 fileURLWithPath:a5];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __82__HMIVideoAnalyzerMutableReport_writeImageCropFromFrame_events_outputPath_source___block_invoke;
  v17[3] = &unk_278753B00;
  v18 = v9;
  v19 = v10;
  v20 = v13;
  v14 = v13;
  v15 = v10;
  v16 = v9;
  [v12 enumerateObjectsUsingBlock:v17];
}

void __82__HMIVideoAnalyzerMutableReport_writeImageCropFromFrame_events_outputPath_source___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v7)
  {
    v11 = [*(a1 + 32) pixelBuffer];
    v12 = [v7 roll];
    v45 = 0;
    v13 = [HMIFaceprinter createFacePixelBufferForFaceEvent:v7 pixelBuffer:v11 roll:v12 error:&v45];
    v14 = v45;
  }

  else
  {
    if (v10)
    {
      v15 = [*(a1 + 32) pixelBuffer];
      v44 = 0;
      v13 = [HMITorsoprinter createTorsoPixelBufferForTorsoEvent:v10 pixelBuffer:v15 error:&v44];
      v16 = v44;
    }

    else
    {
      Size = HMICVPixelBufferGetSize([*(a1 + 32) pixelBuffer]);
      v19 = v18;
      [v8 boundingBox];
      HMICGRectPixelFromNormalized(v20, v21, v22, v23, Size, v19);
      v47 = CGRectIntegral(v46);
      x = v47.origin.x;
      y = v47.origin.y;
      width = v47.size.width;
      height = v47.size.height;
      v28 = [*(a1 + 32) pixelBuffer];
      v43 = 0;
      v13 = [HMIVisionUtilities transferPixelBuffer:v28 crop:1111970369 size:8 pixelFormat:&v43 options:x error:y, width, height, width, height];
      v16 = v43;
    }

    v14 = v16;
  }

  v40 = v7;
  CVPixelBufferLockBaseAddress(v13, 1uLL);
  v29 = [objc_alloc(MEMORY[0x277CBF758]) initWithCVPixelBuffer:v13];
  CVPixelBufferUnlockBaseAddress(v13, 1uLL);
  CVPixelBufferRelease(v13);
  v30 = *(a1 + 32);
  v31 = v10;
  if (v30)
  {
    [v30 presentationTimeStamp];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v32 = CMTimeGetSeconds(&time) * 1000.0;
  v33 = [HMIVideoAnalyzerEvent shortNameForEventClass:objc_opt_class()];
  v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%.0f_%@_%lu.png", *(a1 + 40), *&v32, v33, a3];
  v35 = [MEMORY[0x277CBEBC0] fileURLWithPath:v34 relativeToURL:*(a1 + 48)];
  v36 = MEMORY[0x277CBEC10];
  v37 = [MEMORY[0x277CBF740] contextWithOptions:MEMORY[0x277CBEC10]];
  v38 = *MEMORY[0x277CBF970];
  v41 = v14;
  [v37 writePNGRepresentationOfImage:v29 toURL:v35 format:v38 colorSpace:objc_msgSend(v29 options:"colorSpace") error:{v36, &v41}];
  v39 = v41;
}

+ (id)greedyMatchBetweenPredictionEvents:(id)a3 truthEvents:(id)a4 falsePositiveIndices:(id)a5 falseNegativeIndices:(id)a6 eventClass:(Class)a7 regionOfInterest:(CGRect)a8 confidenceThreshold:(float)a9 scoreThreshold:(float)a10 scoreFunction:(id)a11
{
  height = a8.size.height;
  width = a8.size.width;
  y = a8.origin.y;
  x = a8.origin.x;
  v70[1] = *MEMORY[0x277D85DE8];
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a11;
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __199__HMIVideoAnalyzerMutableReport_greedyMatchBetweenPredictionEvents_truthEvents_falsePositiveIndices_falseNegativeIndices_eventClass_regionOfInterest_confidenceThreshold_scoreThreshold_scoreFunction___block_invoke;
  v66[3] = &unk_278753B28;
  v68 = a7;
  v69 = a9;
  v27 = v24;
  v67 = v27;
  [v22 enumerateObjectsUsingBlock:v66];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __199__HMIVideoAnalyzerMutableReport_greedyMatchBetweenPredictionEvents_truthEvents_falsePositiveIndices_falseNegativeIndices_eventClass_regionOfInterest_confidenceThreshold_scoreThreshold_scoreFunction___block_invoke_2;
  v59[3] = &unk_278753B50;
  v61 = a7;
  v62 = x;
  v63 = y;
  v64 = width;
  v65 = height;
  v28 = v25;
  v60 = v28;
  [v23 enumerateObjectsUsingBlock:v59];
  v29 = [MEMORY[0x277CBEB18] array];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __199__HMIVideoAnalyzerMutableReport_greedyMatchBetweenPredictionEvents_truthEvents_falsePositiveIndices_falseNegativeIndices_eventClass_regionOfInterest_confidenceThreshold_scoreThreshold_scoreFunction___block_invoke_3;
  v48[3] = &unk_278753BA0;
  v30 = v28;
  v52 = v29;
  v53 = v26;
  v49 = v30;
  v50 = v22;
  v54 = x;
  v55 = y;
  v56 = width;
  v57 = height;
  v58 = a10;
  v51 = v23;
  v31 = v29;
  v32 = v23;
  v33 = v22;
  v34 = v26;
  [v27 na_each:v48];
  v35 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"score" ascending:0];
  v70[0] = v35;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:1];
  v37 = [v31 sortedArrayUsingDescriptors:v36];

  v38 = [MEMORY[0x277CBEB38] dictionary];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __199__HMIVideoAnalyzerMutableReport_greedyMatchBetweenPredictionEvents_truthEvents_falsePositiveIndices_falseNegativeIndices_eventClass_regionOfInterest_confidenceThreshold_scoreThreshold_scoreFunction___block_invoke_5;
  v44[3] = &unk_278753BC8;
  v45 = v30;
  v46 = v27;
  v47 = v38;
  v39 = v38;
  v40 = v27;
  v41 = v30;
  [v37 na_each:v44];
  v42 = [v39 copy];

  return v42;
}

void __199__HMIVideoAnalyzerMutableReport_greedyMatchBetweenPredictionEvents_truthEvents_falsePositiveIndices_falseNegativeIndices_eventClass_regionOfInterest_confidenceThreshold_scoreThreshold_scoreFunction___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  if (objc_opt_isKindOfClass())
  {
    v5 = [v11 confidence];
    [v5 value];
    v7 = v6;
    v8 = *(a1 + 48);

    if (v7 >= v8)
    {
      v9 = *(a1 + 32);
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      [v9 addObject:v10];
    }
  }
}

void __199__HMIVideoAnalyzerMutableReport_greedyMatchBetweenPredictionEvents_truthEvents_falsePositiveIndices_falseNegativeIndices_eventClass_regionOfInterest_confidenceThreshold_scoreThreshold_scoreFunction___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  if (objc_opt_isKindOfClass())
  {
    [v11 boundingBox];
    v13.origin.x = v5;
    v13.origin.y = v6;
    v13.size.width = v7;
    v13.size.height = v8;
    if (CGRectIntersectsRect(*(a1 + 48), v13))
    {
      v9 = *(a1 + 32);
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      [v9 addObject:v10];
    }
  }
}

void __199__HMIVideoAnalyzerMutableReport_greedyMatchBetweenPredictionEvents_truthEvents_falsePositiveIndices_falseNegativeIndices_eventClass_regionOfInterest_confidenceThreshold_scoreThreshold_scoreFunction___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __199__HMIVideoAnalyzerMutableReport_greedyMatchBetweenPredictionEvents_truthEvents_falsePositiveIndices_falseNegativeIndices_eventClass_regionOfInterest_confidenceThreshold_scoreThreshold_scoreFunction___block_invoke_4;
  v6[3] = &unk_278753B78;
  v11 = *(a1 + 64);
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 48);
  v12 = *(a1 + 72);
  v13 = *(a1 + 88);
  v14 = *(a1 + 104);
  v10 = *(a1 + 56);
  v5 = v3;
  [v4 na_each:v6];
}

void __199__HMIVideoAnalyzerMutableReport_greedyMatchBetweenPredictionEvents_truthEvents_falsePositiveIndices_falseNegativeIndices_eventClass_regionOfInterest_confidenceThreshold_scoreThreshold_scoreFunction___block_invoke_4(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = *(a1 + 64);
  v4 = [*(a1 + 32) objectAtIndexedSubscript:{objc_msgSend(*(a1 + 40), "unsignedIntegerValue")}];
  v5 = [*(a1 + 48) objectAtIndexedSubscript:{objc_msgSend(v11, "unsignedIntegerValue")}];
  v6 = (*(v3 + 16))(v3, v4, v5, *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96));

  if (v6 > *(a1 + 104))
  {
    v7 = *(a1 + 56);
    v8 = [HMIVideoAnalyzerReportMatch alloc];
    *&v9 = v6;
    v10 = [(HMIVideoAnalyzerReportMatch *)v8 initWithTruth:v11 prediction:*(a1 + 40) score:v9];
    [v7 addObject:v10];
  }
}

void __199__HMIVideoAnalyzerMutableReport_greedyMatchBetweenPredictionEvents_truthEvents_falsePositiveIndices_falseNegativeIndices_eventClass_regionOfInterest_confidenceThreshold_scoreThreshold_scoreFunction___block_invoke_5(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v14 = v3;
  v5 = [v3 truth];
  if ([v4 containsObject:v5])
  {
    v6 = a1[5];
    v7 = [v14 prediction];
    LODWORD(v6) = [v6 containsObject:v7];

    if (!v6)
    {
      goto LABEL_5;
    }

    v8 = a1[4];
    v9 = [v14 truth];
    [v8 removeObject:v9];

    v10 = a1[5];
    v11 = [v14 prediction];
    [v10 removeObject:v11];

    v5 = [v14 truth];
    v12 = a1[6];
    v13 = [v14 prediction];
    [v12 setObject:v5 forKeyedSubscript:v13];
  }

LABEL_5:
}

+ (void)sihouetteScoreForMatches:(id)a3 previousMatches:(id)a4 truePositiveScores:(id)a5 falsePositiveScores:(id)a6 falseNegativeScores:(id)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __133__HMIVideoAnalyzerMutableReport_sihouetteScoreForMatches_previousMatches_truePositiveScores_falsePositiveScores_falseNegativeScores___block_invoke;
  v19[3] = &unk_278753C18;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v15 = v14;
  v16 = v13;
  v17 = v12;
  v18 = v11;
  [a4 enumerateKeysAndObjectsUsingBlock:v19];
}

void __133__HMIVideoAnalyzerMutableReport_sihouetteScoreForMatches_previousMatches_truePositiveScores_falsePositiveScores_falseNegativeScores___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __133__HMIVideoAnalyzerMutableReport_sihouetteScoreForMatches_previousMatches_truePositiveScores_falsePositiveScores_falseNegativeScores___block_invoke_2;
  v10[3] = &unk_278753BF0;
  v11 = v6;
  v12 = v5;
  v7 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v8 = v5;
  v9 = v6;
  [v7 enumerateKeysAndObjectsUsingBlock:v10];
}

void __133__HMIVideoAnalyzerMutableReport_sihouetteScoreForMatches_previousMatches_truePositiveScores_falsePositiveScores_falseNegativeScores___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 boundingBox];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [v6 boundingBox];
  v20 = (HMICGRectGeneralizedIntersectionOverUnion(v9, v11, v13, v15, v16, v17, v18, v19) + 1.0) * 0.5;
  v21 = [*(a1 + 32) sessionEntityUUID];
  v22 = [v6 sessionEntityUUID];

  v23 = *(a1 + 40);
  if (v21 == v22 && v23 == v7)
  {
    v25 = *(a1 + 48);
    *&v24 = v20;
    v26 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
    [v25 addObject:v26];
  }

  if (v21 == v22 && v23 != v7)
  {
    v27 = *(a1 + 56);
    *&v24 = v20;
    v28 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
    [v27 addObject:v28];
  }

  if (v21 != v22 && v23 == v7)
  {
    v29 = *(a1 + 64);
    *&v24 = v20;
    v30 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
    [v29 addObject:v30];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMIVideoAnalyzerMutableReport *)self name];
  v6 = NSStringFromSelector(sel_name);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(HMIVideoAnalyzerMutableReport *)self version];
  v8 = NSStringFromSelector(sel_version);
  [v4 encodeInteger:v7 forKey:v8];

  v9 = [(HMIVideoAnalyzerMutableReport *)self deviceInformation];
  v10 = NSStringFromSelector(sel_deviceInformation);
  [v4 encodeObject:v9 forKey:v10];

  v13 = [(HMIVideoAnalyzerMutableReport *)self sessions];
  v11 = [v13 copy];
  v12 = NSStringFromSelector(sel_sessions);
  [v4 encodeObject:v11 forKey:v12];
}

- (HMIVideoAnalyzerMutableReport)initWithCoder:(id)a3
{
  v27[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_class();
  v5 = NSStringFromSelector(sel_name);
  v6 = [v3 decodeObjectOfClass:v4 forKey:v5];

  v7 = NSStringFromSelector(sel_version);
  v23 = [v3 decodeIntegerForKey:v7];

  v8 = MEMORY[0x277CBEB98];
  v27[0] = objc_opt_class();
  v27[1] = objc_opt_class();
  v27[2] = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:3];
  v10 = [v8 setWithArray:v9];
  v11 = NSStringFromSelector(sel_deviceInformation);
  v12 = [v3 decodeObjectOfClasses:v10 forKey:v11];

  v13 = MEMORY[0x277CBEB98];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v26[2] = objc_opt_class();
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];
  v15 = [v13 setWithArray:v14];
  v16 = NSStringFromSelector(sel_sessions);
  v17 = [v3 decodeObjectOfClasses:v15 forKey:v16];

  v25.receiver = self;
  v25.super_class = HMIVideoAnalyzerMutableReport;
  v18 = [(HMIVideoAnalyzerMutableReport *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_name, v6);
    v19->_version = v23;
    objc_storeStrong(&v19->_deviceInformation, v12);
    v20 = [v17 mutableCopy];
    sessions = v19->_sessions;
    v19->_sessions = v20;
  }

  return v19;
}

@end