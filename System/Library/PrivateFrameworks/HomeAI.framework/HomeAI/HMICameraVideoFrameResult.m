@interface HMICameraVideoFrameResult
+ (id)_annotationScoresFromAnalyzerEvents:(id)a3;
+ (id)_detectionsFromAnalyzerEvents:(id)a3;
+ (id)_faceClassificationsFromAnalyzerEvents:(id)a3;
+ (int64_t)_eventsFromAnalyzerEvents:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGRect)regionOfInterest;
- (HMICameraVideoFrameResult)initWithCoder:(id)a3;
- (HMICameraVideoFrameResult)initWithFrame:(id)a3 events:(int64_t)a4 annotationScores:(id)a5 detections:(id)a6 regionOfInterest:(CGRect)a7 faceClassifications:(id)a8;
- (HMICameraVideoFrameResult)initWithFrame:(id)a3 regionOfInterest:(CGRect)a4 analyzerEvents:(id)a5;
- (id)maxConfidenceEventForEventClass:(Class)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMICameraVideoFrameResult

- (HMICameraVideoFrameResult)initWithFrame:(id)a3 events:(int64_t)a4 annotationScores:(id)a5 detections:(id)a6 regionOfInterest:(CGRect)a7 faceClassifications:(id)a8
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v18 = a3;
  v19 = a5;
  v20 = a6;
  v21 = a8;
  v25.receiver = self;
  v25.super_class = HMICameraVideoFrameResult;
  v22 = [(HMICameraVideoFrameResult *)&v25 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_frame, a3);
    v23->_events = a4;
    objc_storeStrong(&v23->_annotationScores, a5);
    objc_storeStrong(&v23->_detections, a6);
    v23->_regionOfInterest.origin.x = x;
    v23->_regionOfInterest.origin.y = y;
    v23->_regionOfInterest.size.width = width;
    v23->_regionOfInterest.size.height = height;
    objc_storeStrong(&v23->_faceClassifications, a8);
  }

  return v23;
}

- (HMICameraVideoFrameResult)initWithFrame:(id)a3 regionOfInterest:(CGRect)a4 analyzerEvents:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a3;
  v13 = a5;
  v23.receiver = self;
  v23.super_class = HMICameraVideoFrameResult;
  v14 = [(HMICameraVideoFrameResult *)&v23 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_frame, a3);
    v15->_regionOfInterest.origin.x = x;
    v15->_regionOfInterest.origin.y = y;
    v15->_regionOfInterest.size.width = width;
    v15->_regionOfInterest.size.height = height;
    objc_storeStrong(&v15->_analyzerEvents, a5);
    v15->_events = [objc_opt_class() _eventsFromAnalyzerEvents:v13];
    v16 = [objc_opt_class() _annotationScoresFromAnalyzerEvents:v13];
    annotationScores = v15->_annotationScores;
    v15->_annotationScores = v16;

    v18 = [objc_opt_class() _detectionsFromAnalyzerEvents:v13];
    detections = v15->_detections;
    v15->_detections = v18;

    v20 = [objc_opt_class() _faceClassificationsFromAnalyzerEvents:v13];
    faceClassifications = v15->_faceClassifications;
    v15->_faceClassifications = v20;
  }

  return v15;
}

+ (id)_faceClassificationsFromAnalyzerEvents:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = [MEMORY[0x277CBEB58] set];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__HMICameraVideoFrameResult__faceClassificationsFromAnalyzerEvents___block_invoke;
  v6[3] = &unk_278752EF8;
  v6[4] = &v7;
  [v3 na_each:v6];
  v4 = [v8[5] copy];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __68__HMICameraVideoFrameResult__faceClassificationsFromAnalyzerEvents___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v15;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 face];
    if (v6)
    {
      v7 = v6;
      v8 = [v5 face];
      v9 = [v8 faceRecognition];

      if (v9)
      {
        v10 = [v5 face];
        v11 = [v10 faceRecognition];

        v12 = *(*(*(a1 + 32) + 8) + 40);
        v13 = [v11 classifications];
        v14 = [v13 allObjects];
        [v12 addObjectsFromArray:v14];
      }
    }
  }
}

+ (int64_t)_eventsFromAnalyzerEvents:(id)a3
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HMICameraVideoFrameResult__eventsFromAnalyzerEvents___block_invoke;
  v7[3] = &unk_278753228;
  v4 = v3;
  v8 = v4;
  v9 = &v10;
  [v4 na_each:v7];
  v5 = v11[3];

  _Block_object_dispose(&v10, 8);
  return v5;
}

uint64_t __55__HMICameraVideoFrameResult__eventsFromAnalyzerEvents___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__HMICameraVideoFrameResult__eventsFromAnalyzerEvents___block_invoke_2;
  v3[3] = &unk_278752EF8;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 na_each:v3];
}

