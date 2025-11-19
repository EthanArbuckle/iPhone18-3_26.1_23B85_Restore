@interface VCPVideoKeyFrameResult
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeStamp;
- (VCPVideoKeyFrameResult)initWithTime:(id *)a3 andScore:(float)a4;
@end

@implementation VCPVideoKeyFrameResult

- (VCPVideoKeyFrameResult)initWithTime:(id *)a3 andScore:(float)a4
{
  v8.receiver = self;
  v8.super_class = VCPVideoKeyFrameResult;
  result = [(VCPVideoKeyFrameResult *)&v8 init];
  if (result)
  {
    v7 = *&a3->var0;
    *&result->_timeStamp.flags = a3->var3;
    *(&result->_score + 1) = v7;
    result->_score = a4;
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeStamp
{
  *&retstr->var0 = *&self->var2;
  retstr->var3 = *(&self[1].var0 + 4);
  return self;
}

@end