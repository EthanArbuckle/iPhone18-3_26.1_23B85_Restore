@interface HMIVideoAnalyzerFrameResult
+ (id)combineFrameResults:(id)a3 withResults:(id)a4;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)time;
- (CGRect)regionOfInterest;
- (HMIVideoAnalyzerFrameResult)initWithCoder:(id)a3;
- (HMIVideoAnalyzerFrameResult)initWithFrame:(id)a3 events:(id)a4 regionOfInterest:(CGRect)a5;
- (id)attributeDescriptions;
- (id)maxConfidenceEventForEventClass:(Class)a3;
- (id)maxConfidenceEvents;
- (id)redactedCopy;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMIVideoAnalyzerFrameResult

- (HMIVideoAnalyzerFrameResult)initWithFrame:(id)a3 events:(id)a4 regionOfInterest:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = a3;
  v13 = a4;
  if (v12)
  {
    v14 = v13;
    v20.receiver = self;
    v20.super_class = HMIVideoAnalyzerFrameResult;
    v15 = [(HMIVideoAnalyzerFrameResult *)&v20 init];
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(&v15->_frame, a3);
      objc_storeStrong(&v16->_events, a4);
      v16->_regionOfInterest.origin.x = x;
      v16->_regionOfInterest.origin.y = y;
      v16->_regionOfInterest.size.width = width;
      v16->_regionOfInterest.size.height = height;
    }

    return v16;
  }

  else
  {
    v18 = [HMIVideoAnalyzerFrameResult initWithFrame:events:regionOfInterest:];
    return [(HMIVideoAnalyzerFrameResult *)v18 redactedCopy];
  }
}

- (id)redactedCopy
{
  v3 = objc_alloc(objc_opt_class());
  v4 = [(HMIVideoAnalyzerFrameResult *)self frame];
  v5 = [v4 redactedCopy];
  v6 = [(HMIVideoAnalyzerFrameResult *)self events];
  [(HMIVideoAnalyzerFrameResult *)self regionOfInterest];
  v7 = [v3 initWithFrame:v5 events:v6 regionOfInterest:?];

  return v7;
}

- (id)attributeDescriptions
{
  v14[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMIVideoAnalyzerFrameResult *)self frame];
  v5 = [v3 initWithName:@"Frame" value:v4];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMIVideoAnalyzerFrameResult *)self events];
  v8 = [v6 initWithName:@"Events" value:v7];
  v14[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMIVideoAnalyzerFrameResult *)self regionOfInterest];
  v10 = NSStringFromRect(v16);
  v11 = [v9 initWithName:@"Region of Interest" value:v10];
  v14[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];

  return v12;
}

- (id)maxConfidenceEventForEventClass:(Class)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  v4 = [(HMIVideoAnalyzerFrameResult *)self events];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__HMIVideoAnalyzerFrameResult_maxConfidenceEventForEventClass___block_invoke;
  v9[3] = &__block_descriptor_40_e31_B16__0__HMIVideoAnalyzerEvent_8lu32l8;
  v9[4] = a3;
  v5 = [v4 na_filter:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__HMIVideoAnalyzerFrameResult_maxConfidenceEventForEventClass___block_invoke_2;
  v8[3] = &unk_278752EF8;
  v8[4] = &v10;
  [v5 na_each:v8];

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __63__HMIVideoAnalyzerFrameResult_maxConfidenceEventForEventClass___block_invoke_2(uint64_t a1, void *a2)
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
  v6[2] = __50__HMIVideoAnalyzerFrameResult_maxConfidenceEvents__block_invoke;
  v6[3] = &unk_278752F20;
  v6[4] = self;
  v4 = [v3 na_map:v6];

  return v4;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)time
{
  result = self->_frame;
  if (result)
  {
    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)result presentationTimeStamp];
  }

  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  return result;
}

+ (id)combineFrameResults:(id)a3 withResults:(id)a4
{
  v4 = [a3 arrayByAddingObjectsFromArray:a4];
  v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_6];
  v6 = [v5 mutableCopy];

  if ([v6 count] >= 2)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = [v6 objectAtIndexedSubscript:{v7, v32.value, *&v32.timescale, v32.epoch, time1.value, *&time1.timescale, time1.epoch}];
      v10 = [v6 objectAtIndexedSubscript:v8];
      v11 = v10;
      if (v9)
      {
        [v9 time];
        if (!v11)
        {
          goto LABEL_7;
        }
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
        if (!v10)
        {
LABEL_7:
          memset(&v32, 0, sizeof(v32));
          goto LABEL_8;
        }
      }

      [v11 time];
LABEL_8:
      if (CMTimeCompare(&time1, &v32))
      {
        v7 = v8;
      }

      else
      {
        v12 = [HMIVideoAnalyzerFrameResult alloc];
        v13 = [v9 frame];
        v14 = [v9 events];
        v15 = [v11 events];
        v16 = [v14 setByAddingObjectsFromSet:v15];
        [v9 regionOfInterest];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        [v11 regionOfInterest];
        v37.origin.x = v25;
        v37.origin.y = v26;
        v37.size.width = v27;
        v37.size.height = v28;
        v35.origin.x = v18;
        v35.origin.y = v20;
        v35.size.width = v22;
        v35.size.height = v24;
        v36 = CGRectUnion(v35, v37);
        v29 = [(HMIVideoAnalyzerFrameResult *)v12 initWithFrame:v13 events:v16 regionOfInterest:v36.origin.x, v36.origin.y, v36.size.width, v36.size.height];

        [v6 replaceObjectAtIndex:v7 withObject:v29];
        [v6 removeObjectAtIndex:v8];
      }

      v8 = v7 + 1;
    }

    while (v7 + 1 < [v6 count]);
  }

  v30 = [v6 copy];

  return v30;
}

BOOL __63__HMIVideoAnalyzerFrameResult_combineFrameResults_withResults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (!v4)
  {
    memset(&time1, 0, sizeof(time1));
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    memset(&v9, 0, sizeof(v9));
    goto LABEL_6;
  }

  [v4 time];
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  [v6 time];
LABEL_6:
  v7 = CMTimeCompare(&time1, &v9) > 0;

  return v7;
}

- (HMIVideoAnalyzerFrameResult)initWithCoder:(id)a3
{
  v24[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_frame);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = MEMORY[0x277CBEB98];
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v10 = [v8 setWithArray:v9];
  v11 = NSStringFromSelector(sel_events);
  v12 = [v4 decodeObjectOfClasses:v10 forKey:v11];

  v13 = NSStringFromSelector(sel_regionOfInterest);
  [v4 decodeRectForKey:v13];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [(HMIVideoAnalyzerFrameResult *)self initWithFrame:v7 events:v12 regionOfInterest:v15, v17, v19, v21];
  return v22;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMIVideoAnalyzerFrameResult *)self frame];
  v6 = NSStringFromSelector(sel_frame);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(HMIVideoAnalyzerFrameResult *)self events];
  v8 = NSStringFromSelector(sel_events);
  [v4 encodeObject:v7 forKey:v8];

  [(HMIVideoAnalyzerFrameResult *)self regionOfInterest];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = NSStringFromSelector(sel_regionOfInterest);
  [v4 encodeRect:v17 forKey:{v10, v12, v14, v16}];
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

@end