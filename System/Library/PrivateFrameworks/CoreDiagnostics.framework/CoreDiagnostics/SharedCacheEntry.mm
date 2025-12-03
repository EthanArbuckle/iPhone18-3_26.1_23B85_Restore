@interface SharedCacheEntry
- (void)setSharedCacheInfo:(dyld_shared_cache_loadinfo_v2 *)info;
@end

@implementation SharedCacheEntry

- (void)setSharedCacheInfo:(dyld_shared_cache_loadinfo_v2 *)info
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v6, 0, sizeof(v6));
  uuid_unparse(info->sharedCacheUUID, v6);
  self->_sharedCacheID = info->sharedCacheID;
  self->_sharedCacheSlide = info->sharedCacheSlide;
  self->_sharedCacheUnreliableSlidBaseAddress = info->sharedCacheUnreliableSlidBaseAddress;
  self->_sharedCacheUuid = v6;
  self->_original = info;
  self->_isDefaultSharedCache = info->sharedCacheFlags == 1;
  v5 = *MEMORY[0x1E69E9840];
}

@end