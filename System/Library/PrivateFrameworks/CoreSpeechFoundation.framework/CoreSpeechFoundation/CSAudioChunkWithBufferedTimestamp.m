@interface CSAudioChunkWithBufferedTimestamp
- (CSAudioChunkWithBufferedTimestamp)initWithAudioChunk:(id)a3 bufferedTimestamp:(id)a4;
@end

@implementation CSAudioChunkWithBufferedTimestamp

- (CSAudioChunkWithBufferedTimestamp)initWithAudioChunk:(id)a3 bufferedTimestamp:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CSAudioChunkWithBufferedTimestamp;
  v9 = [(CSAudioChunkWithBufferedTimestamp *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_audioChunk, a3);
    objc_storeStrong(&v10->_bufferedTimestamp, a4);
  }

  return v10;
}

@end