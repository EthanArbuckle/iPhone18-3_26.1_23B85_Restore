@interface ModularSmallFontSize
@end

@implementation ModularSmallFontSize

id ___ModularSmallFontSize_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_2_lock_5);
  if (_block_invoke_2___cachedDevice_5)
  {
    v3 = _block_invoke_2___cachedDevice_5 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != _block_invoke_2___previousCLKDeviceVersion_5))
  {
    _block_invoke_2___cachedDevice_5 = v2;
    _block_invoke_2___previousCLKDeviceVersion_5 = [v2 version];
    v5 = ___ModularSmallFontSize_block_invoke_2(_block_invoke_2___previousCLKDeviceVersion_5, v2);
    v6 = _block_invoke_2_value_3;
    _block_invoke_2_value_3 = v5;
  }

  v7 = _block_invoke_2_value_3;
  os_unfair_lock_unlock(&_block_invoke_2_lock_5);

  return v7;
}

id ___ModularSmallFontSize_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v22[5] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  v3 = MEMORY[0x277CCABB0];
  v19[0] = &unk_284183388;
  v19[1] = &unk_2841833A0;
  v20[0] = &unk_284188CE8;
  v20[1] = &unk_284188CF8;
  v21[0] = &unk_284183310;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  [v2 scaledValue:v4 withOverrides:41.5];
  v5 = [v3 numberWithDouble:?];
  v22[0] = v5;
  v21[1] = &unk_284183328;
  v6 = MEMORY[0x277CCABB0];
  [v2 scaledValue:0 withOverride:33.0 forSizeClass:29.0];
  v7 = [v6 numberWithDouble:?];
  v22[1] = v7;
  v21[2] = &unk_284183340;
  v8 = MEMORY[0x277CCABB0];
  v17[0] = &unk_284183388;
  v17[1] = &unk_2841833A0;
  v18[0] = &unk_284188D08;
  v18[1] = &unk_284188D18;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  [v2 scaledValue:v9 withOverrides:24.0];
  v10 = [v8 numberWithDouble:?];
  v22[2] = v10;
  v21[3] = &unk_284183358;
  v11 = MEMORY[0x277CCABB0];
  [v2 scaledValue:0 withOverride:20.0 forSizeClass:17.0];
  v12 = [v11 numberWithDouble:?];
  v22[3] = v12;
  v21[4] = &unk_284183370;
  v13 = MEMORY[0x277CCABB0];
  [v2 scaledValue:16.5];
  v14 = [v13 numberWithDouble:?];
  v22[4] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:5];

  return v15;
}

@end