void CDualLEDsWhitePointProjector::CDualLEDsWhitePointProjector(CDualLEDsWhitePointProjector *this)
{
  *this = &unk_1F48DEA48;
  *(this + 1) = &ledWhitePointProjectionConfigDefault;
  *(this + 10) = 0;
}

void CAWBAFEFDAssist::CAWBAFEFDAssist(CAWBAFEFDAssist *this, char a2)
{
  *this = &unk_1F48DEA68;
  *(this + 8) = 0;
  *(this + 12) = 0x2000000020;
  *(this + 40028) = 0u;
  *(this + 40044) = 0u;
  *(this + 20030) = 0;
  *(this + 40064) = a2;
}

BOOL CAWBAFEH14::InitialReset(CAWBAFEH14 *this, BOOL a2)
{
  v4 = &this->var66[5][856];
  if (this->var148 >= 0x32u)
  {
    puts("MSG: AWB RESET: CAWBAFEH14::InitialReset");
  }

  (*(this->var0 + 3))(this);
  v5 = CAWBAFE::InitialReset(this, a2);
  v6 = 0;
  *(v4 + 855) = 0;
  v4[3417] = 1;
  do
  {
    memcpy(&this->var151[v6], &slaveCameraListColorMatchingModelDefault, sizeof(this->var151[v6]));
    ++v6;
  }

  while (v6 != 4);
  v7 = 0;
  v8 = xmmword_1C93323B0;
  v9.i64[0] = 0x4000000040000000;
  v9.i64[1] = 0x4000000040000000;
  __asm { FMOV            V2.4S, #1.0 }

  v15.i64[0] = 0x400000004;
  v15.i64[1] = 0x400000004;
  do
  {
    *&this->var152[v7] = vmlaq_f32(_Q2, v9, vcvtq_f32_u32(v8));
    v8 = vaddq_s32(v8, v15);
    v7 += 4;
  }

  while (v7 != 32);
  return v5;
}

double CAWBAFEH14::MinimalReset(CAWBAFEH14 *this)
{
  if (this->var148 >= 0x32u)
  {
    printf("MSG: AWB RESET: CAWBAFEH14 (%p)::MinimalReset\n", this);
  }

  return CAWBAFE::MinimalReset(this);
}

double CAWBAFE::MinimalReset(CAWBAFE *this)
{
  p_var69 = &this->var69;
  if (this->var83)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  this->var82 = v3;
  this->var16 = 0;
  *&this->var27 = 0;
  this->var19 = 0;
  this->var34 = -559038737;
  *&this->var30 = 3735928559;
  *&this->var119 = 0;
  this->var95 = 0;
  this->var121 = 0;
  *p_var69 = 0;
  bzero(&this->var45, 0x105CuLL);
  *&this->var47.var8 = 0;
  *&this->var47.var0 = 0u;
  *&this->var47.var4 = 0u;
  *this->var127 = -217972737;
  this->var130 = 0;
  this->var109 = 0.0;
  p_var69[1047] = -8233;
  this->var102 = 1.0;
  var113 = this->var113;
  if (var113)
  {
    *(var113 + 9) = 0;
    *(var113 + 11) = -1;
    *(var113 + 1) = 5;
    *(var113 + 1596) = 0;
    bzero(var113 + 1604, 0x409uLL);
    v5 = (this->var113 + 3164);
    *(v5 + 6) = 0;
    *v5 = 0;
    v6 = this->var113;
    *(v6 + 3160) = 0;
    v6 = (v6 + 2637);
    *v6 = 0u;
    *(v6 + 1) = 0u;
    *(v6 + 2) = 0u;
    *(v6 + 3) = 0u;
    *(v6 + 4) = 0u;
    *(v6 + 5) = 0u;
    *(v6 + 6) = 0u;
    *(v6 + 7) = 0u;
    *(v6 + 8) = 0u;
    *(v6 + 9) = 0u;
    *(v6 + 10) = 0u;
    *(v6 + 11) = 0u;
    *(v6 + 12) = 0u;
    *(v6 + 13) = 0u;
    *(v6 + 14) = 0u;
    *(v6 + 15) = 0u;
    v7 = this->var113;
    *(v7 + 382) = 0;
    bzero(this->var141, 0x300uLL);
    *(v7 + 795) = 4;
  }

  var6 = this->var6;
  if (var6)
  {
    *(var6 + 212) = 0;
    *var6 = 0;
    *(var6 + 28) = 0;
    *(var6 + 29) = 0;
    *(var6 + 27) = 0;
  }

  *(p_var69 + 2290) = 0;
  this->var46 = 0;
  result = 0.0;
  *&this->var138 = 0u;
  *&this->var139[7] = 0u;
  *&this->var139[15] = 0u;
  *&this->var139[23] = 0u;
  this->var139[31] = 0;
  this->var48 = 2;
  *(p_var69 + 3222) = 1;
  *(p_var69 + 1615) = 2;
  return result;
}

BOOL CAWBAFE::InitialReset(CAWBAFE *this, BOOL a2)
{
  p_var68 = &this->var68;
  p_var20 = &this->var20;
  this->var126 = 0;
  this->var84 = 0;
  this->var128 = 0;
  this->var52 = 0.5;
  bzero(this->var53, 0x1000uLL);
  *&this->var17 = 1114128;
  this->var15 = 1;
  this->var26 = a2;
  *&this->var110 = 0;
  this->var25 = 100;
  *(p_var68 + 22) = 2560;
  *(p_var68 + 3) = 1065353216;
  *(p_var68 + 2) = 0x1000100010001;
  *(p_var68 + 1) = 65537;
  *(p_var68 + 4) = 1;
  var113 = this->var113;
  if (var113)
  {
    *(var113 + 1598) = 0;
    *(var113 + 382) = 0;
    *(var113 + 194) = 0uLL;
    *(var113 + 780) = 0;
    *(var113 + 795) = 4;
    *(var113 + 384) = 0;
    *(this->var113 + 383) = 0;
    *(this->var113 + 386) = 0;
    *(this->var113 + 385) = 0;
  }

  bzero(this->var141, 0x300uLL);
  this->var37 = 4000;
  this->var29 = 4000;
  *p_var20 = xmmword_1C9332350;
  *(p_var20 + 1) = xmmword_1C9332360;
  *(p_var20 + 2) = xmmword_1C9332370;
  *(p_var20 + 3) = xmmword_1C9332380;
  *(p_var20 + 4) = xmmword_1C9332390;
  *(p_var20 + 5) = xmmword_1C93323A0;
  this->var24[2][2] = 6996;
  __asm { FMOV            V0.2S, #15.5 }

  *&this->var40 = _D0;
  *this->var112 = 0x100000001DBBLL;
  *(p_var68 + 141) = 9183;
  *this->var79 = 0x100000001DBBLL;
  *(p_var68 + 36) = 9183;
  *&this->var33[1] = 268439552;
  *(p_var20 + 15) = 0x100023DF10001DBBLL;
  *(p_var68 + 88) = 1073758208;
  *(p_var68 + 48) = 0xB400000100;
  p_var68[24] = 0;
  *&this->var35 = 0x400F7C003FEDD800;
  *this->var134 = 0u;
  *&this->var134[4] = 0u;
  *&this->var135[2] = 0u;
  *(p_var68 + 43) = 0x4000400040004000;
  memset(this->var66, 1, sizeof(this->var66));
  *this->var67 = 0x5DC0190003C0001;
  *&this->var67[4] = 1310726400;
  *p_var68 = 6;
  *&this->var85[16][0] = xmmword_1C933037C;
  *&this->var85[20][0] = unk_1C933038C;
  *&this->var85[24][0] = xmmword_1C933039C;
  *&this->var85[28][0] = 0x117C0C08117C0C62;
  *&this->var85[0][0] = projPosDefault;
  *&this->var85[4][0] = unk_1C933034C;
  *&this->var85[8][0] = xmmword_1C933035C;
  *&this->var85[12][0] = unk_1C933036C;
  *&this->var133[16][0] = xmmword_1C93303F4;
  *&this->var133[20][0] = unk_1C9330404;
  *&this->var133[24][0] = xmmword_1C9330414;
  *&this->var133[28][0] = 0x113E0BEB113E0C44;
  *&this->var133[0][0] = dayProjPosDefault;
  *&this->var133[4][0] = unk_1C93303C4;
  *&this->var133[8][0] = xmmword_1C93303D4;
  *&this->var133[12][0] = unk_1C93303E4;
  *&this->var87[2][2] = unk_1C9330448;
  *&this->var87[5][1] = xmmword_1C9330458;
  *&this->var87[0][0] = x2CCTLutDefault;
  *&this->var89[1][7] = xmmword_1C9330488;
  *&this->var89[0][8] = unk_1C9330478;
  *&this->var89[0][0] = ccm2DCoefficientDefault;
  *&this->var89[5][1] = unk_1C93304C4;
  *&this->var89[4][4] = unk_1C93304B8;
  *&this->var89[3][5] = xmmword_1C93304A8;
  *&this->var89[2][6] = unk_1C9330498;
  *&this->var55[2][0] = unk_1C93306E6;
  *&this->var55[4][0] = xmmword_1C93306F6;
  *&this->var55[0][0] = awbPostTintParamDefault;
  this->var63 = ccmLuxClipDefault;
  this->var14.var3 = 64;
  this->var14.var5 = 256;
  *(p_var68 + 45) = 30;
  *(p_var68 + 58) = 8;
  this->var56[2] = 4381;
  *this->var56 = 314510488;
  this->var57[8] = 800;
  *this->var57 = awbMixLightingParam_ccmDefault;
  *this->var58 = -587202304;
  *this->var59 = 131073;
  *&this->var60[5] = *(&awbHistTrimFilterVDefault + 10);
  *this->var60 = awbHistTrimFilterVDefault;
  this->var61[2] = 64;
  *this->var61 = 8388672;
  *&this->var62[16] = xmmword_1C9330766;
  *&this->var62[24] = unk_1C9330776;
  *this->var62 = awbHistTrimScaleProfileDefault;
  *&this->var62[8] = unk_1C9330756;
  memcpy(&this->var3, &ledWhitePointProjectionConfigDefault, sizeof(this->var3));
  *this->var137 = 0x8B608B608B60780;
  *&this->var137[4] = 192022957;
  *(p_var68 + 445) = 106;
  memcpy(this->var114, &skin2whiteLUTDefault, 0x350uLL);
  var6 = this->var6;
  if (var6)
  {
    *(var6 + 17) = 0u;
    *(var6 + 18) = 0u;
    *(var6 + 15) = 0u;
    *(var6 + 16) = 0u;
    *(var6 + 13) = 0u;
    *(var6 + 14) = 0u;
    *(var6 + 11) = 0u;
    *(var6 + 12) = 0u;
    *(var6 + 9) = 0u;
    *(var6 + 10) = 0u;
    *(var6 + 7) = 0u;
    *(var6 + 8) = 0u;
    *(var6 + 5) = 0u;
    *(var6 + 6) = 0u;
    *(var6 + 3) = 0u;
    *(var6 + 4) = 0u;
    *(var6 + 1) = 0u;
    *(var6 + 2) = 0u;
    *var6 = 0u;
    *(var6 + 300) = 0u;
  }

  this->var49 = 0;
  p_var68[2104] = 0;
  p_var68[1785] = 0;
  p_var68[2372] = 0;
  *(p_var68 + 537) = 0;
  *(p_var68 + 98) = 3;
  memcpy(this->var100.var1, &unk_1C9330ADC, 0xCuLL);
  memcpy(this->var100.var2, &unk_1C9330AFC, 0xCuLL);
  *&this->var101.var1[3] = unk_1C9330B2C;
  *&this->var101.var1[7] = xmmword_1C9330B3C;
  *&this->var101.var2[3] = unk_1C9330B4C;
  this->var101.var2[7] = 0;
  *&this->var101.var0 = defaultCCMStrengthTuningTable;
  p_var68[536] = 0;
  *(p_var68 + 133) = 0;
  memcpy(&this->var118, &defaultWPStabeZoneControlTable, sizeof(this->var118));
  *&this->var142.var0 = 0u;
  *this->var142.var3.var2 = 0u;
  *&this->var142.var3.var3[1] = 0u;
  *&this->var142.var3.var5 = 0u;
  return this->var2 && this->var4 && this->var5 && this->var6 && this->var113 != 0;
}

char *CAWBAFE::SetHistogramWeight(char *result, unsigned int a2, uint64_t a3)
{
  result[20660] = a2;
  if (a2)
  {
    v3 = result + 20648;
    v4 = result + 14504;
    v5 = a2;
    v6 = (a3 + 2);
    do
    {
      *v3++ = *(v6 - 1);
      result = memcpy(v4, v6, 0x400uLL);
      v4 += 1024;
      v6 += 513;
      --v5;
    }

    while (v5);
  }

  return result;
}

__n128 CAWBAFE::UpdateCSCConfig(CAWBAFE *this, const sFEStatCSCConfig *a2)
{
  result = *a2->var0;
  v3 = *&a2->var0[8];
  v4 = *&a2->var1[7];
  *&this->var13.var3[1] = *&a2->var3[1];
  *&this->var13.var0[8] = v3;
  *&this->var13.var1[7] = v4;
  *this->var13.var0 = result;
  return result;
}

__n128 CAWBAFE::UpdateColorHistConfig(CAWBAFE *this, const sFEStatColorHistConfig *a2)
{
  result = *a2->var0;
  v3 = *&a2->var0[8];
  v4 = *&a2->var1[2];
  *&this->var14.var1[14] = *&a2->var1[14];
  *&this->var14.var0[8] = v3;
  *&this->var14.var1[2] = v4;
  *this->var14.var0 = result;
  return result;
}

__n128 CAWBAFE::SetCCM2DCoefficient(CAWBAFE *this, __int16 *a2, __int16 *a3, __int16 *a4, __int16 *a5, __int16 *a6, __n128 *a7)
{
  v7 = a2[8];
  *&this->var89[0][0] = *a2;
  this->var89[0][8] = v7;
  v8 = *a3;
  this->var89[1][8] = a3[8];
  *&this->var89[1][0] = v8;
  v9 = *a4;
  this->var89[2][8] = a4[8];
  *&this->var89[2][0] = v9;
  v10 = *a5;
  this->var89[3][8] = a5[8];
  *&this->var89[3][0] = v10;
  v11 = *a6;
  this->var89[4][8] = a6[8];
  *&this->var89[4][0] = v11;
  result = *a7;
  this->var89[5][8] = a7[1].n128_i16[0];
  *&this->var89[5][0] = result;
  return result;
}

CAWBAFE *CAWBAFE::SetMixLightingXLoc(CAWBAFE *this, const unsigned __int16 *a2)
{
  v2 = a2[2];
  *this->var56 = *a2;
  this->var56[2] = v2;
  return this;
}

__n128 CAWBAFE::SetMixLightingCCM(CAWBAFE *this, __n128 *a2)
{
  result = *a2;
  this->var57[8] = a2[1].n128_i16[0];
  *this->var57 = result;
  return result;
}

__n128 CAWBAFE::SetHistogramTrimFilterV(CAWBAFE *this, const unsigned __int16 *a2)
{
  result = *a2;
  *&this->var60[5] = *(a2 + 5);
  *this->var60 = result;
  return result;
}

CAWBAFE *CAWBAFE::SetHistogramTrimFilterH(CAWBAFE *this, const unsigned __int16 *a2)
{
  v2 = *a2;
  this->var61[2] = a2[2];
  *this->var61 = v2;
  return this;
}

__n128 CAWBAFE::SetHistogramTrimScaleProfile(CAWBAFE *this, const unsigned __int16 *a2)
{
  result = *a2;
  v3 = *(a2 + 1);
  v4 = *(a2 + 3);
  *&this->var62[16] = *(a2 + 2);
  *&this->var62[24] = v4;
  *this->var62 = result;
  *&this->var62[8] = v3;
  return result;
}

uint64_t CAWBAFE::SetScheme(uint64_t result, int a2)
{
  *(result + 20708) = a2;
  *(result + 20712) = 1;
  return result;
}

uint64_t CAWBAFEH14::SetSlaveCameraListColorMatchingModel(uint64_t result, int a2, uint64_t a3)
{
  *(result + 23897) = 1;
  *(result + 23900) = a2;
  v3 = (a3 + 12);
  v4 = (result + 23920);
  v5 = 4;
  do
  {
    *(v4 - 4) = *(v3 - 3);
    *(v4 - 2) = *(v3 - 2);
    *(v4 - 1) = *(v3 - 1);
    *v4 = *v3;
    v4[1] = v3[1];
    v4[2] = v3[2];
    v4[3] = v3[3];
    *(v4 - 3) = 1;
    v3 += 7;
    v4 += 171;
    --v5;
  }

  while (v5);
  return result;
}

CAWBAFE *CAWBAFE::SensorCalSet(CAWBAFE *this, float a2, float a3, float a4, float a5, float a6, float a7, float a8, float a9)
{
  LOWORD(v9) = 0x4000;
  if (a4 > 0.0 && a8 > 0.0)
  {
    v9 = ((a8 * 16384.0) / a4);
  }

  this->var90.var0 = v9;
  LOWORD(v9) = 0x4000;
  if (a5 > 0.0 && a9 > 0.0)
  {
    v9 = ((a9 * 16384.0) / a5);
  }

  this->var90.var1 = v9;
  LOWORD(v9) = 0x4000;
  if (a2 > 0.0 && a6 > 0.0)
  {
    v9 = ((a6 * 16384.0) / a2);
  }

  this->var90.var2 = v9;
  LOWORD(v9) = 0x4000;
  if (a3 > 0.0 && a7 > 0.0)
  {
    v9 = ((a7 * 16384.0) / a3);
  }

  this->var90.var3 = v9;
  return this;
}

void CAWBAFE::GetRawRGBtoXYZCCM(CAWBAFE *this, unsigned int a2, int *a3, float a4)
{
  v63 = 0;
  v52 = 0;
  v53 = 0;
  v55 = 0;
  v54 = 0;
  var63 = this->var63;
  if (a2 >= 0x1964)
  {
    v7 = 6500;
  }

  else
  {
    v7 = a2;
  }

  if (v7 <= 0x9C4)
  {
    v8 = 2500;
  }

  else
  {
    v8 = v7;
  }

  ColorRatioXFromCCT = CAWBAFE::GetColorRatioXFromCCT(this, v8, a4);
  ColorRatioYFromCCT = CAWBAFE::GetColorRatioYFromCCT(this, v8, ColorRatioXFromCCT);
  CAWBAFE::ComputeChannelGainsfromHistWP(this, ColorRatioXFromCCT, ColorRatioYFromCCT, &v63 + 1, &v63, v11, v12, v13, v14, v15);
  v17 = 1000000.0 / v8;
  v18 = 1;
  do
  {
    v19 = v18;
    v20 = (&CCT2xyTable + 12 * v18++);
  }

  while (v17 > *v20);
  v21 = (&CCT2xyTable + 12 * v19);
  v23 = *(v21 - 3);
  v22 = (v21 - 3);
  v24 = *v20 - v23;
  v25 = v24 == 0.0;
  v26 = (v17 - v23) / v24;
  v27 = *(v22 + 1);
  v28 = v20[1] - v27;
  v29 = v27 + (v26 * v28);
  v30 = v27 + (v28 * 0.0);
  if (v25)
  {
    v26 = 0.0;
  }

  else
  {
    v30 = v29;
  }

  v31 = *(v22 + 2) + (v26 * (v20[2] - *(v22 + 2)));
  v62[0] = v30 / v31;
  v62[1] = 1.0;
  v62[2] = ((1.0 - v30) - v31) / v31;
  v32 = v61;
  v33 = CAWBAFE::InterpCCMfromBases(v16, ColorRatioXFromCCT, ColorRatioYFromCCT, var63, v61, &defaultCCMStrengthTuningTable, this->var89, 1.0);
  CAWBAFE::GetAdaptationMatrix(v33, flt_1C9332668, v62, v60, v34, v35, v36, v37, v38, v39, v40);
  CAWBAFE::Multiply3by3Matrix(v41, v60[0].i32, flt_1C9332674, v59);
  v43 = 0;
  v44 = 0;
  do
  {
    for (i = 0; i != 3; ++i)
    {
      v46 = v44++;
      v58[v46] = v32[i];
    }

    ++v43;
    v32 += 3;
  }

  while (v43 != 3);
  CAWBAFE::Multiply3by3Matrix(v42, v59, v58, v57);
  v51 = *(&v63 + 1);
  HIDWORD(v53) = 1065353216;
  v56 = v63;
  CAWBAFE::Multiply3by3Matrix(v47, v57, &v51, v59);
  for (j = 0; j != 9; ++j)
  {
    v49 = v59[j];
    if (v49 <= 0.0)
    {
      v50 = -0.5;
    }

    else
    {
      v50 = 0.5;
    }

    a3[j] = (v49 + v50);
  }
}

CAWBAFE *CAWBAFE::GetCalibrationGain(CAWBAFE *this, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned __int16 *a6, unsigned __int16 *a7)
{
  *a2 = 2500;
  *a3 = 5000;
  *a4 = this->var90.var0;
  *a5 = this->var90.var1;
  *a6 = this->var90.var2;
  *a7 = this->var90.var3;
  return this;
}

CAWBAFE *CAWBAFE::GetInterpolatedCSensorCalGains(CAWBAFE *this, unsigned __int16 *a2, unsigned __int16 *a3, unsigned int a4)
{
  if (a4 <= 0x9C4)
  {
    v4 = 2500;
  }

  else
  {
    v4 = a4;
  }

  if (v4 >= 0x1388)
  {
    v4 = 5000;
  }

  v5 = 5000 - v4;
  v6 = v4 - 2500;
  *a2 = (v5 * this->var90.var0 + v6 * this->var90.var2) / 0x9C4;
  *a3 = (v5 * this->var90.var1 + v6 * this->var90.var3) / 0x9C4;
  return this;
}

float CAWBAFE::GetColorRatioXFromCCT(CAWBAFE *this, unsigned int a2, float a3)
{
  var87 = this->var87;
  if (this->var87[0][2] >= a2)
  {
    LOWORD(a3) = *var87;
LABEL_10:
    v16 = LODWORD(a3);
    return v16 * 0.0039062;
  }

  v4 = var87[this->var88 - 1];
  if (v4[2] <= a2)
  {
    LOWORD(a3) = *v4;
    goto LABEL_10;
  }

  v5 = -1;
  do
  {
    v6 = var87[v5 + 2];
    v7 = v6[2];
    ++v5;
  }

  while (v7 < a2);
  v8 = var87[v5];
  LOWORD(a3) = v8[2];
  *&v9 = LODWORD(a3);
  v10 = 1000000.0 / *&v9;
  LOWORD(v9) = *v8;
  v11 = v9;
  *&v12 = v7;
  LOWORD(v12) = *v6;
  v13 = v12;
  v14 = (1000000.0 / v7) - v10;
  v15 = 0.0;
  if (v14 != 0.0)
  {
    v15 = ((1000000.0 / a2) - v10) / v14;
  }

  v16 = v11 + (v15 * (v13 - v11));
  return v16 * 0.0039062;
}

float CAWBAFE::GetColorRatioYFromCCT(CAWBAFE *this, unsigned int a2, float a3)
{
  if (this->var87[0][2] >= a2)
  {
    LOWORD(a3) = this->var87[0][1];
LABEL_10:
    v16 = LODWORD(a3);
    return v16 * 0.0039062;
  }

  var87 = this->var87;
  v4 = this->var87[this->var88 - 1];
  if (v4[2] <= a2)
  {
    LOWORD(a3) = v4[1];
    goto LABEL_10;
  }

  v5 = -1;
  do
  {
    v6 = var87[v5 + 2];
    v7 = v6[2];
    ++v5;
  }

  while (v7 < a2);
  v8 = var87[v5];
  LOWORD(a3) = v8[2];
  *&v9 = LODWORD(a3);
  v10 = 1000000.0 / *&v9;
  LOWORD(v9) = v8[1];
  v11 = v9;
  *&v12 = v7;
  LOWORD(v12) = v6[1];
  v13 = v12;
  v14 = (1000000.0 / v7) - v10;
  v15 = 0.0;
  if (v14 != 0.0)
  {
    v15 = ((1000000.0 / a2) - v10) / v14;
  }

  v16 = v11 + (v15 * (v13 - v11));
  return v16 * 0.0039062;
}

float CAWBAFE::ComputeChannelGainsfromHistWP(CAWBAFE *this, float a2, float a3, float *a4, float *a5, double a6, double a7, double a8, double a9, double a10)
{
  var3 = this->var14.var3;
  v14 = 1.0;
  var5 = this->var14.var5;
  LODWORD(a7) = 1.0;
  v16 = 1.0;
  if (this->var13.var6)
  {
    LOWORD(a7) = this->var13.var5[0];
    *&a7 = *&a7 * 255.0 * 0.000122070312;
    LOWORD(a10) = this->var13.var5[1];
    v16 = *&a10 * 255.0 * 0.000122070312;
  }

  v17 = vcvts_n_f32_u32(var5, 0x10uLL);
  v18 = vcvts_n_f32_u32(var3, 0x10uLL);
  if (this->var14.var0[0] > 0x100u)
  {
    v14 = 256.0;
  }

  v19 = ((a2 / v18) - (this->var13.var2[1] - (1048600.0 / var3))) / (v14 * *&a7);
  v20 = ((a3 / v17) - (this->var13.var2[2] - (1048600.0 / var5))) / (v14 * v16);
  v21 = vcvts_n_f32_s32(this->var13.var1[3], 0xCuLL);
  v22 = vcvts_n_f32_s32(this->var13.var1[6], 0xCuLL);
  v23 = vcvts_n_f32_s32(this->var13.var1[5], 0xCuLL);
  v24 = vcvts_n_f32_s32(this->var13.var1[8], 0xCuLL);
  v25 = (v23 * v23) + (v21 * v21);
  v26 = v23 / v25;
  v27 = (v24 * v24) + (v22 * v22);
  v28 = v24 / v27;
  v29 = exp2f(((v20 * (v22 / v27)) + (v19 * (v21 / v25))) * 0.03125);
  v30 = exp2f(((v20 * v28) + (v19 * v26)) * 0.03125);
  v31 = ((this->var13.var0[4] + this->var13.var0[3] + this->var13.var0[5]) - (this->var13.var0[5] * v30)) - (this->var13.var0[3] * v29);
  v32 = this->var13.var0[4];
  *a4 = v31 / (v29 * v32);
  result = v31 / (v30 * v32);
  *a5 = result;
  return result;
}

uint64_t CAWBAFE::InterpCCMfromBases(CAWBAFE *this, float a2, float a3, float a4, int (*a5)[3], const sTuningCurvePoint *a6, const __int16 (*a7)[9], float a8)
{
  v13 = a6->var1[0];
  v14 = a6->var1[1];
  if (v14 <= a4)
  {
    v17 = a6->var1[a6->var0 - 1];
    if ((a4 + 0.5) <= v17)
    {
      LOWORD(v17) = (a4 + 0.5);
    }

    if (a6->var1[0] <= v17)
    {
      LOWORD(v13) = v17;
    }

    v16 = CAWBAFE::calculateWeightFromTuningTable(this, a6, v13);
  }

  else
  {
    v15 = (a4 - v13) / (v14 - v13);
    if (v15 > 1.0)
    {
      v15 = 1.0;
    }

    if (v15 < 0.0)
    {
      v15 = 0.0;
    }

    v16 = ((v15 * a6->var2[1]) + ((1.0 - v15) * a6->var2[0])) * 0.0039062;
  }

  v18 = 0;
  v19 = 0;
  v20 = v16 * a8;
  v21 = v31;
  do
  {
    for (i = 0; i != 36; i += 12)
    {
      result = (*a7)[v19 + 36];
      *&v21[i] = (((((((*a7)[v19 + 9] * a2) * 0.0625) + (*a7)[v19]) + (((*a7)[v19 + 18] * a3) * 0.0625)) + ((((*a7)[v19 + 27] * a2) * a2) * 0.0039062)) + (((result * a3) * a3) * 0.0039062)) + ((*a7)[v19 + 45] * v20);
      ++v19;
    }

    ++v18;
    v21 += 4;
  }

  while (v18 != 3);
  v24 = 0;
  v25 = v31;
  do
  {
    v26 = 0;
    v27 = 0.0;
    do
    {
      v27 = *&v25[v26] + v27;
      v26 += 4;
    }

    while (v26 != 12);
    for (j = 0; j != 3; ++j)
    {
      v29 = (*&v25[j * 4] * 4096.0) / v27;
      *&v25[j * 4] = v29;
      if (v29 <= 0.0)
      {
        v30 = v29 + -0.5;
      }

      else
      {
        if (v29 > 16383.0)
        {
          v29 = 16383.0;
        }

        *&v25[j * 4] = v29;
        v30 = v29 + 0.5;
      }

      (*a5)[j] = v30;
    }

    ++v24;
    v25 += 12;
    ++a5;
  }

  while (v24 != 3);
  return result;
}

float CAWBAFE::calculateWeightFromTuningTable(CAWBAFE *this, const sTuningCurvePoint *a2, unsigned int a3)
{
  var1 = a2->var1;
  var0 = a2->var0;
  if (var0 < 2)
  {
    LODWORD(v6) = 1;
  }

  else
  {
    v5 = &a2->var1[1];
    v6 = 1;
    while (1)
    {
      v7 = *v5++;
      if (v7 > a3)
      {
        break;
      }

      if (var0 == ++v6)
      {
        LODWORD(v6) = a2->var0;
        break;
      }
    }
  }

  v8 = var0 - 1;
  if (v6 < v8)
  {
    v8 = v6;
  }

  v9 = var1[v8 - 1];
  v10 = (a3 - v9) / (var1[v8] - v9);
  if (v10 > 1.0)
  {
    v10 = 1.0;
  }

  if (v10 < 0.0)
  {
    v10 = 0.0;
  }

  result = ((v10 * a2->var2[v8]) + ((1.0 - v10) * a2->var1[v8 + 7])) * 0.0039062;
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

float CAWBAFE::Multiply3by3Matrix(CAWBAFE *this, float *a2, float *a3, float *a4)
{
  *a4 = ((a2[1] * a3[3]) + (*a2 * *a3)) + (a2[2] * a3[6]);
  a4[1] = ((a2[1] * a3[4]) + (*a2 * a3[1])) + (a2[2] * a3[7]);
  a4[2] = ((a2[1] * a3[5]) + (*a2 * a3[2])) + (a2[2] * a3[8]);
  a4[3] = ((a2[4] * a3[3]) + (a2[3] * *a3)) + (a2[5] * a3[6]);
  a4[4] = ((a2[4] * a3[4]) + (a2[3] * a3[1])) + (a2[5] * a3[7]);
  a4[5] = ((a2[4] * a3[5]) + (a2[3] * a3[2])) + (a2[5] * a3[8]);
  a4[6] = ((a2[7] * a3[3]) + (a2[6] * *a3)) + (a2[8] * a3[6]);
  a4[7] = ((a2[7] * a3[4]) + (a2[6] * a3[1])) + (a2[8] * a3[7]);
  result = ((a2[7] * a3[5]) + (a2[6] * a3[2])) + (a2[8] * a3[8]);
  a4[8] = result;
  return result;
}

float CAWBAFE::GetAdaptationMatrix(CAWBAFE *this, float *a2, float *a3, int32x4_t *a4, double a5, double a6, double a7, double a8, double a9, double a10, int32x4_t a11)
{
  v13 = a2[1];
  v14 = a2[2];
  v15 = ((v13 * 0.2664) + (*a2 * 0.8951)) + (v14 * -0.1614);
  v16 = ((v13 * 1.7135) + (*a2 * -0.7502)) + (v14 * 0.0367);
  v17 = ((v13 * -0.0685) + (*a2 * 0.0389)) + (v14 * 1.0296);
  v18 = a3[1];
  v19 = a3[2];
  v20 = ((v18 * 0.2664) + (*a3 * 0.8951)) + (v19 * -0.1614);
  v21 = ((v18 * 1.7135) + (*a3 * -0.7502)) + (v19 * 0.0367);
  v22 = ((v18 * -0.0685) + (*a3 * 0.0389)) + (v19 * 1.0296);
  v23 = v20 / v15;
  v24 = v23 > 10.0 || v23 < 0.0;
  if (v23 < 0.0 && v23 <= 10.0)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = 10.0;
  }

  if (v24)
  {
    v23 = v25;
  }

  v26 = v21 / v16;
  v27 = v26 > 10.0 || v26 < 0.0;
  if (v26 < 0.0 && v26 <= 10.0)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = 10.0;
  }

  if (v27)
  {
    v26 = v28;
  }

  v29 = v22 / v17;
  v30 = v29 > 10.0 || v29 < 0.0;
  if (v29 < 0.0 && v29 <= 10.0)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = 10.0;
  }

  *a11.i8 = vmul_n_f32(0x3EDD57BC3F7CAB60, v23);
  v32 = vzip1q_s32(a11, a11);
  v32.i32[2] = a11.i32[0];
  *v11.i8 = vmul_n_f32(0x3F04B33EBE169446, v26);
  v33 = vzip1q_s32(v11, v11);
  v33.i32[2] = v11.i32[0];
  if (!v30)
  {
    v31 = v29;
  }

  *v12.i8 = vmul_n_f32(0x3D49E4503E23CC8ELL, v31);
  v34 = vzip1q_s32(v12, v12);
  v34.i32[2] = v12.i32[0];
  v35 = vmlaq_f32(vmulq_f32(v33, xmmword_1C93323C0), xmmword_1C93323D0, v32);
  v36 = v26 * 0.04004;
  v37.i32[0] = vdup_lane_s32(*v11.i8, 1).u32[0];
  v37.f32[1] = v26 * 0.04004;
  v37.i64[1] = v37.i64[0];
  v38.i32[0] = vdup_lane_s32(*a11.i8, 1).u32[0];
  v38.f32[1] = v23 * -0.00853;
  v38.i64[1] = v38.i64[0];
  v39.i32[0] = vdup_lane_s32(*v12.i8, 1).u32[0];
  v39.f32[1] = v31 * 0.96849;
  v39.i64[1] = v39.i64[0];
  v40 = vmlaq_f32(vmlaq_f32(vmulq_f32(v37, xmmword_1C93323F0), xmmword_1C9332400, v38), xmmword_1C9332410, v39);
  *a4 = vmlaq_f32(v35, xmmword_1C93323E0, v34);
  a4[1] = vuzp1q_s32(v40, vrev64q_s32(v40));
  result = ((v36 * 0.0367) + ((v23 * -0.00853) * -0.1614)) + ((v31 * 0.96849) * 1.0296);
  *a4[2].i32 = result;
  return result;
}

