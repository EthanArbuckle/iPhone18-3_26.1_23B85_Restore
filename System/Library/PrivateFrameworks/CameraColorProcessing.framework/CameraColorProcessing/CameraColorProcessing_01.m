void CAWBAFEH14::calculateCCMDesatFactorForSkin(CAWBAFEH14 *this, float a2, unsigned int a3, const __int16 (*a4)[2])
{
  memset(&v17.var2[3], 0, 20);
  *&v17.var0 = xmmword_1C9332820;
  memset(&v17.var1[3], 0, 24);
  *&v16.var0 = xmmword_1C9332A80;
  *&v16.var1[3] = *algn_1C9332A90;
  *&v16.var1[7] = xmmword_1C9332AA0;
  *&v17.var2[1] = 0x10000000080;
  memset(&v16.var2[3], 0, 20);
  memset(v15.var1, 0, 64);
  v15.var0 = 3;
  *&v15.var1[1] = 0x8000000040;
  *&v15.var2[1] = 0x10000000080;
  var113 = this->var113;
  if (!*(var113 + 1))
  {
    v11 = 0;
    v12 = 0;
    v7 = *(var113 + 770);
    v13 = *(var113 + 771);
    v14 = v7;
    v8 = CAWBAFE::ComputeProjection(this, a3, &v12, &v11, &v14, &v13, a4, &this->var84);
    v14 = v8;
    var40 = this->var40;
    if (v8 <= var40)
    {
      v10 = var40 - v8;
    }

    else
    {
      v10 = v8 - var40;
    }

    CAWBAFE::calculateWeightFromTuningTable(this, &v17, a3);
    CAWBAFE::calculateWeightFromTuningTable(this, &v16, ((v10 * 256.0) + 0.5));
    CAWBAFE::calculateWeightFromTuningTable(this, &v15, ((*(this->var113 + 2) * 256.0) + 0.5));
  }
}

void CAWBAFEH14::GetMetaData(CAWBAFE *a1, uint64_t a2, uint64_t a3)
{
  p_var102 = &a1->var102;
  CAWBAFE::GetMetaData(a1, a2, a3);
  if (a3 && (p_var102[394] & 1) != 0)
  {
    var6 = a1->var6;
    v13 = (var6 + 244);
    v14 = (a3 + 428);
    v15 = 3;
    do
    {
      *v14 = vcvts_n_u32_f32(*v13, 0x10uLL);
      v14[3] = vcvts_n_u32_f32(v13[6], 0x10uLL);
      v14[6] = v13[3];
      v14[9] = v13[9];
      v14[14] = v13[15];
      ++v14;
      ++v13;
      --v15;
    }

    while (v15);
    v8 = vdup_n_s32(0x47800000u);
    *(a3 + 476) = vcvt_n_u32_f32(*(var6 + 220), 0x10uLL);
    LODWORD(v10) = 0.5;
    *(a3 + 496) = ((a1->var52 * 256.0) + 0.5);
    v9 = vmla_f32(0x3F0000003F000000, v8, *(var6 + 232));
    v7 = COERCE_DOUBLE(vcvt_u32_f32(v9));
    *(a3 + 500) = v7;
    v8.i32[0] = 1199570944;
    *&v7 = (*(var6 + 60) * 65536.0) + 0.5;
    *(a3 + 508) = *&v7;
  }

  if (a3 && (p_var102[2] & 1) != 0)
  {
    v8.i32[0] = 1132462080;
    v9.i32[0] = 0.5;
    *&v7 = (*p_var102 * 256.0) + 0.5;
    *(a3 + 566) = *&v7;
  }

  *(a2 + 945) = 0;
  if (a1->var46)
  {

    CAWBAFEH14::GetOneFrameAWBMetaData(a1, a2, a3, v7, *&v8, *&v9, v10, v11);
  }
}

void CAWBAFEH14::GetOneFrameAWBMetaData(CAWBAFE *a1, uint64_t a2, _WORD *a3, double a4, double a5, double a6, double a7, float a8)
{
  v11 = &a1->var66[5][856];
  CCTFromColorRatio = CAWBAFE::GetCCTFromColorRatio(a1, a1->var42, a1->var87, a5, a6, a7, a8);
  *(a2 + 980) = CCTFromColorRatio;
  *v37 = 0;
  CAWBAFE::GetNewCSensorCalGains(a1, &v37[1], v37, CCTFromColorRatio, &a1->var90);
  *(a2 + 984) = v37[1];
  *(a2 + 986) = v37[0];
  *(a2 + 978) = 0x4000;
  v35 = 0.0;
  v36 = 0.0;
  CAWBAFE::ComputeChannelGainsfromHistWP(a1, a1->var42, a1->var43, &v36, &v35, v13, v14, v15, v16, v17);
  v18 = ((v36 * 4096.0) + 0.5);
  if (v18 >= 0xFFFF)
  {
    v18 = 0xFFFF;
  }

  if (v18 <= 0x800)
  {
    v19 = 2048;
  }

  else
  {
    v19 = v18;
  }

  v20 = ((v35 * 4096.0) + 0.5);
  if (v20 >= 0xFFFF)
  {
    v20 = 0xFFFF;
  }

  if (v20 <= 0x800)
  {
    v21 = 2048;
  }

  else
  {
    v21 = v20;
  }

  *(a2 + 952) = v19;
  *(a2 + 954) = 268439552;
  *(a2 + 958) = v21;
  v22 = (v19 * v37[1]) >> 14;
  if (v22 >= 0xFFFF)
  {
    v23 = 0xFFFF;
  }

  else
  {
    v23 = (v19 * v37[1]) >> 14;
  }

  v24 = (v21 * v37[0]) >> 14;
  if (v24 >= 0xFFFF)
  {
    v25 = 0xFFFF;
  }

  else
  {
    v25 = (v21 * v37[0]) >> 14;
  }

  *(a2 + 960) = v23;
  *(a2 + 962) = 268439552;
  *(a2 + 966) = v25;
  if (v25 <= v23)
  {
    v26 = v23;
  }

  else
  {
    v26 = v25;
  }

  if (v26 <= 0x1000)
  {
    v26 = 4096;
  }

  if (v24 >= 0x1000)
  {
    v24 = 4096;
  }

  if (v22 >= v24)
  {
    v27 = v24;
  }

  else
  {
    v27 = v23;
  }

  v28 = (v26 << 12) / v27;
  *(a2 + 976) = v28;
  *(a2 + 968) = (v23 << 12) / v28;
  *(a2 + 970) = 0x1000000u / v28;
  *(a2 + 972) = 0x1000000u / v28;
  *(a2 + 974) = (v25 << 12) / v28;
  CAWBAFE::InterpCCMfromBases(a1, a1->var42, a1->var43, *(v11 + 48), v33, &a1->var101, a1->var89, *(v11 + 177));
  CAWBAFE::RGBColorSpaceConversion(a1, *(v11 + 570), v33);
  *(a2 + 988) = vuzp1q_s16(v33[0], v33[1]);
  *(a2 + 1004) = v34;
  *(a2 + 945) = 1;
  if (a3)
  {
    v29 = 0;
    a3[291] = 1;
    a3[296] = v19;
    a3[297] = 4096;
    a3[298] = v21;
    a3[292] = ((a1->var42 * 256.0) + 0.5);
    a3[293] = ((a1->var43 * 256.0) + 0.5);
    a3[294] = v37[1];
    a3[295] = v37[0];
    v30 = a3 + 299;
    v31 = v33;
    do
    {
      for (i = 0; i != 3; ++i)
      {
        v30[i] = v31->i32[i];
      }

      ++v29;
      v30 += 3;
      v31 = (v31 + 12);
    }

    while (v29 != 3);
  }
}

void CAWBAFEH14::GetBinIndicesWithConfig(uint64_t a1, float *a2, float *a3, float *a4, int a5, uint64_t a6, double a7, double a8)
{
  v14 = *a4;
  v13 = a4[1];
  v15 = a4[2];
  if (a5 <= 0)
  {
    if ((v14 == 0.0 || v13 == 0.0 || v15 == 0.0) && *(a1 + 8) >= 10)
    {
      printf("ERR: Input WBGain = %.2f %.2f %.2f\n", v14, v13, v15);
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
    if (((((v13 * *(a6 + 8)) + (v14 * *(a6 + 6))) + (v15 * *(a6 + 10))) / ((*(a6 + 6) + *(a6 + 8)) + *(a6 + 10))) <= 255.0)
    {
      v13 = (((v13 * *(a6 + 8)) + (v14 * *(a6 + 6))) + (v15 * *(a6 + 10))) / ((*(a6 + 6) + *(a6 + 8)) + *(a6 + 10));
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
    v14 = log2f(v14) * 32.0;
    v13 = log2f(v13) * 32.0;
    v15 = log2f(v15) * 32.0;
    goto LABEL_22;
  }

  if (a5 != 3)
  {
    if (a5 > 4)
    {
      return;
    }

    goto LABEL_23;
  }

LABEL_22:
  v18 = v14 - v13;
  v19 = v15 - v13;
  v13 = (((v15 - v13) * *(a6 + 28)) + ((v14 - v13) * *(a6 + 24))) * 0.00024414;
  v15 = ((v19 * *(a6 + 34)) + (v18 * *(a6 + 30))) * 0.00024414;
LABEL_23:
  v20 = 256.0;
  LODWORD(a8) = 1.0;
  if (*(a1 + 596) <= 0x100u)
  {
    v20 = 1.0;
  }

  v21 = *(a6 + 40);
  v22 = *(a6 + 36) - (1048600.0 / v21);
  v23 = *(a6 + 44);
  v24 = *(a6 + 38) - (1048600.0 / v23);
  v25 = v21 * 0.000015259;
  v26 = v23 * 0.000015259;
  v27 = 1.0;
  if (*(a1 + 594))
  {
    LOWORD(a8) = *(a1 + 590);
    *&a8 = *&a8 * 255.0 * 0.000122070312;
    LOWORD(v8) = *(a1 + 592);
    v27 = v8 * 255.0 * 0.000122070312;
  }

  *a2 = v25 * (v22 + ((v13 * *&a8) * v20));
  *a3 = v26 * (v24 + ((v15 * v27) * v20));
}

CAWBAFEH14 *CAWBAFEH14::calculateSlaveCameraWBGainNew(CAWBAFEH14 *this, const unsigned int *a2, int8x8_t *a3, int a4)
{
  var150 = this->var150;
  if (var150)
  {
    v5 = 0;
    v6 = 0;
    var151 = this->var151;
    do
    {
      if (var151->var0 == (a4 & 0xFFFFFF))
      {
        v6 = v5;
      }

      ++v5;
      ++var151;
    }

    while (var150 != v5);
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = &this->var151[v8];
  v10 = a2[2];
  v11.f32[0] = ((v9->var2.var0 + ((*a2 * v9->var2.var1 + 2048) >> 12) + ((v10 * v9->var2.var2 + 2048) >> 12) + 8) >> 4);
  v12 = ((v9->var3.var0 + ((v9->var3.var1 * *a2 + 2048) >> 12) + ((v9->var3.var2 * v10 + 2048) >> 12) + 8) >> 4);
  v11.f32[1] = a2[1];
  v13 = vcvt_u32_f32(vadd_f32(v11, 0x3F0000003F000000));
  *a3 = vbsl_s8(vcgt_u32(0x80000000800, v13), 0x4500000045000000, vbsl_s8(vcgt_u32(0x1000000010000, v13), vcvt_f32_u32(v13), vdup_n_s32(0x477FFF00u)));
  v14 = (v12 + 0.5);
  v15 = v14;
  if (v14 >= 0x10000)
  {
    v15 = 65535.0;
  }

  if (v14 < 0x800)
  {
    v15 = 2048.0;
  }

  *a3[1].i32 = v15;
  return this;
}

void CAWBAFEH14::calculateSlaveCameraWBGainfromMatchingModel(CAWBAFEH14 *this, uint32x2_t *a2, float32x2_t *a3, int a4, const _sSlaveCameraListColorMatchingModel *a5, int a6)
{
  if (a6)
  {
    v8 = 0;
    v9 = a5;
    while (v9->var0 != (a4 & 0xFFFFFF))
    {
      ++v9;
      if (a6 == ++v8)
      {
        goto LABEL_5;
      }
    }

    LODWORD(v8) = v8;
  }

  else
  {
LABEL_5:
    LODWORD(v8) = 0;
  }

  v10 = &a5[v8];
  if (v10->var1 == 2)
  {
    v11 = vmul_f32(vcvt_f32_u32(*a2), vdup_n_s32(0x39800000u));
    v25 = v11.f32[0];
    v26 = logf(v11.f32[1]);
    v12.f32[0] = logf(v25);
    v12.f32[1] = v26;
    v13 = vdup_n_s32(0x400514E4u);
    v27 = vdiv_f32(vbsl_s8(vcgt_f32(v12, v13), v13, v12), v13);
    *a3 = v27;
    v14 = logf(a2[1].u32[0] * 0.00024414);
    if (v14 > 2.0794)
    {
      v14 = 2.0794;
    }

    a3[1].f32[0] = v14 / 2.0794;
    CAWBAFE::calBilinearInterpolationWeight(9u, &v28, v27.f32[0] - v27.f32[1], (v14 / 2.0794) - v27.f32[1]);
    v15 = (((v30 * v10->var4.var1[1][v31]) + (v28 * v10->var4.var1[1][v29])) + (v32 * v10->var4.var1[1][v33])) + (v34 * v10->var4.var1[1][v35]);
    v16 = expf(((((v30 * v10->var4.var1[0][v31]) + (v28 * v10->var4.var1[0][v29])) + (v32 * v10->var4.var1[0][v33])) + (v34 * v10->var4.var1[0][v35])) * 2.0794);
    v17 = expf(v15 * 2.0794);
    v18.f32[0] = v16 * 4096.0;
    v19 = a2->u32[1];
    v20 = v17 * 4096.0;
  }

  else
  {
    v19 = a2->u32[1];
    v21 = a2[1].u32[0];
    v18.f32[0] = ((v10->var2.var0 + ((a2->i32[0] * v10->var2.var1 + 2048) >> 12) + ((v21 * v10->var2.var2 + 2048) >> 12) + 8) >> 4);
    v20 = ((v10->var3.var0 + ((v10->var3.var1 * a2->i32[0] + 2048) >> 12) + ((v10->var3.var2 * v21 + 2048) >> 12) + 8) >> 4);
  }

  v18.f32[1] = v19;
  v22 = vcvt_u32_f32(vadd_f32(v18, 0x3F0000003F000000));
  *a3 = vbsl_s8(vcgt_u32(0x80000000800, v22), 0x4500000045000000, vbsl_s8(vcgt_u32(0x1000000010000, v22), vcvt_f32_u32(v22), vdup_n_s32(0x477FFF00u)));
  v23 = (v20 + 0.5);
  v24 = v23;
  if (v23 >= 0x10000)
  {
    v24 = 65535.0;
  }

  if (v23 < 0x800)
  {
    v24 = 2048.0;
  }

  a3[1].f32[0] = v24;
}

void CAWBAFEH14::setSlaveCameraCSensorCalGain(CAWBAFEH14 *this, SensorConfigAWBParams *a2)
{
  var0 = a2->var2.var0;
  if (var0 - 13108 > 0x1998 || (var1 = a2->var2.var1, var1 - 13108 > 0x1998))
  {
    LOWORD(v4) = 0x4000;
    a2->var3.var0 = 0x4000;
  }

  else
  {
    a2->var3.var0 = 0x10000000 / var0;
    v4 = 0x10000000 / var1;
  }

  a2->var3.var1 = v4;
  var2 = a2->var2.var2;
  if (var2 - 13108 > 0x1998 || (var3 = a2->var2.var3, var3 - 13108 > 0x1998))
  {
    LOWORD(v7) = 0x4000;
    a2->var3.var2 = 0x4000;
  }

  else
  {
    a2->var3.var2 = 0x10000000 / var2;
    v7 = 0x10000000 / var3;
  }

  a2->var3.var3 = v7;
}

void CAWBAFEH14::ProcessMatchSlaveAWB(CAWBAFEH14 *a1, uint32x2_t *a2, int a3, SensorConfigAWBParams *a4, unsigned __int16 *a5, uint64_t a6, char a7)
{
  v14 = &a1->var66[5][856];
  CAWBAFEH14::setSlaveCameraCSensorCalGain(a1, a4);
  var4 = a4->var4;
  if (a7)
  {
    CAWBAFEH14::calculateSlaveCameraWBGainfromMatchingModel(v15, a2, &v49, var4, a1->var151, 4);
  }

  else
  {
    CAWBAFEH14::calculateSlaveCameraWBGainNew(a1, a2, &v49, var4);
  }

  v48 = 0;
  CAWBAFEH14::GetBinIndicesWithConfig(a1, &v48 + 1, &v48, &v49, 0, a4->var6.var0, v17, v18);
  v22 = v48;
  *(a5 + 20) = HIDWORD(v48);
  *(a5 + 21) = v22;
  *(a5 + 22) = *(a1->var6 + 55);
  *(a5 + 1) = vmax_u32(vmin_u32(vcvt_u32_f32(vadd_f32(v49, 0x3F0000003F000000)), 0xFFFF0000FFFFLL), 0x80000000800);
  v23 = a5 + 4;
  v24 = (v50 + 0.5);
  if (v24 >= 0xFFFF)
  {
    v24 = 0xFFFF;
  }

  if (v24 <= 0x800)
  {
    v24 = 2048;
  }

  *(a5 + 4) = v24;
  CCTFromColorRatio = CAWBAFE::GetCCTFromColorRatio(a1, *(&v22 + 1), a4->var6.var6, COERCE_DOUBLE(COERCE_UNSIGNED_INT(0.5) | 0x80000000000), v19, v20, v21);
  *(a5 + 1) = CCTFromColorRatio;
  CAWBAFE::GetNewCSensorCalGains(a1, a5, a5 + 1, CCTFromColorRatio, &a4->var3);
  v26 = *v23 * *a5;
  if (v26 >> 30)
  {
    v27 = 0xFFFF;
  }

  else
  {
    v27 = v26 >> 14;
  }

  *(a5 + 5) = v27;
  v28 = *(a5 + 4) * a5[1];
  v29 = v28 >> 30 == 0;
  v30 = v28 >> 14;
  if (!v29)
  {
    v30 = 0xFFFF;
  }

  *(a5 + 6) = *(a5 + 3);
  *(a5 + 7) = v30;
  CAWBAFE::InterpCCMfromBases(a1, *(&v22 + 1), *&v22, *(v14 + 48), (a5 + 16), &a1->var101, a4->var6.var5, *(v14 + 177));
  CAWBAFE::RGBColorSpaceConversion(a1, *(v14 + 570), (a5 + 16));
  *(a5 + 68) = 1;
  if (v14[204] == 1 && a1->var126->previewMasterCh == a3)
  {
    *(a5 + 92) = 1;
    *(a5 + 93) = 1;
    *(a5 + 24) = *(v14 + 55);
    CAWBAFEH14::calculateSlaveCameraWBGainNew(a1, a1->var79, &v46, a4->var4);
    v31 = (*v46.i32 + 0.5);
    if (v31 >= 0xFFFF)
    {
      v31 = 0xFFFF;
    }

    if (v31 <= 0x800)
    {
      v31 = 2048;
    }

    v32 = (*&v46.i32[1] + 0.5);
    if (v32 >= 0xFFFF)
    {
      v32 = 0xFFFF;
    }

    if (v32 <= 0x800)
    {
      LOWORD(v32) = 2048;
    }

    if ((v47 + 0.5) >= 0xFFFF)
    {
      v33 = 0xFFFF;
    }

    else
    {
      v33 = (v47 + 0.5);
    }

    if (v33 <= 0x800)
    {
      v33 = 2048;
    }

    v34 = v31 * *a5;
    v35 = v34 >> 30;
    v36 = v34 >> 14;
    if (v35)
    {
      LOWORD(v36) = -1;
    }

    a5[50] = v36;
    a5[51] = v32;
    a5[52] = v32;
    v37 = v33 * a5[1];
    v38 = v37 >> 30;
    v39 = v37 >> 14;
    if (v38)
    {
      LOWORD(v39) = -1;
    }

    a5[53] = v39;
  }

  if (a6)
  {
    v40 = *(a6 + 619);
    *(a6 + v40 + 616) = a3;
    v41 = a6 + 68 * v40;
    *(v41 + 620) = *a5;
    *(v41 + 624) = *(a5 + 1);
    v42 = *v23;
    *(v41 + 636) = *(a5 + 4);
    *(v41 + 628) = v42;
    v43 = *(a5 + 10);
    *(v41 + 648) = *(a5 + 7);
    *(v41 + 640) = v43;
    v44 = *(a5 + 2);
    v45 = *(a5 + 3);
    *(v41 + 684) = *(a5 + 16);
    *(v41 + 652) = v44;
    *(v41 + 668) = v45;
    ++*(a6 + 619);
  }
}

unsigned int *CAWBAFEH14::SetSlaveCameraListColorMatchingLatticeModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = a1 + 23904;
  v5 = a3 + 8;
  v6 = a1 + 23940;
  do
  {
    result = (a3 + 656 * v3);
    if (result[1] == 9)
    {
      v8 = 0;
      v9 = v4 + 684 * v3;
      *(v9 + 32) = 9;
      v10 = 1;
      do
      {
        v11 = 0;
        v12 = v10;
        v13 = 324 * v8;
        v14 = v5 + 324 * v8;
        v15 = v6 + v13;
        do
        {
          *(v15 + v11) = *(v14 + v11) * 0.000015259;
          v11 += 4;
        }

        while (v11 != 324);
        v10 = 0;
        v8 = 1;
      }

      while ((v12 & 1) != 0);
      result = *result;
      *v9 = result;
      *(v9 + 4) = 2;
    }

    ++v3;
    v5 += 656;
    v6 += 684;
  }

  while (v3 != 4);
  return result;
}

float CAWBAFEH14::calculateSTRBkeyFromWideCameraNew(CAWBAFEH14 *this, sPerModuleLEDCalibData *a2)
{
  var150 = this->var150;
  if (var150)
  {
    v3 = 0;
    v4 = 0;
    var151 = this->var151;
    do
    {
      if (var151->var0 == (this->var134[0] & 0xFFFFFF))
      {
        v4 = v3;
      }

      ++v3;
      ++var151;
    }

    while (var150 != v3);
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = this + 684 * v6;
  v8 = vdup_n_s32(0x37800000u);
  v9 = vmul_f32(vcvt_f32_s32(*(v7 + 23916)), v8);
  v10 = vmul_f32(vcvt_f32_s32(*(v7 + 23928)), v8);
  v11 = (-v9.f32[1] * v10.f32[0]) + (v9.f32[0] * v10.f32[1]);
  if (v11 < 0.001 && -v11 < 0.001)
  {
    v11 = 1.0;
  }

  result = *(v7 + 5978) * 0.000015259;
  v13 = 1.0 / v11;
  v14.f32[0] = -v13;
  v14.f32[1] = v13;
  v15 = *(v7 + 5981) * 0.000015259;
  _D1 = vmul_f32(v10, v14);
  v17 = vmul_f32(v9, vrev64_s32(v14));
  version = a2->version;
  if (version > 2)
  {
    if (version != 3)
    {
      return result;
    }

    v24 = 48;
    v25 = 44;
  }

  else
  {
    __asm { FMOV            V4.2S, #1.0 }

    *&a2->cw_rg = vrev64_s32(vdiv_f32(_D4, vmla_n_f32(vmul_n_f32(v17, (1.0 / a2->cw_bg) - v15), _D1, (1.0 / a2->cw_rg) - result)));
    v24 = 16;
    v25 = 12;
  }

  _S0 = (1.0 / *(&a2->version + v25)) - result;
  __asm { FMLA            S4, S0, V1.S[1] }

  v28 = (((1.0 / *(&a2->version + v24)) - v15) * v17.f32[0]) + (_D1.f32[0] * _S0);
  *(&a2->version + v25) = 1.0 / _S4;
  result = 1.0 / v28;
  *(&a2->version + v24) = result;
  return result;
}

void CAWBAFEH14::ProjectFlashWP(uint64_t a1, unsigned int a2, unsigned __int8 *a3, __n128 a4, double a5, double a6, float a7, double a8)
{
  v10 = *&a5;
  v11 = a4.n128_f32[0];
  v13 = 0;
  v14 = a1 + 20480;
  v15 = a1 + 696;
  v16 = v56;
  a4.n128_u32[0] = 964689920;
  do
  {
    for (i = 0; i != 12; i += 4)
    {
      *v16++ = *(v15 + i) * 0.00024414;
    }

    ++v13;
    v15 += 12;
  }

  while (v13 != 3);
  v54 = 0.0;
  v55 = 0.0;
  if (!a3[1])
  {
    goto LABEL_27;
  }

  v18 = *a3;
  if (v18 > 2)
  {
    if (v18 != 3)
    {
      goto LABEL_27;
    }

    if (a3[2] != 1)
    {
      if (a3[2])
      {
        goto LABEL_26;
      }

      a4.n128_u64[0] = *(a3 + 20);
      *(a3 + 44) = a4.n128_u64[0];
      v21 = *(a1 + 22723);
      if (v21 != 1 && v21 != 4)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    v22 = *(*(a1 + 22744) + 75);
    if (*(*(a1 + 22744) + 75))
    {
      if (v22 == 1)
      {
        v23 = 40;
        v24 = 36;
      }

      else
      {
        if (v22 != 4)
        {
          goto LABEL_24;
        }

        v23 = 32;
        v24 = 28;
      }
    }

    else
    {
      v23 = 24;
      v24 = 20;
    }

    *(a3 + 11) = *&a3[v24];
    *(a3 + 12) = *&a3[v23];
LABEL_24:
    if (*(a1 + 22723) == v22)
    {
LABEL_26:
      v49 = 0;
      LODWORD(a5) = *(a3 + 12);
      v52[0] = *(a3 + 11);
      a4.n128_f32[0] = v52[0];
      v52[1] = 1.0;
      v53 = *&a5;
      CAWBAFE::GetBinIndices(a1, &v49 + 1, &v49, v52, 1, a4.n128_f64[0], a5, a6, a7, a8);
      CCTFromColorRatio = CAWBAFE::GetCCTFromColorRatio(a1, *(&v49 + 1), (a1 + 20844), v25, v26, v27, v28);
      CAWBAFE::GetNewCSensorCalGains(a1, &v50, &v51, CCTFromColorRatio, (a1 + 21004));
      LOWORD(v30) = v50;
      v31 = (v52[0] * v30) * 0.000061035;
      LOWORD(v32) = v51;
      v52[0] = v31;
      v53 = (v53 * v32) * 0.000061035;
      v33 = v53;
      *(a3 + 11) = v31;
      *(a3 + 12) = v33;
      LODWORD(v34) = 1.0;
      v47 = 0.0;
      v48 = 0.0;
      CAWBAFE::ComputeHistWPFromChannelGains(a1, 1.0 / fmaxf(v31, 0.00000011921), 1.0 / fmaxf(v33, 0.00000011921), &v48, &v47, 3.18618444e-58, v34);
      CAWBAFE::InterpCCMfromBases(a1, v48, v47, 0.0, (a1 + 732), (a1 + 21120), (a1 + 20896), 1.0);
      CAWBAFE::RGBColorSpaceConversion(a1, *(v14 + 2280), a1 + 732);
      goto LABEL_27;
    }

LABEL_25:
    a4 = (*(*a1 + 136))(a1, a3);
    goto LABEL_26;
  }

  v19 = *(a1 + 22723);
  if (v19 == 4 || v19 == 1)
  {
    (*(*a1 + 136))(a1, a3, a4);
  }

  v20 = vcvtq_f32_u32(vmovl_u16(*(v14 + 524)));
  *(a3 + 4) = vmulq_f32(vmulq_f32(*(a3 + 4), vextq_s8(v20, v20, 8uLL)), vdupq_n_s32(0x38800000u));
LABEL_27:
  CDualLEDsWhitePointProjector::ParamInit(*(a1 + 16), a2, a3, a1 + 24, v11, v10);
  CDualLEDsWhitePointProjector::WhitePointProject(*(a1 + 16), *(v14 + 184), *(v14 + 186), *(v14 + 188), *(v14 + 196), *(v14 + 198), *(v14 + 200), (a1 + 804), (a1 + 808), &v55, &v54, v56, (a1 + 20700));
  if (a2 != 10)
  {
    v35 = 0;
    v36 = ((*(a1 + 804) * 4096.0) + 0.5);
    if (v36 >= 0xFFFF)
    {
      v36 = 0xFFFF;
    }

    if (v36 <= 0x800)
    {
      v36 = 2048;
    }

    *(a1 + 672) = v36;
    v37 = ((*(a1 + 808) * 4096.0) + 0.5);
    if (v37 >= 0xFFFF)
    {
      v37 = 0xFFFF;
    }

    if (v37 <= 0x800)
    {
      v37 = 2048;
    }

    *(a1 + 680) = v37;
    *(a1 + 676) = 4096;
    v38 = v56;
    v39 = a1;
    do
    {
      for (j = 174; j != 177; ++j)
      {
        v41 = *v38++;
        v42 = ((v41 * 4096.0) + 0.5);
        if (v42 >= 0x3FFF)
        {
          v43 = 0x3FFF;
        }

        else
        {
          v43 = v42;
        }

        if (v42 > 0)
        {
          v42 = v43;
        }

        *(v39 + 4 * j) = v42;
      }

      ++v35;
      v39 += 12;
    }

    while (v35 != 3);
  }

  v44 = ((v55 * 4096.0) + 0.5);
  if (v44 >= 0xFFFF)
  {
    v44 = 0xFFFF;
  }

  if (v44 <= 0x800)
  {
    v44 = 2048;
  }

  if (((v54 * 4096.0) + 0.5) >= 0xFFFF)
  {
    v45 = 0xFFFF;
  }

  else
  {
    v45 = ((v54 * 4096.0) + 0.5);
  }

  if (v45 <= 0x800)
  {
    v46 = 2048;
  }

  else
  {
    v46 = v45;
  }

  *(v14 + 208) = v44;
  *(v14 + 212) = 4096;
  *(v14 + 216) = v46;
  if (a2 == 6)
  {
    *(a1 + 773) = 1;
  }
}

__n128 CAWBAFEH14::GetFDAWBMetaData(CAWBAFEH14 *this, __n128 *__dst)
{
  var113 = this->var113;
  memcpy(__dst, var113, 0xB4DuLL);
  v4 = (var113 + 2896);
  v5 = &__dst[181].n128_i8[6];
  v6 = 16;
  do
  {
    *(v5 - 8) = *(v4 - 2);
    v7 = *v4;
    v4 = (v4 + 10);
    *(v5 - 6) = v7;
    v5 += 10;
    --v6;
  }

  while (v6);
  __dst[191] = *(var113 + 191);
  v8 = *(var113 + 192);
  v9 = *(var113 + 193);
  v10 = *(var113 + 194);
  __dst[195] = *(var113 + 195);
  __dst[194] = v10;
  __dst[193] = v9;
  __dst[192] = v8;
  result = *(var113 + 196);
  v12 = *(var113 + 197);
  v13 = *(var113 + 198);
  __dst[199] = *(var113 + 199);
  __dst[198] = v13;
  __dst[197] = v12;
  __dst[196] = result;
  return result;
}

__n128 CAWBAFEH14::SetFDAWBMetaData(CAWBAFEH14 *this, __n128 *a2)
{
  var113 = this->var113;
  memcpy(var113, a2, 0xB4DuLL);
  v4 = a2 + 181;
  v5 = var113 + 2902;
  v6 = 16;
  do
  {
    *(v5 - 8) = v4[-1].n128_i8[14];
    v7 = v4->n128_u64[0];
    v4 = (v4 + 10);
    *(v5 - 6) = v7;
    v5 += 10;
    --v6;
  }

  while (v6);
  *(var113 + 191) = a2[191];
  v8 = a2[192];
  v9 = a2[193];
  v10 = a2[194];
  *(var113 + 195) = a2[195];
  *(var113 + 194) = v10;
  *(var113 + 193) = v9;
  *(var113 + 192) = v8;
  result = a2[196];
  v12 = a2[197];
  v13 = a2[198];
  *(var113 + 199) = a2[199];
  *(var113 + 198) = v13;
  *(var113 + 197) = v12;
  *(var113 + 196) = result;
  return result;
}

uint64_t CAWBAFEH14::SetInternalAWBMetaData(CAWBAFEH14 *this, sAWBInternalParams *a2)
{
  result = memcpy(&this->var45, a2, sizeof(this->var45));
  if (this->var69 == 2)
  {
    var16 = this->var45.var16;
    this->var40 = var16;
    var17 = this->var45.var17;
    this->var41 = var17;
    memcpy(this->var53, this->var45.var26, sizeof(this->var53));
    CAWBAFE::ComputeChannelGainsfromHistWP(this, var16, var17, &this->var35, &this->var36, v6, v7, v8, v9, v10);
    result = CAWBAFE::GetCCTFromColorRatio(this, this->var40, this->var87, v11, v12, v13, v14);
    v15 = ((this->var35 * 4096.0) + 0.5);
    this->var20 = result;
    if (v15 >= 0xFFFF)
    {
      v15 = 0xFFFF;
    }

    if (v15 <= 0x800)
    {
      v15 = 2048;
    }

    this->var21[0] = v15;
    v16 = ((this->var36 * 4096.0) + 0.5);
    if (v16 >= 0xFFFF)
    {
      v16 = 0xFFFF;
    }

    if (v16 <= 0x800)
    {
      v16 = 2048;
    }

    this->var21[2] = v16;
    this->var21[1] = 4096;
  }

  return result;
}

id createBufferFromMetal(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = [v4 allocator];
  v6 = [v5 newBufferDescriptor];

  [v6 setLength:a3];
  [v6 setLabel:0];
  v7 = [v4 allocator];

  v8 = [v7 newBufferWithDescriptor:v6];

  return v8;
}

__CFString *stringFromCGRectDictionaryRepresentation(const __CFDictionary *a1)
{
  v1 = *(MEMORY[0x1E695F050] + 16);
  rect.origin = *MEMORY[0x1E695F050];
  rect.size = v1;
  CGRectMakeWithDictionaryRepresentation(a1, &rect);
  if (CGRectIsNull(rect))
  {
    v2 = @"CGRectNull";
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{{%g, %g}, {%g, %g}}", *&rect.origin.x, *&rect.origin.y, *&rect.size.width, *&rect.size.height];
  }

  return v2;
}

uint64_t configTilesV2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v17 = 0;
  *a1 = [v3 cmi_intValueForKey:@"Bitdepth" defaultValue:0 found:&v17] != 0;
  if (v17)
  {
    v16 = 0;
    *(a1 + 4) = [v3 cmi_intValueForKey:@"StartX" defaultValue:0 found:&v16];
    if (v16)
    {
      v15 = 0;
      v5 = [v3 cmi_intValueForKey:@"StartY" defaultValue:0 found:&v15];
      *(a1 + 8) = v5;
      if (v15)
      {
        *(a1 + 4) /= 4;
        *(a1 + 8) = v5 / 4;
        v14 = 0;
        *(a1 + 12) = [v3 cmi_intValueForKey:@"EndX" defaultValue:0 found:&v14];
        if (v14)
        {
          v13 = 0;
          v6 = [v3 cmi_intValueForKey:@"EndY" defaultValue:0 found:&v13];
          *(a1 + 16) = v6;
          if (v13)
          {
            *(a1 + 12) /= 4;
            *(a1 + 16) = v6 / 4;
            v12 = 0;
            *(a1 + 20) = [v3 cmi_intValueForKey:@"IntervalX" defaultValue:0 found:&v12];
            if (v12)
            {
              v11 = 0;
              v7 = [v3 cmi_intValueForKey:@"IntervalY" defaultValue:0 found:&v11];
              *(a1 + 22) = v7;
              if (v11)
              {
                v8 = 0;
                *(a1 + 20) >>= 2;
                *(a1 + 22) = v7 >> 2;
                goto LABEL_11;
              }

              FigDebugAssert3();
              v10 = FigSignalErrorAtGM();
            }

            else
            {
              FigDebugAssert3();
              v10 = FigSignalErrorAtGM();
            }
          }

          else
          {
            FigDebugAssert3();
            v10 = FigSignalErrorAtGM();
          }
        }

        else
        {
          FigDebugAssert3();
          v10 = FigSignalErrorAtGM();
        }
      }

      else
      {
        FigDebugAssert3();
        v10 = FigSignalErrorAtGM();
      }
    }

    else
    {
      FigDebugAssert3();
      v10 = FigSignalErrorAtGM();
    }
  }

  else
  {
    FigDebugAssert3();
    v10 = FigSignalErrorAtGM();
  }

  v8 = v10;
LABEL_11:
  if (*v4 == 1)
  {
    kdebug_trace();
  }

  return v8;
}

uint64_t configLSC(float32x2_t *a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  v9 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E6990C58]];
  v11 = v10;
  if (v10 && (v12 = [v10 bytes]) != 0)
  {
    v13 = *(v12 + 20);
    v14 = *(v12 + 24);
    a1->i16[1] = v13;
    a1->i16[2] = v14;
    a1[3].i16[0] = *(v12 + 28) / v13;
    a1[3].i16[1] = *(v12 + 32) / v13;
    a1[3].i16[2] = *(v12 + 36) / v13;
    a1[3].i16[3] = *(v12 + 40) / v13;
    a1->i8[0] = 1;
    _D1 = 0x3F0000003F000000;
    if ((a4 - 1) < 2)
    {
LABEL_8:
      v20 = 0;
      __asm { FMOV            V2.2S, #1.0 }

      a1[2] = vmul_f32(vdiv_f32(_D2, vcvt_f32_u32(*(v12 + 12))), _D1);
      goto LABEL_10;
    }

    if (a4 == 3)
    {
      __asm { FMOV            V1.2S, #0.25 }

      goto LABEL_8;
    }

    FigDebugAssert3();
    v20 = FigSignalErrorAtGM();
  }

  else
  {
    FigDebugAssert3();
    v20 = 0xFFFFFFFFLL;
  }

LABEL_10:
  if (*v9 == 1)
  {
    kdebug_trace();
  }

  return v20;
}

uint64_t configLinearRGBToANSTInput(uint64_t a1, void *a2)
{
  v63 = a2;
  v3 = [v63 objectForKeyedSubscript:@"CaptureDebugInfo"];
  v4 = [v3 objectForKeyedSubscript:@"PreviewMetadata"];
  if (v4)
  {
    v5 = [v63 objectForKeyedSubscript:@"CaptureDebugInfo"];
    v6 = [v5 objectForKeyedSubscript:@"PreviewMetadata"];
  }

  else
  {
    v6 = v63;
  }

  if (v6)
  {
    v64 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6990F98]];
    v7 = [v64 bytes];
    if (v7)
    {
      LODWORD(v8) = *v7;
      LODWORD(v10) = v7[1];
      DWORD1(v8) = v7[3];
      DWORD2(v8) = v7[6];
      v9 = v7 + 28;
      DWORD1(v10) = v7[4];
      DWORD2(v10) = v7[7];
      LODWORD(v13) = v7[2];
      v11 = v7 + 20;
      v12 = v7 + 32;
      DWORD1(v13) = v7[5];
      DWORD2(v13) = v7[8];
    }

    else
    {
      v8 = *MEMORY[0x1E69E9B10];
      v10 = *(MEMORY[0x1E69E9B10] + 16);
      v9 = *(MEMORY[0x1E69E9B10] + 12);
      v11 = *(MEMORY[0x1E69E9B10] + 28);
      v13 = *(MEMORY[0x1E69E9B10] + 32);
      v12 = *(MEMORY[0x1E69E9B10] + 44);
    }

    *(a1 + 24) = DWORD2(v8);
    *(a1 + 16) = v8;
    *(a1 + 28) = v9;
    *(a1 + 40) = DWORD2(v10);
    *(a1 + 32) = v10;
    *(a1 + 56) = DWORD2(v13);
    *(a1 + 44) = v11;
    *(a1 + 48) = v13;
    *(a1 + 60) = v12;
    v14 = *MEMORY[0x1E6990EF8];
    v15 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6990EF8]];

    if (v15 && ([v6 objectForKeyedSubscript:v14], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "unsignedShortValue"), v16, v18 = *MEMORY[0x1E6990EF0], objc_msgSend(v6, "objectForKeyedSubscript:", *MEMORY[0x1E6990EF0]), v19 = objc_claimAutoreleasedReturnValue(), v19, v19) && (objc_msgSend(v6, "objectForKeyedSubscript:", v18), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "unsignedShortValue"), v20, v22 = *MEMORY[0x1E6990EE8], objc_msgSend(v6, "objectForKeyedSubscript:", *MEMORY[0x1E6990EE8]), v23 = objc_claimAutoreleasedReturnValue(), v23, v23))
    {
      v24 = [v6 objectForKeyedSubscript:v22];
      v25 = [v24 unsignedShortValue];
      *&v26 = vcvts_n_f32_u32(v17, 0xCuLL);
      v61 = v26;
      v62 = vcvts_n_f32_u32(v25, 0xCuLL);

      v27 = v61;
      DWORD1(v27) = vcvts_n_f32_u32(v21, 0xCuLL);
      *(&v27 + 2) = v62;
      *a1 = v27;
      v28 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6991020]];
      v29 = [v28 bytes];
      v30 = 0;
      if (v29)
      {
        do
        {
          *(a1 + 64 + v30) = *(v29 + 2 + v30);
          v30 += 2;
        }

        while (v30 != 514);
      }

      else
      {
        v31 = xmmword_1C9332C40;
        v32 = xmmword_1C9332C50;
        v33 = xmmword_1C932FAE0;
        v34 = xmmword_1C932FAF0;
        v35 = (a1 + 78);
        v36 = vdupq_n_s64(8uLL);
        v37 = vdupq_n_s64(0x101uLL);
        do
        {
          if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v37, v34)), *v31.i8), *v31.i8).u8[0])
          {
            *(v35 - 7) = (vcvts_n_f32_u64(v30, 8uLL) * 65535.0);
          }

          if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x101uLL), *&v34)), *&v31), *&v31).i8[1])
          {
            *(v35 - 6) = (vcvts_n_f32_u64(v30 + 1, 8uLL) * 65535.0);
          }

          if (vuzp1_s8(vuzp1_s16(*&v31, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x101uLL), *&v33))), *&v31).i8[2])
          {
            *(v35 - 5) = (vcvts_n_f32_u64(v30 + 2, 8uLL) * 65535.0);
            *(v35 - 4) = (vcvts_n_f32_u64(v30 + 3, 8uLL) * 65535.0);
          }

          if (vuzp1_s8(*&v31, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x101uLL), *&v32)), *&v31)).i32[1])
          {
            *(v35 - 3) = (vcvts_n_f32_u64(v30 + 4, 8uLL) * 65535.0);
          }

          if (vuzp1_s8(*&v31, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x101uLL), *&v32)), *&v31)).i8[5])
          {
            *(v35 - 2) = (vcvts_n_f32_u64(v30 + 5, 8uLL) * 65535.0);
          }

          if (vuzp1_s8(*&v31, vuzp1_s16(*&v31, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x101uLL), *&v31)))).i8[6])
          {
            *(v35 - 1) = (vcvts_n_f32_u64(v30 + 6, 8uLL) * 65535.0);
            *v35 = (vcvts_n_f32_u64(v30 + 7, 8uLL) * 65535.0);
          }

          v30 += 8;
          v32 = vaddq_s64(v32, v36);
          v33 = vaddq_s64(v33, v36);
          v34 = vaddq_s64(v34, v36);
          v31 = vaddq_s64(v31, v36);
          v35 += 8;
        }

        while (v30 != 264);
      }

      v38 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6991030]];
      v39 = [v38 bytes];
      if (v39)
      {
        for (i = 0; i != 514; i += 2)
        {
          *(a1 + 578 + i) = *(v39 + 2 + i);
        }
      }

      else
      {
        for (j = 0; j != 257; ++j)
        {
          v42 = vcvts_n_f32_u64(j, 8uLL);
          if (v42 >= 0.018)
          {
            v43 = (powf(v42, 0.45) * 1.099) + -0.099;
          }

          else
          {
            v43 = v42 * 4.5;
          }

          *(a1 + 578 + 2 * j) = (v43 * 65535.0);
        }
      }

      v44 = *MEMORY[0x1E6991158];
      v45 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6991158]];

      if (v45)
      {
        v46 = [v6 objectForKeyedSubscript:v44];
        v47 = [v46 intValue];

        v48 = *MEMORY[0x1E6991160];
        v49 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6991160]];
        v50 = vcvts_n_f32_s32(v47, 8uLL);

        if (v49)
        {
          v51 = [v6 objectForKeyedSubscript:v48];
          [v51 floatValue];
          v53 = v52;

          v50 = v50 / v53;
        }
      }

      else
      {
        v50 = 1.0;
      }

      v54 = *MEMORY[0x1E6991168];
      v55 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6991168]];

      if (v55)
      {
        v56 = [v6 objectForKeyedSubscript:v54];
        v57 = vcvts_n_f32_s32([v56 intValue], 8uLL);
      }

      else
      {
        v57 = 1.0;
      }

      v58 = v64;
      *(a1 + 1092) = v50 / v57;

      v59 = 0;
    }

    else
    {
      FigDebugAssert3();
      v59 = FigSignalErrorAtGM();
      v58 = v64;
    }
  }

  else
  {
    FigDebugAssert3();
    v59 = FigSignalErrorAtGM();
    v58 = 0;
  }

  return v59;
}

