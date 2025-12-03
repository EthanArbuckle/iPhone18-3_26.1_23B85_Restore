@interface CSReusablePrivateMemoryBackingStore
- (CSReusablePrivateMemoryBackingStore)initWithBufferSize:(unint64_t)size;
@end

@implementation CSReusablePrivateMemoryBackingStore

- (CSReusablePrivateMemoryBackingStore)initWithBufferSize:(unint64_t)size
{
  v5 = malloc_type_malloc(size, 0xFF94D64EuLL);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__CSReusablePrivateMemoryBackingStore_initWithBufferSize___block_invoke;
  v8[3] = &__block_descriptor_40_e5_v8__0l;
  v8[4] = v5;
  v7.receiver = self;
  v7.super_class = CSReusablePrivateMemoryBackingStore;
  return [(CSReusableBufferBackingStore *)&v7 initWithBuffer:v5 bufferSize:size deallocator:v8];
}

@end