@interface LargeModularLayoutConstants
@end

@implementation LargeModularLayoutConstants

double ___LargeModularLayoutConstants_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_60);
  if (_block_invoke___cachedDevice_60)
  {
    v3 = _block_invoke___cachedDevice_60 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_60))
  {
    v5 = _block_invoke_value_0_15;
  }

  else
  {
    _block_invoke___cachedDevice_60 = v2;
    _block_invoke___previousCLKDeviceVersion_60 = [v2 version];
    v5 = ___LargeModularLayoutConstants_block_invoke_2(_block_invoke___previousCLKDeviceVersion_60, v2);
    _block_invoke_value_0_15 = v5;
    _block_invoke_value_1_11 = v6;
    _block_invoke_value_2_9 = v7;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_60);

  return *&v5;
}

double ___LargeModularLayoutConstants_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  v3 = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [v3 objectForKey:*MEMORY[0x277CBE6C8]];
  v5 = [@"ar" isEqualToString:v4];

  IsTallScript = CLKLanguageIsTallScript();
  v7 = IsTallScript;
  if (v5)
  {
    [v2 valueCompact:15.0 regular:18.0 luxoCompact:15.0 luxoRegular:18.0 aloeCompact:18.0 aloeRegular:20.0 agave:20.0 avoniaCompact:18.0 avoniaRegular:0x4034000000000000 begonia:0x4034000000000000];
    v9 = v8;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!IsTallScript)
    {
      [v2 valueCompact:18.0 regular:20.5 luxoCompact:18.0 luxoRegular:20.5 aloeCompact:20.5 aloeRegular:23.0 agave:23.0 avoniaCompact:20.5 avoniaRegular:0x4037000000000000 begonia:0x4037000000000000];
      v9 = v11;
LABEL_8:
      [v2 valueCompact:17.0 regular:19.0 luxoCompact:17.0 luxoRegular:19.0 aloeCompact:19.0 aloeRegular:22.0 agave:22.0 avoniaCompact:20.0 avoniaRegular:0x4036000000000000 begonia:0x4036000000000000];
      goto LABEL_9;
    }

    [v2 valueCompact:18.0 regular:20.0 luxoCompact:18.0 luxoRegular:20.0 aloeCompact:20.0 aloeRegular:22.0 agave:22.0 avoniaCompact:20.0 avoniaRegular:0x4036000000000000 begonia:0x4036000000000000];
    v9 = v10;
  }

  [v2 valueCompact:18.0 regular:20.0 luxoCompact:18.0 luxoRegular:20.0 aloeCompact:20.0 aloeRegular:22.0 agave:22.0 avoniaCompact:20.0 avoniaRegular:0x4036000000000000 begonia:0x4036000000000000];
LABEL_9:

  return v9;
}

@end