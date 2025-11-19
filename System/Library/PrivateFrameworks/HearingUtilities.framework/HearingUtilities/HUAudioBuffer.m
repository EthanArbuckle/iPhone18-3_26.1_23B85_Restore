@interface HUAudioBuffer
- (HUAudioBuffer)initWithBuffer:(AudioBufferList *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation HUAudioBuffer

- (HUAudioBuffer)initWithBuffer:(AudioBufferList *)a3
{
  v9.receiver = self;
  v9.super_class = HUAudioBuffer;
  v4 = [(HUAudioBuffer *)&v9 init];
  if (v4)
  {
    v5 = malloc_type_malloc(0x18uLL, 0x10800404ACF7207uLL);
    *v5 = 1;
    mDataByteSize = a3->mBuffers[0].mDataByteSize;
    v5[2] = a3->mBuffers[0].mNumberChannels;
    v5[3] = mDataByteSize;
    [(HUAudioBuffer *)v4 setBufferList:v5];
    v7 = malloc_type_malloc(mDataByteSize, 0xDC31400BuLL);
    *([(HUAudioBuffer *)v4 bufferList]+ 16) = v7;
    memcpy([(HUAudioBuffer *)v4 bufferList][16], a3->mBuffers[0].mData, mDataByteSize);
  }

  return v4;
}

- (void)dealloc
{
  if ([(HUAudioBuffer *)self bufferList])
  {
    free([(HUAudioBuffer *)self bufferList][16]);
    free([(HUAudioBuffer *)self bufferList]);
    [(HUAudioBuffer *)self setBufferList:0];
  }

  v3.receiver = self;
  v3.super_class = HUAudioBuffer;
  [(HUAudioBuffer *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HUAudioBuffer alloc];
  v5 = [(HUAudioBuffer *)self bufferList];

  return [(HUAudioBuffer *)v4 initWithBuffer:v5];
}

@end