void CAWBAFE::~CAWBAFE(CAWBAFE *this)
{
  this->var0 = &unk_1F48DE968;
  var2 = this->var2;
  if (var2)
  {
    (*(*var2 + 8))(var2);
  }

  var4 = this->var4;
  if (var4)
  {
    (*(*var4 + 8))(var4);
  }

  var5 = this->var5;
  if (var5)
  {
    (*(*var5 + 8))(var5);
  }

  var6 = this->var6;
  if (var6)
  {
    free(var6);
  }

  var113 = this->var113;
  if (var113)
  {
    free(var113);
  }
}

void CAWBAFEH14::~CAWBAFEH14(CAWBAFEH14 *this)
{
  this->var0 = &unk_1F48DEA88;
  if (this->var148 >= 0x32u)
  {
    puts("MSG: AWB RESET: CAWBAFEH14::~CAWBAFEH14");
  }

  CAWBAFE::~CAWBAFE(this);
}

{
  CAWBAFEH14::~CAWBAFEH14(this);

  JUMPOUT(0x1CCA85E20);
}

BOOL useLowerLocalHistogramThreshold()
{
  if (useLowerLocalHistogramThreshold_onceToken != -1)
  {
    useLowerLocalHistogramThreshold_cold_1();
  }

  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getFigCapturePlatformIdentifierSymbolLoc_ptr;
  v6 = getFigCapturePlatformIdentifierSymbolLoc_ptr;
  if (!getFigCapturePlatformIdentifierSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getFigCapturePlatformIdentifierSymbolLoc_block_invoke;
    v2[3] = &unk_1E833ABC8;
    v2[4] = &v3;
    __getFigCapturePlatformIdentifierSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    useLowerLocalHistogramThreshold_cold_2();
  }

  return v0() > 9;
}

void sub_1C92CD1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getFigCapturePlatformIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v4[0] = 0;
  if (!CMCaptureLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CMCaptureLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E833ABE8;
    v6 = 0;
    CMCaptureLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = CMCaptureLibraryCore_frameworkLibrary;
  if (!CMCaptureLibraryCore_frameworkLibrary)
  {
    __getFigCapturePlatformIdentifierSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "FigCapturePlatformIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFigCapturePlatformIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CMCaptureLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CMCaptureLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_0()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t OUTLINED_FUNCTION_4()
{

  return _os_log_send_and_compose_impl();
}

BOOL OUTLINED_FUNCTION_5(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

uint64_t compareFloat4Luma(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12) > *(a2 + 12))
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t OUTLINED_FUNCTION_9(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

void CAWBAFEFDAssist::CalculateWhiteColorHist(CAWBAFEFDAssist *this)
{
  v1 = 0;
  v2 = &unk_1C932FBEC;
  v3 = v33;
  do
  {
    for (i = 0; i != 7; ++i)
    {
      v5 = 0;
      if (v1 != 18 && v1 && i && i != 6)
      {
        v5.i16[0] = v2[i];
        *v5.i32 = v5.u32[0];
      }

      *&v3[4 * i] = v5.i32[0];
    }

    ++v1;
    v3 += 28;
    v2 += 5;
  }

  while (v1 != 19);
  v6 = 0;
  v5.i32[0] = *(this + 10011);
  v7 = xmmword_1C932FAE0;
  v8 = xmmword_1C932FAF0;
  v9 = vdupq_n_s64(7uLL);
  v10 = &v35;
  v11 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v9, v8)), v5).u8[0])
    {
      *(v10 - 2) = ((v6 + 0.5) + -3.5) + *v5.i32;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v8)), v5).i8[2])
    {
      *(v10 - 1) = (((v6 | 1u) + 0.5) + -3.5) + *v5.i32;
    }

    if (vuzp1_s16(v5, vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v7))).i32[1])
    {
      *v10 = (((v6 | 2u) + 0.5) + -3.5) + *v5.i32;
      v10[1] = (((v6 | 3u) + 0.5) + -3.5) + *v5.i32;
    }

    v6 += 4;
    v7 = vaddq_s64(v7, v11);
    v8 = vaddq_s64(v8, v11);
    v10 += 4;
  }

  while (v6 != 8);
  v12 = 0;
  v5.i32[0] = *(this + 10012);
  v13 = xmmword_1C932FAE0;
  v14 = xmmword_1C932FAF0;
  v15 = vdupq_n_s64(0x13uLL);
  v16 = v34;
  v17 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v15, v14)), v5).u8[0])
    {
      *(v16 - 2) = ((v12 + 0.5) + -9.5) + *v5.i32;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v14)), v5).i8[2])
    {
      *(v16 - 1) = (((v12 | 1u) + 0.5) + -9.5) + *v5.i32;
    }

    if (vuzp1_s16(v5, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v13))).i32[1])
    {
      *v16 = (((v12 | 2u) + 0.5) + -9.5) + *v5.i32;
      v16[1] = (((v12 | 3u) + 0.5) + -9.5) + *v5.i32;
    }

    v12 += 4;
    v13 = vaddq_s64(v13, v17);
    v14 = vaddq_s64(v14, v17);
    v16 += 4;
  }

  while (v12 != 20);
  v18 = this + 35932;
  bzero(this + 35932, 0x1000uLL);
  v19 = 0;
  v20 = 32;
  v21 = v18;
  do
  {
    v22 = 0;
    v23 = v19 + 1;
    do
    {
      *&v21[v22] = 0;
      v25 = *&v34[v22 + 68];
      if (v25 >= -0.5 && v25 < 31.5)
      {
        v27 = *&v33[4 * v19 + 532];
        if (v27 >= -0.5 && v27 < 31.5)
        {
          v29 = (v25 + 0.5);
          v30 = (v27 + 0.5);
          v31 = (*&v34[v22 + 72] - v29) + -0.5;
          v32 = (*&v33[4 * v23 + 532] - v30) + -0.5;
          v24 = &v33[v20];
          *&v18[128 * v30 + 4 * v29] = ((((*&v24[v22 - 28] * (((v29 + 0.5) - v25) * v32)) + ((v31 * v32) * *&v24[v22 - 32])) + ((((v30 + 0.5) - v27) * v31) * *&v24[v22 - 4])) + ((((v29 + 0.5) - v25) * ((v30 + 0.5) - v27)) * *&v24[v22]));
        }
      }

      v22 += 4;
    }

    while (v22 != 24);
    v21 += 128;
    v20 += 28;
    ++v19;
  }

  while (v23 != 18);
}

CAWBAFEFDAssist *CAWBAFEFDAssist::GetfdWindowRGB(CAWBAFEFDAssist *this, fdAWBMetaData *a2, const _AEAWB_Stat_Elem *a3, const unsigned int *a4)
{
  v4 = 0;
  v5 = 0;
  v6 = (a3 + 244);
  do
  {
    if (a4[v4 + 2])
    {
      v7 = *v6;
      if (*v6)
      {
        v8 = v7;
        v9 = *(v6 - 12) / v7;
        v10 = (this + 12 * v5 + 12312);
        *v10 = v9;
        v10[1] = *(v6 - 8) / v8;
        v10[2] = *(v6 - 4) / v8;
        ++v5;
      }
    }

    ++v4;
    v6 += 24;
  }

  while (v4 != 2);
  *(this + 7704) = v5;
  return this;
}

CAWBAFEFDAssist *CAWBAFEFDAssist::GetfdHiResWindowRGB(CAWBAFEFDAssist *this, fdAWBMetaData *a2, const _HighResAWBAE_Stat_Elem *a3, const unsigned int *a4)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = this + 15412;
  v9 = a3 + 12;
  do
  {
    if (a4[v4])
    {
      v10 = &v9[256 * v6];
      v11 = 16;
      LODWORD(this) = v7;
      do
      {
        if (*v10 && *(a2 + this + 2637) >= 0xC1u)
        {
          v12 = &v8[12 * v5];
          *v12 = (*(v10 - 3) / *v10);
          v12[1] = (*(v10 - 2) / *v10);
          v12[2] = (*(v10 - 1) / *v10);
          ++v5;
        }

        this = (this + 1);
        v10 += 16;
        --v11;
      }

      while (v11);
      v7 += 16;
      ++v6;
    }

    ++v4;
  }

  while (v4 != 16);
  *(a2 + 799) = v5;
  if (v5)
  {
    v13 = *(a2 + 401) + 1;
  }

  else
  {
    v13 = *(a2 + 401);
  }

  *(a2 + 401) = v13;
  return this;
}

CAWBAFEFDAssist *CAWBAFEFDAssist::MapSkinColorToWhiteWeighted(CAWBAFEFDAssist *this, fdAWBMetaData *a2, unsigned __int16 (*a3)[4])
{
  v5 = *(this + 40028);
  *(a2 + 778) = 1148846080;
  v6 = *(this + 10018);
  v7 = 0;
  if (!v6)
  {
    goto LABEL_14;
  }

  v8 = 0;
  v9 = vcvt_s32_f32(vmla_f32(0x3F0000003F000000, vdup_n_s32(0x43800000u), v5));
  v10 = 0;
  v11 = 0;
  v12 = 1000.0;
  v13 = vdup_n_s32(0x3B800000u);
  do
  {
    v14 = &(*a3)[4 * v8];
    v15.i32[0] = v14[2];
    v15.i32[1] = v14[3];
    v16 = vmul_f32(vcvt_f32_s32(vsub_s32(v9, v15)), v13);
    v17 = fabsf(sqrtf(vmuls_lane_f32(v16.f32[1], v16, 1) + (v16.f32[0] * v16.f32[0])));
    if (v17 < v12)
    {
      *(a2 + 778) = v17;
      v12 = v17;
    }

    v18 = vcgt_f32(0x40A0000040400000, vabs_f32(v16));
    if (v18.i32[0] & v18.i32[1])
    {
      v19 = (v16.f32[0] + 3.0);
      v20 = v16.f32[0];
      v21 = vmvn_s8(vcltz_f32(v16));
      if (!(v21.i8[0] & 1 | (v16.f32[0] == v20)))
      {
        v20 = (v16.f32[0] - 1);
      }

      v16.f32[0] = v16.f32[0] - v20;
      v22 = &fdSkinChistDist + 14 * (v16.f32[1] + 5.0);
      LOWORD(v20) = *&v22[2 * v19];
      v23 = 2 * v19 + 2;
      LOWORD(v3) = *&v22[v23];
      *&v24 = v16.f32[0] * LODWORD(v3);
      v25 = *&v24 + (LODWORD(v20) * (1.0 - v16.f32[0]));
      v22 += 14;
      LOWORD(v24) = *&v22[2 * v19];
      LOWORD(v4) = *&v22[v23];
      v4 = LODWORD(v4);
      v16.f32[0] = (v16.f32[0] * v4) + (v24 * (1.0 - v16.f32[0]));
      *v21.i32 = v16.f32[1];
      v3 = (v16.f32[1] - 1);
      if (!(v21.i8[4] & 1 | (v16.f32[1] == *v21.i32)))
      {
        *v21.i32 = (v16.f32[1] - 1);
      }

      v26 = ((v16.f32[1] - *v21.i32) * v16.f32[0]) + (v25 * (1.0 - (v16.f32[1] - *v21.i32)));
      *v11.i32 = *v11.i32 + v26;
      v27.i32[0] = *v14;
      v27.i32[1] = v14[1];
      v10 = vcvt_u32_f32(vmla_n_f32(vcvt_f32_u32(v10), vcvt_f32_u32(v27), v26));
    }

    ++v8;
  }

  while (v6 > v8);
  if (*v11.i32 > 0.0)
  {
    v28 = 0;
    v7 = vmul_f32(vdiv_f32(vcvt_f32_u32(v10), vdup_lane_s32(v11, 0)), vdup_n_s32(0x3B800000u));
  }

  else
  {
LABEL_14:
    v28 = 2;
  }

  *(this + 40044) = v7;
  *(this + 8) = v28;
  return this;
}

float CAWBAFEFDAssist::EstimateCurve(float a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) <= a1)
  {
    v3 = 2;
    if (*(a3 + 16) <= a1)
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 1;
  }

  if (v3 >= 2)
  {
    v3 = 2;
  }

  v4 = (a3 + 8 * v3);
  v5 = v4[1];
  v6 = *(v4 - 2);
  if (*v4 != v6)
  {
    v7 = (a1 - v6) / (*v4 - v6);
    if (v7 > 1.0)
    {
      v7 = 1.0;
    }

    if (v7 < 0.0)
    {
      v7 = 0.0;
    }

    v5 = ((1.0 - v7) * *(v4 - 1)) + (v7 * v5);
  }

  result = 1.0;
  if (v5 <= 1.0)
  {
    result = v5;
  }

  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

void CAWBAFEFDAssist::FaceMaskDetection(CAWBAFEFDAssist *this, unsigned __int16 *a2, float *a3, float *a4, float *a5, float *a6)
{
  v8 = *a2;
  v9 = 0.0;
  v10 = 0.0;
  v11 = a2[1];
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  if (v8 < v11)
  {
    v18 = 0;
    v19 = 0;
    v20 = a2[2];
    v21 = a2[3];
    do
    {
      if (v20 < v21)
      {
        v22 = v20;
        do
        {
          v23 = ((v8 - *a3) * *a4) + ((v22 - a3[1]) * a4[1]);
          v24 = (this + 12 * (v8 * *(this + 6) + v22) + 20);
          v25 = fmaxf(v24[1], 1.0);
          if (v23 >= -0.2)
          {
            if (v23 > 0.15)
            {
              v13 = v13 + (*v24 / v25);
              v14 = v14 + (v25 / 255.0);
              v15 = v15 + (v24[2] / v25);
              ++v18;
            }
          }

          else
          {
            v9 = v9 + (*v24 / v25);
            v10 = v10 + (v25 / 255.0);
            v12 = v12 + (v24[2] / v25);
            ++v19;
          }

          ++v22;
        }

        while (v21 != v22);
      }

      LOWORD(v8) = v8 + 1;
    }

    while (v11 > v8);
    v16 = v19;
    v17 = v18;
  }

  v26 = v9 / v16;
  v27 = v10 / v16;
  v28 = v12 / v16;
  v29 = 1.0 - (1.0 / (expf((((vabds_f32(v13 / v17, v9 / v16) * 22.954) + -4.6162) + (vabds_f32(v14 / v17, v10 / v16) * 28.714)) + (vabds_f32(v15 / v17, v12 / v16) * 10.882)) + 1.0));
  if (v29 > 1.0)
  {
    v29 = 1.0;
  }

  if (v29 < 0.0)
  {
    v29 = 0.0;
  }

  *a6 = v29;
  *a5 = v26;
  a5[1] = v27;
  a5[2] = v28;
}

uint64_t CAWBAFEFDAssist::FaceSkinDetection(uint64_t result, unsigned __int16 *a2, float *a3, float *a4, float32x2_t *a5, uint64_t a6, double a7, double a8, double a9)
{
  v10 = *a2;
  v11 = a2[1];
  if (v10 >= v11)
  {
    v15 = 0;
    v16 = 0.0;
  }

  else
  {
    v12 = 0;
    v13 = a2[2];
    v14 = a2[3];
    v15 = 0;
    v16 = 0.0;
    do
    {
      if (v13 < v14)
      {
        v17 = v13;
        do
        {
          v18 = ((v10 - *a3) * *a4) + ((v17 - a3[1]) * a4[1]);
          v19 = result + 20 + 12 * (v10 * *(result + 12) + v17);
          if (v18 < -0.2 && (*(a6 + 116) & 0xFF000u) < 0x19000 || v18 > 0.15 && (*(a6 + 116) & 0x3FCu) <= 0x63)
          {
            v20.i32[0] = *v19;
            v20.i32[1] = fmaxf(*(v19 + 4), 1.0);
            v9.i32[0] = 1132396544;
            v9 = vdup_lane_s32(v9, 0);
            v9.i32[0] = v20.i32[1];
            v15 = vadd_f32(v15, vdiv_f32(v20, v9));
            v16 = v16 + (*(v19 + 8) / v20.f32[1]);
            ++v12;
          }

          ++v17;
        }

        while (v14 != v17);
      }

      LOWORD(v10) = v10 + 1;
    }

    while (v11 > v10);
    if (v12)
    {
      *&a9 = v12;
      v15 = vdiv_f32(v15, vdup_lane_s32(*&a9, 0));
      v16 = v16 / *&a9;
    }
  }

  *a5 = v15;
  a5[1].f32[0] = v16;
  return result;
}

CAWBAFEFDAssist *CAWBAFEFDAssist::UpdateANODTileProbTable(CAWBAFEFDAssist *this, fdAWBMetaData *a2, const _FE_3A_Stats_H15 *a3)
{
  if ((*(this + 40064) & 1) == 0)
  {
    v5 = *(a2 + 396);
    if (v5)
    {
      v6 = 0;
      v7 = a2 + 1613;
      do
      {
        v8 = v7[v6];
        if (v7[v6])
        {
          v9 = v8 >= 0x1F;
          v10 = v8 - 31;
          if (!v9)
          {
            v10 = 0;
          }

          v7[v6] = v10;
        }

        ++v6;
      }

      while (v5 > v6);
    }
  }

  result = CAWBAFEFDAssist::CalculateSkinTileANODProbMap(this, a2, a3, 1.0);
  v12 = *(a2 + 1588);
  v13 = *(a2 + 401);
  if (*(a2 + 1588))
  {
    ++v13;
  }

  *(a2 + 401) = v13;
  v14 = *(this + 7704);
  if (v14)
  {
    v15 = v12 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v14 = 0;
  }

  else
  {
    v16 = this + 12312;
    v17 = *(this + 7704);
    do
    {
      *(v16 + 3100) = *v16;
      *(v16 + 777) = *(v16 + 2);
      v16 += 12;
      --v17;
    }

    while (v17);
  }

  v18 = *(a2 + 396);
  if (v18)
  {
    for (i = 0; i < v18; ++i)
    {
      if (*(a2 + i + 1613) >= 0xC1u)
      {
        v20 = this + 12 * i + 20;
        v21 = this + 12 * v14 + 15412;
        *v21 = *v20;
        *(v21 + 2) = *(v20 + 2);
        ++v14;
      }
    }
  }

  *(a2 + 799) = v14;
  return result;
}

CAWBAFEFDAssist *CAWBAFEFDAssist::CalculateSkinTileANODProbMap(CAWBAFEFDAssist *this, fdAWBMetaData *a2, const _FE_3A_Stats_H15 *a3, float a4)
{
  v4 = a3;
  v6 = this;
  v7 = 0;
  v118 = 0.0;
  v117 = 0;
  v114 = 0.0;
  v109 = *(a2 + 795);
  if (v109 != 4)
  {
    v7 = *(a2 + 3152);
  }

  v108 = *(a2 + 789);
  v8 = *(a2 + 394);
  v9 = *(a2 + 395);
  *(this + 3) = v8;
  *(this + 4) = v9;
  v90 = v9;
  v10 = *(a2 + 9);
  if (v10)
  {
    v11 = *(a2 + 11);
    if (v11 != -1)
    {
      v12 = 0;
      v13 = 0;
      v14 = a2 + 56;
      v15 = *(a2 + 38 * v11 + 17) * *(a2 + 38 * v11 + 16);
      v86 = *(a3 + 4072) >> *(a3 + 343);
      v87 = *(a3 + 4071) >> *(a3 + 342);
      if (v10 >= 0xA)
      {
        this = 10;
      }

      else
      {
        this = v10;
      }

      v84 = v8 - 1;
      v77 = (a2 + 3164);
      v78 = a2 + 1613;
      HIDWORD(v16) = 0;
      v98 = 0.0;
      v99 = 0.0;
      v92 = 0.0;
      v93 = 0.0;
      v81 = a2;
      v82 = v7;
      v79 = v8;
      v89 = a2 + 56;
      v88 = *(a2 + 38 * v11 + 17) * *(a2 + 38 * v11 + 16);
      v85 = this;
      while (1)
      {
        v17 = &v14[152 * v12];
        v19 = *(v17 + 2);
        v18 = *(v17 + 3);
        if (v15 < 4 * v19 * v18)
        {
          v20 = *(v17 + 29);
          if ((v20 & 0x3FCu) < 0x64 || (v20 & 0xFF000u) >> 12 <= 0x18)
          {
            break;
          }
        }

LABEL_87:
        if (++v12 == this)
        {
          goto LABEL_90;
        }
      }

      v91 = v12;
      v22 = 5 * v19;
      v23 = 5 * v18;
      v24 = ((*v17 + 4 * v22 / 0xC8u) * v87) >> 16;
      v25 = ((*(v17 + 1) + 4 * v23 / 0xC8u) * v86) >> 16;
      v26 = 16 * v22 / 0x64u * v87;
      v27 = 16 * v23 / 0x64u * v86;
      v28 = *(v4 + 174);
      v29 = *(v4 + 178);
      v30 = (v24 - v29) & ~((v24 - v29) >> 31);
      if (v30 >= v28)
      {
        v30 = *(v4 + 174);
      }

      v31 = (v30 * v8) / v28;
      v32 = v24 + HIWORD(v26) - v29;
      if (v32 >= v28)
      {
        v32 = *(v4 + 174);
      }

      v33 = (v32 * v8) / v28;
      v34 = *(v4 + 175);
      v35 = *(v4 + 179);
      v36 = (v25 - v35) & ~((v25 - v35) >> 31);
      if (v36 >= v34)
      {
        v36 = *(v4 + 175);
      }

      v37 = (v36 * v90) / v34;
      v38 = v25 + HIWORD(v27) - v35;
      if (v38 >= v34)
      {
        v38 = *(v4 + 175);
      }

      v39 = (v38 * v90) / v34;
      v111 = v31;
      v40 = v33;
      if (v84 >= v31)
      {
        v41 = v31;
      }

      else
      {
        LOBYTE(v41) = v84;
      }

      if (v8 > v40)
      {
        v42 = v40 + 1;
      }

      else
      {
        v42 = v8;
      }

      v95 = v37;
      if (v90 - 1 >= v37)
      {
        v43 = v37;
      }

      else
      {
        LOBYTE(v43) = v90 - 1;
      }

      if (v90 > v39)
      {
        v44 = v39 + 1;
      }

      else
      {
        v44 = v90;
      }

      if (v109 == 4)
      {
        if ((v20 & 0xFFC00) != 0)
        {
          v45 = 1;
          goto LABEL_40;
        }

        v45 = (v20 & 0x3FF) != 0;
      }

      else
      {
        v45 = 0;
      }

      if (((v7 | v45) & 1) == 0)
      {
        v45 = 0;
LABEL_50:
        ++v13;
        v97 = v44;
        if (v44 > v43)
        {
          v83 = v13;
          v96 = v42;
          v52 = v41;
          v53 = v45 | v7 & (v114 >= 0.4623);
          v105 = v117.f32[1];
          v107 = v117.f32[0];
          v103 = v118;
          v54 = v41 - v42;
          v55 = &v78[32 * v43 + v41];
          v94 = v43;
          v56 = v43;
          do
          {
            if (v96 > v52)
            {
              v57 = 0;
              v58 = v56;
              v59 = v95;
              if (v56 != v94)
              {
                v59 = v56;
              }

              v101 = (v58 - v92) * v93;
              v60 = v58 + 1.0;
              v61 = (v58 + 1.0) - v59;
              v62 = v39 - v59;
              v63 = v55;
              do
              {
                v64 = (v52 + v57);
                if (v57)
                {
                  v65 = (v52 + v57);
                }

                else
                {
                  v65 = v111;
                }

                v16 = 0.0;
                if (v53 && (v109 == 4 || (v101 + ((v64 - v98) * v99)) >= -0.2))
                {
                  v66 = (v6 + 12 * (v52 + v57 + v56 * *(v6 + 6)) + 20);
                  v67 = fmaxf(v66[1], 1.0);
                  *&v16 = 1.0 - (1.0 / (expf((((vabds_f32(*v66 / v67, v107) * 22.954) + -4.6162) + (vabds_f32(v67 / 255.0, v105) * 28.714)) + (vabds_f32(v66[2] / v67, v103) * 10.882)) + 1.0));
                  if (*&v16 > 1.0)
                  {
                    *&v16 = 1.0;
                  }

                  if (*&v16 < 0.0)
                  {
                    *&v16 = 0.0;
                  }

                  if (*&v16 < 0.4623)
                  {
                    *&v16 = 0.0;
                  }

                  else
                  {
                    *&v16 = 1.0;
                  }
                }

                v68 = (v64 + 1.0) - v65;
                v69 = v61 * v68;
                v70 = v62 * v68;
                if (v39 >= v60)
                {
                  v70 = v69;
                }

                v71 = v62 * (v33 - v65);
                if (v39 >= v60)
                {
                  v71 = v61 * (v33 - v65);
                }

                if (v33 < (v64 + 1.0))
                {
                  v72 = v71;
                }

                else
                {
                  v72 = v70;
                }

                v73 = (1.0 - *&v16) * (v72 * a4);
                if (*(v6 + 40064))
                {
                  v74 = v73;
                  if (v108)
                  {
                    v75 = *v63;
                    v16 = pow(v74, 0.9) * 255.0;
                    v76 = v75 + v16;
                    if (v76 > 0xFF)
                    {
                      LOBYTE(v76) = -1;
                    }
                  }

                  else
                  {
                    v16 = pow(v74, 0.9) * 255.0;
                    v76 = v16;
                  }
                }

                else
                {
                  v76 = *v63 + ((v73 * 64.0) + 0.5);
                  if (v76 >= 0xFF)
                  {
                    LOBYTE(v76) = -1;
                  }
                }

                *v63++ = v76;
                ++v57;
              }

              while (v54 + v57);
            }

            ++v56;
            v55 += 32;
          }

          while (v56 != v97);
          v4 = a3;
          a2 = v81;
          v7 = v82;
          v13 = v83;
          v8 = v79;
        }

        v12 = v91;
        v14 = v89;
        v15 = v88;
        this = v85;
        goto LABEL_87;
      }

LABEL_40:
      v46 = v42 - v41;
      if (v46 < 3 || (v47 = v44 - v43, v47 < 3))
      {
        v114 = 0.0;
      }

      else
      {
        v102 = v43;
        v112[0] = v43;
        v112[1] = v44;
        v106 = v41;
        v112[2] = v41;
        v104 = v42;
        v112[3] = v42;
        LODWORD(v16) = *(v17 + 22);
        v100 = v17;
        v48 = __sincos_stret(*&v16 * 3.1415927 / 180.0);
        v49 = v47;
        *&v49 = v48.__cosval / v49;
        v51 = v46;
        v50 = -v48.__sinval / v51;
        *&v50 = v50;
        v93 = *&v49;
        v113[0] = *&v49;
        v113[1] = *&v50;
        v99 = *&v50;
        LODWORD(v51) = 0.5;
        v92 = (v39 + v95) * 0.5;
        v115 = v92;
        v116 = (v33 + v111) * 0.5;
        v98 = v116;
        if (v109 == 4)
        {
          *&v50 = (v33 + v111) * 0.5;
          *&v49 = (v39 + v95) * 0.5;
          CAWBAFEFDAssist::FaceSkinDetection(v6, v112, &v115, v113, &v117, v100, v50, v51, v49);
          v114 = 0.0;
        }

        else
        {
          CAWBAFEFDAssist::FaceMaskDetection(v6, v112, &v115, v113, &v117, &v114);
        }

        v7 = v82;
        LOBYTE(v41) = v106;
        v42 = v104;
        LOBYTE(v43) = v102;
      }

      if ((*(a2 + 3160) & 1) == 0)
      {
        *(a2 + 3160) = v114 >= 0.4623;
        *v77 = v117;
        v77[1].f32[0] = v118;
      }

      goto LABEL_50;
    }
  }

  LOWORD(v13) = 0;
LABEL_90:
  *(a2 + 1588) = v13;
  return this;
}

void CAWBAFEFDAssist::UpdateSemanticTileProbTable(CAWBAFEFDAssist *this, fdAWBMetaData *a2, const sMetaData *a3, const _FE_3A_Stats_H15 *a4)
{
  v7 = this + 36864;
  v24 = *(a2 + 199);
  if ((*(this + 40064) & 1) == 0)
  {
    v8 = *(a2 + 396);
    if (v8)
    {
      v9 = 0;
      v10 = a2 + 1613;
      do
      {
        v11 = v10[v9];
        if (v10[v9])
        {
          v12 = v11 >= 0x1F;
          v13 = v11 - 31;
          if (!v12)
          {
            v13 = 0;
          }

          v10[v9] = v13;
        }

        ++v9;
      }

      while (v8 > v9);
    }
  }

  v14 = CAWBAFEFDAssist::CalculateSkinTileSemanticProbMap(this, a2, a3, *(*(a2 + 382) + 16), &v24, a3, a2 + 1613);
  LOWORD(v15) = *(v7 + 1599);
  v16 = CAWBAFEFDAssist::EstimateCurve(v15, v14, &ANODTileWeightInSemantic);
  if (v16 > 0.0)
  {
    CAWBAFEFDAssist::CalculateSkinTileANODProbMap(this, a2, a4, v16);
  }

  v17 = *(a2 + 396);
  if (v17)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      if (*(a2 + v18 + 1613) < 0)
      {
        v20 = this + 12 * v18 + 20;
        v21 = this + 12 * v19 + 15412;
        *v21 = *v20;
        *(v21 + 2) = *(v20 + 2);
        ++v19;
      }

      ++v18;
    }

    while (v17 > v18);
  }

  else
  {
    v19 = 0;
  }

  *(a2 + 799) = v19;
  v22 = v19 == 0;
  v23 = *(a2 + 401);
  if (!v22)
  {
    ++v23;
  }

  *(a2 + 401) = v23;
}

unsigned __int8 *CAWBAFEFDAssist::CalculateSkinTileSemanticProbMap(CAWBAFEFDAssist *this, unint64_t a2, unsigned int a3, const unsigned __int8 *a4, const sBTRect *a5, const sMetaData *a6, unsigned __int8 *a7)
{
  v10 = this + 36864;
  width = a6->FESOutputSize.width;
  height = a6->FESOutputSize.height;
  v43 = *a5;
  CAWBAFEFDAssist::LimitCropRect(this, &v43, width, height);
  v13 = 0;
  v14 = a5->width;
  v15 = a5->height;
  if (v14 >= v15)
  {
    v16 = 256;
  }

  else
  {
    v16 = 192;
  }

  if (v14 >= v15)
  {
    v17 = 192;
  }

  else
  {
    v17 = 256;
  }

  v18 = v16 / width;
  v19 = v17 / height;
  v20 = v43.width * 0.03125;
  v21 = v43.height * 0.03125;
  *(v10 + 1599) = 0;
  x = v43.x;
  y = v43.y;
  do
  {
    v24 = 0;
    v25 = (v19 * (y + (v13 * v21)));
    result = &a7[32 * v13++];
    v27 = (v19 * (y + (v13 * v21)));
    if (v17 <= v27)
    {
      v27 = v17;
    }

    do
    {
      v28 = v24++;
      if (v27 > v25)
      {
        v29 = 0;
        v30 = 0;
        v31 = (v18 * (x + (v24 * v20)));
        if (v16 <= v31)
        {
          v31 = v16;
        }

        v32 = (v18 * (x + (v28 * v20)));
        v33 = (v25 << 8) + v32;
        v34 = v25 + (v32 << 8);
        v35 = v25;
        do
        {
          v36 = v31 - v32;
          v37 = v34;
          v38 = v33;
          if (v31 > v32)
          {
            do
            {
              if (v14 >= v15)
              {
                v39 = v38;
              }

              else
              {
                v39 = v37;
              }

              v30 += a4[v39];
              ++v29;
              ++v38;
              v37 += 256;
              --v36;
            }

            while (v36);
          }

          ++v35;
          v33 += 256;
          ++v34;
        }

        while (v35 != v27);
        if (v29)
        {
          v40 = v30 / v29;
          if (v10[3200])
          {
            if (v40 >= 255.0)
            {
              v40 = 255.0;
            }

            if (v40 >= 0x7F)
            {
              ++*(v10 + 1599);
            }

            result[v28] = v40;
          }

          else
          {
            v41 = result[v28] + (((v40 / 255.0) * 64.0) + 0.5);
            if (v41 >= 0xFF)
            {
              v42 = -1;
            }

            else
            {
              v42 = result[v28] + (((v40 / 255.0) * 64.0) + 0.5);
            }

            result[v28] = v42;
            if (v41 >= 0x7F)
            {
              ++*(v10 + 1599);
            }
          }
        }
      }
    }

    while (v24 != 32);
  }

  while (v13 != 32);
  return result;
}

uint64_t CAWBAFEFDAssist::CalculateSemanticSpatialCCMMap(CAWBAFEFDAssist *this, fdAWBMetaData *a2, const sMetaData *a3, float32x4_t *a4)
{
  v6 = 192;
  v7 = vdupq_n_s32(0xBDCCCCCD);
  v8 = a4;
  do
  {
    v9 = vmovn_s32(vcgtzq_f32(*v8));
    v10 = vaddq_f32(*v8, v7);
    if (v9.i8[0])
    {
      if (v10.f32[0] >= 0.0)
      {
        v11 = v10.f32[0];
      }

      else
      {
        v11 = 0.0;
      }

      v8->f32[0] = v11;
    }

    if (v9.i8[2])
    {
      v12 = v10.f32[1];
      if (v10.f32[1] < 0.0)
      {
        v12 = 0.0;
      }

      v8->f32[1] = v12;
    }

    if (v9.i8[4])
    {
      v13 = v10.f32[2];
      if (v10.f32[2] < 0.0)
      {
        v13 = 0.0;
      }

      v8->f32[2] = v13;
    }

    if (v9.i8[6])
    {
      v10.i32[0] = v10.i32[3];
      if (v10.f32[3] < 0.0)
      {
        v10.f32[0] = 0.0;
      }

      v8->i32[3] = v10.i32[0];
    }

    ++v8;
    v6 -= 4;
  }

  while (v6);
  width = a3->FESOutputSize.width;
  height = a3->FESOutputSize.height;
  tileStatsRegionInRaw = a3->awb.tileStatsRegionInRaw;
  CAWBAFEFDAssist::LimitCropRect(this, &tileStatsRegionInRaw, width, height);
  v16 = 0;
  v17 = 256.0 / width;
  v18 = 192.0 / height;
  v19 = tileStatsRegionInRaw.width * 0.0625;
  x = tileStatsRegionInRaw.x;
  y = tileStatsRegionInRaw.y;
  v22 = tileStatsRegionInRaw.height / 12.0;
  do
  {
    v23 = 0;
    v24 = (v18 * (y + (v16 * v22)));
    f32 = a4[4 * v16++].f32;
    LODWORD(v26) = (v18 * (y + (v16 * v22)));
    if (v26 >= 0xC0)
    {
      v26 = 192;
    }

    else
    {
      v26 = v26;
    }

    do
    {
      v27 = v23 + 1;
      result = (v17 * (x + ((v23 + 1) * v19)));
      if (result >= 0x100)
      {
        v29 = 256;
      }

      else
      {
        v29 = (v17 * (x + ((v23 + 1) * v19)));
      }

      v30 = 0.0;
      if (v26 > v24)
      {
        result = 0;
        v31 = 0;
        v32 = (v17 * (x + (v23 * v19)));
        v33 = (v24 << 8) + v32;
        v34 = v24;
        do
        {
          if (v29 > v32)
          {
            v35 = (*(*(a2 + 382) + 16) + v33);
            v36 = v32 + 1;
            do
            {
              v37 = *v35++;
              v31 += v37;
              result = (result + 1);
            }

            while (v29 != v36++);
          }

          ++v34;
          v33 += 256;
        }

        while (v34 != v26);
        if (result)
        {
          v30 = (vcvts_n_f32_u32(v31, 1uLL) / result) / 255.0;
        }
      }

      v39 = v30 + f32[v23];
      if (v39 > 1.0)
      {
        v39 = 1.0;
      }

      f32[v23++] = v39;
    }

    while (v27 != 16);
  }

  while (v16 != 12);
  return result;
}

