@interface LayoutConstants
@end

@implementation LayoutConstants

void ___LayoutConstants_block_invoke(void *a1@<X1>, void *a2@<X8>)
{
  v5 = a1;
  os_unfair_lock_lock(&_block_invoke_lock);
  if (_block_invoke___cachedDevice)
  {
    v3 = _block_invoke___cachedDevice == v5;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v5 version], v4 != _block_invoke___previousCLKDeviceVersion))
  {
    _block_invoke___cachedDevice = v5;
    _block_invoke___previousCLKDeviceVersion = [v5 version];
    ___LayoutConstants_block_invoke_2(v5, __src);
    memcpy(&_block_invoke_value, __src, 0x138uLL);
  }

  memcpy(a2, &_block_invoke_value, 0x138uLL);
  os_unfair_lock_unlock(&_block_invoke_lock);
}

void ___LayoutConstants_block_invoke_2(void *a1@<X1>, uint64_t a2@<X8>)
{
  v45[2] = *MEMORY[0x1E69E9840];
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  v3 = MEMORY[0x1E695B500];
  v4 = a1;
  v5 = [v3 metricsWithDevice:v4 identitySizeClass:2];
  [v5 setRoundingBehavior:3];
  v44[0] = &unk_1F5E96B70;
  v44[1] = &unk_1F5E96B88;
  v45[0] = &unk_1F5E96F00;
  v45[1] = &unk_1F5E96F10;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
  [v5 scaledValue:v6 withOverrides:7.0];
  v8 = v7;

  [v5 scaledValue:0 withOverride:5.0 forSizeClass:5.25];
  v10 = v9;
  [v5 scaledValue:1.0];
  v12 = v11;
  [v5 scaledValue:2.5];
  v14 = v13;
  [v5 scaledValue:1.5];
  *a2 = v15;
  *(a2 + 8) = v8;
  v42[0] = &unk_1F5E96B70;
  v42[1] = &unk_1F5E96B88;
  v43[0] = &unk_1F5E96F20;
  v43[1] = &unk_1F5E96F30;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];
  [v5 scaledValue:v16 withOverrides:33.0];
  *(a2 + 16) = v17;

  *(a2 + 24) = v12;
  *(a2 + 32) = v14;
  *(a2 + 40) = 0x4008000000000000;
  *(a2 + 48) = v10;
  *(a2 + 56) = xmmword_1E4A0A080;
  *(a2 + 72) = xmmword_1E4A0A090;
  *(a2 + 88) = xmmword_1E4A0A0A0;
  *(a2 + 104) = v8;
  v41[0] = &unk_1F5E96F40;
  v41[1] = &unk_1F5E96BB8;
  v40[0] = &unk_1F5E96BA0;
  v40[1] = &unk_1F5E96B88;
  v40[2] = &unk_1F5E96BD0;
  v41[2] = &unk_1F5E96F50;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:3];
  [v5 scaledValue:v18 withOverrides:63.0];
  *(a2 + 112) = v19;

  *(a2 + 120) = v12;
  *(a2 + 128) = v14;
  *(a2 + 136) = 0x4008000000000000;
  *(a2 + 144) = v10;
  *(a2 + 152) = xmmword_1E4A0A080;
  *(a2 + 168) = xmmword_1E4A0A090;
  *(a2 + 184) = xmmword_1E4A0A0A0;
  *(a2 + 200) = 0x3FF8000000000000;
  CLKDialDiameterForDevice();
  v21 = v20;

  *(a2 + 208) = v21 * 0.5;
  [v5 scaledValue:0.75];
  *(a2 + 216) = v22;
  [v5 scaledValue:2.0];
  *(a2 + 224) = v23;
  v38[0] = &unk_1F5E96BA0;
  v38[1] = &unk_1F5E96B88;
  v39[0] = &unk_1F5E96F60;
  v39[1] = &unk_1F5E96BE8;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
  [v5 scaledValue:v24 withOverrides:13.0];
  *(a2 + 232) = v25;

  *(a2 + 240) = xmmword_1E4A0A080;
  *(a2 + 256) = xmmword_1E4A0A0B0;
  *(a2 + 272) = xmmword_1E4A0A0C0;
  v36[0] = &unk_1F5E96B70;
  v36[1] = &unk_1F5E96B88;
  v37[0] = &unk_1F5E96F70;
  v37[1] = &unk_1F5E96F70;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
  [v5 scaledValue:v26 withOverrides:1.5];
  *(a2 + 288) = v27;

  v34[0] = &unk_1F5E96B70;
  v34[1] = &unk_1F5E96B88;
  v35[0] = &unk_1F5E96F80;
  v35[1] = &unk_1F5E96F90;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
  [v5 scaledValue:v28 withOverrides:22.25];
  *(a2 + 296) = v29;

  v32[0] = &unk_1F5E96B70;
  v32[1] = &unk_1F5E96B88;
  v33[0] = &unk_1F5E96FA0;
  v33[1] = &unk_1F5E96FA0;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
  [v5 scaledValue:v30 withOverrides:1.75];
  *(a2 + 304) = v31;
}

