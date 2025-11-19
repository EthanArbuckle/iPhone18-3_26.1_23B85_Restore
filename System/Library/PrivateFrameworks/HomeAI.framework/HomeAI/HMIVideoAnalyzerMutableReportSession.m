@interface HMIVideoAnalyzerMutableReportSession
- (HMIVideoAnalyzerMutableReportSession)initWithCoder:(id)a3;
- (HMIVideoAnalyzerMutableReportSession)initWithSource:(id)a3;
- (id)attributeDescriptions;
- (void)appendFragmentResult:(id)a3 redactFrames:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMIVideoAnalyzerMutableReportSession

- (HMIVideoAnalyzerMutableReportSession)initWithSource:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HMIVideoAnalyzerMutableReportSession;
  v6 = [(HMIVideoAnalyzerMutableReportSession *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_source, a3);
    v8 = [MEMORY[0x277CBEB18] array];
    fragments = v7->_fragments;
    v7->_fragments = v8;
  }

  return v7;
}

- (void)appendFragmentResult:(id)a3 redactFrames:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v8 = [(HMIVideoAnalyzerMutableReportSession *)self fragments];
  v7 = [v6 redactedCopyWithFrameResults:v4 fragment:1];

  [v8 addObject:v7];
}

- (id)attributeDescriptions
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMIVideoAnalyzerMutableReportSession *)self source];
  v5 = [v3 initWithName:@"Source" value:v4];
  v11[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMIVideoAnalyzerMutableReportSession *)self fragments];
  v8 = [v6 initWithName:@"Fragments" value:v7];
  v11[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMIVideoAnalyzerMutableReportSession *)self source];
  v6 = NSStringFromSelector(sel_source);
  [v4 encodeObject:v5 forKey:v6];

  v9 = [(HMIVideoAnalyzerMutableReportSession *)self fragments];
  v7 = [v9 copy];
  v8 = NSStringFromSelector(sel_fragments);
  [v4 encodeObject:v7 forKey:v8];
}

- (HMIVideoAnalyzerMutableReportSession)initWithCoder:(id)a3
{
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_source);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = MEMORY[0x277CBEB98];
  v19[0] = objc_opt_class();
  v19[1] = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v10 = [v8 setWithArray:v9];
  v11 = NSStringFromSelector(sel_fragments);
  v12 = [v4 decodeObjectOfClasses:v10 forKey:v11];

  v18.receiver = self;
  v18.super_class = HMIVideoAnalyzerMutableReportSession;
  v13 = [(HMIVideoAnalyzerMutableReportSession *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_source, v7);
    v15 = [v12 mutableCopy];
    fragments = v14->_fragments;
    v14->_fragments = v15;
  }

  return v14;
}

@end