@interface HMIVideoAnalyzerFragmentResult
- (HMIVideoAnalyzerFragmentResult)initWithCoder:(id)coder;
- (HMIVideoAnalyzerFragmentResult)initWithFragment:(id)fragment events:(id)events frameResults:(id)results thumbnails:(id)thumbnails configuration:(id)configuration outcome:(id)outcome;
- (id)attributeDescriptions;
- (id)maxConfidenceEventForEventClass:(Class)class;
- (id)maxConfidenceEvents;
- (id)redactedCopyWithFrameResults:(BOOL)results fragment:(BOOL)fragment;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMIVideoAnalyzerFragmentResult

- (HMIVideoAnalyzerFragmentResult)initWithFragment:(id)fragment events:(id)events frameResults:(id)results thumbnails:(id)thumbnails configuration:(id)configuration outcome:(id)outcome
{
  fragmentCopy = fragment;
  eventsCopy = events;
  resultsCopy = results;
  thumbnailsCopy = thumbnails;
  configurationCopy = configuration;
  outcomeCopy = outcome;
  v24.receiver = self;
  v24.super_class = HMIVideoAnalyzerFragmentResult;
  v18 = [(HMIVideoAnalyzerFragmentResult *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_fragment, fragment);
    objc_storeStrong(&v19->_events, events);
    objc_storeStrong(&v19->_frameResults, results);
    objc_storeStrong(&v19->_thumbnails, thumbnails);
    objc_storeStrong(&v19->_configuration, configuration);
    objc_storeStrong(&v19->_outcome, outcome);
  }

  return v19;
}

- (id)redactedCopyWithFrameResults:(BOOL)results fragment:(BOOL)fragment
{
  fragmentCopy = fragment;
  resultsCopy = results;
  frameResults = [(HMIVideoAnalyzerFragmentResult *)self frameResults];
  thumbnails = [(HMIVideoAnalyzerFragmentResult *)self thumbnails];
  if (resultsCopy)
  {
    frameResults2 = [(HMIVideoAnalyzerFragmentResult *)self frameResults];
    v10 = [frameResults2 na_map:&__block_literal_global_29];

    thumbnails2 = [(HMIVideoAnalyzerFragmentResult *)self thumbnails];
    v12 = [thumbnails2 na_map:&__block_literal_global_3];

    thumbnails = v12;
    frameResults = v10;
  }

  fragment = [(HMIVideoAnalyzerFragmentResult *)self fragment];
  v14 = fragment;
  if (fragmentCopy)
  {
    redactedCopy = [fragment redactedCopy];

    v14 = redactedCopy;
  }

  v16 = objc_alloc(objc_opt_class());
  events = [(HMIVideoAnalyzerFragmentResult *)self events];
  configuration = [(HMIVideoAnalyzerFragmentResult *)self configuration];
  outcome = [(HMIVideoAnalyzerFragmentResult *)self outcome];
  v20 = [v16 initWithFragment:v14 events:events frameResults:frameResults thumbnails:thumbnails configuration:configuration outcome:outcome];

  return v20;
}

- (id)maxConfidenceEventForEventClass:(Class)class
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__7;
  v20 = __Block_byref_object_dispose__7;
  v21 = 0;
  frameResults = [(HMIVideoAnalyzerFragmentResult *)self frameResults];
  v6 = [frameResults na_flatMap:&__block_literal_global_6];
  events = [(HMIVideoAnalyzerFragmentResult *)self events];
  allObjects = [events allObjects];
  v9 = [v6 arrayByAddingObjectsFromArray:allObjects];

  v10 = [v9 na_flatMap:&__block_literal_global_9_3];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__HMIVideoAnalyzerFragmentResult_maxConfidenceEventForEventClass___block_invoke_3;
  v15[3] = &__block_descriptor_40_e31_B16__0__HMIVideoAnalyzerEvent_8lu32l8;
  v15[4] = class;
  v11 = [v10 na_filter:v15];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__HMIVideoAnalyzerFragmentResult_maxConfidenceEventForEventClass___block_invoke_4;
  v14[3] = &unk_278752EF8;
  v14[4] = &v16;
  [v11 na_each:v14];
  v12 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v12;
}

id __66__HMIVideoAnalyzerFragmentResult_maxConfidenceEventForEventClass___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 events];
  v3 = [v2 allObjects];

  return v3;
}

