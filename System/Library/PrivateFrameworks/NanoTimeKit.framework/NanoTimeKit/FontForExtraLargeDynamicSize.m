@interface FontForExtraLargeDynamicSize
@end

@implementation FontForExtraLargeDynamicSize

id ___FontForExtraLargeDynamicSize_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_40);
  if (_block_invoke___cachedDevice_40)
  {
    v3 = _block_invoke___cachedDevice_40 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != _block_invoke___previousCLKDeviceVersion_40))
  {
    _block_invoke___cachedDevice_40 = v2;
    _block_invoke___previousCLKDeviceVersion_40 = [v2 version];
    v5 = ___FontForExtraLargeDynamicSize_block_invoke_2(_block_invoke___previousCLKDeviceVersion_40, v2);
    v6 = _block_invoke_value_28;
    _block_invoke_value_28 = v5;
  }

  v7 = _block_invoke_value_28;
  os_unfair_lock_unlock(&_block_invoke_lock_40);

  return v7;
}

id ___FontForExtraLargeDynamicSize_block_invoke_2(uint64_t a1, void *a2)
{
  v18[5] = *MEMORY[0x277D85DE8];
  v17[0] = &unk_284183310;
  v2 = a2;
  v3 = _ModularSmallFontSize(4, v2);
  v4 = *MEMORY[0x277D74408];
  v5 = ___FontForExtraLargeDynamicSize_block_invoke_3(v3, 3.5, *MEMORY[0x277D74408]);
  v18[0] = v5;
  v17[1] = &unk_284183328;
  v6 = _ModularSmallFontSize(3, v2);
  v7 = ___FontForExtraLargeDynamicSize_block_invoke_3(v6, 3.5, v4);
  v18[1] = v7;
  v17[2] = &unk_284183340;
  v8 = _ModularSmallFontSize(2, v2);
  v9 = *MEMORY[0x277D74418];
  v10 = ___FontForExtraLargeDynamicSize_block_invoke_3(v8, 3.5, *MEMORY[0x277D74418]);
  v18[2] = v10;
  v17[3] = &unk_284183358;
  v11 = _ModularSmallFontSize(1, v2);
  v12 = ___FontForExtraLargeDynamicSize_block_invoke_3(v11, 3.5, v9);
  v18[3] = v12;
  v17[4] = &unk_284183370;
  v13 = _ModularSmallFontSize(0, v2);

  v14 = ___FontForExtraLargeDynamicSize_block_invoke_3(v13, 3.5, v9);
  v18[4] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];

  return v15;
}

id ___FontForExtraLargeDynamicSize_block_invoke_3(double a1, double a2, double a3)
{
  v3 = [MEMORY[0x277CBBB08] systemFontOfSize:a1 * a2 weight:a3];
  v4 = [v3 CLKFontWithAlternativePunctuation];

  return v4;
}

@end