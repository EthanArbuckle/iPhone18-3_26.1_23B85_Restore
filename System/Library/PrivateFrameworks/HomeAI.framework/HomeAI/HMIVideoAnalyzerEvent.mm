@interface HMIVideoAnalyzerEvent
+ (Class)eventClassForShortName:(id)name;
+ (NSArray)eventClassesArray;
+ (NSSet)eventClasses;
+ (id)defaultConfidenceThreshold:(Class)threshold confidenceLevel:(int64_t)level;
+ (id)defaultConfidenceThresholdsFeedback;
+ (id)defaultConfidenceThresholdsHigh;
+ (id)defaultConfidenceThresholdsMedium;
+ (id)eventConfidenceThresholdsHigh;
+ (id)eventConfidenceThresholdsMedium;
+ (id)eventsWithContentsOfFile:(id)file;
+ (id)rgbColorCodeForEventClass:(Class)class;
+ (id)shortNameForEventClass:(Class)class;
- (BOOL)isEqual:(id)equal;
- (CGRect)boundingBox;
- (HMIVideoAnalyzerEvent)initWithCoder:(id)coder;
- (HMIVideoAnalyzerEvent)initWithConfidence:(id)confidence boundingBox:(CGRect)box userInfo:(id)info;
- (NSArray)allEvents;
- (id)attributeDescriptions;
- (id)shortDescription;
- (int64_t)confidenceLevel;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMIVideoAnalyzerEvent

+ (NSArray)eventClassesArray
{
  if (eventClassesArray_onceToken != -1)
  {
    +[HMIVideoAnalyzerEvent eventClassesArray];
  }

  v3 = eventClassesArray_classes;

  return v3;
}

void __42__HMIVideoAnalyzerEvent_eventClassesArray__block_invoke()
{
  v2[7] = *MEMORY[0x277D85DE8];
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  v2[2] = objc_opt_class();
  v2[3] = objc_opt_class();
  v2[4] = objc_opt_class();
  v2[5] = objc_opt_class();
  v2[6] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:7];
  v1 = eventClassesArray_classes;
  eventClassesArray_classes = v0;
}

+ (NSSet)eventClasses
{
  v2 = MEMORY[0x277CBEB98];
  eventClassesArray = [self eventClassesArray];
  v4 = [v2 setWithArray:eventClassesArray];

  return v4;
}

- (HMIVideoAnalyzerEvent)initWithConfidence:(id)confidence boundingBox:(CGRect)box userInfo:(id)info
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  confidenceCopy = confidence;
  infoCopy = info;
  if (confidenceCopy)
  {
    v14 = infoCopy;
    v20.receiver = self;
    v20.super_class = HMIVideoAnalyzerEvent;
    v15 = [(HMIVideoAnalyzerEvent *)&v20 init];
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(&v15->_confidence, confidence);
      v16->_boundingBox.origin.x = x;
      v16->_boundingBox.origin.y = y;
      v16->_boundingBox.size.width = width;
      v16->_boundingBox.size.height = height;
      objc_storeStrong(&v16->_userInfo, info);
    }

    return v16;
  }

  else
  {
    v18 = [HMIVideoAnalyzerEvent initWithConfidence:boundingBox:userInfo:];
    return [(HMIVideoAnalyzerEvent *)v18 allEvents];
  }
}

- (NSArray)allEvents
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = self;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)attributeDescriptions
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = MEMORY[0x277CCABB0];
  confidence = [(HMIVideoAnalyzerEvent *)self confidence];
  [confidence value];
  v6 = [v4 numberWithDouble:?];
  v7 = [v3 initWithName:@"Confidence" value:v6];
  v13[0] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMIVideoAnalyzerEvent *)self boundingBox];
  v9 = NSStringFromRect(v15);
  v10 = [v8 initWithName:@"Bounding Box" value:v9];
  v13[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

  return v11;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [HMIVideoAnalyzerEvent shortNameForEventClass:objc_opt_class()];
  [(HMIVideoAnalyzerEvent *)self boundingBox];
  v9 = HMICGRectDescription(v5, v6, v7, v8);
  confidence = [(HMIVideoAnalyzerEvent *)self confidence];
  shortDescription = [confidence shortDescription];
  v12 = [v3 stringWithFormat:@"P(%@|[%@])=%@", v4, v9, shortDescription];

  return v12;
}

- (int64_t)confidenceLevel
{
  confidence = [(HMIVideoAnalyzerEvent *)self confidence];
  level = [confidence level];

  return level;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v25) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      confidence = [(HMIVideoAnalyzerEvent *)self confidence];
      confidence2 = [(HMIVideoAnalyzerEvent *)v5 confidence];
      v8 = HMFEqualObjects();

      [(HMIVideoAnalyzerEvent *)self boundingBox];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      [(HMIVideoAnalyzerEvent *)v5 boundingBox];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      v27.origin.x = v10;
      v27.origin.y = v12;
      v27.size.width = v14;
      v27.size.height = v16;
      v28.origin.x = v18;
      v28.origin.y = v20;
      v28.size.width = v22;
      v28.size.height = v24;
      v25 = v8 & CGRectEqualToRect(v27, v28);
    }

    else
    {
      LOBYTE(v25) = 0;
    }
  }

  return v25;
}