void __66__HMIVideoAnalyzerFragmentResult_maxConfidenceEventForEventClass___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(*(a1 + 32) + 8);
  v7 = *(v5 + 40);
  v6 = (v5 + 40);
  v14 = v4;
  if (v7)
  {
    v8 = [v4 confidence];
    [v8 value];
    v10 = v9;
    v11 = [*(*(*(a1 + 32) + 8) + 40) confidence];
    [v11 value];
    v13 = v12;

    if (v10 <= v13)
    {
      goto LABEL_5;
    }

    v6 = (*(*(a1 + 32) + 8) + 40);
  }

  objc_storeStrong(v6, a2);
LABEL_5:
}

- (id)maxConfidenceEvents
{
  v3 = +[HMIVideoAnalyzerEvent eventClasses];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__HMIVideoAnalyzerFragmentResult_maxConfidenceEvents__block_invoke;
  v6[3] = &unk_278752F20;
  v6[4] = self;
  v4 = [v3 na_map:v6];

  return v4;
}

- (id)attributeDescriptions
{
  v21[5] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  maxConfidenceEvents = [(HMIVideoAnalyzerFragmentResult *)self maxConfidenceEvents];
  allObjects = [maxConfidenceEvents allObjects];
  v4 = [v3 initWithName:@"Max Confidence Events" value:allObjects];
  v21[0] = v4;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  frameResults = [(HMIVideoAnalyzerFragmentResult *)self frameResults];
  v7 = [v5 initWithName:@"Frame Results" value:frameResults];
  v21[1] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  thumbnails = [(HMIVideoAnalyzerFragmentResult *)self thumbnails];
  v10 = [v8 initWithName:@"Thumbnails" value:thumbnails];
  v21[2] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  fragment = [(HMIVideoAnalyzerFragmentResult *)self fragment];
  v13 = [v11 initWithName:@"Fragment" value:fragment];
  v21[3] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  configuration = [(HMIVideoAnalyzerFragmentResult *)self configuration];
  v16 = [v14 initWithName:@"Configuration" value:configuration];
  v21[4] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:5];

  return v17;
}

- (HMIVideoAnalyzerFragmentResult)initWithCoder:(id)coder
{
  v33[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_fragment);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = MEMORY[0x277CBEB98];
  v33[0] = objc_opt_class();
  v33[1] = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  v10 = [v8 setWithArray:v9];
  v11 = NSStringFromSelector(sel_events);
  v12 = [coderCopy decodeObjectOfClasses:v10 forKey:v11];

  v13 = MEMORY[0x277CBEB98];
  v32[0] = objc_opt_class();
  v32[1] = objc_opt_class();
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  v15 = [v13 setWithArray:v14];
  v16 = NSStringFromSelector(sel_frameResults);
  v17 = [coderCopy decodeObjectOfClasses:v15 forKey:v16];

  v18 = MEMORY[0x277CBEB98];
  v31[0] = objc_opt_class();
  v31[1] = objc_opt_class();
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  v20 = [v18 setWithArray:v19];
  v21 = NSStringFromSelector(sel_thumbnails);
  v22 = [coderCopy decodeObjectOfClasses:v20 forKey:v21];

  v23 = objc_opt_class();
  v24 = NSStringFromSelector(sel_configuration);
  v25 = [coderCopy decodeObjectOfClass:v23 forKey:v24];

  v26 = objc_opt_class();
  v27 = NSStringFromSelector(sel_outcome);
  v28 = [coderCopy decodeObjectOfClass:v26 forKey:v27];

  v29 = [(HMIVideoAnalyzerFragmentResult *)self initWithFragment:v7 events:v12 frameResults:v17 thumbnails:v22 configuration:v25 outcome:v28];
  return v29;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  fragment = [(HMIVideoAnalyzerFragmentResult *)self fragment];
  v6 = NSStringFromSelector(sel_fragment);
  [coderCopy encodeObject:fragment forKey:v6];

  events = [(HMIVideoAnalyzerFragmentResult *)self events];
  v8 = NSStringFromSelector(sel_events);
  [coderCopy encodeObject:events forKey:v8];

  frameResults = [(HMIVideoAnalyzerFragmentResult *)self frameResults];
  v10 = NSStringFromSelector(sel_frameResults);
  [coderCopy encodeObject:frameResults forKey:v10];

  thumbnails = [(HMIVideoAnalyzerFragmentResult *)self thumbnails];
  v12 = NSStringFromSelector(sel_thumbnails);
  [coderCopy encodeObject:thumbnails forKey:v12];

  configuration = [(HMIVideoAnalyzerFragmentResult *)self configuration];
  v14 = NSStringFromSelector(sel_configuration);
  [coderCopy encodeObject:configuration forKey:v14];

  outcome = [(HMIVideoAnalyzerFragmentResult *)self outcome];
  v15 = NSStringFromSelector(sel_outcome);
  [coderCopy encodeObject:outcome forKey:v15];
}

@end