double ___LayoutConstants_block_invoke_0(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_1);
  if (_block_invoke___cachedDevice_1)
  {
    v3 = _block_invoke___cachedDevice_1 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_1))
  {
    v5 = _block_invoke_value_0;
  }

  else
  {
    _block_invoke___cachedDevice_1 = v2;
    _block_invoke___previousCLKDeviceVersion_1 = [v2 version];
    v5 = ___LayoutConstants_block_invoke_2_0(_block_invoke___previousCLKDeviceVersion_1, v2);
    _block_invoke_value_0 = v5;
    _block_invoke_value_1 = v6;
    _block_invoke_value_2 = v7;
    _block_invoke_value_3 = v8;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_1);

  return *&v5;
}

double ___LayoutConstants_block_invoke_2_0(uint64_t a1, uint64_t a2)
{
  v8[7] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695B500] metricsWithDevice:a2 identitySizeClass:2];
  v7[0] = &unk_1F5E96C60;
  v7[1] = &unk_1F5E96C78;
  v8[0] = &unk_1F5E97030;
  v8[1] = &unk_1F5E97040;
  v7[2] = &unk_1F5E96C90;
  v7[3] = &unk_1F5E96CA8;
  v8[2] = &unk_1F5E97050;
  v8[3] = &unk_1F5E97060;
  v7[4] = &unk_1F5E96CC0;
  v7[5] = &unk_1F5E96CD8;
  v8[4] = &unk_1F5E97040;
  v8[5] = &unk_1F5E97050;
  v7[6] = &unk_1F5E96CF0;
  v8[6] = &unk_1F5E97070;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:7];
  [v2 scaledValue:v3 withOverrides:22.0];
  v5 = v4;

  return v5;
}

double ___LayoutConstants_block_invoke_1(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_3);
  if (_block_invoke___cachedDevice_3)
  {
    v3 = _block_invoke___cachedDevice_3 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_3))
  {
    v5 = _block_invoke_value_0_1;
  }

  else
  {
    _block_invoke___cachedDevice_3 = v2;
    _block_invoke___previousCLKDeviceVersion_3 = [v2 version];
    v5 = ___LayoutConstants_block_invoke_2_1(_block_invoke___previousCLKDeviceVersion_3, v2);
    _block_invoke_value_0_1 = v5;
    _block_invoke_value_1_1 = v6;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_3);

  return *&v5;
}

double ___LayoutConstants_block_invoke_2_1(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695B500] metricsWithDevice:a2 identitySizeClass:2];
  [v2 setRoundingBehavior:2];
  v7 = &unk_1F5E96D08;
  v8[0] = &unk_1F5E97080;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v2 scaledValue:v3 withOverrides:30.0];
  v5 = v4;

  [v2 setRoundingBehavior:1];
  [v2 scaledValue:1.0];

  return v5;
}

