@interface BWInferenceSingleBufferPoolProvider
- (id)preparedOutputPixelBufferPoolForAttachedMediaKey:(id)key format:(id)format;
@end

@implementation BWInferenceSingleBufferPoolProvider

- (id)preparedOutputPixelBufferPoolForAttachedMediaKey:(id)key format:(id)format
{
  v6 = [BWPixelBufferPool alloc];
  v7 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:](v6, "initWithVideoFormat:capacity:name:memoryPool:", format, 1, [MEMORY[0x1E696AEC0] stringWithFormat:@"Prepared BWInferenceSingleBufferPool for %@", key], +[BWMemoryPool sharedMemoryPool](BWMemoryPool, "sharedMemoryPool"));

  return v7;
}

@end