void CAWBAFEFDAssist::LimitCropRect(CAWBAFEFDAssist *this, sBTRect *a2, int a3, unsigned int a4)
{
  v4 = vmax_s32(*&a2->x, 0);
  *&a2->x = v4;
  v5 = a2->width + v4.i32[0];
  v6 = a3 <= v4.i32[0] || v5 == 0;
  if (v6 || ((height = a2->height, a4 > v4.i32[1]) ? (v8 = v4.i32[1] == -height) : (v8 = 1), v8))
  {
    *&a2->x = 0;
    *&a2->width = 0;
  }

  else
  {
    if (v5 > a3)
    {
      a2->width = a3 - v4.i32[0];
    }

    if (height + v4.i32[1] > a4)
    {
      a2->height = a4 - v4.i32[1];
    }
  }
}

CAWBAFEFDAssist *CAWBAFEFDAssist::GetfdTileRGBFDProbApproach(CAWBAFEFDAssist *this, fdAWBMetaData *a2, const _TILE_Stat_Elem *a3)
{
  v3 = *(a2 + 396);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = this + 20;
    do
    {
      v7 = (a3 + 64 * v5);
      v8 = v7[13];
      if (v8)
      {
        v9 = v8;
        v10 = v7[1] / v8;
        v11 = &v6[12 * v5];
        *v11 = v10;
        v11[1] = v7[5] / v9;
        v11[2] = v7[9] / v9;
        ++v4;
      }

      else
      {
        v12 = &v6[12 * v5];
        *v12 = 0;
        *(v12 + 2) = 0;
      }

      ++v5;
    }

    while (v3 > v5);
  }

  else
  {
    v4 = 0;
  }

  *(this + 6154) = v4;
  return this;
}

float CAWBAFEFDAssist::GetfdSkinRGB(CAWBAFEFDAssist *this, float *a2, unsigned int a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = a2 + 2;
    v5 = (this + 15420);
    do
    {
      *(v4 - 2) = *(v5 - 2);
      *(v4 - 1) = *(v5 - 1);
      v6 = *v5;
      v5 += 3;
      result = v6;
      *v4 = v6;
      v4 += 3;
      --v3;
    }

    while (v3);
  }

  return result;
}

float CAWBAFEFDAssist::SetfdSkinC1C2(CAWBAFEFDAssist *this, float *a2, unsigned int a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = (this + 27728);
    v5 = a2 + 1;
    do
    {
      *(v4 - 1) = *(v5 - 1);
      v6 = *v5;
      v5 += 2;
      result = v6;
      *v4 = v6;
      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

float CAWBAFEFDAssist::MapSkinColorToWhiteProbWeighted(CAWBAFEFDAssist *this, fdAWBMetaData *a2, unsigned __int16 (*a3)[4])
{
  v3 = (this + 36864);
  *(a2 + 778) = 1148846080;
  v4 = *(this + 10018);
  v5 = *(this + 10007);
  v6 = *(this + 10008);
  if (v4)
  {
    v9 = 0;
    v10 = 0.0;
    v11 = 1000.0;
    v12 = 0.0;
    v13 = 0.0;
    do
    {
      v14 = &(*a3)[4 * v9];
      v15 = v14[2];
      v16 = v14[3];
      v17 = fabsf(sqrtf(((v6 - (v16 >> 8)) * (v6 - (v16 >> 8))) + ((v5 - (v15 >> 8)) * (v5 - (v15 >> 8)))));
      if (v17 < v11)
      {
        *(a2 + 778) = v17;
        v11 = v17;
      }

      v18 = CAWBAFEFDAssist::EstimateCurve(v17, this, &unk_1C932FB80);
      v12 = v12 + (vcvts_n_f32_s32(*v14 - v15, 8uLL) * v18);
      v10 = v10 + (vcvts_n_f32_s32(v14[1] - v16, 8uLL) * v18);
      v13 = v13 + v18;
      ++v9;
    }

    while (v4 > v9);
  }

  else
  {
    v13 = 0.0;
    v12 = 0.0;
    v10 = 0.0;
  }

  v3[795] = (v12 / v13) + v5;
  result = (v10 / v13) + v6;
  v3[796] = result;
  return result;
}

float CAWBAFEFDAssist::CalculateSkinSampleStats(CAWBAFEFDAssist *this, unsigned int a2, float *a3, float *a4)
{
  v6 = a2;
  if (!a2)
  {
    *a3 = 0;
    v17 = 0.0;
    v18 = 0.0;
    v19 = 0.0;
LABEL_9:
    v26 = sqrtf((v17 - ((v18 * v18) / v6)) / (v6 + -1.0));
    goto LABEL_10;
  }

  v8 = (this + 27724);
  v9 = a2;
  v10 = 0;
  v11 = a2;
  do
  {
    v12 = *v8++;
    v10 = vadd_f32(v10, v12);
    --v11;
  }

  while (v11);
  v13 = v10.f32[0] / v6;
  *a3 = 0;
  v14 = (this + 27728);
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v18 = 0.0;
  v19 = 0.0;
  v29 = a2;
  v20 = v10.f32[1] / v6;
  do
  {
    v21 = *(v14 - 1);
    v22 = ((*v14 - v20) * (*v14 - v20)) + ((v21 - v13) * (v21 - v13));
    v17 = v17 + v22;
    v23 = sqrtf(v22);
    v18 = v18 + v23;
    v24 = CAWBAFEFDAssist::EstimateCurve(v23, this, &unk_1C932FB68);
    v19 = v19 + v24;
    v16 = v16 + (v24 * v21);
    *a3 = v16;
    v25 = *v14;
    v14 += 2;
    v15 = v15 + (v24 * v25);
    a3[1] = v15;
    --v9;
  }

  while (v9);
  v26 = 0.0;
  v6 = v29;
  if (a2 != 2)
  {
    goto LABEL_9;
  }

LABEL_10:
  *a4 = v26;
  result = *a3 / v19;
  v28 = a3[1] / v19;
  *a3 = result;
  a3[1] = v28;
  return result;
}

void CAWBAFEFDAssist::ModifyColorHistogramProbApproach(CAWBAFEFDAssist *this, fdAWBMetaData *a2, unsigned __int16 (*a3)[4], unsigned int *a4, unsigned int a5)
{
  v10 = this + 36864;
  if (CAWBAFEFDAssist::UseProvidedMatchSkinGains(this, a2))
  {
    *(a2 + 766) = *(v10 + 793);
    *(a2 + 767) = *(v10 + 794);
    *(a2 + 770) = *(v10 + 797);
    *(a2 + 771) = *(v10 + 798);
    *(a2 + 401) = *(a2 + 402);
    *(a2 + 799) = *(a2 + 800);
    *(a2 + 776) = *(a2 + 777);
    *(a2 + 778) = *(a2 + 779);
    CAWBAFEFDAssist::CalculateWhiteColorHist(this);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = (*(a2 + 797) * *(a2 + 796)) / 3193300.0;
    v17 = this + 35932;
    do
    {
      v18 = a4[v12];
      v19 = *&v17[v12 * 4];
      if (v19)
      {
        v20 = (v19 * v16) + 0.5;
        v14 += v20;
        *&v17[v12 * 4] = v20;
        v15 += a4[v12];
      }

      v13 += v18;
      ++v12;
    }

    while (v12 != 1024);
    v21 = v13;
    v22 = v14;
    if (v14)
    {
      v23 = v13 / v14;
    }

    else
    {
      v23 = 0.0;
    }

    v24 = v15;
    v25 = 1.0;
    if (v21 >= 1.0)
    {
      v25 = v13;
    }

    v26 = v24 / v25;
    *(a2 + 780) = v24 / v25;
    *(a2 + 785) = v13;
    *(a2 + 786) = v14;
    *(a2 + 787) = v15;
    LOWORD(v24) = *(a2 + 799);
    v27 = CAWBAFEFDAssist::EstimateCurve(LODWORD(v24), v11, &unk_1C932FB98);
    *(a2 + 781) = v27;
    v29 = CAWBAFEFDAssist::EstimateCurve(*(a2 + 776), v28, &unk_1C932FBB0);
    *(a2 + 782) = v29;
    v31 = CAWBAFEFDAssist::EstimateCurve(*(a2 + 778), v30, &unk_1C932FBC8);
    *(a2 + 783) = v31;
    v33 = CAWBAFEFDAssist::EstimateCurve(v26, v32, &unk_1C932FBE0);
    *(a2 + 784) = v33;
    v34 = v23 * (((v27 * v29) * v31) * v33);
    *(a2 + 775) = v34;
    if (v10[3200])
    {
      if (*(v10 + 801) != 1)
      {
        v35 = 1.0;
        v36 = v34 < 0.0 || v34 > 1.0;
        if (v34 <= 1.0 || v34 < 0.0)
        {
          v35 = 0.0;
        }

        if (v36)
        {
          v34 = v35;
        }
      }
    }

    else
    {
      v38 = *(a2 + 774);
      if (*(a2 + 401))
      {
        v39 = v34 - v38;
        v40 = v34 - (v38 + 0.03125);
        if (v39 > 0.03125)
        {
          v38 = v38 + 0.03125;
        }

        else
        {
          v40 = v39;
        }

        if (v40 < -0.03125)
        {
          v38 = v38 + -0.03125;
        }
      }

      v34 = 1.0;
      v41 = v38 < 0.0 || v38 > 1.0;
      if (v38 <= 1.0 || v38 < 0.0)
      {
        v34 = 0.0;
      }

      if (!v41)
      {
        v34 = v38;
      }
    }

    *(a2 + 774) = v34;
    if (v34 > 0.0)
    {
      v42 = 0;
      v43 = v21 / (v21 + (v22 * v34));
      v44 = v34 * v43;
      do
      {
        a4[v42] = (((v44 * *&v17[v42 * 4]) + (a4[v42] * v43)) + 0.5);
        ++v42;
      }

      while (v42 != 1024);
    }

    *(a2 + 1612) = 1;
    *(a2 + 1) = 0;
    return;
  }

  v37 = *(a2 + 799);
  if (v37 <= 1)
  {
    *(a2 + 1612) = 0;
    *(a2 + 401) = 0;
    *(a2 + 774) = 0;
    *(a2 + 776) = 0;
    *(a2 + 778) = 0;
    *(a2 + 780) = 0;
    *(a2 + 383) = 0;
    *(a2 + 385) = 0;
    *(a2 + 4) = 1;
    return;
  }

  CAWBAFEFDAssist::CalculateSkinSampleStats(this, v37, a2 + 768, a2 + 776);
  if (*(a2 + 789))
  {
    v45 = 0.05;
  }

  else
  {
    v45 = 0.25;
  }

  v80 = v45;
  if (a5 <= 1 && (*(a2 + 1612) & 1) != 0 && v10[3200] != 1)
  {
    v46 = vmla_n_f32(*(a2 + 3064), vsub_f32(*(a2 + 3072), *(a2 + 3064)), v45);
  }

  else
  {
    v46 = *(a2 + 3072);
  }

  *(a2 + 383) = v46;
  *(v10 + 791) = v46.i32[0];
  *(v10 + 792) = *(a2 + 767);
  CAWBAFEFDAssist::MapSkinColorToWhiteWeighted(this, a2, a3);
  v47 = *(v10 + 795);
  if (v47 == 0.0)
  {
    CAWBAFEFDAssist::MapSkinColorToWhiteProbWeighted(this, a2, a3);
    v47 = *(v10 + 795);
  }

  *(a2 + 772) = v47;
  v48 = *(v10 + 796);
  *(a2 + 773) = v48;
  if (a5 > 1 || (*(a2 + 1612) & 1) == 0 || v10[3200] == 1)
  {
    *(a2 + 770) = v47;
LABEL_54:
    *(a2 + 771) = v48;
    goto LABEL_55;
  }

  if (*(a2 + 401))
  {
    v47 = *(a2 + 770) + ((v47 - *(a2 + 770)) * v80);
    *(a2 + 770) = v47;
    v48 = *(a2 + 771) + ((v48 - *(a2 + 771)) * v80);
    goto LABEL_54;
  }

  v47 = *(a2 + 770);
LABEL_55:
  *(v10 + 795) = v47;
  *(v10 + 796) = *(a2 + 771);
  CAWBAFEFDAssist::CalculateWhiteColorHist(this);
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = (*(a2 + 797) * *(a2 + 796)) / 3193300.0;
  v55 = this + 35932;
  do
  {
    v56 = a4[v50];
    v57 = *&v55[v50 * 4];
    if (v57)
    {
      v58 = (v57 * v54) + 0.5;
      v52 += v58;
      *&v55[v50 * 4] = v58;
      v51 += a4[v50];
    }

    v53 += v56;
    ++v50;
  }

  while (v50 != 1024);
  v59 = v53;
  v60 = v52;
  if (v52)
  {
    v61 = v53 / v52;
  }

  else
  {
    v61 = 0.0;
  }

  v62 = v51;
  v63 = 1.0;
  if (v59 >= 1.0)
  {
    v63 = v53;
  }

  v64 = v62 / v63;
  *(a2 + 780) = v62 / v63;
  *(a2 + 785) = v53;
  *(a2 + 786) = v52;
  *(a2 + 787) = v51;
  LOWORD(v62) = *(a2 + 799);
  v65 = CAWBAFEFDAssist::EstimateCurve(LODWORD(v62), v49, &unk_1C932FB98);
  *(a2 + 781) = v65;
  v67 = CAWBAFEFDAssist::EstimateCurve(*(a2 + 776), v66, &unk_1C932FBB0);
  *(a2 + 782) = v67;
  v69 = CAWBAFEFDAssist::EstimateCurve(*(a2 + 778), v68, &unk_1C932FBC8);
  *(a2 + 783) = v69;
  v71 = CAWBAFEFDAssist::EstimateCurve(v64, v70, &unk_1C932FBE0);
  *(a2 + 784) = v71;
  v72 = v61 * (((v65 * v67) * v69) * v71);
  *(a2 + 775) = v72;
  if (v10[3200])
  {
    if (*(v10 + 801) != 1)
    {
      v73 = 1.0;
      v74 = v72 < 0.0 || v72 > 1.0;
      if (v72 <= 1.0 || v72 < 0.0)
      {
        v73 = 0.0;
      }

      if (v74)
      {
        v72 = v73;
      }
    }
  }

  else
  {
    v75 = *(a2 + 774);
    if (*(a2 + 401))
    {
      v76 = v72 - v75;
      v77 = v72 - (v75 + 0.03125);
      if (v76 > 0.03125)
      {
        v75 = v75 + 0.03125;
      }

      else
      {
        v77 = v76;
      }

      if (v77 < -0.03125)
      {
        v75 = v75 + -0.03125;
      }
    }

    v72 = 1.0;
    v78 = v75 < 0.0 || v75 > 1.0;
    if (v75 <= 1.0 || v75 < 0.0)
    {
      v72 = 0.0;
    }

    if (!v78)
    {
      v72 = v75;
    }
  }

  *(a2 + 774) = v72;
  if (v72 > 0.0)
  {
    for (i = 0; i != 1024; ++i)
    {
      a4[i] = ((((v72 * (v59 / (v59 + (v60 * v72)))) * *&v55[i * 4]) + (a4[i] * (v59 / (v59 + (v60 * v72))))) + 0.5);
    }
  }

  *(a2 + 1612) = 1;
  *(a2 + 1) = 0;
  *(a2 + 2) = v72;
}

BOOL CAWBAFEFDAssist::UseProvidedMatchSkinGains(CAWBAFEFDAssist *this, fdAWBMetaData *a2)
{
  v3 = *(a2 + 799);
  v8 = *(a2 + 384);
  v7 = *(a2 + 776);
  if (*(a2 + 1596) != 1)
  {
    return 0;
  }

  if (v3 <= 1)
  {
    return *(a2 + 800) > 1u;
  }

  CAWBAFEFDAssist::CalculateSkinSampleStats(this, v3, &v8, &v7);
  v5 = *(a2 + 777);
  v6 = v5 >= v7 ? v5 - v7 : v7 - v5;
  return v6 > 0.5;
}

float CAWBAFEFDAssist::GetWhitePointCenter(CAWBAFEFDAssist *this, float *a2)
{
  *a2 = *(this + 10011);
  result = *(this + 10012);
  a2[1] = result;
  return result;
}

float CAWBAFEFDAssist::SetMatchWhitePointCenter(CAWBAFEFDAssist *this, float *a2)
{
  *(this + 10013) = *a2;
  result = a2[1];
  *(this + 10014) = result;
  return result;
}

float CAWBAFEFDAssist::GetSkinPointCenter(CAWBAFEFDAssist *this, float *a2)
{
  *a2 = *(this + 10007);
  result = *(this + 10008);
  a2[1] = result;
  return result;
}

float CAWBAFEFDAssist::SetMatchSkinPointCenter(CAWBAFEFDAssist *this, float *a2)
{
  *(this + 10009) = *a2;
  result = a2[1];
  *(this + 10010) = result;
  return result;
}

float AuxCompute::CalcTotalGainDown(AuxCompute *this, const sRefDriverInputs_SOFTISP *a2)
{
  result = 1.0;
  if (*this == 1)
  {
    return vcvts_n_f32_u32(*(this + 1), 0xCuLL);
  }

  return result;
}

float AuxCompute::CalcExposureRatio(AuxCompute *this, const sRefDriverInputs_SOFTISP *a2)
{
  v2 = vcvts_n_f32_u32(*(this + 20), 8uLL);
  result = fmaxf(*(this + 9), 1.0) * (((vcvts_n_f32_u32(*(this + 14), 8uLL) * (*(this + 3) * 0.0039062)) * vcvts_n_f32_u32(*(this + 15), 8uLL)) * (*(this + 8) * 0.0039062));
  if (*(this + 20))
  {
    result = result * v2;
  }

  if (*(this + 42) == 1 && *(this + 43) != 1)
  {
    v4 = *(this + 44);
    if (v4 <= 0x11 && ((1 << v4) & 0x38042) != 0)
    {
      result = result * (*(this + 12) * 0.0039062);
    }
  }

  if (*this == 1)
  {
    result = result * fmaxf(fminf(vcvts_n_f32_u32(*(this + 1), 0xCuLL), 15.999), 1.0);
  }

  if (*(this + 1368) == 1)
  {
    return result / *(this + 343);
  }

  return result;
}

float AuxCompute::levelSmooth3x3SinglePlane(AuxCompute *this, float *a2, int a3, float *a4, const float *a5, const float *a6, __n128 a7, int8x16_t a8)
{
  v48[0] = 0;
  if (a2 >= 1)
  {
    v8 = 0;
    a7 = vdupq_n_s64(a2 - 1);
    v9 = v49;
    a8.i64[1] = 3;
    do
    {
      v10 = vdupq_n_s64(v8);
      v11 = vmovn_s64(vcgeq_u64(a7, vorrq_s8(v10, xmmword_1C932FAF0)));
      if (vuzp1_s16(v11, a7.n128_u64[0]).u8[0])
      {
        *(v9 - 1) = v8;
      }

      if (vuzp1_s16(v11, *&a7).i8[2])
      {
        *v9 = v8 + 1;
      }

      if (vuzp1_s16(*&a7, vmovn_s64(vcgeq_u64(*&a7, vorrq_s8(v10, xmmword_1C932FAE0)))).i32[1])
      {
        v9[1] = v8 + 2;
        v9[2] = v8 + 3;
      }

      v8 += 4;
      v9 += 4;
    }

    while (((a2 + 3) & 0xFFFFFFFC) != v8);
  }

  v48[a2 + 1] = a2 - 1;
  if (a2 >= -1)
  {
    v12 = (a2 + 2);
    v13 = v48;
    do
    {
      v14 = *v13++;
      v15 = this + 4 * v14 * a3;
      a7.n128_u32[0] = *v15;
      a8.i64[0] = *(v15 + 20);
      v16 = a5;
      v17 = vld1q_dup_f32(v16++);
      v18 = *(v15 + 4);
      v19 = vmulq_n_f32(vextq_s8(vextq_s8(a7, a7, 4uLL), v18, 0xCuLL), *v16);
      v20 = vzip1q_s64(a7, v18);
      v20.i32[1] = v20.i32[0];
      v21 = vdupq_laneq_s32(v18, 3);
      v22 = vmlaq_f32(v19, v17, v20);
      v23 = vextq_s8(vextq_s8(v21, v21, 4uLL), a8, 0xCuLL);
      v24 = vextq_s8(v23, v18, 4uLL);
      v23.i32[3] = *(v15 + 7);
      v25 = a5[2];
      a8.i32[2] = v23.i32[3];
      a8.i32[3] = v23.i32[3];
      a7 = vmlaq_n_f32(vmlaq_f32(vmulq_n_f32(v23, *v16), v17, vextq_s8(v18, v24, 8uLL)), a8, v25);
      *v15 = vmlaq_n_f32(v22, v18, v25);
      *(v15 + 1) = a7;
      --v12;
    }

    while (v12);
  }

  v48[0] = 0;
  if (a3 >= 1)
  {
    v26 = 0;
    a7 = vdupq_n_s64(a3 - 1);
    v27 = v49;
    do
    {
      v28 = vdupq_n_s64(v26);
      v29 = vmovn_s64(vcgeq_u64(a7, vorrq_s8(v28, xmmword_1C932FAF0)));
      if (vuzp1_s16(v29, a7.n128_u64[0]).u8[0])
      {
        *(v27 - 1) = v26;
      }

      if (vuzp1_s16(v29, *&a7).i8[2])
      {
        *v27 = v26 + 1;
      }

      if (vuzp1_s16(*&a7, vmovn_s64(vcgeq_u64(*&a7, vorrq_s8(v28, xmmword_1C932FAE0)))).i32[1])
      {
        v27[1] = v26 + 2;
        v27[2] = v26 + 3;
      }

      v26 += 4;
      v27 += 4;
    }

    while (((a3 + 3) & 0xFFFFFFFC) != v26);
  }

  v48[a3 + 1] = a3 - 1;
  if (a3 >= -1)
  {
    v30 = (a3 + 2);
    v31 = v48;
    do
    {
      v32 = *v31++;
      v33 = (this + 4 * v32);
      v34 = v33[a3];
      v35 = v33[2 * a3];
      v36 = v33[3 * a3];
      v37 = v33[4 * a3];
      v38 = v33[5 * a3];
      v39 = a4[1];
      v40 = a4[2];
      v41 = ((*v33 * v39) + (*v33 * *a4)) + (v34 * v40);
      v42 = ((v34 * v39) + (*v33 * *a4)) + (v35 * v40);
      v43 = ((v35 * v39) + (v34 * *a4)) + (v36 * v40);
      v44 = ((v36 * v39) + (v35 * *a4)) + (v37 * v40);
      v45 = ((v37 * v39) + (v36 * *a4)) + (v38 * v40);
      v46 = (v38 * v39) + (v37 * *a4);
      *v33 = v41;
      v33[a3] = v42;
      v33[2 * a3] = v43;
      v33[3 * a3] = v44;
      a7.n128_f32[0] = v46 + (v38 * v40);
      v33[4 * a3] = v45;
      v33[5 * a3] = a7.n128_f32[0];
      --v30;
    }

    while (v30);
  }

  return a7.n128_f32[0];
}

__n128 AuxCompute::CalcLTMspatialCCMSize(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(a2), 0x1FuLL)), 0x100000000CLL, 0xC00000010);
  v4 = v3.i16[0];
  *(a3 + 44) = v3.i16[0];
  v5 = v3.i16[2];
  *(a3 + 46) = v3.i16[2];
  v6 = *a1;
  result.n128_u64[0] = vcvt_s32_f32(vrndm_f32(vdiv_f32(vcvt_f32_u32(*(a1 + 8)), vcvt_f32_u32(vadd_s32(v3, -1)))));
  v7 = *a1;
  *(a3 + 24) = vneg_s32(vcvt_n_u32_f32(vdiv_f32(vcvt_f32_s32(*a1), vcvt_f32_s32(result.n128_u64[0])), 0x10uLL));
  *(a3 + 34) = v6.i16[2];
  *(a3 + 32) = v6.i16[0];
  v8 = result.n128_u16[0] * v4;
  result.n128_u64[1] = result.n128_u64[0];
  *(a3 + 40) = v8;
  v10 = result.n128_u16[2] * v5;
  *(a3 + 42) = v10;
  *(a3 + 36) = v8 + v7;
  *(a3 + 38) = v10 + v6.i16[2];
  *a3 = v6;
  *(a3 + 8) = result;
  return result;
}

void AuxCompute::CalcAntiAliasingSettings(AuxCompute *this, sRefDriverInputs_SOFTISP *a2, unsigned int *a3, AuxCompute *a4, sRefDriverInputs_SOFTISP *a5)
{
  v8 = fminf(AuxCompute::CalcExposureRatio(a4, a2) / *(a4 + 4), 28.0);
  *this = 1;
  v9 = fmaxf(v8, 1.0);
  *&a2->HROn = 3;
  v22 = xmmword_1C932FDD0;
  v23 = unk_1C932FDE0;
  v24 = xmmword_1C932FDF0;
  v25 = unk_1C932FE00;
  v20 = xmmword_1C932FDB0;
  v21 = unk_1C932FDC0;
  v26 = 15;
  if (v9 <= 6.0)
  {
    v10 = fmaxf(((v9 * v9) * 0.0) + 0.0, 0.0);
    v12 = vmla_n_f32(vmul_n_f32(0x3F2A48B03FA48073, v9 * v9), 0xC0AA5200C1688D12, v9);
    v13 = 0x40FFA109424BC1CELL;
LABEL_6:
    v11 = vcvt_s32_f32(vmaxnm_f32(vadd_f32(v12, v13), 0));
    goto LABEL_7;
  }

  if (v9 >= 9.0)
  {
    v10 = fmaxf((((v9 * v9) * 0.0) + (v9 * 0.0)) + 0.0, 0.0);
    v12 = vmla_n_f32(vmul_n_f32(0x3B736566BE2015ACLL, v9 * v9), 0xBDAD73FF4104C70CLL, v9);
    v13 = 0x3EEB4166C2771041;
    goto LABEL_6;
  }

  v10 = 0;
  v11 = 0;
LABEL_7:
  v14 = 0;
  HIDWORD(v23) = v10;
  *(&v21 + 4) = vand_s8(v11, 0xFFFF0000FFFFLL);
  v15.i32[0] = vadd_s32((v10 | 0xFFFF00000000), *(&v21 + 4)).u32[0];
  v15.i32[1] = vadd_s32(*(&v21 + 4), *(&v21 + 4)).i32[1];
  *(&v22 + 1) = vsub_s32(0x10000000100, v15);
  HIDWORD(v21) = v10;
  LODWORD(v23) = DWORD2(v22);
  *&v24 = vrev64_s32(*(&v21 + 4));
  v16 = &v20;
  do
  {
    v17 = 0;
    v18 = v16;
    do
    {
      v19 = *v18;
      v18 = (v18 + 20);
      a3[v17++] = v19;
    }

    while (v17 != 5);
    ++v14;
    a3 += 5;
    v16 = (v16 + 4);
  }

  while (v14 != 5);
}

