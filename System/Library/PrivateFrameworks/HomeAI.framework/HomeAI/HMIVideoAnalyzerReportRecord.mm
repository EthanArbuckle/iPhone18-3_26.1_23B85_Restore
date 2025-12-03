@interface HMIVideoAnalyzerReportRecord
- (HMIVideoAnalyzerReportRecord)initWithKey:(id)key classificationScore:(id)score;
- (HMIVideoAnalyzerReportRecord)initWithKey:(id)key detectionScores:(id)scores frameResultIndex:(unint64_t)index;
- (HMIVideoAnalyzerReportRecord)initWithKey:(id)key trackingScores:(id)scores frameResultIndices:(id)indices;
@end

@implementation HMIVideoAnalyzerReportRecord

- (HMIVideoAnalyzerReportRecord)initWithKey:(id)key classificationScore:(id)score
{
  keyCopy = key;
  scoreCopy = score;
  v14.receiver = self;
  v14.super_class = HMIVideoAnalyzerReportRecord;
  v9 = [(HMIVideoAnalyzerReportRecord *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, key);
    v10->_count = 1;
    [scoreCopy floatValue];
    v10->_score = v11;
    frameResultIndices = v10->_frameResultIndices;
    v10->_frameResultIndices = MEMORY[0x277CBEBF8];
  }

  return v10;
}

- (HMIVideoAnalyzerReportRecord)initWithKey:(id)key detectionScores:(id)scores frameResultIndex:(unint64_t)index
{
  v20[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  scoresCopy = scores;
  v19.receiver = self;
  v19.super_class = HMIVideoAnalyzerReportRecord;
  v11 = [(HMIVideoAnalyzerReportRecord *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_key, key);
    v12->_count = [scoresCopy count];
    v13 = [scoresCopy valueForKeyPath:@"@max.floatValue"];
    [v13 floatValue];
    v12->_score = v14;

    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
    v20[0] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    frameResultIndices = v12->_frameResultIndices;
    v12->_frameResultIndices = v16;
  }

  return v12;
}

- (HMIVideoAnalyzerReportRecord)initWithKey:(id)key trackingScores:(id)scores frameResultIndices:(id)indices
{
  keyCopy = key;
  scoresCopy = scores;
  indicesCopy = indices;
  v17.receiver = self;
  v17.super_class = HMIVideoAnalyzerReportRecord;
  v12 = [(HMIVideoAnalyzerReportRecord *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_key, key);
    v13->_count = [scoresCopy count];
    v14 = [scoresCopy valueForKeyPath:@"@max.floatValue"];
    [v14 floatValue];
    v13->_score = v15;

    objc_storeStrong(&v13->_frameResultIndices, indices);
  }

  return v13;
}

@end