- (unint64_t)hash
{
  confidence = [(HMIVideoAnalyzerEvent *)self confidence];
  v4 = [confidence hash];
  [(HMIVideoAnalyzerEvent *)self boundingBox];
  v12 = HMIHashCGRect(v5, v6, v7, v8, v9, v10, v11);

  return v12 ^ v4;
}

- (HMIVideoAnalyzerEvent)initWithCoder:(id)coder
{
  v24[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_confidence);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = NSStringFromSelector(sel_boundingBox);
  [coderCopy decodeRectForKey:v8];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = MEMORY[0x277CBEB98];
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v19 = [v17 setWithArray:v18];
  v20 = NSStringFromSelector(sel_userInfo);
  v21 = [coderCopy decodeObjectOfClasses:v19 forKey:v20];

  v22 = [(HMIVideoAnalyzerEvent *)self initWithConfidence:v7 boundingBox:v21 userInfo:v10, v12, v14, v16];
  return v22;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  confidence = [(HMIVideoAnalyzerEvent *)self confidence];
  v6 = NSStringFromSelector(sel_confidence);
  [coderCopy encodeObject:confidence forKey:v6];

  [(HMIVideoAnalyzerEvent *)self boundingBox];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = NSStringFromSelector(sel_boundingBox);
  [coderCopy encodeRect:v15 forKey:{v8, v10, v12, v14}];

  userInfo = [(HMIVideoAnalyzerEvent *)self userInfo];
  v16 = NSStringFromSelector(sel_userInfo);
  [coderCopy encodeObject:userInfo forKey:v16];
}

+ (id)eventsWithContentsOfFile:(id)file
{
  v31 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [defaultManager fileExistsAtPath:fileCopy];

  if (v6)
  {
    v22 = 0;
    v7 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:fileCopy options:0 error:&v22];
    v8 = v22;
    if (v7)
    {
      v23[0] = @"Pet";
      v24[0] = objc_opt_class();
      v23[1] = @"Package";
      v24[1] = objc_opt_class();
      v23[2] = @"Person";
      v24[2] = objc_opt_class();
      v23[3] = @"Vehicle";
      v24[3] = objc_opt_class();
      v23[4] = @"Face";
      v24[4] = objc_opt_class();
      v23[5] = @"Torso";
      v24[5] = objc_opt_class();
      v23[6] = @"Motion";
      v24[6] = objc_opt_class();
      v23[7] = @"Confidence";
      v24[7] = objc_opt_class();
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:8];
      v10 = MEMORY[0x277CBEB98];
      v11 = [HMIJSONUnarchiver objectWithJSONData:v7 classMap:v9];
      v12 = [v10 setWithArray:v11];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543874;
        v26 = v20;
        v27 = 2112;
        v28 = fileCopy;
        v29 = 2112;
        v30 = v8;
        _os_log_impl(&dword_22D12F000, v19, OS_LOG_TYPE_ERROR, "%{public}@Cannot read events from file %@, error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
      v12 = 0;
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v16;
      v27 = 2112;
      v28 = fileCopy;
      _os_log_impl(&dword_22D12F000, v15, OS_LOG_TYPE_ERROR, "%{public}@Events file %@ does not exist.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  return v12;
}

+ (id)shortNameForEventClass:(Class)class
{
  if (shortNameForEventClass__onceToken != -1)
  {
    +[HMIVideoAnalyzerEvent shortNameForEventClass:];
  }

  v4 = shortNameForEventClass__map;

  return [v4 objectForKeyedSubscript:class];
}

void __48__HMIVideoAnalyzerEvent_shortNameForEventClass___block_invoke()
{
  v3[8] = *MEMORY[0x277D85DE8];
  v2[0] = objc_opt_class();
  v3[0] = @"Event";
  v2[1] = objc_opt_class();
  v3[1] = @"Motion";
  v2[2] = objc_opt_class();
  v3[2] = @"Person";
  v2[3] = objc_opt_class();
  v3[3] = @"Pet";
  v2[4] = objc_opt_class();
  v3[4] = @"Package";
  v2[5] = objc_opt_class();
  v3[5] = @"Vehicle";
  v2[6] = objc_opt_class();
  v3[6] = @"Face";
  v2[7] = objc_opt_class();
  v3[7] = @"Torso";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:8];
  v1 = shortNameForEventClass__map;
  shortNameForEventClass__map = v0;
}

+ (Class)eventClassForShortName:(id)name
{
  v3 = eventClassForShortName__onceToken;
  nameCopy = name;
  if (v3 != -1)
  {
    +[HMIVideoAnalyzerEvent eventClassForShortName:];
  }

  v5 = eventClassForShortName__map;
  lowercaseString = [nameCopy lowercaseString];

  v7 = [v5 objectForKeyedSubscript:lowercaseString];

  return v7;
}

void __48__HMIVideoAnalyzerEvent_eventClassForShortName___block_invoke()
{
  v3[8] = *MEMORY[0x277D85DE8];
  v2[0] = @"event";
  v3[0] = objc_opt_class();
  v2[1] = @"motion";
  v3[1] = objc_opt_class();
  v2[2] = @"person";
  v3[2] = objc_opt_class();
  v2[3] = @"pet";
  v3[3] = objc_opt_class();
  v2[4] = @"vehicle";
  v3[4] = objc_opt_class();
  v2[5] = @"package";
  v3[5] = objc_opt_class();
  v2[6] = @"face";
  v3[6] = objc_opt_class();
  v2[7] = @"torso";
  v3[7] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:8];
  v1 = eventClassForShortName__map;
  eventClassForShortName__map = v0;
}

