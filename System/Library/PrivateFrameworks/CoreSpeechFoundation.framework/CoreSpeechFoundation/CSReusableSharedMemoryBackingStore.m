@interface CSReusableSharedMemoryBackingStore
- (CSReusableSharedMemoryBackingStore)initWithBuffer:(void *)a3 bufferSize:(unint64_t)a4 deallocator:(id)a5;
@end

@implementation CSReusableSharedMemoryBackingStore

- (CSReusableSharedMemoryBackingStore)initWithBuffer:(void *)a3 bufferSize:(unint64_t)a4 deallocator:(id)a5
{
  v6.receiver = self;
  v6.super_class = CSReusableSharedMemoryBackingStore;
  return [(CSReusableBufferBackingStore *)&v6 initWithBuffer:a3 bufferSize:a4 deallocator:a5];
}

@end