void ___LayoutConstants_block_invoke_3(void *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_4);
  if (_block_invoke___cachedDevice_4)
  {
    v3 = _block_invoke___cachedDevice_4 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != _block_invoke___previousCLKDeviceVersion_4))
  {
    _block_invoke___cachedDevice_4 = v6;
    _block_invoke___previousCLKDeviceVersion_4 = [v6 version];
    ___LayoutConstants_block_invoke_2_2(v6, v7);
    _block_invoke_value_1 = v7[0];
    unk_1ECF8D708 = v7[1];
    qword_1ECF8D718 = v8;
  }

  v5 = unk_1ECF8D708;
  *a2 = _block_invoke_value_1;
  *(a2 + 16) = v5;
  *(a2 + 32) = qword_1ECF8D718;
  os_unfair_lock_unlock(&_block_invoke_lock_4);
}

void ___LayoutConstants_block_invoke_2_2(void *a1@<X1>, uint64_t a2@<X8>)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695B500];
  v4 = a1;
  v5 = [v3 metricsWithDevice:v4 identitySizeClass:2];
  v10[0] = &unk_1F5E96D20;
  v10[1] = &unk_1F5E96D38;
  v11[0] = &unk_1F5E97090;
  v11[1] = &unk_1F5E970A0;
  v10[2] = &unk_1F5E96D50;
  v10[3] = &unk_1F5E96D68;
  v11[2] = &unk_1F5E970B0;
  v11[3] = &unk_1F5E970C0;
  v10[4] = &unk_1F5E96D80;
  v10[5] = &unk_1F5E96D98;
  v11[4] = &unk_1F5E970D0;
  v11[5] = &unk_1F5E970E0;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:6];
  [v5 scaledValue:v6 withOverrides:76.0];
  *a2 = v7;

  CLKRoundForDevice();
  v9 = v8;

  *(a2 + 8) = v9;
  *(a2 + 16) = xmmword_1E4A0AA00;
  *(a2 + 32) = 0;
}

void ___LayoutConstants_block_invoke_4(void *a1@<X1>, uint64_t a2@<X8>)
{
  v8 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_5);
  if (_block_invoke___cachedDevice_5)
  {
    v3 = _block_invoke___cachedDevice_5 == v8;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v8 version], v4 != _block_invoke___previousCLKDeviceVersion_5))
  {
    _block_invoke___cachedDevice_5 = v8;
    _block_invoke___previousCLKDeviceVersion_5 = [v8 version];
    ___LayoutConstants_block_invoke_2_3(v8, v9);
    xmmword_1ECF8D790 = v9[4];
    unk_1ECF8D7A0 = v9[5];
    xmmword_1ECF8D7B0 = v9[6];
    qword_1ECF8D7C0 = v10;
    _block_invoke_value_2 = v9[0];
    unk_1ECF8D760 = v9[1];
    xmmword_1ECF8D770 = v9[2];
    unk_1ECF8D780 = v9[3];
  }

  v5 = unk_1ECF8D7A0;
  *(a2 + 64) = xmmword_1ECF8D790;
  *(a2 + 80) = v5;
  *(a2 + 96) = xmmword_1ECF8D7B0;
  *(a2 + 112) = qword_1ECF8D7C0;
  v6 = unk_1ECF8D760;
  *a2 = _block_invoke_value_2;
  *(a2 + 16) = v6;
  v7 = unk_1ECF8D780;
  *(a2 + 32) = xmmword_1ECF8D770;
  *(a2 + 48) = v7;
  os_unfair_lock_unlock(&_block_invoke_lock_5);
}

