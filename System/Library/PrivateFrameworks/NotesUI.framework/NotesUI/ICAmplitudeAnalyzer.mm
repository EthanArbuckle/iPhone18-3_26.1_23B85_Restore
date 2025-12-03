@interface ICAmplitudeAnalyzer
- (float)calculateAmplitude:(float *)amplitude sampleCount:(int)count channelCount:(int)channelCount;
@end

@implementation ICAmplitudeAnalyzer

- (float)calculateAmplitude:(float *)amplitude sampleCount:(int)count channelCount:(int)channelCount
{
  if ([(NSData *)self->_processingBuffer length]< 4 * count)
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:4 * count];
    processingBuffer = self->_processingBuffer;
    self->_processingBuffer = v9;
  }

  if (channelCount < 1)
  {
    return 0.0;
  }

  v11 = 0.0;
  channelCountCopy = channelCount;
  do
  {
    v13 = *amplitude++;
    __C = 0.0;
    bytes = [(NSData *)self->_processingBuffer bytes];
    vDSP_vabs(v13, 1, bytes, 1, count);
    vDSP_maxv(bytes, 1, &__C, count);
    if (v11 < __C)
    {
      v11 = __C;
    }

    --channelCountCopy;
  }

  while (channelCountCopy);
  return v11;
}

@end