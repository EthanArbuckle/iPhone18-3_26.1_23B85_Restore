@interface CachedKeylineImageForKey
@end

@implementation CachedKeylineImageForKey

uint64_t ___CachedKeylineImageForKey_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_19);
  if (_block_invoke___cachedDevice_19)
  {
    v3 = _block_invoke___cachedDevice_19 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_19))
  {
    v5 = _block_invoke_value_12;
  }

  else
  {
    _block_invoke___cachedDevice_19 = v2;
    _block_invoke___previousCLKDeviceVersion_19 = [v2 version];
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = _CachedKeylineImageForKey___cache;
    _CachedKeylineImageForKey___cache = v6;

    v5 = 1;
    _block_invoke_value_12 = 1;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_19);

  return v5;
}

@end