void sub_1C92D4B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL40getFigCapturePlatformIdentifierSymbolLocv_block_invoke(void *a1)
{
  v5[0] = 0;
  if (!CMCaptureLibraryCore(char **)::frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = ___ZL20CMCaptureLibraryCorePPc_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E833AC68;
    v7 = 0;
    CMCaptureLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v2 = CMCaptureLibraryCore(char **)::frameworkLibrary;
  if (!CMCaptureLibraryCore(char **)::frameworkLibrary)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CMCaptureLibrary()"];
    [a1 handleFailureInFunction:v2 file:@"AWBAlgorithm.mm" lineNumber:50 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "FigCapturePlatformIdentifier");
  *(*(a1[4] + 8) + 24) = result;
  getFigCapturePlatformIdentifierSymbolLoc(void)::ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t ___ZL20CMCaptureLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  CMCaptureLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void CAWBAFE::CAWBAFE(uint64_t a1)
{
  v2 = a1 + 20480;
  CObject::CObject((a1 + 8));
  *a1 = &unk_1F48DE968;
  *(v2 + 232) = 0;
  *(v2 + 3416) = 0;
  operator new();
}

uint64_t CAWBAFE::SmoothingActivate(CAWBAFE *this, int a2)
{
  var1 = this->var142.var1;
  v3 = var1 == a2 || a2 == 0;
  if (!v3 && (var1 & 1) == 0)
  {
    *&this->var142.var3.var4 = 0u;
    *&this->var142.var3.var1 = 0u;
    *this->var142.var3.var3 = 0u;
    this->var142.var3.var0 = this->var143;
  }

  if ((a2 & 1) == 0)
  {
    *&this->var142.var3.var2[2] = 0u;
    *&this->var142.var3.var4 = 0u;
    *&this->var142.var3.var0 = 0u;
  }

  this->var142.var1 = a2;
  return 0;
}

void *CAWBAFE::SetFaceData(uint64_t a1, __int128 *a2, void *__src)
{
  v4 = *(a1 + 21232);
  v5 = *a2;
  v6 = a2[1];
  *(v4 + 40) = *(a2 + 28);
  *(v4 + 28) = v6;
  *(v4 + 12) = v5;
  if (*(a1 + 23888) == 1)
  {
    v7 = 160;
  }

  else
  {
    v7 = 1520;
  }

  return memcpy((*(a1 + 21232) + 56), __src, v7);
}

BOOL CAWBAFE::GetLargestFaceRect(CAWBAFE *this, sCIspFDRect *a2)
{
  var113 = this->var113;
  v3 = *(var113 + 9);
  if (v3)
  {
    *&a2->x = *(var113 + 7);
    a2->width = *(var113 + 17);
    a2->height = *(var113 + 16);
  }

  return v3 != 0;
}

void CAWBAFE::ComputeSkinColor_fdProbApproach(CAWBAFE *this, unsigned int *a2, const sMetaData *a3)
{
  v6 = &this->var66[5][856];
  var113 = this->var113;
  *var113 = this->var122;
  var7 = this->var7;
  v9 = *(var7 + 176);
  *(var113 + 394) = v9;
  v10 = *(var7 + 177);
  *(var113 + 395) = v10;
  *(var113 + 396) = v10 * v9;
  *(var113 + 3160) = 0;
  *(var113 + 3178) = this->var106;
  v11 = *(var7 + 4071) >> *(var7 + 342);
  v12 = *(var7 + 4072) >> *(var7 + 343);
  x = a3->sensorCrop.x;
  y = a3->sensorCrop.y;
  if (!a3->zoom.isFEStatOTF)
  {
    x += a3->DMACrop.x;
    y += a3->DMACrop.y;
  }

  *(var113 + 796) = (*(var7 + 178) << 16) / v11 + x;
  *(var113 + 797) = (*(var7 + 179) << 16) / v12 + y;
  *(var113 + 798) = (*(var7 + 174) << 16) / v11;
  *(var113 + 799) = (*(var7 + 175) << 16) / v12;
  *(var113 + 398) = *(var7 + 90);
  this->var110 = 0;
  if (!this->var140 || a3->awb.semanticFrameCount == -1)
  {
    LODWORD(v15) = 0;
  }

  else
  {
    v15 = *(var113 + 382);
    if (v15)
    {
      LODWORD(v15) = this->var111;
      this->var110 = v15;
    }
  }

  *(var113 + 789) = v15;
  CAWBAFEFDAssist::GetfdWindowRGB(this->var4, var113, this->var10, var7 + 9);
  updated = CAWBAFEFDAssist::GetfdTileRGBFDProbApproach(this->var4, this->var113, this->var9);
  v17 = this->var113;
  v18 = *(v17 + 789);
  switch(v18)
  {
    case 2:
      updated = CAWBAFEFDAssist::GetfdHiResWindowRGB(this->var4, v17, this->var11, this->var7 + 49);
      break;
    case 1:
      CAWBAFEFDAssist::UpdateSemanticTileProbTable(this->var4, v17, a3, this->var7);
      break;
    case 0:
      updated = CAWBAFEFDAssist::UpdateANODTileProbTable(this->var4, v17, this->var7);
      break;
  }

  v19 = this->var113;
  if (v6[718] == 1 && (*(v19 + 789) - 1) <= 1)
  {
    updated = CAWBAFEFDAssist::CalculateSemanticSpatialCCMMap(this->var4, v19, a3, this->var141);
    v19 = this->var113;
  }

  if (*(v19 + 799))
  {
    v36 = 0;
    v20 = MEMORY[0x1EEE9AC00](updated);
    v22 = (v35.f32 - v21);
    MEMORY[0x1EEE9AC00](v20);
    v24 = (v35.f32 - v23);
    CAWBAFEFDAssist::GetfdSkinRGB(this->var4, v22, v25);
    if (*(this->var113 + 799))
    {
      v30 = 0;
      v31 = 0;
      v32 = v22 + 2;
      v35 = xmmword_1C9332340;
      do
      {
        v37 = *(v32 - 1);
        v38 = *v32;
        CAWBAFE::GetBinIndices(this, &v36 + 1, &v36, &v37, 2, COERCE_DOUBLE(__PAIR64__(HIDWORD(v37), v38)), v26, v27, *v28.i32, v29);
        LODWORD(v26) = HIDWORD(v36);
        v33 = *&v36;
        v34 = vdupq_lane_s64(__SPAIR64__(v36, HIDWORD(v36)), 0);
        v29 = *v35.i64;
        v28.i32[0] = vmovn_s32(vcgtq_f32(v35, v34)).u32[0];
        v27 = COERCE_DOUBLE(vmovn_s32(vcgtq_f32(v34, v35)));
        v28.i32[1] = HIDWORD(v27);
        LOWORD(v27) = vminv_u16(v28);
        if (LOBYTE(v27))
        {
          v24[2 * v31] = *(&v36 + 1);
          v24[(2 * v31++) | 1] = v33;
        }

        ++v30;
        v32 += 3;
      }

      while (v30 < *(this->var113 + 799));
    }

    else
    {
      LOWORD(v31) = 0;
    }

    CAWBAFEFDAssist::SetfdSkinC1C2(this->var4, v24, v31);
    *(this->var113 + 799) = v31;
  }

  CAWBAFEFDAssist::SetNumAwbSkin2WhiteLUT(this->var4, *(v6 + 490));
  CAWBAFEFDAssist::ModifyColorHistogramProbApproach(this->var4, this->var113, this->var114, a2, *(v6 + 91));
}

uint64_t CAWBAFE::GetBinIndices(uint64_t result, float *a2, float *a3, float *a4, int a5, double a6, double a7, double a8, float a9, double a10)
{
  v12 = result;
  v14 = *a4;
  v13 = a4[1];
  v15 = a4[2];
  if (a5 <= 0)
  {
    if ((v14 == 0.0 || v13 == 0.0 || v15 == 0.0) && *(result + 8) >= 10)
    {
      result = printf("ERR: CAWBAFEH9::calculateC1C2FromWBGain: input WBGain = %f %f %f \n\n", v14, v13, v15);
    }

    if (v13 >= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v13;
    }

    if (v14 < v16)
    {
      v16 = v14;
    }

    v17 = v16 * 200.0;
    v14 = v17 / v14;
    v13 = v17 / v13;
    v15 = v17 / v15;
    goto LABEL_18;
  }

  if (a5 == 1)
  {
LABEL_18:
    v18 = *(v12 + 542);
    v19 = *(v12 + 544);
    v20 = *(v12 + 546);
    a9 = (v18 + v19) + v20;
    v21 = (((v13 * v19) + (v14 * v18)) + (v15 * v20)) / a9;
    if (v21 <= 255.0)
    {
      v13 = v21;
    }

    else
    {
      v13 = 255.0;
    }

    goto LABEL_21;
  }

  if (a5 <= 2)
  {
LABEL_21:
    v22 = 0.0;
    if (v14 >= 0.0)
    {
      v22 = v14;
    }

    v23 = 255.0;
    if (v22 > 255.0)
    {
      v22 = 255.0;
    }

    v24 = v22;
    v25 = v22 + 1.0;
    if ((v22 + 1.0) <= 255.0)
    {
      v23 = v22 + 1.0;
    }

    if (v23 <= v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = (v22 - v24) / (v23 - v24);
    }

    LOWORD(v25) = log2Lut[v24];
    LOWORD(a9) = log2Lut[v23];
    v27 = LODWORD(a9);
    a10 = 0.0;
    if (v13 >= 0.0)
    {
      *&a10 = v13;
    }

    v28 = 255.0;
    if (*&a10 > 255.0)
    {
      *&a10 = 255.0;
    }

    v29 = *&a10;
    v30 = *&a10 + 1.0;
    if ((*&a10 + 1.0) <= 255.0)
    {
      v28 = *&a10 + 1.0;
    }

    v31 = v28;
    v32 = v29;
    if (v31 > v29)
    {
      *&a10 = *&a10 - v32;
      v32 = *&a10 / (v31 - v29);
    }

    v33 = 1.0 - v26;
    v34 = LODWORD(v25);
    v35 = v26 * v27;
    v36 = 1.0 - v32;
    LOWORD(a10) = log2Lut[v29];
    LOWORD(v30) = log2Lut[v31];
    *&a10 = LODWORD(a10);
    v37 = v32 * LODWORD(v30);
    v38 = 0.0;
    if (v15 >= 0.0)
    {
      v38 = v15;
    }

    if (v38 > 255.0)
    {
      v38 = 255.0;
    }

    v39 = v38;
    v40 = v38 + 1.0;
    if ((v38 + 1.0) > 255.0)
    {
      v40 = 255.0;
    }

    if (v40 <= v39)
    {
      v41 = v39;
    }

    else
    {
      v41 = (v38 - v39) / (v40 - v39);
    }

    v14 = v35 + (v33 * v34);
    v13 = v37 + (v36 * *&a10);
    LOWORD(v33) = log2Lut[v39];
    LOWORD(v34) = log2Lut[v40];
    v15 = (v41 * LODWORD(v34)) + ((1.0 - v41) * LODWORD(v33));
    goto LABEL_48;
  }

  if (a5 != 3)
  {
    if (a5 > 4)
    {
      return result;
    }

    goto LABEL_49;
  }

LABEL_48:
  *&a10 = v14 - v13;
  v42 = v15 - v13;
  v13 = (((v15 - v13) * *(v12 + 564)) + ((v14 - v13) * *(v12 + 560))) * 0.00024414;
  v15 = ((v42 * *(v12 + 570)) + (*&a10 * *(v12 + 566))) * 0.00024414;
LABEL_49:
  v43 = *(v12 + 644);
  v44 = *(v12 + 576);
  v45 = 1.0;
  v46 = *(v12 + 652);
  LODWORD(a7) = 1.0;
  v47 = 1.0;
  if (*(v12 + 594))
  {
    LOWORD(a7) = *(v12 + 590);
    *&a7 = *&a7 * 255.0 * 0.000122070312;
    LOWORD(a10) = *(v12 + 592);
    v47 = *&a10 * 255.0 * 0.000122070312;
  }

  v48 = vcvts_n_f32_u32(v46, 0x10uLL);
  v49 = vcvts_n_f32_u32(v43, 0x10uLL);
  if (*(v12 + 596) > 0x100u)
  {
    v45 = 256.0;
  }

  *a2 = v49 * ((*(v12 + 574) - (1048600.0 / v43)) + ((v13 * *&a7) * v45));
  *a3 = v48 * ((v44 - (1048600.0 / v46)) + ((v15 * v47) * v45));
  return result;
}

void CAWBAFE::calculateSkinOnlyWBGain(CAWBAFE *this, unsigned int a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v12 = &this->var66[5][856];
  LOWORD(v9) = this->var81;
  v42 = 0;
  CAWBAFE::ComputeChannelGainsfromHistWP(this, this->var40, this->var41, &v42 + 1, &v42, a5, a6, a7, a8, a9);
  if (this->var16 < this->var18 || *(v12 + 91) >= 2u)
  {
    v16 = *(&v42 + 1);
    v17 = *&v42;
    v15 = *(v12 + 181);
  }

  else
  {
    var113 = this->var113;
    v14 = 768.0 / v9;
    if (*(var113 + 1))
    {
      v15 = 0.0;
      if (v12[3404] == 1 && *(v12 + 852) == 1 && (*(v12 + 181) - v14) >= 0.0)
      {
        v15 = *(v12 + 181) - v14;
      }

      v16 = *(v12 + 184) * 0.00024414;
      v17 = *(v12 + 186) * 0.00024414;
      *(v12 + 181) = v15;
    }

    else
    {
      v40 = *(var113 + 385);
      v41 = 0;
      v26 = CAWBAFE::ComputeProjection(this, a2, &v41 + 1, &v41, &v40, &v40 + 1, this->var85, &this->var84);
      v27 = this->var113;
      v28 = *(v27 + 770);
      if (v28 > v26 && v28 > *&v41)
      {
        v30 = CAWBAFE::calculateWeightFromTuningTable(v21, &stru_1C9332514, ((v28 - v26) + 0.5));
        v26 = v26 + ((((v28 - v26) * v30) * CAWBAFE::calculateWeightFromTuningTable(v31, &stru_1C9332558, a2)) * *(v27 + 2));
      }

      if (v12[719] == 1 && v28 < v26 && v28 < *(&v41 + 1))
      {
        v33 = v26 - v28;
        v34 = CAWBAFE::calculateWeightFromTuningTable(v21, &stru_1C933259C, (v33 + 0.5));
        v26 = v26 + (-(v33 * v34) * CAWBAFE::calculateWeightFromTuningTable(v35, &stru_1C93325E0, a2));
      }

      v43 = 0;
      var40 = this->var40;
      v37 = v26 - var40;
      if (v26 <= var40)
      {
        v37 = var40 - v26;
      }

      v38 = 0.5 - ((v37 / 20.0) * (v37 / 20.0));
      HIDWORD(v39) = 0;
      if (v38 < 0.0)
      {
        v38 = 0.0;
      }

      v15 = 1.0;
      LODWORD(v22) = HIDWORD(v40);
      *&v23 = this->var41;
      *&v39 = *&v23 * (1.0 - v38);
      CAWBAFE::ComputeChannelGainsfromHistWP(this, (var40 * (1.0 - v38)) + (v38 * v26), *&v39 + (v38 * *(&v40 + 1)), &v43 + 1, &v43, v39, v22, v23, v24, v25);
      if (v12[3404] == 1 && *(v12 + 852) == 1 && (v14 + *(v12 + 181)) <= 1.0)
      {
        v15 = v14 + *(v12 + 181);
      }

      *(v12 + 181) = v15;
      v16 = *(&v43 + 1);
      v17 = *&v43;
    }
  }

  v18 = (((((1.0 - v15) * *(&v42 + 1)) + (v16 * v15)) * 4096.0) + 0.5);
  v19 = ((1.0 - v15) * *&v42) + (v17 * v15);
  if (v18 >= 0xFFFF)
  {
    v18 = 0xFFFF;
  }

  if (v18 <= 0x800)
  {
    v18 = 2048;
  }

  *(v12 + 184) = v18;
  v20 = ((v19 * 4096.0) + 0.5);
  if (v20 >= 0xFFFF)
  {
    v20 = 0xFFFF;
  }

  if (v20 <= 0x800)
  {
    v20 = 2048;
  }

  *(v12 + 186) = v20;
  *(v12 + 185) = 4096;
}

float CAWBAFE::ComputeProjection(uint64_t a1, signed int a2, float *a3, float *a4, float *a5, float *a6, uint64_t a7, int *a8)
{
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v11 = *a5;
  v12 = (a1 + 20648);
  v13 = *(a1 + 20660);
  if (a2 >= *(a1 + 20648 + 2 * v13 - 2))
  {
    v18 = &v51 + 2;
    v19 = (a7 + 20 * *(a1 + 20660) - 20);
    v20 = 5;
    do
    {
      v21 = *v19++;
      *(v18 - 2) = v21;
      v18 += 4;
      --v20;
    }

    while (v20);
  }

  else if (a2 >= *v12)
  {
    if (v13 >= 2)
    {
      v33 = 0;
      v34 = (v13 - 1);
      v35 = v13 - 2;
      v36 = (a7 + 22);
      v50 = a3;
      do
      {
        v37 = v12[v33++];
        if (a2 >= v37)
        {
          v38 = v12[v33];
          if (a2 < v38)
          {
            if (a2 >= v12[v35])
            {
              v40 = CAWBAFE::calculateWeightFromTuningTable(0x1000, &stru_1C9332624, a2);
              a3 = v50;
              v39 = ((v40 * 4096.0) + 0.5);
            }

            else
            {
              v39 = ((a2 - v37) << 12) / (v38 - v37);
            }

            v41 = v39;
            v42 = v36;
            v43 = &v51 + 1;
            v44 = 5;
            v45 = 4096 - v39;
            do
            {
              *(v43 - 1) = (*(v42 - 1) * v41 + v45 * *(v42 - 11)) >> 12;
              *v43 = (*v42 * v41 + v45 * *(v42 - 10)) >> 12;
              v43 += 2;
              v42 += 2;
              --v44;
            }

            while (v44);
          }
        }

        v36 += 10;
      }

      while (v33 != v34);
    }
  }

  else
  {
    v15 = a7 + 2;
    v16 = &v51 + 2;
    v17 = 5;
    do
    {
      *(v16 - 2) = *(v15 - 2);
      v15 += 4;
      v16 += 4;
      --v17;
    }

    while (v17);
  }

  v22 = ((v11 * 256.0) + 0.5);
  v23 = ((*a6 * 256.0) + 0.5);
  *a8 = 0;
  if (v23 >= SWORD1(v51))
  {
    v23 = WORD1(v51);
    v24 = WORD2(v51);
    if (v22 <= v51)
    {
      v22 = v51;
    }

    if (v22 > SWORD2(v51))
    {
      LOWORD(v22) = WORD2(v51);
    }

    v29 = 1;
    goto LABEL_24;
  }

  v24 = WORD2(v51);
  if (SWORD2(v51) >= v52)
  {
    v25 = v52;
  }

  else
  {
    v25 = SWORD2(v51);
  }

  if (v22 >= v25 && v23 >= SWORD1(v52))
  {
    v49 = WORD2(v51) + (v23 - SHIWORD(v51)) * (v52 - SWORD2(v51)) / (SWORD1(v52) - SHIWORD(v51));
    if (v22 > (WORD2(v51) + (v23 - SHIWORD(v51)) * (v52 - SWORD2(v51)) / (SWORD1(v52) - SHIWORD(v51))))
    {
      *a8 = 2;
    }

    if (v49 < v22)
    {
      LOWORD(v22) = v49;
    }

    goto LABEL_25;
  }

  v26 = v22 - SWORD2(v52);
  if (v22 >= SWORD2(v52))
  {
    if (v23 < SWORD1(v52))
    {
      if (v22 < v52)
      {
        LOWORD(v27) = HIWORD(v52) + (SWORD1(v52) - SHIWORD(v52)) * v26 / (v52 - SWORD2(v52));
        if (v23 >= v27)
        {
          goto LABEL_52;
        }

        v28 = 4;
LABEL_51:
        *a8 = v28;
LABEL_52:
        if (v27 > v23)
        {
          v23 = v27;
        }

        goto LABEL_25;
      }

      LOWORD(v22) = v52;
      v23 = WORD1(v52);
      v29 = 3;
LABEL_24:
      *a8 = v29;
LABEL_25:
      v11 = vcvts_n_f32_u32(v22, 8uLL);
      *a6 = vcvts_n_f32_u32(v23, 8uLL);
      goto LABEL_26;
    }
  }

  else if (v23 < SHIWORD(v53))
  {
    if (v22 > v53)
    {
      v27 = SHIWORD(v52) + (SHIWORD(v53) - SHIWORD(v52)) * v26 / (v53 - SWORD2(v52));
      if (v23 >= v27)
      {
        goto LABEL_52;
      }

      v28 = 7;
      goto LABEL_51;
    }

    v23 = HIWORD(v53);
    LOWORD(v22) = v53;
    v29 = 6;
    goto LABEL_24;
  }

  v47 = v53;
  if (v53 <= v51)
  {
    v47 = v51;
  }

  if (v22 <= v47 && v23 >= SHIWORD(v53))
  {
    v48 = v51 + (v53 - v51) * (v23 - SWORD1(v51)) / (SHIWORD(v53) - SWORD1(v51));
    if (v22 < v48)
    {
      *a8 = 5;
      LOWORD(v22) = v48;
    }

    goto LABEL_25;
  }

LABEL_26:
  if (v23 >= SHIWORD(v53))
  {
    v30 = v53;
  }

  else
  {
    v30 = (v53 + (SWORD2(v52) - v53) * ((v23 - SHIWORD(v53)) & ~((v23 - SHIWORD(v53)) >> 31)) / (SHIWORD(v52) - SHIWORD(v53)));
  }

  *a3 = v30 * 0.0039062;
  if (v23 >= SHIWORD(v51))
  {
    v32 = v24;
  }

  else
  {
    if (v23 >= SWORD1(v52))
    {
      v31 = v52 + (v52 - v24) * (v23 - SWORD1(v52)) / (SWORD1(v52) - SHIWORD(v51));
    }

    else
    {
      v31 = SWORD2(v52) + (v52 - SWORD2(v52)) * ((v23 - SHIWORD(v52)) & ~((v23 - SHIWORD(v52)) >> 31)) / (SWORD1(v52) - SHIWORD(v52));
    }

    v32 = v31;
  }

  *a4 = v32 * 0.0039062;
  return v11;
}

float CAWBAFE::calBilinearInterpolationWeight(unsigned int a1, uint64_t a2, float a3, float a4)
{
  v4 = a1 + -1.0;
  v5 = v4 * a3;
  v6 = v4 * a4;
  v7 = ceilf(v5);
  v8 = ceilf(v6);
  if (v7 >= a1)
  {
    v7 = a1 + -1.0;
  }

  if (v8 >= a1)
  {
    v9 = a1 + -1.0;
  }

  else
  {
    v9 = v8;
  }

  v10 = v6 - floorf(v6);
  v11 = v5 - floorf(v5);
  v12 = vcvtms_s32_f32(v6) * a1;
  v13 = vcvtms_s32_f32(v5);
  *a2 = (v7 - v5) * (v9 - v6);
  *(a2 + 4) = v12 + v13;
  *(a2 + 8) = v10 * (v7 - v5);
  *(a2 + 12) = v9 * a1 + v13;
  result = v11 * v10;
  *(a2 + 16) = v11 * (v9 - v6);
  *(a2 + 20) = v12 + v7;
  *(a2 + 24) = v11 * v10;
  *(a2 + 28) = v9 * a1 + v7;
  return result;
}

uint64_t CAWBAFE::ProcessSchemeGrayworld(CAWBAFE *this, double a2, double a3, double a4, float a5, double a6)
{
  CAWBAFE::ComputeAWBGainsGrayworld(this, 256, 256, a2, a3, a4, a5, a6);
  this->var27 = 1;
  v7 = *&this->var38;
  *&this->var40 = v7;
  LOWORD(v8) = this->var33[0];
  LOWORD(v9) = this->var33[1];
  *&v9 = LODWORD(v9);
  *&v8 = LODWORD(v8) / *&v9;
  this->var35 = *&v8;
  LOWORD(v10) = this->var33[2];
  *&v9 = LODWORD(v10) / *&v9;
  this->var36 = *&v9;
  LODWORD(v10) = 1166016512;
  v11 = ((*&v8 * 4096.0) + 0.5);
  if (v11 >= 0xFFFF)
  {
    v11 = 0xFFFF;
  }

  if (v11 <= 0x800)
  {
    v11 = 2048;
  }

  this->var21[0] = v11;
  *&v8 = (*&v9 * 4096.0) + 0.5;
  v12 = *&v8;
  if (*&v8 >= 0xFFFF)
  {
    v12 = 0xFFFF;
  }

  if (v12 <= 0x800)
  {
    v12 = 2048;
  }

  this->var21[2] = v12;
  this->var21[1] = 4096;
  this->var20 = CAWBAFE::GetCCTFromColorRatio(this, *&v7, this->var87, v8, v9, v10, 0.5);
  return 1;
}

uint64_t CAWBAFE::ComputeAWBGainsGrayworld(CAWBAFE *this, int a2, int a3, double a4, double a5, double a6, float a7, double a8)
{
  var7 = this->var7;
  v10 = *(var7 + 177);
  if (v10 * a3 >= 0x200)
  {
    v11 = (v10 * a3) >> 8;
  }

  else
  {
    v11 = 2;
  }

  if (v11 > v10)
  {
    LOWORD(v11) = *(var7 + 177);
  }

  v13 = v10 - v11;
  v12 = *(var7 + 177) - v11 + (*(var7 + 177) < v11);
  v14 = (v10 + v11) >> 1;
  v15 = 2.2419;
  v16 = 1.8582;
  if (v14 > (v13 / 2))
  {
    v17 = 0;
    v18 = *(var7 + 176);
    v19 = (v12 >> 1);
    if (v18 * a2 >= 0x200)
    {
      v20 = (v18 * a2) >> 8;
    }

    else
    {
      v20 = 2;
    }

    if (v20 <= v18)
    {
      v21 = v20;
    }

    else
    {
      v21 = v18;
    }

    v22 = this->var13.var0[4];
    v23 = (v22 + this->var13.var0[3] + this->var13.var0[5]);
    v24 = (v18 + v21) >> 1;
    v25 = v18 - v21;
    *&a6 = this->var13.var0[3];
    a7 = -this->var13.var0[5];
    a5 = 0.0;
    v26 = 0.0;
    a8 = 0.0;
    do
    {
      if (v24 > (v25 / 2))
      {
        v27 = (v25 / 2);
        do
        {
          v28 = (this->var9 + 64 * (v18 * v19 + v27));
          v29 = v28[13];
          if (v29)
          {
            v30 = v28[1] / v29;
            v31 = v28[5] / v29;
            v32 = v28[9] / v29;
          }

          else
          {
            v30 = 0.0;
            v32 = 0.0;
            v31 = 0.0;
          }

          v33 = (((v23 * v31) - (v30 * *&a6)) + (a7 * v32)) / v22;
          if (v33 > 0.0 && v33 <= 255.0)
          {
            *&a8 = *&a8 + v30;
            v26 = v26 + v33;
            *&a5 = *&a5 + v32;
            ++v17;
          }

          ++v27;
        }

        while (v24 != v27);
      }

      ++v19;
    }

    while (v19 != v14);
    if (v17)
    {
      v35 = 1.0;
      if (*&a5 < 1.0)
      {
        *&a5 = 1.0;
      }

      if (v26 >= 1.0)
      {
        *&a6 = v26;
      }

      else
      {
        *&a6 = 1.0;
      }

      if (*&a8 >= 1.0)
      {
        v35 = *&a8;
      }

      v16 = *&a6 / v35;
      v15 = *&a6 / *&a5;
    }
  }

  v50 = 0.0;
  v51 = 0.0;
  if (v16 >= v15)
  {
    v36 = v15;
  }

  else
  {
    v36 = v16;
  }

  if (v36 <= 1.0)
  {
    v37 = v36;
  }

  else
  {
    v37 = 1.0;
  }

  *&a5 = (v37 * 200.0) / v16;
  v52[0] = *&a5;
  v52[1] = v37 * 200.0;
  *&a4 = (v37 * 200.0) / v15;
  v52[2] = *&a4;
  CAWBAFE::GetBinIndices(this, &v51, &v50, v52, 1, a4, a5, a6, a7, a8);
  v39 = v50;
  v38 = v51;
  if (v51 < 1.0)
  {
    v38 = 1.0;
  }

  v40 = 30.0;
  if (v38 > 30.0)
  {
    v38 = 30.0;
  }

  if (v50 < 1.0)
  {
    v39 = 1.0;
  }

  if (v39 <= 30.0)
  {
    v40 = v39;
  }

  this->var38 = v38;
  this->var39 = v40;
  v41 = (((v16 / v37) * 4096.0) + 0.5);
  if (v41 >= 0x10000)
  {
    LOWORD(v42) = -1;
  }

  else
  {
    v42 = (((v16 / v37) * 4096.0) + 0.5);
  }

  if (v41 < 0x1000)
  {
    LOWORD(v42) = 4096;
  }

  this->var33[0] = v42;
  v43 = (((1.0 / v37) * 4096.0) + 0.5);
  if (v43 >= 0x10000)
  {
    LOWORD(v44) = -1;
  }

  else
  {
    v44 = (((1.0 / v37) * 4096.0) + 0.5);
  }

  if (v43 >= 0x1000)
  {
    v45 = v44;
  }

  else
  {
    v45 = 4096;
  }

  this->var33[1] = v45;
  v46 = (((v15 / v37) * 4096.0) + 0.5);
  if (v46 >= 0x10000)
  {
    LOWORD(v47) = -1;
  }

  else
  {
    v47 = (((v15 / v37) * 4096.0) + 0.5);
  }

  if (v46 >= 0x1000)
  {
    v48 = v47;
  }

  else
  {
    v48 = 4096;
  }

  this->var33[2] = v48;
  return 1;
}

uint64_t CAWBAFE::GetCCTFromColorRatio(CAWBAFE *this, float a2, const unsigned __int16 (*a3)[3], double a4, double a5, double a6, float a7)
{
  v7 = (a2 * 256.0) + 0.5;
  v8 = v7;
  if ((*a3)[0] <= v7)
  {
    return (*a3)[2];
  }

  v9 = &(*a3)[3 * (this->var88 - 1)];
  if (*v9 >= v8)
  {
    return v9[2];
  }

  v10 = -1;
  do
  {
    v11 = &(*a3)[3 * (v10 + 2)];
    v12 = *v11;
    ++v10;
  }

  while (v12 > v8);
  v13 = &(*a3)[3 * v10];
  LOWORD(v7) = *v13;
  LOWORD(a7) = v11[2];
  v14 = LODWORD(a7);
  v15 = v12 - LODWORD(v7);
  v16 = 0.0;
  if (v15 != 0.0)
  {
    v16 = (v8 - LODWORD(v7)) / v15;
  }

  LOWORD(v7) = v13[2];
  return ((1000000.0 / ((1000000.0 / LODWORD(v7)) + (v16 * ((1000000.0 / v14) - (1000000.0 / LODWORD(v7)))))) + 0.5);
}

uint64_t CAWBAFE::ProcessSchemeTapToWB(CAWBAFE *this, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (this->var16 <= this->var17)
  {
    v9 = CAWBAFE::ProcessSchemeGrayworld(this, a2, a3, a4, *&a5, a6);
  }

  else
  {
    v9 = CAWBAFE::ComputeNeutralTargetAWB(this, a2, a3, a4, a5, a6, a7, a8);
  }

  this->var27 = v9;
  return 1;
}

uint64_t CAWBAFE::ComputeNeutralTargetAWB(CAWBAFE *this, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  var10 = this->var10;
  v10 = *(var10 + 12);
  if (v10)
  {
    LODWORD(a2) = 0.5;
    *&a4 = (*var10 / v10) * 0.5;
    *&a5 = (*(var10 + 4) / v10) * 0.5;
    v11 = (*(var10 + 8) / v10) * 0.5;
  }

  else
  {
    a2 = 0.0;
    v11 = 0.0;
    a5 = 0.0;
    a4 = 0.0;
  }

  if (v10 < (HIWORD(*(this->var7 + 10)) * *(this->var7 + 10)) >> 6)
  {
    return 0;
  }

  v12 = *&a4 / *&a2;
  v13 = v11 / *&a2;
  v14 = ((((((*&a5 / *&a2) * this->var13.var0[4]) + (v12 * this->var13.var0[3])) + (v13 * this->var13.var0[5])) / (this->var13.var0[4] + this->var13.var0[3] + this->var13.var0[5])) + 0.5);
  v15 = v14;
  if (v14 >= 256)
  {
    v15 = 255.0;
  }

  v16 = 0.0;
  if (v14 >= 0)
  {
    *&v16 = v15;
  }

  LODWORD(a2) = 1.0;
  if (*&v16 < 1.0 || *&v16 > 255.0)
  {
    return 0;
  }

  v19 = log2Lut[*&v16];
  *&v20 = v12 + 0.5;
  LOWORD(v20) = log2Lut[*&v20];
  *&v21 = v13 + 0.5;
  LOWORD(v21) = log2Lut[*&v21];
  v22 = v20 - v19;
  v23 = v21 - v19;
  v24 = ((v23 * this->var13.var1[5]) + (v22 * this->var13.var1[3])) * 0.00024414;
  *&a7 = this->var13.var1[6];
  *&a4 = ((v23 * this->var13.var1[8]) + (v22 * *&a7)) * 0.00024414;
  var3 = this->var14.var3;
  var5 = this->var14.var5;
  LODWORD(a5) = 1.0;
  if (this->var13.var6)
  {
    LOWORD(a2) = this->var13.var5[0];
    HIDWORD(v16) = 1059061760;
    *&a2 = *&a2 * 255.0 * 0.000122070312;
    LOWORD(a7) = this->var13.var5[1];
    a7 = *&a7;
    a5 = a7 * 255.0 * 0.000122070312;
    *&a5 = a5;
  }

  LODWORD(v16) = 1132462080;
  v27 = vcvts_n_f32_u32(var5, 0x10uLL);
  v28 = vcvts_n_f32_u32(var3, 0x10uLL);
  if (this->var14.var0[0] <= 0x100u)
  {
    *&v16 = 1.0;
  }

  *&a7 = this->var13.var2[2] - (1048600.0 / var5);
  *&a8 = this->var13.var2[1] - (1048600.0 / var3);
  v29 = v28 * (*&a8 + ((v24 * *&a2) * *&v16));
  this->var38 = v29;
  v30 = v27 * (*&a7 + ((*&a4 * *&a5) * *&v16));
  this->var39 = v30;
  if (!this->var145)
  {
    v29 = ((127 * this->var40 + (v29 << 7)) / 0xFFu);
    this->var38 = v29;
    v30 = ((127 * this->var41 + (v30 << 7)) / 0xFFu);
    this->var39 = v30;
  }

  this->var40 = v29;
  this->var41 = v30;
  CAWBAFE::ComputeChannelGainsfromHistWP(this, v29, v30, &this->var35, &this->var36, a4, a5, v16, a7, a8);
  LODWORD(v33) = 1166016512;
  LODWORD(v34) = 0.5;
  v35 = ((this->var35 * 4096.0) + 0.5);
  if (v35 >= 0xFFFF)
  {
    v35 = 0xFFFF;
  }

  if (v35 <= 0x800)
  {
    v35 = 2048;
  }

  this->var21[0] = v35;
  v36 = ((this->var36 * 4096.0) + 0.5);
  if (v36 >= 0xFFFF)
  {
    v36 = 0xFFFF;
  }

  if (v36 <= 0x800)
  {
    v36 = 2048;
  }

  this->var21[2] = v36;
  this->var21[1] = 4096;
  this->var20 = CAWBAFE::GetCCTFromColorRatio(this, this->var40, this->var87, v33, v34, v31, v32);
  return 1;
}

uint64_t CAWBAFE::ProcessSchemeManualWB(CAWBAFE *this, double a2, double a3, double a4, double a5, double a6)
{
  var31 = this->var31;
  if (var31 == 1)
  {
    CAWBAFE::ComputeAWBGainsfromCCT(this, *&a2);
  }

  else if (!var31)
  {
    CAWBAFE::ApplyManualWBGains(this, a2, a3, a4, a5, a6);
  }

  return 1;
}

uint64_t CAWBAFE::ApplyManualWBGains(CAWBAFE *this, double a2, double a3, double a4, double a5, double a6)
{
  v7 = this->var32[2];
  if (v7 <= 0x1000)
  {
    v7 = 4096;
  }

  this->var32[2] = v7;
  v8 = v7;
  v9.i32[0] = this->var32[0];
  v9.i32[1] = this->var32[1];
  v10 = vmax_u32(v9, 0x100000001000);
  v11 = vcvt_f32_u32(v10);
  this->var32[0] = v10.i16[0];
  this->var32[1] = v10.u16[2];
  if (v10.i32[1] < v7)
  {
    v7 = v10.u32[1];
  }

  if (v10.i32[0] < v7)
  {
    v7 = v10.i32[0];
  }

  *v10.i32 = v7;
  v35 = vdiv_f32(v11, vdup_lane_s32(v10, 0));
  v12 = vdup_n_s32(0x43480000u);
  v13 = v8 / v7;
  v14 = COERCE_DOUBLE(vdiv_f32(v12, v35));
  v36 = v14;
  *&v14 = 200.0 / v13;
  v37 = 200.0 / v13;
  CAWBAFE::GetBinIndices(this, &this->var38, &this->var39, &v36, 1, v14, *&v10, *&v12, v35.f32[0], a6);
  v15.i64[0] = *&this->var38;
  __asm { FMOV            V1.2S, #1.0 }

  v21 = vcgt_f32(_D1, *v15.i8);
  __asm { FMOV            V2.2S, #30.0 }

  v23 = vcgt_f32(*v15.i8, _D2);
  *v24.i8 = vorr_s8(v23, v21);
  v24.i64[1] = v24.i64[0];
  v25 = vmovl_s16(vbic_s8(vuzp1_s16(v23, v23), vuzp1_s16(v21, v21)));
  __asm
  {
    FMOV            V2.4S, #1.0
    FMOV            V4.4S, #30.0
  }

  v28 = vbslq_s8(v25, _Q4, _Q2);
  v15.i64[1] = v15.i64[0];
  v29 = vbslq_s8(v24, v28, v15);
  *&this->var38 = v29;
  result = CAWBAFE::GetCCTFromColorRatio(this, *v29.i32, this->var87, *v28.i64, *_Q2.i64, *v24.i64, *_Q4.i32);
  this->var20 = result;
  v31 = vmla_f32(0x3F0000003F000000, vdup_n_s32(0x45800000u), v35);
  v32 = vdup_n_s32(0x477FFF00u);
  v33 = vbsl_s8(vcgt_f32(v31, v32), v32, v31);
  *this->var21 = vcvt_u32_f32(vbsl_s8(vcge_f32(0x4500000045000000, v33), 0x4500000045000000, v33));
  v34 = (v13 * 4096.0) + 0.5;
  if (v34 > 65535.0)
  {
    v34 = 65535.0;
  }

  if (v34 <= 2048.0)
  {
    v34 = 2048.0;
  }

  this->var21[2] = v34;
  LODWORD(this->var35) = v35.i32[0];
  this->var36 = v13;
  return result;
}

void CAWBAFE::ComputeAWBGainsfromCCT(CAWBAFE *this, float a2)
{
  var29 = this->var29;
  if (var29 >= 0x1964)
  {
    var29 = 6500;
  }

  if (var29 <= 0x9C4)
  {
    v4 = 2500;
  }

  else
  {
    v4 = var29;
  }

  this->var20 = v4;
  ColorRatioXFromCCT = CAWBAFE::GetColorRatioXFromCCT(this, v4, a2);
  this->var38 = ColorRatioXFromCCT;
  ColorRatioYFromCCT = CAWBAFE::GetColorRatioYFromCCT(this, v4, ColorRatioXFromCCT);
  this->var39 = ColorRatioYFromCCT;
  this->var40 = ColorRatioXFromCCT;
  this->var41 = ColorRatioYFromCCT;
  CAWBAFE::ComputeChannelGainsfromHistWP(this, ColorRatioXFromCCT, ColorRatioYFromCCT, &this->var35, &this->var36, v7, v8, v9, v10, v11);
  v12 = ((this->var35 * 4096.0) + 0.5);
  if (v12 >= 0xFFFF)
  {
    v12 = 0xFFFF;
  }

  if (v12 <= 0x800)
  {
    v12 = 2048;
  }

  this->var21[0] = v12;
  v13 = ((this->var36 * 4096.0) + 0.5);
  if (v13 >= 0xFFFF)
  {
    v13 = 0xFFFF;
  }

  if (v13 <= 0x800)
  {
    v13 = 2048;
  }

  this->var21[2] = v13;
  this->var21[1] = 4096;
}

CAWBAFE *CAWBAFE::SetStats(CAWBAFE *this, _FE_3A_Stats_H15 *a2, _TILE_Stat_Elem *a3, _AEAWB_Stat_Elem *a4, unsigned int *a5, _FE_3A_Stats_H15 *a6)
{
  v7 = this;
  this->var7 = a2;
  this->var8 = a6;
  this->var9 = a3;
  this->var10 = a4;
  if (a3 && *(this->var7 + 177) * *(this->var7 + 176))
  {
    v8 = 0;
    v9 = (a3 + 32);
    do
    {
      v10 = *(v9 - 8);
      if (v10 >> 30)
      {
        if (v7->var1 >= 10)
        {
          this = printf("ERR: CAWBAFE::SetStats TileNo=%d PF0 [R G B N]: %d %d %d %d\n", v8, v10, *(v9 - 4), *v9, v9[4]);
          if (v7->var1 >= 10)
          {
            this = printf("ERR: CAWBAFE::SetStats TileNo=%d PF1 [R G B N]: %d %d %d %d\n", v8, *(v9 - 7), *(v9 - 3), v9[1], v9[5]);
            if (v7->var1 >= 10)
            {
              this = printf("ERR: CAWBAFE::SetStats TileNo=%d PF2 [R G B N]: %d %d %d %d\n", v8, *(v9 - 6), *(v9 - 2), v9[2], v9[6]);
            }
          }
        }
      }

      ++v8;
      v9 += 16;
    }

    while (v8 < *(v7->var7 + 177) * *(v7->var7 + 176));
  }

  v7->var12 = a5;
  return this;
}

CAWBAFE *CAWBAFE::SetFlashStateForHistAWB(CAWBAFE *this, int a2, unsigned __int16 a3, unsigned __int16 a4, unsigned __int16 a5)
{
  var69 = this->var69;
  v6 = (var69 & 1) != a2;
  v7 = var69 & 0xFFFC;
  if (a2)
  {
    ++v7;
  }

  this->var69 = v7 | (2 * v6);
  this->var70 = a3;
  this->var71 = a4;
  this->var72 = a5;
  return this;
}

void CAWBAFE::GetNewCSensorCalGains(CAWBAFE *this, unsigned __int16 *a2, unsigned __int16 *a3, unsigned int a4, const sCSensorCalGain *a5)
{
  if (a4 <= 0x9C4)
  {
    v5 = 2500;
  }

  else
  {
    v5 = a4;
  }

  if (v5 >= 0x1388)
  {
    v5 = 5000;
  }

  v6 = 5000 - v5;
  v7 = v5 - 2500;
  *a2 = (v6 * a5->var0 + v7 * a5->var2) / 0x9C4;
  *a3 = (v6 * a5->var1 + v7 * a5->var3) / 0x9C4;
}

void CAWBAFE::GetMetaData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + 20662;
  *(a2 + 916) = 0;
  v7 = *(a1 + 668);
  *(a2 + 800) = v7;
  *(a2 + 804) = *(a1 + 812);
  v8 = *(a1 + 21008);
  *(a2 + 936) = 0x10000000 / v8;
  v9 = *(a1 + 21010);
  *(a2 + 938) = 0x10000000 / v9;
  v10 = *(a1 + 21004);
  *(a2 + 932) = 0x10000000 / v10;
  v11 = *(a1 + 21006);
  *(a2 + 934) = 0x10000000 / v11;
  if (*(a1 + 21020))
  {
    LOWORD(v12) = *(a1 + 21012);
    *(a1 + 21016) = v12;
    LOWORD(v13) = *(a1 + 21014);
  }

  else
  {
    if (v7 <= 0x9C4)
    {
      v7 = 2500;
    }

    if (v7 >= 0x1388)
    {
      v7 = 5000;
    }

    v14 = 5000 - v7;
    v15 = v7 - 2500;
    v12 = (v14 * v10 + v15 * v8) / 0x9C4;
    *(a1 + 21016) = v12;
    v13 = (v14 * v11 + v15 * v9) / 0x9C4;
    *(a1 + 21012) = v12;
    *(a1 + 21014) = v13;
  }

  *(a1 + 21018) = v13;
  *(a2 + 6) = *(a1 + 672);
  *(a2 + 8) = *(a1 + 676);
  *(a2 + 10) = *(a1 + 676);
  *(a2 + 12) = *(a1 + 680);
  v16 = *(a1 + 672) * *(a1 + 21016);
  v17 = v16 >> 14;
  if (v16 >> 30)
  {
    v17 = 0xFFFF;
  }

  *(a1 + 684) = v17;
  *(a1 + 688) = *(a1 + 676);
  v18 = *(a1 + 680) * *(a1 + 21018);
  if (v18 >> 30)
  {
    v19 = 0xFFFF;
  }

  else
  {
    v19 = v18 >> 14;
  }

  *(a1 + 692) = v19;
  v20 = v17;
  *(a2 + 14) = v17;
  v21 = *(a1 + 688);
  v22 = v21;
  *(a2 + 16) = v21;
  v23 = *(a1 + 688);
  *(a2 + 18) = v23;
  v24 = *(a1 + 692);
  v25 = v24;
  if (v24 >= v21)
  {
    LOWORD(v21) = v24;
  }

  if (v22 <= v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = v22;
  }

  if (v22 < v24)
  {
    v25 = v22;
  }

  if (v17 <= v21)
  {
    v27 = v26;
  }

  else
  {
    v27 = v17;
  }

  if (v25 < v17)
  {
    v20 = v25;
  }

  v28 = (v27 << 12) / v20;
  v29 = (a2 + 737);
  *(a2 + 806) = v12;
  *(a2 + 808) = v13;
  *(a2 + 38) = 0x4000;
  *(a2 + 20) = v24;
  *(a2 + 36) = v28;
  *(a2 + 22) = (v17 << 12) / v28;
  *(a2 + 24) = (v22 << 12) / v28;
  *(a2 + 26) = (v23 << 12) / v28;
  *(a2 + 28) = (v24 << 12) / v28;
  if (*(a1 + 21198))
  {
    v30 = 1;
  }

  else
  {
    v30 = *(a1 + 20684);
  }

  *(a2 + 736) = v30 & 1;
  v31 = *(a1 + 21216) * *(a1 + 21016);
  v32 = v31 >> 30;
  v33 = v31 >> 14;
  if (v32)
  {
    LOWORD(v33) = -1;
  }

  *v29 = v33;
  *(a2 + 739) = *(a1 + 21220);
  *(a2 + 741) = *(a1 + 21220);
  v34 = *(a1 + 21224) * *(a1 + 21018);
  v35 = v34 >> 30;
  v36 = v34 >> 14;
  if (v35)
  {
    LOWORD(v36) = -1;
  }

  *(a2 + 743) = v36;
  memcpy((a2 + 1064), (a1 + 23036), 0x300uLL);
  v37 = *(v6 + 22);
  *(a2 + 746) = v37;
  if (v37 == 1)
  {
    *(a2 + 748) = *(v6 + 38);
    v38 = *(v6 + 26) * *(v6 + 354);
    v39 = v38 >> 30;
    v40 = v38 >> 14;
    if (v39)
    {
      LOWORD(v40) = -1;
    }

    *(a2 + 752) = v40;
    *(a2 + 754) = *(v6 + 30);
    *(a2 + 756) = *(v6 + 30);
    v41 = *(v6 + 34) * *(v6 + 356);
    v42 = v41 >> 30;
    v43 = v41 >> 14;
    if (v42)
    {
      LOWORD(v43) = -1;
    }

    *(a2 + 758) = v43;
    if (a3)
    {
      *(a3 + 824) = 1;
      *(a3 + 576) = *(a2 + 752);
      *(a3 + 578) = *(a2 + 754);
      *(a3 + 580) = *(a2 + 758);
    }
  }

  v44 = *(v6 + 2098);
  *(a2 + 732) = v44;
  v45 = *(a1 + 712);
  v92 = *(a1 + 696);
  v93 = v45;
  v94 = *(a1 + 728);
  CAWBAFE::RGBColorSpaceConversion(a1, v44, &v92);
  *(a2 + 761) = vuzp1q_s16(v92, v93);
  *(a2 + 777) = v94;
  if (*v6)
  {
    *(a2 + 779) = *(a1 + 732);
    *(a2 + 781) = *(a1 + 736);
    *(a2 + 783) = *(a1 + 740);
    *(a2 + 785) = *(a1 + 744);
    *(a2 + 787) = *(a1 + 748);
    *(a2 + 789) = *(a1 + 752);
    *(a2 + 791) = *(a1 + 756);
    *(a2 + 793) = *(a1 + 760);
    *(a2 + 795) = *(a1 + 764);
  }

  *(a2 + 810) = *(a1 + 773);
  *(a2 + 2) = 5;
  *(a2 + 812) = *(a1 + 849);
  *(a2 + 760) = a3 != 0;
  v46 = *(a1 + 780);
  *(a2 + 40) = *(a1 + 800);
  *(a2 + 44) = v46;
  *(a2 + 904) = 0;
  *(a2 + 908) = vcvt_n_u32_f32(*(a1 + 880), 0xCuLL);
  v47 = *(a1 + 22744);
  if (v47)
  {
    v48 = *(v47 + 4);
    *(a2 + 904) = v48;
    v49 = v48 & 0xFEFF | ((*(*(a1 + 22744) + 330) & 1) << 8);
    *(a2 + 904) = v49;
    v50 = v49 & 0xF1FF | ((*(*(a1 + 22744) + 331) & 7) << 9);
    *(a2 + 904) = v50;
    v51 = v50 & 0xEFFF | ((*(*(a1 + 22744) + 104) & 1) << 12);
    *(a2 + 904) = v51;
    *(a2 + 904) = v51 | (*(*(a1 + 22744) + 102) << 13);
    v52 = *(a1 + 22744);
    *(a2 + 920) = *(v52 + 4);
    *(a2 + 1036) = *(v52 + 3868);
    *(a2 + 1020) = *(v52 + 3852);
  }

  v53 = a1 + 672;
  if (a3)
  {
    v54 = 0;
    *(a3 + 8) = *(a1 + 668);
    *a3 = 1;
    v55 = *(a1 + 772);
    *(a3 + 2) = v55;
    *(a3 + 4) = *(a1 + 773);
    *(a3 + 42) = *(v6 + 354);
    *(a3 + 48) = 0;
    *(a3 + 56) = *(v6 + 14);
    v56 = *(v6 + 18);
    *(a3 + 156) = *(v6 + 16);
    *(a3 + 160) = v56;
    *(a3 + 92) = *(v6 + 2);
    v57 = *(v6 + 6);
    *(a3 + 164) = *(v6 + 4);
    *(a3 + 168) = v57;
    v58 = *(a1 + 849);
    *(a3 + 68) = v58;
    do
    {
      *(a3 + 12 + 2 * v54) = *(v53 + 4 * v54);
      ++v54;
    }

    while (v54 != 3);
    v59 = 0;
    v60 = a3 + 24;
    v61 = &v92;
    do
    {
      for (i = 0; i != 3; ++i)
      {
        *(v60 + 2 * i) = v61->i32[i];
      }

      ++v59;
      v60 += 6;
      v61 = (v61 + 12);
    }

    while (v59 != 3);
    for (j = 0; j != 16; j += 4)
    {
      *(a3 + 96 + j) = *(a1 + 21028 + j);
    }

    v64 = 0;
    *(a3 + 112) = *(a1 + 848);
    v65 = *(a1 + 21232);
    v66 = vcvts_n_u32_f32(*(v65 + 8), 8uLL);
    *(a3 + 118) = *(v65 + 4);
    *(a3 + 120) = v66;
    *(a3 + 834) = *(v65 + 3160);
    do
    {
      *(a3 + 828 + 2 * v64) = vcvts_n_s32_f32(*(v65 + 3164 + 4 * v64), 8uLL);
      ++v64;
    }

    while (v64 != 3);
    if (!*(v65 + 36) || (v67 = *(v65 + 44), v67 == -1))
    {
      *(a3 + 826) = 0;
      *(a3 + 132) = 0;
      *(a3 + 124) = 0;
    }

    else
    {
      v68 = v65 + 152 * v67;
      *(a3 + 124) = *(v68 + 56);
      *(a3 + 128) = *(v68 + 60);
      *(a3 + 132) = *(v68 + 64);
      *(a3 + 136) = *(v68 + 68);
      *(a3 + 826) = *(v68 + 144);
      *(a3 + 848) = *(v68 + 172) & 0x3FF;
      *(a3 + 850) = (*(v68 + 172) >> 10) & 0x3FF;
    }

    for (k = 0; k != 6; k += 2)
    {
      *(a3 + 140 + k) = *(a1 + 794 + k);
    }

    for (m = 0; m != 6; m += 2)
    {
      *(a3 + 172 + m) = *(a1 + 22752 + m);
    }

    v71 = *(v6 + 546);
    if (*(v65 + 36))
    {
      v72 = v71 == 0;
    }

    else
    {
      v72 = 0;
    }

    if (v72 || (v71 - 1) <= 1)
    {
      v74 = 0;
      *(a3 + 180) = *(v65 + 1612);
      *(a3 + 182) = *(v65 + 1604);
      *(a3 + 184) = *(v65 + 1598);
      *(a3 + 186) = vcvts_n_s32_f32(*(v65 + 3104), 8uLL);
      v75 = vcvts_n_s32_f32(*(v65 + 3120), 8uLL);
      *(a3 + 188) = vcvts_n_s32_f32(*(v65 + 3112), 8uLL);
      *(a3 + 190) = v75;
      v76 = 1;
      do
      {
        v77 = v76;
        *(a3 + 192 + 2 * v74) = vcvts_n_s32_f32(*(v65 + 3064 + 4 * v74), 8uLL);
        *(a3 + 196 + 2 * v74) = vcvts_n_s32_f32(*(v65 + 3080 + 4 * v74), 8uLL);
        v74 = 1;
        v76 = 0;
      }

      while ((v77 & 1) != 0);
      *(a3 + 560) = (((*(a1 + 868) * 255.0) << 8) + (*(a1 + 864) * 255.0));
      *(a3 + 568) = *v29;
      *(a3 + 570) = *(a2 + 739);
      *(a3 + 572) = *(a2 + 743);
      *(a3 + 846) = *(v65 + 3156);
    }

    v78 = 0;
    *(a3 + 562) = ((*(a1 + 888) * 256.0) + 0.5);
    *(a3 + 564) = ((*(a1 + 892) * 256.0) + 0.5);
    *(a3 + 146) = 1;
    *(a3 + 200) = vcvt_n_u32_f32(*(a1 + 880), 0xCuLL);
    *(a3 + 179) = *(v6 + 2098);
    *(a3 + 46) = *(v6 + 2290);
    *(a3 + 412) = *(v6 + 2304);
    do
    {
      *(a3 + 348 + v78) = *(a1 + 22968 + v78);
      v78 += 2;
    }

    while (v78 != 64);
    *(a3 + 852) = *(a1 + 844);
    v79.i64[0] = *(a1 + 920);
    v80.i64[0] = *(a1 + 908);
    v79.i32[2] = *(a1 + 928);
    v79.i32[3] = *(a1 + 904);
    v80.i32[2] = *(a1 + 916);
    v80.i32[3] = *(a1 + 824);
    v81 = vdupq_n_s32(0x43800000u);
    v82.i64[0] = 0x3F0000003F000000;
    v82.i64[1] = 0x3F0000003F000000;
    v83.i64[0] = 0x3F0000003F000000;
    v83.i64[1] = 0x3F0000003F000000;
    v84 = vmlaq_f32(v83, v81, v79);
    v79.i64[0] = 0x3F0000003F000000;
    v79.i64[1] = 0x3F0000003F000000;
    *(a3 + 854) = vuzp1q_s16(vcvtq_u32_f32(v84), vcvtq_u32_f32(vmlaq_f32(v79, v81, v80)));
    v79.i32[0] = *(a1 + 828);
    v79.i32[1] = *(a1 + 856);
    v79.i32[2] = *(a1 + 860);
    v79.i32[3] = *(a1 + 872);
    v80.i64[0] = 0x3F0000003F000000;
    v80.i64[1] = 0x3F0000003F000000;
    *(a3 + 870) = vmovn_s32(vcvtq_u32_f32(vmlaq_f32(v80, v81, v79)));
    *(a3 + 878) = ((*(a1 + 876) * 256.0) + 0.5);
    *(a3 + 415) = *(v6 + 2106);
    *(a3 + 416) = vcvt_s32_f32(vmla_f32(0x3F0000003F000000, vdup_n_s32(0x47800000u), *(v6 + 2110)));
    *(a3 + 424) = ((*(v6 + 2118) * 65536.0) + 0.5);
    *(a3 + 880) = *(a1 + 5036);
    *(a3 + 882) = *(a1 + 5040);
    v84.i64[0] = 0x3F0000003F000000;
    v84.i64[1] = 0x3F0000003F000000;
    *(a3 + 884) = vuzp1q_s16(vcvtq_u32_f32(vmlaq_f32(v84, v81, *(a1 + 5044))), vcvtq_u32_f32(vmlaq_f32(v82, v81, *(a1 + 5060))));
  }

  else
  {
    v55 = *(a1 + 772);
    LOBYTE(v58) = *(a1 + 849);
  }

  v85 = 0;
  *(a2 + 814) = v55;
  *(a2 + 824) = *(v6 + 14);
  *(a2 + 828) = *(v6 + 16);
  *(a2 + 832) = *(v6 + 18);
  *(a2 + 840) = *(v6 + 2);
  *(a2 + 844) = *(v6 + 4);
  *(a2 + 848) = *(v6 + 6);
  *(a2 + 812) = v58;
  do
  {
    *(a2 + 816 + 2 * v85) = *(v53 + 4 * v85);
    ++v85;
  }

  while (v85 != 3);
  for (n = 0; n != 6; n += 2)
  {
    *(a2 + 892 + n) = *(a1 + 794 + n);
  }

  for (ii = 0; ii != 16; ii += 4)
  {
    *(a2 + 852 + ii) = *(a1 + 21028 + ii);
  }

  *(a2 + 868) = *(a1 + 848);
  v88 = *(a1 + 21232);
  *(a2 + 870) = *(v88 + 4);
  *(a2 + 872) = vcvts_n_u32_f32(*(v88 + 8), 8uLL);
  if (!*(v88 + 36) || (v89 = *(v88 + 44), v89 == -1))
  {
    *(a2 + 876) = 0u;
  }

  else
  {
    v90 = (v88 + 152 * v89);
    *(a2 + 876) = v90[14];
    *(a2 + 880) = v90[15];
    *(a2 + 884) = v90[16];
    *(a2 + 888) = v90[17];
  }

  for (jj = 0; jj != 6; jj += 2)
  {
    *(a2 + 898 + jj) = *(a1 + 22752 + jj);
  }

  *(a2 + 1060) = *(v6 + 546);
}

void CAWBAFE::RGBColorSpaceConversion(CAWBAFE *a1, int a2, uint64_t a3)
{
  if (!a2)
  {
    return;
  }

  v3 = a3;
  if (a2 == 2)
  {
    v4 = &sRGB_to_Rec2020_Transform;
    goto LABEL_6;
  }

  if (a2 == 1)
  {
    v4 = &sRGB_to_P3D65_Transform;
LABEL_6:
    v5 = v4[1];
    v16[0] = *v4;
    v16[1] = v5;
    v17 = *(v4 + 8);
  }

  v6 = 0;
  v7 = v18;
  v8 = a3;
  do
  {
    for (i = 0; i != 3; ++i)
    {
      v7[i] = *(v8 + i * 4);
    }

    ++v6;
    v7 += 3;
    v8 += 12;
  }

  while (v6 != 3);
  v10 = v19;
  CAWBAFE::Multiply3by3Matrix(a1, v16, v18, v19);
  for (j = 0; j != 3; ++j)
  {
    for (k = 0; k != 3; ++k)
    {
      v13 = v10[k];
      v14 = (v13 + -0.5);
      v15 = (v13 + 0.5);
      if (v15 >= 0x3FFF)
      {
        v15 = 0x3FFF;
      }

      if (v13 > 0.0)
      {
        v14 = v15;
      }

      *(v3 + k * 4) = v14;
    }

    v3 += 12;
    v10 += 3;
  }
}

float CAWBAFE::ComputeHistWPFromChannelGains(CAWBAFE *this, float a2, float a3, float *a4, float *a5, double a6, double a7)
{
  v9 = this->var13.var1[6];
  v10 = this->var13.var0[3];
  v11 = this->var13.var0[4];
  v12 = this->var13.var0[5];
  var3 = this->var14.var3;
  var5 = this->var14.var5;
  v15 = 1.0;
  LODWORD(a7) = 1.0;
  if (this->var13.var6)
  {
    LOWORD(a7) = this->var13.var5[0];
    a7 = *&a7 * 255.0 * 0.000122070312;
    v15 = a7;
    LOWORD(a7) = this->var13.var5[1];
    *&a7 = *&a7 * 255.0 * 0.000122070312;
  }

  v35 = *&a7;
  if (this->var14.var0[0] <= 0x100u)
  {
    v16 = 1.0;
  }

  else
  {
    v16 = 256.0;
  }

  v33 = v16;
  v34 = vcvts_n_f32_u32(var5, 0x10uLL);
  v36 = vcvts_n_f32_u32(var3, 0x10uLL);
  v31 = this->var13.var2[1] - (1048600.0 / var3);
  v32 = this->var13.var2[2] - (1048600.0 / var5);
  v17 = vcvts_n_f32_s32(this->var13.var1[8], 0xCuLL);
  v30 = v9;
  v18 = vcvts_n_f32_s32(v9, 0xCuLL);
  v19 = (v17 * v17) + (v18 * v18);
  v20 = v17 / v19;
  v21 = vcvts_n_f32_s32(this->var13.var1[5], 0xCuLL);
  v22 = vcvts_n_f32_s32(this->var13.var1[3], 0xCuLL);
  v23 = (v21 * v21) + (v22 * v22);
  v24 = v21 / v23;
  v25 = (a3 / a2) * ((v11 + v10 + v12) / (((v10 * a3) / a2) + (v12 + (v11 * a3))));
  v26 = v22 / v23;
  v27 = log2f((v11 + v10 + v12) / (((v10 * a3) / a2) + (v12 + (v11 * a3)))) * 32.0;
  v28 = ((v24 * (log2f(v25) * -32.0)) + (v27 * v26)) / ((v24 * (-(v30 * 0.00024414) / v19)) + (v20 * v26));
  *a5 = v34 * (v32 + (v28 * (v33 * v35)));
  result = v36 * (v31 + (((v27 - (v28 * v20)) / v24) * (v33 * v15)));
  *a4 = result;
  return result;
}

uint64_t CAWBAFE::TrimHistogram(CAWBAFE *this, int8x16_t *a2, int a3)
{
  v3 = a2;
  v5 = 0;
  v134 = &this->var54[774];
  v6 = &this->var60[7];
  v7 = &this->var54[4];
  v8 = *&this->var66[5][2 * this->var68 + 1020];
  v9 = this->var67[1];
  if (a3 >= v8)
  {
    v10 = *&this->var66[5][2 * this->var68 + 1020];
  }

  else
  {
    v10 = a3;
  }

  var54 = this->var54;
  var64 = this->var64;
  v13 = a2 + 1;
  do
  {
    v14 = vmovl_u8(*&var64[v5]);
    v15 = vandq_s8(v13[-1], vmovl_s16(vceqz_s16(*v14.i8)));
    v16 = vandq_s8(*v13, vmovl_s16(vceqz_s16(*&vextq_s8(v14, v14, 8uLL))));
    *(v7 - 1) = v15;
    *v7 = v16;
    v7 += 8;
    v13 += 2;
    v17 = v5 >= 0x3F8;
    v5 += 8;
  }

  while (!v17);
  var68 = this->var68;
  if (var68 < 3)
  {
LABEL_18:
    v133 = 0u;
    v28 = -1;
    v29 = -1;
    v30 = -1;
  }

  else
  {
    v19 = (var68 - 1);
    if (a3 >= v8)
    {
      v20 = v8;
    }

    else
    {
      v20 = a3;
    }

    if (v20 <= v9)
    {
      v21 = v9;
    }

    else
    {
      v21 = v10;
    }

    v22 = v21;
    v23 = this->var85[5];
    v24 = v19 - 1;
    v25 = &this->var67[2];
    while (1)
    {
      v26 = *(v25 - 1);
      if (v22 >= v26)
      {
        v27 = *v25;
        if (v22 <= v27)
        {
          break;
        }
      }

      v23 += 10;
      ++v25;
      if (!--v24)
      {
        goto LABEL_18;
      }
    }

    v127 = ((v22 - v26) << 12) / (v27 - v26);
    v128 = *(v23 + 10);
    v129 = vdupq_n_s32(4096 - v127);
    v130 = vdupq_n_s16(v127);
    v131 = vshrn_n_s32(vmlal_s16(vmulq_s32(v129, vmovl_s16(*v23)), *v130.i8, *v128.i8), 0xCuLL);
    v132 = vmlal_high_s16(vmulq_s32(v129, vmovl_high_s16(*v23)), v130, v128);
    v133 = vshrn_high_n_s32(v131, v132, 0xCuLL);
    v28 = (v131.i16[1] - 128) >> 8;
    v30 = (vshrn_n_s32(v132, 0xCuLL).i16[3] - 128) >> 8;
    v29 = (v131.i16[0] - 128) >> 8;
  }

  if (v28 >= 31)
  {
    LOBYTE(v28) = 31;
  }

  v31 = 32 * v30;
  if (v30 <= v28)
  {
    if (v29 <= 31)
    {
      v32 = 4 * v29 + 4;
    }

    else
    {
      v32 = 128;
    }

    v33 = v28 - v30 + 1;
    v34 = &this->var54[v31];
    do
    {
      bzero(v34, v32);
      v34 += 32;
      --v33;
    }

    while (v33);
  }

  v35 = (v133.i16[3] - 128) >> 8;
  if (v35 >= 31)
  {
    LOBYTE(v35) = 31;
  }

  if (v30 <= v35)
  {
    v36 = v133.i16[2] - 128;
    if (v36 >= v133.i16[4] - 128)
    {
      v36 = v133.i16[4] - 128;
    }

    v37 = v36 >> 8;
    if (v37 >= 0)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    v39 = v35 - v30 + 1;
    v40 = &this->var54[v31 + v38];
    do
    {
      if (v38 <= 0x1F)
      {
        bzero(v40, 4 * (31 - v38) + 4);
      }

      v40 += 32;
      --v39;
    }

    while (v39);
  }

  v41 = &this->var54[1023];
  v42 = &this->var54[991];
  v43 = &this->var54[959];
  v44 = &this->var54[927];
  v45 = *v6;
  v46 = v6[1];
  v47 = v6[2];
  v48 = &this->var54[895];
  v49 = v6[3];
  v50 = &this->var54[863];
  v51 = v6[4];
  v52 = &this->var54[831];
  v53 = v6[5];
  v54 = 31;
  do
  {
    v55 = 0;
    v56 = v41;
    v57 = v42;
    v58 = v43;
    v59 = v44;
    v60 = v48;
    v61 = v50;
    v62 = -32;
    do
    {
      v63 = v57[v55];
      v64 = v58[v55];
      v65 = v59[v55];
      v66 = v48[v55];
      v67 = v61[v55];
      v68 = v52[v55];
      if (v64 | v63 | v65 | v66 | v67 | v68)
      {
        v69 = (v63 * v45 + (v64 * v46) + v65 * v47 + (v66 * v49) + v67 * v51 + (v68 * v53) + 128) >> 8;
      }

      else
      {
        LODWORD(v69) = 0;
      }

      v56[v55--] = v69;
      v17 = __CFADD__(v62++, 1);
    }

    while (!v17);
    v52 = (v52 + v55 * 4);
    v50 = &v61[v55];
    v48 = (v48 + v55 * 4);
    v44 = &v59[v55];
    v43 = &v58[v55];
    v42 = &v57[v55];
    v41 = &v56[v55];
  }

  while (v54-- > 6);
  v71 = -32;
  do
  {
    v56[v55] = (v57[v55] * v45 + (v58[v55] * v46) + v59[v55] * v47 + (v60[v55] * v49) + v61[v55] * v51 + 128) >> 8;
    --v55;
    v17 = __CFADD__(v71++, 1);
  }

  while (!v17);
  v72 = &v60[v55];
  v73 = &v59[v55];
  v74 = &v58[v55];
  v75 = &v57[v55];
  v76 = &v56[v55];
  v77 = -32;
  do
  {
    v78 = *v75--;
    v79 = v78 * v45;
    v80 = *v74--;
    v81 = (v80 * v46);
    v82 = *v73--;
    v83 = (v82 * v47);
    v84 = *v72--;
    *v76-- = (v79 + v81 + v83 + (v84 * v49) + 128) >> 8;
    v17 = __CFADD__(v77++, 1);
  }

  while (!v17);
  v85 = -32;
  do
  {
    v87 = *v75--;
    v86 = v87;
    v88 = *v74--;
    v89 = (v88 * v46);
    v90 = *v73--;
    *v76-- = (v86 * v45 + v89 + (v90 * v47) + 128) >> 8;
    v17 = __CFADD__(v85++, 1);
  }

  while (!v17);
  v91 = -32;
  do
  {
    v92 = *v75--;
    v93 = v92 * v45;
    v94 = *v74--;
    *v76-- = (v93 + (v94 * v46) + 128) >> 8;
    v17 = __CFADD__(v91++, 1);
  }

  while (!v17);
  v95 = -32;
  do
  {
    v96 = *v75--;
    *v76-- = (v96 * v45 + 128) >> 8;
    v17 = __CFADD__(v95++, 1);
  }

  while (!v17);
  v97 = 0;
  *(v76 - 3) = 0u;
  *(v76 - 7) = 0u;
  *(v76 - 11) = 0u;
  *(v76 - 15) = 0u;
  *(v76 - 19) = 0u;
  *(v76 - 23) = 0u;
  *(v76 - 27) = 0u;
  *(v76 - 31) = 0u;
  v98 = v134[553];
  v99 = v134[554];
  v100 = &this->var54[3];
  v101 = v134[555];
  do
  {
    v102 = &var54[32 * v97];
    v103 = v102[1];
    v104 = v103 * v101 + *v102 * v99 + 128;
    v105 = v103 * v99 + *v102 * v98 + v102[2] * v101 + 128;
    v106 = 29;
    v107 = v100;
    do
    {
      v109 = *(v107 - 2);
      v108 = *(v107 - 1);
      if (v108 | v109 | *v107)
      {
        v110 = (v109 * v98 + (v108 * v99) + *v107 * v101 + 128) >> 8;
      }

      else
      {
        LODWORD(v110) = 0;
      }

      *(v107 - 3) = v110;
      ++v107;
      --v106;
    }

    while (v106);
    v111 = v104 >> 8;
    v102[31] = (v102[31] * v99 + v102[30] * v98 + 128) >> 8;
    v112 = v102 + 28;
    for (i = 31; i > 2; --i)
    {
      result = *v112;
      v112[2] = result;
      --v112;
    }

    *v102 = v111;
    v102[1] = v105 >> 8;
    ++v97;
    v100 += 32;
  }

  while (v97 != 32);
  v115 = 0;
  v116 = this->var64;
  v117 = var54;
  do
  {
    v118 = 0;
    v119 = v116;
    do
    {
      v121 = *v119++;
      LODWORD(v120) = v121;
      if (v121)
      {
        v120 = (*v117 * this->var62[v118] + 128) >> 8;
      }

      *v117++ = v120;
      ++v118;
    }

    while (v118 != 32);
    ++v115;
    v116 += 32;
  }

  while (v115 != 32);
  for (j = 0; j != 32; ++j)
  {
    v123 = 32;
    v124 = v3;
    do
    {
      v125 = *v124++;
      v126 = v125 - *var54;
      if (v125 < *var54)
      {
        v126 = 0;
      }

      *var54++ = v126;
      --v123;
    }

    while (v123);
    v3 += 32;
  }

  return result;
}

float CAWBAFE::calcMixLightingScore(CAWBAFE *this)
{
  v1 = 0;
  v2 = 0;
  v3 = &this->var54[774];
  v4 = this->var56[0];
  v5 = this->var56[2];
  var54 = this->var54;
  v7 = this->var54;
  do
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v9 += v7[v8];
      v8 += 32;
    }

    while (v8 != 1024);
    if (v2 <= v9)
    {
      v2 = v9;
    }

    ++v1;
    ++v7;
  }

  while (v1 != 32);
  v10 = 0;
  v11 = (v5 + v4) >> 9;
  v12 = v11 - 1;
  v13 = 32;
  do
  {
    v10 += var54[v12];
    v12 += 32;
    --v13;
  }

  while (v13);
  v14 = &this->var54[v11];
  v15 = (v5 + v4) >> 9;
  do
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v17 += v14[v16];
      v16 += 32;
    }

    while (v16 != 1024);
    if (v10 >= v17)
    {
      v10 = v17;
    }

    ++v15;
    ++v14;
  }

  while (v15 != v11 + 2);
  result = 0.0;
  if (v2)
  {
    v19 = v10 / v2;
    if (v19 < 0.5)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = v11 << 8;
      var65 = this->var65;
      if (v27 >= v4)
      {
        v29 = v4;
      }

      else
      {
        v29 = v27;
      }

      if (v27 > v5)
      {
        v5 = v27;
      }

      do
      {
        v30 = 128;
        v31 = var54;
        v32 = var65;
        do
        {
          v34 = *v31++;
          v33 = v34;
          if (v34)
          {
            v20 += v33;
            if (*v32)
            {
              v35 = *(v3 + 525);
              v36 = v33 * *v32;
              if (v30 < v35 && v30 > v5)
              {
                v38 = v33 * *v32;
              }

              else
              {
                v38 = 0;
              }

              v21 += v33;
              v39 = v30 <= v35 && v30 >= v4;
              v40 = *(v3 + 525);
              if (v39)
              {
                v41 = 0;
              }

              else
              {
                v41 = v36;
              }

              v23 += v41;
              if (v30 >= v29)
              {
                v42 = 0;
              }

              else
              {
                v42 = v36;
              }

              v22 += v42;
              if (v27 > v35)
              {
                v40 = v27;
              }

              if (v30 <= v40)
              {
                v43 = 0;
              }

              else
              {
                v43 = v36;
              }

              v25 += v43;
              v24 += v38;
            }
          }

          ++v32;
          v30 += 256;
        }

        while (v30 != 8320);
        ++v26;
        var65 += 32;
        var54 += 32;
      }

      while (v26 != 32);
      result = 0.0;
      v44 = 0.0;
      v45 = 0.0;
      v46 = 0.0;
      if (v23)
      {
        v44 = fminf(sqrtf(v22 / v23), 1.0);
        v45 = ((v25 - v24) / v23) * 10.0;
        if (v45 < 0.0)
        {
          v45 = 0.0;
        }

        if (v45 > 1.0)
        {
          v45 = 1.0;
        }

        v46 = v21 / v20;
      }

      if ((v44 * v45) != 0.0)
      {
        result = 1.0;
        v47 = ((((v19 * -2.0) + 1.0) * v44) * v45) * v46;
        if (v47 <= 1.0)
        {
          result = v47;
        }

        if (result < 0.0)
        {
          return 0.0;
        }
      }
    }
  }

  return result;
}

