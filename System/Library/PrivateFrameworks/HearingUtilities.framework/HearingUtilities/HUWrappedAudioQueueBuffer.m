@interface HUWrappedAudioQueueBuffer
- (unint64_t)byteSize;
@end

@implementation HUWrappedAudioQueueBuffer

- (unint64_t)byteSize
{
  aqBuffer = self->_aqBuffer;
  if (aqBuffer)
  {
    return aqBuffer->mAudioDataByteSize;
  }

  else
  {
    return 0;
  }
}

@end