uint64_t _configStatsDownsizeRatioRuntimeWithValidRect(uint64_t a1, void *a2, unsigned __int8 a3)
{
  v5 = a2;
  memset(&rect, 0, sizeof(rect));
  if (!CGRectMakeWithDictionaryRepresentation(v5, &rect) || (-[__CFDictionary objectForKeyedSubscript:](v5, "objectForKeyedSubscript:", @"FullWidth"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 intValue], v6, -[__CFDictionary objectForKeyedSubscript:](v5, "objectForKeyedSubscript:", @"FullHeight"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "intValue"), v8, !v7) || !v9 || ((width = rect.size.width, height = rect.size.height, rect.size.width <= v7) ? (v12 = rect.size.height > v9) : (v12 = 1), v12 || (*(a1 + 6) = a3, HIDWORD(v13) = a3, LODWORD(v13) = a3, (v13 >> 2) >= 5)))
  {
    FigDebugAssert3();
    goto LABEL_14;
  }

  if (a3)
  {
    goto LABEL_27;
  }

  if ((*a1 - 1) >= 2)
  {
    if (*a1 == 3)
    {
      *(a1 + 6) = 8;
      v17 = width;
      v18 = height * v17 / 199584.0;
      v19 = sqrtf(v18);
      if (v19 > 8.0 && v19 <= 12.0)
      {
        v14 = 12;
        goto LABEL_12;
      }

      if (v19 > 12.0)
      {
        if (v19 > 16.0)
        {
          FigDebugAssert3();
        }

        v14 = 16;
        goto LABEL_12;
      }

LABEL_27:
      v15 = 0;
      goto LABEL_15;
    }

    *(a1 + 6) = 0;
    FigDebugAssert3();
LABEL_14:
    v15 = FigSignalErrorAtGM();
    goto LABEL_15;
  }

  v14 = 8;
LABEL_12:
  v15 = 0;
  *(a1 + 6) = v14;
LABEL_15:

  return v15;
}

uint64_t _configStatsROIRuntimeWithRegionOfInterestRect(uint64_t a1, void *a2, void *a3, CGRect *a4)
{
  v7 = a2;
  v8 = a3;
  memset(&rect, 0, sizeof(rect));
  memset(&v29, 0, sizeof(v29));
  if (!CGRectMakeWithDictionaryRepresentation(v7, &rect))
  {
    FigDebugAssert3();
    v17 = FigSignalErrorAtGM();
LABEL_11:
    v18 = v17;
    goto LABEL_21;
  }

  if (!v8)
  {
    goto LABEL_13;
  }

  if (!CGRectMakeWithDictionaryRepresentation(v8, &v29))
  {
    FigDebugAssert3();
    v17 = FigSignalErrorAtGM();
    goto LABEL_11;
  }

  if (CGRectContainsRect(rect, v29))
  {
    LOBYTE(v10) = *(a1 + 6);
    v11 = vdupq_lane_s64(COERCE__INT64(v10), 0);
    v12 = vdivq_f64(v29.origin, v11);
    v9 = vdivq_f64(v29.size, v11);
    v29.origin = v12;
    v29.size = v9;
    v13 = floor(0.975 * v9.width * 0.03125 * 0.5);
    if (v13 + v13 <= 0.0)
    {
      v15 = 0;
    }

    else
    {
      v14 = floor(vmuld_lane_f64(0.975, v9, 1) * 0.03125 * 0.5);
      v9.width = v14 + v14;
      v15 = v9.width > 0.0;
    }

    v16 = 1;
    goto LABEL_14;
  }

  FigDebugAssert3();
  FigSignalErrorAtGM();
LABEL_13:
  v15 = 0;
  v16 = 0;
LABEL_14:
  LOBYTE(v9.width) = *(a1 + 6);
  v19 = vdupq_lane_s64(COERCE__INT64(*&v9.width), 0);
  v20 = vdivq_f64(rect.origin, v19);
  v21 = vdivq_f64(rect.size, v19);
  rect.origin = v20;
  rect.size = v21;
  if (v16)
  {
    y = v29.origin.y;
    x = v29.origin.x;
    height = v29.size.height;
    v25 = v29.size.width + v29.origin.x;
  }

  else
  {
    x = v20.x;
    v25 = v21.width + v20.x;
    y = v20.y;
    height = v21.height;
  }

  *(a1 + 2592) = x;
  *(a1 + 2594) = y;
  *(a1 + 2596) = v25;
  *(a1 + 2598) = height + y;
  if (v15)
  {
    p_rect = &v29;
  }

  else
  {
    CGRectIsEmpty(*a4);
    p_rect = &rect;
  }

  v18 = 0;
  size = p_rect->size;
  a4->origin = p_rect->origin;
  a4->size = size;
LABEL_21:

  return v18;
}

uint64_t _configTilesRuntimeWithValidRect(uint64_t result, float64x2_t *a2)
{
  v3 = result;
  v4 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    result = kdebug_trace();
  }

  v5 = a2[1];
  v6 = vmulq_f64(vmulq_f64(v5, vdupq_n_s64(0x3FEF333333333333uLL)), vdupq_n_s64(0x3FA0000000000000uLL));
  __asm
  {
    FMOV            V3.2D, #2.0
    FMOV            V4.2D, #0.5
  }

  *&v6.f64[0] = vmovn_s64(vcvtq_n_u64_f64(vrndmq_f64(vmulq_f64(vbslq_s8(vcgtq_f64(_Q3, v6), _Q3, v6), _Q4)), 1uLL));
  *&_Q4.f64[0] = vshl_n_s32(vand_s8(*&v6.f64[0], 0xFFFF0000FFFFLL), 5uLL);
  v13.i64[0] = LODWORD(_Q4.f64[0]);
  v13.i64[1] = HIDWORD(_Q4.f64[0]);
  __asm { FMOV            V6.2D, #0.25 }

  v15 = vrndmq_f64(vmulq_f64(vsubq_f64(v5, vcvtq_f64_u64(v13)), _Q6));
  v16 = vaddq_f64(v5, *a2);
  v17 = vmlaq_f64(*a2, _Q3, v15);
  *&v17.f64[0] = vmovn_s64(vcvtq_s64_f64(vbicq_s8(v17, vcltzq_f64(v17))));
  *&_Q3.f64[0] = vadd_s32(*&_Q4.f64[0], *&v17.f64[0]);
  v13.i64[0] = SLODWORD(_Q3.f64[0]);
  v13.i64[1] = SHIDWORD(_Q3.f64[0]);
  v18 = vcvtq_f64_s64(v13);
  *(v3 + 4) = v17.f64[0];
  *(v3 + 12) = vmovn_s64(vcvtq_s64_f64(vbslq_s8(vcgtq_f64(v16, v18), v18, v16)));
  *(v3 + 20) = LOWORD(v6.f64[0]);
  *(v3 + 22) = WORD2(v6.f64[0]);
  if (*v4 == 1)
  {

    return kdebug_trace();
  }

  return result;
}

uint64_t convertANSTMaskFrom32FloatTo8Uint(__CVBuffer *a1, __CVBuffer *a2)
{
  if (!a1)
  {
    convertANSTMaskFrom32FloatTo8Uint(&v18);
    return v18;
  }

  if (!a2)
  {
    convertANSTMaskFrom32FloatTo8Uint(&v18);
    return v18;
  }

  if (CVPixelBufferLockBaseAddress(a1, 1uLL))
  {
    convertANSTMaskFrom32FloatTo8Uint(&v18);
    return v18;
  }

  if (CVPixelBufferLockBaseAddress(a2, 0))
  {
    convertANSTMaskFrom32FloatTo8Uint(&v18);
    return v18;
  }

  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  if (!BaseAddress)
  {
    convertANSTMaskFrom32FloatTo8Uint(&v18);
    return v18;
  }

  v5 = BaseAddress;
  v6 = CVPixelBufferGetBaseAddress(a2);
  if (!v6)
  {
    convertANSTMaskFrom32FloatTo8Uint(&v18);
    return v18;
  }

  v7 = v6;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v11 = CVPixelBufferGetWidth(a2);
  v12 = CVPixelBufferGetHeight(a2);
  v13 = CVPixelBufferGetBytesPerRow(a2);
  if (Width != v11 || Height != v12)
  {
    convertANSTMaskFrom32FloatTo8Uint(&v18);
    return v18;
  }

  if (Height)
  {
    for (i = 0; i != Height; ++i)
    {
      if (Width)
      {
        for (j = 0; j != Width; ++j)
        {
          v16 = v5[j];
          if (v16 < 0.0)
          {
            v16 = 0.0;
          }

          v7[j] = fminf(v16, 255.0);
        }
      }

      v7 += v13;
      v5 = (v5 + BytesPerRow);
    }
  }

  if (CVPixelBufferUnlockBaseAddress(a1, 1uLL))
  {
    convertANSTMaskFrom32FloatTo8Uint(&v18);
    return v18;
  }

  result = CVPixelBufferUnlockBaseAddress(a2, 0);
  if (result)
  {
    convertANSTMaskFrom32FloatTo8Uint(&v18);
    return v18;
  }

  return result;
}

float CDualLEDsWhitePointProjector::xyYToRGB(CDualLEDsWhitePointProjector *this, float a2, float a3, float a4, float *a5, float *a6, float *a7)
{
  v7 = *(this + 1);
  v8 = (a4 / a3) * a2;
  v9 = (1.0 - a2 - a3) * (a4 / a3);
  *a5 = ((v7[10] * a4) + (v7[9] * v8)) + (v7[11] * v9);
  *a6 = ((v7[13] * a4) + (v7[12] * v8)) + (v7[14] * v9);
  result = ((v7[16] * a4) + (v7[15] * v8)) + (v7[17] * v9);
  *a7 = result;
  return result;
}

float CDualLEDsWhitePointProjector::EstimateCurve(float a1, uint64_t a2, uint64_t a3)
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
    v7 = ((a1 - v6) / (*v4 - v6));
    if (v7 > 1.0)
    {
      v7 = 1.0;
    }

    if (v7 <= 0.0)
    {
      v7 = 0.0;
    }

    v8 = v7;
    v5 = (v5 * v8) + (1.0 - v8) * *(v4 - 1);
  }

  v9 = v5;
  if (v5 > 1.0)
  {
    v9 = 1.0;
  }

  if (v9 <= 0.0)
  {
    return 0.0;
  }

  return v9;
}

int8x8_t CDualLEDsWhitePointProjector::updateEllipseWithLEDCalibData(CDualLEDsWhitePointProjector *this, float a2, const sPerModuleLEDCalibData *a3)
{
  cw_rg = a3->cw_rg;
  cw_bg = a3->cw_bg;
  ww_rg = a3->ww_rg;
  v6 = 1.0 / ww_rg;
  v7 = a3->ww_bg / ww_rg;
  v8 = *(this + 1);
  v9 = v8[1];
  v10 = v8[2];
  v11 = v8[3];
  v12 = (v9 + (*v8 * cw_rg)) + (v10 * cw_bg);
  v13 = v8[6];
  v14 = v8[7];
  v15 = v8[8];
  v16 = (v14 + (v13 * cw_rg)) + (v15 * cw_bg);
  v17 = v8[4];
  v18 = v8[5];
  v19 = (v17 + (v11 * cw_rg)) + (v18 * cw_bg);
  v20 = v16 + (v12 + v19);
  v21 = v12 / v20;
  v22 = v19 / v20;
  v23 = (*v8 + (v6 * v9)) + (v10 * v7);
  v24 = (v13 + (v6 * v14)) + (v15 * v7);
  v25 = (v11 + (v6 * v17)) + (v18 * v7);
  v26 = v24 + (v23 + v25);
  *(this + 4) = ((v23 / v26) * a2) + ((1.0 - a2) * v21);
  *(this + 5) = ((v25 / v26) * a2) + ((1.0 - a2) * v22);
  __asm { FMOV            V1.2S, #0.25 }

  v32 = vmul_f32(*(this + 24), _D1);
  result = vbsl_s8(vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3F847AE147AE147BuLL), vcvtq_f64_f32(v32))), vdup_n_s32(0x3C23D70Au), v32);
  *(this + 3) = result;
  return result;
}

int8x8_t CDualLEDsWhitePointProjector::updateEllipseWithLEDCalibData(CDualLEDsWhitePointProjector *this, const sPerModuleLEDCalibData *a2)
{
  strb_rg = a2->strb_rg;
  strb_bg = a2->strb_bg;
  v4 = *(this + 1);
  v5 = (v4[1] + (*v4 * strb_rg)) + (v4[2] * strb_bg);
  v6 = (v4[7] + (v4[6] * strb_rg)) + (v4[8] * strb_bg);
  v7 = (v4[4] + (v4[3] * strb_rg)) + (v4[5] * strb_bg);
  v8 = v6 + (v5 + v7);
  *(this + 4) = v5 / v8;
  *(this + 5) = v7 / v8;
  __asm { FMOV            V1.2S, #0.25 }

  v14 = vmul_f32(*(this + 24), _D1);
  result = vbsl_s8(vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3F847AE147AE147BuLL), vcvtq_f64_f32(v14))), vdup_n_s32(0x3C23D70Au), v14);
  *(this + 3) = result;
  return result;
}

void CDualLEDsWhitePointProjector::ParamInit(uint64_t a1, unsigned int a2, const sPerModuleLEDCalibData *a3, uint64_t a4, float a5, float a6)
{
  if (a2 <= 0xB && ((1 << a2) & 0xC01) != 0)
  {
    v10 = a4;
    *(a1 + 8) = a4;
  }

  else
  {
    v10 = *(a1 + 8);
  }

  *(a1 + 40) = a6;
  v11 = CDualLEDsWhitePointProjector::EstimateCurve(a6, a1, v10 + 408);
  v12 = 0;
  if (v11 <= 0.0)
  {
    v13 = v11 + 1.0;
  }

  else
  {
    v13 = 1.0;
  }

  v14 = v13 * a6;
  if (v14 >= 1.0)
  {
    v14 = 1.0;
  }

  v15 = v14;
  v16 = 0.0;
  do
  {
    v16 = *(v10 + 192 + v12) + (v15 * v16);
    v12 += 4;
  }

  while (v12 != 24);
  v17 = 0;
  *(a1 + 16) = v16;
  v18 = 0.0;
  do
  {
    v18 = *(v10 + 216 + v17) + (v15 * v18);
    v17 += 4;
  }

  while (v17 != 24);
  v19 = 0;
  *(a1 + 20) = v18;
  v20 = 0.0;
  do
  {
    v20 = *(v10 + 240 + v19) + (v15 * v20);
    v19 += 4;
  }

  while (v19 != 24);
  v21 = 0;
  *(a1 + 24) = v20;
  v22 = 0.0;
  do
  {
    v22 = *(v10 + 264 + v21) + (v15 * v22);
    v21 += 4;
  }

  while (v21 != 24);
  v23 = 0;
  *(a1 + 28) = v22;
  v24 = 0.0;
  do
  {
    v24 = *(v10 + 288 + v23) + (v15 * v24);
    v23 += 4;
  }

  while (v23 != 24);
  v25 = 0;
  *(a1 + 32) = v24;
  v26 = 0.0;
  do
  {
    v26 = *(v10 + 312 + v25) + (v15 * v26);
    v25 += 4;
  }

  while (v25 != 24);
  *(a1 + 36) = v26;
  *(a1 + 44) = a5;
  if (a3->isvalid)
  {
    version = a3->version;
    if (version > 2)
    {
      if (version == 3)
      {

        CDualLEDsWhitePointProjector::updateEllipseWithLEDCalibData(a1, a3);
      }
    }

    else
    {

      CDualLEDsWhitePointProjector::updateEllipseWithLEDCalibData(a1, v15, a3);
    }
  }
}

