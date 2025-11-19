@interface JFXAnimojiPlaybackPreprocessedData
- ($AC64C642040120CEEAD84DEEACA9A5CE)mediaTimeRangeForData;
- (id)initForRenderTime:(id *)a3 usingDataFromMediaTimeRange:(id *)a4 arFrame:(id)a5 avDepthData:(id)a6 animojiBlendShapes:(id)a7;
@end

@implementation JFXAnimojiPlaybackPreprocessedData

- (id)initForRenderTime:(id *)a3 usingDataFromMediaTimeRange:(id *)a4 arFrame:(id)a5 avDepthData:(id)a6 animojiBlendShapes:(id)a7
{
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v24.receiver = self;
  v24.super_class = JFXAnimojiPlaybackPreprocessedData;
  v16 = [(JFXAnimojiPlaybackPreprocessedData *)&v24 init];
  v17 = v16;
  if (v16)
  {
    v18 = *&a3->var0;
    v16->_time.epoch = a3->var3;
    *&v16->_time.value = v18;
    objc_storeStrong(&v16->_arFrame, a5);
    objc_storeStrong(&v17->_avDepthData, a6);
    v19 = [v15 copy];
    animojiBlendShapes = v17->_animojiBlendShapes;
    v17->_animojiBlendShapes = v19;

    v21 = *&a4->var0.var0;
    v22 = *&a4->var0.var3;
    *&v17->_mediaTimeRangeForData.duration.timescale = *&a4->var1.var1;
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