void ___LayoutConstants_block_invoke_2_3(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v13 = [MEMORY[0x1E695B500] metricsWithDevice:a1 identitySizeClass:2];
  [v13 valueCompact:0.0 regular:0.0 luxoCompact:4.0 luxoRegular:5.0 aloeCompact:4.0 aloeRegular:5.0 agave:5.0 avoniaCompact:4.0 avoniaRegular:0x4014000000000000 begonia:0x4014000000000000];
  *a2 = v3;
  [v13 valueCompact:0.0 regular:0.0 luxoCompact:1.5 luxoRegular:2.0 aloeCompact:1.5 aloeRegular:2.0 agave:2.0 avoniaCompact:1.5 avoniaRegular:0x4000000000000000 begonia:0x4000000000000000];
  *(a2 + 8) = v4;
  [v13 valueCompact:0.0 regular:0.0 luxoCompact:3.5 luxoRegular:4.0 aloeCompact:4.0 aloeRegular:4.5 agave:4.5 avoniaCompact:4.5 avoniaRegular:0x4014000000000000 begonia:0x4012000000000000];
  *(a2 + 16) = v5;
  [v13 valueCompact:0.0 regular:0.0 luxoCompact:1.0 luxoRegular:1.5 aloeCompact:1.0 aloeRegular:1.5 agave:1.5 avoniaCompact:1.0 avoniaRegular:0x3FF8000000000000 begonia:0x3FF8000000000000];
  *(a2 + 24) = v6;
  *(a2 + 32) = 0x3FF8000000000000;
  [v13 valueCompact:0.0 regular:0.0 luxoCompact:16.0 luxoRegular:18.0 aloeCompact:17.5 aloeRegular:19.5 agave:20.0 avoniaCompact:18.5 avoniaRegular:0x4033000000000000 begonia:0x4034800000000000];
  *(a2 + 40) = v7;
  [v13 valueCompact:0.0 regular:0.0 luxoCompact:30.5 luxoRegular:34.5 aloeCompact:33.0 aloeRegular:37.5 agave:38.5 avoniaCompact:35.0 avoniaRegular:0x4043000000000000 begonia:0x4043C00000000000];
  *(a2 + 48) = v8;
  [v13 valueCompact:0.0 regular:0.0 luxoCompact:34.5 luxoRegular:39.5 aloeCompact:38.0 aloeRegular:43.0 agave:44.0 avoniaCompact:40.0 avoniaRegular:0x4046000000000000 begonia:0x4046C00000000000];
  *(a2 + 56) = v9;
  [v13 valueCompact:0.0 regular:0.0 luxoCompact:6.0 luxoRegular:6.5 aloeCompact:6.5 aloeRegular:7.0 agave:7.5 avoniaCompact:6.5 avoniaRegular:0x401C000000000000 begonia:0x401E000000000000];
  *(a2 + 64) = v10;
  *(a2 + 72) = 0x3FF0000000000000;
  [v13 valueCompact:0.0 regular:0.0 luxoCompact:3.0 luxoRegular:4.0 aloeCompact:3.0 aloeRegular:4.0 agave:4.0 avoniaCompact:3.0 avoniaRegular:0x4010000000000000 begonia:0x4010000000000000];
  *(a2 + 80) = v11;
  [v13 valueCompact:0.0 regular:0.0 luxoCompact:1.0 luxoRegular:1.5 aloeCompact:1.0 aloeRegular:1.5 agave:1.5 avoniaCompact:1.0 avoniaRegular:0x3FF8000000000000 begonia:0x3FF8000000000000];
  *(a2 + 88) = v12;
  *(a2 + 96) = xmmword_1E4A0AB10;
  *(a2 + 112) = 0x3FF8000000000000;
}

void ___LayoutConstants_block_invoke_5(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&_TimeAnimationKey_block_invoke_lock);
  if (_TimeAnimationKey_block_invoke___cachedDevice)
  {
    v3 = _TimeAnimationKey_block_invoke___cachedDevice == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != _TimeAnimationKey_block_invoke___previousCLKDeviceVersion))
  {
    _TimeAnimationKey_block_invoke___cachedDevice = v6;
    _TimeAnimationKey_block_invoke___previousCLKDeviceVersion = [v6 version];
    ___LayoutConstants_block_invoke_2_4(v6, v7);
    _TimeAnimationKey_block_invoke_value = v7[0];
    *algn_1ECF8D7F0 = v7[1];
    xmmword_1ECF8D800 = v7[2];
  }

  v5 = *algn_1ECF8D7F0;
  *a2 = _TimeAnimationKey_block_invoke_value;
  a2[1] = v5;
  a2[2] = xmmword_1ECF8D800;
  os_unfair_lock_unlock(&_TimeAnimationKey_block_invoke_lock);
}

double ___LayoutConstants_block_invoke_2_4@<D0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  v3 = a1;
  v4 = [v3 sizeClass];
  [v3 screenScale];
  v6 = v5;

  v7 = 7.5;
  if (!v4)
  {
    v7 = 6.5;
  }

  result = v7 / v6;
  *a2 = result;
  *(a2 + 40) = 0x4000000000000000;
  return result;
}

@end