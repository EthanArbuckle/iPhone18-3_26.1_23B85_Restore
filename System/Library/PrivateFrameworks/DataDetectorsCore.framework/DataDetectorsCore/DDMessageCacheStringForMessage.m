@interface DDMessageCacheStringForMessage
@end

@implementation DDMessageCacheStringForMessage

uint64_t ___DDMessageCacheStringForMessage_block_invoke()
{
  v0 = objc_alloc_init(DDMessageCache);
  v1 = _DDMessageCacheStringForMessage__cache;
  _DDMessageCacheStringForMessage__cache = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end