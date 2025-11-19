@interface HeightPaddingForNonCurved
@end

@implementation HeightPaddingForNonCurved

double ___HeightPaddingForNonCurved_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_79);
  if (_block_invoke___cachedDevice_79)
  {
    v3 = _block_invoke___cachedDevice_79 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_79))
  {
    v5 = _block_invoke_value_55;
  }

  else
  {
    _block_invoke___cachedDevice_79 = v2;
    _block_invoke___previousCLKDeviceVersion_79 = [v2 version];
    v5 = ___HeightPaddingForNonCurved_block_invoke_2(_block_invoke___previousCLKDeviceVersion_79, v2);
    _block_invoke_value_55 = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_79);

  return *&v5;
}

double ___HeightPaddingForNonCurved_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledValue:4.0];
  v4 = v3;

  return v4;
}

@end