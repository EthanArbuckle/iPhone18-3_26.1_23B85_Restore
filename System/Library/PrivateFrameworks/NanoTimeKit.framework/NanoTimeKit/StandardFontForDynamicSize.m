@interface StandardFontForDynamicSize
@end

@implementation StandardFontForDynamicSize

id ___StandardFontForDynamicSize_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_13_lock);
  if (_block_invoke_13___cachedDevice)
  {
    v3 = _block_invoke_13___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != _block_invoke_13___previousCLKDeviceVersion))
  {
    _block_invoke_13___cachedDevice = v2;
    _block_invoke_13___previousCLKDeviceVersion = [v2 version];
    v5 = ___StandardFontForDynamicSize_block_invoke_2(_block_invoke_13___previousCLKDeviceVersion, v2);
    v6 = _block_invoke_13_value;
    _block_invoke_13_value = v5;
  }

  v7 = _block_invoke_13_value;
  os_unfair_lock_unlock(&_block_invoke_13_lock);

  return v7;
}

id ___StandardFontForDynamicSize_block_invoke_2(uint64_t a1, void *a2)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  ___LayoutConstantsSmall_block_invoke_0(a2, v7);
  v9[0] = &unk_284185680;
  v2 = _MakeFont(0);
  v10[0] = v2;
  v9[1] = &unk_284185608;
  v3 = _MakeFont(0);
  v10[1] = v3;
  v9[2] = &unk_284185620;
  v4 = _MakeFont(0);
  v10[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v5;
}

@end