float CAWBAFE::blendGrayWorldforMixLighting(CAWBAFE *this, float result)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    v7 = 1;
    v8 = v6;
    do
    {
      if (this->var65[v8])
      {
        v9 = this->var54[v8];
        v4 += v9 * v7;
        v3 += v9 * ((2 * v2) | 1);
        v5 += v9;
      }

      ++v8;
      v7 += 2;
    }

    while (v7 != 65);
    v6 += 32;
    ++v2;
  }

  while (v2 != 32);
  if (v5)
  {
    v10 = (v4 >> 1) / v5;
    var38 = this->var38;
    if (v10 > var38)
    {
      this->var38 = (v10 * result) + ((1.0 - result) * var38);
      result = (((v3 >> 1) / v5) * result) + ((1.0 - result) * this->var39);
      this->var39 = result;
    }
  }

  return result;
}

float CAWBAFE::postWPCalcTinting(CAWBAFE *this, unsigned int *a2, int a3, float a4)
{
  var67 = this->var67;
  if (a3 < this->var67[0])
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    var55 = this->var55;
    var66 = this->var66;
    var38 = this->var38;
    do
    {
      for (i = 0; i != 32; ++i)
      {
        if ((*var66)[i])
        {
          v5 += a2[i];
        }

        else if (i < ((var38 + -0.5) + 1))
        {
          v6 += a2[i];
        }
      }

      var66 = (var66 + 32);
      a2 += 32;
      v12 = v7++ >= 0x1F;
    }

    while (!v12);
LABEL_44:
    v26 = 1.0 - (v6 / v5);
    if (v26 < 0.0)
    {
      v26 = 0.0;
    }

    v27 = *var55;
    v28 = (*var55)[1];
LABEL_47:
    v32 = fmaxf(v26 * ((v27 - (v28 * var38)) * 0.0039062), 0.0);
    return (1.0 - a4) * v32;
  }

  var68 = this->var68;
  v14 = var68 - 1;
  if (a3 >= var67[var68 - 1])
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = this->var66[v14];
    var38 = this->var38;
    do
    {
      for (j = 0; j != 32; ++j)
      {
        if (v23[j])
        {
          v20 += a2[j];
        }

        else if (j < ((var38 + -0.5) + 1))
        {
          v21 += a2[j];
        }
      }

      v23 += 32;
      a2 += 32;
      v12 = v22++ >= 0x1F;
    }

    while (!v12);
    v25 = this->var55[v14];
    v26 = 1.0 - (v21 / v20);
    if (v26 < 0.0)
    {
      v26 = 0.0;
    }

    v27 = *v25;
    v28 = v25[1];
    goto LABEL_47;
  }

  if (var68 >= 2)
  {
    v15 = 0;
    v16 = 0;
    v17 = var68 - 1;
    while (1)
    {
      v18 = v16;
      v19 = var67[v16];
      if (a3 == v19)
      {
        break;
      }

      ++v16;
      if (a3 > v19)
      {
        v15 = v18;
        v17 = v18 + 1;
      }

      if ((v18 + 1) >= v14)
      {
        goto LABEL_33;
      }
    }

LABEL_34:
    v5 = 0;
    v6 = 0;
    v29 = 0;
    v30 = this->var66[v18];
    var38 = this->var38;
    do
    {
      for (k = 0; k != 32; ++k)
      {
        if (v30[k])
        {
          v5 += a2[k];
        }

        else if (k < ((var38 + -0.5) + 1))
        {
          v6 += a2[k];
        }
      }

      v30 += 32;
      a2 += 32;
      v12 = v29++ >= 0x1F;
    }

    while (!v12);
    var55 = this->var55[v18];
    goto LABEL_44;
  }

  v15 = 0;
  v17 = var68 - 1;