float CDualLEDsWhitePointProjector::WhitePointProject(CDualLEDsWhitePointProjector *this, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, float *a8, float *a9, float *a10, float *a11, float *a12, float *a13)
{
  v15 = 1.0;
  v16 = 1.0 / *a8;
  v17 = 1.0 / *a9;
  v18 = *(this + 1);
  v19 = (*(v18 + 4) + (*v18 * v16)) + (*(v18 + 8) * v17);
  v20 = (*(v18 + 16) + (*(v18 + 12) * v16)) + (*(v18 + 20) * v17);
  v21 = ((*(v18 + 28) + (*(v18 + 24) * v16)) + (*(v18 + 32) * v17)) + (v19 + v20);
  v22 = v19 / v21;
  v23 = v20 / v21;
  v24 = *(this + 8);
  v25 = *(this + 9);
  v26 = *(this + 4);
  v27 = *(this + 5);
  v28 = (v24 * (v22 - v26)) - (v25 * (v23 - v27));
  v29 = (v24 * (v23 - v27)) + (v25 * (v22 - v26));
  v30 = *(this + 6);
  v31 = *(this + 7);
  if (((((v29 / v31) * (v29 / v31)) + ((v28 / v30) * (v28 / v30))) * 4.0) <= 1.0)
  {
    v38 = (v24 * (v23 - v27)) + (v25 * (v22 - v26));
    v37 = (v24 * (v22 - v26)) - (v25 * (v23 - v27));
  }

  else
  {
    v32 = 0;
    v33 = v30 * -0.5;
    v34 = v31 * -0.0;
    v35 = &unk_1C9332CD0;
    v36 = 0.0;
    v37 = 0.0;
    v38 = 0.0;
    do
    {
      v39 = v30 * *(v35 - 1);
      v40 = v31 * *v35;
      v41 = v39 - v33;
      v42 = v40 - v34;
      v43 = ((v29 - v34) * (v40 - v34)) + ((v28 - v33) * (v39 - v33));
      v44 = v43 / ((v42 * v42) + (v41 * v41));
      if (v44 <= 1.0)
      {
        v45 = v43 / ((v42 * v42) + (v41 * v41));
      }

      else
      {
        v45 = 1.0;
      }

      if (v44 >= 0.0)
      {
        v46 = v45;
      }

      else
      {
        v46 = 0.0;
      }

      v47 = v33 + (v46 * v41);
      v48 = v34 + (v46 * v42);
      v49 = (v29 - v48) * (v29 - v48);
      v50 = (v49 + ((v28 - v47) * (v28 - v47))) < v36 || v32 == 0;
      if (v50)
      {
        v38 = v48;
        v37 = v47;
      }

      --v32;
      if (v50)
      {
        v36 = v49 + ((v28 - v47) * (v28 - v47));
      }

      v35 += 2;
      v33 = v39;
      v34 = v40;
    }

    while (v32 != -12);
  }

  v51 = v26 + (v24 * v37);
  v52 = v27 + (-v25 * v37);
  if (a2 <= a5)
  {
    v53 = a5;
  }

  else
  {
    v53 = a2;
  }

  if (v53)
  {
    v54 = v53;
  }

  else
  {
    v54 = 1.0;
  }

  if (a3 <= a6)
  {
    v55 = a6;
  }

  else
  {
    v55 = a3;
  }

  v56 = v55;
  if (!v55)
  {
    v56 = 1.0;
  }

  if (a4 <= a7)
  {
    v57 = a7;
  }

  else
  {
    v57 = a4;
  }

  if (v57)
  {
    v15 = v57;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      v58 = 0.4;
    }

    else
    {
      v58 = a4;
    }
  }

  else
  {
    v58 = 0.2;
  }

  v59 = v51 + (v25 * v38);
  v60 = v52 + (v24 * v38);
  v61 = a2;
  v62 = 1.0;
  if (a2 < 1.0)
  {
    v61 = 1.0;
  }

  v63 = v61 / v54;
  if (*(v18 + 432) == 1)
  {
    v64 = v58 / v15;
    if (a3 >= 1.0)
    {
      v62 = a3;
    }

    v65 = v62 / v56;
    if (v65 >= v63)
    {
      v65 = v61 / v54;
    }

    if (v64 < v65)
    {
      v63 = v64;
    }

    else
    {
      v63 = v65;
    }
  }

  v66 = CDualLEDsWhitePointProjector::EstimateCurve(((v23 - v60) * (v23 - v60)) + ((v22 - v59) * (v22 - v59)), this, v18 + 360);
  v68 = CDualLEDsWhitePointProjector::EstimateCurve(v63, v67, v18 + 336);
  v70 = CDualLEDsWhitePointProjector::EstimateCurve(v63, v69, v18 + 384);
  v71 = *(this + 11);
  v72 = powf(v66, v70);
  v73 = 0;
  v74 = v68 * (v71 * v72);
  *a13 = v74;
  v75 = v59;
  v76 = 1.0;
  if (v59 == 0.0)
  {
    v75 = 1.0;
  }

  if (v60 != 0.0)
  {
    v76 = v60;
  }

  v77 = (v18 + 88);
  do
  {
    v78 = *(v77 - 3) / v75 + *(v77 - 4) + (v59 * *(v77 - 2)) + *(v77 - 1) / v76;
    v79 = *v77;
    v77 += 5;
    *&v78 = v78 + (v60 * v79);
    *(&v91 + v73) = *&v78;
    v73 += 4;
  }

  while (v73 != 24);
  *v90 = v91;
  *&v90[1] = v92;
  *&v90[2] = (1.0 - v91) - v92;
  *&v90[3] = v93;
  *&v90[4] = (1.0 - v93) - v94;
  *&v90[5] = v94;
  *&v90[6] = (1.0 - v95) - v96;
  *&v90[7] = v95;
  *&v90[8] = v96;
  v89 = 0.0;
  v88 = 0;
  CDualLEDsWhitePointProjector::xyYToRGB(this, v59, v60, v20, &v89, &v88 + 1, &v88);
  v80 = *(&v88 + 1);
  *a10 = *(&v88 + 1) / v89;
  *a11 = v80 / *&v88;
  if (*(v18 + 433))
  {
    v81 = 0;
    v82 = 0.4;
    if (v74 <= 0.4)
    {
      v82 = v74;
    }

    do
    {
      v83 = (v82 * *&v90[v81]) + (1.0 - v82) * a12[v81];
      a12[v81++] = v83;
    }

    while (v81 != 9);
  }

  v84 = 1.0 - v74;
  v85 = (v60 * v74) + v84 * v23;
  *&v84 = (v59 * v74) + v84 * v22;
  CDualLEDsWhitePointProjector::xyYToRGB(this, *&v84, v85, v20, &v89, &v88 + 1, &v88);
  v86 = *(&v88 + 1);
  *a8 = *(&v88 + 1) / v89;
  result = v86 / *&v88;
  *a9 = result;
  return result;
}

uint64_t LTMComputeV2::LTMCompute::Init(LTMComputeV2::LTMCompute *this, double a2)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = 0;
    *&a2 = (v2 - 1);
    v4 = (v2 + 3) & 0x1FFFFFFFCLL;
    v5 = vdupq_n_s64(v2 - 1);
    v6 = xmmword_1C932FAE0;
    v7 = xmmword_1C932FAF0;
    v8 = (this + 1076);
    v9 = vdupq_n_s64(4uLL);
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v5, v7));
      if (vuzp1_s16(v10, *&a2).u8[0])
      {
        *(v8 - 3) = v3 / *&a2;
      }

      if (vuzp1_s16(v10, *&a2).i8[2])
      {
        *(v8 - 2) = (v3 + 1) / *&a2;
      }

      if (vuzp1_s16(*&a2, vmovn_s64(vcgeq_u64(v5, *&v6))).i32[1])
      {
        *(v8 - 1) = (v3 + 2) / *&a2;
        *v8 = (v3 + 3) / *&a2;
      }

      v3 += 4;
      v6 = vaddq_s64(v6, v9);
      v7 = vaddq_s64(v7, v9);
      v8 += 4;
    }

    while (v4 != v3);
  }

  v11 = *(this + 6);
  if (v11)
  {
    v12 = 1.0 / v11;
    *&v12 = v12;
    v13 = (v11 + 3) & 0x1FFFFFFFCLL;
    v14 = vdupq_n_s64(v11 - 1);
    v15 = xmmword_1C932FAE0;
    v16 = xmmword_1C932FAF0;
    v17 = (this + 52);
    v18 = vdupq_n_s64(4uLL);
    do
    {
      v19 = vmovn_s64(vcgeq_u64(v14, v16));
      if (vuzp1_s16(v19, *&v12).u8[0])
      {
        *(v17 - 3) = LODWORD(v12);
      }

      if (vuzp1_s16(v19, *&v12).i8[2])
      {
        *(v17 - 2) = LODWORD(v12);
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v14, *&v15))).i32[1])
      {
        *(v17 - 1) = LODWORD(v12);
        *v17 = LODWORD(v12);
      }

      v15 = vaddq_s64(v15, v18);
      v16 = vaddq_s64(v16, v18);
      v17 += 4;
      v13 -= 4;
    }

    while (v13);
  }

  return 0;
}

LTMComputeV2 *LTMComputeV2::LTMCompute::LTMCompute(LTMComputeV2::LTMCompute *this, int a2, int a3, double a4)
{
  *this = &unk_1F48DEC20;
  *(this + 1) = a2;
  *(this + 16) = a3;
  if (a3)
  {
    v5 = 257;
  }

  else
  {
    v5 = 65;
  }

  if (a3)
  {
    v6 = 256;
  }

  else
  {
    v6 = 64;
  }

  *(this + 5) = v5;
  *(this + 6) = v6;
  LTMComputeV2::LTMCompute::Init(this, a4);
  *(this + 1038) = 0;
  bzero(this + 21048, 0xA57DuLL);
  *(this + 4) = &LTMComputeV2::LTMCompute::tuningParamsSDR;
  return this;
}

uint64_t LTMComputeV2::LTMCompute::computeLocalLuma(uint64_t this, const sLtmComputeInput *a2, const sLtmTuningParams *a3, const sLtmDisplayParams *a4, sLtmFrameParams *a5)
{
  v5 = 0;
  var1 = a5->var1;
  tMaxArray = a2->tMaxArray;
  v8 = (this + 1064);
  v9 = *(this + 20);
  nLumArray = a2->nLumArray;
  v11 = v9 - 1;
  p_var2 = &a4[-1].var2;
  v13.i32[1] = 0;
  v14 = 0;
  v15 = 0.0;
  v16 = 0.0;
  v17 = a5;
  do
  {
    v18 = tMaxArray[v5];
    v19 = 0.0;
    v20 = 0.0;
    if (fabsf(v18) >= 0.00000011921)
    {
      v21 = nLumArray[v5];
      v22 = 1.0 - (*a3 * fmaxf(v21 + -0.2, 0.0));
      v19 = (v21 / v18) * v22;
      v17->var0[0] = v19;
      v20 = nLumArray[v5] * v22;
    }

    *var1 = v20;
    v23 = fmaxf(v20, fminf(v19, 1.0));
    v17->var0[0] = v23;
    if (*v8 >= v23)
    {
      v26 = a4->var0[0];
    }

    else if (v8[v11] <= v23)
    {
      v26 = a4->var0[v11];
    }

    else
    {
      v24 = 0;
      do
      {
        this = v24;
        v25 = v8[v24++];
      }

      while (this < v9 && v25 < v23);
      v26 = 0.0;
      if (v24 != 1)
      {
        this = (v24 - 2);
        v27 = v8[this];
        if (vabds_f32(v25, v27) >= 0.00000011921)
        {
          v26 = a4->var0[this] + (((v23 - v27) / (v25 - v27)) * (*&p_var2[4 * v24] - a4->var0[this]));
        }

        else
        {
          v26 = *&p_var2[4 * v24];
        }
      }
    }

    v28 = v26 * a4->var2;
    v17->var0[0] = v28;
    v17 = (v17 + 4);
    v29 = tMaxArray[v5];
    *v14.i32 = *v14.i32 + v29;
    v15 = v15 + (v28 * v29);
    v16 = v16 + (v20 * v29);
    ++var1;
    ++v5;
  }

  while (v5 != 48);
  if (*v14.i32 <= 0.00000011921)
  {
    v30 = 1.0;
  }

  else
  {
    v30 = v15 / *v14.i32;
  }

  a5->var2 = v30;
  if (*v14.i32 <= 0.00000011921)
  {
    v31 = 1.0;
  }

  else
  {
    v31 = v16 / *v14.i32;
  }

  *v14.i32 = v30 * 0.3;
  v32 = vdupq_lane_s32(v14, 0);
  a5->var3 = v31;
  v33 = &a5->var0[4];
  v34 = -8;
  v35 = vdupq_n_s32(0x3F333333u);
  do
  {
    v36 = vaddq_f32(v32, vmulq_f32(*v33, v35));
    v33[-1] = vaddq_f32(v32, vmulq_f32(v33[-1], v35));
    *v33 = v36;
    v34 += 8;
    v33 += 2;
  }

  while (v34 < 0x28);
  *v13.i32 = a5->var3 * 0.3;
  v37 = vdupq_lane_s32(v13, 0);
  v38 = &a5->var1[4];
  v39 = -8;
  v40 = vdupq_n_s32(0x3F333333u);
  do
  {
    v41 = vaddq_f32(v37, vmulq_f32(*v38, v40));
    v38[-1] = vaddq_f32(v37, vmulq_f32(v38[-1], v40));
    *v38 = v41;
    v39 += 8;
    v38 += 2;
  }

  while (v39 < 0x28);
  return this;
}

void LTMComputeV2::LTMCompute::calculateDisplayModel(LTMComputeV2::LTMCompute *this, float a2, float a3, const float *a4, float *a5)
{
  v10 = *(this + 6);
  bzero(a5, 4 * *(this + 5));
  v11 = *(this + 6);
  if (v11)
  {
    v12 = 0;
    v13 = (1.0 / v10) * a2;
    v14 = (v11 + 1);
    do
    {
      v15 = 0;
      v16 = v12++;
      v17 = a3 + (v12 * v13);
      do
      {
        v18 = a3 + (v15 * v13);
        v19 = vabds_f32(v18, v17);
        if (v18 >= v17)
        {
          v21 = 8.22;
          v20 = v19 / (v17 + 0.39);
        }

        else
        {
          v20 = (v19 * 0.945) / ((v18 + 0.39) + (v19 * 0.055));
          v21 = -7.07;
        }

        a5[v15] = a5[v15] + ((v21 * log10f((v20 * 6.58) + 1.0)) * a4[v16]);
        ++v15;
      }

      while (v14 != v15);
    }

    while (v12 != v11);
    v22 = a5 + 1;
    v23 = *a5;
    v24 = v14 - 1;
    do
    {
      *v22 = *v22 - v23;
      ++v22;
      --v24;
    }

    while (v24);
  }

  *a5 = 0.0;
}

uint64_t LTMComputeV2::LTMCompute::calculateSceneModelAlgo(LTMComputeV2::LTMCompute *this, float32x4_t *a2, float32x4_t *a3, const sLtmComputeInput *a4, const sLtmTuningParams *a5, sLtmFrameParams *a6, float a7, float a8, const float *a9)
{
  v14 = &a6->var19[157];
  v15 = this + 63409;
  v16 = this + 37992;
  if (*(this + 63409))
  {
    v17 = 0;
  }

  else
  {
    *v15 = 1;
    v17 = this + 29520;
  }

  v156 = &a4->thumbnailLumaHist[92];
  v18 = 0;
  v19 = (logf(0.00024414 / fmaxf(a6->var21, 1.0)) * 3.0) / -8.3178;
  do
  {
    v20 = vcvts_n_f32_u32(v18, 4uLL);
    *&v17[4 * v18++] = fmaxf(powf(v20, v19) * v14[103], v20 * v20);
  }

  while (v18 != 17);
  v22 = v14[109];
  v23 = v14[106];
  v25 = *(a5 + 20);
  v24 = *(a5 + 21);
  v26 = v156[457];
  v27 = *(a5 + 22);
  v28 = v14[108];
  if (v15[1])
  {
    v16 = 0;
  }

  else
  {
    v15[1] = 1;
  }

  v29 = v24 * (1.0 - v23);
  v157 = v22;
  v30 = v22 * 0.015625;
  v31 = fmaxf(v26, 1.0);
  v32 = *a9;
  v33 = *(a9 + 1);
  v34 = *(a9 + 3);
  *(v16 + 2) = *(a9 + 2);
  *(v16 + 3) = v34;
  *v16 = v32;
  *(v16 + 1) = v33;
  v35 = *(a9 + 4);
  v36 = *(a9 + 5);
  v37 = *(a9 + 7);
  *(v16 + 6) = *(a9 + 6);
  *(v16 + 7) = v37;
  *(v16 + 4) = v35;
  *(v16 + 5) = v36;
  v38 = *(a9 + 8);
  v39 = *(a9 + 9);
  v40 = *(a9 + 11);
  *(v16 + 10) = *(a9 + 10);
  *(v16 + 11) = v40;
  *(v16 + 8) = v38;
  *(v16 + 9) = v39;
  v41 = *(a9 + 12);
  v42 = *(a9 + 13);
  v43 = *(a9 + 15);
  *(v16 + 14) = *(a9 + 14);
  *(v16 + 15) = v43;
  *(v16 + 12) = v41;
  *(v16 + 13) = v42;
  if (a7 <= -1.0)
  {
    v47 = a8;
    if (a7 == -2.0)
    {
      v48 = *a4->globalHist2;
      v49 = *&a4->globalHist2[4];
      v50 = *&a4->globalHist2[12];
      *(v16 + 2) = *&a4->globalHist2[8];
      *(v16 + 3) = v50;
      *v16 = v48;
      *(v16 + 1) = v49;
      v51 = *&a4->globalHist2[16];
      v52 = *&a4->globalHist2[20];
      v53 = *&a4->globalHist2[28];
      *(v16 + 6) = *&a4->globalHist2[24];
      *(v16 + 7) = v53;
      *(v16 + 4) = v51;
      *(v16 + 5) = v52;
      v54 = *&a4->globalHist2[32];
      v55 = *&a4->globalHist2[36];
      v56 = *&a4->globalHist2[44];
      *(v16 + 10) = *&a4->globalHist2[40];
      *(v16 + 11) = v56;
      *(v16 + 8) = v54;
      *(v16 + 9) = v55;
      v57 = *&a4->globalHist2[48];
      v58 = *&a4->globalHist2[52];
      v59 = *&a4->globalHist2[60];
      *(v16 + 14) = *&a4->globalHist2[56];
      *(v16 + 15) = v59;
      *(v16 + 12) = v57;
      *(v16 + 13) = v58;
    }
  }

  else
  {
    v44 = a7 + -1.0;
    v45 = vcvtps_s32_f32(v44);
    bzero(&v16[4 * v45], 4 * (64 - v45));
    v46 = vcvtms_s32_f32(v44);
    *&v16[4 * v46] = (v44 - floorf(v44)) * *&v16[4 * v46];
    v47 = a8;
  }

  v60 = (v16 + 256);
  v153 = v15;
  if (v47 > 1.01 || v47 < 0.99)
  {
    v162[0] = 0.0;
    v61 = 0.0;
    v62 = &LTMComputeV2::LTMCompute::defaultHist;
    for (i = 1; i != 65; ++i)
    {
      v64 = *v62++;
      v61 = v61 + v64;
      v162[i] = v61;
    }

    v65 = 0;
    v66 = xmmword_1C932FAE0;
    v67 = xmmword_1C932FAF0;
    v68 = vdupq_n_s32(0x3C800000u);
    v69 = vdupq_n_s64(0x41uLL);
    v70 = xmmword_1C93323B0;
    v71 = vdupq_n_s64(4uLL);
    v72.i64[0] = 0x400000004;
    v72.i64[1] = 0x400000004;
    do
    {
      v73 = vmulq_n_f32(vmulq_f32(vcvtq_f32_u32(v70), v68), v47);
      if (vuzp1_s16(vmovn_s64(vcgtq_u64(v69, v67)), *v66.i8).u8[0])
      {
        if (v73.f32[0] <= 1.0)
        {
          v74 = v73.f32[0];
        }

        else
        {
          v74 = 1.0;
        }

        v161[v65] = v74;
      }

      if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x41uLL), *&v67)), *&v66).i8[2])
      {
        v75 = v73.f32[1];
        if (v73.f32[1] > 1.0)
        {
          v75 = 1.0;
        }

        v161[v65 + 1] = v75;
      }

      if (vuzp1_s16(*&v66, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x41uLL), *&v66))).i32[1])
      {
        v76 = v73.f32[2];
        if (v73.f32[2] > 1.0)
        {
          v76 = 1.0;
        }

        v161[v65 + 2] = v76;
      }

      if (vuzp1_s16(*&v66, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x41uLL), *&v66))).i8[6])
      {
        v73.i32[0] = v73.i32[3];
        if (v73.f32[3] > 1.0)
        {
          v73.f32[0] = 1.0;
        }

        v161[v65 + 3] = v73.f32[0];
      }

      v66 = vaddq_s64(v66, v71);
      v67 = vaddq_s64(v67, v71);
      v70 = vaddq_s32(v70, v72);
      v65 += 4;
    }

    while (v65 != 68);
    LTMComputeV2::LTMCompute::interpolate(v21, this + 266, v162, 65, v161, &v159, 65);
    v77 = &v160;
    v78 = -4;
    v79 = &v163;
    do
    {
      *v79++ = vsubq_f32(*v77, *(v77 - 4));
      v78 += 4;
      ++v77;
    }

    while (v78 < 0x3C);
    v47 = a8;
  }

  else
  {
    v164[11] = xmmword_1EC3969D0;
    v164[12] = unk_1EC3969E0;
    v164[13] = xmmword_1EC3969F0;
    v164[14] = unk_1EC396A00;
    v164[7] = xmmword_1EC396990;
    v164[8] = unk_1EC3969A0;
    v164[9] = xmmword_1EC3969B0;
    v164[10] = unk_1EC3969C0;
    v164[3] = xmmword_1EC396950;
    v164[4] = unk_1EC396960;
    v164[5] = xmmword_1EC396970;
    v164[6] = unk_1EC396980;
    v163 = LTMComputeV2::LTMCompute::defaultHist;
    v164[0] = unk_1EC396920;
    v164[1] = xmmword_1EC396930;
    v164[2] = unk_1EC396940;
  }

  v80 = 0;
  v158 = v157 * (v29 + (v25 * v23));
  v154 = (v30 * v31) * v47;
  do
  {
    *&v16[v80 + 512] = powf(*(this + v80 + 1064), 1.0 / *(a5 + 23));
    v80 += 4;
  }

  while (v80 != 260);
  v82 = (v16 + 516);
  v83 = -4;
  do
  {
    *(v82 - 4) = vsubq_f32(*v82, *(v82 - 4));
    v83 += 4;
    ++v82;
  }

  while (v83 < 0x3C);
  v84 = (v16 + 528);
  v85 = -8;
  v86 = 1.0 / *(v16 + 128);
  do
  {
    v87 = vmulq_n_f32(*v84, v86);
    v84[-1] = vmulq_n_f32(v84[-1], v86);
    *v84 = v87;
    v85 += 8;
    v84 += 2;
  }

  while (v85 < 0x38);
  v88 = -4;
  do
  {
    *v60 = vminq_f32(v60[-16], v60[16]);
    ++v60;
    v88 += 4;
  }

  while (v88 < 0x3C);
  v89 = fmaxf((v14[108] * 1.5) + -0.5, 0.0);
  v90 = 1.0 - v89;
  v91 = -8;
  v92 = v16;
  do
  {
    v93 = vaddq_f32(vmulq_n_f32(v92[1], v89), vmulq_n_f32(v92[17], v90));
    *v92 = vaddq_f32(vmulq_n_f32(*v92, v89), vmulq_n_f32(v92[16], v90));
    v92[1] = v93;
    v92 += 2;
    v91 += 8;
  }

  while (v91 < 0x38);
  v94 = 0;
  v95 = 0.0;
  do
  {
    v95 = (((v95 + COERCE_FLOAT(*&v16[v94])) + COERCE_FLOAT(HIDWORD(*&v16[v94]))) + COERCE_FLOAT(*&v16[v94 + 8])) + COERCE_FLOAT(HIDWORD(*&v16[v94]));
    v94 += 16;
  }

  while (v94 != 256);
  v96 = fmaxf(((-(1.0 - v156[455]) * 0.5) + 1.0) - v95, 0.0);
  v97 = v164;
  v98 = (v16 + 16);
  v99 = -8;
  do
  {
    v100 = vaddq_f32(*v98, vmulq_n_f32(*v97, v96));
    v98[-1] = vaddq_f32(v98[-1], vmulq_n_f32(v97[-1], v96));
    *v98 = v100;
    v99 += 8;
    v97 += 2;
    v98 += 2;
  }

  while (v99 < 0x38);
  v101 = 0;
  *(v17 + 100) = 0u;
  *(v17 + 116) = 0u;
  *(v17 + 68) = 0u;
  *(v17 + 84) = 0u;
  *(v17 + 33) = 0;
  do
  {
    v102 = v101 + 1;
    if (*&v16[4 * v101] > 0.00000011921)
    {
      v103 = v158 + ((v102 - (v28 * (v27 * v28))) * v154);
      v104 = 17;
      v105 = (v17 + 68);
      do
      {
        v106 = v158 + (*(v105 - 17) * v14[109]);
        v107 = vabds_f32(v106, v103);
        if (v106 >= v103)
        {
          v109 = 8.22;
          v108 = v107 / (v103 + 0.39);
        }

        else
        {
          v108 = (v107 * 0.945) / ((v106 + 0.39) + (v107 * 0.055));
          v109 = -7.07;
        }

        *v105 = *v105 + ((v109 * log10f((v108 * 6.58) + 1.0)) * *&v16[4 * v101]);
        ++v105;
        --v104;
      }

      while (v104);
    }

    ++v101;
  }

  while (v102 != 64);
  v153[1] = 0;
  v110 = (v17 + 136);
  LTMComputeV2::LTMCompute::interpolate(v81, v17, v17 + 17, 17, this + 266, v17 + 34, *(this + 5));
  if (a3)
  {
    v112 = (*(this + 5) - 1);
    v113 = v112 & 0xFFFFFFFC;
    if (v113 < 1)
    {
      LODWORD(v114) = 0;
    }

    else
    {
      v114 = 0;
      v115 = (v17 + 140);
      v116 = a3;
      do
      {
        *v116++ = vsubq_f32(*v115, *(v115 - 4));
        v114 += 4;
        ++v115;
      }

      while (v114 < v113);
    }

    if (v114 < v112)
    {
      v117 = v112 - v114;
      v118 = &a3->f32[v114];
      v119 = &v17[4 * v114 + 140];
      do
      {
        *v118++ = *v119 - *(v119 - 1);
        ++v119;
        --v117;
      }

      while (v117);
    }
  }

  v120 = LTMComputeV2::LTMCompute::interpolate(v111, v17, v17 + 17, 17, this + 266, v17 + 34, *(this + 5), v14[103]);
  v121 = (*(this + 5) - 1);
  v122 = v121 & 0xFFFFFFFC;
  if (v122 < 1)
  {
    LODWORD(v123) = 0;
  }

  else
  {
    v123 = 0;
    v124 = (v17 + 140);
    v125 = a2;
    do
    {
      *v125++ = vsubq_f32(*v124, *(v124 - 4));
      v123 += 4;
      ++v124;
    }

    while (v123 < v122);
  }

  if (v123 < v121)
  {
    v126 = v121 - v123;
    v127 = &a2->f32[v123];
    v128 = &v17[4 * v123 + 140];
    do
    {
      *v127++ = *v128 - *(v128 - 1);
      ++v128;
      --v126;
    }

    while (v126);
  }

  v129 = *(this + 5);
  v130 = &v110[v129];
  result = LTMComputeV2::LTMCompute::interpolate(v120, v17, v17 + 17, 17, a6->var4, v17 + 34, *(this + 5), v14[103]);
  v132 = *(this + 5);
  if (v132 >= 2)
  {
    v133 = v132 - 1;
    v134 = (v17 + 136);
    do
    {
      v135 = v134[1];
      ++v134;
      v110[v129] = vabds_f32(v135, *v110);
      v110 = v134;
      --v133;
    }

    while (v133);
  }

  v136 = *(this + 6);
  if (v136)
  {
    v137 = a2;
    v138 = v130;
    do
    {
      v139 = *v137++;
      *v138 = fminf(v139 * 3.0, *v138);
      ++v138;
      --v136;
    }

    while (v136);
  }

  v140 = (v132 - 1);
  v141 = v140 & 0xFFFFFFFC;
  if (v141 < 1)
  {
    LODWORD(v142) = 0;
  }

  else
  {
    v142 = 0;
    v143 = a2;
    do
    {
      v144 = *v130++;
      *v143 = vmaxq_f32(*v143, v144);
      ++v143;
      v142 += 4;
    }

    while (v142 < v141);
  }

  if (v142 < v140)
  {
    v145 = v140 - v142;
    v146 = &v17[4 * v129 + 136 + 4 * v142];
    v147 = &a2->f32[v142];
    do
    {
      v148 = *v146++;
      v149 = v148;
      if (*v147 > v148)
      {
        v149 = *v147;
      }

      *v147++ = v149;
      --v145;
    }

    while (v145);
  }

  *v153 = 0;
  return result;
}

uint64_t LTMComputeV2::LTMCompute::interpolate(LTMComputeV2::LTMCompute *this, float *a2, float *a3, int a4, const float *a5, float *a6, int a7, float a8)
{
  if (a7 >= 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = a4 - 1;
    v11 = a3 - 1;
    do
    {
      v12 = a5[v8] * a8;
      if (v12 <= *a2)
      {
        v19 = *a3;
      }

      else if (v12 >= a2[v10])
      {
        v19 = a3[v10];
      }

      else
      {
        v13 = v9;
        v14 = (v9-- << 32) - 0x200000000;
        do
        {
          v15 = v13;
          v16 = a2[v13++];
          v14 += 0x100000000;
          ++v9;
        }

        while (v15 < a4 && v12 > v16);
        result = v14 >> 30;
        v18 = *(a2 + (v14 >> 30));
        if (vabds_f32(v16, v18) >= 0.00000011921)
        {
          v19 = a3[v14 >> 32] + (((v12 - v18) / (v16 - v18)) * (v11[v13] - a3[v14 >> 32]));
        }

        else
        {
          v19 = v11[v13];
        }
      }

      a6[v8++] = v19;
    }

    while (v8 != a7);
  }

  return result;
}

