@interface JFXAnimojiPlaybackPreprocessedData
- ($AC64C642040120CEEAD84DEEACA9A5CE)mediaTimeRangeForData;
- (id)initForRenderTime:(id *)time usingDataFromMediaTimeRange:(id *)range arFrame:(id)frame avDepthData:(id)data animojiBlendShapes:(id)shapes;
@end

@implementation JFXAnimojiPlaybackPreprocessedData

- (id)initForRenderTime:(id *)time usingDataFromMediaTimeRange:(id *)range arFrame:(id)frame avDepthData:(id)data animojiBlendShapes:(id)shapes
{
  frameCopy = frame;
  dataCopy = data;
  shapesCopy = shapes;
  v24.receiver = self;
  v24.super_class = JFXAnimojiPlaybackPreprocessedData;
  v16 = [(JFXAnimojiPlaybackPreprocessedData *)&v24 init];
  v17 = v16;
  if (v16)
  {
    v18 = *&time->var0;
    v16->_time.epoch = time->var3;
    *&v16->_time.value = v18;
    objc_storeStrong(&v16->_arFrame, frame);
    objc_storeStrong(&v17->_avDepthData, data);
    v19 = [shapesCopy copy];
    animojiBlendShapes = v17->_animojiBlendShapes;
    v17->_animojiBlendShapes = v19;

    v21 = *&range->var0.var0;
    v22 = *&range->var0.var3;
    *&v17->_mediaTimeRangeForData.duration.timescale = *&range->var1.var1;
    *&v17->_mediaTimeRangeForData.start.epoch = v22;
    *&v17->_mediaTimeRangeForData.start.value = v21;
  }

  return v17;
}

- ($AC64C642040120CEEAD84DEEACA9A5CE)mediaTimeRangeForData
{
  v3 = *&self[1].var1.var0;
  *&retstr->var0.var0 = *&self[1].var0.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var1.var3;
  return self;
}

@end