LABEL_33:
  v18 = v15;
  if (v15 == v17)
  {
    goto LABEL_34;
  }

  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = this->var66;
  v38 = this->var66[v18];
  v39 = this->var38;
  v40 = ((v39 + -0.5) + 1);
  v41 = a2;
  do
  {
    for (m = 0; m != 32; ++m)
    {
      if (v38[m])
      {
        v34 += v41[m];
      }

      else if (m < v40)
      {
        v35 += v41[m];
      }
    }

    v38 += 32;
    v41 += 32;
    v12 = v36++ >= 0x1F;
  }

  while (!v12);
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = this->var55;
  v47 = this->var55[v18];
  v48 = 1.0 - (v35 / v34);
  if (v48 < 0.0)
  {
    v48 = 0.0;
  }

  v49 = v48 * ((*v47 - (v47[1] * v39)) * 0.0039062);
  v50 = v37[v17];
  do
  {
    for (n = 0; n != 32; ++n)
    {
      if (v50[n])
      {
        v43 += a2[n];
      }

      else if (n < v40)
      {
        v44 += a2[n];
      }
    }

    v50 += 32;
    a2 += 32;
    v12 = v45++ >= 0x1F;
  }

  while (!v12);
  v52 = fmaxf(v49, 0.0);
  v53 = 1.0 - (v44 / v43);
  if (v53 < 0.0)
  {
    v53 = 0.0;
  }

  v32 = ((fmaxf(v53 * ((v46[v17][0] - (v46[v17][1] * v39)) * 0.0039062), 0.0) * (a3 - var67[v18])) + (v52 * (var67[v17] - a3))) / (var67[v17] - var67[v18]);
  return (1.0 - a4) * v32;
}

uint64_t CAWBAFE::ComputeAmbientLuxLevel(CAWBAFE *this, uint64_t a2)
{
  if (this->var69 >= 2u)
  {
    var70 = this->var70;
    if (a2 < var70)
    {
      var70 = a2;
    }

    if (var70 >= 0x5D2)
    {
      return 1490;
    }

    else
    {
      return var70;
    }
  }

  return a2;
}

uint64_t CAWBAFE::ComputePriorCCMResidualTileGains(CAWBAFE *this, unsigned int a2, unsigned int a3, const unsigned int *a4, sAWBInternalParams *a5, float a6, double a7, double a8, double a9, double a10, double a11, float a12)
{
  p_var69 = &this->var69;
  LOWORD(a6) = this->var59[1];
  v13 = *&this->var38;
  v14 = v13.f32[1] + LODWORD(a6);
  v15 = 31.0;
  if (v14 > 31.0)
  {
    v14 = 31.0;
  }

  v16 = v13.f32[1] - LODWORD(a6);
  v17 = 0.0;
  if (v16 < 0.0)
  {
    v16 = 0.0;
  }

  LOWORD(a12) = this->var59[0];
  v18 = LODWORD(a12);
  if ((v13.f32[0] + v18) <= 31.0)
  {
    v15 = v13.f32[0] + v18;
  }

  v19 = v13.f32[0] - v18;
  if (v19 >= 0.0)
  {
    v17 = v19;
  }

  v20 = (v16 + 1.0);
  v21 = (v14 + 1.0);
  if (v20 > v21)
  {
    goto LABEL_37;
  }

  v22 = 0;
  v23 = (v15 + 1.0);
  v24 = 0;
  do
  {
    if ((v17 + 1.0) <= v23)
    {
      v25 = v20;
      v26 = (v17 + 1.0);
      do
      {
        v27 = v26;
        if ((v17 + 1.0) <= v27)
        {
          v28 = 1.0;
          if (v15 < v27)
          {
            v28 = (v15 + 1.0) - v27;
          }
        }

        else
        {
          v28 = v27 - v17;
        }

        v29 = ((v14 + 1.0) - v25) * v28;
        if (v14 >= v25)
        {
          v29 = v28;
        }

        v30 = (v25 - v16) * v28;
        if ((v16 + 1.0) <= v25)
        {
          v30 = v29;
        }

        v31 = ((v30 * a4[(v26 - 1 + 32 * (v20 - 1))]) + 0.5);
        v24 = vmla_s32(v24, __PAIR64__((2 * (v20 - 1)) | 1u, (2 * (v26 - 1)) | 1u), vdup_n_s32(v31));
        v22 = v22 + v31;
        LOWORD(v26) = v26 + 1;
      }

      while (v23 >= v26);
    }

    LOWORD(v20) = v20 + 1;
  }

  while (v21 >= v20);
  if (v22)
  {
    v32.i32[1] = 1056964608;
    *v32.i32 = v22;
    v33 = vdiv_f32(vcvt_f32_u32(vcvt_u32_f32(vmul_f32(vcvt_f32_u32(v24), 0x3F0000003F000000))), vdup_lane_s32(v32, 0));
    if (*p_var69 > 1u || this->var16 < this->var18 || a5->var4 || this->var145)
    {
      *&a5->var10 = v33;
      _D4 = v33;
    }

    else
    {
      _D4 = vadd_f32(vmul_f32(v33, 0x3F0000003F000000), vmul_f32(*&a5->var10, 0x3F0000003F000000));
      *&a5->var10 = _D4;
    }

    _S3 = (*v32.i32 * 10.0) / a3;
    if (_S3 > 1.0)
    {
      _S3 = 1.0;
    }

    if (vcgt_f32(v13, v33).u32[0])
    {
      this->var38 = (v13.f32[0] * (1.0 - _S3)) + (_S3 * _D4.f32[0]);
    }

    __asm { FMLA            S0, S3, V4.S[1] }

    this->var39 = _S0;
  }

  else
  {
LABEL_37:
    if (*p_var69 > 1u || this->var16 < this->var18 || a5->var4 || this->var145)
    {
      v22 = 0;
      *&a5->var10 = v13;
    }

    else
    {
      v22 = 0;
      v42 = vmul_f32(vadd_f32(v13, *&a5->var10), 0x3F0000003F000000);
      *&this->var38 = v42;
      *&a5->var10 = v42;
    }
  }

  return v22;
}

CAWBAFE *CAWBAFE::ProcessRawHistogram(CAWBAFE *this)
{
  var7 = this->var7;
  if (*(var7 + 170))
  {
    v2 = var7 + 0x4000;
    if (*(var7 + 164))
    {
      v3 = *(var7 + 165);
    }

    else
    {
      v3 = 0;
    }

    if (*(var7 + 8281))
    {
      v4 = *(var7 + 8282);
    }

    else
    {
      v4 = 0;
    }

    v5 = 0;
    v6 = *(var7 + 166) != 0;
    v7 = *(var7 + 167);
    v8 = var7 + v3;
    v9 = 3072;
    if (!v7)
    {
      v9 = 0;
    }

    v10 = &v8[0x4000 * v6 + v4 + *(v2 + 12) + v9];
    v11.i64[0] = 0x400000004;
    v11.i64[1] = 0x400000004;
    do
    {
      v12 = 0;
      v13 = 0uLL;
      v14 = xmmword_1C93323B0;
      v15 = 0uLL;
      v16 = 0uLL;
      do
      {
        v17 = *(v10 + v12);
        v16 = vaddq_s32(v17, v16);
        v18 = vmulq_s32(v17, v14);
        v15 = vaddw_high_u32(v15, v18);
        v13 = vaddw_u32(v13, *v18.i8);
        v14 = vaddq_s32(v14, v11);
        v12 += 16;
      }

      while (v12 != 1024);
      v19 = vaddvq_s32(v16);
      LODWORD(v20) = v19;
      if (v19)
      {
        v20 = (vaddvq_s64(vaddq_s64(v13, v15)) << 8) / v19;
      }

      v10 += 1024;
      this->var97[v5++] = v20;
    }

    while (v5 != 4);
  }

  else
  {
    *this->var97 = 0u;
  }

  return this;
}

int32x2_t CAWBAFE::SetFDAWBVersion(int32x2_t *a1, unsigned int a2)
{
  result = vdup_n_s32(a2);
  a1[2651] = result;
  return result;
}

void *CAWBAFE::SetLowLightWPBlending(CAWBAFE *this, unsigned int a2, const unsigned int *__src, const unsigned int *a4)
{
  this->var100.var0 = a2;
  v6 = 4 * a2;
  memcpy(this->var100.var1, __src, v6);

  return memcpy(this->var100.var2, a4, v6);
}

void *CAWBAFE::SetCCMStrengthTuningTable(CAWBAFE *this, unsigned int a2, const unsigned int *__src, const unsigned int *a4)
{
  this->var101.var0 = a2;
  v6 = 4 * a2;
  memcpy(this->var101.var1, __src, v6);

  return memcpy(this->var101.var2, a4, v6);
}

float CAWBAFE::calculateWeightFromTuningTableFloat(float a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 + 4;
  v4 = *a3 - 1;
  if (v4 >= 2 && *(a3 + 8) <= a1)
  {
    v7 = 1;
    do
    {
      v6 = ++v7;
    }

    while (v4 > v7 && *(v3 + 4 * v7) <= a1);
    v5 = v7 - 1;
  }

  else
  {
    v5 = 0;
    v6 = 1;
  }

  if (*(v3 + 4 * v4) < a1)
  {
    a1 = *(v3 + 4 * v4);
  }

  if (*(a3 + 4) > a1)
  {
    a1 = *(a3 + 4);
  }

  v8 = (a1 - *(v3 + 4 * v5)) / (*(v3 + 4 * v6) - *(v3 + 4 * v5));
  return (*(a3 + 36 + 4 * v6) * v8) + ((1.0 - v8) * *(a3 + 36 + 4 * v5));
}

void CAWBAFE::calculateRGBFromCCT(CAWBAFE *this, unsigned int a2, unsigned __int16 *a3)
{
  memset(v46.var1, 0, sizeof(v46.var1));
  memset(&v46.var2[2], 0, 24);
  v46.var0 = 3;
  *&v46.var1[1] = 0x500000002;
  *v46.var2 = 0x8000000100;
  v6 = CAWBAFE::calculateWeightFromTuningTable(this, &v46, this->var74);
  v7 = ((1.0 - v6) * a2) + (v6 * 4000.0);
  this->var37 = v7;
  if (v7 < 1.0)
  {
    v7 = 1.0;
  }

  v8 = 1000000.0 / v7;
  if (v8 > 500.0)
  {
    v8 = 500.0;
  }

  if (v8 < 100.0)
  {
    v8 = 100.0;
  }

  v9 = &dword_1C9330DF0;
  v10 = 1;
  do
  {
    v11 = *v9;
    v9 += 3;
    v12 = v11;
    if (v10 > 0xC)
    {
      break;
    }

    ++v10;
  }

  while (v8 > v12);
  v13 = *(v9 - 6);
  v14 = *(v9 - 5);
  v15 = v12 - v13;
  v16 = v15 == 0.0;
  v17 = (v8 - v13) / v15;
  v18 = *(v9 - 2) - v14;
  v19 = v14 + (v17 * v18);
  v20 = v14 + (v18 * 0.0);
  if (v16)
  {
    v17 = 0.0;
  }

  else
  {
    v20 = v19;
  }

  v21 = *(v9 - 4) + (v17 * (*(v9 - 1) - *(v9 - 4)));
  v22 = v20 / v21;
  v23 = ((1.0 - v20) - v21) / v21;
  v24 = ((3.241 * v22) + -1.5374) + (-0.49861 * v23);
  v25 = ((-0.96924 * v22) + 1.876) + (0.041555 * v23);
  v26 = ((0.05563 * v22) + -0.20398) + (1.057 * v23);
  if (v25 <= v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = v25;
  }

  if (v24 <= v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = v24;
  }

  v29 = v24 / v28;
  v30 = (v24 / v28) < 0.0 || (v24 / v28) > 1.0;
  if ((v24 / v28) > 1.0 && (v24 / v28) >= 0.0)
  {
    v31 = 1.0;
  }

  else
  {
    v31 = 0.0;
  }

  if (v30)
  {
    v32 = v31;
  }

  else
  {
    v32 = v29;
  }

  v33 = v25 / v28;
  v34 = (v25 / v28) < 0.0 || (v25 / v28) > 1.0;
  if ((v25 / v28) > 1.0 && (v25 / v28) >= 0.0)
  {
    v35 = 1.0;
  }

  else
  {
    v35 = 0.0;
  }

  if (v34)
  {
    v33 = v35;
  }

  v36 = v26 / v28;
  v37 = (v26 / v28) < 0.0 || (v26 / v28) > 1.0;
  if ((v26 / v28) > 1.0 && (v26 / v28) >= 0.0)
  {
    v38 = 1.0;
  }

  else
  {
    v38 = 0.0;
  }

  if (v37)
  {
    v39 = v38;
  }

  else
  {
    v39 = v36;
  }

  v40 = powf(v33, 0.4545);
  v41 = powf(v32, 0.4545);
  v42 = powf(v39, 0.4545);
  v43 = (v41 * 65536.0) + 0.5;
  if (v43 > 65535.0)
  {
    v43 = 65535.0;
  }

  *a3 = v43;
  v44 = (v40 * 65536.0) + 0.5;
  if (v44 > 65535.0)
  {
    v44 = 65535.0;
  }

  a3[1] = v44;
  v45 = (v42 * 65536.0) + 0.5;
  if (v45 > 65535.0)
  {
    v45 = 65535.0;
  }

  a3[2] = v45;
}