+ (id)rgbColorCodeForEventClass:(Class)class
{
  if (rgbColorCodeForEventClass__onceToken != -1)
  {
    +[HMIVideoAnalyzerEvent rgbColorCodeForEventClass:];
  }

  v4 = rgbColorCodeForEventClass__map;

  return [v4 objectForKeyedSubscript:class];
}

void __51__HMIVideoAnalyzerEvent_rgbColorCodeForEventClass___block_invoke()
{
  v3[7] = *MEMORY[0x277D85DE8];
  v2[0] = objc_opt_class();
  v3[0] = @"#D62728";
  v2[1] = objc_opt_class();
  v3[1] = @"#2CA02C";
  v2[2] = objc_opt_class();
  v3[2] = @"#1F77B4";
  v2[3] = objc_opt_class();
  v3[3] = @"#9467BD";
  v2[4] = objc_opt_class();
  v3[4] = @"#FF7F0E";
  v2[5] = objc_opt_class();
  v3[5] = @"#8C564B";
  v2[6] = objc_opt_class();
  v3[6] = @"#7F7F7F";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:7];
  v1 = rgbColorCodeForEventClass__map;
  rgbColorCodeForEventClass__map = v0;
}

+ (id)defaultConfidenceThresholdsFeedback
{
  if (defaultConfidenceThresholdsFeedback_onceToken != -1)
  {
    +[HMIVideoAnalyzerEvent defaultConfidenceThresholdsFeedback];
  }

  v3 = defaultConfidenceThresholdsFeedback_confidenceThresholdsFeedback;

  return v3;
}

void __60__HMIVideoAnalyzerEvent_defaultConfidenceThresholdsFeedback__block_invoke()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v3[0] = &unk_2840758C8;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  v1 = defaultConfidenceThresholdsFeedback_confidenceThresholdsFeedback;
  defaultConfidenceThresholdsFeedback_confidenceThresholdsFeedback = v0;
}

+ (id)defaultConfidenceThresholdsMedium
{
  if (defaultConfidenceThresholdsMedium_onceToken != -1)
  {
    +[HMIVideoAnalyzerEvent defaultConfidenceThresholdsMedium];
  }

  v3 = defaultConfidenceThresholdsMedium_confidenceThresholdsMedium;

  return v3;
}

void __58__HMIVideoAnalyzerEvent_defaultConfidenceThresholdsMedium__block_invoke()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v2[0] = objc_opt_class();
  v3[0] = &unk_2840758D8;
  v2[1] = objc_opt_class();
  v3[1] = &unk_2840758E8;
  v2[2] = objc_opt_class();
  v3[2] = &unk_2840758F8;
  v2[3] = objc_opt_class();
  v3[3] = &unk_284075908;
  v2[4] = objc_opt_class();
  v3[4] = &unk_284075918;
  v2[5] = objc_opt_class();
  v3[5] = &unk_284075928;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:6];
  v1 = defaultConfidenceThresholdsMedium_confidenceThresholdsMedium;
  defaultConfidenceThresholdsMedium_confidenceThresholdsMedium = v0;
}

+ (id)defaultConfidenceThresholdsHigh
{
  if (defaultConfidenceThresholdsHigh_onceToken != -1)
  {
    +[HMIVideoAnalyzerEvent defaultConfidenceThresholdsHigh];
  }

  v3 = defaultConfidenceThresholdsHigh_confidenceThresholdsHigh;

  return v3;
}

