@interface OSASharedCacheEntry
- (void)setSharedCacheInfo:(dyld_shared_cache_loadinfo_v2 *)a3;
@end

@implementation OSASharedCacheEntry

- (void)setSharedCacheInfo:(dyld_shared_cache_loadinfo_v2 *)a3
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v6, 0, sizeof(v6));
  uuid_unparse(a3->sharedCacheUUID, v6);
  self->_sharedCacheID = a3->sharedCacheID;
  self->_sharedCacheSlide = a3->sharedCacheSlide;
  self->_sharedCacheUnreliableSlidBaseAddress = a3->sharedCacheUnreliableSlidBaseAddress;
  self->_sharedCacheUuid = v6;
  self->_original = a3;
  self->_isDefaultSharedCache = a3->sharedCacheFlags == 1;
  v5 = *MEMORY[0x1E69E9840];
}

@end