uint64_t LTMComputeV2::LTMCompute::calculateHighlightSceneModel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = 0;
  v8 = a1 + 21048;
  v9 = (a5 + 7564);
  if (a6 > 1)
  {
    if (a6 == 2)
    {
      v7 = (a5 + 9612);
      v10 = (a5 + 8588);
    }

    else
    {
      v10 = 0;
      if (a6 == 3)
      {
        v7 = (a5 + 14732);
        v10 = (a5 + 13708);
      }
    }
  }

  else if (a6)
  {
    v10 = 0;
    if (a6 == 1)
    {
      v10 = (a5 + 10636);
      v7 = (a5 + 11660);
    }
  }

  else
  {
    v10 = (a5 + 4492);
    v7 = (a5 + 6540);
  }

  v11 = &v205;
  result = MEMORY[0x1EEE9AC00](v8);
  v19 = &v205 - ((v18 + 15) & 0x7FFFFFFF0);
  v20 = 0;
  v21 = v16[778];
  v22.f32[0] = ((178.42 / (v21 + 12.131)) + 184.34) * 0.00097656;
  v23 = ((-285.53 / (v21 + 10.553)) + 3.1761) * 0.00097656;
  do
  {
    v225[v20] = (v23 * *&LTMComputeV2::LTMCompute::calculateHighlightSceneModel(sLtmComputeInput const*,LTMComputeV2::sLtmTuningParams const*,BOOL,LTMComputeV2::sLtmFrameParams *,eLTMSceneModel)::bvec2[v20]) + (*&LTMComputeV2::LTMCompute::calculateHighlightSceneModel(sLtmComputeInput const*,LTMComputeV2::sLtmTuningParams const*,BOOL,LTMComputeV2::sLtmFrameParams *,eLTMSceneModel)::bvec1[v20] * v22.f32[0]);
    ++v20;
  }

  while (v20 != 17);
  v24 = *(a1 + 20);
  if (v24)
  {
    v206 = v14;
    v223.i64[0] = v15;
    v207 = v13;
    v208 = v10;
    v209 = result;
    v210 = &v205;
    v25 = 0;
    v26 = v16;
    v27 = v16[772];
    v28 = LODWORD(v225[0]);
    v29 = v228;
    do
    {
      v30 = (*(a1 + 1064 + 4 * v25) * v27) * 0.125;
      if (v30 <= 1.0)
      {
        v17.i32[0] = v28;
        if (v30 > 0.0)
        {
          *v17.i32 = v29;
          if (v30 < 1.0)
          {
            v31 = 0;
            do
            {
              v32 = v31;
              v33 = LTMComputeV2::LTMCompute::calculateHighlightSceneModel(sLtmComputeInput const*,LTMComputeV2::sLtmTuningParams const*,BOOL,LTMComputeV2::sLtmFrameParams *,eLTMSceneModel)::xgHigh[v31++];
            }

            while (v32 <= 0x10 && v33 < v30);
            v17 = 0;
            if (v31 != 1)
            {
              v34 = (v31 - 2);
              v35 = LTMComputeV2::LTMCompute::calculateHighlightSceneModel(sLtmComputeInput const*,LTMComputeV2::sLtmTuningParams const*,BOOL,LTMComputeV2::sLtmFrameParams *,eLTMSceneModel)::xgHigh[v34];
              if (vabds_f32(v33, v35) >= 0.00000011921)
              {
                *v17.i32 = v225[v34] + (((v30 - v35) / (v33 - v35)) * (v224[v31] - v225[v34]));
              }

              else
              {
                *v17.i32 = v224[v31];
              }
            }
          }
        }
      }

      else
      {
        *v17.i32 = powf(v30, 0.25) * v29;
      }

      *&v19[4 * v25++] = v17.i32[0];
    }

    while (v25 != v24);
    v11 = v210;
    result = v209;
    v10 = v208;
    v16 = v26;
    v13 = v207;
    v15 = v223.i64[0];
    v14 = v206;
  }

  else
  {
    v27 = v16[772];
  }

  if (v27 < 1.0)
  {
    v36 = (v24 - 1);
    *&v19[4 * v36] = v226 + ((v227 - v226) * 0.63636);
    if (v24)
    {
      for (i = 0; i != v24; ++i)
      {
        v38 = i / v36;
        *&v19[4 * i] = ((v38 * v38) * (v38 * *&v19[4 * v36])) + (*&v19[4 * i] * (1.0 - (v38 * v38)));
      }
    }
  }

  v39 = *(a1 + 24);
  if ((v39 & 0xFFFFFFFC) < 1)
  {
    LODWORD(v40) = 0;
  }

  else
  {
    v40 = 0;
    v41 = (v19 + 4);
    v42 = v9;
    do
    {
      v22 = vsubq_f32(*v41, *(v41 - 4));
      *v42++ = v22;
      v40 += 4;
      ++v41;
    }

    while (v40 < (v39 & 0xFFFFFFFC));
  }

  if (v40 < v39)
  {
    v43 = v39 - v40;
    v44 = (v15 + 4 * v40 + 7564);
    v45 = &v19[4 * v40 + 4];
    do
    {
      *v44++ = *v45 - *(v45 - 1);
      ++v45;
      --v43;
    }

    while (v43);
  }

  v22.f32[0] = v16[772];
  if (v22.f32[0] > 8.0)
  {
    v46 = *(a1 + 24);
    v47 = vcvtms_s32_f32((8.0 / v22.f32[0]) * v46);
    v48 = v47 <= 1 ? 1 : v47;
    if (v46 > v48)
    {
      v206 = v14;
      v207 = v13;
      v209 = result;
      v205 = v16;
      v208 = v10;
      v210 = v11;
      v49 = v7;
      v50 = 0;
      v51.i32[1] = 1023410176;
      v22.f32[0] = (v22.f32[0] * 0.03125) + -0.25;
      *v51.i32 = v48;
      *v17.i32 = (v46 - v48);
      v52 = v46 - v48;
      v53 = (v52 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v54 = vdupq_n_s64(v52 - 1);
      v218 = vdupq_lane_s32(*v22.f32, 0);
      v217 = vdupq_lane_s32(v51, 0);
      v216 = vdupq_lane_s32(v17, 0);
      v55 = v15;
      v56 = v15 + 4 * v48 + 7576;
      v215 = xmmword_1C932FAE0;
      v214 = xmmword_1C932FAF0;
      __asm { FMOV            V0.4S, #1.0 }

      v213 = _Q0;
      __asm { FMOV            V0.4S, #0.25 }

      v212 = _Q0;
      v211 = vdupq_n_s32(0x3E91EB85u);
      v63 = v48;
      v219 = v54;
      do
      {
        v221 = vdupq_n_s64(v50);
        v64 = vcgeq_u64(v54, vorrq_s8(v221, v214));
        v65 = vmovn_s64(v64);
        *v64.i8 = vuzp1_s16(v65, *v64.i8);
        v220 = v64;
        v66.i32[0] = v63;
        v66.i32[1] = v63 + 1;
        v66.u64[1] = vadd_s32(vdup_n_s32(v63), 0x300000002);
        v223 = vmlaq_f32(v212, v218, vdivq_f32(vaddq_f32(vsubq_f32(vcvtq_f32_u32(v66), v217), v213), v216));
        v67.f32[0] = powf(v223.f32[1], 1.25);
        v222 = v67;
        v68.f32[0] = powf(v223.f32[0], 1.25);
        v68.i32[1] = v222.i32[0];
        v222 = v68;
        v69 = powf(v223.f32[2], 1.25);
        v70 = v222;
        v70.f32[2] = v69;
        v222 = v70;
        v71 = powf(v223.f32[3], 1.25);
        v72 = v222;
        v72.f32[3] = v71;
        v73 = vdivq_f32(v211, v72);
        v72.i64[0] = 0x3400000034000000;
        v72.i64[1] = 0x3400000034000000;
        v74 = vmaxnmq_f32(v73, v72);
        if (v220.i8[0])
        {
          *(v56 - 12) = v74.i32[0];
        }

        if (vuzp1_s16(v65, *&v74).i8[2])
        {
          *(v56 - 8) = v74.i32[1];
        }

        v54 = v219;
        if (vuzp1_s16(*&v74, vmovn_s64(vcgeq_u64(v219, vorrq_s8(v221, v215)))).i32[1])
        {
          *(v56 - 4) = v74.i64[1];
        }

        v50 += 4;
        v63 += 4;
        v56 += 16;
      }

      while (v53 != v50);
      v75 = &v9->f32[v48];
      v77 = *(v75 - 1);
      v76 = *v75;
      v78 = (v55 + 4 * v48 + 7564);
      v79 = v46 - v48;
      v80 = v77 / v76;
      v7 = v49;
      v15 = v55;
      v10 = v208;
      v16 = v205;
      result = v209;
      v13 = v207;
      v14 = v206;
      do
      {
        *v78 = v80 * *v78;
        ++v78;
        --v79;
      }

      while (v79);
    }
  }

  v81 = v16[773];
  v82 = v16[784] + -1.0;
  v83 = ((v82 * v16[777]) + 1.0) / v81;
  if (v14)
  {
    v83 = (v83 * v16[775]) + ((((v82 * (2.0 - v16[775])) + 1.0) / sqrtf(v81)) * (1.0 - v16[775]));
  }

  if (*(a1 + 63408))
  {
    v84 = 0;
  }

  else
  {
    *(a1 + 63408) = 1;
    v84 = result;
  }

  v85 = *(a1 + 24);
  if ((v85 & 0xFFFFFFFC) < 1)
  {
    LODWORD(v86) = 0;
  }

  else
  {
    v86 = 0;
    v87 = v9;
    v88 = v10;
    v89 = v84;
    do
    {
      v90 = *v87++;
      v91 = v90;
      v92 = *v88++;
      *v89++ = vsubq_f32(v91, v92);
      v86 += 4;
    }

    while (v86 < (v85 & 0xFFFFFFFC));
  }

  if (v86 < v85)
  {
    v93 = v85 - v86;
    v94 = &v84->f32[v86];
    v95 = (v15 + 4 * v86 + 7564);
    v96 = &v10->f32[v86];
    do
    {
      v97 = *v95++;
      v98 = v97;
      v99 = *v96++;
      *v94++ = v98 - v99;
      --v93;
    }

    while (v93);
  }

  v100 = *(a1 + 24);
  if ((v100 & 0xFFFFFFFC) < 1)
  {
    LODWORD(v101) = 0;
  }

  else
  {
    v101 = 0;
    v102 = v84;
    do
    {
      *v102 = vmaxq_f32(*v102, 0);
      ++v102;
      v101 += 4;
    }

    while (v101 < (v100 & 0xFFFFFFFC));
  }

  if (v101 < v100)
  {
    v103 = v100 - v101;
    v104 = &v84->f32[v101];
    do
    {
      v105 = *v104;
      if (*v104 < 0.0)
      {
        v105 = 0.0;
      }

      *v104++ = v105;
      --v103;
    }

    while (v103);
  }

  v106 = fminf(v83, 1.0) * (1.0 - *(v13 + 1820));
  v107 = *(a1 + 24);
  if ((v107 & 0xFFFFFFF8) < 1)
  {
    LODWORD(v108) = 0;
  }

  else
  {
    v108 = 0;
    v109 = v84 + 1;
    v110 = v10 + 1;
    do
    {
      v111 = vaddq_f32(*v110, vmulq_n_f32(*v109, v106));
      v110[-1] = vaddq_f32(v110[-1], vmulq_n_f32(v109[-1], v106));
      *v110 = v111;
      v108 += 8;
      v109 += 2;
      v110 += 2;
    }

    while (v108 < (v107 & 0xFFFFFFF8));
  }

  if (v108 < v107)
  {
    v112 = v107 - v108;
    v113 = &v84->f32[v108];
    v114 = &v10->f32[v108];
    do
    {
      v115 = *v113++;
      *v114 = *v114 + (v106 * v115);
      ++v114;
      --v112;
    }

    while (v112);
  }

  v116 = *(a1 + 24);
  if ((v116 & 0xFFFFFFFC) < 1)
  {
    LODWORD(v117) = 0;
  }

  else
  {
    v117 = 0;
    v118 = v10;
    v119 = v84;
    do
    {
      v120 = *v9++;
      v121 = v120;
      v122 = *v118++;
      *v119++ = vsubq_f32(v121, v122);
      v117 += 4;
    }

    while (v117 < (v116 & 0xFFFFFFFC));
  }

  if (v117 < v116)
  {
    v123 = v116 - v117;
    v124 = &v84->f32[v117];
    v125 = (v15 + 4 * v117 + 7564);
    v126 = &v10->f32[v117];
    do
    {
      v127 = *v125++;
      v128 = v127;
      v129 = *v126++;
      *v124++ = v128 - v129;
      --v123;
    }

    while (v123);
  }

  v130 = *(a1 + 24);
  if ((v130 & 0xFFFFFFFC) < 1)
  {
    LODWORD(v131) = 0;
  }

  else
  {
    v131 = 0;
    v132 = v84;
    do
    {
      *v132 = vmaxq_f32(*v132, 0);
      ++v132;
      v131 += 4;
    }

    while (v131 < (v130 & 0xFFFFFFFC));
  }

  if (v131 < v130)
  {
    v133 = v130 - v131;
    v134 = &v84->f32[v131];
    do
    {
      v135 = *v134;
      if (*v134 < 0.0)
      {
        v135 = 0.0;
      }

      *v134++ = v135;
      --v133;
    }

    while (v133);
  }

  v136 = v16[783];
  v137 = *(a1 + 24);
  if ((v137 & 0xFFFFFFFC) < 1)
  {
    LODWORD(v138) = 0;
  }

  else
  {
    v138 = 0;
    v139 = v10;
    v140 = v84;
    v141 = v7;
    do
    {
      v142 = *v139++;
      v143 = v142;
      v144 = *v140++;
      *v141++ = vaddq_f32(vmulq_n_f32(v143, v136), vmulq_n_f32(v144, v83));
      v138 += 4;
    }

    while (v138 < (v137 & 0xFFFFFFFC));
  }

  if (v138 < v137)
  {
    v145 = v137 - v138;
    v146 = &v7->f32[v138];
    v147 = &v84->f32[v138];
    v148 = &v10->f32[v138];
    do
    {
      v149 = *v148++;
      v150 = v149;
      v151 = *v147++;
      *v146++ = (v83 * v151) + (v150 * v136);
      --v145;
    }

    while (v145);
  }

  *(a1 + 63408) = 1;
  v152 = v16[788];
  if (v152 > 1.0)
  {
    v153 = v16;
    v154 = *(a1 + 24);
    v155 = fminf(0.18 / fmaxf(*(v13 + 1832), 0.00000011921), 1.0) * v154;
    if (v155 < 2.0)
    {
      v156 = result;
      if (v155 >= 1.0)
      {
        v158 = ((((v155 * v155) * -38.75) + (powf(v155, 3.0) * 9.375)) + (v155 * 54.375)) + -24.5;
      }

      else
      {
        v157 = powf(v155, 5.0);
        v158 = (v157 * 4.5) / (v157 + 8.0);
      }

      v155 = fminf(v155, v158);
      result = v156;
    }

    if (v154 >= 1)
    {
      v159 = 0;
      v160 = floorf(v155);
      v161 = ceilf(v155);
      v162 = result;
      do
      {
        v163 = v159;
        v164 = 1.0;
        if (v160 <= v159)
        {
          v164 = 0.0;
          if (v161 > v163)
          {
            v164 = v155 - v163;
          }
        }

        if (v162)
        {
          *v162++ = v164;
        }

        ++v159;
      }

      while (v154 != v159);
      v152 = v153[788];
    }

    v165 = v152 + -1.0;
    if ((v154 & 0xFFFFFFF8) < 1)
    {
      LODWORD(v166) = 0;
    }

    else
    {
      v166 = 0;
      v167 = (result + 16);
      do
      {
        v168 = vmulq_n_f32(*v167, v165);
        v167[-1] = vmulq_n_f32(v167[-1], v165);
        *v167 = v168;
        v166 += 8;
        v167 += 2;
      }

      while (v166 < (v154 & 0xFFFFFFF8));
    }

    if (v166 < v154)
    {
      v169 = v154 - v166;
      v170 = (a1 + 4 * v166 + 21048);
      do
      {
        *v170 = v165 * *v170;
        ++v170;
        --v169;
      }

      while (v169);
    }

    v171 = *(a1 + 24);
    if (!v171)
    {
      goto LABEL_142;
    }

    v172 = *(a1 + 24);
    v173 = result;
    do
    {
      *v173 = *v173 + 1.0;
      ++v173;
      --v172;
    }

    while (v172);
    if ((v171 & 0xFFFFFFF0) >= 1)
    {
      v174 = 0;
      v175 = (result + 32);
      v176 = v10 + 2;
      do
      {
        v177 = v175[-2];
        v178 = v175[-1];
        v179 = *v175;
        v180 = v175[1];
        v175 += 4;
        v181 = vmulq_f32(v176[-2], v177);
        v182 = vmulq_f32(v176[-1], v178);
        v183 = vmulq_f32(*v176, v179);
        v184 = vmulq_f32(v176[1], v180);
        v176[-2] = v181;
        v176[-1] = v182;
        *v176 = v183;
        v176[1] = v184;
        v176 += 4;
        v174 += 16;
      }

      while (v174 < (v171 & 0xFFFFFFF0));
    }

    else
    {
LABEL_142:
      LODWORD(v174) = 0;
    }

    if (v174 < v171)
    {
      v185 = v171 - v174;
      v186 = (a1 + 4 * v174 + 21048);
      v187 = &v10->f32[v174];
      do
      {
        v188 = *v186++;
        *v187 = *v187 * v188;
        ++v187;
        --v185;
      }

      while (v185);
    }

    v189 = *(a1 + 24);
    if ((v189 & 0xFFFFFFF0) < 1)
    {
      LODWORD(v190) = 0;
    }

    else
    {
      v190 = 0;
      v191 = (result + 32);
      v192 = v7 + 2;
      do
      {
        v193 = v191[-2];
        v194 = v191[-1];
        v195 = *v191;
        v196 = v191[1];
        v191 += 4;
        v197 = vmulq_f32(v192[-2], v193);
        v198 = vmulq_f32(v192[-1], v194);
        v199 = vmulq_f32(*v192, v195);
        v200 = vmulq_f32(v192[1], v196);
        v192[-2] = v197;
        v192[-1] = v198;
        *v192 = v199;
        v192[1] = v200;
        v192 += 4;
        v190 += 16;
      }

      while (v190 < (v189 & 0xFFFFFFF0));
    }

    if (v190 < v189)
    {
      v201 = v189 - v190;
      v202 = (a1 + 4 * v190 + 21048);
      v203 = &v7->f32[v190];
      do
      {
        v204 = *v202++;
        *v203 = *v203 * v204;
        ++v203;
        --v201;
      }

      while (v201);
    }
  }

  *(a1 + 63408) = 0;
  return result;
}

void LTMComputeV2::LTMCompute::histInterp(LTMComputeV2::LTMCompute *this, float *a2, float *a3, int a4, float *a5, float32x4_t *a6, int a7, float *a8, double a9, BOOL a10)
{
  v13 = a5;
  v16 = this + 63410;
  if (*(this + 63410))
  {
    v17 = 0;
  }

  else
  {
    v17 = (this + 37992);
    *v16 = 1;
  }

  *v17 = 0.0;
  if (a4 >= 2)
  {
    v18 = v17 + 1;
    v19 = a4 - 1;
    a9 = 0.0;
    v20 = a3;
    do
    {
      v21 = *v20++;
      *&a9 = *&a9 + v21;
      *v18++ = LODWORD(a9);
      --v19;
    }

    while (v19);
  }

  if (*(this + 63411))
  {
    v22 = 0;
  }

  else
  {
    v22 = (this + 46464);
    *(this + 63411) = 1;
  }

  *&a9 = a5[a7 - 1];
  v23 = a7 & 0xFFFFFFFC;
  if (v23 < 1)
  {
    LODWORD(v24) = 0;
  }

  else
  {
    v24 = 0;
    v25 = vdupq_lane_s32(*&a9, 0);
    v26 = a5;
    v27 = v22;
    do
    {
      v28 = *v26;
      v26 += 4;
      *v27++ = vminq_f32(v25, v28);
      v24 += 4;
    }

    while (v24 < v23);
  }

  if (v24 < a7)
  {
    v29 = a7 - v24;
    v30 = &v22->f32[v24];
    v31 = &a5[v24];
    do
    {
      v32 = *v31++;
      v33 = v32;
      if (v32 > *&a9)
      {
        v33 = *&a9;
      }

      *v30++ = v33;
      --v29;
    }

    while (v29);
  }

  LODWORD(a9) = v22->i32[0];
  if (v23 < 1)
  {
    LODWORD(v34) = 0;
  }

  else
  {
    v34 = 0;
    v35 = vdupq_lane_s32(*&a9, 0);
    v36 = v22;
    do
    {
      *v36 = vmaxq_f32(v35, *v36);
      ++v36;
      v34 += 4;
    }

    while (v34 < v23);
  }

  if (v34 < a7)
  {
    v37 = a7 - v34;
    v38 = &v22->f32[v34];
    do
    {
      v39 = *v38;
      if (*v38 < *&a9)
      {
        v39 = *&a9;
      }

      *v38++ = v39;
      --v37;
    }

    while (v37);
  }

  v40 = a7 - 1;
  LTMComputeV2::LTMCompute::interpolate(this, a2, v17, a4, a5, a6->f32, a7);
  if (a10)
  {
    v41 = a2[1];
    if (a7 < 1)
    {
      v43 = 0;
    }

    else
    {
      v42 = 0;
      v43 = 0;
      do
      {
        if (v13[v42] <= v41)
        {
          v43 = v42;
        }

        ++v42;
      }

      while (a7 != v42);
    }

    v44 = a2[2];
    v46 = *a3;
    v45 = a3[1];
    v47 = powf(a2[1], 3.0);
    if (v43 < 0)
    {
      v53 = v43 + 1;
    }

    else
    {
      v69 = a8;
      v48 = v45 / (v44 - v41);
      v49 = ((v46 - (v48 * v41)) * 6.0) / v47;
      v50 = v48 + (((v41 * v41) * v49) * 0.5);
      v51 = v49 / 6.0;
      v52 = (v41 * v49) * -0.5;
      v53 = v43 + 1;
      v54 = (v43 + 1);
      v55 = a6;
      do
      {
        v56 = *v13++;
        *v55++ = ((v52 * (v56 * v56)) + (v51 * powf(v56, 3.0))) + (v50 * v56);
        --v54;
      }

      while (v54);
      a8 = v69;
    }

    v57 = v53 & 0xFFFFFFFC;
    if (v57 < 1)
    {
      LODWORD(v58) = 0;
    }

    else
    {
      v58 = 0;
      v59 = a6;
      do
      {
        *v59 = vmaxq_f32(*v59, 0);
        ++v59;
        v58 += 4;
      }

      while (v58 < v57);
    }

    if (v58 <= v43)
    {
      v60 = v53 - v58;
      v61 = &a6->f32[v58];
      do
      {
        v62 = *v61;
        if (*v61 < 0.0)
        {
          v62 = 0.0;
        }

        *v61++ = v62;
        --v60;
      }

      while (v60);
    }
  }

  *a8 = a6->f32[v40];
  if (v23 < 1)
  {
    LODWORD(v63) = 0;
  }

  else
  {
    v63 = 0;
    v64 = a6;
    do
    {
      *v64 = vsubq_f32(*(v64 + 1), *v64);
      v64 += 4;
      v63 += 4;
    }

    while (v63 < v23);
  }

  if (v63 < a7)
  {
    v65 = a7 - v63;
    v66 = &a6->f32[v63];
    v67 = v66;
    do
    {
      v68 = v67[1];
      ++v67;
      *v66 = v68 - *v66;
      v66 = v67;
      --v65;
    }

    while (v65);
  }

  *v16 = 0;
}

void LTMComputeV2::LTMCompute::interpolate(LTMComputeV2::LTMCompute *this, float *a2, float *a3, int a4, const float *a5, float *a6, int a7)
{
  if (a7 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = a4 - 1;
    v10 = a3 - 1;
    do
    {
      v11 = a5[v7];
      if (v11 <= *a2)
      {
        v17 = *a3;
      }

      else if (v11 >= a2[v9])
      {
        v17 = a3[v9];
      }

      else
      {
        v12 = v8;
        v13 = v8 - 2;
        --v8;
        do
        {
          v14 = v12;
          v15 = a2[v12++];
          ++v13;
          ++v8;
        }

        while (v14 < a4 && v11 > v15);
        if (v12 - 1 < 1)
        {
          goto LABEL_15;
        }

        v16 = a2[v13];
        if (vabds_f32(v15, v16) >= 0.00000011921)
        {
          v17 = a3[v13] + (((v11 - v16) / (v15 - v16)) * (v10[v12] - a3[v13]));
        }

        else
        {
          v17 = v10[v12];
        }
      }

      a6[v7] = v17;
LABEL_15:
      ++v7;
    }

    while (v7 != a7);
  }
}

void LTMComputeV2::LTMCompute::computeThumbnailLuma(LTMComputeV2::LTMCompute *this, const sLtmComputeInput *a2, sLtmFrameParams *a3)
{
  v6 = (this + 1064);
  if (*(this + 63409))
  {
    v7 = 0;
  }

  else
  {
    *(this + 63409) = 1;
    v7 = (this + 29520);
  }

  v9 = *(this + 5);
  v8 = *(this + 6);
  v10 = &v7->f32[v8];
  if (v8 >= 1)
  {
    v11 = 0;
    v12 = fminf(v8, v8 / a3->var22);
    var5 = a3->var5;
    v14 = floorf(v12);
    v15 = ceilf(v12);
    v16 = v7;
    do
    {
      v17 = v11;
      v18 = 1.0;
      if (v14 <= v11)
      {
        v18 = 0.0;
        if (v15 > v17)
        {
          v18 = v12 - v17;
        }
      }

      if (var5)
      {
        *var5++ = v18;
      }

      if (v16)
      {
        *v16++ = 1.0 - v18;
      }

      ++v11;
    }

    while (v8 != v11);
  }

  v19 = v9;
  memcpy(&v7->f32[v8], v6, 4 * v9);
  v20 = *(this + 6);
  if (v20 > 1)
  {
    v21 = v10 + 1;
    v22 = &a2->thumbnailHist[1];
    v23 = v20 - 1;
    do
    {
      if (*v22 > 0.00000011921)
      {
        *v21 = v22[512] / (*v22 * 65535.0);
      }

      ++v21;
      ++v22;
      --v23;
    }

    while (v23);
  }

  v10[v20] = 1.0;
  v24 = *(this + 5);
  if ((v24 & 0xFFFFFFFC) < 1)
  {
    LODWORD(v25) = 0;
  }

  else
  {
    v25 = 0;
    v26 = (v7 + 4 * v8);
    var4 = a3->var4;
    do
    {
      v28 = *v6++;
      v29 = v28;
      v30 = *v26++;
      *var4++ = vminq_f32(v29, v30);
      v25 += 4;
    }

    while (v25 < (v24 & 0xFFFFFFFC));
  }

  if (v25 < v24)
  {
    v31 = &a3->var4[v25];
    v32 = &v7->f32[v8 + v25];
    v33 = (this + 4 * v25 + 1064);
    v34 = v24 - v25;
    do
    {
      v35 = *v33++;
      v36 = v35;
      v37 = *v32++;
      v38 = v37;
      if (v36 >= v37)
      {
        v36 = v38;
      }

      *v31++ = v36;
      --v34;
    }

    while (v34);
  }

  v39 = *(this + 6);
  if ((v39 & 0xFFFFFFF0) < 1)
  {
    LODWORD(v41) = 0;
  }

  else
  {
    v40 = 0;
    v41 = 0;
    do
    {
      v42 = vmulq_f32(*(this + v40 * 4 + 1080), *&a3->var5[v40 + 4]);
      v43 = vmulq_f32(*(this + v40 * 4 + 1096), *&a3->var5[v40 + 8]);
      v44 = vmulq_f32(*(this + v40 * 4 + 1112), *&a3->var5[v40 + 12]);
      v45 = (v7 + 4 * v8 + 4 * v19 + v40 * 4 + 32);
      v45[-2] = vmulq_f32(*(this + v40 * 4 + 1064), *&a3->var5[v40]);
      v45[-1] = v42;
      *v45 = v43;
      v45[1] = v44;
      v41 += 16;
      v40 += 16;
    }

    while (v41 < (v39 & 0xFFFFFFF0));
  }

  if (v41 < v39)
  {
    v46 = v39 - v41;
    v47 = &v7->f32[v8 + v41 + v19];
    v48 = &a3->var5[v41];
    v49 = (this + 4 * v41 + 1064);
    do
    {
      v50 = *v49++;
      v51 = v50;
      v52 = *v48++;
      *v47++ = v51 * v52;
      --v46;
    }

    while (v46);
  }

  v53 = *(this + 6);
  if ((v53 & 0xFFFFFFF0) < 1)
  {
    LODWORD(v54) = 0;
  }

  else
  {
    v54 = 0;
    v55 = v7 + 2;
    v56 = a3->var4;
    do
    {
      v57 = v55[-2];
      v58 = v55[-1];
      v59 = *v55;
      v60 = v55[1];
      v55 += 4;
      v61 = vmulq_f32(v56[1], v58);
      v62 = vmulq_f32(v56[2], v59);
      v63 = vmulq_f32(v56[3], v60);
      *v56 = vmulq_f32(*v56, v57);
      v56[1] = v61;
      v56[2] = v62;
      v56[3] = v63;
      v54 += 16;
      v56 += 4;
    }

    while (v54 < (v53 & 0xFFFFFFF0));
  }

  if (v54 < v53)
  {
    v64 = v53 - v54;
    v65 = &v7->f32[v54];
    v66 = &a3->var4[v54];
    do
    {
      v67 = *v65++;
      *v66 = *v66 * v67;
      ++v66;
      --v64;
    }

    while (v64);
  }

  v68 = *(this + 6);
  if ((v68 & 0xFFFFFFFC) < 1)
  {
    LODWORD(v69) = 0;
  }

  else
  {
    v69 = 0;
    v70 = a3->var4;
    v71 = (v7 + 4 * v8);
    do
    {
      v72 = *v70;
      v70 += 4;
      *v71 = vaddq_f32(v72, *(v71 + 4 * v9));
      ++v71;
      v69 += 4;
    }

    while (v69 < (v68 & 0xFFFFFFFC));
  }

  if (v69 < v68)
  {
    v73 = v68 - v69;
    v74 = &v7->f32[v8 + v69];
    v75 = &a3->var4[v69];
    do
    {
      v76 = *v75++;
      *v74 = v76 + v74[v9];
      ++v74;
      --v73;
    }

    while (v73);
  }

  v77 = *(this + 5);
  if (v77 >= 2)
  {
    v78 = v10 + 1;
    v79 = *v10;
    v80 = v77 - 1;
    do
    {
      v79 = fmaxf(*v78, v79);
      *v78++ = v79;
      --v80;
    }

    while (v80);
  }

  LTMComputeV2::LTMCompute::smoothHistogramMiddle(this, &v7->f32[v8], a3->var4, v77, a3->var20, 6, 0);
  *(this + 63409) = 0;
}

void LTMComputeV2::LTMCompute::smoothHistogramMiddle(LTMComputeV2::LTMCompute *this, float *__src, float *__dst, int a4, const float *a5, int a6, int a7)
{
  if (*(this + 63408))
  {
    v14 = 0;
    if (!__dst)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v14 = (this + 21048);
    *(this + 63408) = 1;
    bzero(this + 21048, 0x404uLL);
    if (!__dst)
    {
LABEL_16:
      v20 = __src;
      goto LABEL_17;
    }
  }

  if (a6 < 1)
  {
    goto LABEL_16;
  }

  v15 = 0;
  v16 = (a4 - 1);
  v17 = v16;
  v18 = v16 - 1;
  v19 = __dst;
  do
  {
    v20 = v19;
    v19 = v14;
    if (a4 >= 3)
    {
      v21 = v20 + 1;
      v22 = __src + 2;
      v23 = v18;
      do
      {
        v24 = (*(v22 - 1) * a5[1]) + (*(v22 - 2) * *a5);
        v25 = *v22++;
        *v21++ = v24 + (v25 * a5[2]);
        --v23;
      }

      while (v23);
    }

    v26 = *__src;
    if (a7)
    {
      *v20 = (__src[1] * a5[2]) + (v26 * (*a5 + a5[1]));
      v27 = (__src[a4 - 2] * *a5) + (__src[v17] * (a5[1] + a5[2]));
    }

    else
    {
      *v20 = v26;
      v27 = __src[v17];
    }

    v20[v17] = v27;
    if (!v14)
    {
      break;
    }

    ++v15;
    v14 = v20;
    __src = v20;
  }

  while (v15 < a6);
LABEL_17:
  if (v20 != __dst)
  {
    memcpy(__dst, v20, 4 * a4);
  }

  *(this + 63408) = 0;
}

float LTMComputeV2::LTMCompute::calculateSceneFlare(LTMComputeV2::LTMCompute *this, const float *a2, int a3, int *a4, double a5, float a6, float *a7, float *a8, float *a9)
{
  v9 = this + 63408;
  v10 = (this + 46464);
  v11 = (this + 37992);
  v12 = &a2[a4[3] * a3];
  v13 = 0.0;
  v14 = 0.0;
  if (a3 >= 1)
  {
    v15 = a3;
    v16 = &a2[a4[3] * a3];
    do
    {
      v17 = *v16++;
      v14 = v14 + v17;
      --v15;
    }

    while (v15);
    v14 = v14 * 0.99;
  }

  v18 = 0;
  v19 = *(this + 6);
  v20 = -1;
  do
  {
    v21 = v13;
    v22 = *(v12 + 4 * v18);
    ++v20;
    if (v18 >= a3)
    {
      break;
    }

    v13 = v13 + v22;
    ++v18;
  }

  while ((v21 + v22) < v14);
  v23 = ((v14 - v21) / v22) + v20;
  if (a3 == v20)
  {
    v23 = a3 + -1.0;
  }

  v24 = v23 / a3;
  *a9 = v24;
  LODWORD(v12) = llroundf(fminf(a6, fmaxf(roundf(v24 * a6), 1.0)));
  if (v12 >= 705)
  {
    v25 = 705;
  }

  else
  {
    v25 = v12;
  }

  if (*(this + 63411))
  {
    v10 = 0;
    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    *(this + 63411) = 1;
    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_25;
    }
  }

  v26 = 0;
  v27 = vdupq_n_s64(v12);
  v28 = xmmword_1C932FAE0;
  v29 = xmmword_1C932FAF0;
  v30 = v10 + 2;
  v31 = vdupq_n_s64(4uLL);
  do
  {
    v32 = vmovn_s64(vcgeq_u64(v27, v29));
    if (vuzp1_s16(v32, *&a5).u8[0])
    {
      *(v30 - 2) = v26;
    }

    if (vuzp1_s16(v32, *&a5).i8[2])
    {
      *(v30 - 1) = (v26 + 1);
    }

    if (vuzp1_s16(*&a5, vmovn_s64(vcgeq_u64(v27, *&v28))).i32[1])
    {
      *v30 = (v26 + 2);
      v30[1] = (v26 + 3);
    }

    v26 += 4;
    v28 = vaddq_s64(v28, v31);
    v29 = vaddq_s64(v29, v31);
    v30 += 4;
  }

  while ((v12 & 0x7FFFFFFC) + 4 != v26);
LABEL_25:
  v33 = 0;
  *v9 = 1;
  *(this + 5262) = 0;
  *(this + 5968) = 0;
  *(this + 6674) = 0;
  v34 = (v25 + 1);
  v35 = (this + 21052);
  do
  {
    if (v12 >= 1)
    {
      v36 = *(this + 706 * v33 + 5262);
      v37 = &a2[a4[v33] * a3];
      v38 = v34 - 1;
      v39 = v35;
      do
      {
        v40 = *v37++;
        v36 = v36 + v40;
        *v39++ = v36;
        --v38;
      }

      while (v38);
    }

    ++v33;
    v35 += 706;
  }

  while (v33 != 3);
  if (*(this + 63409))
  {
    v41 = 0;
  }

  else
  {
    *(this + 63409) = 1;
    v41 = (this + 29520);
  }

  *v41 = 0;
  v42 = (v41 + 1);
  v43 = v25 & 0xFFFFFFFC;
  if (v43 < 1)
  {
    LODWORD(v44) = 0;
  }

  else
  {
    v44 = 0;
    v45 = (this + 23876);
    v46 = (v41 + 1);
    do
    {
      v47 = (v45 - 2824);
      v48 = *v45++;
      *v46++ = vaddq_f32(*v47, v48);
      v44 += 4;
    }

    while (v44 < v43);
  }

  if (v44 < v25)
  {
    v49 = v25 - v44;
    v50 = &v41[v44 + 1];
    v51 = (this + 4 * v44 + 21052);
    do
    {
      *v50++ = *v51 + v51[706];
      ++v51;
      --v49;
    }

    while (v49);
  }

  if (v43 < 1)
  {
    LODWORD(v52) = 0;
  }

  else
  {
    v52 = 0;
    v53 = (this + 26700);
    do
    {
      v54 = *v53++;
      *v42 = vaddq_f32(*v42, v54);
      ++v42;
      v52 += 4;
    }

    while (v52 < v43);
  }

  if (v52 < v25)
  {
    v55 = v25 - v52;
    v56 = (this + 4 * v52 + 26700);
    v57 = &v41[v52 + 1];
    do
    {
      v58 = *v56++;
      *v57 = *v57 + v58;
      ++v57;
      --v55;
    }

    while (v55);
  }

  v59 = v12 + 1;
  if (*&a5 <= 0.0)
  {
    v63 = *v10;
  }

  else if (*&v41[v12] <= *&a5)
  {
    v63 = v10[v12];
  }

  else
  {
    v60 = 0;
    do
    {
      v61 = v60;
      v62 = *&v41[v60++];
    }

    while (v61 < v59 && v62 < *&a5);
    v63 = 0.0;
    if (v60 != 1)
    {
      v64 = (v60 - 2);
      v65 = *&v41[v64];
      if (vabds_f32(v62, v65) >= 0.00000011921)
      {
        v63 = v10[v64] + (((*&a5 - v65) / (v62 - v65)) * (v10[v60 - 1] - v10[v64]));
      }

      else
      {
        v63 = v10[v60 - 1];
      }
    }
  }

  if (v9[2])
  {
    v11 = 0;
  }

  else
  {
    v9[2] = 1;
  }

  *v11 = 0.0;
  if (v12 < 1)
  {
    v69 = 0.0;
  }

  else
  {
    v66 = *v11;
    v67 = 4 * v34;
    v68 = 4;
    do
    {
      v66 = v66 + *&v41[v68 / 4];
      v11[v68 / 4] = v66;
      v68 += 4;
    }

    while (v67 != v68);
    v69 = *v11;
  }

  if (v69 >= *&a5)
  {
    v73 = *v10;
  }

  else if (v11[v12] <= *&a5)
  {
    v73 = v10[v12];
  }

  else
  {
    v70 = 0;
    do
    {
      v71 = v70;
      v72 = v11[v70++];
    }

    while (v71 < v59 && v72 < *&a5);
    v73 = 0.0;
    if (v70 != 1)
    {
      v74 = (v70 - 2);
      v75 = v11[v74];
      if (vabds_f32(v72, v75) >= 0.00000011921)
      {
        v73 = v10[v74] + (((*&a5 - v75) / (v72 - v75)) * (v10[v70 - 1] - v10[v74]));
      }

      else
      {
        v73 = v10[v70 - 1];
      }
    }
  }

  *a7 = v73;
  v76 = 0.0;
  if (v63 > 0.00000011921)
  {
    v76 = fminf(v73 / v63, 1.0) * 0.85;
  }

  *a8 = v76;
  result = fminf(*a7, a6) / ((a3 + v19 - 1) / v19);
  *a7 = result;
  *v9 = 0;
  return result;
}

LTMComputeV2::LTMCompute *LTMComputeV2::LTMCompute::calculateGlobalLUTandModifySceneModels(LTMComputeV2::LTMCompute *this, uint64_t a2, const sLtmComputeInput *a3, const sLtmComputeMeta *a4, const sLtmTuningParams *a5, const sLtmDisplayParams *a6, sLtmFrameParams *a7, sLtmComputeOutput *a8)
{
  v8 = a8;
  v10 = a6;
  if (a2 != 2)
  {
    v14 = -1.0;
    if (a4->useDigitalFlash)
    {
      goto LABEL_7;
    }

LABEL_21:
    memcpy(a8->globalLUT, &LTMComputeV2::LTMCompute::globalCurveInputs, sizeof(a8->globalLUT));
LABEL_190:
    result = memcpy(a7->var19, v10->var1, 4 * *(this + 5));
    goto LABEL_191;
  }

  if (!a4->useDigitalFlash)
  {
    goto LABEL_21;
  }

  v14 = -1.0;
  if (a7->var23 > 1.0 && !a4->useGlobalCCM)
  {
    v15 = fmaxf((a7->var26 * -5.0) + 1.03, 0.0);
    v14 = fminf(v15 * v15, 1.0);
  }

LABEL_7:
  v16 = this + 63408;
  v17 = (this + 37992);
  if (*(this + 63410))
  {
    v18 = 0;
  }

  else
  {
    v18 = (this + 37992);
  }

  *v18 = 0;
  v19 = *(this + 6);
  v20 = v19;
  if (v19)
  {
    var9 = a7->var9;
    v22 = (v18 + 1);
    v23 = (v19 + 1) - 1;
    v24 = 0.0;
    do
    {
      v25 = *var9++;
      v24 = v24 + v25;
      *v22++ = v24;
      --v23;
    }

    while (v23);
  }

  v26 = (this + 1064);
  var39 = a7->var39;
  if (var39 <= 0.0)
  {
    v31 = *v26;
  }

  else if (*&v18[v19 - 1] <= var39)
  {
    v31 = v26[v19 - 1];
  }

  else
  {
    v28 = 0;
    do
    {
      v29 = v28;
      v30 = *&v18[v28++];
    }

    while (v29 < v19 && v30 < var39);
    v31 = 0.0;
    if (v28 != 1)
    {
      v32 = (v28 - 2);
      v33 = *&v18[v32];
      v34 = (this + 4 * v28);
      if (vabds_f32(v30, v33) >= 0.00000011921)
      {
        v31 = v26[v32] + (((var39 - v33) / (v30 - v33)) * (v34[265] - v26[v32]));
      }

      else
      {
        v31 = v34[265];
      }
    }
  }

  var38 = a7->var38;
  *(this + 63410) = 1;
  if (v19 >= 1)
  {
    v36 = 0;
    v37 = fminf(v31 * v19, var38);
    v38 = floorf(v37);
    v39 = ceilf(v37);
    v40 = (this + 37992);
    do
    {
      v41 = v36;
      v42 = 1.0;
      if (v38 <= v36)
      {
        v42 = 0.0;
        if (v39 > v41)
        {
          v42 = v37 - v41;
        }
      }

      if (v40)
      {
        *v40++ = v42;
      }

      ++v36;
    }

    while (v20 != v36);
  }

  p_var22 = &a7->var22;
  if (*(this + 63411))
  {
    v43 = 0;
  }

  else
  {
    *(this + 63411) = 1;
    v43 = this + 46464;
  }

  v218 = (this + 29520);
  v222 = v14;
  if (v20)
  {
    v44 = a4;
    memset_pattern16(v43, &unk_1C9332D90, 4 * v20);
    a4 = v44;
  }

  if (*(this + 63409))
  {
    v45 = 0;
  }

  else
  {
    *(this + 63409) = 1;
    v45 = v218;
  }

  v220 = a4;
  v221 = v45;
  var1 = a6->var1;
  LTMComputeV2::LTMCompute::allocateTone(this, v45, 0, a3->thumbnailHistEV0, a5, a6, a7, v43, a7->var2, a7->var3, 1.0, (this + 37992), a7->var9, flt_1C93341A8, a6->var1, 1, a4->gammaCurve == 1);
  *(this + 63411) = 0;
  v46 = *p_var22;
  v47 = *(this + 6);
  v48 = *(this + 266);
  if (v48 >= 0.3)
  {
    v52 = a6->var0[0];
  }

  else if (v26[v47 - 1] <= 0.3)
  {
    v52 = a6->var0[v47 - 1];
  }

  else
  {
    v49 = 0;
    do
    {
      v50 = v49;
      v51 = v26[v49++];
    }

    while (v50 < v47 && v51 < 0.3);
    v52 = 0.0;
    if (v49 != 1)
    {
      v53 = (v49 - 2);
      v54 = v26[v53];
      v55 = &a6->var0[v49];
      if (vabds_f32(v51, v54) >= 0.00000011921)
      {
        v52 = a6->var0[v53] + (((0.3 - v54) / (v51 - v54)) * (*(v55 - 1) - a6->var0[v53]));
      }

      else
      {
        v52 = *(v55 - 1);
      }
    }
  }

  globalLUT = a8->globalLUT;
  v57 = (this + 46464);
  v219 = v47;
  v58 = fminf((v47 * 0.18) / *p_var22, 1.0);
  var2 = a6->var2;
  v60 = v52 * var2;
  var8 = a7->var8;
  v62 = a7->var8[0];
  v63 = 1.0;
  if (v60 < v62)
  {
    v64 = v60 / fmaxf(v62, 0.00000011921);
    v65 = (v58 * v60) / var2;
    if (v48 >= v65)
    {
      v69 = *var1;
    }

    else if (v26[v47 - 1] <= v65)
    {
      v69 = var1[v47 - 1];
    }

    else
    {
      v66 = 0;
      do
      {
        v67 = v66;
        v68 = v26[v66++];
      }

      while (v67 < v47 && v68 < v65);
      v69 = 0.0;
      if (v66 != 1)
      {
        v70 = (v66 - 2);
        v71 = v26[v70];
        v72 = &a6->var0[v66];
        if (vabds_f32(v68, v71) >= 0.00000011921)
        {
          v69 = var1[v70] + (((v65 - v71) / (v68 - v71)) * (v72[256] - var1[v70]));
        }

        else
        {
          v69 = v72[256];
        }
      }
    }

    v73 = (v58 * (v60 * v64)) / var2;
    if (v48 >= v73)
    {
      v77 = *var1;
    }

    else if (v26[v47 - 1] <= v73)
    {
      v77 = var1[v47 - 1];
    }

    else
    {
      v74 = 0;
      do
      {
        v75 = v74;
        v76 = v26[v74++];
      }

      while (v75 < v47 && v76 < v73);
      v77 = 0.0;
      if (v74 != 1)
      {
        v78 = (v74 - 2);
        v79 = v26[v78];
        v80 = &a6->var0[v74];
        if (vabds_f32(v76, v79) >= 0.00000011921)
        {
          v77 = var1[v78] + (((v73 - v79) / (v76 - v79)) * (v80[256] - var1[v78]));
        }

        else
        {
          v77 = v80[256];
        }
      }
    }

    v81 = fminf(v77, 1.0);
    v82 = logf(v69);
    v63 = fminf(fmaxf(v82 / logf(v81), 0.5), 1.0);
  }

  v83 = 0;
  v84 = (fmaxf(v63, 0.9) * 1.2) * (((fminf(fmaxf(v46 + -4.0, 0.0) * 0.25, 1.0) * -0.2) * *(this + 5241)) + 1.0);
  do
  {
    globalLUT[v83] = powf(*(&LTMComputeV2::LTMCompute::globalCurveInputs + v83 * 4), v84);
    ++v83;
  }

  while (v83 != 257);
  *(this + 63410) = 1;
  *v17 = 0.0;
  v86 = *(this + 5);
  if (v86 >= 2)
  {
    v87 = (this + 37996);
    v88 = v86 - 1;
    v89 = 0.0;
    v90 = a7->var8;
    do
    {
      v91 = *v90++;
      v89 = v89 + v91;
      *v87++ = v89;
      --v88;
    }

    while (v88);
  }

  v92 = 1.0 / fmaxf(v17[v219], 0.00000011921);
  if ((v86 & 0xFFFFFFF8) < 1)
  {
    LODWORD(v93) = 0;
  }

  else
  {
    v93 = 0;
    v94 = (this + 38008);
    do
    {
      v95 = vmulq_n_f32(*v94, v92);
      v94[-1] = vmulq_n_f32(v94[-1], v92);
      *v94 = v95;
      v93 += 8;
      v94 += 2;
    }

    while (v93 < (v86 & 0xFFFFFFF8));
  }

  if (v93 < v86)
  {
    v96 = v86 - v93;
    v97 = (this + 4 * v93 + 37992);
    do
    {
      *v97 = v92 * *v97;
      ++v97;
      --v96;
    }

    while (v96);
  }

  if (*(this + 63411))
  {
    v57 = 0;
  }

  else
  {
    *(this + 63411) = 1;
  }

  LTMComputeV2::LTMCompute::interpolate(v85, this + 266, var1, *(this + 5), this + 9498, v57, *(this + 5));
  if (*v16)
  {
    v99 = 0;
  }

  else
  {
    *v16 = 1;
    v99 = (this + 21048);
  }

  LTMComputeV2::LTMCompute::interpolate(v98, globalLUT, &LTMComputeV2::LTMCompute::globalCurveInputs, 257, v57, v99, *(this + 5));
  LTMComputeV2::LTMCompute::interpolate(v100, this + 266, a6->var0, *(this + 5), v99, v57, *(this + 5));
  *v16 = 1;
  v102 = (*(this + 5) - 1);
  if (*(this + 5) != 1)
  {
    v103 = (this + 21048);
    v104 = (this + 37996);
    v105 = *v17;
    v106 = v57 + 1;
    do
    {
      v107 = *v104++;
      *v103++ = fmaxf(*v106 - *(v106 - 1), 0.00000011921) / fmaxf(v107 - v105, 0.00000011921);
      ++v106;
      v105 = v107;
      --v102;
    }

    while (v102);
  }

  v108 = *(this + 6);
  v10 = a6;
  if ((v108 & 0xFFFFFFF0) < 1)
  {
    LODWORD(v109) = 0;
  }

  else
  {
    v109 = 0;
    v110 = (this + 21096);
    v111 = &a7->var8[12];
    do
    {
      v112 = vmulq_f32(v111[-2], v110[-2]);
      v113 = vmulq_f32(v111[-1], v110[-1]);
      v114 = vmulq_f32(*v111, *v110);
      v111[-3] = vmulq_f32(v111[-3], v110[-3]);
      v111[-2] = v112;
      v111[-1] = v113;
      *v111 = v114;
      v109 += 16;
      v110 += 4;
      v111 += 4;
    }

    while (v109 < (v108 & 0xFFFFFFF0));
  }

  if (v109 < v108)
  {
    v115 = v108 - v109;
    v116 = (this + 4 * v109 + 21048);
    v117 = &a7->var8[v109];
    do
    {
      v118 = *v116++;
      *v117 = *v117 * v118;
      ++v117;
      --v115;
    }

    while (v115);
  }

  v119 = *(this + 6);
  if ((v119 & 0xFFFFFFF0) < 1)
  {
    LODWORD(v120) = 0;
  }

  else
  {
    v120 = 0;
    v121 = (this + 21096);
    v122 = &a7->var10[12];
    do
    {
      v123 = vmulq_f32(v122[-2], v121[-2]);
      v124 = vmulq_f32(v122[-1], v121[-1]);
      v125 = vmulq_f32(*v122, *v121);
      v122[-3] = vmulq_f32(v122[-3], v121[-3]);
      v122[-2] = v123;
      v122[-1] = v124;
      *v122 = v125;
      v120 += 16;
      v121 += 4;
      v122 += 4;
    }

    while (v120 < (v119 & 0xFFFFFFF0));
  }

  if (v120 < v119)
  {
    v126 = v119 - v120;
    v127 = (this + 4 * v120 + 21048);
    v128 = &a7->var10[v120];
    do
    {
      v129 = *v127++;
      *v128 = *v128 * v129;
      ++v128;
      --v126;
    }

    while (v126);
  }

  if (v220->CBVer)
  {
    v130 = *(this + 6);
    if ((v130 & 0xFFFFFFF0) < 1)
    {
      LODWORD(v131) = 0;
    }

    else
    {
      v131 = 0;
      v132 = (this + 21096);
      v133 = &a7->var14[12];
      do
      {
        v134 = vmulq_f32(v133[-2], v132[-2]);
        v135 = vmulq_f32(v133[-1], v132[-1]);
        v136 = vmulq_f32(*v133, *v132);
        v133[-3] = vmulq_f32(v133[-3], v132[-3]);
        v133[-2] = v134;
        v133[-1] = v135;
        *v133 = v136;
        v131 += 16;
        v132 += 4;
        v133 += 4;
      }

      while (v131 < (v130 & 0xFFFFFFF0));
    }

    if (v131 < v130)
    {
      v137 = v130 - v131;
      v138 = (this + 4 * v131 + 21048);
      v139 = &a7->var14[v131];
      do
      {
        v140 = *v138++;
        *v139 = *v139 * v140;
        ++v139;
        --v137;
      }

      while (v137);
    }

    v141 = *(this + 6);
    if ((v141 & 0xFFFFFFF0) < 1)
    {
      LODWORD(v142) = 0;
    }

    else
    {
      v142 = 0;
      v143 = (this + 21096);
      v144 = &a7->var15[12];
      do
      {
        v145 = vmulq_f32(v144[-2], v143[-2]);
        v146 = vmulq_f32(v144[-1], v143[-1]);
        v147 = vmulq_f32(*v144, *v143);
        v144[-3] = vmulq_f32(v144[-3], v143[-3]);
        v144[-2] = v145;
        v144[-1] = v146;
        *v144 = v147;
        v142 += 16;
        v143 += 4;
        v144 += 4;
      }

      while (v142 < (v141 & 0xFFFFFFF0));
    }

    if (v142 < v141)
    {
      v148 = v141 - v142;
      v149 = (this + 4 * v142 + 21048);
      v150 = &a7->var15[v142];
      do
      {
        v151 = *v149++;
        *v150 = *v150 * v151;
        ++v150;
        --v148;
      }

      while (v148);
    }
  }

  *v16 = 0;
  *v17 = 0.0;
  v152 = *(this + 5);
  if (v152 >= 2)
  {
    v153 = (this + 37996);
    v154 = v152 - 1;
    v155 = 0.0;
    do
    {
      v156 = *var8++;
      v155 = v155 + v156;
      *v153++ = v155;
      --v154;
    }

    while (v154);
  }

  v157 = 1.0 / v17[(v152 - 1)];
  if ((v152 & 0xFFFFFFF8) < 1)
  {
    LODWORD(v158) = 0;
  }

  else
  {
    v158 = 0;
    v159 = (this + 38008);
    do
    {
      v160 = vmulq_n_f32(*v159, v157);
      v159[-1] = vmulq_n_f32(v159[-1], v157);
      *v159 = v160;
      v158 += 8;
      v159 += 2;
    }

    while (v158 < (v152 & 0xFFFFFFF8));
  }

  if (v158 < v152)
  {
    v161 = v152 - v158;
    v162 = (this + 4 * v158 + 37992);
    do
    {
      *v162 = v157 * *v162;
      ++v162;
      --v161;
    }

    while (v161);
  }

  LTMComputeV2::LTMCompute::interpolate(v101, this + 266, var1, *(this + 5), this + 9498, v57, *(this + 5));
  *(this + 63410) = 0;
  v165 = *(this + 5);
  v164 = *(this + 6);
  v166 = v58 / v164;
  v167 = *(this + 266);
  if (v167 >= v166)
  {
    v172 = *v57;
    v168 = v221;
  }

  else
  {
    v168 = v221;
    if (v26[v165 - 1] <= v166)
    {
      v172 = v57[v165 - 1];
    }

    else
    {
      v169 = 0;
      do
      {
        v170 = v169;
        v171 = v26[v169++];
      }

      while (v170 < v165 && v171 < v166);
      v172 = 0.0;
      if (v169 != 1)
      {
        v173 = (v169 - 2);
        v174 = v26[v173];
        v175 = &v57[v169];
        if (vabds_f32(v171, v174) >= 0.00000011921)
        {
          v172 = v57[v173] + (((v166 - v174) / (v171 - v174)) * (*(v175 - 1) - v57[v173]));
        }

        else
        {
          v172 = *(v175 - 1);
        }
      }
    }
  }

  LODWORD(v17) = vcvtms_s32_f32(fminf(v172, 0.5) * 256.0);
  v176 = vcvts_n_f32_s32(v17, 8uLL);
  v177 = *(this + 266);
  if (*v57 < v176)
  {
    if (v57[v164 - 1] <= v176)
    {
      v177 = v26[v164 - 1];
    }

    else
    {
      v178 = 0;
      do
      {
        v179 = v178;
        v180 = v57[v178++];
      }

      while (v179 < v164 && v180 < v176);
      v177 = 0.0;
      if (v178 != 1)
      {
        v181 = (v178 - 2);
        v182 = v57[v181];
        v183 = (this + 4 * v178);
        if (vabds_f32(v180, v182) >= 0.00000011921)
        {
          v177 = v26[v181] + (((v176 - v182) / (v180 - v182)) * (v183[265] - v26[v181]));
        }

        else
        {
          v177 = v183[265];
        }
      }
    }
  }

  if (v176 <= 0.0)
  {
    v187 = *globalLUT;
  }

  else if (v176 >= 1.0)
  {
    v187 = a8->globalLUT[256];
  }

  else
  {
    v184 = 0;
    do
    {
      v185 = v184;
      v186 = *(&LTMComputeV2::LTMCompute::globalCurveInputs + v184++);
    }

    while (v185 <= 0x100 && v186 < v176);
    v187 = 0.0;
    if (v184 != 1)
    {
      v188 = (v184 - 2);
      v189 = *(&LTMComputeV2::LTMCompute::globalCurveInputs + v188);
      if (vabds_f32(v186, v189) >= 0.00000011921)
      {
        v187 = globalLUT[v188] + (((v176 - v189) / (v186 - v189)) * (a8->averageLTC[v184 + 256] - globalLUT[v188]));
      }

      else
      {
        v187 = a8->averageLTC[v184 + 256];
      }
    }
  }

  v190 = *p_var22;
  v191 = v177 * *p_var22;
  if (v167 >= v191)
  {
    v195 = *v168;
  }

  else if (v26[v164 - 1] <= v191)
  {
    v195 = v168[v164 - 1];
  }

  else
  {
    v192 = 0;
    do
    {
      v193 = v192;
      v194 = v26[v192++];
    }

    while (v193 < v164 && v194 < v191);
    v195 = 0.0;
    if (v192 != 1)
    {
      v196 = (v192 - 2);
      v197 = v26[v196];
      if (vabds_f32(v194, v197) >= 0.00000011921)
      {
        v195 = v168[v196] + (((v191 - v197) / (v194 - v197)) * (v168[v192 - 1] - v168[v196]));
      }

      else
      {
        v195 = v168[v192 - 1];
      }
    }
  }

  v198 = v168;
  LTMComputeV2::LTMCompute::interpolate(v163, v57, this + 266, v164, &LTMComputeV2::LTMCompute::globalCurveInputs, v227, v17);
  result = LTMComputeV2::LTMCompute::interpolate(v199, this + 266, v198, v165, v227, globalLUT, v17, v190);
  v201 = v17 & 0xFFFFFFF8;
  v202 = fmaxf(v187, 0.00000011921) / fmaxf(v195, 0.00000011921);
  if (v201 < 1)
  {
    LODWORD(v203) = 0;
    v8 = a8;
    v205 = v222;
  }

  else
  {
    v203 = 0;
    v204 = &a8->globalLUT[4];
    v8 = a8;
    v205 = v222;
    do
    {
      v206 = vmulq_n_f32(*v204, v202);
      v204[-1] = vmulq_n_f32(v204[-1], v202);
      *v204 = v206;
      v203 += 8;
      v204 += 2;
    }

    while (v203 < v201);
  }

  if (v203 < v17)
  {
    v207 = v17 - v203;
    v208 = &v8->globalLUT[v203];
    do
    {
      *v208 = v202 * *v208;
      ++v208;
      --v207;
    }

    while (v207);
  }

  *(this + 63409) = 0;
  *(this + 63411) = 0;
  if (v205 >= 0.0)
  {
    *(this + 63409) = 1;
    *(this + 63411) = 1;
    v209 = 1.0 - v205;
    v210 = -4;
    v211 = &LTMComputeV2::LTMCompute::globalCurveInputs;
    v212 = &LTMComputeV2::LTMCompute::liftedGTC;
    v213 = (this + 29520);
    do
    {
      v214 = *v212++;
      v215 = v214;
      v216 = *v211++;
      *v213++ = vaddq_f32(vmulq_n_f32(v215, v205), vmulq_n_f32(v216, v209));
      v210 += 4;
    }

    while (v210 < 0xFC);
    v218[256] = v205 + v209;
    LTMComputeV2::LTMCompute::interpolate(result, this + 7380, &LTMComputeV2::LTMCompute::globalCurveInputs, 257, var1, a7->var19, *(this + 5));
    LTMComputeV2::LTMCompute::interpolate(v217, &LTMComputeV2::LTMCompute::globalCurveInputs, this + 7380, 257, globalLUT, this + 11616, 257);
    result = memcpy(globalLUT, this + 46464, 0x404uLL);
    v205 = v222;
    *(this + 63409) = 0;
    *(this + 63411) = 0;
    v10 = a6;
  }

  if (v205 < 0.0)
  {
    goto LABEL_190;
  }

LABEL_191:
  *(v8 + 222240) |= 8u;
  return result;
}

void LTMComputeV2::LTMCompute::allocateTone(LTMComputeV2::LTMCompute *this, float *a2, float *a3, float *a4, const sLtmTuningParams *a5, const sLtmDisplayParams *a6, const sLtmFrameParams *a7, const float *a8, float a9, float a10, float a11, float32x4_t *a12, float *a13, float *a14, float *a15, BOOL a16, BOOL a17)
{
  v310 = a6;
  v307 = a2;
  v23 = MEMORY[0x1EEE9AC00](this);
  v25 = (&v301 - ((v24 + 15) & 0x7FFFFFFF0));
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = (&v301 - ((v27 + 15) & 0x7FFFFFFF0));
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = (&v301 - v30);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v302 = (&v301 - v33);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v309 = (&v301 - v35);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v304 = (&v301 - v37);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v312 = (&v301 - v39);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = (&v301 - v41);
  MEMORY[0x1EEE9AC00](v40);
  v308 = (&v301 - v46);
  v311 = v47;
  v48.i32[0] = *(v47 + 440);
  if ((v43 & 0xFFFFFFFC) < 1)
  {
    LODWORD(v49) = 0;
  }

  else
  {
    v49 = 0;
    v50 = vdupq_lane_s32(v48, 0);
    v51 = a4;
    v52 = v31;
    do
    {
      v53 = *v51;
      v51 += 4;
      *v52++ = vminq_f32(v50, v53);
      v49 += 4;
    }

    while (v49 < (v43 & 0xFFFFFFFC));
  }

  if (v49 < v43)
  {
    v54 = v43 - v49;
    v55 = &v31[v49];
    v56 = &a4[v49];
    do
    {
      v57 = *v56++;
      v58 = v57;
      if (v57 > *v48.i32)
      {
        v58 = *v48.i32;
      }

      *v55++ = v58;
      --v54;
    }

    while (v54);
  }

  v59 = *(this + 16);
  v315 = v45;
  *&v313 = v44;
  if (v59)
  {
    v60 = 16;
  }

  else
  {
    v60 = *(v44 + 12);
  }

  LTMComputeV2::LTMCompute::smoothHistogramMiddle(this, v31, v25, v43, a14, v60, 1);
  v61 = *(this + 6);
  v62 = v61;
  if ((v61 & 0xFFFFFFF8) < 1)
  {
    LODWORD(v63) = 0;
  }

  else
  {
    v63 = 0;
    v64 = (v25 + 4);
    do
    {
      v65 = vmulq_n_f32(*v64, v62);
      v64[-1] = vmulq_n_f32(v64[-1], v62);
      *v64 = v65;
      v63 += 8;
      v64 += 2;
    }

    while (v63 < (v61 & 0xFFFFFFF8));
  }

  if (v63 < v61)
  {
    v66 = v61 - v63;
    v67 = &v25[v63];
    do
    {
      *v67 = *v67 * v62;
      ++v67;
      --v66;
    }

    while (v66);
  }

  v68 = v61 & 0xFFFFFFFC;
  if ((v61 & 0xFFFFFFFC) < 1)
  {
    LODWORD(v69) = 0;
  }

  else
  {
    v69 = 0;
    __asm { FMOV            V0.4S, #1.0 }

    v75 = v25;
    do
    {
      *v75 = vminq_f32(*v75, _Q0);
      ++v75;
      v69 += 4;
    }

    while (v69 < v68);
  }

  if (v69 < v61)
  {
    v76 = v61 - v69;
    v77 = &v25[v69];
    do
    {
      v78 = *v77;
      if (*v77 > 1.0)
      {
        v78 = 1.0;
      }

      *v77++ = v78;
      --v76;
    }

    while (v76);
  }

  v305 = a3;
  v306 = v28;
  if (v68 < 1)
  {
    LODWORD(v79) = 0;
  }

  else
  {
    v79 = 0;
    v80 = vdupq_n_s32(0x2EDBE6FFu);
    v81 = v25;
    do
    {
      *v81 = vmaxq_f32(*v81, v80);
      ++v81;
      v79 += 4;
    }

    while (v79 < v68);
  }

  if (v79 < v61)
  {
    v82 = v61 - v79;
    v83 = &v25[v79];
    do
    {
      v84 = *v83;
      if (*v83 < 1.0e-10)
      {
        v84 = 1.0e-10;
      }

      *v83++ = v84;
      --v82;
    }

    while (v82);
  }

  v314 = a13;
  LTMComputeV2::LTMCompute::smoothHistogramMiddle(this, v25, v31, v61, a14, v60, !a17);
  *&v85 = v310->var2;
  LODWORD(v86) = *(v313 + 112);
  v87 = *(this + 6);
  v303 = a10;
  if (*&v86 >= 1.0)
  {
    v313 = v85;
  }

  else
  {
    v88 = v31[(v87 - 1)];
    *&v86 = fminf(*&v85 * (((*&v86 * v88) + 1.0) - v88), v311[111]);
    v313 = v86;
  }

  v89 = v315;
  v90 = (this + 21048);
  v91 = v87;
  if (!v87)
  {
    goto LABEL_60;
  }

  v92 = 0;
  v93 = fminf(v91 / fmaxf(a11, 0.00000011921), v91);
  v94 = v311[117];
  v95 = v311[118];
  do
  {
    v96 = fminf(fmaxf((v92 + 1.0) - v93, 0.0) / (v93 + v93), 1.0);
    v31[v92] = powf(v31[v92], (v96 * v95) + (v94 * (1.0 - v96)));
    ++v92;
  }

  while (v87 != v92);
  v89 = v315;
  v91 = v87;
  if (v87 >= 1)
  {
    v97 = 0;
    v98 = floorf(v93);
    v99 = ceilf(v93);
    v100 = v42;
    do
    {
      v101 = v97;
      v102 = 1.0;
      if (v98 <= v97)
      {
        v102 = 0.0;
        if (v99 > v101)
        {
          v102 = v93 - v101;
        }
      }

      if (v100)
      {
        *v100++ = v102;
      }

      ++v97;
    }

    while (v87 != v97);
    v103 = v305;
    v104 = v303;
    if (!a17)
    {
      v110 = 1;
      v120 = v306;
      goto LABEL_75;
    }

    v105 = 0.0;
    v106 = a4;
    v107 = v87;
    do
    {
      v108 = *v106++;
      v105 = v105 + v108;
      --v107;
    }

    while (v107);
    v109 = v105 * 0.18;
    v110 = 1;
  }

  else
  {
LABEL_60:
    if (!a17)
    {
      v120 = v306;
      v124 = v307;
      v103 = v305;
      if (v303 < 1.0)
      {
        goto LABEL_84;
      }

LABEL_88:
      bzero(v312, 4 * v87);
      if (!a12)
      {
        goto LABEL_146;
      }

LABEL_89:
      v140 = v87 & 0xFFFFFFFC;
      v141 = v315;
      v142 = v312;
      v143 = *&v313;
      if (v140 < 1)
      {
        LODWORD(v144) = 0;
      }

      else
      {
        v144 = 0;
        v145 = v31;
        v146 = a12;
        do
        {
          v147 = *v146;
          v146 += 4;
          *v145 = vmaxq_f32(*v145, v147);
          ++v145;
          v144 += 4;
        }

        while (v144 < v140);
      }

      if (v144 < v87)
      {
        v148 = v87 - v144;
        v149 = &a12->f32[v144];
        v150 = &v31[v144];
        do
        {
          v151 = *v149++;
          v152 = v151;
          if (*v150 > v151)
          {
            v152 = *v150;
          }

          *v150++ = v152;
          --v148;
        }

        while (v148);
      }

      v153 = 0.0;
      v154 = 0.0;
      if (v87)
      {
        v155 = a12;
        v156 = v314;
        v157 = v87;
        do
        {
          v158 = *v155++;
          v159 = v158;
          v160 = *v156++;
          v154 = v154 + (v159 * v160);
          --v157;
        }

        while (v157);
      }

      if (fabsf(v154) >= 0.00000011921)
      {
        v153 = (fminf(v143 * 0.5, v154) / v154) * v311[123];
      }

      if (*(this + 63408))
      {
        v161 = 0;
      }

      else
      {
        *(this + 63408) = 1;
        v161 = (this + 21048);
      }

      v162 = v87 & 0xFFFFFFF8;
      if (v162 < 1)
      {
        LODWORD(v163) = 0;
      }

      else
      {
        v163 = 0;
        v164 = v161 + 1;
        v165 = a12 + 1;
        do
        {
          v166 = vaddq_f32(vmulq_n_f32(*v165, v153), 0);
          v164[-1] = vaddq_f32(vmulq_n_f32(v165[-1], v153), 0);
          *v164 = v166;
          v163 += 8;
          v164 += 2;
          v165 += 2;
        }

        while (v163 < v162);
        v142 = v312;
      }

      if (v163 < v87)
      {
        v167 = v87 - v163;
        v168 = &v161->f32[v163];
        v169 = &a12->f32[v163];
        do
        {
          v170 = *v169++;
          *v168++ = (v170 * v153) + 0.0;
          --v167;
        }

        while (v167);
      }

      v87 = *(this + 6);
      if ((v87 & 0xFFFFFFFC) < 1)
      {
        LODWORD(v171) = 0;
        v174 = v304;
      }

      else
      {
        v171 = 0;
        v172 = v161;
        v173 = v142;
        v174 = v304;
        do
        {
          v175 = *v172++;
          *v173 = vmaxq_f32(v175, *v173);
          ++v173;
          v171 += 4;
        }

        while (v171 < (v87 & 0xFFFFFFFC));
      }

      if (v171 < v87)
      {
        v176 = v87 - v171;
        v177 = &v142[v171];
        v178 = &v161->f32[v171];
        do
        {
          v179 = *v178++;
          v180 = v179;
          if (v179 <= *v177)
          {
            v180 = *v177;
          }

          *v177++ = v180;
          --v176;
        }

        while (v176);
      }

      *(this + 63408) = 0;
      if (!v87)
      {
        goto LABEL_147;
      }

LABEL_126:
      v181 = v87;
      v182 = 0.0;
      v183 = v142;
      v184 = v314;
      do
      {
        v185 = *v183++;
        v186 = v185;
        v187 = *v184++;
        v182 = v182 + (v186 * v187);
        --v181;
      }

      while (v181);
      goto LABEL_148;
    }

    v110 = 0;
    v109 = 0.0;
    v103 = v305;
    v104 = v303;
  }

  v111 = 0;
  v112 = 0.0;
  v113 = -1;
  do
  {
    v114 = v112;
    v115 = a4[v111];
    ++v113;
    if (v111 >= v87)
    {
      break;
    }

    v112 = v112 + v115;
    ++v111;
  }

  while ((v114 + v115) < v109);
  v116 = ((v109 - v114) / v115) + v113;
  if (v87 == v113)
  {
    v117 = v87 + -1.0;
  }

  else
  {
    v117 = v116;
  }

  v118 = fminf(v117, v311[122]);
  v119 = ceilf(v118);
  v120 = v306;
  if (v119 > 0.0)
  {
    v121 = 0;
    v122 = fminf(a4[vcvtms_s32_f32(v117)], 1.0);
    do
    {
      v42[v121] = (v122 * a12->f32[v121]) + (v89->f32[v121] * (1.0 - v122));
      ++v121;
    }

    while (v119 > v121);
  }

  v123 = fmaxf(v119 + -1.0, 0.0);
  v42[v123] = ((1.0 - ((v118 + 1.0) - v119)) * v89->f32[v123]) + (v42[v123] * ((v118 + 1.0) - v119));
LABEL_75:
  v124 = v307;
  if (v104 >= 1.0)
  {
    goto LABEL_88;
  }

  if (v110)
  {
    v125 = 0;
    v126 = floorf(v91 * v104);
    v127 = ceilf(v91 * v104);
    v128 = v308;
    do
    {
      v129 = v125;
      v130 = 1.0;
      if (v126 <= v125)
      {
        v130 = 0.0;
        if (v127 > v129)
        {
          v130 = (v91 * v104) - v129;
        }
      }

      if (v128)
      {
        *v128++ = 1.0 - v130;
      }

      ++v125;
    }

    while (v87 != v125);
  }

LABEL_84:
  v131 = v87 & 0xFFFFFFFC;
  if ((v87 & 0xFFFFFFFC) < 1)
  {
    LODWORD(v132) = 0;
    v136 = *&v313;
  }

  else
  {
    v132 = 0;
    v133 = v308;
    v134 = v309;
    v135 = v89;
    v136 = *&v313;
    do
    {
      v137 = *v133;
      v133 += 4;
      v138 = v137;
      v139 = *v135++;
      *v134++ = vminq_f32(v138, v139);
      v132 += 4;
    }

    while (v132 < v131);
  }

  if (v132 < v87)
  {
    v188 = v87 - v132;
    v189 = &v309->f32[v132];
    v190 = &v89->f32[v132];
    v191 = &v308[v132];
    do
    {
      v192 = *v191++;
      v193 = v192;
      v194 = *v190++;
      v195 = v194;
      if (v193 >= v194)
      {
        v193 = v195;
      }

      *v189++ = v193;
      --v188;
    }

    while (v188);
  }

  if (v131 < 1)
  {
    LODWORD(v196) = 0;
    v201 = v312;
    v199 = v302;
  }

  else
  {
    v196 = 0;
    v197 = v31;
    v198 = v309;
    v199 = v302;
    v200 = v302;
    v201 = v312;
    do
    {
      v202 = *v197++;
      v203 = v202;
      v204 = *v198;
      v198 += 4;
      *v200++ = vminq_f32(v203, v204);
      v196 += 4;
    }

    while (v196 < v131);
  }

  if (v196 < v87)
  {
    v205 = v87 - v196;
    v206 = &v199[v196];
    v207 = &v309->f32[v196];
    v208 = &v31[v196];
    do
    {
      v209 = *v208++;
      v210 = v209;
      v211 = *v207++;
      v212 = v211;
      if (v210 >= v211)
      {
        v210 = v212;
      }

      *v206++ = v210;
      --v205;
    }

    while (v205);
  }

  LTMComputeV2::LTMCompute::scaleToFitRange(this, v201, v309->f32, v199, v314, fmaxf(v136 - a9, 0.0), v308, 0.0, 0);
  LODWORD(v87) = *(this + 6);
  if (a12)
  {
    goto LABEL_89;
  }

LABEL_146:
  v174 = v304;
  v141 = v315;
  v142 = v312;
  v143 = *&v313;
  if (v87)
  {
    goto LABEL_126;
  }

LABEL_147:
  v182 = 0.0;
LABEL_148:
  if (v182 > v143)
  {
    v213 = v87 & 0xFFFFFFF8;
    v214 = v143 / v182;
    if (v213 < 1)
    {
      LODWORD(v215) = 0;
    }

    else
    {
      v215 = 0;
      v216 = (v142 + 4);
      do
      {
        v217 = vmulq_n_f32(*v216, v214);
        v216[-1] = vmulq_n_f32(v216[-1], v214);
        *v216 = v217;
        v215 += 8;
        v216 += 2;
      }

      while (v215 < v213);
    }

    v182 = v143;
    if (v215 < v87)
    {
      v218 = v87 - v215;
      v219 = &v142[v215];
      do
      {
        *v219 = v214 * *v219;
        ++v219;
        --v218;
      }

      while (v218);
      v182 = v143;
    }
  }

  v220 = v314;
  v221 = LTMComputeV2::LTMCompute::scaleToFitRange(this, v174, v141, v31, v314, v143, v42, v182, v142);
  v222 = *(this + 6);
  if ((v222 & 0xFFFFFFF0) < 1)
  {
    LODWORD(v223) = 0;
  }

  else
  {
    v223 = 0;
    v224 = v174 + 2;
    v225 = (v220 + 8);
    v226 = (v25 + 8);
    do
    {
      v227 = v224[-2];
      v228 = v224[-1];
      v229 = *v224;
      v230 = v224[1];
      v224 += 4;
      v231 = v225[-2];
      v232 = v225[-1];
      v233 = *v225;
      v234 = v225[1];
      v225 += 4;
      v226[-2] = vmulq_f32(v227, v231);
      v226[-1] = vmulq_f32(v228, v232);
      v223 += 16;
      *v226 = vmulq_f32(v229, v233);
      v226[1] = vmulq_f32(v230, v234);
      v226 += 4;
    }

    while (v223 < (v222 & 0xFFFFFFF0));
  }

  v235 = v313;
  if (v223 < v222)
  {
    v236 = v222 - v223;
    v237 = &v25[v223];
    v238 = &v220[v223];
    v239 = &v174->f32[v223];
    do
    {
      v240 = *v239++;
      v241 = v240;
      v242 = *v238++;
      *v237++ = v241 * v242;
      --v236;
    }

    while (v236);
  }

  *v120 = 0.0;
  v243 = *(this + 5);
  if (v243 >= 2)
  {
    v244 = (v120 + 1);
    v245 = v243 - 1;
    v246 = 0.0;
    do
    {
      v247 = *v25++;
      v246 = v246 + v247;
      *v244++ = v246;
      --v245;
    }

    while (v245);
  }

  if ((v243 & 0xFFFFFFFC) < 1)
  {
    LODWORD(v248) = 0;
  }

  else
  {
    v248 = 0;
    v249 = vdupq_lane_s32(v235, 0);
    v250 = v120;
    do
    {
      *v250 = vminq_f32(v249, *v250);
      ++v250;
      v248 += 4;
    }

    while (v248 < (v243 & 0xFFFFFFFC));
  }

  if (v248 < v243)
  {
    v251 = v243 - v248;
    v252 = &v120[v248];
    do
    {
      v253 = *v252;
      if (*v252 > *v235.i32)
      {
        v253 = *v235.i32;
      }

      *v252++ = v253;
      --v251;
    }

    while (v251);
  }

  if (v103)
  {
    if (*(this + 63408))
    {
      v90 = 0;
    }

    else
    {
      *(this + 63408) = 1;
      if (v243 >= 2118)
      {
        v254 = 2118;
      }

      else
      {
        v254 = v243;
      }

      bzero(v90, 4 * v254);
    }

    v255 = (v243 - 1);
    v256 = v255 & 0xFFFFFFFC;
    if (v256 < 1)
    {
      LODWORD(v257) = 0;
    }

    else
    {
      v257 = 0;
      v258 = (v120 + 1);
      v259 = v90;
      do
      {
        *v259++ = vsubq_f32(*v258, *(v258 - 4));
        v257 += 4;
        ++v258;
      }

      while (v257 < v256);
    }

    if (v257 < v255)
    {
      v260 = v255 - v257;
      v261 = &v90->f32[v257];
      v262 = &v120[v257 + 1];
      do
      {
        *v261++ = *v262 - *(v262 - 1);
        ++v262;
        --v260;
      }

      while (v260);
    }

    v263 = (*(this + 5) - 1);
    v264 = v263 & 0xFFFFFFFC;
    if (v264 < 1)
    {
      LODWORD(v265) = 0;
    }

    else
    {
      v265 = 0;
      v266 = v220;
      v267 = v90;
      v268 = v103;
      do
      {
        v269 = *v266++;
        v270 = v269;
        v271 = *v267++;
        v272 = vrecpeq_f32(v270);
        v273 = vmulq_f32(v272, vrecpsq_f32(v270, v272));
        *v268++ = vmulq_f32(v271, vmulq_f32(vrecpsq_f32(v270, v273), v273));
        v265 += 4;
      }

      while (v265 < v264);
    }

    if (v265 < v263)
    {
      v274 = v263 - v265;
      v275 = &v103->f32[v265];
      v276 = &v220[v265];
      v277 = &v90->f32[v265];
      do
      {
        v278 = *v277++;
        v279 = v278;
        v280 = *v276++;
        *v275++ = v279 / v280;
        --v274;
      }

      while (v274);
    }

    *(this + 63408) = 0;
  }

  if (v124)
  {
    v281 = *(this + 5);
    v282 = 1.0 / v310->var2;
    if ((v281 & 0xFFFFFFF8) < 1)
    {
      LODWORD(v283) = 0;
    }

    else
    {
      v283 = 0;
      v284 = (v120 + 4);
      do
      {
        v285 = vmulq_n_f32(*v284, v282);
        v284[-1] = vmulq_n_f32(v284[-1], v282);
        *v284 = v285;
        v283 += 8;
        v284 += 2;
      }

      while (v283 < (v281 & 0xFFFFFFF8));
    }

    if (v283 < v281)
    {
      v286 = v281 - v283;
      v287 = &v120[v283];
      do
      {
        *v287 = v282 * *v287;
        ++v287;
        --v286;
      }

      while (v286);
    }

    if (a16)
    {
      LTMComputeV2::LTMCompute::interpolate(v221, this + 266, a15, v281, v120, v124, v281);
      v288 = *(this + 5);
      if ((v288 & 0xFFFFFFFC) < 1)
      {
        LODWORD(v289) = 0;
      }

      else
      {
        v289 = 0;
        __asm { FMOV            V0.4S, #1.0 }

        v291 = v124;
        do
        {
          *v291 = vminq_f32(*v291, _Q0);
          ++v291;
          v289 += 4;
        }

        while (v289 < (v288 & 0xFFFFFFFC));
      }

      if (v289 < v288)
      {
        v292 = v288 - v289;
        v293 = &v124[v289];
        do
        {
          v294 = *v293;
          if (*v293 > 1.0)
          {
            v294 = 1.0;
          }

          *v293++ = v294;
          --v292;
        }

        while (v292);
      }

      v295 = *(this + 5);
      if ((v295 & 0xFFFFFFFC) < 1)
      {
        LODWORD(v296) = 0;
      }

      else
      {
        v296 = 0;
        v297 = v124;
        do
        {
          *v297 = vmaxq_f32(*v297, 0);
          ++v297;
          v296 += 4;
        }

        while (v296 < (v295 & 0xFFFFFFFC));
      }

      if (v296 < v295)
      {
        v298 = v295 - v296;
        v299 = &v124[v296];
        do
        {
          v300 = *v299;
          if (*v299 < 0.0)
          {
            v300 = 0.0;
          }

          *v299++ = v300;
          --v298;
        }

        while (v298);
      }

      *v124 = 0.0;
    }

    else
    {
      memcpy(v124, v120, 4 * v281);
    }
  }
}

uint64_t LTMComputeV2::LTMCompute::scaleToFitRange(LTMComputeV2::LTMCompute *this, float32x4_t *a2, const float *a3, const float *a4, float *a5, float a6, const float *a7, float a8, const float *a9)
{
  v17 = (this + 21048);
  v18 = *(this + 6);
  result = MEMORY[0x1EEE9AC00](63408);
  v22 = (&v214 - v21);
  if (v23 <= 0.0)
  {
    v25 = v20;
    memcpy(&v214 - v21, a4, 4 * v18);
    result = 63408;
    LODWORD(v26) = v18;
    if (!v18)
    {
LABEL_33:
      v27 = 0.0;
      goto LABEL_34;
    }
  }

  else
  {
    if (*(this + result))
    {
      v24 = 0;
    }

    else
    {
      *(this + result) = 1;
      v24 = (this + 21048);
    }

    if ((v18 & 0xFFFFFFFC) < 1)
    {
      LODWORD(v40) = 0;
    }

    else
    {
      v40 = 0;
      v41 = a4;
      v42 = a9;
      v43 = v24;
      do
      {
        v44 = *v41;
        v41 += 4;
        v45 = v44;
        v46 = *v42;
        v42 += 4;
        *v43++ = vsubq_f32(v45, v46);
        v40 += 4;
      }

      while (v40 < (v18 & 0xFFFFFFFC));
    }

    if (v40 < v18)
    {
      v47 = v18 - v40;
      v48 = &v24->f32[v40];
      v49 = &a9[v40];
      v50 = &a4[v40];
      do
      {
        v51 = *v50++;
        v52 = v51;
        v53 = *v49++;
        *v48++ = v52 - v53;
        --v47;
      }

      while (v47);
    }

    v26 = *(this + 6);
    if ((v26 & 0xFFFFFFFC) < 1)
    {
      LODWORD(v54) = 0;
    }

    else
    {
      v54 = 0;
      v55 = v24;
      v56 = v22;
      do
      {
        v57 = *v55++;
        *v56++ = vmaxq_f32(v57, 0);
        v54 += 4;
      }

      while (v54 < (v26 & 0xFFFFFFFC));
    }

    if (v54 < v26)
    {
      v58 = v26 - v54;
      v59 = &v22->f32[v54];
      v60 = &v24->f32[v54];
      do
      {
        v61 = *v60++;
        v62 = v61;
        if (v61 < 0.0)
        {
          v62 = 0.0;
        }

        *v59++ = v62;
        --v58;
      }

      while (v58);
    }

    v25 = v20;
    *(this + result) = 0;
    if (!v26)
    {
      goto LABEL_33;
    }
  }

  v27 = 0.0;
  v28 = v22;
  v29 = a5;
  v30 = v26;
  do
  {
    v31 = *v28++;
    v32 = v31;
    v33 = *v29++;
    v27 = v27 + (v32 * v33);
    --v30;
  }

  while (v30);
  if (v27 > 0.00000011921)
  {
    v34 = (a6 - a8) / v27;
    if (v34 < 1.0)
    {
      v35 = v26 & 0xFFFFFFF8;
      if (v35 < 1)
      {
        LODWORD(v36) = 0;
      }

      else
      {
        v36 = 0;
        f32 = a2[1].f32;
        v38 = v22 + 1;
        do
        {
          v39 = vaddq_f32(vmulq_n_f32(*v38, v34), 0);
          *(f32 - 1) = vaddq_f32(vmulq_n_f32(v38[-1], v34), 0);
          *f32 = v39;
          v36 += 8;
          f32 += 8;
          v38 += 2;
        }

        while (v36 < v35);
      }

      if (v36 < v26)
      {
        v201 = v26 - v36;
        v202 = &a2->f32[v36];
        v203 = &v22->f32[v36];
        do
        {
          v204 = *v203++;
          *v202++ = (v204 * v34) + 0.0;
          --v201;
        }

        while (v201);
      }

      if (a8 > 0.0)
      {
        v205 = *(this + 6);
        if ((v205 & 0xFFFFFFFC) < 1)
        {
          LODWORD(v206) = 0;
        }

        else
        {
          v206 = 0;
          v207 = a9;
          v208 = a2;
          do
          {
            v209 = *v207;
            v207 += 4;
            *v208 = vaddq_f32(v209, *v208);
            ++v208;
            v206 += 4;
          }

          while (v206 < (v205 & 0xFFFFFFFC));
        }

        if (v206 < v205)
        {
          v210 = v205 - v206;
          v211 = &a2->f32[v206];
          v212 = &a9[v206];
          do
          {
            v213 = *v212++;
            *v211 = v213 + *v211;
            ++v211;
            --v210;
          }

          while (v210);
        }
      }

      return result;
    }
  }

LABEL_34:
  if (a8 <= 0.0)
  {
    memcpy(a2, a4, 4 * v26);
    result = 63408;
  }

  else
  {
    v63 = v26 & 0xFFFFFFFC;
    if (v63 < 1)
    {
      LODWORD(v64) = 0;
    }

    else
    {
      v64 = 0;
      v65 = a4;
      v66 = a9;
      v67 = a2;
      do
      {
        v68 = *v65;
        v65 += 4;
        v69 = v68;
        v70 = *v66;
        v66 += 4;
        *v67++ = vmaxq_f32(v69, v70);
        v64 += 4;
      }

      while (v64 < v63);
    }

    if (v64 < v26)
    {
      v71 = v26 - v64;
      v72 = &a2->f32[v64];
      v73 = &a9[v64];
      v74 = &a4[v64];
      do
      {
        v75 = *v74++;
        v76 = v75;
        v77 = *v73++;
        v78 = v77;
        if (v76 <= v77)
        {
          v76 = v78;
        }

        *v72++ = v76;
        --v71;
      }

      while (v71);
    }
  }

  if (*(this + result))
  {
    v79 = 0;
  }

  else
  {
    *(this + result) = 1;
    v79 = (this + 21048);
  }

  v80 = *(this + 6);
  if ((v80 & 0xFFFFFFFC) < 1)
  {
    LODWORD(v81) = 0;
  }

  else
  {
    v81 = 0;
    v82 = a2;
    v83 = a3;
    v84 = v79;
    do
    {
      v85 = *v82;
      v82 += 4;
      v86 = v85;
      v87 = *v83;
      v83 += 4;
      *v84++ = vmaxq_f32(v86, v87);
      v81 += 4;
    }

    while (v81 < (v80 & 0xFFFFFFFC));
  }

  if (v81 < v80)
  {
    v88 = v80 - v81;
    v89 = &v79->f32[v81];
    v90 = &a3[v81];
    v91 = &a2->f32[v81];
    do
    {
      v92 = *v91++;
      v93 = v92;
      v94 = *v90++;
      v95 = v94;
      if (v93 <= v94)
      {
        v93 = v95;
      }

      *v89++ = v93;
      --v88;
    }

    while (v88);
  }

  v96 = v27 + a8;
  v97 = *(this + 6);
  if (v97)
  {
    v98 = 0.0;
    v99 = a5;
    v100 = *(this + 6);
    do
    {
      v101 = v79->f32[0];
      v79 = (v79 + 4);
      v102 = v101;
      v103 = *v99++;
      v98 = v98 + (v102 * v103);
      --v100;
    }

    while (v100);
  }

  else
  {
    v98 = 0.0;
  }

  *(this + result) = 0;
  v104 = v98 - v96;
  if (v104 <= 0.00000011921)
  {
    goto LABEL_101;
  }

  *(this + result) = 1;
  v105 = v97 & 0xFFFFFFFC;
  if ((v97 & 0xFFFFFFFC) < 1)
  {
    LODWORD(v106) = 0;
  }

  else
  {
    v106 = 0;
    v107 = a3;
    v108 = a2;
    v109 = (this + 21048);
    do
    {
      v110 = *v107;
      v107 += 4;
      v111 = v110;
      v112 = *v108;
      v108 += 4;
      *v109++ = vsubq_f32(v111, v112);
      v106 += 4;
    }

    while (v106 < v105);
  }

  if (v106 < v97)
  {
    v113 = v97 - v106;
    v114 = (this + 4 * v106 + 21048);
    v115 = &a2->f32[v106];
    v116 = &a3[v106];
    do
    {
      v117 = *v116++;
      v118 = v117;
      v119 = *v115++;
      *v114++ = v118 - v119;
      --v113;
    }

    while (v113);
  }

  if (v105 < 1)
  {
    LODWORD(v120) = 0;
  }

  else
  {
    v120 = 0;
    v121 = (this + 21048);
    do
    {
      *v121 = vmaxq_f32(*v121, 0);
      ++v121;
      v120 += 4;
    }

    while (v120 < v105);
  }

  v122 = fminf((a6 - v96) / v104, 1.0);
  if (v120 < v97)
  {
    v123 = v97 - v120;
    v124 = (this + 4 * v120 + 21048);
    do
    {
      v125 = *v124;
      if (*v124 < 0.0)
      {
        v125 = 0.0;
      }

      *v124++ = v125;
      --v123;
    }

    while (v123);
  }

  v126 = fmaxf(v122, 0.0);
  if ((v97 & 0xFFFFFFF8) < 1)
  {
    LODWORD(v127) = 0;
  }

  else
  {
    v127 = 0;
    v128 = (this + 21064);
    do
    {
      v129 = vmulq_n_f32(*v128, v126);
      v128[-1] = vmulq_n_f32(v128[-1], v126);
      *v128 = v129;
      v127 += 8;
      v128 += 2;
    }

    while (v127 < (v97 & 0xFFFFFFF8));
  }

  if (v127 < v97)
  {
    v130 = v97 - v127;
    v131 = (this + 4 * v127 + 21048);
    do
    {
      *v131 = v126 * *v131;
      ++v131;
      --v130;
    }

    while (v130);
  }

  v132 = *(this + 6);
  if ((v132 & 0xFFFFFFFC) < 1)
  {
    LODWORD(v133) = 0;
  }

  else
  {
    v133 = 0;
    v134 = (this + 21048);
    v135 = a2;
    do
    {
      v136 = *v134++;
      *v135 = vaddq_f32(v136, *v135);
      ++v135;
      v133 += 4;
    }

    while (v133 < (v132 & 0xFFFFFFFC));
  }

  if (v133 < v132)
  {
    v137 = v132 - v133;
    v138 = &a2->f32[v133];
    v139 = (this + 4 * v133 + 21048);
    do
    {
      v140 = *v139++;
      *v138 = v140 + *v138;
      ++v138;
      --v137;
    }

    while (v137);
  }

  *(this + result) = 0;
  if (v126 >= 1.0)
  {
    v96 = v96 + (v104 * v126);
    LODWORD(v97) = *(this + 6);
LABEL_101:
    *(this + result) = 1;
    v141 = v97 & 0xFFFFFFFC;
    if (v141 < 1)
    {
      LODWORD(v142) = 0;
    }

    else
    {
      v142 = 0;
      v143 = a2;
      v144 = v25;
      v145 = (this + 21048);
      do
      {
        v146 = *v143;
        v143 += 4;
        v147 = v146;
        v148 = *v144++;
        *v145++ = vmaxq_f32(v147, v148);
        v142 += 4;
      }

      while (v142 < v141);
    }

    if (v142 < v97)
    {
      v149 = v97 - v142;
      v150 = (this + 4 * v142 + 21048);
      v151 = &v25->f32[v142];
      v152 = &a2->f32[v142];
      do
      {
        v153 = *v152++;
        v154 = v153;
        v155 = *v151++;
        v156 = v155;
        if (v154 <= v155)
        {
          v154 = v156;
        }

        *v150++ = v154;
        --v149;
      }

      while (v149);
    }

    v157 = 0.0;
    if (v97)
    {
      v158 = (this + 21048);
      v159 = v97;
      do
      {
        v160 = *v158++;
        v161 = v160;
        v162 = *a5++;
        v157 = v157 + (v161 * v162);
        --v159;
      }

      while (v159);
    }

    *(this + result) = 0;
    v163 = v157 - v96;
    if (v163 > 0.00000011921)
    {
      *(this + result) = 1;
      if (v141 < 1)
      {
        LODWORD(v164) = 0;
      }

      else
      {
        v164 = 0;
        v165 = v25;
        v166 = a2;
        v167 = (this + 21048);
        do
        {
          v168 = *v165++;
          v169 = v168;
          v170 = *v166;
          v166 += 4;
          *v167++ = vsubq_f32(v169, v170);
          v164 += 4;
        }

        while (v164 < v141);
      }

      v171 = a6 - v96;
      if (v164 < v97)
      {
        v172 = v97 - v164;
        v173 = (this + 4 * v164 + 21048);
        v174 = &a2->f32[v164];
        v175 = &v25->f32[v164];
        do
        {
          v176 = *v175++;
          v177 = v176;
          v178 = *v174++;
          *v173++ = v177 - v178;
          --v172;
        }

        while (v172);
      }

      v179 = v171 / v163;
      if (v141 < 1)
      {
        LODWORD(v180) = 0;
      }

      else
      {
        v180 = 0;
        v181 = (this + 21048);
        do
        {
          *v181 = vmaxq_f32(*v181, 0);
          ++v181;
          v180 += 4;
        }

        while (v180 < v141);
      }

      v182 = fminf(v179, 1.0);
      if (v180 < v97)
      {
        v183 = v97 - v180;
        v184 = (this + 4 * v180 + 21048);
        do
        {
          v185 = *v184;
          if (*v184 < 0.0)
          {
            v185 = 0.0;
          }

          *v184++ = v185;
          --v183;
        }

        while (v183);
      }

      v186 = fmaxf(v182, 0.0);
      v187 = v97 & 0xFFFFFFF8;
      if (v187 < 1)
      {
        LODWORD(v188) = 0;
      }

      else
      {
        v188 = 0;
        v189 = (this + 21064);
        do
        {
          v190 = vmulq_n_f32(*v189, v186);
          v189[-1] = vmulq_n_f32(v189[-1], v186);
          *v189 = v190;
          v188 += 8;
          v189 += 2;
        }

        while (v188 < v187);
      }

      if (v188 < v97)
      {
        v191 = v97 - v188;
        v192 = (this + 4 * v188 + 21048);
        do
        {
          *v192 = v186 * *v192;
          ++v192;
          --v191;
        }

        while (v191);
      }

      v193 = *(this + 6);
      if ((v193 & 0xFFFFFFFC) < 1)
      {
        LODWORD(v194) = 0;
      }

      else
      {
        v194 = 0;
        v195 = a2;
        do
        {
          v196 = *v17++;
          *v195 = vaddq_f32(v196, *v195);
          ++v195;
          v194 += 4;
        }

        while (v194 < (v193 & 0xFFFFFFFC));
      }

      if (v194 < v193)
      {
        v197 = v193 - v194;
        v198 = &a2->f32[v194];
        v199 = (this + 4 * v194 + 21048);
        do
        {
          v200 = *v199++;
          *v198 = v200 + *v198;
          ++v198;
          --v197;
        }

        while (v197);
      }

      *(this + result) = 0;
    }
  }

  return result;
}

void *LTMComputeV2::LTMCompute::makeScaleGTC(LTMComputeV2::LTMCompute *this, float *__dst, float *__src, float a4, float a5)
{
  if (a4 <= 0.00000011921)
  {
    return memcpy(__dst, __src, 0x404uLL);
  }

  v5 = 1.0 - a5;
  if (a4 >= 1.0)
  {
    v9 = __src[256];
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = v6;
      v8 = *(&LTMComputeV2::LTMCompute::globalCurveInputs + v6++);
    }

    while (v7 <= 0x100 && v8 < a4);
    v9 = 0.0;
    if (v6 != 1)
    {
      v10 = (v6 - 2);
      v11 = *(&LTMComputeV2::LTMCompute::globalCurveInputs + v10);
      if (vabds_f32(v8, v11) >= 0.00000011921)
      {
        v9 = __src[v10] + (((a4 - v11) / (v8 - v11)) * (__src[v6 - 1] - __src[v10]));
      }

      else
      {
        v9 = __src[v6 - 1];
      }
    }
  }

  v13 = v5 * v9;
  v14 = (1.0 - v13) / fmaxf(1.0 - v9, 0.00000011921);
  v15 = v9;
  v16 = v13;
  v17 = 1.0 / fmax((v15 + v15) * v15 - v15 * v15, 2.22044605e-16);
  v18 = (v15 + v15) * v17 * v13 + -(v15 * v15) * v17 * v14;
  if (v18 >= 0.0)
  {
    v19 = v17 * v15 * v14 - v17 * v16;
  }

  else
  {
    v19 = v16 / fmax((v9 * v9), 2.22044605e-16);
    v18 = 0.0;
  }

  v20 = 0;
  *__dst = 0.0;
  do
  {
    __dst[v20 + 1] = (__src[v20 + 1] * v14) - (v14 + -1.0);
    ++v20;
  }

  while (v20 != 256);
  v21 = fminf(ceilf(a4 * 256.0), 257.0);
  if (v21 >= 2)
  {
    v23 = __dst + 1;
    v24 = __src + 1;
    v25 = v21 - 1;
    do
    {
      v26 = *v24++;
      v22 = v19;
      *v23++ = v26 * (v18 + (v22 * v26));
      --v25;
    }

    while (v25);
  }

  return result;
}

void LTMComputeV2::LTMCompute::computeRGBToneCurve(LTMComputeV2::LTMCompute *this, const sLtmComputeInput_SOFTISP *a2, const sLtmTuningParams *a3, const sLtmFrameParams *a4, sLtmComputeOutput *a5)
{
  v7 = 0;
  v8 = 0;
  v9 = this + 61440;
  globalLUT = a5->globalLUT;
  v11 = &a4->var19[157];
  v12 = *(this + 6);
  v13 = fminf(a4->var30 / a2->ltmComputeInput.exposureRatio, (v12 >> 1));
  v14 = vcvtms_s32_f32(v13);
  v15 = v13 - floorf(v13);
  localHist = a2->ltmComputeInput.localHist;
  if (v14 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v14;
  }

  v18 = (v17 - 1);
  v19 = 0.0;
  v20 = 0.0;
  do
  {
    v21 = v15 * localHist[v14 + v12 * v8];
    v22 = v18;
    v23 = v7;
    if (v14 >= 2)
    {
      do
      {
        v21 = v21 + localHist[v23++];
        --v22;
      }

      while (v22);
    }

    v24 = v14 + *(this + 5) * LTMComputeV2::LTMCompute::toneCurveArrayIndices[v8];
    v25 = a5->LTC[v24] + ((a5->LTC[v24 + 1] - a5->LTC[v24]) * v15);
    v26 = (v21 * v25) + 0.001;
    v20 = v20 + (v25 * v26);
    v19 = v19 + v26;
    ++v8;
    v7 += v12;
  }

  while (v8 != 48);
  v27 = v20 / v19;
  if (v27 <= 0.0)
  {
    v31 = *globalLUT;
  }

  else if (v27 >= 1.0)
  {
    v31 = a5->globalLUT[256];
  }

  else
  {
    v28 = 0;
    do
    {
      v29 = v28;
      v30 = *(&LTMComputeV2::LTMCompute::globalCurveInputs + v28++);
    }

    while (v29 <= 0x100 && v30 < v27);
    v31 = 0.0;
    if (v28 != 1)
    {
      v32 = (v28 - 2);
      v33 = *(&LTMComputeV2::LTMCompute::globalCurveInputs + v32);
      if (vabds_f32(v30, v33) >= 0.00000011921)
      {
        v31 = globalLUT[v32] + (((v27 - v33) / (v30 - v33)) * (a5->averageLTC[v28 + 256] - globalLUT[v32]));
      }

      else
      {
        v31 = a5->averageLTC[v28 + 256];
      }
    }
  }

  if (*(this + 63409))
  {
    v34 = 0;
  }

  else
  {
    *(this + 63409) = 1;
    v34 = (this + 29520);
  }

  LTMComputeV2::LTMCompute::makeScaleGTC(this, v34, &LTMComputeV2::LTMCompute::globalCurveInputs, v31, a4->var31);
  v35 = 0;
  v36 = *(this + 4);
  do
  {
    v37 = powf(v34[v35], (v11[107] * 1.1) / *(v36 + 16));
    v34[v35++] = powf(v37, (sqrtf(v37) * -0.1) + 1.2);
  }

  while (v35 != 257);
  if (v9[1971])
  {
    v39 = 0;
  }

  else
  {
    v9[1971] = 1;
    v39 = (this + 46464);
  }

  if (v9[1968])
  {
    v40 = 0;
  }

  else
  {
    v9[1968] = 1;
    v40 = (this + 21048);
  }

  if (v9[1970])
  {
    v41 = 0;
  }

  else
  {
    v9[1970] = 1;
    v41 = (this + 37992);
  }

  ScaleGTC = LTMComputeV2::LTMCompute::makeScaleGTC(v38, v39, &LTMComputeV2::LTMCompute::globalCurveInputs, v11[126], 0.28);
  v43 = 256;
  v44 = v40;
  do
  {
    *v44++ = 1.0 - v39[v43--];
  }

  while (v43 != -1);
  LTMComputeV2::LTMCompute::interpolate(ScaleGTC, v40, &LTMComputeV2::LTMCompute::globalCurveInputs, 257, &LTMComputeV2::LTMCompute::globalCurveInputs, v41, 257);
  v45 = powf(v11[126], 0.8);
  v46 = powf(1.0 / ((0.4704 / v45) + 0.5146), 1.25);
  LTMComputeV2::LTMCompute::makeScaleGTC(v47, v39, &LTMComputeV2::LTMCompute::globalCurveInputs, v46, 0.12);
  v48 = 0;
  v49 = v39 + 256;
  do
  {
    v50 = *v49--;
    v40[v48++] = 1.0 - v50;
  }

  while (v48 != 257);
  v9[1971] = 1;
  v51 = memcpy(this + 46464, globalLUT, 0x404uLL);
  LTMComputeV2::LTMCompute::interpolate(v51, &LTMComputeV2::LTMCompute::globalCurveInputs, v41, 257, this + 11616, globalLUT, 257);
  v52 = 0;
  v53 = *(this + 4);
  do
  {
    globalLUT[v52] = powf(globalLUT[v52], *(v53 + 16));
    ++v52;
  }

  while (v52 != 257);
  rgbToneCurve = a5->rgbToneCurve;
  if (a2->useBt709)
  {
    memcpy(a5->rgbToneCurve, &LTMComputeV2::LTMCompute::globalCurveInputs, sizeof(a5->rgbToneCurve));
    for (i = 0; i != 257; ++i)
    {
      v57 = rgbToneCurve[i];
      if (v57 >= 0.018)
      {
        v58 = (powf(v57, 0.45) * 1.099) + -0.099;
      }

      else
      {
        v58 = v57 * 4.5;
      }

      rgbToneCurve[i] = v58;
    }
  }

  else
  {
    LTMComputeV2::LTMCompute::interpolate(v54, &LTMComputeV2::LTMCompute::globalCurveInputs, v41, 257, v34, a5->rgbToneCurve, 257);
    LTMComputeV2::LTMCompute::interpolate(v59, v41, a5->rgbToneCurve, 257, &LTMComputeV2::LTMCompute::globalCurveInputs, this + 11616, 257);
    LTMComputeV2::LTMCompute::interpolate(v60, &LTMComputeV2::LTMCompute::globalCurveInputs, v40, 257, this + 11616, a5->rgbToneCurve, 257);
    for (j = 0; j != 257; ++j)
    {
      v62 = rgbToneCurve[j];
      if (v62 >= 0.0031308)
      {
        v63 = (powf(v62, 0.41667) * 1.055) + -0.055;
      }

      else
      {
        v63 = v62 * 12.92;
      }

      rgbToneCurve[j] = v63;
    }
  }

  *(a5 + 222240) |= 0x10u;
  *(v9 + 492) = 0;
}

void LTMComputeV2::LTMCompute::adaptForHLG(LTMComputeV2::LTMCompute *this, sLtmComputeOutput *a2)
{
  if (*(this + 63408))
  {
    v4 = 0;
  }

  else
  {
    *(this + 63408) = 1;
    v4 = this + 21048;
  }

  v5 = memcpy(v4, a2->globalLUT, 0x404uLL);
  LTMComputeV2::LTMCompute::interpolate(v5, LTMComputeV2::LTMCompute::globalCurveInputs, LTMComputeV2::LTMCompute::gpre, 257, v4, a2->globalLUT, 257);
  v6 = 0;
  rgbToneCurve = a2->rgbToneCurve;
  do
  {
    rgbToneCurve[v6] = powf(rgbToneCurve[v6], 2.2);
    ++v6;
  }

  while (v6 != 257);
  LTMComputeV2::LTMCompute::interpolate(v8, LTMComputeV2::LTMCompute::globalCurveInputs, LTMComputeV2::LTMCompute::gpre, 257, rgbToneCurve, v4, 257);
  LTMComputeV2::LTMCompute::interpolate(v9, LTMComputeV2::LTMCompute::gpre, v4, 257, LTMComputeV2::LTMCompute::globalCurveInputs, rgbToneCurve, 257);
  for (i = 0; i != 257; ++i)
  {
    v11 = rgbToneCurve[i];
    if (v11 >= 0.0833)
    {
      v12 = (logf((v11 * 12.0) + -0.2847) * 0.17883) + 0.5599;
    }

    else
    {
      v12 = sqrtf(v11 * 3.0);
    }

    rgbToneCurve[i] = v12;
  }

  *(this + 63408) = 0;
}

void LTMComputeV2::LTMCompute::generateSpatialLTC(LTMComputeV2::LTMCompute *this, const sLtmComputeInput_SOFTISP *a2, const sLtmComputeMeta_SOFTISP *a3, sLtmComputeOutput *a4)
{
  if (LTMComputeV2::LTMCompute::generateSpatialLTC(sLtmComputeInput_SOFTISP const*,sLtmComputeMeta_SOFTISP const*,sLtmComputeOutput *)::onceToken != -1)
  {
    LTMComputeV2::LTMCompute::generateSpatialLTC();
  }

  p_CBLowlightDampWeight = &a2->ltmComputeInput.CBLowlightDampWeight;
  *(this + 4) = &LTMComputeV2::LTMCompute::tuningParamsSDR;
  gammaCurve = a3->ltmComputeMeta.gammaCurve;
  if (a3->ltmComputeMeta.useDigitalFlash)
  {
    if (gammaCurve == 1)
    {
      v10 = &LTMComputeV2::LTMCompute::tuningParamsHLG;
      v11 = 4;
    }

    else
    {
      v10 = &LTMComputeV2::LTMCompute::tuningParamsDigitalFlash;
      if (*(this + 1) == 2)
      {
        v10 = &LTMComputeV2::LTMCompute::tuningParamsDigitalFlashFFC;
      }

      v11 = 2;
    }

    goto LABEL_11;
  }

  if (gammaCurve == 1)
  {
    v10 = &LTMComputeV2::LTMCompute::tuningParamsHLG;
    v11 = 1;
LABEL_11:
    *(this + 4) = v10;
    goto LABEL_13;
  }

  v11 = 0;
  v10 = &LTMComputeV2::LTMCompute::tuningParamsSDR;
LABEL_13:
  if (LOBYTE(a3[1].tuningParametersOverride[3].histSmoothingMax))
  {
    v12 = &a3->ltmComputeMeta.useLinearLTCs + 144 * v11;
    *(v10 + 2) = *(v12 + 4);
    *v10 = vrev64_s32(*(v12 + 20));
    *&v13 = *(v12 + 28);
    *&v14 = *(v12 + 36);
    *(v10 + 31) = *(v12 + 13);
    v15 = *(v12 + 7);
    *(v10 + 7) = *(v12 + 16);
    *(v10 + 9) = *(v12 + 17);
    *(v10 + 32) = *(v12 + 18);
    LODWORD(v16) = *(v12 + 19);
    DWORD2(v13) = *(v12 + 20);
    HIDWORD(v13) = *(v12 + 12);
    DWORD2(v14) = *(v12 + 11);
    *(v10 + 108) = v13;
    HIDWORD(v14) = *(v12 + 21);
    *(v10 + 5) = v14;
    *(v10 + 8) = *(v12 + 22);
    *(v10 + 26) = *(v12 + 23);
    DWORD1(v16) = *(v12 + 24);
    *(&v16 + 1) = v15;
    *(v10 + 12) = v16;
    *(v10 + 10) = *(v12 + 25);
    *(v10 + 3) = *(v12 + 7);
    v17 = *(this + 4);
    *(v17 + 64) = *(v12 + 8);
    v18 = *(v12 + 36);
    *(v17 + 96) = v18;
    v19 = *(v12 + 37);
    *(v17 + 100) = v19;
  }

  else
  {
    v18 = *(v10 + 24);
    v19 = *(v10 + 25);
  }

  LTMComputeV2::sLtmTuningParams::faceBiasScaler = LODWORD(a2->ltmComputeInput.faceBiasScaler);
  LTMComputeV2::LTMCompute::calculateDisplayModel(this, v18, v19, this + 10, this + 523);
  v21 = *(this + 5);
  v22 = *(this + (v21 - 1) + 523);
  *(this + 1037) = v22;
  v23 = 1.0 / v22;
  if ((v21 & 0xFFFFFFF8) < 1)
  {
    LODWORD(v24) = 0;
  }

  else
  {
    v24 = 0;
    v25 = (this + 2108);
    do
    {
      v26 = vmulq_n_f32(*v25, v23);
      v25[-1] = vmulq_n_f32(v25[-1], v23);
      *v25 = v26;
      v24 += 8;
      v25 += 2;
    }

    while (v24 < (v21 & 0xFFFFFFF8));
  }

  if (v24 < v21)
  {
    v27 = v21 - v24;
    v28 = (this + 4 * v24 + 2092);
    do
    {
      *v28 = v23 * *v28;
      ++v28;
      --v27;
    }

    while (v27);
  }

  v400 = (this + 1064);
  v398 = this + 3120;
  LTMComputeV2::LTMCompute::interpolate(v20, this + 523, this + 266, *(this + 5), this + 266, this + 780, *(this + 5));
  bzero(this + 4156, 0x41FCuLL);
  v29 = *(this + 4);
  v30 = *(v29 + 120);
  *(this + 5261) = v30;
  if (!a3->ltmComputeMeta.useDigitalFlash)
  {
    *(this + 5261) = fminf(v30 + (((0.65 - v30) * fmaxf(a2->ltmComputeInput.exposureBias + -1.0, 0.0)) * 0.25), 0.65);
  }

  LTMComputeV2::LTMCompute::computeLocalLuma(this, &a2->ltmComputeInput, v29, (this + 2092), (this + 4156));
  v403 = (this + 2092);
  if (*(this + 16) == 1)
  {
    v426 = 0u;
    v427 = 0u;
    v424 = 0u;
    v425 = 0u;
    v422 = 0u;
    v423 = 0u;
    v420 = 0u;
    v421 = 0u;
    v418 = 0u;
    v419 = 0u;
    v416 = 0u;
    v417 = 0u;
    v414 = 0u;
    v415 = 0u;
    *v412 = 0u;
    v413 = 0u;
    bzero(v409, 0x400uLL);
    v32 = 0;
    v33 = xmmword_1C93323B0;
    v34 = vdupq_n_s32(0x427C0000u);
    v35.i64[0] = 0x400000004;
    v35.i64[1] = 0x400000004;
    do
    {
      *&v412[v32] = vdivq_f32(vcvtq_f32_u32(v33), v34);
      v33 = vaddq_s32(v33, v35);
      v32 += 4;
    }

    while (v32 != 64);
    v36 = 0;
    v37 = xmmword_1C93323B0;
    v38 = vdupq_n_s32(0x437F0000u);
    v39.i64[0] = 0x400000004;
    v39.i64[1] = 0x400000004;
    do
    {
      *&v409[v36] = vdivq_f32(vcvtq_f32_u32(v37), v38);
      v37 = vaddq_s32(v37, v39);
      v36 += 4;
    }

    while (v36 != 256);
    LTMComputeV2::LTMCompute::interpolate(v31, v412, a2->ltmComputeInput.globalHist2, 64, v409, LTMComputeV2::LTMCompute::globalHist2, 256);
    v40 = 0;
    __asm { FMOV            V0.4S, #4.0 }

    v46 = a4;
    do
    {
      LTMComputeV2::LTMCompute::globalHist2[v40] = vmulq_f32(LTMComputeV2::LTMCompute::globalHist2[v40], _Q0);
      ++v40;
    }

    while (v40 != 64);
  }

  else
  {
    v47 = *&a2->ltmComputeInput.globalHist2[52];
    xmmword_1EC3975C8 = *&a2->ltmComputeInput.globalHist2[48];
    unk_1EC3975D8 = v47;
    v48 = *&a2->ltmComputeInput.globalHist2[60];
    xmmword_1EC3975E8 = *&a2->ltmComputeInput.globalHist2[56];
    unk_1EC3975F8 = v48;
    v49 = *&a2->ltmComputeInput.globalHist2[36];
    xmmword_1EC397588 = *&a2->ltmComputeInput.globalHist2[32];
    unk_1EC397598 = v49;
    v50 = *&a2->ltmComputeInput.globalHist2[44];
    xmmword_1EC3975A8 = *&a2->ltmComputeInput.globalHist2[40];
    unk_1EC3975B8 = v50;
    v51 = *&a2->ltmComputeInput.globalHist2[20];
    xmmword_1EC397548 = *&a2->ltmComputeInput.globalHist2[16];
    unk_1EC397558 = v51;
    v52 = *&a2->ltmComputeInput.globalHist2[28];
    xmmword_1EC397568 = *&a2->ltmComputeInput.globalHist2[24];
    unk_1EC397578 = v52;
    v53 = *&a2->ltmComputeInput.globalHist2[4];
    LTMComputeV2::LTMCompute::globalHist2[0] = *a2->ltmComputeInput.globalHist2;
    unk_1EC397518 = v53;
    v54 = *&a2->ltmComputeInput.globalHist2[12];
    xmmword_1EC397528 = *&a2->ltmComputeInput.globalHist2[8];
    unk_1EC397538 = v54;
    v46 = a4;
  }

  *(this + 5240) = 1065353216;
  exposureRatio = a2->ltmComputeInput.exposureRatio;
  v56 = 1.0;
  if (!a3->ltmComputeMeta.useFlash && exposureRatio > 1.0)
  {
    if (a3->ltmComputeMeta.CBVer == 1)
    {
      v57 = ((1.0 - *p_CBLowlightDampWeight) * *&LTMComputeV2::sLtmTuningParams::faceBiasScaler) + (*p_CBLowlightDampWeight * 0.0);
    }

    else
    {
      v57 = *&LTMComputeV2::sLtmTuningParams::faceBiasScaler;
    }

    faceExposureRatio = a2->ltmComputeInput.faceExposureRatio;
    if (a3->ltmComputeMeta.gammaCurve == 1)
    {
      v56 = (((faceExposureRatio + -1.0) * fmaxf(*(*(this + 4) + 32), exposureRatio / faceExposureRatio)) * v57) + 1.0;
    }

    else
    {
      v56 = powf(faceExposureRatio, fminf(v57 * fmaxf(*(*(this + 4) + 32), (exposureRatio + -1.0) / faceExposureRatio), 1.0));
    }

    *(this + 5240) = v56;
  }

  exposureBias = a2->ltmComputeInput.exposureBias;
  v60 = fminf((exposureRatio * v56) * fminf(exposureBias, 1.0), 80.0);
  *(this + 5254) = v56 * exposureBias;
  v61 = fmaxf(v60, 1.0);
  *(this + 5238) = v60;
  *(this + 5239) = v61;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 20964) = _D0;
  sceneLux = a2->ltmComputeInput.sceneLux;
  v64 = *(this + 4);
  v65 = fmaxf(a2->ltmComputeInput.darkExposureRatio * *(v64 + 28), 1.0);
  if (a3->ltmComputeMeta.useDigitalFlash)
  {
    v66 = *(v64 + 48);
    LODWORD(v67) = HIDWORD(*(v64 + 48));
    v68 = *(&v66 + 3);
    if (v67 > 0.00000011921)
    {
      totalGain = a2->totalGain;
      if (totalGain < *(&v66 + 2))
      {
        if (totalGain <= *&v66)
        {
          LODWORD(v68) = HIDWORD(*(v64 + 48));
        }

        else
        {
          v68 = v67 + (((*(&v66 + 3) - v67) / (*(&v66 + 2) - *&v66)) * (totalGain - *&v66));
        }
      }
    }

    else
    {
      v68 = *(v64 + 40);
    }

    v69 = fminf(fmaxf(15.0 / a2->ltmComputeInput.darkEit, sceneLux + sceneLux) / v68, 1.0);
    *(this + 5241) = v69;
    v70 = fmaxf(sceneLux, (sceneLux + v68) * 0.5);
    if (sceneLux < v68)
    {
      sceneLux = v70;
    }

    *(this + 5242) = fminf(fminf((((1.0 - (1.0 / fmaxf(powf(v65, 3.0), 1.0))) * 0.4) * (1.0 - sqrtf(v69))) + 1.0, *(v64 + 24)), *(v64 + 20) + (v69 * 50.0));
  }

  v405 = this + 63408;
  *(this + 5253) = *(v64 + 8);
  v71 = fmaxf(sceneLux, *(v64 + 36));
  v72 = v71 / 3.14;
  v73 = fminf(fmaxf((v71 + -4.0) / 1019.0, 0.0), 1.0);
  *(this + 5243) = v73;
  *(this + 5244) = v72;
  v74 = fabsf(sqrtf(v73));
  *(this + 5246) = *(this + 1037) * (v74 + (*(v64 + 116) * (1.0 - v74)));
  v75 = exp2f((v61 * -0.435) + -1.3651);
  *(this + 5235) = v75;
  *(this + 5236) = (v75 * -2.0) + 1.0;
  *(this + 5237) = v75;
  LTMComputeV2::LTMCompute::computeThumbnailLuma(this, &a2->ltmComputeInput, (this + 4156));
  v76 = *(this + 4);
  *(this + 5245) = fmaxf(*(v76 + 128) * *(this + 5243), 1.0 / *(this + 6));
  *(this + 5247) = 0;
  *(this + 5248) = 0;
  v77 = (this + 20988);
  v408 = 0.0;
  HIDWORD(v78) = 1;
  *v412 = xmmword_1C93323B0;
  LODWORD(v78) = *(v76 + 104);
  LTMComputeV2::LTMCompute::calculateSceneFlare(this, a2->ltmComputeInput.globalHist, 256, v412, v78, LTMComputeV2::sLtmTuningParams::nFlareBins, this + 5247, this + 5248, &v408);
  v79 = LTMComputeV2::sLtmTuningParams::nFlareBins;
  *&v80 = fminf(*(this + 5247), LTMComputeV2::sLtmTuningParams::nFlareBins);
  *(this + 5247) = LODWORD(v80);
  if (a2->ltmComputeInput.flareScale < 1.0)
  {
    memset(v412, 0, sizeof(v412));
    v409[0] = 0.0;
    v406 = 0;
    LODWORD(v80) = 1025758986;
    LTMComputeV2::LTMCompute::calculateSceneFlare(this, a2->ltmComputeInput.thumbnailHistEV0, *(this + 6), v412, v80, v79, v409, &v406, &v407);
    v80 = COERCE_DOUBLE(vmla_n_f32(vmul_n_f32(vmaxnm_f32(*v77, __PAIR64__(v406, LODWORD(v409[0]))), 1.0 - a2->ltmComputeInput.flareScale), *v77, a2->ltmComputeInput.flareScale));
    *v77 = v80;
  }

  v81 = *(this + 4);
  if (a3->ltmComputeMeta.useDigitalFlash)
  {
    v77->f32[0] = fmaxf(*&v80, (1.0 - (1.0 / v65)) * *(v81 + 124));
  }

  v404 = (this + 6600);
  v82 = (this + 8648);
  LTMComputeV2::LTMCompute::calculateSceneModelAlgo(this, (this + 8648), (this + 9672), &a2->ltmComputeInput, v81, (this + 4156), -1.0, 1.0, a2->ltmComputeInput.thumbnailHistEV0);
  if (*v405)
  {
    v84 = 0;
  }

  else
  {
    *v405 = 1;
    v84 = (this + 21048);
  }

  v85 = (this + 10696);
  v402 = v46;
  if (a3->ltmComputeMeta.faceLTMVer == 1)
  {
    v86 = 0;
    v87 = xmmword_1C932FAE0;
    v88 = xmmword_1C932FAF0;
    v89 = &v410;
    v90 = vdupq_n_s64(0x41uLL);
    v91 = vdupq_n_s64(4uLL);
    do
    {
      if (vuzp1_s16(vmovn_s64(vcgtq_u64(v90, v88)), *v87.i8).u8[0])
      {
        *(v89 - 2) = vcvts_n_f32_u32(v86, 6uLL);
      }

      if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x41uLL), *&v88)), *&v87).i8[2])
      {
        *(v89 - 1) = vcvts_n_f32_u32(v86 + 1, 6uLL);
      }

      if (vuzp1_s16(*&v87, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x41uLL), *&v87))).i32[1])
      {
        *v89 = vcvts_n_f32_u32(v86 + 2, 6uLL);
        v89[1] = vcvts_n_f32_u32(v86 + 3, 6uLL);
      }

      v86 += 4;
      v87 = vaddq_s64(v87, v91);
      v88 = vaddq_s64(v88, v91);
      v89 += 4;
    }

    while (v86 != 68);
    v92 = &v84->f32[*(this + 5)];
    v93 = (v92 + 4);
    v94 = v411;
    v95 = -8;
    v96 = 1.0 / a2->ltmComputeInput.preBiasExposureRatio;
    do
    {
      v97 = vaddq_f32(vmulq_n_f32(*v94, v96), 0);
      v93[-1] = vaddq_f32(vmulq_n_f32(v94[-1], v96), 0);
      *v93 = v97;
      v95 += 8;
      v93 += 2;
      v94 += 2;
    }

    while (v95 < 0x38);
    v98 = 0.0;
    v92[64] = (v411[60] * v96) + 0.0;
    v407 = 0.0;
    LTMComputeV2::LTMCompute::histInterp(this, v409, a2->ltmComputeInput.globalHist2, 64, v92, v84, 64, &v407, a2->ltmComputeInput.preBiasExposureRatio, a2->ltmComputeInput.preBiasExposureRatio > 1.00001);
    v99 = 0;
    v100 = unk_1EC3975D8;
    v84[44] = xmmword_1EC3975C8;
    v84[45] = v100;
    v101 = unk_1EC3975F8;
    v84[46] = xmmword_1EC3975E8;
    v84[47] = v101;
    v102 = unk_1EC397598;
    v84[40] = xmmword_1EC397588;
    v84[41] = v102;
    v103 = unk_1EC3975B8;
    v84[42] = xmmword_1EC3975A8;
    v84[43] = v103;
    v104 = unk_1EC397558;
    v84[36] = xmmword_1EC397548;
    v84[37] = v104;
    v105 = unk_1EC397578;
    v84[38] = xmmword_1EC397568;
    v84[39] = v105;
    v106 = unk_1EC397518;
    v84[32] = LTMComputeV2::LTMCompute::globalHist2[0];
    v84[33] = v106;
    v107 = unk_1EC397538;
    f32 = v84[32].f32;
    v84[34] = xmmword_1EC397528;
    v84[35] = v107;
    v109 = floorf(64.0 / *(this + 5238));
    do
    {
      if (v109 > v99)
      {
        v110 = &v84->i8[4 * v99];
        v98 = v98 + *(v110 + 128);
        *(v110 + 128) = 0;
      }

      ++v99;
    }

    while (v99 != 64);
    f32[fminf(v109, 64.0)] = v407 - v98;
    v111 = (this + 12744);
    LTMComputeV2::LTMCompute::calculateSceneModelAlgo(this, (this + 12744), 0, &a2->ltmComputeInput, *(this + 4), (this + 4156), 64.0, a2->ltmComputeInput.preBiasExposureRatio, f32);
    v112 = v84 + 48;
    memcpy(&v84[48], this + 12744, 4 * *(this + 6));
    LTMComputeV2::LTMCompute::calculateSceneModelAlgo(this, (this + 12744), 0, &a2->ltmComputeInput, *(this + 4), (this + 4156), 64.0, 1.0, v84->f32);
    v113 = *(this + 6);
    if ((v113 & 0xFFFFFFFC) < 1)
    {
      LODWORD(v114) = 0;
    }

    else
    {
      v114 = 0;
      do
      {
        v115 = *v112++;
        *v111 = vaddq_f32(*v111, v115);
        ++v111;
        v114 += 4;
      }

      while (v114 < (v113 & 0xFFFFFFFC));
    }

    v46 = v402;
    if (v114 < v113)
    {
      v116 = v113 - v114;
      v117 = &v84[48].f32[v114];
      v118 = (this + 4 * v114 + 12744);
      do
      {
        v119 = *v117++;
        *v118 = *v118 + v119;
        ++v118;
        --v116;
      }

      while (v116);
    }
  }

  if (a3->ltmComputeMeta.CBVer == 1)
  {
    LTMComputeV2::LTMCompute::calculateSceneModelAlgo(this, (this + 14792), 0, &a2->ltmComputeInput, *(this + 4), (this + 4156), 11.52, 1.0, a2->ltmComputeInput.thumbnailHistEV0);
    if (a3->ltmComputeMeta.faceLTMVer == 1)
    {
      LTMComputeV2::LTMCompute::calculateSceneModelAlgo(this, (this + 17864), 0, &a2->ltmComputeInput, *(this + 4), (this + 4156), 11.52, 1.0, v84->f32);
    }

    v120 = a3->ltmComputeMeta.CBVer == 1;
  }

  else
  {
    v120 = 0;
  }

  *v405 = 0;
  v121 = ((1.0 - v408) * 0.0) + 1.0;
  v122 = *(this + 5243);
  v123 = fmaxf(v122, 0.22108);
  if (v120)
  {
    v124 = 1.0 - *p_CBLowlightDampWeight;
    v125 = ((v121 * ((*p_CBLowlightDampWeight + (v124 * 1.2)) + -1.0)) * v123) + 1.0;
    v126 = (v124 * 1.5) + (*p_CBLowlightDampWeight * 1.1);
  }

  else
  {
    v125 = ((v121 * 0.2) * v123) + 1.0;
    v126 = 1.5;
  }

  *(this + 5249) = v125;
  *(this + 5250) = v126;
  v127 = (a2->ltmComputeInput.thumbHistBlendingWeight * 0.3) + 0.5;
  *(this + 5251) = v127;
  useDigitalFlash = a3->ltmComputeMeta.useDigitalFlash;
  if (useDigitalFlash)
  {
    v129 = 0.4;
  }

  else
  {
    v130 = ((*(this + 5241) * -0.8) + 1.0) * fminf(*(this + 5239) * 0.125, 1.0);
    v129 = v130 + ((1.0 - v130) * 0.4);
  }

  *(this + 5252) = ((1.0 - v122) * v129) + (v127 * v122);
  LTMComputeV2::LTMCompute::calculateHighlightSceneModel(this, a2, v83, useDigitalFlash, this + 4156, 0);
  if (a3->ltmComputeMeta.faceLTMVer == 1)
  {
    LTMComputeV2::LTMCompute::calculateHighlightSceneModel(this, a2, v131, a3->ltmComputeMeta.useDigitalFlash, this + 4156, 2);
  }

  if (a3->ltmComputeMeta.CBVer == 1)
  {
    LTMComputeV2::LTMCompute::calculateHighlightSceneModel(this, a2, v131, a3->ltmComputeMeta.useDigitalFlash, this + 4156, 1);
    if (a3->ltmComputeMeta.faceLTMVer == 1)
    {
      LTMComputeV2::LTMCompute::calculateHighlightSceneModel(this, a2, v132, a3->ltmComputeMeta.useDigitalFlash, this + 4156, 3);
    }
  }

  *(this + 5255) = *(this + 6) * 0.18;
  v409[0] = 0.0;
  v406 = 0;
  v407 = 0.0;
  *v412 = xmmword_1C93323B0;
  LTMComputeV2::LTMCompute::calculateSceneFlare(this, a2->ltmComputeInput.globalHist, 256, v412, COERCE_DOUBLE(0x13E19999ALL), 46.08, v409, &v407, &v406);
  v133 = v409[0] / *(this + 5255);
  v409[0] = v133;
  v134 = *(this + 6);
  if (*(this + 780) >= 0.18)
  {
    v135 = (this + 1064);
    v141 = *v400;
  }

  else
  {
    v135 = (this + 1064);
    if (*&v398[4 * v134 - 4] <= 0.18)
    {
      v141 = v400[v134 - 1];
    }

    else
    {
      v136 = 0;
      v137 = -2;
      v138 = this;
      do
      {
        v139 = *(v138 + 780);
        v140 = v136 + 1;
        v138 = (v138 + 4);
        ++v137;
        if (v136 >= v134)
        {
          break;
        }

        ++v136;
      }

      while (v139 < 0.18);
      v141 = 0.0;
      if (v140 != 1)
      {
        v142 = *&v398[4 * v137];
        if (vabds_f32(v139, v142) >= 0.00000011921)
        {
          v141 = v400[v137] + (((0.18 - v142) / (v139 - v142)) * (*(v138 + 265) - v400[v137]));
        }

        else
        {
          v141 = *(v138 + 265);
        }
      }
    }
  }

  v143 = v141 * *(this + 1037);
  *(this + 5256) = v143;
  if (*v405)
  {
    v144 = 0;
  }

  else
  {
    v144 = (this + 21048);
  }

  *v144 = 0;
  v145 = *(this + 5);
  if (v145 >= 2)
  {
    v146 = 8648;
    if (a3->ltmComputeMeta.gammaCurve == 1)
    {
      v146 = 10696;
    }

    v147 = (this + v146);
    v148 = (v144 + 1);
    v149 = v145 - 1;
    v150 = 0.0;
    do
    {
      v151 = *v147++;
      v150 = v150 + v151;
      *v148++ = v150;
      --v149;
    }

    while (v149);
    v143 = *(this + 5256);
  }

  if (v143 <= 0.0)
  {
    v155 = *v135;
  }

  else if (*&v144[v134 - 1] <= v143)
  {
    v155 = v135[v134 - 1];
  }

  else
  {
    v152 = 0;
    do
    {
      v153 = v152;
      v154 = *&v144[v152++];
    }

    while (v153 < v134 && v154 < v143);
    v155 = 0.0;
    if (v152 != 1)
    {
      v156 = (v152 - 2);
      v157 = *&v144[v156];
      v158 = (this + 4 * v152);
      if (vabds_f32(v154, v157) >= 0.00000011921)
      {
        v155 = v135[v156] + (((v143 - v157) / (v154 - v157)) * (v158[265] - v135[v156]));
      }

      else
      {
        v155 = v158[265];
      }
    }
  }

  v159 = v155 * v134;
  *v405 = 0;
  v160 = fmaxf(fminf(((v133 + -0.08) * v407) * 3.0, 1.0), 0.0);
  *(this + 5257) = v159;
  *(this + 5258) = v160;
  if (a3->ltmComputeMeta.gammaCurve == 1)
  {
    v161 = *(this + 5243);
    v162 = fminf(fmaxf((v161 + 0.9) + (fminf(1.0 - a2->ltmComputeInput.pixelCountRatio, 0.1) * -10.0), 0.7), 1.0) * 0.8;
    *(this + 5260) = v162;
    *(this + 5258) = fmaxf((1.0 - v161) * v162, v160);
  }

  if (v134 >= 1)
  {
    v163 = 0;
    v164 = floorf(v159);
    v165 = ceilf(v159);
    v166 = (this + 6600);
    do
    {
      v167 = v163;
      v168 = 1.0;
      if (v164 <= v163)
      {
        v168 = 0.0;
        if (v165 > v167)
        {
          v168 = v159 - v167;
        }
      }

      if (v166)
      {
        *v166++ = v168;
      }

      ++v163;
    }

    while (v134 != v163);
  }

  LTMComputeV2::LTMCompute::calculateGlobalLUTandModifySceneModels(this, *(this + 1), &a2->ltmComputeInput, &a3->ltmComputeMeta, *(this + 4), v403, (this + 4156), v46);
  if (*(this + 63409))
  {
    v169 = 0;
  }

  else
  {
    *(this + 63409) = 1;
    v169 = (this + 29520);
  }

  v170 = *(this + 6);
  averageLocalHist = a2->ltmComputeInput.averageLocalHist;
  if ((v170 & 0xFFFFFFFC) < 1)
  {
    LODWORD(v172) = 0;
  }

  else
  {
    v172 = 0;
    v173 = a2->ltmComputeInput.averageLocalHist;
    v174 = v169;
    do
    {
      v175 = *(v173 + 1440);
      v176 = *v173;
      v173 += 4;
      *v174++ = vsubq_f32(v175, v176);
      v172 += 4;
    }

    while (v172 < (v170 & 0xFFFFFFFC));
  }

  if (v172 < v170)
  {
    v177 = v170 - v172;
    v178 = &v169[v172];
    v179 = &a2->ltmComputeInput.averageLocalHist[v172];
    do
    {
      v180 = v179[1440];
      v181 = *v179++;
      *v178++ = v180 - v181;
      --v177;
    }

    while (v177);
  }

  v182 = *(this + 6);
  if ((v182 & 0xFFFFFFF0) < 1)
  {
    LODWORD(v183) = 0;
  }

  else
  {
    v183 = 0;
    v184 = (this + 5608);
    v185 = (v169 + 8);
    do
    {
      v186 = v184[-2];
      v187 = v184[-1];
      v188 = *v184;
      v189 = v184[1];
      v184 += 4;
      v190 = vmulq_f32(v185[-2], v186);
      v191 = vmulq_f32(v185[-1], v187);
      v192 = vmulq_f32(*v185, v188);
      v193 = vmulq_f32(v185[1], v189);
      v185[-2] = v190;
      v185[-1] = v191;
      *v185 = v192;
      v185[1] = v193;
      v185 += 4;
      v183 += 16;
    }

    while (v183 < (v182 & 0xFFFFFFF0));
  }

  if (v183 < v182)
  {
    v194 = v182 - v183;
    v195 = (this + 4 * v183 + 5576);
    v196 = &v169[v183];
    do
    {
      v197 = *v195++;
      *v196 = *v196 * v197;
      ++v196;
      --v194;
    }

    while (v194);
  }

  v198 = *(this + 6);
  if ((v198 & 0xFFFFFFFC) < 1)
  {
    LODWORD(v199) = 0;
  }

  else
  {
    v199 = 0;
    v200 = v169;
    v201 = a2->ltmComputeInput.averageLocalHist;
    do
    {
      v202 = *v201;
      v201 += 4;
      *v200 = vaddq_f32(*v200, v202);
      ++v200;
      v199 += 4;
    }

    while (v199 < (v198 & 0xFFFFFFFC));
  }

  if (v199 < v198)
  {
    v203 = v198 - v199;
    v204 = &a2->ltmComputeInput.averageLocalHist[v199];
    v205 = &v169[v199];
    do
    {
      v206 = *v204++;
      *v205 = *v205 + v206;
      ++v205;
      --v203;
    }

    while (v203);
  }

  v207 = *(this + 6);
  v208 = &v169[v207];
  v399 = v208;
  if (v207)
  {
    memset_pattern16(&v169[v207], &unk_1C9332D90, 4 * v207);
    v208 = v399;
  }

  if (a3->ltmComputeMeta.gammaCurve == 1)
  {
    v209 = (this + 10696);
  }

  else
  {
    v209 = (this + 8648);
  }

  LTMComputeV2::LTMCompute::allocateTone(this, 0, this + 1906, v169, *(this + 4), v403, (this + 4156), v208, *(this + 1135), *(this + 1136), *(this + 5239), v404, v209, this + 5235, this + 4978, 0, a3->ltmComputeMeta.gammaCurve == 1);
  v210 = *(this + 6);
  if ((v210 & 0xFFFFFFFC) < 1)
  {
    LODWORD(v211) = 0;
    v213 = this + 63408;
  }

  else
  {
    v211 = 0;
    v212 = (this + 6600);
    v213 = this + 63408;
    do
    {
      *v212 = vminq_f32(*v212, v212[64]);
      ++v212;
      v211 += 4;
    }

    while (v211 < (v210 & 0xFFFFFFFC));
  }

  if (v211 < v210)
  {
    v214 = v210 - v211;
    v215 = (this + 4 * v211 + 6600);
    do
    {
      v216 = *v215;
      if (*v215 >= v215[256])
      {
        v216 = v215[256];
      }

      *v215++ = v216;
      --v214;
    }

    while (v214);
  }

  LODWORD(v217) = v210;
  if (a3->ltmComputeMeta.gammaCurve != 1)
  {
    if ((v210 & 0xFFFFFFF0) < 1)
    {
      LODWORD(v218) = 0;
    }

    else
    {
      v218 = 0;
      v219 = (this + 6600);
      do
      {
        v220 = vmulq_f32(v219[1], v219[129]);
        v221 = vmulq_f32(v219[2], v219[130]);
        v222 = vmulq_f32(v219[3], v219[131]);
        *v219 = vmulq_f32(*v219, v219[128]);
        v219[1] = v220;
        v219[2] = v221;
        v219[3] = v222;
        v218 += 16;
        v219 += 4;
      }

      while (v218 < (v210 & 0xFFFFFFF0));
    }

    if (v218 < v210)
    {
      v223 = v210 - v218;
      v224 = (this + 4 * v218 + 6600);
      do
      {
        *v224 = *v224 * v224[512];
        ++v224;
        --v223;
      }

      while (v223);
    }

    v217 = *(this + 6);
    if ((v217 & 0xFFFFFFFC) < 1)
    {
      LODWORD(v225) = 0;
    }

    else
    {
      v225 = 0;
      v226 = (this + 6600);
      do
      {
        v227 = v226[256];
        v228 = vrecpeq_f32(v227);
        v229 = vmulq_f32(v228, vrecpsq_f32(v227, v228));
        *v226 = vmulq_f32(*v226, vmulq_f32(vrecpsq_f32(v227, v229), v229));
        ++v226;
        v225 += 4;
      }

      while (v225 < (v217 & 0xFFFFFFFC));
    }

    if (v225 < v217)
    {
      v230 = v217 - v225;
      v231 = (this + 4 * v225 + 6600);
      do
      {
        *v231 = *v231 / v231[1024];
        ++v231;
        --v230;
      }

      while (v230);
    }
  }

  if (v213[2])
  {
    v401 = 0;
  }

  else
  {
    v213[2] = 1;
    v401 = (this + 37992);
  }

  CBVer = a3->ltmComputeMeta.CBVer;
  if (!a3->ltmComputeMeta.CBVer)
  {
    v233 = v217 & 0xFFFFFFFC;
    if (v233 < 1)
    {
      LODWORD(v234) = 0;
    }

    else
    {
      v234 = 0;
      v235 = a2->ltmComputeInput.averageLocalHist;
      v236 = v169;
      do
      {
        v237 = *(v235 + 1440);
        v238 = *v235;
        v235 += 4;
        *v236++ = vsubq_f32(v237, v238);
        v234 += 4;
      }

      while (v234 < v233);
    }

    if (v234 < v217)
    {
      v239 = v217 - v234;
      v240 = &a2->ltmComputeInput.averageLocalHist[v234];
      v241 = &v169[v234];
      do
      {
        v242 = v240[1440];
        v243 = *v240++;
        *v241++ = v242 - v243;
        --v239;
      }

      while (v239);
    }

    v244 = *(this + 6);
    if ((v244 & 0xFFFFFFF0) < 1)
    {
      LODWORD(v245) = 0;
    }

    else
    {
      v245 = 0;
      v246 = (this + 7656);
      v247 = (v169 + 8);
      do
      {
        v248 = v246[-2];
        v249 = v246[-1];
        v250 = *v246;
        v251 = v246[1];
        v246 += 4;
        v252 = vmulq_f32(v247[-2], v248);
        v253 = vmulq_f32(v247[-1], v249);
        v254 = vmulq_f32(*v247, v250);
        v255 = vmulq_f32(v247[1], v251);
        v247[-2] = v252;
        v247[-1] = v253;
        *v247 = v254;
        v247[1] = v255;
        v247 += 4;
        v245 += 16;
      }

      while (v245 < (v244 & 0xFFFFFFF0));
    }

    if (v245 < v244)
    {
      v256 = v244 - v245;
      v257 = (this + 4 * v245 + 7624);
      v258 = &v169[v245];
      do
      {
        v259 = *v257++;
        *v258 = *v258 * v259;
        ++v258;
        --v256;
      }

      while (v256);
    }

    v260 = (2 * v170);
    v261 = *(this + 6);
    if ((v261 & 0xFFFFFFFC) < 1)
    {
      LODWORD(v262) = 0;
    }

    else
    {
      v262 = 0;
      v263 = v169;
      do
      {
        v264 = *averageLocalHist;
        averageLocalHist += 4;
        *v263 = vaddq_f32(*v263, v264);
        ++v263;
        v262 += 4;
      }

      while (v262 < (v261 & 0xFFFFFFFC));
    }

    v265 = &v169[v260];
    if (v262 < v261)
    {
      v266 = v261 - v262;
      v267 = &a2->ltmComputeInput.averageLocalHist[v262];
      v268 = &v169[v262];
      do
      {
        v269 = *v267++;
        *v268 = *v268 + v269;
        ++v268;
        --v266;
      }

      while (v266);
    }

    v270 = *(this + 6);
    if ((v270 & 0xFFFFFFFC) < 1)
    {
      LODWORD(v271) = 0;
    }

    else
    {
      v271 = 0;
      v272 = (this + 8648);
      v273 = &v169[v260];
      do
      {
        v274 = v272[192];
        v275 = *v272++;
        *v273++ = vsubq_f32(v274, v275);
        v271 += 4;
      }

      while (v271 < (v270 & 0xFFFFFFFC));
    }

    if (v271 < v270)
    {
      v276 = v270 - v271;
      v277 = &v169[v260 + v271];
      v278 = (this + 4 * v271 + 8648);
      do
      {
        v279 = v278[768];
        v280 = *v278++;
        *v277++ = v279 - v280;
        --v276;
      }

      while (v276);
    }

    v281 = (3 * v170);
    v282 = *(this + 6);
    if ((v282 & 0xFFFFFFFC) < 1)
    {
      LODWORD(v283) = 0;
    }

    else
    {
      v283 = 0;
      v284 = &v169[v260];
      do
      {
        *v284 = vmaxq_f32(*v284, 0);
        ++v284;
        v283 += 4;
      }

      while (v283 < (v282 & 0xFFFFFFFC));
    }

    v285 = &v169[v281];
    if (v283 < v282)
    {
      v286 = v282 - v283;
      v287 = &v169[v260 + v283];
      do
      {
        v288 = *v287;
        if (*v287 < 0.0)
        {
          v288 = 0.0;
        }

        *v287++ = v288;
        --v286;
      }

      while (v286);
    }

    v289 = *(this + 5249);
    v290 = *(this + 6);
    if ((v290 & 0xFFFFFFFC) < 1)
    {
      LODWORD(v291) = 0;
    }

    else
    {
      v291 = 0;
      v292 = (this + 8648);
      v293 = &v169[v281];
      do
      {
        v294 = *v292++;
        v295 = v294;
        v296 = *v265++;
        *v293++ = vaddq_f32(vmulq_n_f32(v295, v289), vmulq_n_f32(v296, v289));
        v291 += 4;
      }

      while (v291 < (v290 & 0xFFFFFFFC));
    }

    if (v291 < v290)
    {
      v297 = &v169[v281 + v291];
      v298 = &v169[v260 + v291];
      v299 = (this + 4 * v291 + 8648);
      v300 = v290 - v291;
      do
      {
        v301 = *v299++;
        v302 = v301;
        v303 = *v298++;
        *v297++ = (v289 * v303) + (v302 * v289);
        --v300;
      }

      while (v300);
    }

    LTMComputeV2::LTMCompute::allocateTone(this, v401, 0, v169, *(this + 4), v403, (this + 4156), v399, *(this + 1135), *(this + 1136), *(this + 5239), v404, v285, this + 5235, this + 4978, 1, a3->ltmComputeMeta.gammaCurve == 1);
    CBVer = a3->ltmComputeMeta.CBVer;
  }

  *(v213 + 1) = 1;
  v304 = a2->ltmComputeInput.faceExposureRatio;
  v305 = *(*(this + 4) + 4);
  v306 = *(this + 5252);
  v307 = fmaxf(v304 + -1.0, 0.0);
  *(this + 5259) = fminf((v307 * v307) * 25.0, 4.0);
  if (CBVer == 1)
  {
    v308 = 0.0;
  }

  else
  {
    v308 = 0.5;
  }

  if (v213[3])
  {
    v309 = 0;
  }

  else
  {
    v213[3] = 1;
    v309 = (this + 46464);
  }

  v310 = *(this + 5243);
  v311 = *(this + 5258);
  v312 = *(this + 6);
  v313 = *(this + 5249);
  if ((v312 & 0xFFFFFFF8) < 1)
  {
    LODWORD(v314) = 0;
  }

  else
  {
    v314 = 0;
    v315 = v309 + 1;
    v316 = (this + 8664);
    do
    {
      v317 = vaddq_f32(vmulq_n_f32(*v316, v313), 0);
      v315[-1] = vaddq_f32(vmulq_n_f32(v316[-1], v313), 0);
      *v315 = v317;
      v314 += 8;
      v315 += 2;
      v316 += 2;
    }

    while (v314 < (v312 & 0xFFFFFFF8));
  }

  if (v314 < v312)
  {
    v318 = v312 - v314;
    v319 = &v309->f32[v314];
    v320 = (this + 4 * v314 + 8648);
    do
    {
      v321 = *v320++;
      *v319++ = (v321 * v313) + 0.0;
      --v318;
    }

    while (v318);
  }

  v322 = v304 * v304;
  v323 = *(this + 6);
  v324 = 1.0;
  if (a2->ltmComputeInput.thumbHistBlendingWeight > 0.00000011921)
  {
    if (v323)
    {
      v325 = 0.0;
      v326 = *(this + 6);
      v327 = v309;
      v328 = 0.0;
      do
      {
        v329 = *v82++;
        v328 = v328 + v329;
        v330 = *v327++;
        v325 = v325 + v330;
        --v326;
      }

      while (v326);
    }

    else
    {
      v328 = 0.0;
      v325 = 0.0;
    }

    v331 = v328 - v325;
    v332 = (v328 - v325) <= 0.001;
    v324 = 1.0;
    if (!v332)
    {
      v324 = fminf(fmaxf(v328 - *(this + 1037), 0.0) / v331, 1.0);
    }
  }

  v333 = v322 + -1.0;
  v334 = 1.0 - v324;
  v335 = v323 & 0xFFFFFFFC;
  if (v335 < 1)
  {
    LODWORD(v336) = 0;
    v338 = (this + 20988);
  }

  else
  {
    v336 = 0;
    v337 = v309;
    v338 = (this + 20988);
    do
    {
      v339 = *v85++;
      *v337 = vaddq_f32(vmulq_n_f32(*v337, v324), vmulq_n_f32(v339, v334));
      ++v337;
      v336 += 4;
    }

    while (v336 < v335);
  }

  v340 = fmaxf(v333, 0.0);
  if (v336 < v323)
  {
    v341 = v323 - v336;
    v342 = (this + 4 * v336 + 10696);
    v343 = &v309->f32[v336];
    do
    {
      v344 = *v342++;
      *v343 = (v334 * v344) + (*v343 * v324);
      ++v343;
      --v341;
    }

    while (v341);
  }

  v345 = v340 + 1.0;
  v346 = v305 - v306;
  v347 = this + 29520;
  *v348.i32 = powf(a2->ltmComputeInput.thumbHistBlendingWeight, 0.25);
  v349 = 1.0 - *v348.i32;
  v350 = *(this + 6);
  if ((v350 & 0xFFFFFFFC) < 1)
  {
    LODWORD(v351) = 0;
  }

  else
  {
    v351 = 0;
    v352 = v309;
    v353 = this;
    do
    {
      v354 = *v352++;
      *(v353 + 1845) = vaddq_f32(vmulq_n_f32(v354, *v348.i32), vmulq_n_f32(*(v353 + 10696), v349));
      v351 += 4;
      v353 = (v353 + 16);
    }

    while (v351 < (v350 & 0xFFFFFFFC));
  }

  if (v351 < v350)
  {
    v355 = v350 - v351;
    v356 = (this + 4 * v351);
    v357 = &v309->f32[v351];
    do
    {
      v358 = *v357++;
      v356[7380] = (v349 * v356[2674]) + (v358 * *v348.i32);
      ++v356;
      --v355;
    }

    while (v355);
  }

  if (a3->ltmComputeMeta.CBVer == 1)
  {
    v359 = *(this + 5249);
    if ((v350 & 0xFFFFFFF8) < 1)
    {
      LODWORD(v360) = 0;
    }

    else
    {
      v360 = 0;
      v361 = (v309 + 4 * v350 + 16);
      v362 = (this + 14808);
      do
      {
        v363 = vaddq_f32(vmulq_n_f32(*v362, v359), 0);
        v361[-1] = vaddq_f32(vmulq_n_f32(v362[-1], v359), 0);
        *v361 = v363;
        v360 += 8;
        v361 += 2;
        v362 += 2;
      }

      while (v360 < (v350 & 0xFFFFFFF8));
    }

    if (v360 < v350)
    {
      v364 = v350 - v360;
      v365 = &v309->f32[v350 + v360];
      v366 = (this + 4 * v360 + 14792);
      do
      {
        v367 = *v366++;
        *v365++ = (v367 * v359) + 0.0;
        --v364;
      }

      while (v364);
    }

    v368 = *(this + 6);
    if ((v368 & 0xFFFFFFFC) < 1)
    {
      LODWORD(v369) = 0;
    }

    else
    {
      v369 = 0;
      v370 = (this + 15816);
      v371 = &v347[4 * v312];
      v372 = (v309 + 4 * v350);
      do
      {
        v373 = *v370++;
        v374 = v373;
        v375 = *v372++;
        *v371++ = vaddq_f32(vmulq_n_f32(v374, v349), vmulq_n_f32(v375, *v348.i32));
        v369 += 4;
      }

      while (v369 < (v368 & 0xFFFFFFFC));
    }

    if (v369 < v368)
    {
      v376 = v368 - v369;
      v377 = &v309->f32[v350 + v369];
      v378 = (this + 4 * v369);
      do
      {
        v379 = *v377++;
        v378[v312 + 7380] = (*v348.i32 * v379) + (v378[3954] * v349);
        ++v378;
        --v376;
      }

      while (v376);
    }
  }

  *(this + 63409) = 0;
  *(this + 63411) = 0;
  *v348.i32 = v305 - (v346 / v345);
  LTMComputeV2::LTMCompute::LTCGridCalcAlgo(this, &a2->ltmComputeInput, &a3->ltmComputeMeta, v402, v348, this + 7380, &v347[4 * v312], v311, v401, v310 * v308, a2->ltmComputeInput.CBLowlightDampWeight);
  if (a3->ltmComputeMeta.CBVer == 1)
  {
    v381 = a2->ltmComputeInput.HFFDampWeight * 0.66;
    v382 = (*v338 + -2.0) * 0.5;
    v383 = v382 <= 0.0;
    v384 = v382 < 1.0 || v382 <= 0.0;
    if (v382 >= 1.0)
    {
      v383 = 1;
    }

    v385 = 0.0;
    if (!v384)
    {
      v385 = 1.0;
    }

    if (v383)
    {
      v382 = v385;
    }

    if (*(this + 16) == 1)
    {
      v386 = (*v338 * 0.25 + -2.0) * 0.5;
      v387 = v386 <= 0.0;
      v388 = v386 < 1.0 || v386 <= 0.0;
      if (v386 >= 1.0)
      {
        v387 = 1;
      }

      v389 = 0.0;
      if (!v388)
      {
        v389 = 1.0;
      }

      if (v387)
      {
        v386 = v389;
      }

      v380.n128_f64[0] = 1.0 - v386;
      v390 = v380.n128_f64[0];
    }

    else
    {
      v390 = 1.0 - v382;
    }

    v380.n128_f32[0] = a2->ltmComputeInput.HFFDampWeight * 0.66;
    LTMComputeV2::LTMCompute::levelSmoothHFFCB(this, v402->LTC, a2->ltmComputeInput.ltcGridScaleLogLumaThumb, a2->ltmComputeInput.fmapHFF, 12, 16, *(this + 5), v380);
    v392.n128_f32[0] = v381;
    LTMComputeV2::LTMCompute::levelSmoothHFFCB(this, v402->LTCBright, a2->ltmComputeInput.ltcGridScaleLogLumaThumb, a2->ltmComputeInput.fmapHFF, 12, 16, *(this + 5), v392);
    v393.n128_f32[0] = v390;
    LTMComputeV2::LTMCompute::applyCBBlending(this, v402->LTC, v402->LTCBright, v393, a2->ltmComputeInput.CBBrightMap, 2.5);
  }

  else
  {
    LTMComputeV2::LTMCompute::levelSmoothHFF(this, v402->LTC, a2->ltmComputeInput.ltcGridScaleLogLumaThumb, a2->ltmComputeInput.fmapHFF, 12, 16, *(this + 5));
  }

  if (a3->ltmComputeMeta.useDigitalFlash)
  {
    for (i = 0; i != 257; ++i)
    {
      v402->globalLUT[i] = powf(v402->globalLUT[i], 1.0 / *(this + 5242));
    }
  }

  LTMComputeV2::LTMCompute::computeRGBToneCurve(this, a2, v391, (this + 4156), v402);
  v395 = a3->ltmComputeMeta.gammaCurve;
  if (v395 == 2)
  {
    memcpy(v402->rgbToneCurve, LTMComputeV2::LTMCompute::globalCurveInputs, sizeof(v402->rgbToneCurve));
  }

  else
  {
    if (v395 != 1)
    {
      goto LABEL_336;
    }

    LTMComputeV2::LTMCompute::adaptForHLG(this, v402);
  }

  v402->rgbToneCurveInputMode = 0;
LABEL_336:
  v396 = a2->ltmComputeInput.exposureRatio;
  v402->encodedExpRatio = v396;
  if (a3->ltmComputeMeta.useDigitalFlash && a3->ltmComputeMeta.useGlobalCCM)
  {
    v402->midLuminance = fminf(a2->ltmComputeInput.luminanceRatio, 0.18) / v396;
  }
}