void __55__HMICameraVideoFrameResult__eventsFromAnalyzerEvents___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    v8 = 2;
LABEL_8:
    v7 = v9;
    goto LABEL_9;
  }

  v4 = objc_opt_class();
  if (v4 == objc_opt_class())
  {
    v8 = 8;
    goto LABEL_8;
  }

  v5 = objc_opt_class();
  v6 = v5 == objc_opt_class();
  v7 = v9;
  if (v6)
  {
    v8 = 4;
LABEL_9:
    *(*(*(a1 + 32) + 8) + 24) |= v8;
  }
}

+ (id)_annotationScoresFromAnalyzerEvents:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__HMICameraVideoFrameResult__annotationScoresFromAnalyzerEvents___block_invoke;
  v6[3] = &unk_278752EF8;
  v6[4] = &v7;
  [v3 na_each:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __65__HMICameraVideoFrameResult__annotationScoresFromAnalyzerEvents___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = a2;
  v5 = [v4 confidence];
  [v5 value];
  v13 = [v3 numberWithDouble:?];

  v6 = MEMORY[0x277CCABB0];
  v7 = objc_opt_class();

  v8 = [v6 numberWithInteger:HMIEventClassToCameraVideoAnalyzerEventType(v7)];
  v9 = [*(*(*(a1 + 32) + 8) + 40) objectForKey:v8];
  if (!v9 || ([v13 doubleValue], v11 = v10, objc_msgSend(v9, "doubleValue"), v11 > v12))
  {
    [*(*(*(a1 + 32) + 8) + 40) setObject:v13 forKey:v8];
  }
}

+ (id)_detectionsFromAnalyzerEvents:(id)a3
{
  v3 = [a3 na_map:&__block_literal_global_8];
  v4 = [v3 allObjects];

  return v4;
}

HMIObjectDetection *__59__HMICameraVideoFrameResult__detectionsFromAnalyzerEvents___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    v6 = 1;
  }

  else
  {
    v4 = objc_opt_class();
    if (v4 == objc_opt_class())
    {
      v6 = 3;
    }

    else
    {
      v5 = objc_opt_class();
      if (v5 == objc_opt_class())
      {
        v6 = 2;
      }

      else
      {
        v6 = 7;
      }
    }
  }

  v7 = [HMIObjectDetection alloc];
  v8 = [v2 confidence];
  [v8 value];
  v10 = v9;
  [v2 boundingBox];
  v15 = [(HMIObjectDetection *)v7 initWithLabelIndex:v6 confidence:0 boundingBox:0 yaw:v10 roll:v11, v12, v13, v14];

  return v15;
}

- (id)maxConfidenceEventForEventClass:(Class)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__2;
  v14 = __Block_byref_object_dispose__2;
  v15 = 0;
  v4 = [(HMICameraVideoFrameResult *)self analyzerEvents];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__HMICameraVideoFrameResult_maxConfidenceEventForEventClass___block_invoke;
  v9[3] = &__block_descriptor_40_e31_B16__0__HMIVideoAnalyzerEvent_8lu32l8;
  v9[4] = a3;
  v5 = [v4 na_filter:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__HMICameraVideoFrameResult_maxConfidenceEventForEventClass___block_invoke_2;
  v8[3] = &unk_278752EF8;
  v8[4] = &v10;
  [v5 na_each:v8];

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __61__HMICameraVideoFrameResult_maxConfidenceEventForEventClass___block_invoke_2(uint64_t a1, void *a2)
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

- (CGRect)regionOfInterest
{
  objc_copyStruct(v6, &self->_regionOfInterest, 32, 1, 0);
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

- (HMICameraVideoFrameResult)initWithCoder:(id)a3
{
  v20[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMICVFR.f"];
  [v4 decodeRectForKey:@"HMICVFR.roi"];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = MEMORY[0x277CBEB98];
  v20[0] = objc_opt_class();
  v20[1] = objc_opt_class();
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v16 = [v14 setWithArray:v15];
  v17 = [v4 decodeObjectOfClasses:v16 forKey:@"HMICVFR.ae"];

  v18 = [(HMICameraVideoFrameResult *)self initWithFrame:v5 regionOfInterest:v17 analyzerEvents:v7, v9, v11, v13];
  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMICameraVideoFrameResult *)self frame];
  [v4 encodeObject:v5 forKey:@"HMICVFR.f"];

  [(HMICameraVideoFrameResult *)self regionOfInterest];
  [v4 encodeRect:@"HMICVFR.roi" forKey:?];
  v6 = [(HMICameraVideoFrameResult *)self analyzerEvents];
  [v4 encodeObject:v6 forKey:@"HMICVFR.ae"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HMICameraVideoFrameResult *)self frame];
      v7 = [(HMICameraVideoFrameResult *)v5 frame];
      v8 = [v6 isEqual:v7];

      v9 = [(HMICameraVideoFrameResult *)self analyzerEvents];
      v10 = [(HMICameraVideoFrameResult *)v5 analyzerEvents];

      v11 = v8 & [v9 isEqualToSet:v10];
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(HMICameraVideoFrameResult *)self frame];
  v4 = [v3 hash];
  v5 = [(HMICameraVideoFrameResult *)self analyzerEvents];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end