uint64_t CAWBAFE::calculateWPNoEnoughStats(CAWBAFE *this, signed int a2, unsigned int a3, unsigned int a4, double a5, double a6, double a7, double a8)
{
  v100 = 0;
  v99 = 0u;
  v98 = 0u;
  var67 = this->var67;
  p_var50 = &this->var50;
  memset(&v97.var1[2], 0, 56);
  *&v97.var0 = 0x8000000002;
  v97.var1[1] = 256;
  v97.var2[0] = 256;
  memset(&v96.var1[2], 0, 56);
  *&v96.var0 = 0x10000000002;
  v96.var1[1] = 512;
  v96.var2[1] = 128;
  memset(v95.var1, 0, 64);
  v95.var0 = 3;
  *&v95.var1[1] = 0x80000000400;
  *v95.var2 = 0x8000000080;
  v95.var2[2] = 51;
  memset(&v94.var2[2], 0, 24);
  memset(&v94.var1[2], 0, 24);
  *&v94.var0 = 0x3C00000002;
  v94.var1[1] = 20000;
  *v94.var2 = 0xFF000000FFLL;
  memset(v93.var1, 0, sizeof(v93.var1));
  memset(&v93.var2[2], 0, 24);
  v93.var0 = 3;
  *&v93.var1[1] = 0x80000000200;
  *v93.var2 = 0xFF000000FFLL;
  var68 = this->var68;
  if (a2 >= *&this->var66[5][2 * var68 + 1022])
  {
    v19 = 0;
    v20 = vdup_n_s32(0x3B800000u);
    do
    {
      v21 = &this->var79[5 * var68 + 3 + v19];
      v22.i32[0] = *v21;
      v22.i32[1] = *(v21 + 1);
      *(&v98 + v19++) = vmul_f32(vcvt_f32_s32(v22), v20);
    }

    while (v19 != 5);
  }

  else if (a2 >= *var67)
  {
    if (var68 >= 2)
    {
      v77 = 0;
      v78 = (var68 - 1);
      v79 = this->var85[5];
      v80 = vdup_n_s32(0x3B800000u);
      do
      {
        v81 = var67[v77++];
        if (a2 >= v81)
        {
          v82 = var67[v77];
          if (a2 < v82)
          {
            v83 = 0;
            *&a8 = (a2 - v81) / (v82 - v81);
            v84 = 1.0 - *&a8;
            a8 = COERCE_DOUBLE(vdup_lane_s32(*&a8, 0));
            v85 = v79;
            do
            {
              v86.i32[0] = *v85;
              v86.i32[1] = v85[1];
              v87.i32[0] = *(v85 - 10);
              v87.i32[1] = *(v85 - 9);
              *(&v98 + v83) = vmul_f32(vmla_f32(vmul_n_f32(vcvt_f32_s32(v87), v84), vcvt_f32_s32(v86), *&a8), v80);
              v85 += 2;
              v83 += 8;
            }

            while (v83 != 40);
          }
        }

        v79 += 10;
      }

      while (v77 != v78);
    }
  }

  else
  {
    v15 = 0;
    v16 = vdup_n_s32(0x3B800000u);
    do
    {
      v17 = this->var85[v15];
      v18.i32[0] = *v17;
      v18.i32[1] = v17[1];
      *(&v98 + v15++) = vmul_f32(vcvt_f32_s32(v18), v16);
    }

    while (v15 != 5);
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = v100;
  v32 = v98;
  v33 = *(&v98 + 2);
  v34 = *&v99;
  var54 = this->var54;
  v36 = a2 - 61;
  do
  {
    v37 = 0;
    v38 = v23;
    v40 = *(&v98 + 1) > v38 && *(&v100 + 1) < v38;
    v42 = v25;
    do
    {
      v43 = var54[v42];
      if (v36 <= 0x4DE2u)
      {
        v44 = v37;
        v45 = ((*&v98 + *&v100) * 0.5) > v44;
        v41 = (2 * v24) | 1;
        v46 = !v40 || !v45;
        v47 = v40 && v45 ? var54[v42] : 0;
        v30 += v47;
        v48 = v46 ? 0 : v41 * v43;
        v27 += v48;
        if (v36 <= 0x152u && ((*(&v98 + 2) + *&v99) * 0.5) < v44)
        {
          v26 += v41 * v43;
          v29 += v43;
        }
      }

      v28 += v43;
      ++v42;
      ++v37;
    }

    while (v37 != 32);
    v25 += 32;
    ++v23;
    ++v24;
  }

  while (v24 != 32);
  *p_var50 = 0;
  if (!v28)
  {
    return 0;
  }

  v49 = ((v28 * 0.6) + 0.5);
  if (v30 <= v49)
  {
    result = 0;
  }

  else
  {
    v50 = v30;
    v51 = (v27 >> 1) / v30;
    if (*(&v31 + 1) > v51)
    {
      v51 = *(&v31 + 1);
    }

    if (*(&v32 + 1) >= v51)
    {
      v52 = v51;
    }

    else
    {
      v52 = *(&v32 + 1);
    }

    v53 = *&v31 + (((*&v32 - *&v31) / (*(&v32 + 1) - *(&v31 + 1))) * (v52 - *(&v31 + 1)));
    v91 = v34;
    v89 = v33;
    v54 = CAWBAFE::calculateWeightFromTuningTable(0x20, &v97, (((a3 / a4) * 256.0) + 0.5));
    v56 = v54 * CAWBAFE::calculateWeightFromTuningTable(v55, &v96, (((v50 / a4) * 256.0) + 0.5));
    var40 = this->var40;
    var41 = this->var41;
    v60 = CAWBAFE::calculateWeightFromTuningTable(v59, &v95, ((fabsf(sqrtf(((v52 - var41) * (v52 - var41)) + ((v53 - var40) * (v53 - var40)))) * 256.0) + 0.5));
    v62 = CAWBAFE::calculateWeightFromTuningTable(v61, &v94, a2);
    v33 = v89;
    v34 = v91;
    v63 = (v56 * v60) * v62;
    v64 = (var40 * (1.0 - v63)) + (v53 * v63);
    if (var40 < v53)
    {
      v64 = var40;
    }

    this->var50 = v64;
    this->var51 = (var41 * (1.0 - v63)) + (v52 * v63);
    result = 1;
  }

  if (v29 > v49)
  {
    v66 = (v26 >> 1) / v29;
    if (*(&v99 + 1) > v66)
    {
      v66 = *(&v99 + 1);
    }

    if (*(&v98 + 3) >= v66)
    {
      v67 = v66;
    }

    else
    {
      v67 = *(&v98 + 3);
    }

    v90 = v67;
    v92 = v34 + (((v33 - v34) / (*(&v98 + 3) - *(&v99 + 1))) * (v67 - *(&v99 + 1)));
    v68 = CAWBAFE::calculateWeightFromTuningTable(result, &v97, (((a3 / a4) * 256.0) + 0.5));
    v70 = v68 * CAWBAFE::calculateWeightFromTuningTable(v69, &v96, (((v29 / a4) * 256.0) + 0.5));
    v73 = CAWBAFE::calculateWeightFromTuningTable(v71, &stru_1C9332698, a2);
    v74 = *&this->var40;
    v88 = v74;
    v75 = ((v92 - v74.f32[0]) * 256.0) + 0.5;
    if (v92 <= v74.f32[0])
    {
      v75 = ((v74.f32[0] - v92) * 256.0) + 0.5;
    }

    v76 = CAWBAFE::calculateWeightFromTuningTable(v72, &v93, v75);
    *p_var50 = vmla_n_f32(vmul_n_f32(v88, 1.0 - ((v70 * v76) * v73)), __PAIR64__(LODWORD(v90), LODWORD(v92)), (v70 * v76) * v73);
    return 2;
  }

  return result;
}

uint64_t CAWBAFE::SetFlashProjectionConfig(uint64_t result, unsigned __int8 *a2)
{
  v2 = (result + 60);
  v3 = 9;
  v4 = a2;
  do
  {
    *(v2 - 9) = *v4 * 0.000015259;
    *v2++ = v4[9] * 0.000015259;
    ++v4;
    --v3;
  }

  while (v3);
  v5 = (a2 + 88);
  v6 = (result + 112);
  v7 = 6;
  v8 = vdupq_n_s32(0x37800000u);
  do
  {
    *(v6 - 1) = vmulq_f32(vcvtq_f32_s32(v5[-1]), v8);
    v9 = v5->i32[0];
    v5 = (v5 + 20);
    *v6 = v9 * 0.000015259;
    v6 += 5;
    --v7;
  }

  while (v7);
  v10 = (result + 216);
  v11 = (a2 + 212);
  v12 = 6;
  do
  {
    *v10 = *(v11 - 5) * 0.000015259;
    v10[6] = *(v11 - 4) * 0.000015259;
    v10[12] = *(v11 - 3) * 0.000015259;
    v10[18] = *(v11 - 2) * 0.000015259;
    v10[24] = *(v11 - 1) * 0.000015259;
    v13 = *v11;
    v11 += 6;
    v10[30] = v13 * 0.000015259;
    ++v10;
    --v12;
  }

  while (v12);
  if (a2[336])
  {
    if (a2[336] >= 3u)
    {
      v14 = 3;
    }

    else
    {
      v14 = a2[336];
    }

    v15 = (a2 + 338);
    v16 = (result + 364);
    do
    {
      v17 = vcvts_n_f32_s32(v15[6], 0xEuLL);
      *(v16 - 1) = vcvts_n_f32_s32(*v15, 0xEuLL);
      *v16 = v17;
      ++v15;
      v16 += 2;
      --v14;
    }

    while (v14);
  }

  if (a2[362])
  {
    if (a2[362] >= 3u)
    {
      v18 = 3;
    }

    else
    {
      v18 = a2[362];
    }

    v19 = (a2 + 364);
    v20 = (result + 388);
    do
    {
      v21 = vcvts_n_f32_s32(v19[6], 0xEuLL);
      *(v20 - 1) = vcvts_n_f32_s32(*v19, 0xEuLL);
      *v20 = v21;
      ++v19;
      v20 += 2;
      --v18;
    }

    while (v18);
  }

  if (a2[388])
  {
    if (a2[388] >= 3u)
    {
      v22 = 3;
    }

    else
    {
      v22 = a2[388];
    }

    v23 = (a2 + 390);
    v24 = (result + 412);
    do
    {
      v25 = vcvts_n_f32_s32(v23[6], 0xEuLL);
      *(v24 - 1) = vcvts_n_f32_s32(*v23, 0xEuLL);
      *v24 = v25;
      ++v23;
      v24 += 2;
      --v22;
    }

    while (v22);
  }

  if (a2[414])
  {
    if (a2[414] >= 3u)
    {
      v26 = 3;
    }

    else
    {
      v26 = a2[414];
    }

    v27 = (a2 + 416);
    v28 = (result + 436);
    do
    {
      v29 = vcvts_n_f32_s32(v27[6], 0xEuLL);
      *(v28 - 1) = vcvts_n_f32_s32(*v27, 0xEuLL);
      *v28 = v29;
      ++v27;
      v28 += 2;
      --v26;
    }

    while (v26);
  }

  *(result + 456) = a2[440] != 0;
  *(result + 457) = a2[441] != 0;
  return result;
}

CAWBAFE *CAWBAFE::SetFileVersionUpdate(CAWBAFE *this, unsigned int a2, int a3, int a4)
{
  v4 = this + 4 * a2;
  *(v4 + 5726) = a3;
  *(v4 + 5732) = a4;
  return this;
}

float CAWBAFE::EstimateCurrentSceneLuxLevel(CAWBAFE *this)
{
  v1 = MEMORY[0x1EEE9AC00](this);
  v2 = v1;
  v3 = v1[61];
  v4 = *(v3 + 352);
  v5 = *(v3 + 354);
  if (*(v3 + 354))
  {
    v6 = 0;
    v7 = 0;
    v8 = v1[63];
    v9 = *(v8 + 48) << 8;
    v10 = v1[2843];
    v11 = *(v10 + 3640);
    v12 = (((((*(v10 + 2708) * *(v10 + 92)) >> 8) * *(v10 + 1442)) >> 8) * *(v10 + 254)) >> 8;
    v13 = *(v10 + 3638) >> 4;
    v14 = v11 >> 5;
    v15 = (v8 + 32);
    v16 = v42;
    do
    {
      if (v4)
      {
        v6 += v4;
        v17 = v15;
        v18 = v4;
        v19 = v16;
        do
        {
          v20 = v17[4];
          if (v20)
          {
            v21 = (*(v17 - 8) * v12) >> 13;
            if (v21 >= v9)
            {
              v21 = v9;
            }

            v22 = (*(v17 - 4) * v12) >> 13;
            if (v22 >= v9)
            {
              v22 = v9;
            }

            v23 = (*v17 * v12) >> 13;
            if (v23 >= v9)
            {
              v23 = v9;
            }

            v20 = ((v21 * v13 + 2560 * v22 + v23 * v14) >> 10) / v20;
          }

          v17 += 16;
          *v19++ = v20;
          --v18;
        }

        while (v18);
      }

      ++v7;
      v16 += 4 * v4;
      v15 += 16 * v4;
    }

    while (v7 != v5);
  }

  heapsort(v42, (v5 * v4), 4uLL, CompareTileStats);
  v24 = 0;
  v25 = 0;
  v26 = (v5 * v4) + 2;
  if (v5 * v4)
  {
    v26 = (v5 * v4) - 1;
  }

  if (v4 >= v5)
  {
    v27 = v5;
  }

  else
  {
    v27 = v4;
  }

  v28 = *&v42[4 * (v26 >> 2)];
  v29 = *&v42[4 * (75 * ((v5 * v4) - 1) / 100)];
  v30 = (v5 * v4) - v27;
  if (v30 <= 1)
  {
    v30 = 1;
  }

  do
  {
    v25 += *&v42[v24];
    v24 += 4;
  }

  while (4 * v30 != v24);
  v31 = v25 / v30;
  *(v2 + 5262) = v31;
  v32 = v2[2843];
  v33 = (v32 + 1548);
  v34 = *(v32 + 306);
  v35 = (v31 << BYTE4(*(v32 + 1548))) * *(v32 + 1548);
  v36 = *(v2 + 5256);
  v37 = 100000 * *(v32 + 1432);
  v38 = ((v36 * v35 / v37) * v34) >> 8;
  if (v38 >= 0xFFFF)
  {
    v38 = 0xFFFF;
  }

  *(v2 + 5168) = v38;
  *(v2 + 10338) = (v38 + 0.5);
  v39 = ((v36 * ((v28 << BYTE4(*v33)) * *v33) / v37) * v34) >> 8;
  if (v39 >= 0xFFFF)
  {
    v39 = 0xFFFF;
  }

  *(v2 + 10339) = (v39 + 0.5);
  v40 = ((v36 * ((v29 << BYTE4(*v33)) * *v33) / v37) * v34) >> 8;
  if (v40 >= 0xFFFF)
  {
    v40 = 0xFFFF;
  }

  result = v40 + 0.5;
  *(v2 + 10340) = result;
  return result;
}

float CAWBAFE::SetCCMDesatForSkinEnable(CAWBAFE *this, BOOL a2, unsigned int a3)
{
  this->var104 = a2;
  result = vcvts_n_f32_u32(a3, 8uLL);
  this->var103 = result;
  return result;
}

uint64_t CAWBAFE::SetFlickerDetectionResult(uint64_t result, int a2, double a3, double a4, float a5, uint64_t a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned int a10, int a11)
{
  *(result + 22780) = vcvts_n_f32_s32(a7, 0x10uLL);
  *(result + 22768) = a2;
  v11 = 0.0;
  if (a2 == 1)
  {
    v11 = -0.5;
  }

  if (a2 == 3)
  {
    v11 = 1.0;
  }

  v12 = *(result + 480);
  v13 = &v12[4 * v12[2]];
  v13[37] = v11;
  if (a8 >= 0x10000)
  {
    v14 = 0x10000;
  }

  else
  {
    v14 = a8;
  }

  v13[5] = v14;
  v13[21] = vcvts_n_f32_u32(a9, 8uLL);
  v13[13] = *(result + 22780);
  v13[29] = a10;
  v13[45] = a5;
  v12[1] = a11 != 0;
  *v12 = 1;
  return result;
}

float32x2_t CAWBAFE::blendGrayWorldforLowCCTProjection(CAWBAFE *this, sAWBInternalParams *a2)
{
  memset(&v13.var2[3], 0, 20);
  *&v13.var0 = xmmword_1C9332420;
  memset(&v13.var1[3], 0, 24);
  *&v13.var2[1] = 0x10000000080;
  *&v12.var0 = xmmword_1C9332430;
  memset(&v12.var1[3], 0, 52);
  *v12.var2 = 0x8000000100;
  var24 = a2->var24;
  v5 = a2->var23 - var24;
  if (v5 < 0.0)
  {
    v5 = 0.0;
  }

  v6 = CAWBAFE::calculateWeightFromTuningTable(this, &v13, ((v5 * 256.0) + 0.5));
  v8 = CAWBAFE::calculateWeightFromTuningTable(v7, &v12, ((var24 * 256.0) + 0.5));
  v10 = CAWBAFE::calculateWeightFromTuningTable(v9, &stru_1C93326DC, a2->var0);
  result = vmla_n_f32(vmul_n_f32(*&a2->var20, (v6 * v8) * v10), *&this->var38, 1.0 - ((v6 * v8) * v10));
  *&this->var38 = result;
  return result;
}

CAWBAFE *CAWBAFE::GetCurrentSceneLuxLevels(CAWBAFE *this, unsigned __int16 *a2)
{
  *a2 = this->var74;
  a2[1] = this->var75;
  a2[2] = this->var76;
  return this;
}

float CAWBAFE::updatePhotometerDetectionOutput(CAWBAFE *this, sAEMetaData *a2)
{
  result = a2->luxLevel;
  if (result > 65535.0)
  {
    result = 65535.0;
  }

  if (this->var129)
  {
    var6 = this->var6;
    if (*var6 == 1)
    {
      v4 = sqrtf(result) + 0.5;
      *(var6 + *(var6 + 2) + 2) = v4;
      CAWBAFEPhotometerAssistPenrose::updatePhotometerDetectionOutput(this->var5, var6, v4);
    }
  }

  return result;
}

void CAWBAFE::ComputeDigitalFlashAWBV1(CAWBAFE *this, const unsigned int *a2, sAWBInternalParams *a3, float a4)
{
  v7 = vcvts_n_f32_s32(this->var85[29][1], 8uLL);
  v8 = vcvts_n_f32_s32(this->var85[4][1], 8uLL);
  ColorRatioXFromCCT = CAWBAFE::GetColorRatioXFromCCT(this, 0x4E20u, a4);
  v10 = CAWBAFE::GetColorRatioXFromCCT(this, 0x1F40u, ColorRatioXFromCCT);
  v11 = CAWBAFE::GetColorRatioXFromCCT(this, 0x898u, v10);
  v12 = CAWBAFE::GetColorRatioXFromCCT(this, 0xDACu, v11);
  v13 = 0;
  v14 = (ColorRatioXFromCCT + 0.5);
  v15 = (v11 + 0.5);
  this->var47.var1 = 1;
  v16 = (v8 + 0.5);
  var14 = a3->var14;
  var15 = a3->var15;
  this->var47.var2 = var14;
  this->var47.var3 = var15;
  v19 = 0.0;
  v20 = 0.0;
  v21 = 0.0;
  v22 = 0.0;
  v23 = 0.0;
  do
  {
    v24 = 0;
    v25 = v13 >= v14;
    v26 = v13 > v14;
    if (v13 > v15)
    {
      v25 = 0;
    }

    if (v13 >= (v10 + 0.5))
    {
      v26 = 0;
    }

    v27 = a2;
    do
    {
      v29 = *v27;
      v27 += 32;
      v28 = v29;
      if (v29)
      {
        v30 = v28;
        v21 = v21 + v28;
        if (v24 > (v7 + 0.5) && v25)
        {
          v23 = v23 + (v30 * (v13 + 0.5));
          v22 = v22 + (v30 * (v24 + 0.5));
          v19 = v19 + v30;
        }

        v28 = v24 > v16;
        v32 = v20 + v30;
        if ((v26 & v28) != 0)
        {
          v20 = v32;
        }
      }

      ++v24;
    }

    while (v24 != 32);
    ++v13;
    ++a2;
  }

  while (v13 != 32);
  memset(&v56.var2[3], 0, 20);
  *&v56.var0 = xmmword_1C9332440;
  memset(&v56.var1[3], 0, 24);
  *&v56.var2[1] = 0xFF00000080;
  if (v21 < 1.0 || !a3->var2)
  {
    a3->var14 = v12;
    a3->var15 = v7;
    v47 = 0.0;
    var15 = v7;
LABEL_25:
    v7 = 0.0;
    goto LABEL_26;
  }

  v53 = v10;
  v33 = (((v20 / v21) * 256.0) + 0.5);
  v34 = CAWBAFE::calculateWeightFromTuningTable(v28, &v56, (((v19 / v21) * 256.0) + 0.5));
  v37 = CAWBAFE::calculateWeightFromTuningTable(v35, &v56, v33);
  if (v34 <= 0.0)
  {
    v50 = v37;
    v47 = 0.0;
    if (v37 > 0.0 && var14 < v53)
    {
      v52 = CAWBAFE::calculateWeightFromTuningTable(v36, &stru_1C9332720, (((v53 - var14) * 256.0) + 0.5));
      v12 = (v53 * (v50 * v52)) + (var14 * (1.0 - (v50 * v52)));
      a3->var14 = v12;
    }

    else
    {
      v12 = var14;
    }

    goto LABEL_25;
  }

  v23 = v23 / v19;
  v22 = v22 / v19;
  v57 = v22;
  v58 = v23;
  v38 = CAWBAFE::ComputeProjection(this, 0, &v55, &v54, &v58, &v57, this->var85, &this->var84);
  CCTFromColorRatio = CAWBAFE::GetCCTFromColorRatio(this, v38, this->var87, v39, v40, v41, v42);
  v44 = CCTFromColorRatio;
  v45 = CAWBAFE::calculateWeightFromTuningTable(CCTFromColorRatio, &stru_1C9332764, CCTFromColorRatio);
  v47 = CAWBAFE::GetColorRatioXFromCCT(this, v44 - ((v45 * 4096.0) + 0.5), (v45 * 4096.0) + 0.5);
  var15 = a3->var15;
  if (var15 > v7)
  {
    v48 = CAWBAFE::calculateWeightFromTuningTable(v46, &stru_1C9332720, (((var15 - v7) * 256.0) + 0.5));
    var15 = (v7 * (v34 * v48)) + (var15 * (1.0 - (v34 * v48)));
    a3->var15 = var15;
  }

  v12 = a3->var14;
  if (v12 < v47)
  {
    v49 = CAWBAFE::calculateWeightFromTuningTable(v46, &stru_1C9332720, (((v47 - v12) * 256.0) + 0.5));
    v12 = (v47 * (v34 * v49)) + (v12 * (1.0 - (v34 * v49)));
    a3->var14 = v12;
  }

LABEL_26:
  this->var47.var4 = v23;
  this->var47.var5 = v22;
  this->var47.var6 = v47;
  this->var47.var7 = v7;
  this->var47.var8 = v12;
  this->var47.var9 = var15;
}

void CAWBAFE::ComputeDigitalFlashAWBV2(CAWBAFE *this, const unsigned int *a2, sAWBInternalParams *a3)
{
  v5 = 0;
  v6 = this->var85[29][1];
  this->var47.var1 = 1;
  var14 = a3->var14;
  var15 = a3->var15;
  this->var47.var2 = var14;
  this->var47.var3 = var15;
  v9 = 0.0;
  v10 = digitalFlashSkyDetectionParams;
  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  do
  {
    v14 = 0;
    v15 = a2;
    v16 = v10;
    do
    {
      v18 = *v15;
      v15 += 32;
      v17 = v18;
      if (v18)
      {
        v19 = v17;
        v9 = v9 + v17;
        if (*v16)
        {
          v13 = v13 + (v19 * (v5 + 0.5));
          v12 = v12 + (v19 * (v14 + 0.5));
          v11 = v11 + v19;
        }
      }

      ++v14;
      v16 += 32;
    }

    while (v14 != 32);
    ++v5;
    ++v10;
    ++a2;
  }

  while (v5 != 32);
  v20 = 0.0;
  if (v11 > 0.0)
  {
    v21 = v6 * 0.0039062;
    v12 = v12 / v11;
    v22 = v11 / v9;
    if ((v11 / v9) < 0.0)
    {
      v22 = 0.0;
    }

    v23 = ((v22 * 256.0) + 0.5);
    v24 = CAWBAFE::calculateWeightFromTuningTable(this, &stru_1C93321A4, v23);
    v39 = CAWBAFE::calculateWeightFromTuningTable(v25, &stru_1C93321E8, v23);
    v31 = 1.0;
    if (v12 < v21)
    {
      v31 = CAWBAFE::calculateWeightFromTuningTable(v26, &stru_1C933222C, (((v21 - v12) * 256.0) + 0.5));
    }

    v13 = v13 / v11;
    if (v24 > 0.0)
    {
      v32 = v31;
      CCTFromColorRatio = CAWBAFE::GetCCTFromColorRatio(this, v13, this->var87, v27, v28, v29, v30);
      v34 = CCTFromColorRatio;
      v35 = CAWBAFE::calculateWeightFromTuningTable(CCTFromColorRatio, &unk_1C9332270, CCTFromColorRatio);
      ColorRatioXFromCCT = CAWBAFE::GetColorRatioXFromCCT(this, v34 - (v35 + 0.5), v35 + 0.5);
      v20 = ColorRatioXFromCCT;
      if (var14 < ColorRatioXFromCCT)
      {
        var14 = var14 + ((v24 * (ColorRatioXFromCCT - var14)) * v32);
        a3->var14 = var14;
      }
    }

    if (var15 > v21)
    {
      v37 = 0.0;
      if ((var15 - v21) >= 0.0)
      {
        v37 = var15 - v21;
      }

      v38 = 1109;
      if (a3->var3)
      {
        v38 = 1092;
      }

      var15 = var15 + (-((var15 - v21) * v39) * CAWBAFE::calculateWeightFromTuningTable(v26, &digitalFlashSkyDetectionParams[v38], ((v37 * 256.0) + 0.5)));
      a3->var15 = var15;
    }
  }

  this->var47.var4 = v13;
  this->var47.var5 = v12;
  this->var47.var6 = v20;
  this->var47.var7 = 0.0;
  this->var47.var8 = var14;
  this->var47.var9 = var15;
}

void CAWBAFE::CalculateSkinWeightForSTF(CAWBAFE *this, char a2, float *a3, float *a4, float *a5)
{
  v6 = 0.0;
  if ((a2 & 1) == 0)
  {
    *a5 = 1.0;
    v6 = CAWBAFE::calculateWeightFromTuningTableFloat(fminf(fmaxf(*a4 - *a3, 0.0), 2.0), this, &defaultSkinWeightTuningTable);
  }

  *a5 = v6;
}

void CAWBAFE::CalculateSkyWhitePoint(CAWBAFE *this, float a2, float *a3, float *a4)
{
  ColorRatioXFromCCT = CAWBAFE::GetColorRatioXFromCCT(this, (1000000.0 / ((1000000.0 / a2) + 20.0)), 1000000.0 / ((1000000.0 / a2) + 20.0));
  LODWORD(v8) = 1.0;
  CAWBAFE::ComputeChannelGainsfromHistWP(this, ColorRatioXFromCCT, a3[1] + 1.0, a4, a4 + 2, v8, v9, v10, v11, v12);
  a4[1] = 1.0;
}

float CAWBAFE::GetDaylightScore(CAWBAFE *this, float *a2)
{
  result = *(this->var6 + 55);
  *a2 = result;
  return result;
}

float CAWBAFE::GetMixedLightingScore(CAWBAFE *this, float *a2)
{
  v2 = 856;
  if (this->var46)
  {
    v2 = 840;
  }

  result = *(&this->var0 + v2);
  *a2 = result;
  return result;
}

uint64_t CAWBAFE::GetSkyCCT(CAWBAFE *this, unsigned int *a2, double a3, double a4, double a5, double a6, float a7)
{
  var6 = this->var47.var6;
  if (var6 <= 0.0)
  {
    result = 0;
  }

  else
  {
    result = CAWBAFE::GetCCTFromColorRatio(this, var6, this->var87, a4, a5, a6, a7);
  }

  *a2 = result;
  return result;
}

float CAWBAFE::GetFaceAssistedAWBResultsForMatchProvidedSkinGains(CAWBAFE *this, float *a2, float *a3, int *a4, int *a5, float *a6, float *a7)
{
  CAWBAFEFDAssist::GetWhitePointCenter(this->var4, a2);
  CAWBAFEFDAssist::GetSkinPointCenter(this->var4, a3);
  var113 = this->var113;
  *a4 = *(var113 + 799);
  *a5 = *(var113 + 401);
  *a6 = *(var113 + 776);
  result = *(var113 + 778);
  *a7 = result;
  return result;
}

void CAWBAFE::SetFaceAssistedAWBResultsForMatchProvidedSkinGains(CAWBAFE *this, float *a2, float *a3, __int16 a4, int a5, float a6, float a7)
{
  CAWBAFEFDAssist::SetMatchWhitePointCenter(this->var4, a2);
  CAWBAFEFDAssist::SetMatchSkinPointCenter(this->var4, a3);
  var113 = this->var113;
  *(var113 + 800) = a4;
  *(var113 + 402) = a5;
  *(var113 + 777) = a6;
  *(var113 + 779) = a7;
  *(var113 + 1596) = 1;
}

void CAWBAFEH14::Process(CAWBAFEH14 *this, sMetaData *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  p_var68 = &this->var68;
  this->var126 = a2;
  *&this->var124 = *&a2->zoom.ispInputWidth;
  this->var122 = a2->channel;
  this->var46 = a2->ae.UBMisc.awbReflow.bGenerateReflowAWB;
  LODWORD(a4) = 1199570688;
  if (a2->ae.luxLevel <= 65535.0)
  {
    luxLevel = a2->ae.luxLevel;
  }

  else
  {
    luxLevel = 65535.0;
  }

  var18 = (this->var16 + 1);
  if (var18 >= this->var18)
  {
    var18 = this->var18;
  }

  this->var16 = var18;
  if (var18 <= this->var17 || !this->var28)
  {
    var126 = a2;
    if (this->var129)
    {
      var6 = this->var6;
      var126 = a2;
      if (*var6 == 1)
      {
        v16 = sqrtf(luxLevel) + 0.5;
        *(var6 + *(var6 + 2) + 2) = v16;
        CAWBAFEPhotometerAssistPenrose::updatePhotometerDetectionOutput(this->var5, var6, v16);
        var126 = this->var126;
      }
    }

    if (var126->awb.bBypassConvergenceFr && !this->var19)
    {
      *&a4 = this->var45.var16;
      if (*&a4 > vcvts_n_f32_u32(*&p_var68[6 * (*(p_var68 + 58) - 1) + 184], 8uLL) && *&a4 < vcvts_n_f32_u32(*(p_var68 + 92), 8uLL))
      {
        this->var16 = this->var18;
        this->var19 = 1;
        v52 = *&a4;
        var17 = this->var45.var17;
        memcpy(this->var53, this->var45.var26, sizeof(this->var53));
        v17 = vdupq_lane_s64(__SPAIR64__(LODWORD(var17), LODWORD(v52)), 0);
        *&this->var38 = v17;
        CAWBAFE::ComputeChannelGainsfromHistWP(this, v52, var17, &this->var35, &this->var36, *v17.i64, v18, v19, v20, v21);
        LODWORD(v24) = 1166016512;
        LODWORD(v25) = 0.5;
        v26 = ((this->var35 * 4096.0) + 0.5);
        if (v26 >= 0xFFFF)
        {
          v26 = 0xFFFF;
        }

        if (v26 <= 0x800)
        {
          v26 = 2048;
        }

        this->var21[0] = v26;
        v27 = ((this->var36 * 4096.0) + 0.5);
        if (v27 >= 0xFFFF)
        {
          v27 = 0xFFFF;
        }

        if (v27 <= 0x800)
        {
          v27 = 2048;
        }

        this->var21[2] = v27;
        this->var21[1] = 4096;
        this->var20 = CAWBAFE::GetCCTFromColorRatio(this, this->var40, (p_var68 + 184), v24, v25, v22, v23);
      }
    }

    var16 = this->var16;
    v29 = this->var17;
    if (var16 <= v29)
    {
      *(p_var68 + 12) = 0x100013F800000;
      *(p_var68 + 10) = 1;
      *&a3 = 0xB400000100;
      *(p_var68 + 48) = 0xB400000100;
      v30 = this->var126;
      if (v30->isReprocessing || v30->isReplay || p_var68[3224] == 1)
      {
        this->var16 = v29;
      }

      else
      {
        v46 = (a2->ae.gainAnal.v16 * a2->ae.exposureTime * a2->ae.gainDigi.v16 * a2->ae.gainDigiSensor.v16) >> 16;
        if (var16 == 1)
        {
          this->var123 = v46;
          if (p_var68[2104] == 1)
          {
            v47 = this->var6;
            if (*(v47 + 1) == 1 && *(v47 + 54) == 1)
            {
              this->var16 = v29;
              a3 = fmin(*(v47 + 76) * 4.0, 65535.0);
              *&a3 = a3;
              *(p_var68 + 3) = LODWORD(a3);
              *&a4 = COERCE_UNSIGNED_INT(0.5) | 0x40EFFFE000000000;
              *&a3 = *&a3 + 0.5;
              *(p_var68 + 8) = *&a3;
              *(p_var68 + 9) = *&a3;
              *(p_var68 + 10) = *&a3;
            }
          }
        }

        else
        {
          var123 = this->var123;
          v49 = v46 - var123;
          v50 = var123 > v46;
          v51 = var123 - v46;
          if (!v50)
          {
            v51 = v49;
          }

          if (v51)
          {
            this->var16 = v29;
            *&a3 = *&this->var66[5][2 * *p_var68 + 1018];
            if (luxLevel > *&a3)
            {
              *&a3 = luxLevel + 0.5;
              *(p_var68 + 8) = (luxLevel + 0.5);
              *(p_var68 + 3) = luxLevel;
              *(p_var68 + 18) = *&a2->ae.luxLevelLow;
            }
          }
        }
      }
    }

    else
    {
      if (*(p_var68 + 1) > 1u)
      {
        CAWBAFE::EstimateCurrentSceneLuxLevel(this);
      }

      else
      {
        *(p_var68 + 8) = (luxLevel + 0.5);
        *(p_var68 + 3) = luxLevel;
        *(p_var68 + 18) = *&a2->ae.luxLevelLow;
      }

      LODWORD(a4) = 0.5;
      *&a3 = vcvts_n_f32_u32(a2->ae.gainDigiSensor.v16 * a2->ae.gainDigi.v16, 8uLL) + 0.5;
      *(p_var68 + 96) = *&a3;
      *(p_var68 + 97) = a2->ae.sceneBrightnessForLux;
      v30 = this->var126;
    }

    v31 = v30->flash.flashCapture && v30->flash.ledType == 10 && *(p_var68 + 1) == 3 && !v30->flash.externalFlash;
    p_var68[24] = v31;
    if ((p_var68[2061] & 1) == 0)
    {
      v45 = *(p_var68 + 12);
      if (v45 > 2)
      {
        if (v45 == 3)
        {
          CAWBAFE::ProcessSchemeTapToWB(this, a3, a4, a5, a6, a7, a8, a9);
        }

        else if (v45 == 4)
        {
          *&a3 = luxLevel + 0.5;
          *(p_var68 + 8) = (luxLevel + 0.5);
          CAWBAFE::ProcessSchemeManualWB(this, a3, a4, a5, a6, a7);
        }
      }

      else if (v45 == 1)
      {
        this->var27 = CAWBAFEH14::ComputeAWBGains(this);
        this->var32[0] = this->var21[0];
        this->var32[1] = this->var21[1];
        this->var32[2] = this->var21[2];
      }

      else if (v45 == 2)
      {
        CAWBAFE::ProcessSchemeGrayworld(this, a3, a4, a5, *&a6, a7);
      }
    }

    CAWBAFE::InterpCCMfromBases(this, this->var40, this->var41, *(p_var68 + 3), this->var23, &this->var101, this->var89, *(p_var68 + 132));
    CAWBAFE::ProcessRawHistogram(this);
    CAWBAFE::ComputeAWBGainsGrayworld(this, 128, 128, v32, v33, v34, v35, v36);
    var20 = this->var20;
    this->var37 = var20;
    CAWBAFE::calculateRGBFromCCT(this, var20, this->var127);
    CAWBAFE::calculateSkinOnlyWBGain(this, *(p_var68 + 8), v38, v39, v40, v41, v42, v43, v44);
    this->var19 = 0;
    p_var68[2061] = 0;
    *(p_var68 + 11) = *(p_var68 + 8);
  }
}

uint64_t CAWBAFEH14::ComputeAWBGains(CAWBAFEH14 *this)
{
  v1 = MEMORY[0x1EEE9AC00](this);
  v4 = v2;
  v5 = v1;
  var67 = v1->var67;
  p_var46 = &v1->var46;
  LOWORD(v8) = v1->var81;
  v9 = 7680.0 / v8;
  v10 = 0.25;
  v11 = v9 < 0.25 || v9 > 2.0;
  if (v9 <= 2.0 || v9 < 0.25)
  {
    v10 = 0.03125;
  }

  v12 = v9 * 0.125;
  if (v11)
  {
    v13 = v10;
  }

  else
  {
    v13 = v12;
  }

  CAWBAFEH14::ComputeAWBChromaHistogram(v1, v2, v3);
  v14 = CAWBAFE::ComputeAmbientLuxLevel(v5, v4);
  v18 = v14;
  if (v5->var16 < v5->var18 || var67[7] > 1u || *p_var46)
  {
    v5->var45.var0 = v14;
  }

  else
  {
    v18 = CAWBAFEH14::updateLuxLevelFromSceneChangeDetection(v5, &v5->var45, v14, v15, v16, *v17.i32);
  }

  v19 = *(v5->var6 + 55);
  if (v18 < *var67 || v5->var16 <= v5->var17)
  {
    var65 = v5->var65;
    var66 = v5->var66;
LABEL_27:
    memcpy(var65, var66, 0x400uLL);
    goto LABEL_28;
  }

  v20 = *(var67 + 12);
  if (v18 >= var67[v20 - 1])
  {
    var65 = v5->var65;
    var66 = &v5->var65[1024 * v20];
    goto LABEL_27;
  }

  if (v20 >= 2)
  {
    v21 = 0;
    v22 = 0;
    v23 = v5->var66;
    v24 = v5->var66[1];
    v25.i64[0] = 0x101010101010101;
    v25.i64[1] = 0x101010101010101;
    do
    {
      v26 = var67[v22];
      if (v18 >= v26)
      {
        v27 = var67[v21 + 1];
        if (v18 < v27)
        {
          v28 = 0;
          LODWORD(v16) = ((v18 - v26) << 12) / (v27 - v26);
          do
          {
            v29 = *&v24[v28];
            v30 = *&(*v23)[v28];
            v31 = vmovl_u8(*v29.i8);
            v32 = vmovl_high_u8(v29);
            v33 = vmovl_u8(*v30.i8);
            v34 = vmovl_high_u8(v30);
            v17.i32[0] = 4096 - LODWORD(v16);
            v35 = vuzp1q_s8(vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v33.i8, v17, 0), *v31.i8, *&v16, 0), 0xCuLL), vmlal_high_lane_u16(vmull_high_lane_u16(v33, v17, 0), v31, *&v16, 0), 0xCuLL), vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v34.i8, v17, 0), *v32.i8, *&v16, 0), 0xCuLL), vmlal_high_lane_u16(vmull_high_lane_u16(v34, v17, 0), v32, *&v16, 0), 0xCuLL));
            *&v5->var65[v28] = vbslq_s8(vceqzq_s8(v30), v35, vmaxq_u8(v35, v25));
            v36 = v28 >= 0x3F0;
            v28 += 16;
          }

          while (!v36);
          LODWORD(v20) = *(var67 + 12);
        }
      }

      v21 = ++v22;
      ++v23;
      v24 += 1024;
    }

    while (v20 - 1 > v22);
  }

LABEL_28:
  if (*(var67 + 2116) == 1 && v19 > 0.0 && var67[7] <= 1u)
  {
    v39 = 1.0 - v19;
    v40 = v131 + 1;
    v41 = 5180;
    v42 = 30;
    do
    {
      v43 = (v19 * SHIWORD(v5->var45.var26[v41 + 282])) + (*(&v5->var0 + v41 * 4 + 2) * v39);
      *(v40 - 1) = llroundf((v19 * SLOWORD(v5->var45.var26[v41 + 282])) + (*(&v5->var0 + v41 * 4) * v39));
      *v40 = llroundf(v43);
      v40 += 2;
      ++v41;
      --v42;
    }

    while (v42);
    if (v18 >= var67[2] && v18 < var67[*(var67 + 12) - 2])
    {
      v129.var19 = 0.0;
      *&v129.var0 = xmmword_1C93329B4;
      *&v129.var7 = unk_1C93329C4;
      *&v129.var11 = xmmword_1C93329D4;
      *&v129.var15 = unk_1C93329E4;
      *v130 = xmmword_1C93329F8;
      *&v130[16] = unk_1C9332A08;
      *&v130[32] = xmmword_1C9332A18;
      *&v130[48] = unk_1C9332A28;
      *&v130[64] = 0;
      v44 = CAWBAFE::calculateWeightFromTuningTable(v5, &v129, ((v19 * 255.0) + 0.5));
      *v50.i32 = CAWBAFE::calculateWeightFromTuningTable(v5, v130, v18);
      v46 = 0;
      v47 = v5 + 1024 * *(var67 + 12);
      v48 = v47 + 12456;
      v49 = v47 + 10408;
      v50.i32[0] = vcvts_n_s32_f32(v44 * *v50.i32, 0xCuLL);
      v51.i64[0] = 0x101010101010101;
      v51.i64[1] = 0x101010101010101;
      do
      {
        v52 = *&v48[v46];
        v53 = *&v49[v46];
        v54 = vmovl_u8(*v52.i8);
        v55 = vmovl_high_u8(v52);
        v56 = vmovl_u8(*v53.i8);
        v57 = vmovl_high_u8(v53);
        v45.i32[0] = 4096 - v50.i32[0];
        v58 = vuzp1q_s8(vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v56.i8, v45, 0), *v54.i8, v50, 0), 0xCuLL), vmlal_high_lane_u16(vmull_high_lane_u16(v56, v45, 0), v54, v50, 0), 0xCuLL), vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v57.i8, v45, 0), *v55.i8, v50, 0), 0xCuLL), vmlal_high_lane_u16(vmull_high_lane_u16(v57, v45, 0), v55, v50, 0), 0xCuLL));
        *&v5->var65[v46] = vbslq_s8(vceqzq_s8(v53), v58, vmaxq_u8(v58, v51));
        v36 = v46 >= 0x3F0;
        v46 += 16;
      }

      while (!v36);
    }
  }

  else
  {
    v131[4] = *&v5->var85[16][0];
    v131[5] = *&v5->var85[20][0];
    v131[6] = *&v5->var85[24][0];
    v132 = *&v5->var85[28][0];
    v131[0] = *&v5->var85[0][0];
    v131[1] = *&v5->var85[4][0];
    v131[2] = *&v5->var85[8][0];
    v131[3] = *&v5->var85[12][0];
  }

  *(var67 + 803) = v19;
  *&v5->var47.var0 = 0u;
  *&v5->var47.var4 = 0u;
  *&v5->var47.var8 = 0;
  if (*p_var46)
  {
    memcpy(v130, v5->var54, sizeof(v130));
    bzero(&v129, 0x105CuLL);
    v129.var0 = v5->var45.var0;
    v129.var2 = v5->var45.var2;
    v129.var4 = 1;
    v129.var25 = v5->var45.var25;
    v59 = CAWBAFEH14::ComputeAWBGainsCore(v5, v130, v131, &v129);
    v60 = *(var67 + 2075) != 2 && *(v5->var113 + 1) || v5->var48 != 2;
    if (*(var67 + 810) != 1)
    {
      v61 = *(var67 + 811);
      if (v61 != 2 && v61 != 1)
      {
        v60 = 0;
      }
    }

    if (v129.var0 <= 9u && v60 && (var48 = v5->var48) != 0)
    {
      if (var48 == 2)
      {
        CAWBAFE::ComputeDigitalFlashAWBV2(v5, v130, &v129);
      }

      else
      {
        CAWBAFE::ComputeDigitalFlashAWBV1(v5, v130, &v129, *&v59);
      }

      memset(v128.var1, 0, sizeof(v128.var1));
      memset(&v128.var2[2], 0, 24);
      v128.var0 = 3;
      *&v128.var1[1] = 0xA00000005;
      *v128.var2 = 0xCC00000100;
      v64 = CAWBAFE::calculateWeightFromTuningTable(v5, &v128, v129.var0);
      v63 = vmla_n_f32(vmul_n_f32(*(p_var46 + 36), v64), *(p_var46 + 12), 1.0 - v64);
      *&v129.var14 = v63;
    }

    else
    {
      v63 = *&v129.var14;
    }

    *&v5->var42 = v63;
    v5->var44 = v129.var6;
  }

  memcpy(v5->var45.var26, v5->var53, sizeof(v5->var45.var26));
  if (*(var67 + 2116) == 1)
  {
    var6 = v5->var6;
    if (var6[55] < 0.05)
    {
      v66 = &var67[*(var67 + 12)];
      v67 = *(v66 - 3);
      if (v18 > v67)
      {
        v68 = *(v66 - 1);
        if (v68 >= v5->var45.var0)
        {
          var0 = v5->var45.var0;
        }

        else
        {
          var0 = v68;
        }

        v70 = var6[58];
        if (v70 <= var6[60])
        {
          v70 = var6[60];
        }

        var23 = v5->var45.var23;
        v72 = fabsf(sqrtf(var23));
        v73 = var23 == -INFINITY;
        v74 = INFINITY;
        if (!v73)
        {
          v74 = v72;
        }

        v75 = v70 * v74;
        v76 = log2f(v67 + 1.0);
        v77 = log2f((var0 + 1));
        v5->var45.var0 = exp2f((v77 * (1.0 - v75)) + (v76 * v75));
      }
    }
  }

  CAWBAFEH14::ComputeAWBGainsCore(v5, v5->var53, v131, &v5->var45);
  if (v5->var16 == v5->var18 && var67[7] <= 1u)
  {
    CCTFromColorRatio = CAWBAFE::GetCCTFromColorRatio(v5, v5->var38, v5->var87, v78, v79, v80, *&v81);
    v86 = CCTFromColorRatio;
    if (CCTFromColorRatio >= 0x1964)
    {
      v87 = 6500;
    }

    else
    {
      v87 = CCTFromColorRatio;
    }

    if (v87 <= 0x9C4)
    {
      v88 = 2500;
    }

    else
    {
      v88 = v87;
    }

    var38 = v5->var38;
    v90 = var38 - CAWBAFE::GetColorRatioXFromCCT(v5, v88 + v5->var25, v85);
    if (v90 < 0.125 || (v91 = v5->var38, v90 = v91 - CAWBAFE::GetColorRatioXFromCCT(v5, v5->var25 + v88, v90), v92 = 0.5, v90 <= 0.5))
    {
      v93 = v5->var38;
      v94 = v93 - CAWBAFE::GetColorRatioXFromCCT(v5, v5->var25 + v88, v90);
      v92 = 0.125;
      if (v94 >= 0.125)
      {
        v95 = v5->var38;
        v92 = v95 - CAWBAFE::GetColorRatioXFromCCT(v5, v5->var25 + v88, v94);
      }
    }

    if (v86 < 0xFA1)
    {
      v100 = (v88 - 2500) / 1500.0;
      v97 = 1.0 - v100;
      v98 = v100 * 0.25;
      v99 = 0.5;
    }

    else
    {
      v96 = (v88 - 4000) / 2500.0;
      v97 = 1.0 - v96;
      v98 = v96 * 0.125;
      v99 = 0.25;
    }

    v101 = v98 + (v97 * v99);
    if (v13 >= v92)
    {
      v102 = v92;
    }

    else
    {
      v102 = v13;
    }

    if (v13 >= v101)
    {
      v13 = v98 + (v97 * v99);
    }

    if (*(var67 + 1797) == 1)
    {
      v103 = CAWBAFE::calculateWeightFromTuningTable(v5, &v5->var118.var0, v18);
      if (v92 <= v103)
      {
        v92 = v103;
      }

      v104 = CAWBAFE::calculateWeightFromTuningTable(v5, &v5->var118.var1, v18);
      if (v101 <= v104)
      {
        v101 = v104;
      }

      v105 = CAWBAFE::calculateWeightFromTuningTable(v5, &v5->var118.var2, v18);
      if (v102 >= v105)
      {
        v102 = v105;
      }

      v106 = CAWBAFE::calculateWeightFromTuningTable(v5, &v5->var118.var3, v18);
      if (v13 >= v106)
      {
        v13 = v106;
      }
    }

    var40 = v5->var40;
    v108 = v5->var38;
    *&v79 = vabds_f32(var40, v108);
    if (*&v79 <= v92)
    {
      *&v80 = v5->var39;
      *&v79 = vabds_f32(v5->var41, *&v80);
      if (*&v79 <= v101)
      {
        return 1;
      }
    }

    if ((var67[1618] & 1) == 0)
    {
      v109 = v108 - var40;
      v110 = v102 + var40;
      v111 = v109 <= v92;
      if (v109 > v92)
      {
        v109 = (v102 + var40) - var40;
      }

      v112 = -v92;
      if (!v111 || v109 < v112)
      {
        v113 = var40 - v102;
        if (v109 >= v112)
        {
          v113 = v110;
        }

        v5->var38 = v113;
      }

      var41 = v5->var41;
      *&v79 = v5->var39 - var41;
      v115 = v13 + var41;
      v116 = *&v79 <= v101;
      if (*&v79 > v101)
      {
        *&v79 = (v13 + var41) - var41;
      }

      *&v80 = -v101;
      if (!v116 || *&v79 < *&v80)
      {
        v117 = var41 - v13;
        if (*&v79 >= *&v80)
        {
          v117 = v115;
        }

        v5->var39 = v117;
      }
    }
  }

  v118 = v5->var38;
  v5->var40 = v118;
  var39 = v5->var39;
  v5->var41 = var39;
  v5->var45.var16 = v118;
  v5->var45.var17 = var39;
  CAWBAFE::ComputeChannelGainsfromHistWP(v5, v118, var39, &v5->var35, &v5->var36, v79, v80, v81, v82, v83);
  LODWORD(v122) = 1166016512;
  LODWORD(v123) = 0.5;
  v124 = ((v5->var35 * 4096.0) + 0.5);
  if (v124 >= 0xFFFF)
  {
    v124 = 0xFFFF;
  }

  if (v124 <= 0x800)
  {
    v124 = 2048;
  }

  v5->var21[0] = v124;
  v125 = ((v5->var36 * 4096.0) + 0.5);
  if (v125 >= 0xFFFF)
  {
    v125 = 0xFFFF;
  }

  if (v125 <= 0x800)
  {
    v125 = 2048;
  }

  v5->var21[2] = v125;
  v5->var21[1] = 4096;
  v5->var20 = CAWBAFE::GetCCTFromColorRatio(v5, v5->var40, v5->var87, v122, v123, v120, v121);
  if (*(var67 + 548) != 1)
  {
    return 0;
  }

  CAWBAFEH14::calculateCCMDesatFactorForSkin(v5, *(var67 + 136), v18, v131);
  result = 0;
  *(var67 + 135) = (v127 * 0.75) + (*(var67 + 135) * 0.25);
  return result;
}