void __56__HMIVideoAnalyzerEvent_defaultConfidenceThresholdsHigh__block_invoke()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v2[0] = objc_opt_class();
  v3[0] = &unk_284075938;
  v2[1] = objc_opt_class();
  v3[1] = &unk_284075948;
  v2[2] = objc_opt_class();
  v3[2] = &unk_284075958;
  v2[3] = objc_opt_class();
  v3[3] = &unk_284075908;
  v2[4] = objc_opt_class();
  v3[4] = &unk_284075918;
  v2[5] = objc_opt_class();
  v3[5] = &unk_284075928;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:6];
  v1 = defaultConfidenceThresholdsHigh_confidenceThresholdsHigh;
  defaultConfidenceThresholdsHigh_confidenceThresholdsHigh = v0;
}

+ (id)defaultConfidenceThreshold:(Class)threshold confidenceLevel:(int64_t)level
{
  if (level == 1)
  {
    defaultConfidenceThresholdsMedium = [self defaultConfidenceThresholdsMedium];
    goto LABEL_5;
  }

  if (level == 2)
  {
    defaultConfidenceThresholdsMedium = [self defaultConfidenceThresholdsHigh];
LABEL_5:
    v6 = defaultConfidenceThresholdsMedium;
    v7 = [defaultConfidenceThresholdsMedium objectForKeyedSubscript:threshold];

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

+ (id)eventConfidenceThresholdsMedium
{
  if (eventConfidenceThresholdsMedium_onceToken != -1)
  {
    +[HMIVideoAnalyzerEvent eventConfidenceThresholdsMedium];
  }

  v3 = [eventConfidenceThresholdsMedium_eventClassToConfidenceKey na_dictionaryByMappingValues:&__block_literal_global_139];
  defaultConfidenceThresholdsMedium = [self defaultConfidenceThresholdsMedium];
  v5 = [defaultConfidenceThresholdsMedium mutableCopy];

  [v5 addEntriesFromDictionary:v3];

  return v5;
}

void __56__HMIVideoAnalyzerEvent_eventConfidenceThresholdsMedium__block_invoke()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v2[0] = objc_opt_class();
  v3[0] = @"confidenceThresholdPersonMedium";
  v2[1] = objc_opt_class();
  v3[1] = @"confidenceThresholdPetMedium";
  v2[2] = objc_opt_class();
  v3[2] = @"confidenceThresholdVehicleMedium";
  v2[3] = objc_opt_class();
  v3[3] = @"confidenceThresholdFaceMedium";
  v2[4] = objc_opt_class();
  v3[4] = @"confidenceThresholdTorsoMedium";
  v2[5] = objc_opt_class();
  v3[5] = @"confidenceThresholdPackageMedium";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:6];
  v1 = eventConfidenceThresholdsMedium_eventClassToConfidenceKey;
  eventConfidenceThresholdsMedium_eventClassToConfidenceKey = v0;
}

id __56__HMIVideoAnalyzerEvent_eventConfidenceThresholdsMedium__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = +[HMIPreference sharedInstance];
  v5 = [v4 numberPreferenceForKey:v3];

  return v5;
}

+ (id)eventConfidenceThresholdsHigh
{
  if (eventConfidenceThresholdsHigh_onceToken != -1)
  {
    +[HMIVideoAnalyzerEvent eventConfidenceThresholdsHigh];
  }

  v3 = [eventConfidenceThresholdsHigh_eventClassToConfidenceKey na_dictionaryByMappingValues:&__block_literal_global_144];
  defaultConfidenceThresholdsHigh = [self defaultConfidenceThresholdsHigh];
  v5 = [defaultConfidenceThresholdsHigh mutableCopy];

  [v5 addEntriesFromDictionary:v3];

  return v5;
}

void __54__HMIVideoAnalyzerEvent_eventConfidenceThresholdsHigh__block_invoke()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v2[0] = objc_opt_class();
  v3[0] = @"confidenceThresholdPersonHigh";
  v2[1] = objc_opt_class();
  v3[1] = @"confidenceThresholdPetHigh";
  v2[2] = objc_opt_class();
  v3[2] = @"confidenceThresholdVehicleHigh";
  v2[3] = objc_opt_class();
  v3[3] = @"confidenceThresholdFaceHigh";
  v2[4] = objc_opt_class();
  v3[4] = @"confidenceThresholdTorsoHigh";
  v2[5] = objc_opt_class();
  v3[5] = @"confidenceThresholdPackageHigh";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:6];
  v1 = eventConfidenceThresholdsHigh_eventClassToConfidenceKey;
  eventConfidenceThresholdsHigh_eventClassToConfidenceKey = v0;
}

id __54__HMIVideoAnalyzerEvent_eventConfidenceThresholdsHigh__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = +[HMIPreference sharedInstance];
  v5 = [v4 numberPreferenceForKey:v3];

  return v5;
}

- (CGRect)boundingBox
{
  objc_copyStruct(v6, &self->_boundingBox, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end