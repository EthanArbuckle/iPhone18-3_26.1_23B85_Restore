@interface HMIVideoAnalyzerMutableReportSession
- (HMIVideoAnalyzerMutableReportSession)initWithCoder:(id)coder;
- (HMIVideoAnalyzerMutableReportSession)initWithSource:(id)source;
- (id)attributeDescriptions;
- (void)appendFragmentResult:(id)result redactFrames:(BOOL)frames;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMIVideoAnalyzerMutableReportSession

- (HMIVideoAnalyzerMutableReportSession)initWithSource:(id)source
{
  sourceCopy = source;
  v11.receiver = self;
  v11.super_class = HMIVideoAnalyzerMutableReportSession;
  v6 = [(HMIVideoAnalyzerMutableReportSession *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_source, source);
    array = [MEMORY[0x277CBEB18] array];
    fragments = v7->_fragments;
    v7->_fragments = array;
  }

  return v7;
}

- (void)appendFragmentResult:(id)result redactFrames:(BOOL)frames
{
  framesCopy = frames;
  resultCopy = result;
  fragments = [(HMIVideoAnalyzerMutableReportSession *)self fragments];
  v7 = [resultCopy redactedCopyWithFrameResults:framesCopy fragment:1];

  [fragments addObject:v7];
}

- (id)attributeDescriptions
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  source = [(HMIVideoAnalyzerMutableReportSession *)self source];
  v5 = [v3 initWithName:@"Source" value:source];
  v11[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  fragments = [(HMIVideoAnalyzerMutableReportSession *)self fragments];
  v8 = [v6 initWithName:@"Fragments" value:fragments];
  v11[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  source = [(HMIVideoAnalyzerMutableReportSession *)self source];
  v6 = NSStringFromSelector(sel_source);
  [coderCopy encodeObject:source forKey:v6];

  fragments = [(HMIVideoAnalyzerMutableReportSession *)self fragments];
  v7 = [fragments copy];
  v8 = NSStringFromSelector(sel_fragments);
  [coderCopy encodeObject:v7 forKey:v8];
}

- (HMIVideoAnalyzerMutableReportSession)initWithCoder:(id)coder
{
  v19[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_source);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = MEMORY[0x277CBEB98];
  v19[0] = objc_opt_class();
  v19[1] = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v10 = [v8 setWithArray:v9];
  v11 = NSStringFromSelector(sel_fragments);
  v12 = [coderCopy decodeObjectOfClasses:v10 forKey:v11];

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