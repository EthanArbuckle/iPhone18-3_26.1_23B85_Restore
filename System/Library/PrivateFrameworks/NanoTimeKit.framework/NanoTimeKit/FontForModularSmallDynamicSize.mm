@interface FontForModularSmallDynamicSize
@end

@implementation FontForModularSmallDynamicSize

id ___FontForModularSmallDynamicSize_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_3_lock_1);
  if (_block_invoke_3___cachedDevice_1)
  {
    v3 = _block_invoke_3___cachedDevice_1 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != _block_invoke_3___previousCLKDeviceVersion_1))
  {
    _block_invoke_3___cachedDevice_1 = v2;
    _block_invoke_3___previousCLKDeviceVersion_1 = [v2 version];
    v5 = ___FontForModularSmallDynamicSize_block_invoke_2(_block_invoke_3___previousCLKDeviceVersion_1, v2);
    v6 = _block_invoke_3_value_1;
    _block_invoke_3_value_1 = v5;
  }

  v7 = _block_invoke_3_value_1;
  os_unfair_lock_unlock(&_block_invoke_3_lock_1);

  return v7;
}

id ___FontForModularSmallDynamicSize_block_invoke_2(uint64_t a1, void *a2)
{
  v11[5] = *MEMORY[0x277D85DE8];
  v10[0] = &unk_284183310;
  v2 = a2;
  _ModularSmallFontSize(4, v2);
  v3 = ___FontForModularSmallDynamicSize_block_invoke_3();
  v11[0] = v3;
  v10[1] = &unk_284183328;
  _ModularSmallFontSize(3, v2);
  v4 = ___FontForModularSmallDynamicSize_block_invoke_3();
  v11[1] = v4;
  v10[2] = &unk_284183340;
  _ModularSmallFontSize(2, v2);
  v5 = ___FontForModularSmallDynamicSize_block_invoke_3();
  v11[2] = v5;
  v10[3] = &unk_284183358;
  _ModularSmallFontSize(1, v2);
  v6 = ___FontForModularSmallDynamicSize_block_invoke_3();
  v11[3] = v6;
  v10[4] = &unk_284183370;
  _ModularSmallFontSize(0, v2);

  v7 = ___FontForModularSmallDynamicSize_block_invoke_3();
  v11[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:5];

  return v8;
}

id ___FontForModularSmallDynamicSize_block_invoke_3()
{
  v0 = [MEMORY[0x277CBBB08] systemFontOfSize:? weight:?];
  v1 = [v0 CLKFontWithAlternativePunctuation];

  return v1;
}

@end