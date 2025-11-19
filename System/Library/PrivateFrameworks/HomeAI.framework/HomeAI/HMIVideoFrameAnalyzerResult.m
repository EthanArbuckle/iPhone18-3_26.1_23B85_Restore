@interface HMIVideoFrameAnalyzerResult
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)time;
- (CGRect)regionOfInterest;
- (HMIVideoFrameAnalyzerResult)initWithFrame:(id)a3 events:(id)a4 backgroundEvents:(id)a5 backgroundTimeStamp:(id *)a6 regionOfInterest:(CGRect)a7 motionDetections:(id)a8;
- (NSString)description;
@end

@implementation HMIVideoFrameAnalyzerResult

- (HMIVideoFrameAnalyzerResult)initWithFrame:(id)a3 events:(id)a4 backgroundEvents:(id)a5 backgroundTimeStamp:(id *)a6 regionOfInterest:(CGRect)a7 motionDetections:(id)a8
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a8;
  v26.receiver = self;
  v26.super_class = HMIVideoFrameAnalyzerResult;
  v22 = [(HMIVideoFrameAnalyzerResult *)&v26 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_frame, a3);
    objc_storeStrong(&v23->_events, a4);
    objc_storeStrong(&v23->_backgroundEvents, a5);
    var3 = a6->var3;
    *&v23->_backgroundTimeStamp.value = *&a6->var0;
    v23->_backgroundTimeStamp.epoch = var3;
    v23->_regionOfInterest.origin.x = x;
    v23->_regionOfInterest.origin.y = y;
    v23->_regionOfInterest.size.width = width;
    v23->_regionOfInterest.size.height = height;
    objc_storeStrong(&v23->_motionDetections, a8);
  }

  return v23;
}

- (NSString)description
{
  v3 = [(HMIVideoFrameAnalyzerResult *)self events];
  v4 = [v3 na_map:&__block_literal_global_13];

  v5 = [(HMIVideoFrameAnalyzerResult *)self frame];
  v6 = v5;
  if (v5)
  {
    [v5 presentationTimeStamp];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v7 = CMTimeCopyDescription(0, &time);

  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = [v4 allObjects];
  v11 = [v10 componentsJoinedByString:{@", "}];
  [(HMIVideoFrameAnalyzerResult *)self regionOfInterest];
  v16 = HMICGRectDescription(v12, v13, v14, v15);
  v17 = [v8 stringWithFormat:@"<%@: %p> timeStamp: %@, detections: [%@], regionOfInterest: %@", v9, self, v7, v11, v16];

  return v17;
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