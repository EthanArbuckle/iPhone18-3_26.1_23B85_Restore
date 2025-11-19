@interface RoundedFontForDynamicSize
@end

@implementation RoundedFontForDynamicSize

id ___RoundedFontForDynamicSize_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_12_lock);
  if (_block_invoke_12___cachedDevice)
  {
    v3 = _block_invoke_12___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != _block_invoke_12___previousCLKDeviceVersion))
  {
    _block_invoke_12___cachedDevice = v2;
    _block_invoke_12___previousCLKDeviceVersion = [v2 version];
    v5 = ___RoundedFontForDynamicSize_block_invoke_2(_block_invoke_12___previousCLKDeviceVersion, v2);
    v6 = _block_invoke_12_value;
    _block_invoke_12_value = v5;
  }

  v7 = _block_invoke_12_value;
  os_unfair_lock_unlock(&_block_invoke_12_lock);

  return v7;
}

id ___RoundedFontForDynamicSize_block_invoke_2(uint64_t a1, void *a2)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  ___LayoutConstantsSmall_block_invoke_0(a2, v9);
  v2 = *MEMORY[0x277CBB6C0];
  v11[0] = &unk_284185680;
  v3 = v2;
  v4 = _MakeFont(v3);
  v12[0] = v4;
  v11[1] = &unk_284185608;
  v5 = _MakeFont(v3);
  v12[1] = v5;
  v11[2] = &unk_284185620;
  v6 = _MakeFont(v3);
  v12[2] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v7;
}

@end