double CAWBAFEH14::ComputeAWBGainsCore(CAWBAFEH14 *this, int8x16_t *a2, const __int16 (*a3)[2], sAWBInternalParams *a4)
{
  v7 = &this->var67[1];
  v8 = &this->var54[4];
  p_var49 = &this->var49;
  *v145 = 0;
  var39 = 0.0;
  a4->var3 = 0;
  if (((*(this->var7 + 181) >> 2) * (*(this->var7 + 180) >> 2)) >> 6 <= 0x200)
  {
    v10 = 512;
  }

  else
  {
    v10 = ((*(this->var7 + 181) >> 2) * (*(this->var7 + 180) >> 2)) >> 6;
  }

  var0 = a4->var0;
  var67 = this->var67;
  v13 = 17576;
  if (var0 < this->var67[3])
  {
    v13 = 13480;
  }

  this->var64 = this + v13;
  CAWBAFE::TrimHistogram(this, a2, var0);
  var65 = this->var65;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = -8;
  v18 = v8;
  v19 = 0uLL;
  do
  {
    v20 = vmovl_u8(*&this->var65[v17 + 8]);
    v21 = v18[-1];
    v22 = vmulq_f32(vcvtq_f32_u32(v21), vcvtq_f32_u32(vmovl_u16(*v20.i8)));
    v23 = vceqzq_f32(v22);
    v24 = vaddq_f32(v16, vbicq_s8(v22, v23));
    v25 = vmulq_f32(vcvtq_f32_u32(vmovl_high_u16(v20)), vcvtq_f32_u32(*v18));
    v26 = vceqzq_f32(v25);
    v19 = vsubq_s32(vsubq_s32(v19, vmvnq_s8(v23)), vmvnq_s8(v26));
    v15 = vaddq_s32(vaddq_s32(vbicq_s8(v21, v23), v15), vbicq_s8(*v18, v26));
    v16 = vaddq_f32(vbicq_s8(v25, v26), v24);
    v17 += 8;
    v18 += 2;
  }

  while (v17 < 0x3F8);
  v27 = vaddv_f32(vadd_f32(*v16.f32, *&vextq_s8(v16, v16, 8uLL)));
  v28 = vadd_s32(*v15.i8, *&vextq_s8(v15, v15, 8uLL));
  v29 = vadd_s32(v28, vdup_lane_s32(v28, 1)).u32[0];
  v30 = vadd_s32(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
  v31 = vadd_s32(v30, vdup_lane_s32(v30, 1));
  if (v31.i32[0] <= 1u)
  {
    v32 = 1;
  }

  else
  {
    v32 = v31.u32[0];
  }

  v33 = (v27 / v32) << 6;
  if (v33)
  {
    v34 = 0;
    v35 = 0;
    *v31.i32 = v33;
    v36 = vdupq_lane_s32(v31, 0);
    v37 = 0uLL;
    do
    {
      v38 = 0;
      v39 = v34 * 2.0 + 1.0;
      v40 = &this->var152[4];
      v41 = v8;
      v42 = 0uLL;
      v43 = 0uLL;
      v44 = 0uLL;
      do
      {
        v45 = vmovl_u8(*&var65[v38]);
        v46 = vmulq_f32(vcvtq_f32_u32(v41[-1]), vcvtq_f32_u32(vmovl_u16(*v45.i8)));
        v47 = vminq_f32(v46, v36);
        v48 = vceqzq_f32(v46);
        v49 = vaddq_f32(v42, vbicq_s8(vmulq_f32(v40[-1], v47), v48));
        v50 = vaddq_f32(v43, vbicq_s8(vmulq_n_f32(v47, v39), v48));
        v51 = vaddq_f32(v44, vbicq_s8(v47, v48));
        v52 = vmulq_f32(vcvtq_f32_u32(vmovl_high_u16(v45)), vcvtq_f32_u32(*v41));
        v53 = vminq_f32(v52, v36);
        v54 = vceqzq_f32(v52);
        v42 = vaddq_f32(v49, vbicq_s8(vmulq_f32(*v40, v53), v54));
        v43 = vaddq_f32(v50, vbicq_s8(vmulq_n_f32(v53, v39), v54));
        v44 = vaddq_f32(v51, vbicq_s8(v53, v54));
        v41 += 2;
        v40 += 2;
        _CF = v38 >= 0x18;
        v38 += 8;
      }

      while (!_CF);
      v56 = vadd_f32(*v42.f32, *&vextq_s8(v42, v42, 8uLL));
      v57 = vadd_f32(*v43.f32, *&vextq_s8(v43, v43, 8uLL));
      v37 = vaddq_s64(v37, vcvtq_u64_f64(vcvtq_f64_f32(vadd_f32(vzip1_s32(v56, v57), vzip2_s32(v56, v57)))));
      v35 += vaddv_f32(vadd_f32(*v44.f32, *&vextq_s8(v44, v44, 8uLL)));
      ++v34;
      var65 += 32;
      v8 += 32;
    }

    while (v34 != 32);
    v58 = vshrq_n_u64(v37, 1uLL);
    if (v29 >= v10)
    {
      if (v35)
      {
        v36.f32[0] = v35;
        *&this->var38 = vdiv_f32(vcvt_f32_f64(vcvtq_f64_u64(v58)), vdup_lane_s32(*v36.f32, 0));
      }

      goto LABEL_28;
    }

LABEL_22:
    if (a4->var2 && v7[6] <= 1u && this->var16 == this->var18)
    {
      v139 = v58;
      LODWORD(v60) = CAWBAFE::calculateWeightFromTuningTable(this, &this->var100, *(v7 + 199));
      if (*&v60 < 1.0 && v35)
      {
        v63 = vcvt_f32_f64(vcvtq_f64_u64(v139));
        v140 = *&v60;
        *&v60 = v35;
        *&this->var38 = vdiv_f32(v63, vdup_lane_s32(*&v60, 0));
        v64.f32[0] = CAWBAFE::ComputeProjection(this, *v7, &v145[1], v145, &this->var38, &this->var39, a3, &this->var84);
        v64.i32[1] = LODWORD(this->var39);
        _D1 = vmla_n_f32(vmul_n_f32(*&this->var40, v140), v64, 1.0 - v140);
      }

      else if (*p_var49 && (LODWORD(v60) = 0.5, *&v59 = v29 + 0.5, CAWBAFE::calculateWPNoEnoughStats(this, a4->var0, *&v59, v10, v59, v60, v61, v62)))
      {
        _D1 = *(p_var49 + 4);
      }

      else
      {
        _D1 = *&this->var40;
      }

      *&this->var38 = _D1;
      a4->var3 = 1;
    }

    else
    {
      v66 = 0;
      v67 = 0;
      v68 = 0uLL;
      v69 = 9192;
      v70 = COERCE_INT32X2_T(1.0);
      do
      {
        v72 = -4;
        v73 = this;
        v74 = 0uLL;
        v75 = 0uLL;
        v76 = 0uLL;
        do
        {
          v77 = vcvtq_f32_u32(*(&v73->var0 + v69));
          v74 = vaddq_f32(v74, vmulq_f32(*v73->var152, v77));
          v71 = v66 * 2.0 + 1.0;
          v75 = vaddq_f32(v75, vmulq_n_f32(v77, v71));
          v76 = vaddq_f32(v76, v77);
          v72 += 4;
          v73 = (v73 + 16);
        }

        while (v72 < 0x1C);
        v78 = vadd_f32(*v74.f32, *&vextq_s8(v74, v74, 8uLL));
        v79 = vadd_f32(*v75.f32, *&vextq_s8(v75, v75, 8uLL));
        v68 = vaddq_s64(v68, vcvtq_u64_f64(vcvtq_f64_f32(vadd_f32(vzip1_s32(v78, v79), vzip2_s32(v78, v79)))));
        v67 += vaddv_f32(vadd_f32(*v76.f32, *&vextq_s8(v76, v76, 8uLL)));
        ++v66;
        v69 += 128;
      }

      while (v66 != 32);
      if (v67)
      {
        *v70.i32 = v67;
        _D1 = vdiv_f32(vcvt_f32_f64(vcvtq_f64_u64(vshrq_n_u64(v68, 1uLL))), vdup_lane_s32(v70, 0));
      }

      else
      {
        __asm { FMOV            V1.2S, #15.5 }
      }

      *&this->var38 = _D1;
      if (this->var16 == this->var17)
      {
        a4->var2 = 1;
      }
    }

    goto LABEL_43;
  }

  if (v29 < v10)
  {
    v35 = 0;
    v58 = 0uLL;
    goto LABEL_22;
  }

LABEL_28:
  a4->var2 = 1;
  _D1 = *&this->var38;
LABEL_43:
  p_var38 = &this->var38;
  p_var39 = &this->var39;
  *&a4->var12 = _D1;
  if (!a4->var3)
  {
    goto LABEL_59;
  }

  if (v7[1057])
  {
    v85 = a4->var0;
    if (*(this->var6 + 55) <= 0.0 || v85 <= v7[2] || (v86 = *(v7 + 10), v85 >= var67[v86 - 2]))
    {
      v94 = 0;
    }

    else
    {
      memset(&v143, 0, 20);
      v87 = 0.0;
      if (v86 >= 5)
      {
        v88 = (v86 - 1);
        v89 = &(*a3)[41];
        v90 = v88 - 3;
        v91 = v7 + 3;
        while (1)
        {
          v92 = *(v91 - 1);
          if (v85 >= v92)
          {
            v93 = *v91;
            if (v85 < v93)
            {
              break;
            }
          }

          v89 += 10;
          ++v91;
          if (!--v90)
          {
            goto LABEL_126;
          }
        }

        v131 = 0;
        v132 = (((v85 - v92) << 12) / (v93 - v92));
        v133 = 4096 - v132;
        do
        {
          v134 = (&v143 + v131);
          *v134 = (v132 * *(v89 - 1) + v133 * *(v89 - 11)) >> 12;
          v134[1] = (v132 * *v89 + v133 * *(v89 - 10)) >> 12;
          v131 += 4;
          v89 += 2;
        }

        while (v131 != 20);
        v87 = vcvts_n_f32_s32(SLOWORD(v143.var0), 8uLL);
      }

      var40 = this->var40;
      if (var40 < v87)
      {
        goto LABEL_131;
      }

      var41 = this->var41;
      if (var41 > vcvts_n_f32_s32(SHIWORD(v143.var0), 8uLL))
      {
        goto LABEL_131;
      }

LABEL_126:
      v137 = vcvts_n_f32_s32(SLOWORD(v143.var1[0]), 8uLL);
      v138 = vcvts_n_f32_s32(SLOWORD(v143.var1[1]), 8uLL);
      if (v137 <= v138)
      {
        v137 = v138;
      }

      if (var40 <= v137)
      {
        v94 = var41 < vcvts_n_f32_s32(SHIWORD(v143.var1[2]), 8uLL);
      }

      else
      {
LABEL_131:
        v94 = 1;
      }
    }
  }

  else
  {
    v94 = 0;
    v85 = a4->var0;
  }

  if (v85 >= var67[*(v7 + 10) - 2] || v94 || (var38 = 0.0, a4->var4))
  {
LABEL_59:
    v96 = CAWBAFE::calcMixLightingScore(this);
    if (v7[6] <= 1u && this->var16 >= this->var18 && !a4->var4 && *(v7 + 3234) != 1)
    {
      LODWORD(v97) = 0.5;
      v96 = (v96 + a4->var6) * 0.5;
    }

    a4->var6 = v96;
    if (v96 > 0.0)
    {
      v96 = CAWBAFE::blendGrayWorldforMixLighting(this, v96);
    }

    v103 = a4->var0;
    if (v103 <= var67[*(v7 + 10) - 1] && !a4->var3 && v29)
    {
      v104 = CAWBAFE::ComputePriorCCMResidualTileGains(this, v10, v29, a2, a4, v96, v97, v98, v99, v100, v101, v102) / (a4->var25 + 1.0);
      if (v104 > 1.0)
      {
        v104 = 1.0;
      }

      a4->var24 = v104;
      v103 = a4->var0;
    }

    var38 = this->var38;
    var39 = this->var39;
    v105 = CAWBAFE::ComputeProjection(this, v103, &v145[1], v145, &this->var38, &var39, a3, (v7 + 33));
    if (*(v7 + 33) == 2 && a4->var0 < var67[*(v7 + 10) - 3] && a4->var20 > *p_var38)
    {
      CAWBAFE::blendGrayWorldforLowCCTProjection(this, a4);
      v106 = CAWBAFE::ComputeProjection(this, a4->var0, &v145[1], v145, &this->var38, &this->var39, a3, (v7 + 33));
      *&v143.var0 = xmmword_1C9332890;
      *&v143.var1[3] = unk_1C93328A0;
      *&v143.var1[7] = xmmword_1C93328B0;
      *&v143.var2[3] = unk_1C93328C0;
      v143.var2[7] = 0;
      v107 = this->var38 - v106;
      if (v107 >= 0.0)
      {
        v108 = (v107 + 0.5);
      }

      else
      {
        v108 = 0;
      }

      v109 = CAWBAFE::calculateWeightFromTuningTable(this, &v143, v108);
      v110 = v145[0];
      v111 = ((1.0 - v109) * v145[0]) + (this->var38 * v109);
      v112 = a4->var23 / ((a4->var23 + a4->var24) + 0.0001);
      v113 = (v112 + -0.4) / 0.6;
      if (v113 < 0.0)
      {
        v113 = 0.0;
      }

      v114 = powf(v113, 0.125);
      v105 = (v110 * (1.0 - v114)) + (v111 * v114);
    }

    else
    {
      *p_var39 = var39;
    }

    if (!a4->var3 && v7[6] <= 1u)
    {
      v115 = CAWBAFE::postWPCalcTinting(this, a2, a4->var0, a4->var6);
      v116 = a4->var24 + -0.5;
      if (v116 < 0.0)
      {
        v116 = 0.0;
      }

      v117 = v115 * (1.0 - v116);
      if (this->var16 >= this->var18 && !a4->var4 && *(v7 + 3234) != 1)
      {
        v117 = (v117 + a4->var7) * 0.5;
      }

      a4->var7 = v117;
      if (v105 <= *p_var38)
      {
        v118 = *p_var38 - v117;
        if (v105 >= v118)
        {
          v105 = v118;
        }
      }

      else
      {
        v105 = v105 - v117;
      }
    }

    v119 = v145[1];
    if (v105 > v145[1])
    {
      v119 = v105;
    }

    *p_var38 = v119;
  }

  var113 = this->var113;
  if (!*(var113 + 1))
  {
    if ((v7[274] & 1) != 0 || a4->var0 < v7[1] || v7[6] > 1u)
    {
      goto LABEL_113;
    }

    v143.var2[7] = 0;
    *&v143.var0 = xmmword_1C93328D4;
    *&v143.var1[3] = unk_1C93328E4;
    *&v143.var1[7] = xmmword_1C93328F4;
    *&v143.var2[3] = unk_1C9332904;
    memset(v142.var1, 0, 64);
    v142.var0 = 3;
    *&v142.var1[1] = 0xA00000002;
    *&v142.var2[1] = 0x8000000040;
    if (*(var113 + 401) > 1u)
    {
      v121 = *(var113 + 770);
      if (v121 <= v145[0])
      {
        v122 = 0;
      }

      else if (v121 <= *p_var38)
      {
        v122 = 0;
      }

      else
      {
        v122 = ((v121 - *p_var38) + 0.5);
      }

      v123 = CAWBAFE::calculateWeightFromTuningTable(this, &v142, v122);
      v124 = (a4->var8 + (v123 * CAWBAFE::calculateWeightFromTuningTable(this, &v143, a4->var0))) * 0.5;
      a4->var8 = v124;
      var113 = this->var113;
      this->var38 = (v124 * *(var113 + 770)) + (this->var38 * (1.0 - v124));
      v125 = this->var39;
      if (v125 < *(var113 + 773))
      {
        *p_var39 = (v124 * *(var113 + 771)) + (v125 * (1.0 - v124));
      }
    }

    else
    {
      a4->var8 = 0.0;
    }

    if (!*(var113 + 1))
    {
LABEL_113:
      if (*(v7 + 549) == 1 && a4->var0 >= v7[2] && v7[6] <= 1u)
      {
        v143.var2[7] = 0;
        *&v143.var0 = xmmword_1C9332918;
        *&v143.var1[3] = unk_1C9332928;
        *&v143.var1[7] = xmmword_1C9332938;
        *&v143.var2[3] = unk_1C9332948;
        *&v142.var0 = xmmword_1C933295C;
        *&v142.var1[3] = *algn_1C933296C;
        *&v142.var1[7] = xmmword_1C933297C;
        memset(&v142.var2[3], 0, 20);
        if (*(var113 + 401) > 1u)
        {
          v126 = 0;
          v127 = *(var113 + 770);
          if (v127 < v145[1] && var38 < v145[1])
          {
            if (v127 >= *p_var38)
            {
              v126 = 0;
            }

            else
            {
              v126 = ((*p_var38 - v127) + 0.5);
            }
          }

          v128 = CAWBAFE::calculateWeightFromTuningTable(this, &v142, v126);
          v129 = (a4->var9 + (v128 * CAWBAFE::calculateWeightFromTuningTable(this, &v143, a4->var0))) * 0.5;
          a4->var9 = v129;
          this->var38 = (v129 * *(this->var113 + 770)) + (this->var38 * (1.0 - v129));
        }

        else
        {
          a4->var9 = 0.0;
        }
      }
    }
  }

  result = *p_var38;
  *&a4->var14 = *p_var38;
  return result;
}

CAWBAFEH14 *CAWBAFEH14::ComputeAWBChromaHistogram(CAWBAFEH14 *this, unsigned __int16 a2, unsigned int a3)
{
  v6 = &this->var66[5][856];
  v28 = 4;
  HIWORD(v7) = 0;
  v27 = xmmword_1C93329A0;
  if (!this->var145)
  {
    v8 = 0;
    LOWORD(v7) = this->var81;
    v9 = sqrtf((v7 / 30.0) * 0.0039062);
    if (v9 < 1.0)
    {
      v9 = 1.0;
    }

    do
    {
      *(&v27 + v8) = ((v9 * *(&v27 + v8)) * 10.0);
      v8 += 4;
    }

    while (v8 != 20);
  }

  v10 = 0;
  v11 = 0;
  v12 = this->var12 + 1040;
  do
  {
    v13 = &this->var54[v11];
    v14 = *&v12[v10];
    v15 = *&v12[v10 + 4];
    v16 = *&v12[v10 + 12];
    *(v13 + 2) = *&v12[v10 + 8];
    *(v13 + 3) = v16;
    *v13 = v14;
    *(v13 + 1) = v15;
    v17 = *&v12[v10 + 16];
    v18 = *&v12[v10 + 20];
    v19 = *&v12[v10 + 28];
    *(v13 + 6) = *&v12[v10 + 24];
    *(v13 + 7) = v19;
    *(v13 + 4) = v17;
    *(v13 + 5) = v18;
    v11 += 32;
    v10 += 64;
  }

  while (v10 != 2048);
  if (this->var26)
  {
    CAWBAFEH14::ComputeChromaHistfromTile(this);
  }

  if (v6[717] == 1)
  {
    CAWBAFE::ComputeSkinColor_fdProbApproach(this, this->var54, this->var126);
  }

  v20 = a3 >> 10;
  if (a3 >> 10 >= 4)
  {
    v20 = 4;
  }

  this->var52 = (*(&v27 + v20) - 10) / *(&v27 + v20);
  if (this->var16 < this->var18 || *(v6 + 91) > 1u || v6[3404] == 1)
  {
    memcpy(this->var53, this->var54, sizeof(this->var53));
  }

  else
  {
    v22 = 0;
    if (v6[2284] == 1)
    {
      var6 = this->var6;
      if (*(var6 + 56) > 0.0)
      {
        CAWBAFEPhotometerAssistPenrose::calcTemproalFilterForChromaHist(this->var5, var6, this->var53, this->var54, this->var65, 32, 0x20u, *(v6 + 101), this->var40, this->var41, a2, &this->var52);
        v22 = v6[3404];
      }
    }

    var53 = this->var53;
    v25 = 1024;
    do
    {
      v26 = var53[1024];
      if ((v22 & 1) == 0)
      {
        v26 = ((this->var52 * *var53) + (v26 * (1.0 - this->var52)));
      }

      *var53++ = v26;
      --v25;
    }

    while (v25);
  }

  return CAWBAFEH14::calculateGrayIndexFromGrayworld(this, &this->var45, this->var53);
}

uint64_t CAWBAFEH14::ComputeChromaHistfromTile(CAWBAFEH14 *this)
{
  v1 = MEMORY[0x1EEE9AC00](this);
  v5 = v1;
  v6 = 0;
  v97.var2[7] = 0;
  *&v97.var0 = xmmword_1C9332A3C;
  *&v97.var1[3] = unk_1C9332A4C;
  *&v97.var1[7] = xmmword_1C9332A5C;
  *&v97.var2[3] = unk_1C9332A6C;
  v7 = *(v1 + 13362);
  if (v7 <= 0x100)
  {
    v8 = *(v1 + 13360);
  }

  else
  {
    v8 = HIBYTE(*(v1 + 13360));
  }

  if (v7 <= 0x100)
  {
    v9 = *(v1 + 13362);
  }

  else
  {
    v9 = v7 >> 8;
  }

  v95 = v9;
  v10 = *(v1 + 560);
  v11 = *(v1 + 566);
  v12 = *(v1 + 564);
  v13 = *(v1 + 570);
  v14 = *(v1 + 644);
  v15 = *(v1 + 652);
  v93 = v14 * 0.000015259;
  v16 = v1 + 9192;
  v17 = v5->var14.var0[0];
  v18 = v5->var13.var2[1];
  v19 = v5->var13.var2[2];
  do
  {
    *&v96[v6] = vcvtq_f32_u32(*(v16 + v6 * 4));
    v6 += 4;
  }

  while (v6 != 1024);
  v85 = v16;
  if (v17 <= 0x100)
  {
    v20 = 1.0;
  }

  else
  {
    v20 = 256.0;
  }

  var7 = v5->var7;
  if (*(var7 + 177))
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v94 = v8;
    v25 = v19 - (1048600.0 / v15);
    v88 = v15 * 0.000015259;
    v89 = v25;
    v91 = v10;
    v92 = v18 - (1048600.0 / v14);
    v90 = v12;
    v86 = v13;
    v87 = v11;
    v26 = 31.0;
    do
    {
      if (*(var7 + 176))
      {
        v27 = 0;
        do
        {
          var9 = v5->var9;
          v29 = v24;
          v30 = (var9 + 64 * v24);
          v31 = v30[13];
          if (v31)
          {
            v32 = v30[1] / v31;
            v33 = v30[5] / v31;
            v34 = v30[9] / v31;
            v35 = v32 + CAWBAFE::calculateWeightFromTuningTable(v5, &v97, ((v32 * 256.0) + 0.5));
            v36 = v33 + CAWBAFE::calculateWeightFromTuningTable(v5, &v97, ((v33 * 256.0) + 0.5));
            v26 = 31.0;
            v37 = v34 + CAWBAFE::calculateWeightFromTuningTable(v5, &v97, ((v34 * 256.0) + 0.5));
            var9 = v5->var9;
          }

          else
          {
            v35 = 0.0;
            v36 = 0.0;
            v37 = 0.0;
          }

          v38 = *(var9 + 16 * v29 + 13);
          if ((v35 > 257.0 || v36 > 257.0 || v37 > 257.0) && v5->var1 >= 10)
          {
            printf("ERR: CAWBAFE::ComputeChromaHistfromTile Tile ID: x=%d y=%d \n\n", v22, v27);
            if (v5->var1 >= 10)
            {
              printf("ERR:          PF1 [R G B N]: %d %d %d %d \n\n", *(v5->var9 + 16 * v29 + 1), *(v5->var9 + 16 * v29 + 5), *(v5->var9 + 16 * v29 + 9), *(v5->var9 + 16 * v29 + 13));
            }
          }

          v39 = 255.0;
          if (v36 <= 255.0)
          {
            v40 = v36;
          }

          else
          {
            v40 = 255.0;
          }

          v41 = v40;
          v42 = 1.0;
          if ((v36 + 1.0) <= 255.0)
          {
            v39 = v36 + 1.0;
          }

          v43 = v39;
          v44 = v36 - v41;
          if (v44 > 1.0)
          {
            v44 = 1.0;
          }

          LOWORD(v42) = log2Lut[v41];
          LOWORD(v25) = log2Lut[v43];
          v25 = LODWORD(v25);
          v45 = (v44 * v25) + ((1.0 - v44) * v42);
          if (v45 >= v94 && v45 <= v95)
          {
            if (v35 <= 255.0)
            {
              v47 = v35;
            }

            else
            {
              v47 = 255.0;
            }

            v48 = v47;
            if ((v35 + 1.0) <= 255.0)
            {
              v49 = v35 + 1.0;
            }

            else
            {
              v49 = 255.0;
            }

            if ((v35 - v48) <= 1.0)
            {
              v50 = v35 - v48;
            }

            else
            {
              v50 = 1.0;
            }

            if (v37 <= 255.0)
            {
              v51 = v37;
            }

            else
            {
              v51 = 255.0;
            }

            v52 = v51;
            if ((v37 + 1.0) <= 255.0)
            {
              v53 = v37 + 1.0;
            }

            else
            {
              v53 = 255.0;
            }

            if ((v37 - v52) <= 1.0)
            {
              v54 = v37 - v52;
            }

            else
            {
              v54 = 1.0;
            }

            v55 = 1.0;
            LODWORD(v2) = 1.0;
            if (v5->var13.var6)
            {
              LOWORD(v2) = v5->var13.var5[0];
              HIWORD(v3) = 0;
              HIWORD(v4) = 0;
              *&v56 = *&v2 * 255.0 * 0.000122070312;
              v55 = *&v56;
              LOWORD(v56) = v5->var13.var5[1];
              v2 = v56 * 255.0 * 0.000122070312;
              *&v2 = v2;
            }

            v57 = v49;
            *&v58 = 1.0 - v50;
            LOWORD(v3) = log2Lut[v48];
            v3 = LODWORD(v3);
            LOWORD(v4) = log2Lut[v57];
            v4 = LODWORD(v4);
            LOWORD(v58) = log2Lut[v52];
            LOWORD(v53) = log2Lut[v53];
            v59 = (v54 * LODWORD(v53)) + ((1.0 - v54) * v58);
            v25 = ((v50 * v4) + ((1.0 - v50) * v3)) - v45;
            v60 = v59 - v45;
            v61 = v93 * (v92 + (((((v60 * v90) + (v25 * v91)) * 0.00024414) * v55) * v20));
            if (v61 >= 0.0 && v61 <= v26)
            {
              v63 = (((v60 * v86) + (v25 * v87)) * 0.00024414) * *&v2;
              HIWORD(v25) = HIWORD(v89);
              v64 = v88 * (v89 + (v63 * v20));
              if (v64 >= 0.0 && v64 <= v26)
              {
                v66 = (v36 * v38) / 138.0;
                if (v66 > 0.0)
                {
                  v67 = v61 + 0.5;
                  v68 = (v61 + 0.5);
                  v69 = v64 + 0.5;
                  v70 = (v64 + 0.5);
                  v71 = v68;
                  v72 = v61 + -0.5;
                  HIWORD(v3) = 0;
                  if (v72 < 0.0)
                  {
                    v72 = 0.0;
                  }

                  v73 = v71 - v72;
                  HIWORD(v4) = 16896;
                  if (v67 <= 32.0)
                  {
                    v74 = v67;
                  }

                  else
                  {
                    v74 = 32.0;
                  }

                  v75 = v70;
                  v76 = v64 + -0.5;
                  if (v76 < 0.0)
                  {
                    v76 = 0.0;
                  }

                  v77 = v75 - v76;
                  if (v69 <= 32.0)
                  {
                    v78 = v69;
                  }

                  else
                  {
                    v78 = 32.0;
                  }

                  v79 = v68 + 32 * v70;
                  if ((v73 * v77) > 0.0)
                  {
                    v3 = v96[v79 - 33];
                    v96[v79 - 33] = v3 + (v66 * (v73 * v77));
                  }

                  v25 = v74 - v71;
                  if ((v25 * v77) > 0.0)
                  {
                    v96[v79 - 32] = v96[v79 - 32] + (v66 * (v25 * v77));
                  }

                  v80 = v78 - v75;
                  v81 = v73 * v80;
                  if (v81 > 0.0)
                  {
                    v96[v79 - 1] = v96[v79 - 1] + (v66 * v81);
                  }

                  if ((v25 * v80) > 0.0)
                  {
                    v96[v79] = v96[v79] + (v66 * (v25 * v80));
                  }

                  if (v5->var65[v79])
                  {
                    v23 = v23 + (v38 >> 1);
                  }
                }
              }
            }
          }

          v24 = v29 + 1;
          ++v27;
          var7 = v5->var7;
        }

        while (v27 < *(var7 + 176));
      }

      ++v22;
    }

    while (v22 < *(var7 + 177));
  }

  else
  {
    v23 = 0;
  }

  v82 = 0;
  v83.i64[0] = 0x3F0000003F000000;
  v83.i64[1] = 0x3F0000003F000000;
  do
  {
    *(v85 + v82 * 4) = vcvtq_u32_f32(vaddq_f32(*&v96[v82], v83));
    v82 += 4;
  }

  while (v82 != 1024);
  return v23;
}

CAWBAFEH14 *CAWBAFEH14::calculateGrayIndexFromGrayworld(CAWBAFEH14 *this, sAWBInternalParams *a2, const unsigned int *a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8.i64[0] = 0x400000004;
  v8.i64[1] = 0x400000004;
  do
  {
    v9 = 0;
    v10 = v4;
    v11 = v5;
    v12 = v6;
    v13 = vdupq_n_s32((2 * v3) | 1u);
    v14 = xmmword_1C93323B0;
    v15 = 0uLL;
    v16 = 0uLL;
    do
    {
      v17 = *&a3[(v7 + v9)];
      v18 = vmulq_s32(v17, (*&vaddq_s32(v14, v14) | __PAIR128__(0x100000001, 0x100000001)));
      v16 = vaddw_high_u32(v16, v18);
      v11 = vaddw_u32(v11, *v18.i8);
      v19 = vmulq_s32(v17, v13);
      v15 = vaddw_high_u32(v15, v19);
      v10 = vaddw_u32(v10, *v19.i8);
      v12 = vaddq_s32(v17, v12);
      v9 += 4;
      v14 = vaddq_s32(v14, v8);
    }

    while (v9 != 32);
    v20 = vaddvq_s64(vaddq_s64(v10, v15));
    v4 = v20;
    v21 = vaddvq_s64(vaddq_s64(v11, v16));
    v5 = v21;
    v6 = vaddvq_s32(v12);
    v7 += 32;
    ++v3;
  }

  while (v3 != 32);
  if (v6)
  {
    v22 = (v21 >> 1) / v6;
    v23 = (v20 >> 1) / v6;
    LOWORD(v21) = this->var59[1];
    v24 = v21;
    *&v21 = v23 + v21;
    if (*&v21 > 31.0)
    {
      *&v21 = 31.0;
    }

    v25 = v23 - v24;
    v26 = 0.0;
    if (v25 < 0.0)
    {
      v25 = 0.0;
    }

    v14.i16[0] = this->var59[0];
    v27 = v14.u32[0];
    *v14.i32 = v22 + v14.u32[0];
    if (*v14.i32 > 31.0)
    {
      *v14.i32 = 31.0;
    }

    if ((v22 - v27) >= 0.0)
    {
      v28 = v22 - v27;
    }

    else
    {
      v28 = 0.0;
    }

    v29 = (v25 + 1.0);
    v30 = (*&v21 + 1.0);
    if (v29 <= v30)
    {
      v31 = (*v14.i32 + 1.0);
      do
      {
        if ((v28 + 1.0) <= v31)
        {
          v32 = v29;
          v33 = (v28 + 1.0);
          do
          {
            v34 = v33;
            if ((v28 + 1.0) <= v34)
            {
              v35 = 1.0;
              if (*v14.i32 < v34)
              {
                v35 = (*v14.i32 + 1.0) - v34;
              }
            }

            else
            {
              v35 = v34 - v28;
            }

            v36 = ((*&v21 + 1.0) - v32) * v35;
            if (*&v21 >= v32)
            {
              v36 = v35;
            }

            v37 = (v32 - v25) * v35;
            if ((v25 + 1.0) <= v32)
            {
              v37 = v36;
            }

            v26 = v26 + (v37 * a3[(32 * v29 - 33 + v33)]);
            LOWORD(v33) = v33 + 1;
          }

          while (v31 >= v33);
        }

        LOWORD(v29) = v29 + 1;
      }

      while (v30 >= v29);
    }

    v38 = v26 / v6;
    if (v38 > 1.0)
    {
      v38 = 1.0;
    }
  }

  else
  {
    v38 = 0.0;
    v22 = 15.5;
    v23 = 15.5;
  }

  *&a2->var18 = *&a2->var20;
  var23 = a2->var23;
  a2->var20 = v22;
  a2->var21 = v23;
  a2->var22 = var23;
  a2->var23 = v38;
  a2->var25 = v6;
  return this;
}

uint64_t CAWBAFEH14::updateLuxLevelFromSceneChangeDetection(CAWBAFEH14 *this, sAWBInternalParams *a2, unsigned int a3, double a4, double a5, float a6)
{
  v8 = &this->var66[5][856];
  memset(v32.var1, 0, sizeof(v32.var1));
  *&v32.var2[2] = 192;
  *&v32.var2[4] = 0u;
  *&v32.var1[1] = 0x200000001;
  *v32.var2 = 0xF0000000FCLL;
  v32.var0 = 3;
  *&v31.var0 = xmmword_1C9332AC4;
  *&v31.var1[3] = *algn_1C9332AD4;
  *&v31.var1[7] = xmmword_1C9332AE4;
  memset(&v31.var2[3], 0, 20);
  *&v30.var0 = xmmword_1C9332B08;
  *&v30.var1[3] = unk_1C9332B18;
  *&v30.var1[7] = xmmword_1C9332B28;
  memset(&v30.var2[3], 0, 20);
  *&v29.var0 = xmmword_1C9332B4C;
  *&v29.var1[3] = *algn_1C9332B5C;
  v9 = a3;
  *&v29.var1[7] = xmmword_1C9332B6C;
  memset(&v29.var2[3], 0, 20);
  v10 = sqrtf(a3);
  v11 = 1.0;
  if (v10 < 1.0)
  {
    v10 = 1.0;
  }

  LOWORD(a6) = a2->var0;
  v12 = sqrtf(LODWORD(a6));
  if (v12 >= 1.0)
  {
    v11 = v12;
  }

  v13 = v10 <= v11;
  v14 = v11 / v10;
  v15 = v10 / v11;
  if (v13)
  {
    v15 = v14;
  }

  v16 = CAWBAFE::calculateWeightFromTuningTable(this, &v29, (v15 + 0.5));
  v17 = CAWBAFE::calculateWeightFromTuningTable(this, &v32, (fabsf(sqrtf(((a2->var20 - a2->var18) * (a2->var20 - a2->var18)) + ((a2->var21 - a2->var19) * (a2->var21 - a2->var19)))) + 0.5));
  var22 = a2->var22;
  var23 = a2->var23;
  if (var23 <= var22)
  {
    v20 = var22 - var23;
  }

  else
  {
    v20 = var23 - var22;
  }

  v21 = CAWBAFE::calculateWeightFromTuningTable(this, &v31, ((v20 * 256.0) + 0.5));
  if (v8[2284] == 1 && (v22 = *(this->var6 + 55), v22 > 0.0))
  {
    v23 = CAWBAFE::calculateWeightFromTuningTable(this, &v30, ((v22 * 256.0) + 0.5));
  }

  else
  {
    v23 = v17 * v21;
  }

  var0 = a2->var0;
  a2->var1 = var0;
  if ((v8[3404] & 1) == 0)
  {
    v25 = v16 * v23;
    v26 = log2f(var0 + 1.0);
    v27 = log2f(v9 + 1.0);
    v9 = exp2f((v27 * (1.0 - v25)) + (v25 * v26));
    if (v9 > 65535.0)
    {
      v9 = 65535.0;
    }
  }

  result = v9;
  a2->var0 = result;
  return result;
}