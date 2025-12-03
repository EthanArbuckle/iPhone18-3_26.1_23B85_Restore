@interface JFXMediaReaderDepthData
- ($AC64C642040120CEEAD84DEEACA9A5CE)timeRange;
- (JFXMediaReaderDepthData)initWithAVDepthData:(id)data timeRange:(id *)range;
@end

@implementation JFXMediaReaderDepthData

- (JFXMediaReaderDepthData)initWithAVDepthData:(id)data timeRange:(id *)range
{
  dataCopy = data;
  v13.receiver = self;
  v13.super_class = JFXMediaReaderDepthData;
  v8 = [(JFXMediaReaderDepthData *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_avDepthData, data);
    v10 = *&range->var0.var0;
    v11 = *&range->var1.var1;
    *&v9->_timeRange.start.epoch = *&range->var0.var3;
    *&v9->_timeRange.duration.timescale = v11;
    *&v9->_timeRange.start.value = v10;
  }

  return v9;
}

- ($AC64C642040120CEEAD84DEEACA9A5CE)timeRange
{
  v3 = *&self->var1.var1;
  *&retstr->var0.var0 = *&self->var0.var3;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var0.var0;
  return self;
}

@end