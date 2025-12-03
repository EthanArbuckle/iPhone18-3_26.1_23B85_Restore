@interface DetectedROI
- ($90F8316DFF8C7E624C13ADF498D66361)des;
- (CGRect)LSRoi;
- (CGRect)roi;
- (DetectedROI)initWithTrackingSessionId:(unint64_t)id roiId:(int64_t)roiId andRoi:(CGRect)roi;
- (DetectedROI)initWithTrackingSessionId:(unint64_t)id roiId:(int64_t)roiId roi:(CGRect)roi LSRoi:(CGRect)sRoi confidence:(float)confidence;
- (DetectedROI)initWithTrackingSessionId:(unint64_t)id roiId:(int64_t)roiId roi:(CGRect)roi LSRoi:(CGRect)sRoi descriptor:(id *)descriptor propertiesForPostProcPipeVisualization:(id *)visualization;
- (DetectedROI)initWithTrackingSessionId:(unint64_t)id roiId:(int64_t)roiId roi:(CGRect)roi trackId:(int)trackId;
@end

@implementation DetectedROI

- (DetectedROI)initWithTrackingSessionId:(unint64_t)id roiId:(int64_t)roiId roi:(CGRect)roi trackId:(int)trackId
{
  result = [(DetectedROI *)self initWithTrackingSessionId:id roiId:roiId andRoi:roi.origin.x, roi.origin.y, roi.size.width, roi.size.height];
  result->_trackID = trackId;
  return result;
}

- (CGRect)roi
{
  x = self->_roi.origin.x;
  y = self->_roi.origin.y;
  width = self->_roi.size.width;
  height = self->_roi.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)LSRoi
{
  x = self->_LSRoi.origin.x;
  y = self->_LSRoi.origin.y;
  width = self->_LSRoi.size.width;
  height = self->_LSRoi.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- ($90F8316DFF8C7E624C13ADF498D66361)des
{
  v3 = *&self[10].var4;
  *&retstr[4].var0 = *&self[10].var0;
  *&retstr[4].var4 = v3;
  v4 = *&self[12].var0;
  *&retstr[5].var2 = *&self[11].var2;
  *&retstr[6].var0 = v4;
  v5 = *&self[8].var0;
  *&retstr[1].var2 = *&self[7].var2;
  *&retstr[2].var0 = v5;
  v6 = *&self[9].var2;
  *&retstr[2].var4 = *&self[8].var4;
  *&retstr[3].var2 = v6;
  v7 = *&self[6].var4;
  *&retstr->var0 = *&self[6].var0;
  *&retstr->var4 = v7;
  return self;
}

- (DetectedROI)initWithTrackingSessionId:(unint64_t)id roiId:(int64_t)roiId andRoi:(CGRect)roi
{
  height = roi.size.height;
  width = roi.size.width;
  y = roi.origin.y;
  x = roi.origin.x;
  v18.receiver = self;
  v18.super_class = DetectedROI;
  v11 = [(DetectedROI *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_trackSessionId = id;
    v11->_roiId = roiId;
    v11->_roi.origin.x = x;
    v11->_roi.origin.y = y;
    v11->_roi.size.width = width;
    v11->_roi.size.height = height;
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    MidX = CGRectGetMidX(v19);
    MidY = CGRectGetMidY(v12->_roi);
    v12->_centerPoint.x = MidX;
    v12->_centerPoint.y = MidY;
    v15 = *(MEMORY[0x277CBF398] + 16);
    v12->_LSRoi.origin = *MEMORY[0x277CBF398];
    v12->_LSRoi.size = v15;
    v16 = v12;
  }

  return v12;
}

- (DetectedROI)initWithTrackingSessionId:(unint64_t)id roiId:(int64_t)roiId roi:(CGRect)roi LSRoi:(CGRect)sRoi descriptor:(id *)descriptor propertiesForPostProcPipeVisualization:(id *)visualization
{
  v14 = OUTLINED_FUNCTION_1_28(self, a2);
  v15 = v14;
  if (v14)
  {
    v14->_LSRoi.origin.x = v11;
    v14->_LSRoi.origin.y = v10;
    v14->_LSRoi.size.width = v9;
    v14->_LSRoi.size.height = v8;
    memcpy(&v14[1], descriptor, 0xA0uLL);
    v15->_trackID = visualization->var0;
    v15->_isTracked = visualization->var1;
    v15->_trackedCnt = visualization->var3;
    v15->_isPredictedFromPast = visualization->var2;
    *v15->_trajectoryFromPast = *&visualization[1].var0;
    v15->_predictedFromPastCnt = visualization->var4;
    v15->_lowSaliencyCnt = visualization->var5;
    v15->_isTrajectoryPruningPassed = visualization[1].var3;
    v15->_isReflectedLS = BYTE1(visualization[1].var3);
    v16 = v15;
  }

  return v15;
}

- (DetectedROI)initWithTrackingSessionId:(unint64_t)id roiId:(int64_t)roiId roi:(CGRect)roi LSRoi:(CGRect)sRoi confidence:(float)confidence
{
  v11 = OUTLINED_FUNCTION_1_28(self, a2);
  v12 = v11;
  if (v11)
  {
    *(v11 + 112) = v10;
    *(v11 + 120) = v9;
    *(v11 + 128) = v8;
    *(v11 + 136) = v7;
    *(v11 + 28) = confidence;
    v13 = v11;
  }

  return v12;
}

@end