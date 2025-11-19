@interface HMIVideoAnalyzerReportRecord
- (HMIVideoAnalyzerReportRecord)initWithKey:(id)a3 classificationScore:(id)a4;
- (HMIVideoAnalyzerReportRecord)initWithKey:(id)a3 detectionScores:(id)a4 frameResultIndex:(unint64_t)a5;
- (HMIVideoAnalyzerReportRecord)initWithKey:(id)a3 trackingScores:(id)a4 frameResultIndices:(id)a5;
@end

@implementation HMIVideoAnalyzerReportRecord

- (HMIVideoAnalyzerReportRecord)initWithKey:(id)a3 classificationScore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HMIVideoAnalyzerReportRecord;
  v9 = [(HMIVideoAnalyzerReportRecord *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, a3);
    v10->_count = 1;
    [v8 floatValue];
    v10->_score = v11;
    frameResultIndices = v10->_frameResultIndices;
    v10->_frameResultIndices = MEMORY[0x277CBEBF8];
  }

  return v10;
}

- (HMIVideoAnalyzerReportRecord)initWithKey:(id)a3 detectionScores:(id)a4 frameResultIndex:(unint64_t)a5
{
  v20[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v19.receiver = self;
  v19.super_class = HMIVideoAnalyzerReportRecord;
  v11 = [(HMIVideoAnalyzerReportRecord *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_key, a3);
    v12->_count = [v10 count];
    v13 = [v10 valueForKeyPath:@"@max.floatValue"];
    [v13 floatValue];
    v12->_score = v14;

    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
    v20[0] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    frameResultIndices = v12->_frameResultIndices;
    v12->_frameResultIndices = v16;
  }

  return v12;
}

- (HMIVideoAnalyzerReportRecord)initWithKey:(id)a3 trackingScores:(id)a4 frameResultIndices:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = HMIVideoAnalyzerReportRecord;
  v12 = [(HMIVideoAnalyzerReportRecord *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_key, a3);
    v13->_count = [v10 count];
    v14 = [v10 valueForKeyPath:@"@max.floatValue"];
    [v14 floatValue];
    v13->_score = v15;

    objc_storeStrong(&v13->_frameResultIndices, a5);
  }

  return v13;
}

@end