@interface CSAudioChunkWithBufferedTimestamp
- (CSAudioChunkWithBufferedTimestamp)initWithAudioChunk:(id)chunk bufferedTimestamp:(id)timestamp;
@end

@implementation CSAudioChunkWithBufferedTimestamp

- (CSAudioChunkWithBufferedTimestamp)initWithAudioChunk:(id)chunk bufferedTimestamp:(id)timestamp
{
  chunkCopy = chunk;
  timestampCopy = timestamp;
  v12.receiver = self;
  v12.super_class = CSAudioChunkWithBufferedTimestamp;
  v9 = [(CSAudioChunkWithBufferedTimestamp *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_audioChunk, chunk);
    objc_storeStrong(&v10->_bufferedTimestamp, timestamp);
  }

  return v10;
}

@end