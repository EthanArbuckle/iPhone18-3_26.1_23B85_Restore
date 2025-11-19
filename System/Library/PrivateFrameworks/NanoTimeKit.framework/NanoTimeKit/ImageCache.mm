@interface ImageCache
@end

@implementation ImageCache

uint64_t ___ImageCache_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_10);
  if (_block_invoke___cachedDevice_10)
  {
    v3 = _block_invoke___cachedDevice_10 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_10))
  {
    v5 = _block_invoke_value_7;
  }

  else
  {
    _block_invoke___cachedDevice_10 = v2;
    _block_invoke___previousCLKDeviceVersion_10 = [v2 version];
    v6 = objc_opt_new();
    v7 = _ImageCache___dictionary;
    _ImageCache___dictionary = v6;

    v5 = 1;
    _block_invoke_value_7 = 1;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_10);

  return v5;
}

@end