@interface HMIVideoAnalyzerMutableReportComparison
- (HMIVideoAnalyzerMutableReportComparison)initWithTruePositiveKeys:(id)keys falseNegativeKeys:(id)negativeKeys falsePositiveKeys:(id)positiveKeys groupByKey:(BOOL)key;
- (id)attributeDescriptions;
@end

@implementation HMIVideoAnalyzerMutableReportComparison

- (HMIVideoAnalyzerMutableReportComparison)initWithTruePositiveKeys:(id)keys falseNegativeKeys:(id)negativeKeys falsePositiveKeys:(id)positiveKeys groupByKey:(BOOL)key
{
  keyCopy = key;
  keysCopy = keys;
  negativeKeysCopy = negativeKeys;
  positiveKeysCopy = positiveKeys;
  v34.receiver = self;
  v34.super_class = HMIVideoAnalyzerMutableReportComparison;
  v14 = [(HMIVideoAnalyzerMutableReportComparison *)&v34 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_truePositiveKeys, keys);
    objc_storeStrong(&v15->_falseNegativeKeys, negativeKeys);
    objc_storeStrong(&v15->_falsePositiveKeys, positiveKeys);
    if (keyCopy)
    {
      v16 = MEMORY[0x277CBEB98];
      v17 = [keysCopy na_map:&__block_literal_global_14];
      v18 = [v16 setWithArray:v17];
      v15->_truePositive = [v18 count];

      v19 = MEMORY[0x277CBEB98];
      v20 = [negativeKeysCopy na_map:&__block_literal_global_53];
      v21 = [v19 setWithArray:v20];
      v15->_falseNegative = [v21 count];

      v22 = MEMORY[0x277CBEB98];
      v23 = [positiveKeysCopy na_map:&__block_literal_global_55];
      v24 = [v22 setWithArray:v23];
      v15->_falsePositive = [v24 count];
    }

    else
    {
      v25 = [keysCopy valueForKeyPath:@"@sum.count"];
      v15->_truePositive = [v25 intValue];

      v26 = [negativeKeysCopy valueForKeyPath:@"@sum.count"];
      v15->_falseNegative = [v26 intValue];

      v23 = [positiveKeysCopy valueForKeyPath:@"@sum.count"];
      v15->_falsePositive = [v23 intValue];
    }

    truePositive = v15->_truePositive;
    v28 = truePositive;
    v29 = v15->_falsePositive + truePositive;
    v30 = truePositive / v29;
    if (!v29)
    {
      v30 = 0.0;
    }

    v15->_precision = v30;
    v31 = v15->_falseNegative + truePositive;
    v32 = v28 / v31;
    if (!v31)
    {
      v32 = 0.0;
    }

    v15->_recall = v32;
  }

  return v15;
}

- (id)attributeDescriptions
{
  v22[5] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerMutableReportComparison *)self precision];
  v21 = [v4 numberWithFloat:?];
  v5 = [v3 initWithName:@"Precision" value:v21];
  v22[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerMutableReportComparison *)self recall];
  v8 = [v7 numberWithFloat:?];
  v9 = [v6 initWithName:@"Recall" value:v8];
  v22[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMIVideoAnalyzerMutableReportComparison truePositive](self, "truePositive")}];
  v12 = [v10 initWithName:@"True Positive" value:v11];
  v22[2] = v12;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMIVideoAnalyzerMutableReportComparison falseNegative](self, "falseNegative")}];
  v15 = [v13 initWithName:@"False Negative" value:v14];
  v22[3] = v15;
  v16 = objc_alloc(MEMORY[0x277D0F778]);
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMIVideoAnalyzerMutableReportComparison falsePositive](self, "falsePositive")}];
  v18 = [v16 initWithName:@"False Positive" value:v17];
  v22[4] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:5];

  return v19;
}

@end