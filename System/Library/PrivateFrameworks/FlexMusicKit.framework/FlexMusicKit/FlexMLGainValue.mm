@interface FlexMLGainValue
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)segmentTime;
- (FlexMLGainValue)initWithGain:(float)gain segmentTime:(id *)time;
- (int64_t)compare:(id)compare;
@end

@implementation FlexMLGainValue

- (FlexMLGainValue)initWithGain:(float)gain segmentTime:(id *)time
{
  v8.receiver = self;
  v8.super_class = FlexMLGainValue;
  result = [(FlexMLGainValue *)&v8 init];
  if (result)
  {
    result->_gain = gain;
    v7 = *&time->var0;
    *&result->_segmentTime.flags = time->var3;
    *(&result->_gain + 1) = v7;
  }

  return result;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  objc_msgSend_segmentTime(self, v5, v6, v7, v8);
  memset(v17, 0, sizeof(v17));
  if (compareCopy)
  {
    objc_msgSend_segmentTime(compareCopy, v9, v10, v11, v12);
  }

  time1 = v17[1];
  v15 = v17[0];
  v13 = CMTimeCompare(&time1, &v15);

  return v13;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)segmentTime
{
  *&retstr->var0 = *&self->var2;
  retstr->var3 = *(&self[1].var0 + 4);
  return self;
}

@end