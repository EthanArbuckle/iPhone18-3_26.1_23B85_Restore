@interface CSReusableSharedMemoryBackingStore
- (CSReusableSharedMemoryBackingStore)initWithBuffer:(void *)buffer bufferSize:(unint64_t)size deallocator:(id)deallocator;
@end

@implementation CSReusableSharedMemoryBackingStore

- (CSReusableSharedMemoryBackingStore)initWithBuffer:(void *)buffer bufferSize:(unint64_t)size deallocator:(id)deallocator
{
  v6.receiver = self;
  v6.super_class = CSReusableSharedMemoryBackingStore;
  return [(CSReusableBufferBackingStore *)&v6 initWithBuffer:buffer bufferSize:size deallocator:deallocator];
}

@end