@interface DolbyVisionDM4
- (BOOL)GetPrimaries:(unsigned int)primaries Primaries:(int *)a4 Count:(int)count;
- (BOOL)hasDM4TonemapConfigChanged:(id *)changed TonemapConfig:(id *)config TCControl:(ToneCurve_Control *)control EdrAdaptationParam:(const _EdrAdaptationParam *)param AmbAdaptationParam:(const _AmbAdaptationParam *)adaptationParam;
- (float)applyL8Trim:(float)trim;
- (float)satMapI:(float)i Adm:(float)adm;
- (float)satMapS:(float)s;
- (float)toneMapS:(float)s;
- (id)init:(unint64_t)init;
- (int)BuildInterpInfo:(int)info Xa:(double *)xa Idxa:(int *)idxa TIdxMax:(int)max X2Interp:(double)interp Alpha:(double *)alpha U16a:(void *)u16a U16L:(void *)self0 U16R:(void *)self1 DmMetaData:(id *)self2;
- (int)DecodeL2L8:(id *)l8 CodeBias2:(id *)bias2 TrimData8:(id *)data8 CodeBias8:(id *)bias8 Default8:(id *)default8 UseDftLuma:(unsigned __int8)luma UseDftChroma:(unsigned __int8)chroma;
- (void)BuildChromaXInfo:(double)info TrimSetAct:(int)act Luma:(double *)luma Idxa:(int *)idxa IdxMax:(int *)max X2Interp:(double *)interp DmMetaData:(id *)data;
- (void)BuildLumaXInfo:(double)info TrimSetAct:(int)act Luma:(double *)luma Idxa:(int *)idxa IdxMax:(int *)max X2Interp:(double *)interp DmMetaData:(id *)data;
- (void)DmProcess:(int)process Height:(int)height bufI:(float *)i bufU:(float *)u bufV:(float *)v;
- (void)InputMapping:(float *)mapping pX1:(float *)x1 pX2:(float *)x2;
- (void)OutputMapping:(float *)mapping pX1:(float *)x1 pX2:(float *)x2;
- (void)SetL2L8L10:(id *)l10 TrimData8:(id *)data8 Default8:(id *)default8 UseDftLuma:(unsigned __int8)luma UseDftChroma:(unsigned __int8)chroma;
- (void)ToneMapping:(float *)mapping pX1:(float *)x1 pX2:(float *)x2 pAdm:(float *)adm;
- (void)ToneMappingInCtrl:(float *)ctrl pX1:(float *)x1 pX2:(float *)x2 pAdm:(float *)adm;
- (void)applyL3:(id *)l3 srcCrushPQ:(float *)q srcMidPQ:(float *)pQ srcClipPQ:(float *)clipPQ;
- (void)applyL9:(id *)l9;
- (void)calcToneMapParams;
- (void)calcToneMapParamsBrightAdapted;
- (void)calcToneMapParamsHDR10;
- (void)calcToneMapParamsRefWhiteBased:(float)based TgtRefWhiteNits:(float)nits;
- (void)calcToneMapParamsRefWhiteBasedStatic:(float)static TgtRefWhiteNits:(float)nits;
- (void)createTmLuts:(float *)luts tLutS:(float *)s sLutI:(float *)i sLutS:(float *)lutS tLutISize:(unint64_t)size tLutSSize:(unint64_t)sSize sLutISize:(unint64_t)iSize sLutSSize:(unint64_t)self0;
- (void)createTmLutsEx:(float *)ex tLutS:(float *)s sLutI:(float *)i sLutS:(float *)lutS tLutISize:(unint64_t)size tLutSSize:(unint64_t)sSize sLutISize:(unint64_t)iSize sLutSSize:(unint64_t)self0 config:(id *)self1 TmParam:(const _DoViTMParam *)self2 EdrAdaptationParam:(const _EdrAdaptationParam *)self3 AmbAdaptationParam:(const _AmbAdaptationParam *)self4 IsDoVi84:(BOOL)self5 HlgOOTFCombined:(BOOL)self6;
- (void)createToneCurve:(float)curve srcMaxPQ:(float)q tgtMinPQ:(float)pQ tgtMaxPQ:(float)maxPQ srcCrushPQ:(float)crushPQ srcMidPQ:(float)midPQ srcClipPQ:(float)clipPQ targetMaxLinear:(float)self0 DM_MetaData:(id *)self1 tcCtrl:(ToneCurve_Control *)self2 dm4TmMode:(int)self3;
- (void)dealloc;
- (void)dumpConfigData:(__sFILE *)data;
- (void)dumpConfigDataToFile:(int)file;
- (void)getDM4Params:(id *)params;
- (void)initBt1886Param;
- (void)initColorSpace:(unsigned int)space OutClrSpace:(unsigned int)clrSpace OutTrfFunction:(unsigned int)function;
- (void)initToneMapMatrices:(float *)matrices tgtRgb2LmsTm:(float *)tm;
- (void)initToneMapMatrices:(unsigned int)matrices outbits:(unsigned int)outbits srcRgb2LmsTm:(float *)tm tgtRgb2LmsTm:(float *)lmsTm;
- (void)initTrimData:(id *)data;
- (void)setPseudoTrimDataForHLG:(float)g;
- (void)updateDM4TonemapConfig:(id *)config DMConfig:(id *)mConfig TCControl:(ToneCurve_Control *)control EdrAdaptationParam:(const _EdrAdaptationParam *)param AmbAdaptationParam:(const _AmbAdaptationParam *)adaptationParam;
@end

@implementation DolbyVisionDM4

- (id)init:(unint64_t)init
{
  v15.receiver = self;
  v15.super_class = DolbyVisionDM4;
  v4 = [(DolbyVisionDM4 *)&v15 init];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  *(v4 + 170) = init;
  *(v4 + 219) = -1106788352;
  *(v4 + 844) = m33Lms2ItpDbl;
  *(v4 + 860) = unk_2508CF260;
  *(v4 + 228) = -1096537793;
  *(v4 + 55) = m33Itp2LmsDbl;
  *(v4 + 56) = unk_2508CF284;
  *(v4 + 201) = 1063469056;
  *(v4 + 772) = P3_Rgb2LMSDbl;
  *(v4 + 788) = unk_2508CF2A8;
  *(v4 + 210) = 1063682048;
  *(v4 + 808) = R2020_Rgb2LMSDbl;
  *(v4 + 824) = unk_2508CF2CC;
  *(v4 + 18) = 4;
  *(v4 + 120) = xmmword_2508CF090;
  *(v4 + 35) = 0;
  *(v4 + 104) = xmmword_2508CF0A0;
  *(v4 + 276) = xmmword_2508CF0B0;
  *(v4 + 292) = 0x3F8000003F800000;
  v6.f64[0] = 0.0000305175853;
  v6.f64[1] = 0.0000305175853;
  *(v4 + 436) = vnegq_f64(v6);
  *(v4 + 452) = 1056964608;
  *(v4 + 356) = 0u;
  *(v4 + 372) = 0u;
  *(v4 + 388) = 0u;
  *(v4 + 404) = 0u;
  *(v4 + 420) = 0u;
  v7 = *(v4 + 276);
  *(v4 + 612) = *(v4 + 292);
  *(v4 + 596) = v7;
  v8 = *(v4 + 436);
  *(v4 + 692) = *(v4 + 452);
  *(v4 + 676) = v8;
  *(v4 + 620) = 0;
  *(v4 + 700) = 0xBF000000BF000000;
  *(v4 + 644) = 0;
  *(v4 + 628) = 0u;
  memset_pattern16(v4 + 708, &unk_2508CF110, 0x18uLL);
  *(v5 + 668) = 0;
  *(v5 + 652) = 0u;
  memset_pattern16(v5 + 732, &unk_2508CF120, 0x18uLL);
  *(v5 + 1084) = xmmword_2508CF0C0;
  *(v5 + 275) = 15;
  *(v5 + 69) = 0u;
  *(v5 + 70) = 0u;
  *(v5 + 71) = 0u;
  *(v5 + 576) = 0;
  *(v5 + 1156) = xmmword_2508CF0C0;
  *(v5 + 293) = 15;
  *(v5 + 1176) = 0u;
  *(v5 + 1192) = 0u;
  *(v5 + 1208) = 0u;
  *(v5 + 612) = 0;
  v9 = malloc_type_calloc(init, 4uLL, 0x100004052888210uLL);
  *(v5 + 171) = v9;
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = malloc_type_calloc(init, 4uLL, 0x100004052888210uLL);
  *(v5 + 172) = v10;
  if (v10 && (v11 = malloc_type_calloc(init, 4uLL, 0x100004052888210uLL), (*(v5 + 173) = v11) != 0) && (v12 = malloc_type_calloc(init, 4uLL, 0x100004052888210uLL), (*(v5 + 174) = v12) != 0))
  {
    v13 = v5;
  }

  else
  {
LABEL_7:
    v13 = 0;
  }

  return v13;
}

- (void)dealloc
{
  tmLutI = self->tmLutI;
  if (tmLutI)
  {
    free(tmLutI);
    self->tmLutI = 0;
  }

  tmLutS = self->tmLutS;
  if (tmLutS)
  {
    free(tmLutS);
    self->tmLutS = 0;
  }

  smLutI = self->smLutI;
  if (smLutI)
  {
    free(smLutI);
    self->smLutI = 0;
  }

  smLutS = self->smLutS;
  if (smLutS)
  {
    free(smLutS);
    self->smLutS = 0;
  }

  v7.receiver = self;
  v7.super_class = DolbyVisionDM4;
  [(DolbyVisionDM4 *)&v7 dealloc];
}

- (void)initBt1886Param
{
  tMaxPq = self->tMaxPq;
  v4 = tMaxPq < 0.00000073096;
  if (tMaxPq < 0.00000073096)
  {
    tMaxPq = -(tMaxPq + -0.0000014619);
  }

  v5 = 10000.0;
  if (v4)
  {
    v6 = -10000.0;
  }

  else
  {
    v6 = 10000.0;
  }

  v7 = pow(tMaxPq, 0.0126833133);
  v8 = fmax(((v7 + -0.83594) / ((v7 * -18.688) + 18.852)), 0.0);
  v9 = v6 * powf(v8, 6.2774);
  self->bt1886Param.Lw = v9;
  tMinPq = self->tMinPq;
  if (tMinPq < 0.00000073096)
  {
    tMinPq = -(tMinPq + -0.0000014619);
    v5 = -10000.0;
  }

  v11 = pow(tMinPq, 0.0126833133);
  v12 = fmax(((v11 + -0.83594) / ((v11 * -18.688) + 18.852)), 0.0);
  v13 = v5 * powf(v12, 6.2774);
  self->bt1886Param.Lb = v13;
  self->bt1886Param.gamma = 2.4;
  self->bt1886Param.gammaR = 0.41667;
  v14 = powf(v9, 0.41667);
  v15 = powf(v13, 0.41667);
  v16 = powf(v14 - v15, 2.4);
  self->bt1886Param.a = v16;
  v17 = 1.0 / v16;
  self->bt1886Param.aR = v17;
  self->bt1886Param.b = powf(v13 * v17, 0.41667);
}

- (void)applyL3:(id *)l3 srcCrushPQ:(float *)q srcMidPQ:(float *)pQ srcClipPQ:(float *)clipPQ
{
  if (l3 && l3->var23.var0)
  {
    v6 = vcvtd_n_f64_u32(l3->var23.var1, 0xBuLL) + -1.0;
    v7 = vcvtd_n_f64_u32(l3->var23.var2, 0xBuLL) + -1.0;
    self->pqOffset.min_PQ_offset = v6;
    self->pqOffset.max_PQ_offset = v7;
    v8 = vcvtd_n_f64_u32(l3->var23.var3, 0xBuLL) + -1.0;
  }

  else
  {
    *&self->pqOffset.min_PQ_offset = 0;
    v8 = 0.0;
    v6 = 0.0;
  }

  self->pqOffset.avg_PQ_offset = v8;
  *q = v6 + *q;
  *pQ = self->pqOffset.avg_PQ_offset + *pQ;
  *clipPQ = self->pqOffset.max_PQ_offset + *clipPQ;
}

- (void)applyL9:(id *)l9
{
  v34 = *MEMORY[0x277D85DE8];
  if (l9 && l9->var28.var0)
  {
    var2 = l9->var28.var2;
    self->inputSurface.primariesScale2P = 26;
    if (var2 <= 0x12)
    {
      v9 = (&V8PrimartTbl + 32 * var2);
    }

    else
    {
      var4 = l9->var28.var4;
      v30.i32[0] = l9->var28.var3;
      v30.i32[1] = var4;
      v32.i64[0] = __PAIR64__(var4, v30.u32[0]);
      var6 = l9->var28.var6;
      v30.i32[2] = l9->var28.var5;
      v30.i32[3] = var6;
      v32.i64[1] = __PAIR64__(var6, v30.u32[2]);
      var8 = l9->var28.var8;
      v31.i32[0] = l9->var28.var7;
      v31.i32[1] = var8;
      v33.i64[0] = __PAIR64__(var8, v31.u32[0]);
      var10 = l9->var28.var10;
      v31.i32[2] = l9->var28.var9;
      v31.i32[3] = var10;
      v33.i64[1] = __PAIR64__(var10, v31.u32[2]);
      self->inputSurface.primariesScale2P = 15;
      v9 = &v32;
      v32 = vshlq_n_s32(v32, 0xBuLL);
      v33 = vshlq_n_s32(v33, 0xBuLL);
    }
  }

  else
  {
    v9 = &v32;
    [(DolbyVisionDM4 *)self GetPrimaries:self->inputSurface.colorPrimaries Primaries:&v32 Count:8];
    self->inputSurface.primariesScale2P = 26;
  }

  Rgb2LmsByV8PrimsM33Fxp = GetRgb2LmsByV8PrimsM33Fxp(v9->i32, v27);
  m33Rgb2Lms = self->inputSurface.m33Rgb2Lms;
  self->inputSurface.m33Rgb2LmsScale2P = APPLY_CT2RIGHT(v27, Rgb2LmsByV8PrimsM33Fxp, 1311, self->inputSurface.m33Rgb2Lms);
  v12 = &v28;
  [(DolbyVisionDM4 *)self GetPrimaries:self->outputSurface.colorPrimaries Primaries:&v28 Count:8];
  if (self->outputSurface.primariesScale2P <= 25)
  {
    v13 = vdupq_n_s32(26 - self->inputSurface.primariesScale2P);
    v30 = vshlq_u32(v28, v13);
    v31 = vshlq_u32(v29, v13);
    v12 = &v30;
  }

  v14 = GetRgb2LmsByV8PrimsM33Fxp(v12->i32, v27);
  v15 = APPLY_CT2RIGHT(v27, v14, 1311, self->outputSurface.m33Rgb2Lms);
  v16 = 0;
  v17 = 0;
  self->outputSurface.m33Rgb2LmsScale2P = v15;
  v18 = v9[1];
  *self->inputSurface.primaries = *v9;
  v19 = v29;
  *self->outputSurface.primaries = v28;
  *&self->outputSurface.primaries[4] = v19;
  v20 = (1 << self->inputSurface.m33Rgb2LmsScale2P);
  *&self->inputSurface.primaries[4] = v18;
  do
  {
    v21 = m33Rgb2Lms;
    v22 = v16;
    v23 = 3;
    do
    {
      *&v26[v22] = *v21 / v20;
      *&v25[v22] = (*v21)[36] / (1 << v15);
      v22 += 4;
      v21 = (v21 + 2);
      --v23;
    }

    while (v23);
    ++v17;
    v16 += 12;
    ++m33Rgb2Lms;
  }

  while (v17 != 3);
  [(DolbyVisionDM4 *)self initToneMapMatrices:v26 tgtRgb2LmsTm:v25];
  v24 = *MEMORY[0x277D85DE8];
}

- (void)BuildLumaXInfo:(double)info TrimSetAct:(int)act Luma:(double *)luma Idxa:(int *)idxa IdxMax:(int *)max X2Interp:(double *)interp DmMetaData:(id *)data
{
  v11 = 0;
  v12 = 0;
  v39 = *MEMORY[0x277D85DE8];
  *max = 0;
  *interp = 0.0;
  do
  {
    if (act == 1)
    {
      v13 = &data->var27[v12];
      if (!v13->var0)
      {
        goto LABEL_23;
      }

      var2 = v13->var2;
      if (var2 <= 0x31)
      {
        v15 = DisplayIdxTbl[var2];
        if (v15)
        {
          v16 = v11;
          v9 = vcvtd_n_f64_s32(*(v15 + 12), 6uLL);
          goto LABEL_16;
        }
      }

      v18 = 4;
      p_var3 = &data->var29[0].var3;
      while (!*(p_var3 - 3) || *(p_var3 - 2) != var2)
      {
        p_var3 += 14;
        if (!--v18)
        {
          goto LABEL_23;
        }
      }

      LOWORD(v9) = *p_var3;
    }

    else
    {
      v17 = &data->var22[v12];
      if (!v17->var0)
      {
        goto LABEL_23;
      }

      LOWORD(v9) = v17->var1;
    }

    v9 = *&v9;
    v16 = v11;
LABEL_16:
    luma[v11] = v9;
    if (v9 >= 1015.0)
    {
      v9 = v9 * info;
      v20 = (v9 & 0xFFFFFF00) + 256;
      v21 = (v9 + 128) & 0xFFFFFF00;
      if (v11 < 1)
      {
LABEL_22:
        v37[v16] = v20;
        v38[v16] = v21;
        idxa[v16] = v12;
        v11 = *max + 1;
        *max = v11;
      }

      else
      {
        v22 = v11;
        v23 = v37;
        v24 = v38;
        while (1)
        {
          v25 = *v24++;
          if (v21 == v25 || v20 == *v23)
          {
            break;
          }

          ++v23;
          if (!--v22)
          {
            goto LABEL_22;
          }
        }
      }
    }

LABEL_23:
    ++v12;
  }

  while (v12 != 5);
  v26 = (self->sMaxPq * 4095.0);
  luma[v11] = v26;
  if (v11 < 1)
  {
LABEL_29:
    idxa[v11] = data->var20;
  }

  else
  {
    v27 = v26 * info;
    v28 = v11;
    v29 = v37;
    v30 = v38;
    while (1)
    {
      v31 = *v30++;
      if (((v27 + 128) & 0xFFFFFF00) == v31 || (v27 & 0xFFFFFF00) + 256 == *v29)
      {
        break;
      }

      ++v29;
      if (!--v28)
      {
        goto LABEL_29;
      }
    }

    *max = v11 - 1;
  }

  tMaxLinear = self->tMaxLinear;
  if (tMaxLinear >= 0.0)
  {
    v35 = powf(tMaxLinear * 0.0001, 0.1593);
    v34 = powf(((v35 * 18.852) + 0.83594) / ((v35 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v33 = powf(tMaxLinear * -0.0001, 0.1593);
    v34 = 0.0000014619 - powf(((v33 * 18.852) + 0.83594) / ((v33 * 18.688) + 1.0), 78.844);
  }

  *interp = (v34 * 4095.0);
  v36 = *MEMORY[0x277D85DE8];
}

- (BOOL)GetPrimaries:(unsigned int)primaries Primaries:(int *)a4 Count:(int)count
{
  if (count >= 8)
  {
    v5 = primaries == 12;
    *a4 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v5)), 0x1FuLL)), xmmword_2508CF0E0, xmmword_2508CF0D0);
    *(a4 + 2) = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v5), 0x1FuLL)), 0x3D70A30099999ALL, 0x2F1A9F008624DDLL);
    *(a4 + 3) = 0x150E5600140346ELL;
  }

  return count > 7;
}

- (void)BuildChromaXInfo:(double)info TrimSetAct:(int)act Luma:(double *)luma Idxa:(int *)idxa IdxMax:(int *)max X2Interp:(double *)interp DmMetaData:(id *)data
{
  idxaCopy2 = idxa;
  v14 = 0;
  v79 = *MEMORY[0x277D85DE8];
  v77 = 0;
  memset(v76, 0, sizeof(v76));
  v75 = 0;
  var22 = data->var22;
  var27 = data->var27;
  p_var6 = &data->var29[0].var6;
  memset(v74, 0, sizeof(v74));
  *max = 0;
  *interp = 0.0;
  do
  {
    if (act != 1)
    {
      v24 = &var22[v14];
      if (!v24->var0)
      {
        goto LABEL_34;
      }

      var1 = v24->var1;
      if (var1 < 0x3F7)
      {
        goto LABEL_34;
      }

      v26 = var1 / 4095.0;
      v27 = v26;
      v28 = v27 < 0.00000073096;
      if (v27 < 0.00000073096)
      {
        v27 = -(v27 + -0.0000014619);
      }

      v29 = flt_2508CD850[v28];
      v30 = powf(v27, 0.012683);
      v31 = fmax(((v30 + -0.83594) / ((v30 * -18.688) + 18.852)), 0.0);
      v32 = powf(v31, 6.2774);
      ChromaDist = FindChromaDist(dword_2508CE850, (v29 * v32), v26);
      goto LABEL_28;
    }

    v17 = &var27[v14];
    if (!v17->var0)
    {
      goto LABEL_34;
    }

    var2 = v17->var2;
    if (var2 <= 0x31)
    {
      v19 = DisplayIdxTbl[var2];
      if (v19)
      {
        v20 = v19[3];
        if (v20 < 1015)
        {
          goto LABEL_34;
        }

        v21 = v19[4];
        if (v21 <= 0x12)
        {
          v22 = (&V8PrimartTbl + 32 * v21);
        }

        else
        {
          v22 = 0;
        }

        ChromaDist = FindChromaDist(v22, v19[2], v20);
        goto LABEL_28;
      }
    }

    v33 = 4;
    v34 = p_var6;
    while (!v34[-1].i16[2] || v34[-1].u8[8] != var2)
    {
      v34 = (v34 + 28);
      if (!--v33)
      {
        goto LABEL_34;
      }
    }

    v35 = v34[-1].u16[5];
    if (v35 >= 0x3F7)
    {
      v36 = vcvts_n_f32_u32(v35, 0xCuLL);
      v37 = v36 < 0.00000073096;
      if (v36 < 0.00000073096)
      {
        v36 = -(v36 + -0.0000014619);
      }

      v38 = powf(v36, 0.012683);
      v39 = fmax(((v38 + -0.83594) / ((v38 * -18.688) + 18.852)), 0.0);
      v40 = powf(v39, 6.2774);
      v41 = v34[-1].u8[14];
      if (v41 < 0x13)
      {
        v43 = (&V8PrimartTbl + 32 * v41);
      }

      else
      {
        v42 = vshll_high_n_s16(*v34, 0xBuLL);
        v78[0] = vshll_n_s16(*v34->i8, 0xBuLL);
        v78[1] = v42;
        v43 = v78;
      }

      ChromaDist = FindChromaDist(v43, vcvts_n_u32_f32(flt_2508CD850[v37] * v40, 0x12uLL), v35 << 6);
      idxaCopy2 = idxa;
LABEL_28:
      v44 = *max;
      luma[v44] = ChromaDist;
      v45 = ChromaDist * info;
      v46 = (v45 & 0xFFFFFF00) + 256;
      v47 = (v45 + 128) & 0xFFFFFF00;
      if (v44 < 1)
      {
LABEL_33:
        *(v74 + v44) = v46;
        *(v76 + v44) = v47;
        idxaCopy2[v44] = v14;
        ++*max;
      }

      else
      {
        v48 = v74;
        v49 = v76;
        v50 = v44;
        while (1)
        {
          v51 = *v49++;
          if (v47 == v51 || v46 == *v48)
          {
            break;
          }

          ++v48;
          if (!--v50)
          {
            goto LABEL_33;
          }
        }
      }
    }

LABEL_34:
    ++v14;
  }

  while (v14 != 5);
  sMaxTm = self->sMaxTm;
  v53 = vcvts_n_u32_f32(sMaxTm, 0x12uLL);
  if (sMaxTm <= 10000.0)
  {
    v54 = v53;
  }

  else
  {
    v54 = -1673527296;
  }

  v55 = FindChromaDist(self->inputSurface.primaries, v54, vcvts_n_s32_f32(self->sMaxPqTm, 0x12uLL));
  v56 = *max;
  luma[v56] = v55;
  if (v56 < 1)
  {
LABEL_43:
    idxa[v56] = data->var20;
  }

  else
  {
    v57 = v55 * info;
    v58 = v74;
    v59 = v76;
    v60 = v56;
    while (1)
    {
      v61 = *v59++;
      if (((v57 + 128) & 0xFFFFFF00) == v61 || (v57 & 0xFFFFFF00) + 256 == *v58)
      {
        break;
      }

      ++v58;
      if (!--v60)
      {
        goto LABEL_43;
      }
    }

    *max = v56 - 1;
  }

  tMaxLinear = self->tMaxLinear;
  if (tMaxLinear >= 0.0)
  {
    v65 = powf(tMaxLinear * 0.0001, 0.1593);
    v64 = powf(((v65 * 18.852) + 0.83594) / ((v65 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v63 = powf(tMaxLinear * -0.0001, 0.1593);
    v64 = 0.0000014619 - powf(((v63 * 18.852) + 0.83594) / ((v63 * 18.688) + 1.0), 78.844);
  }

  v66 = vcvts_n_u32_f32(tMaxLinear, 0x12uLL);
  if (tMaxLinear <= 10000.0)
  {
    v67 = v66;
  }

  else
  {
    v67 = -1673527296;
  }

  *interp = FindChromaDist(self->outputSurface.primaries, v67, vcvts_n_s32_f32(v64, 0x12uLL));
  v68 = *MEMORY[0x277D85DE8];
}

- (int)BuildInterpInfo:(int)info Xa:(double *)xa Idxa:(int *)idxa TIdxMax:(int)max X2Interp:(double)interp Alpha:(double *)alpha U16a:(void *)u16a U16L:(void *)self0 U16R:(void *)self1 DmMetaData:(id *)self2
{
  SortAscend(xa, idxa, max);
  if (max && *xa <= interp)
  {
    v21 = (max & ~(max >> 31)) + 1;
    v22 = xa + 1;
    v20 = -1;
    v23 = max & ~(max >> 31);
    while (v23)
    {
      v24 = *v22++;
      ++v20;
      --v23;
      if (v24 > interp)
      {
        v21 = v20 + 1;
        goto LABEL_9;
      }
    }

    v20 = max & ~(max >> 31);
LABEL_9:
    if (v21 > max)
    {
      v21 = v20;
    }
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  if (info == 1)
  {
    v32 = idxa[v20];
    v33 = idxa[v21];
    var20 = data->var20;
    u16aCopy = &data->var27[v33];
    if (v33 == var20)
    {
      u16aCopy = u16a;
    }

    v36 = v32 == var20;
    if (v32 == var20)
    {
      u16aCopy2 = u16a;
    }

    else
    {
      u16aCopy2 = &data->var27[v32];
    }

    *l = u16aCopy2;
    *r = u16aCopy;
    if (!v36 && v33 != var20)
    {
      goto LABEL_39;
    }

    if (v21 != v20)
    {
      v39 = vsubq_f32(*&self->default8.trimSlope, *&self->codeBias8.trimSlope);
      v40 = vsubq_f32(*&self->default8.trimSaturationGain, *&self->codeBias8.trimSaturationGain);
      v55.val[1] = vcvt_hight_f64_f32(v40);
      v55.val[2] = vcvt_hight_f64_f32(v39);
      v55.val[3] = vdupq_n_s64(0x40B0000000000000uLL);
      __asm { FMOV            V5.2D, #0.5 }

      v45 = vmlaq_f64(_Q5, v55.val[3], vcvtq_f64_f32(*v39.f32));
      v46 = vmlaq_f64(_Q5, xmmword_2508CF0F0, vcvtq_f64_f32(*v40.f32));
      v47 = vmlaq_f64(_Q5, v55.val[3], v55.val[2]);
      v55.val[0] = vcvtq_s64_f64(vmlaq_f64(_Q5, v55.val[3], v55.val[1]));
      *v55.val[3].i8 = vmovn_s64(v55.val[0]);
      *v55.val[1].i8 = vmovn_s64(vcvtq_s64_f64(v47));
      *v55.val[2].i8 = vmovn_s64(vcvtq_s64_f64(v46));
      *v55.val[0].i8 = vmovn_s64(vcvtq_s64_f64(v45));
      *(u16a + 6) = vqtbl4q_s8(v55, xmmword_2508CF100);
      v48 = u16a + 22;
      hueVector = self->codeBias8.hueVector;
      v50 = 6;
      do
      {
        *v48 = ((*(hueVector - 26) - *(hueVector - 6)) * 128.0 + 0.5);
        v51 = *(hueVector - 20);
        v52 = *hueVector++;
        v48[6] = ((v51 - v52) * 256.0 + 0.5);
        ++v48;
        --v50;
      }

      while (v50);
    }

LABEL_38:
    result = 1;
    goto LABEL_40;
  }

  if (!info)
  {
    v25 = idxa[v20];
    var19 = data->var19;
    v27 = idxa[v21];
    u16aCopy3 = &data->var22[v27];
    if (v27 == var19)
    {
      u16aCopy3 = u16a;
    }

    _ZF = v25 == var19;
    v30 = v25 == var19 ? u16a : &data->var22[v25];
    *l = v30;
    *r = u16aCopy3;
    if (_ZF || v27 == var19)
    {
      if (v21 != v20)
      {
        *(u16a + 2) = ((((self->default8.trimSlope - self->codeBias8.trimSlope) * 4096.0) + -2048.0) * 2.0 + 2048.0 + 0.5);
        *(u16a + 3) = ((((self->default8.trimOffset - self->codeBias8.trimOffset) * 4096.0) + -2048.0) * 2.0 + 2048.0 + 0.5);
        *(u16a + 4) = ((((self->default8.trimPower - self->codeBias8.trimPower) * 4096.0) + -2048.0) * 2.0 + 2048.0 + 0.5);
        *(u16a + 5) = (((self->default8.trimChromaWeight - self->codeBias8.trimChromaWeight) * 4096.0) + 0.5);
        *(u16a + 6) = (((self->default8.trimSaturationGain - self->codeBias8.trimSaturationGain) * 4096.0) + 0.5);
        *(u16a + 7) = ((self->default8.msWeight - self->codeBias8.msWeight) * 2048.0 + 0.5);
      }

      goto LABEL_38;
    }
  }

LABEL_39:
  result = 0;
LABEL_40:
  v54 = 0.0;
  if (v20 != v21)
  {
    v54 = (interp - xa[v20]) / (xa[v21] - xa[v20]);
  }

  *alpha = v54;
  return result;
}

- (int)DecodeL2L8:(id *)l8 CodeBias2:(id *)bias2 TrimData8:(id *)data8 CodeBias8:(id *)bias8 Default8:(id *)default8 UseDftLuma:(unsigned __int8)luma UseDftChroma:(unsigned __int8)chroma
{
  if (self->dmAlgVerInCm > 3)
  {
    if (luma)
    {
      if (chroma)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v14 = data8->var0 * 0.000244140625 + bias8->var0;
      v15 = data8->var1 * 0.000244140625 + bias8->var1;
      v16 = data8->var2 * 0.000244140625 + bias8->var2;
      data8->var5 = (data8->var5 * 0.00048828) + bias8->var5;
      *&data8->var6 = vcvt_f32_f64(vaddq_f64(vmulq_f64(vcvtq_f64_f32(*&data8->var6), vdupq_n_s64(0x3F30000000000000uLL)), vcvtq_f64_f32(*&bias8->var6)));
      data8->var0 = ((v14 + -1.0) * 2.0) + 1.0;
      data8->var1 = v15 + v15;
      data8->var2 = ((v16 + -1.0) * 2.0) + 1.0;
      if (chroma)
      {
        goto LABEL_15;
      }
    }

    *&data8->var3 = vcvt_f32_f64(vaddq_f64(vmulq_f64(vcvtq_f64_f32(*&data8->var3), vdupq_n_s64(0x3F30000000000000uLL)), vcvtq_f64_f32(*&bias8->var3)));
    var8 = bias8->var8;
    var9 = data8->var9;
    v19 = 6;
    do
    {
      v20 = *(var9 - 6) * 0.0078125 + *var8;
      *(var9 - 6) = v20;
      v21 = *var9 * 0.00390625 + var8[6];
      *var9++ = v21;
      ++var8;
      --v19;
    }

    while (v19);
  }

  else
  {
    if (luma)
    {
      if (chroma)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *&data8->var0 = *&l8->var0;
      v9 = l8->var2 * 0.000244140625 + bias2->var2;
      data8->var2 = v9;
      data8->var5 = (l8->var5 * 0.00048828) + bias2->var5;
      *&data8->var6 = *&default8->var6;
      if (chroma)
      {
        goto LABEL_15;
      }
    }

    *&data8->var3 = vadd_f32(vmul_f32(*&l8->var3, vdup_n_s32(0x39800000u)), *&bias2->var3);
    v10 = data8->var8;
    v11 = default8->var9;
    v12 = 6;
    do
    {
      *v10 = *(v11 - 6);
      v13 = *v11++;
      *(v10++ + 6) = v13;
      --v12;
    }

    while (v12);
  }

LABEL_15:
  if (luma)
  {
    if (chroma)
    {
      goto LABEL_17;
    }

LABEL_34:
    data8->var4 = data8->var4 + self->satGainAdj;
    goto LABEL_17;
  }

  v23 = 0.0;
  v24 = 2.0;
  var1 = data8->var1;
  if (data8->var0 <= 2.0)
  {
    var0 = data8->var0;
  }

  else
  {
    var0 = 2.0;
  }

  if (data8->var0 >= 0.0)
  {
    v27 = var0;
  }

  else
  {
    v27 = 0.0;
  }

  v28 = 1.0;
  if (var1 <= 1.0)
  {
    v28 = data8->var1;
  }

  if (var1 >= -1.0)
  {
    v29 = v28;
  }

  else
  {
    v29 = -1.0;
  }

  data8->var1 = v29;
  var2 = data8->var2;
  if (var2 <= 2.0)
  {
    v24 = data8->var2;
  }

  if (var2 >= 0.0)
  {
    v23 = v24;
  }

  data8->var0 = v27 + self->slopeAdj;
  data8->var2 = v23 + self->powerAdj;
  data8->var6 = data8->var6 + self->tMidContrastAdj;
  if (!chroma)
  {
    goto LABEL_34;
  }

LABEL_17:
  ClampL8(&data8->var0);
  return 0;
}

- (void)SetL2L8L10:(id *)l10 TrimData8:(id *)data8 Default8:(id *)default8 UseDftLuma:(unsigned __int8)luma UseDftChroma:(unsigned __int8)chroma
{
  if (luma)
  {
    var0 = default8->var0;
    var1 = default8->var1;
    var2 = default8->var2;
    var6 = default8->var6;
    data8->var5 = default8->var5;
    data8->var7 = default8->var7;
    v11 = -1.0;
    v12 = 1.0;
    v13 = ((var0 + -1.0) * 2.0) + 1.0;
    v14 = var1 + var1;
    v15 = ((var2 + -1.0) * 2.0) + 1.0;
    v16 = 0.0;
    v17 = 0.0;
    if (v13 >= 0.0)
    {
      v17 = 2.0;
      if (v13 <= 2.0)
      {
        v17 = v13;
      }
    }

    if (v14 <= 1.0)
    {
      v12 = v14;
    }

    if (v14 >= -1.0)
    {
      v11 = v12;
    }

    data8->var1 = v11;
    if (v15 >= 0.0)
    {
      v16 = 2.0;
      if (v15 <= 2.0)
      {
        v16 = v15;
      }
    }

    data8->var0 = v17 + self->slopeAdj;
    data8->var2 = v16 + self->powerAdj;
    data8->var6 = var6 + self->tMidContrastAdj;
  }

  if (chroma)
  {
    var4 = default8->var4;
    data8->var3 = default8->var3;
    data8->var4 = var4;
    var8 = data8->var8;
    var9 = default8->var9;
    v21 = 6;
    do
    {
      *var8 = *(var9 - 6);
      v22 = *var9++;
      *(var8++ + 6) = v22;
      --v21;
    }

    while (v21);
    data8->var4 = var4 + self->satGainAdj;
  }

  ClampL8(&data8->var0);
}

- (void)initTrimData:(id *)data
{
  v57 = *MEMORY[0x277D85DE8];
  if (self->dmAlgVerInCm < 4)
  {
    v53 = 0;
    v51 = 0.0;
    v52 = 0.0;
    v49 = 0;
    v50 = 0;
    [(DolbyVisionDM4 *)self BuildLumaXInfo:0 TrimSetAct:v54 Luma:v55 Idxa:&v53 IdxMax:&v52 X2Interp:data DmMetaData:64.0156288];
    v19 = [(DolbyVisionDM4 *)self BuildInterpInfo:0 Xa:v54 Idxa:v55 TIdxMax:v53 X2Interp:&v51 Alpha:v56 U16a:v52 U16L:&v50 U16R:&v49 DmMetaData:data];
    if (v50 == v49 && v19)
    {
      [(DolbyVisionDM4 *)self BuildChromaXInfo:0 TrimSetAct:v54 Luma:v55 Idxa:&v53 IdxMax:&v52 X2Interp:data DmMetaData:1.0];
      v20 = [(DolbyVisionDM4 *)self BuildInterpInfo:0 Xa:v54 Idxa:v55 TIdxMax:v53 X2Interp:&v51 Alpha:v56 U16a:v52 U16L:&v50 U16R:&v49 DmMetaData:data];
      v24 = v49;
      v23 = v50;
      v12 = 1;
      if (v50 == v49)
      {
        v18 = 1;
        if (v20)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      InterpLumaTrim2(v50, v49, v56, &self->trimData2, v51);
      [(DolbyVisionDM4 *)self BuildChromaXInfo:0 TrimSetAct:v54 Luma:v55 Idxa:&v53 IdxMax:&v52 X2Interp:data DmMetaData:1.0];
      v30 = [(DolbyVisionDM4 *)self BuildInterpInfo:0 Xa:v54 Idxa:v55 TIdxMax:v53 X2Interp:&v51 Alpha:v56 U16a:v52 U16L:&v50 U16R:&v49 DmMetaData:data];
      v12 = 0;
      v24 = v49;
      v23 = v50;
      if (v50 == v49 && v30)
      {
        v18 = 1;
        goto LABEL_23;
      }
    }

    v18 = 0;
    v31 = v51;
    LOWORD(v21) = v23[5];
    v32 = v21;
    LOWORD(v22) = v24[5];
    *&v33 = v22 - v32;
    v34 = v32 + *&v33 * v51;
    *&v34 = v34;
    self->trimData2.trimChromaWeight = *&v34;
    LOWORD(v34) = v23[6];
    LOWORD(v33) = v24[6];
    *&v31 = *&v34 + (v33 - *&v34) * v31;
    self->trimData2.trimSaturationGain = *&v31;
    goto LABEL_23;
  }

  v5 = &DisplayTbl;
  v6 = 7;
  do
  {
    DisplayIdxTbl[*v5] = v5;
    v5 += 10;
    --v6;
  }

  while (v6);
  v53 = 0;
  v51 = 0.0;
  v52 = 0.0;
  v49 = 0;
  v50 = 0;
  [(DolbyVisionDM4 *)self BuildLumaXInfo:1 TrimSetAct:v54 Luma:v56 Idxa:&v53 IdxMax:&v52 X2Interp:data DmMetaData:64.0156288];
  v8 = [(DolbyVisionDM4 *)self BuildInterpInfo:1 Xa:v54 Idxa:v56 TIdxMax:v53 X2Interp:&v51 Alpha:v55 U16a:v52 U16L:&v50 U16R:&v49 DmMetaData:data];
  if (v50 != v49 || !v8)
  {
    InterpLumaTrim8(v50, v49, v51, v9, v10, v11, v7, &self->trimData8);
    v18 = 1;
    [(DolbyVisionDM4 *)self BuildChromaXInfo:1 TrimSetAct:v54 Luma:v56 Idxa:&v53 IdxMax:&v52 X2Interp:data DmMetaData:1.0];
    v26 = [(DolbyVisionDM4 *)self BuildInterpInfo:1 Xa:v54 Idxa:v56 TIdxMax:v53 X2Interp:&v51 Alpha:v55 U16a:v52 U16L:&v50 U16R:&v49 DmMetaData:data];
    if (v50 == v49 && v26)
    {
      v12 = 0;
      goto LABEL_23;
    }

    InterpChromaTrim8(v50, v49, v51, v27, v28, v29, v25, &self->trimData8.trimSlope);
    v12 = 0;
    goto LABEL_22;
  }

  v12 = 1;
  [(DolbyVisionDM4 *)self BuildChromaXInfo:1 TrimSetAct:v54 Luma:v56 Idxa:&v53 IdxMax:&v52 X2Interp:data DmMetaData:1.0];
  v14 = [(DolbyVisionDM4 *)self BuildInterpInfo:1 Xa:v54 Idxa:v56 TIdxMax:v53 X2Interp:&v51 Alpha:v55 U16a:v52 U16L:&v50 U16R:&v49 DmMetaData:data];
  if (v50 != v49 || (v18 = 1, !v14))
  {
    InterpChromaTrim8(v50, v49, v51, v15, v16, v17, v13, &self->trimData8.trimSlope);
LABEL_22:
    v18 = 0;
  }

LABEL_23:
  LOBYTE(v48) = v18;
  [(DolbyVisionDM4 *)self DecodeL2L8:&self->trimData2 CodeBias2:&self->codeBias2 TrimData8:&self->trimData8 CodeBias8:&self->codeBias8 Default8:&self->default8 UseDftLuma:v12 UseDftChroma:v48];
  if (v18 | v12)
  {
    [(DolbyVisionDM4 *)self SetL2L8L10:&self->trimData2 TrimData8:&self->trimData8 Default8:&self->default8 UseDftLuma:v12 UseDftChroma:v18];
  }

  sMidPq = self->sMidPq;
  if (sMidPq >= 0.000244200244)
  {
    if (sMidPq > 0.9997558)
    {
      sMidPq = 0.99976;
    }
  }

  else
  {
    sMidPq = 0.0002442;
  }

  clipTrim = self->trimData8.clipTrim;
  sClipPq = self->sClipPq;
  self->sMidPq = sMidPq;
  sCrushPq = self->sCrushPq;
  if (sCrushPq >= 0.0)
  {
    v39 = sMidPq;
    if (v39 + -0.000244200244 < sCrushPq)
    {
      sCrushPq = v39 + -0.000244200244;
    }
  }

  else
  {
    v39 = sMidPq;
    sCrushPq = 0.0;
  }

  v40 = clipTrim + sClipPq;
  self->sCrushPq = sCrushPq;
  v41 = v40;
  v42 = v39 + 0.000244200244;
  if (v40 >= 1.0)
  {
    v40 = 1.0;
  }

  if (v42 <= v41)
  {
    v44 = v40;
  }

  else
  {
    v43 = v42;
    v44 = v43;
  }

  self->sClipPq = v44;
  v45 = *&self->trimData8.trimSlope;
  *&self->trimData.trimSaturationGain = *&self->trimData8.trimSaturationGain;
  v46 = *&self->trimData8.saturationVector[4];
  *self->trimData.saturationVector = *self->trimData8.saturationVector;
  *&self->trimData.saturationVector[4] = v46;
  *&self->trimData.hueVector[2] = *&self->trimData8.hueVector[2];
  *&self->trimData.trimSlope = v45;
  v47 = *MEMORY[0x277D85DE8];
}

- (void)setPseudoTrimDataForHLG:(float)g
{
  v3 = (self->codeBias8.trimSlope + 0.600097656 + -1.0) * 2.0 + 1.0;
  trimPower = self->codeBias8.trimPower;
  v5 = (trimPower + 0.5390625 + -1.0) * 2.0 + 1.0;
  if (g <= 0.90256)
  {
    if (g <= 0.75189)
    {
      v5 = (trimPower + 0.463867188 + -1.0) * 2.0 + 1.0;
      if (g <= 0.6525)
      {
        self->trimData.trimSlope = 1.0;
      }

      else
      {
        v7 = (g + -0.6525) / 0.099389;
        self->trimData.trimSlope = (v7 * 0.0) + 1.0;
        v5 = v5 + ((1.0 - v5) * v7);
      }
    }

    else
    {
      v6 = (g + -0.75189) / 0.15067;
      self->trimData.trimSlope = ((v3 + -1.0) * v6) + 1.0;
      v5 = ((v5 + -1.0) * v6) + 1.0;
    }
  }

  else
  {
    self->trimData.trimSlope = v3;
  }

  self->trimData.trimPower = v5;
  self->trimData.trimOffset = 0.0;
}

- (void)initToneMapMatrices:(float *)matrices tgtRgb2LmsTm:(float *)tm
{
  if (matrices)
  {
    v4 = *matrices;
    v5 = *(matrices + 1);
    self->SRGB2LMS_TM[2][2] = matrices[8];
    *&self->SRGB2LMS_TM[0][0] = v4;
    *&self->SRGB2LMS_TM[1][1] = v5;
  }

  if (tm)
  {
    v6 = *tm;
    v7 = *(tm + 1);
    self->TRGB2LMS_TM[2][2] = tm[8];
    *&self->TRGB2LMS_TM[0][0] = v6;
    *&self->TRGB2LMS_TM[1][1] = v7;
  }
}

- (void)initToneMapMatrices:(unsigned int)matrices outbits:(unsigned int)outbits srcRgb2LmsTm:(float *)tm tgtRgb2LmsTm:(float *)lmsTm
{
  if (tm)
  {
    v6 = *tm;
    v7 = *(tm + 1);
    self->SRGB2LMS_TM[2][2] = tm[8];
    *&self->SRGB2LMS_TM[0][0] = v6;
    *&self->SRGB2LMS_TM[1][1] = v7;
  }

  if (lmsTm)
  {
    v8 = *lmsTm;
    v9 = *(lmsTm + 1);
    self->TRGB2LMS_TM[2][2] = lmsTm[8];
    *&self->TRGB2LMS_TM[0][0] = v8;
    *&self->TRGB2LMS_TM[1][1] = v9;
  }

  v10 = vadd_s32(vdup_n_s32(matrices), -8);
  v11 = vshl_u32(0x100000010, v10);
  self->Yuv2RgbOffset[2] = v11.u32[1];
  *self->Yuv2RgbOffset = v11;
  v12 = ~(-1 << matrices);
  self->inputRange = v12;
  v13 = ~(-1 << outbits);
  self->outputRange = v13;
  *v11.i32 = v12;
  v14 = vdiv_f32(vdup_lane_s32(v11, 0), vcvt_f32_s32(vshl_u32(0xE0000000DBLL, vdup_lane_s32(v10, 0))));
  v15 = &dword_2508CF2E8;
  v16 = 3;
  YUV2RGB = self->YUV2RGB;
  do
  {
    *YUV2RGB = vmul_f32(v14, *(v15 - 2));
    v18 = *v15;
    v15 += 3;
    YUV2RGB[1].f32[0] = v14.f32[1] * v18;
    YUV2RGB = (YUV2RGB + 12);
    --v16;
  }

  while (v16);
  self->YUV2RGB[2][2] = 0.0;
  *&self->YUV2RGB[0][0] = xmmword_2508CF304;
  *&self->YUV2RGB[1][1] = unk_2508CF314;
  self->RGB2LMS[2][2] = 0.88773;
  *&self->RGB2LMS[0][0] = xmmword_2508CF328;
  *&self->RGB2LMS[1][1] = unk_2508CF338;
  self->LMS2RGB[2][2] = 1.2765;
  *&self->LMS2RGB[0][0] = xmmword_2508CF34C;
  *&self->LMS2RGB[1][1] = unk_2508CF35C;
  v19 = &dword_2508CF37C;
  v20 = 3;
  v21 = self->RGB2YUV[0];
  v22 = v13 / (224 << (outbits - 8));
  do
  {
    *v21 = *(v19 - 3) / (v13 / (219 << (outbits - 8)));
    v21[3] = *v19 / v22;
    v21[6] = v19[3] / v22;
    ++v21;
    ++v19;
    --v20;
  }

  while (v20);
  self->RGB2YUV[2][2] = -0.040124;
  *&self->RGB2YUV[0][0] = xmmword_2508CF394;
  *&self->RGB2YUV[1][1] = unk_2508CF3A4;
  self->Rgb2YuvOffset[0] = 16 << (outbits - 8);
  v23 = 1 << (outbits - 1);
  self->Rgb2YuvOffset[1] = v23;
  self->Rgb2YuvOffset[2] = v23;
}

- (void)initColorSpace:(unsigned int)space OutClrSpace:(unsigned int)clrSpace OutTrfFunction:(unsigned int)function
{
  self->inputSurface.colorSpace = space;
  self->outputSurface.colorSpace = clrSpace;
  self->outputSurface.transferFunction = function;
}

- (float)satMapI:(float)i Adm:(float)adm
{
  v4 = 0.0;
  if (adm < 0.0)
  {
    adm = 0.0;
  }

  iCopy = i;
  if (i > 0.00610500611)
  {
    v4 = 1.0;
    if (iCopy < 0.21978022)
    {
      v6 = (iCopy + -0.00610500611) / -0.213675214;
      v4 = 1.0 - ((v6 + 1.0) * (v6 + 1.0));
    }
  }

  v7 = adm + -1.0;
  if (adm < 0.000244200244)
  {
    v7 = -0.99976;
  }

  v8 = ((v7 * v7) * v7) + 1.0;
  if (iCopy < 0.000244200244)
  {
    v9 = -0.99976;
  }

  else
  {
    v9 = i + -1.0;
  }

  v10 = v8 / (((v9 * v9) * v9) + 1.0);
  if ((1.0 / v10) >= v4)
  {
    v4 = 1.0;
    if ((1.0 / v10) <= 1.0)
    {
      v4 = 1.0 / v10;
    }
  }

  v11 = fmax((adm - self->tCrushPq), 0.000244200244) / fmax((self->tCrushPq - self->sCrushPq), 0.000244200244);
  v12 = fminf(v11, 1.0);
  if (v12 < 1.0)
  {
    v13 = -1.0;
  }

  else
  {
    v13 = 1.0;
  }

  return fminf(self->trimData.trimSaturationGain * (((v13 * ((v12 + -1.0) * (v12 + -1.0))) + 1.0) * (v10 * v4)), 2.0);
}

- (float)toneMapS:(float)s
{
  v3 = 2.0;
  if (s <= 2.0)
  {
    sCopy = s;
  }

  else
  {
    sCopy = 2.0;
  }

  v5 = s < 0.0;
  result = 0.0;
  if (v5)
  {
    sCopy = 0.0;
  }

  v7 = sqrtf(sCopy);
  v8 = fminf(self->clipIPred2TmIRatio, 1.0);
  if ((((v8 + -1.0) * ((v7 / self->clipSat) * ((v7 / self->clipSat) * (v7 / self->clipSat)))) + 1.0) >= v8)
  {
    v8 = ((v8 + -1.0) * ((v7 / self->clipSat) * ((v7 / self->clipSat) * (v7 / self->clipSat)))) + 1.0;
  }

  v9 = (((self->trimData.trimChromaWeight * 4.0) * v7) + 1.0) * fminf(v8, 1.0);
  if (v9 <= 2.0)
  {
    v3 = v9;
  }

  if (v9 >= 0.0)
  {
    return v3;
  }

  return result;
}

- (float)satMapS:(float)s
{
  v3 = 2.0;
  if (s <= 2.0)
  {
    sCopy = s;
  }

  else
  {
    sCopy = 2.0;
  }

  v5 = s < 0.0;
  result = 0.0;
  if (v5)
  {
    sCopy = 0.0;
  }

  v7 = sqrtf(sCopy);
  v8 = fminf(self->clipSatPred2SmISatRatio, 1.0);
  if ((((v8 + -1.0) * ((v7 / self->clipSat) * ((v7 / self->clipSat) * (v7 / self->clipSat)))) + 1.0) >= v8)
  {
    v8 = ((v8 + -1.0) * ((v7 / self->clipSat) * ((v7 / self->clipSat) * (v7 / self->clipSat)))) + 1.0;
  }

  v9 = (((self->trimData.trimChromaWeight * 3.0) * v7) + 1.0) * fminf(v8, 1.0);
  if (v9 <= 2.0)
  {
    v3 = v9;
  }

  if (v9 >= 0.0)
  {
    return v3;
  }

  return result;
}

- (void)calcToneMapParams
{
  v64 = *MEMORY[0x277D85DE8];
  *&v2 = self->sMidPq;
  HIDWORD(v4) = 1060110592;
  if (*&v2 >= 0.000244200244)
  {
    if (*&v2 > 0.9997558)
    {
      LODWORD(v2) = 1065349119;
    }
  }

  else
  {
    LODWORD(v2) = 964691969;
  }

  sCrushPq = self->sCrushPq;
  if (sCrushPq >= 0.0)
  {
    v6 = *&v2;
    v7 = *&v2 + -0.000244200244;
    if (v7 < sCrushPq)
    {
      sCrushPq = v7;
    }
  }

  else
  {
    v6 = *&v2;
    sCrushPq = 0.0;
  }

  sClipPq = self->sClipPq;
  v9 = sClipPq;
  v10 = v6 + 0.000244200244;
  if (sClipPq >= 1.0)
  {
    sClipPq = 1.0;
  }

  if (v10 <= v9)
  {
    *&v9 = sClipPq;
  }

  else
  {
    v11 = v10;
    *&v9 = v11;
  }

  *&v4 = self->tMinPq;
  v12 = *&v9;
  v13 = *&v2;
  v14 = sCrushPq;
  v60 = sCrushPq;
  v15 = deriveTmidPq(v2, sCrushPq, v9, v4, self->tMaxPq);
  tMinPq = self->tMinPq;
  tMaxPq = self->tMaxPq;
  v18 = tMaxPq + -0.000244200244;
  if (v18 >= v15)
  {
    v18 = v15;
  }

  if (tMinPq + 0.000244200244 <= v15)
  {
    v19 = v18;
  }

  else
  {
    v19 = tMinPq + 0.000244200244;
  }

  v20 = v19;
  self->tMidPq = v20;
  if ((v20 - (v13 - v14)) >= tMinPq)
  {
    tMinPq = v20 - (v13 - v14);
  }

  self->tCrushPq = tMinPq;
  v59 = v12;
  if (((v12 - v13) + v20) <= tMaxPq)
  {
    tMaxPq = (v12 - v13) + v20;
  }

  self->tClipPq = tMaxPq;
  v21 = (v20 - tMinPq) / (v13 - v14);
  v22 = (tMaxPq - v20) / (v12 - v13);
  v23 = self->trimData.targetMidContrast + ((v20 - v13) + 1.0);
  if ((v21 * 3.0) > (v22 * 3.0))
  {
    v24 = v22 * 3.0;
  }

  else
  {
    v24 = v21 * 3.0;
  }

  if (v23 <= v24)
  {
    v24 = v23;
  }

  v25 = v23 <= 0.0;
  v26 = 0.0;
  if (!v25)
  {
    v26 = v24;
  }

  self->midSlope = v26;
  v27 = v21 * v21;
  if ((v21 * v21) > (v21 * 3.0))
  {
    v27 = v21 * 3.0;
  }

  self->crushSlope = v27;
  v28 = fminf(v22 * v22, 1.0);
  if (v28 > (v22 * 3.0))
  {
    v28 = v22 * 3.0;
  }

  self->clipSlope = v28;
  v29 = fminf(v12, 1.0);
  v30 = v29 < 0.00000073096;
  if (v29 < 0.00000073096)
  {
    v29 = -(v29 + -0.0000014619);
  }

  v31 = -10000.0;
  if (v30)
  {
    v32 = -10000.0;
  }

  else
  {
    v32 = 10000.0;
  }

  v33 = pow(v29, 0.0126833133);
  v34 = fmax(((v33 + -0.83594) / ((v33 * -18.688) + 18.852)), 0.0);
  v35 = powf(v34, 6.2774);
  RgbLinear2Itp(fmaxf(v32 * v35, 5.0), 0.0, 0.0, self->SRGB2LMS_TM, self->LMS2ITP, &v61);
  v37 = v61;
  v36 = v62;
  self->clipI = v61;
  self->clipSat = sqrtf((v63 * v63) + (v36 * v36));
  v38 = fminf(self->tMaxPqTm, 1.0);
  if (v38 >= 0.00000073096)
  {
    v31 = 10000.0;
  }

  else
  {
    v38 = -(v38 + -0.0000014619);
  }

  v39 = pow(v38, 0.0126833133);
  v40 = fmax(((v39 + -0.83594) / ((v39 * -18.688) + 18.852)), 0.0);
  v41 = powf(v40, 6.2774);
  RgbLinear2Itp(fmaxf(v31 * v41, 5.0), 0.0, 0.0, self->TRGB2LMS_TM, self->LMS2ITP, &v61);
  v42 = v62;
  self->clipIPred = v61;
  self->clipSatPred = sqrtf((v63 * v63) + (v42 * v42));
  self->sCrushPq = v60;
  self->sMidPq = v13;
  self->sClipPq = v59;
  *&v43 = v37;
  [(DolbyVisionDM4 *)self toneMapInterpI:v43];
  *&v45 = v44;
  self->clipTmI = v44;
  *&v46 = self->clipI;
  [(DolbyVisionDM4 *)self satMapI:v46 Adm:v45];
  self->clipSmI = v47;
  clipSat = self->clipSat;
  v49 = self->clipSatPred / fmax((v47 * clipSat), 0.000244200244);
  self->clipSatPred2SmISatRatio = v49;
  clipTmI = self->clipTmI;
  if (clipTmI < 0.000244200244)
  {
    clipTmI = 0.0002442;
  }

  self->clipTmI = clipTmI;
  self->clipIPred2TmIRatio = self->clipIPred / clipTmI;
  if (clipSat >= 0.000244200244)
  {
    v51 = clipSat;
  }

  else
  {
    v51 = 0.0002442;
  }

  self->clipSat = v51;
  calcCubicSplineParam(self->cLow, self->sCrushPq, self->tCrushPq, self->crushSlope, self->sMidPq, self->tMidPq, self->midSlope);
  calcCubicSplineParam(self->cHigh, self->sMidPq, self->tMidPq, self->midSlope, self->sClipPq, self->tClipPq, self->clipSlope);
  v52 = self->sCrushPq;
  tCrushPq = self->tCrushPq;
  crushSlope = self->crushSlope;
  self->mLow = crushSlope;
  self->bLow = tCrushPq - (v52 * crushSlope);
  v55 = self->sClipPq;
  tClipPq = self->tClipPq;
  clipSlope = self->clipSlope;
  self->mHigh = clipSlope;
  self->bHigh = tClipPq - (v55 * clipSlope);
  v58 = *MEMORY[0x277D85DE8];
}

- (void)calcToneMapParamsHDR10
{
  sMidPq = self->sMidPq;
  if (sMidPq >= 0.000244200244)
  {
    if (sMidPq > 0.9997558)
    {
      sMidPq = 0.99976;
    }
  }

  else
  {
    sMidPq = 0.0002442;
  }

  sCrushPq = self->sCrushPq;
  if (sCrushPq >= 0.0)
  {
    v6 = sMidPq;
    v7 = sMidPq + -0.000244200244;
    if (v7 < sCrushPq)
    {
      sCrushPq = v7;
    }
  }

  else
  {
    v6 = sMidPq;
    sCrushPq = 0.0;
  }

  sClipPq = self->sClipPq;
  v9 = sClipPq;
  v10 = v6 + 0.000244200244;
  if (sClipPq >= 1.0)
  {
    sClipPq = 1.0;
  }

  if (v10 <= v9)
  {
    v12 = sClipPq;
  }

  else
  {
    v11 = v10;
    v12 = v11;
  }

  tMinPq = self->tMinPq;
  tMaxPq = self->tMaxPq;
  v15 = tMaxPq - tMinPq;
  v16 = 1.0 - ((tMaxPq - tMinPq) / (v12 - sCrushPq));
  v17 = v16 * 0.1;
  if (v16 >= 0.0)
  {
    v18 = v16 * 0.1;
    v19 = v18;
  }

  else
  {
    v19 = 0.0;
  }

  v20 = tMinPq + (v15 / 3.0);
  v21 = v15 + v15;
  if (sCrushPq > tMinPq)
  {
    v22 = self->tMinPq;
  }

  else
  {
    v22 = sCrushPq;
  }

  if (v12 < tMaxPq)
  {
    v23 = self->tMaxPq;
  }

  else
  {
    v23 = v12;
  }

  if ((tMinPq + 0.02) > v20)
  {
    *&v17 = tMinPq + (v15 / 3.0);
  }

  else
  {
    *&v17 = tMinPq + 0.02;
  }

  if ((tMaxPq - v19) < v20)
  {
    v24 = tMinPq + (v15 / 3.0);
  }

  else
  {
    v24 = tMaxPq - v19;
  }

  v25 = (v20 - *&v17) / (v20 - v22);
  v26 = fminf(v25 * 3.0, 1.0);
  v27 = fminf(((v24 - v20) / (v23 - v20)) * 3.0, 1.0);
  if (v21 > v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = v21;
  }

  if (v28 > v27)
  {
    v28 = v27;
  }

  if (v20 >= sMidPq)
  {
    v29 = v25 * v25;
    if (v29 > v26)
    {
      *&v2 = v26;
    }

    else
    {
      *&v2 = v29;
    }

    *&v10 = sMidPq;
    v23 = v20;
  }

  else
  {
    *&v10 = sMidPq;
    v22 = v20;
    *&v17 = v20;
    *&v2 = v28;
  }

  cubicSplineInterp(v10, v22, v17, v2, v23);
  v31 = v12 - sMidPq;
  if ((tMaxPq - v30) <= (v12 - sMidPq))
  {
    v32 = v30;
  }

  else
  {
    v32 = tMaxPq - (v12 - sMidPq);
  }

  v33 = sMidPq - sCrushPq;
  if ((v30 - tMinPq) > (sMidPq - sCrushPq))
  {
    v30 = (sMidPq - sCrushPq) + tMinPq;
  }

  if (v32 >= sMidPq)
  {
    v32 = sMidPq;
  }

  if (v30 <= sMidPq)
  {
    v30 = sMidPq;
  }

  v34 = ((v32 + v30) - sMidPq);
  v35 = self->tMinPq;
  v36 = self->tMaxPq;
  v37 = v36 + -0.000244200244;
  if (v37 >= v34)
  {
    v37 = v34;
  }

  if (v35 + 0.000244200244 <= v34)
  {
    v38 = v37;
  }

  else
  {
    v38 = v35 + 0.000244200244;
  }

  v39 = v38;
  self->tMidPq = v39;
  if ((v39 - v33) >= v35)
  {
    v35 = v39 - v33;
  }

  self->tCrushPq = v35;
  v40 = v31 + v39;
  if ((v31 + v39) > v36)
  {
    v40 = v36;
  }

  self->tClipPq = v40;
  v41 = (v39 - v35) / v33;
  v42 = (v40 - v39) / v31;
  v43 = v42 * 3.0;
  v44 = (v41 + v42) * 0.5;
  if ((v41 * 3.0) > (v42 * 3.0))
  {
    v45 = v42 * 3.0;
  }

  else
  {
    v45 = v41 * 3.0;
  }

  if (v44 <= v45)
  {
    v45 = (v41 + v42) * 0.5;
  }

  if (v44 <= 0.0)
  {
    v45 = 0.0;
  }

  self->midSlope = v45;
  v46 = v41 * v41;
  if ((v41 * v41) > (v41 * 3.0))
  {
    v46 = v41 * 3.0;
  }

  self->crushSlope = v46;
  v47 = fminf(v42 * v42, 1.0);
  if (v47 > v43)
  {
    v47 = v43;
  }

  self->clipSlope = v47;
  self->sCrushPq = sCrushPq;
  self->sMidPq = sMidPq;
  self->sClipPq = v12;
  calcCubicSplineParam(self->cLow, sCrushPq, v35, v46, sMidPq, v39, v45);
  calcCubicSplineParam(self->cHigh, self->sMidPq, self->tMidPq, self->midSlope, self->sClipPq, self->tClipPq, self->clipSlope);
  v48 = self->sCrushPq;
  tCrushPq = self->tCrushPq;
  crushSlope = self->crushSlope;
  self->mLow = crushSlope;
  self->bLow = tCrushPq - (v48 * crushSlope);
  v51 = self->sClipPq;
  tClipPq = self->tClipPq;
  clipSlope = self->clipSlope;
  self->mHigh = clipSlope;
  self->bHigh = tClipPq - (v51 * clipSlope);
}

- (void)calcToneMapParamsBrightAdapted
{
  v68 = *MEMORY[0x277D85DE8];
  sMidPq = self->sMidPq;
  HIDWORD(v4) = 1060110592;
  if (sMidPq >= 0.000244200244)
  {
    if (sMidPq > 0.9997558)
    {
      sMidPq = 0.99976;
    }
  }

  else
  {
    sMidPq = 0.0002442;
  }

  sCrushPq = self->sCrushPq;
  if (sCrushPq >= 0.0)
  {
    v6 = sMidPq;
    v7 = sMidPq + -0.000244200244;
    if (v7 < sCrushPq)
    {
      sCrushPq = v7;
    }
  }

  else
  {
    v6 = sMidPq;
    sCrushPq = 0.0;
  }

  sClipPq = self->sClipPq;
  v9 = sClipPq;
  v10 = v6 + 0.000244200244;
  if (sClipPq >= 1.0)
  {
    sClipPq = 1.0;
  }

  if (v10 <= v9)
  {
    *&v9 = sClipPq;
  }

  else
  {
    v11 = v10;
    *&v9 = v11;
  }

  *&v4 = self->tMinPq;
  *&v10 = sMidPq;
  v12 = *&v9;
  v13 = sCrushPq;
  v64 = sCrushPq;
  v14 = deriveTmidPq(v10, sCrushPq, v9, v4, self->tMaxPq);
  tMinPq = self->tMinPq;
  tMaxPq = self->tMaxPq;
  v17 = tMaxPq + -0.000244200244;
  if (v17 >= v14)
  {
    v17 = v14;
  }

  if (tMinPq + 0.000244200244 <= v14)
  {
    v18 = v17;
  }

  else
  {
    v18 = tMinPq + 0.000244200244;
  }

  v19 = v18;
  self->tMidPq = v19;
  if ((v19 - (sMidPq - v13)) >= tMinPq)
  {
    tMinPq = v19 - (sMidPq - v13);
  }

  self->tCrushPq = tMinPq;
  if (((v12 - sMidPq) + v19) <= tMaxPq)
  {
    tMaxPq = (v12 - sMidPq) + v19;
  }

  self->tClipPq = tMaxPq;
  v20 = (v19 - tMinPq) / (sMidPq - v13);
  v21 = (tMaxPq - v19) / (v12 - sMidPq);
  v22 = v20 * 3.0;
  v23 = v21 * 3.0;
  v24 = self->trimData.targetMidContrast + ((v19 - sMidPq) + 1.0);
  v25 = ((sMidPq + -0.35) * -0.66667) + 1.0;
  if (v25 <= 1.0)
  {
    v26 = ((sMidPq + -0.35) * -0.66667) + 1.0;
  }

  else
  {
    v26 = 1.0;
  }

  if (v25 >= 0.8)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0.8;
  }

  v28 = v27 * v24;
  if (v22 > v23)
  {
    v29 = v21 * 3.0;
  }

  else
  {
    v29 = v20 * 3.0;
  }

  if (v28 <= v29)
  {
    v29 = v28;
  }

  v30 = v28 <= 0.0;
  v31 = 0.0;
  if (!v30)
  {
    v31 = v29;
  }

  self->midSlope = v31;
  v32 = ((v20 * v20) * 0.3) + 0.7;
  if (v32 > v22)
  {
    v32 = v20 * 3.0;
  }

  self->crushSlope = v32;
  v33 = fminf(v21 * v21, 1.0);
  if (v33 > v23)
  {
    v33 = v21 * 3.0;
  }

  self->clipSlope = v33;
  v34 = fminf(v12, 1.0);
  v35 = v34 < 0.00000073096;
  if (v34 < 0.00000073096)
  {
    v34 = -(v34 + -0.0000014619);
  }

  v36 = -10000.0;
  if (v35)
  {
    v37 = -10000.0;
  }

  else
  {
    v37 = 10000.0;
  }

  v38 = pow(v34, 0.0126833133);
  v39 = fmax(((v38 + -0.83594) / ((v38 * -18.688) + 18.852)), 0.0);
  v40 = powf(v39, 6.2774);
  RgbLinear2Itp(fmaxf(v37 * v40, 5.0), 0.0, 0.0, self->SRGB2LMS_TM, self->LMS2ITP, &v65);
  v42 = v65;
  v41 = v66;
  self->clipI = v65;
  self->clipSat = sqrtf((v67 * v67) + (v41 * v41));
  v43 = fminf(self->tMaxPqTm, 1.0);
  if (v43 >= 0.00000073096)
  {
    v36 = 10000.0;
  }

  else
  {
    v43 = -(v43 + -0.0000014619);
  }

  v44 = pow(v43, 0.0126833133);
  v45 = fmax(((v44 + -0.83594) / ((v44 * -18.688) + 18.852)), 0.0);
  v46 = powf(v45, 6.2774);
  RgbLinear2Itp(fmaxf(v36 * v46, 5.0), 0.0, 0.0, self->TRGB2LMS_TM, self->LMS2ITP, &v65);
  v47 = v66;
  self->clipIPred = v65;
  self->clipSatPred = sqrtf((v67 * v67) + (v47 * v47));
  self->sCrushPq = v64;
  self->sMidPq = sMidPq;
  self->sClipPq = v12;
  *&v48 = v42;
  [(DolbyVisionDM4 *)self toneMapInterpI:v48];
  *&v50 = v49;
  self->clipTmI = v49;
  *&v51 = self->clipI;
  [(DolbyVisionDM4 *)self satMapI:v51 Adm:v50];
  self->clipSmI = v52;
  clipSat = self->clipSat;
  v54 = self->clipSatPred / fmax((v52 * clipSat), 0.000244200244);
  self->clipSatPred2SmISatRatio = v54;
  clipTmI = self->clipTmI;
  if (clipTmI < 0.000244200244)
  {
    clipTmI = 0.0002442;
  }

  self->clipTmI = clipTmI;
  self->clipIPred2TmIRatio = self->clipIPred / clipTmI;
  if (clipSat >= 0.000244200244)
  {
    v56 = clipSat;
  }

  else
  {
    v56 = 0.0002442;
  }

  self->clipSat = v56;
  calcCubicSplineParam(self->cLow, self->sCrushPq, self->tCrushPq, self->crushSlope, self->sMidPq, self->tMidPq, self->midSlope);
  calcCubicSplineParam(self->cHigh, self->sMidPq, self->tMidPq, self->midSlope, self->sClipPq, self->tClipPq, self->clipSlope);
  v57 = self->sCrushPq;
  tCrushPq = self->tCrushPq;
  crushSlope = self->crushSlope;
  self->mLow = crushSlope;
  self->bLow = tCrushPq - (v57 * crushSlope);
  v60 = self->sClipPq;
  tClipPq = self->tClipPq;
  clipSlope = self->clipSlope;
  self->mHigh = clipSlope;
  self->bHigh = tClipPq - (v60 * clipSlope);
  v63 = *MEMORY[0x277D85DE8];
}

- (void)calcToneMapParamsRefWhiteBased:(float)based TgtRefWhiteNits:(float)nits
{
  v110 = *MEMORY[0x277D85DE8];
  sMidPq = self->sMidPq;
  if (sMidPq >= 0.000244200244)
  {
    if (sMidPq > 0.9997558)
    {
      sMidPq = 0.99976;
    }
  }

  else
  {
    sMidPq = 0.0002442;
  }

  sCrushPq = self->sCrushPq;
  if (sCrushPq >= 0.0)
  {
    v7 = sMidPq;
    v8 = sMidPq + -0.000244200244;
    if (v8 < sCrushPq)
    {
      sCrushPq = v8;
    }
  }

  else
  {
    v7 = sMidPq;
    sCrushPq = 0.0;
  }

  sClipPq = self->sClipPq;
  v10 = sClipPq;
  v11 = v7 + 0.000244200244;
  if (sClipPq >= 1.0)
  {
    sClipPq = 1.0;
  }

  if (v11 <= v10)
  {
    v12 = sClipPq;
  }

  else
  {
    v12 = v11;
  }

  tMinPq = self->tMinPq;
  tMaxPq = self->tMaxPq;
  if (GetConfig())
  {
    Config = GetConfig();
    v19 = *HDRConfig::GetConfigEntryValue(Config, 0x11Cu, 0);
  }

  else
  {
    v19 = 0;
  }

  *&v15 = sMidPq;
  v105 = v12;
  *&v16 = v12;
  *&v17 = tMinPq;
  mapMid(v15, sCrushPq, v16, v17, tMaxPq);
  v100 = v20;
  v21 = -(sCrushPq + -0.0000014619);
  v106 = sCrushPq;
  if (sCrushPq >= 0.00000073096)
  {
    v21 = sCrushPq;
  }

  v22 = -10000.0;
  if (sCrushPq >= 0.00000073096)
  {
    v23 = 10000.0;
  }

  else
  {
    v23 = -10000.0;
  }

  v103 = v23;
  v24 = powf(v21, 0.012683);
  v25 = fmax(((v24 + -0.83594) / ((v24 * -18.688) + 18.852)), 0.0);
  v99 = v103 * powf(v25, 6.2774);
  v26 = -(sMidPq + -0.0000014619);
  if (sMidPq < 0.00000073096)
  {
    v27 = -10000.0;
  }

  else
  {
    v26 = sMidPq;
    v27 = 10000.0;
  }

  v104 = v27;
  v28 = powf(v26, 0.012683);
  v29 = fmax(((v28 + -0.83594) / ((v28 * -18.688) + 18.852)), 0.0);
  v98 = v104 * powf(v29, 6.2774);
  v30 = -(tMinPq + -0.0000014619);
  if (tMinPq >= 0.00000073096)
  {
    v30 = tMinPq;
    v22 = 10000.0;
  }

  v31 = powf(v30, 0.012683);
  v32 = fmax(((v31 + -0.83594) / ((v31 * -18.688) + 18.852)), 0.0);
  v33 = powf(v32, 6.2774);
  v34 = (v22 * v33) + (((v98 - v99) * (nits - (v22 * v33))) / (based - v99));
  if (v34 >= 0.0)
  {
    v37 = powf(v34 * 0.0001, 0.1593);
    v36 = powf(((v37 * 18.852) + 0.83594) / ((v37 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v35 = powf(v34 * -0.0001, 0.1593);
    v36 = 0.0000014619 - powf(((v35 * 18.852) + 0.83594) / ((v35 * 18.688) + 1.0), 78.844);
  }

  if (GetConfig())
  {
    v38 = GetConfig();
    v39 = *HDRConfig::GetConfigEntryValue(v38, 0x10Bu, 0);
  }

  else
  {
    v39 = 0.0;
  }

  v40 = (v36 * v39) + (1.0 - v39) * v100;
  v41 = v105 - sMidPq;
  if (v19)
  {
    v42 = tMaxPq - v41;
    if ((tMaxPq - v40) <= v41)
    {
      v42 = v40;
    }

    v43 = sMidPq - sCrushPq;
    if ((v40 - tMinPq) > (sMidPq - sCrushPq))
    {
      v40 = (sMidPq - sCrushPq) + tMinPq;
    }

    if (v42 >= sMidPq)
    {
      v42 = sMidPq;
    }

    if (v40 <= sMidPq)
    {
      v40 = sMidPq;
    }

    v40 = (v42 + v40) - sMidPq;
  }

  else
  {
    v43 = sMidPq - sCrushPq;
  }

  v44 = v40;
  v45 = self->tMinPq;
  v46 = self->tMaxPq;
  v47 = v46 + -0.000244200244;
  if (v47 >= v44)
  {
    v47 = v44;
  }

  if (v45 + 0.000244200244 <= v44)
  {
    v48 = v47;
  }

  else
  {
    v48 = v45 + 0.000244200244;
  }

  v49 = v48;
  self->tMidPq = v49;
  if ((v49 - v43) >= v45)
  {
    v45 = v49 - v43;
  }

  self->tCrushPq = v45;
  if ((v41 + v49) <= v46)
  {
    v46 = v41 + v49;
  }

  self->tClipPq = v46;
  v50 = (v49 - v45) / v43;
  self->crushSlope = v50;
  v51 = (v46 - v49) / v41;
  self->clipSlope = v51;
  self->midSlope = self->trimData.targetMidContrast + ((v49 - sMidPq) + 1.0);
  if (GetConfig())
  {
    v52 = GetConfig();
    if (*HDRConfig::GetConfigEntryValue(v52, 0x10Cu, 0) == 1)
    {
      if (GetConfig())
      {
        v53 = GetConfig();
        v54 = *HDRConfig::GetConfigEntryValue(v53, 0x10Du, 0);
        if (v54 == 2)
        {
          midSlope = self->midSlope;
          v60 = self->tClipPq / self->sClipPq;
          if (GetConfig())
          {
            v61 = GetConfig();
            v62 = *HDRConfig::GetConfigEntryValue(v61, 0x10Eu, 0);
          }

          else
          {
            v62 = 0.0;
          }

          v58 = (v60 * v62) + (1.0 - v62) * midSlope;
        }

        else
        {
          if (v54 != 1)
          {
            goto LABEL_70;
          }

          v55 = ((sMidPq + -0.35) * -0.66667) + 1.0;
          if (v55 <= 1.0)
          {
            v56 = ((sMidPq + -0.35) * -0.66667) + 1.0;
          }

          else
          {
            v56 = 1.0;
          }

          if (v55 >= 0.8)
          {
            v57 = v56;
          }

          else
          {
            v57 = 0.8;
          }

          v58 = v57 * self->midSlope;
        }

        self->midSlope = v58;
      }
    }
  }

LABEL_70:
  v63 = v50 * 3.0;
  v64 = self->midSlope;
  if ((v50 * 3.0) > (v51 * 3.0))
  {
    v65 = v51 * 3.0;
  }

  else
  {
    v65 = v50 * 3.0;
  }

  if (v64 <= v65)
  {
    v65 = self->midSlope;
  }

  v66 = v64 <= 0.0;
  v67 = 0.0;
  if (!v66)
  {
    v67 = v65;
  }

  self->midSlope = v67;
  if ((self->crushSlope * self->crushSlope) <= v63)
  {
    v63 = self->crushSlope * self->crushSlope;
  }

  self->crushSlope = v63;
  v68 = fminf(self->clipSlope * self->clipSlope, 1.0);
  if (v68 > (v51 * 3.0))
  {
    v68 = v51 * 3.0;
  }

  self->clipSlope = v68;
  v69 = fminf(v105, 1.0);
  if (v69 >= 0.00000073096)
  {
    v70 = 10000.0;
  }

  else
  {
    v69 = -(v69 + -0.0000014619);
    v70 = -10000.0;
  }

  v71 = pow(v69, 0.0126833133);
  v72 = fmax(((v71 + -0.83594) / ((v71 * -18.688) + 18.852)), 0.0);
  v73 = powf(v72, 6.2774);
  RgbLinear2Itp(fmaxf(v70 * v73, 5.0), 0.0, 0.0, self->SRGB2LMS_TM, self->LMS2ITP, &v107);
  v75 = v107;
  v74 = v108;
  self->clipI = v107;
  self->clipSat = sqrtf((v109 * v109) + (v74 * v74));
  v76 = fminf(self->tMaxPqTm, 1.0);
  if (v76 >= 0.00000073096)
  {
    v77 = 10000.0;
  }

  else
  {
    v76 = -(v76 + -0.0000014619);
    v77 = -10000.0;
  }

  v78 = pow(v76, 0.0126833133);
  v79 = fmax(((v78 + -0.83594) / ((v78 * -18.688) + 18.852)), 0.0);
  v80 = powf(v79, 6.2774);
  RgbLinear2Itp(fmaxf(v77 * v80, 5.0), 0.0, 0.0, self->TRGB2LMS_TM, self->LMS2ITP, &v107);
  v81 = v108;
  self->clipIPred = v107;
  self->clipSatPred = sqrtf((v109 * v109) + (v81 * v81));
  self->sCrushPq = v106;
  self->sMidPq = sMidPq;
  self->sClipPq = v105;
  *&v82 = v75;
  [(DolbyVisionDM4 *)self toneMapInterpI:v82];
  *&v84 = v83;
  self->clipTmI = v83;
  *&v85 = self->clipI;
  [(DolbyVisionDM4 *)self satMapI:v85 Adm:v84];
  self->clipSmI = v86;
  clipSat = self->clipSat;
  v88 = self->clipSatPred / fmax((v86 * clipSat), 0.000244200244);
  self->clipSatPred2SmISatRatio = v88;
  clipTmI = self->clipTmI;
  if (clipTmI < 0.000244200244)
  {
    clipTmI = 0.0002442;
  }

  self->clipTmI = clipTmI;
  self->clipIPred2TmIRatio = self->clipIPred / clipTmI;
  if (clipSat >= 0.000244200244)
  {
    v90 = clipSat;
  }

  else
  {
    v90 = 0.0002442;
  }

  self->clipSat = v90;
  calcCubicSplineParam(self->cLow, self->sCrushPq, self->tCrushPq, self->crushSlope, self->sMidPq, self->tMidPq, self->midSlope);
  calcCubicSplineParam(self->cHigh, self->sMidPq, self->tMidPq, self->midSlope, self->sClipPq, self->tClipPq, self->clipSlope);
  v91 = self->sCrushPq;
  tCrushPq = self->tCrushPq;
  crushSlope = self->crushSlope;
  self->mLow = crushSlope;
  self->bLow = tCrushPq - (v91 * crushSlope);
  v94 = self->sClipPq;
  tClipPq = self->tClipPq;
  clipSlope = self->clipSlope;
  self->mHigh = clipSlope;
  self->bHigh = tClipPq - (v94 * clipSlope);
  v97 = *MEMORY[0x277D85DE8];
}

- (void)calcToneMapParamsRefWhiteBasedStatic:(float)static TgtRefWhiteNits:(float)nits
{
  v151 = *MEMORY[0x277D85DE8];
  v6 = 0.0;
  v7 = 0.0;
  if (GetConfig())
  {
    Config = GetConfig();
    v7 = *HDRConfig::GetConfigEntryValue(Config, 0x10Fu, 0);
  }

  if (GetConfig())
  {
    v9 = GetConfig();
    v6 = *HDRConfig::GetConfigEntryValue(v9, 0x110u, 0);
  }

  v10 = GetConfig();
  v11 = 0.0;
  v12 = 0.0;
  if (v10)
  {
    v13 = GetConfig();
    v12 = *HDRConfig::GetConfigEntryValue(v13, 0x111u, 0);
  }

  v143 = v12;
  if (GetConfig())
  {
    v14 = GetConfig();
    v11 = *HDRConfig::GetConfigEntryValue(v14, 0x118u, 0);
  }

  v133 = v11;
  if (GetConfig())
  {
    v15 = GetConfig();
    v130 = *HDRConfig::GetConfigEntryValue(v15, 0x119u, 0);
  }

  else
  {
    v130 = 0;
  }

  v16 = GetConfig();
  v17 = 0.0;
  v18 = 0.0;
  if (v16)
  {
    v19 = GetConfig();
    v18 = *HDRConfig::GetConfigEntryValue(v19, 0x116u, 0);
  }

  v141 = v18;
  if (GetConfig())
  {
    v20 = GetConfig();
    v17 = *HDRConfig::GetConfigEntryValue(v20, 0x117u, 0);
  }

  v142 = v17;
  if (GetConfig())
  {
    v21 = GetConfig();
    v22 = *HDRConfig::GetConfigEntryValue(v21, 0x112u, 0);
  }

  else
  {
    v22 = 0.0;
  }

  if (GetConfig())
  {
    v23 = GetConfig();
    v140 = *HDRConfig::GetConfigEntryValue(v23, 0x10Cu, 0);
  }

  else
  {
    v140 = 0;
  }

  if (GetConfig())
  {
    v24 = GetConfig();
    v132 = *HDRConfig::GetConfigEntryValue(v24, 0x10Du, 0);
  }

  else
  {
    v132 = 0;
  }

  v25 = GetConfig();
  v26 = 0.0;
  v27 = 0.0;
  if (v25)
  {
    v28 = GetConfig();
    v27 = *HDRConfig::GetConfigEntryValue(v28, 0x10Eu, 0);
  }

  v129 = v27;
  if (GetConfig())
  {
    v29 = GetConfig();
    v26 = *HDRConfig::GetConfigEntryValue(v29, 0x114u, 0);
  }

  if (GetConfig())
  {
    v30 = GetConfig();
    v138 = *HDRConfig::GetConfigEntryValue(v30, 0x11Au, 0);
  }

  else
  {
    v138 = 0;
  }

  v31 = GetConfig();
  v32 = 0.0;
  v33 = 0.0;
  if (v31)
  {
    v34 = GetConfig();
    v33 = *HDRConfig::GetConfigEntryValue(v34, 0x11Bu, 0);
  }

  v131 = v33;
  if (GetConfig())
  {
    v35 = GetConfig();
    v32 = *HDRConfig::GetConfigEntryValue(v35, 0x113u, 0);
  }

  if (GetConfig())
  {
    v36 = GetConfig();
    v136 = *HDRConfig::GetConfigEntryValue(v36, 0x115u, 0);
  }

  else
  {
    v136 = 0;
  }

  v137 = v32;
  self->sCrushPq = 0.0;
  if (static >= 0.0)
  {
    v39 = powf(static * 0.0001, 0.1593);
    v38 = powf(((v39 * 18.852) + 0.83594) / ((v39 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v37 = powf(static * -0.0001, 0.1593);
    v38 = 0.0000014619 - powf(((v37 * 18.852) + 0.83594) / ((v37 * 18.688) + 1.0), 78.844);
  }

  self->sMidPq = v38;
  staticCopy = static;
  v135 = v22;
  v139 = v26;
  if (v38 >= 0.000244200244)
  {
    if (v38 <= 0.9997558)
    {
      v40 = v38;
    }

    else
    {
      v40 = 0.99976;
    }
  }

  else
  {
    v40 = 0.0002442;
  }

  v146 = v40;
  v41 = v40;
  v42 = v41 + -0.000244200244;
  sClipPq = self->sClipPq;
  v44 = v41 + 0.000244200244;
  v128 = sClipPq;
  if (sClipPq < 1.0)
  {
    v45 = self->sClipPq;
  }

  else
  {
    v45 = 1.0;
  }

  if (v44 <= sClipPq)
  {
    v46 = v45;
  }

  else
  {
    v46 = v44;
  }

  v147 = v46;
  if (nits >= 0.0)
  {
    v49 = powf(nits * 0.0001, 0.1593);
    v48 = powf(((v49 * 18.852) + 0.83594) / ((v49 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v47 = powf(nits * -0.0001, 0.1593);
    v48 = 0.0000014619 - powf(((v47 * 18.852) + 0.83594) / ((v47 * 18.688) + 1.0), 78.844);
  }

  v50 = fmin(v42, 0.0);
  tMinPq = self->tMinPq;
  tMaxPq = self->tMaxPq;
  if (tMinPq > 0.0)
  {
    v53 = self->tMinPq;
  }

  else
  {
    v53 = 0.0;
  }

  self->tCrushPq = v53;
  v54 = v147 - v146;
  if (((v147 - v146) + v48) > tMaxPq)
  {
    v55 = tMaxPq;
  }

  else
  {
    v55 = (v147 - v146) + v48;
  }

  self->tClipPq = v55;
  if (v48 >= v38)
  {
    nitsCopy2 = nits;
    if ((v130 & 1) == 0)
    {
      goto LABEL_80;
    }

    v64 = v147;
    if (tMaxPq <= v147)
    {
      v64 = tMaxPq;
    }

    if (v146 == 0.75183)
    {
      v65 = 1.0;
    }

    else
    {
      v65 = fmax(fmin(((v48 - v146) / (0.75183 - v146)), 1.0), 0.0);
    }

    v55 = v64 + ((tMaxPq - v64) * v65);
  }

  else
  {
    v126 = v50;
    v127 = v7;
    v56 = -(v147 + -0.0000014619);
    if (v147 >= 0.00000073096)
    {
      v56 = v147;
    }

    v57 = flt_2508CD850[v147 < 0.00000073096];
    v58 = powf(v56, 0.012683);
    v59 = fmax(((v58 + -0.83594) / ((v58 * -18.688) + 18.852)), 0.0);
    v60 = (nits / staticCopy) * (v57 * powf(v59, 6.2774));
    if (v60 >= 0.0)
    {
      v66 = powf(v60 * 0.0001, 0.1593);
      v62 = powf(((v66 * 18.852) + 0.83594) / ((v66 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v61 = powf(v60 * -0.0001, 0.1593);
      v62 = 0.0000014619 - powf(((v61 * 18.852) + 0.83594) / ((v61 * 18.688) + 1.0), 78.844);
    }

    v67 = (v133 * v55) + v62 * (1.0 - v133);
    if (v67 <= tMaxPq)
    {
      v55 = v67;
    }

    else
    {
      v55 = tMaxPq;
    }

    v7 = v127;
    nitsCopy2 = nits;
    v50 = v126;
  }

  self->tClipPq = v55;
LABEL_80:
  v68 = v50;
  v145 = v68;
  if (nitsCopy2 >= 0.0)
  {
    v71 = powf(nitsCopy2 * 0.0001, 0.1593);
    v70 = powf(((v71 * 18.852) + 0.83594) / ((v71 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v69 = powf(nitsCopy2 * -0.0001, 0.1593);
    v70 = 0.0000014619 - powf(((v69 * 18.852) + 0.83594) / ((v69 * 18.688) + 1.0), 78.844);
  }

  if (v70 > v38)
  {
    v72 = v6;
  }

  else
  {
    v72 = v7;
  }

  v73 = (v70 * v72) + v38 * (1.0 - v72);
  v74 = v73;
  v75 = tMaxPq + -0.000244200244;
  if (v75 >= v74)
  {
    v75 = v74;
  }

  if (tMinPq + 0.000244200244 <= v74)
  {
    v76 = v75;
  }

  else
  {
    v76 = tMinPq + 0.000244200244;
  }

  v77 = v76;
  v78 = v143 * (v54 / (v147 - v145));
  if ((v55 - ((v55 - v53) * v78)) >= v77)
  {
    v79 = v77;
  }

  else
  {
    v79 = v55 - ((v55 - v53) * v78);
  }

  self->tMidPq = v79;
  v80 = (v55 - v79) / v54;
  v81 = v142;
  if (v79 < v38)
  {
    v81 = v141;
  }

  v82 = 1.0 - v81 + (((v79 - v53) / (v146 - v145)) * v81);
  v83 = v82 * 3.0;
  v84 = v80 * 3.0;
  v85 = self->trimData.targetMidContrast + ((v79 - v146) + 1.0);
  if (v140)
  {
    if (v132 == 2)
    {
      v85 = (v129 * (v55 / v128)) + (1.0 - v129) * v85;
    }

    else if (v132 == 1)
    {
      v86 = ((v146 + -0.35) * -0.66667) + 1.0;
      if (v86 <= 1.0)
      {
        v87 = ((v146 + -0.35) * -0.66667) + 1.0;
      }

      else
      {
        v87 = 1.0;
      }

      if (v86 >= 0.8)
      {
        v88 = v87;
      }

      else
      {
        v88 = 0.8;
      }

      v85 = v88 * v85;
    }
  }

  v89 = powf(v85, v139);
  if (v83 > v84)
  {
    v90 = v80 * 3.0;
  }

  else
  {
    v90 = v82 * 3.0;
  }

  if (v89 <= v90)
  {
    v90 = v89;
  }

  v91 = v89 <= 0.0;
  v92 = 0.0;
  if (!v91)
  {
    v92 = v90;
  }

  self->midSlope = v92;
  v93 = powf(v82, v135);
  if (v93 > v83)
  {
    v93 = v82 * 3.0;
  }

  self->crushSlope = v93;
  v94 = fminf(powf(v80, v137), 1.0);
  if (v94 > v84)
  {
    v94 = v80 * 3.0;
  }

  self->clipSlope = v94;
  if ((v136 & (v79 > v38)) == 1)
  {
    v95 = pow(v82, 2.4);
    self->crushSlope = v95;
    self->clipSlope = v80;
    self->midSlope = v80;
  }

  if ((v138 & (v79 > v38)) == 1)
  {
    self->midSlope = v131;
  }

  v96 = fminf(v147, 1.0);
  v97 = v96 < 0.00000073096;
  if (v96 < 0.00000073096)
  {
    v96 = -(v96 + -0.0000014619);
  }

  v98 = 10000.0;
  if (v97)
  {
    v99 = -10000.0;
  }

  else
  {
    v99 = 10000.0;
  }

  v100 = pow(v96, 0.0126833133);
  v101 = fmax(((v100 + -0.83594) / ((v100 * -18.688) + 18.852)), 0.0);
  v102 = powf(v101, 6.2774);
  RgbLinear2Itp(fmaxf(v99 * v102, 5.0), 0.0, 0.0, self->SRGB2LMS_TM, self->LMS2ITP, &v148);
  v104 = v148;
  v103 = v149;
  self->clipI = v148;
  self->clipSat = sqrtf((v150 * v150) + (v103 * v103));
  v105 = fminf(self->tMaxPqTm, 1.0);
  if (v105 < 0.00000073096)
  {
    v105 = -(v105 + -0.0000014619);
    v98 = -10000.0;
  }

  v106 = pow(v105, 0.0126833133);
  v107 = fmax(((v106 + -0.83594) / ((v106 * -18.688) + 18.852)), 0.0);
  v108 = powf(v107, 6.2774);
  RgbLinear2Itp(fmaxf(v98 * v108, 5.0), 0.0, 0.0, self->TRGB2LMS_TM, self->LMS2ITP, &v148);
  v109 = v149;
  self->clipIPred = v148;
  self->clipSatPred = sqrtf((v150 * v150) + (v109 * v109));
  self->sCrushPq = v145;
  self->sMidPq = v146;
  self->sClipPq = v147;
  *&v110 = v104;
  [(DolbyVisionDM4 *)self toneMapInterpI:v110];
  *&v112 = v111;
  self->clipTmI = v111;
  *&v113 = self->clipI;
  [(DolbyVisionDM4 *)self satMapI:v113 Adm:v112];
  self->clipSmI = v114;
  clipSat = self->clipSat;
  v116 = self->clipSatPred / fmax((v114 * clipSat), 0.000244200244);
  self->clipSatPred2SmISatRatio = v116;
  clipTmI = self->clipTmI;
  if (clipTmI < 0.000244200244)
  {
    clipTmI = 0.0002442;
  }

  self->clipTmI = clipTmI;
  self->clipIPred2TmIRatio = self->clipIPred / clipTmI;
  if (clipSat >= 0.000244200244)
  {
    v118 = clipSat;
  }

  else
  {
    v118 = 0.0002442;
  }

  self->clipSat = v118;
  calcCubicSplineParam(self->cLow, self->sCrushPq, self->tCrushPq, self->crushSlope, self->sMidPq, self->tMidPq, self->midSlope);
  calcCubicSplineParam(self->cHigh, self->sMidPq, self->tMidPq, self->midSlope, self->sClipPq, self->tClipPq, self->clipSlope);
  sCrushPq = self->sCrushPq;
  tCrushPq = self->tCrushPq;
  crushSlope = self->crushSlope;
  self->mLow = crushSlope;
  self->bLow = tCrushPq - (sCrushPq * crushSlope);
  v122 = self->sClipPq;
  tClipPq = self->tClipPq;
  clipSlope = self->clipSlope;
  self->mHigh = clipSlope;
  self->bHigh = tClipPq - (v122 * clipSlope);
  v125 = *MEMORY[0x277D85DE8];
}

- (void)getDM4Params:(id *)params
{
  params->var0 = self->sCrushPq;
  params->var1 = self->sMidPq;
  params->var3 = self->mLow;
  params->var4 = self->bLow;
  params->var5 = self->mHigh;
  params->var6 = self->bHigh;
  cHigh = self->cHigh;
  var8 = params->var8;
  v5 = 4;
  do
  {
    *(var8 - 4) = *(cHigh - 4);
    v6 = *cHigh++;
    *var8++ = v6;
    --v5;
  }

  while (v5);
}

- (void)createToneCurve:(float)curve srcMaxPQ:(float)q tgtMinPQ:(float)pQ tgtMaxPQ:(float)maxPQ srcCrushPQ:(float)crushPQ srcMidPQ:(float)midPQ srcClipPQ:(float)clipPQ targetMaxLinear:(float)self0 DM_MetaData:(id *)self1 tcCtrl:(ToneCurve_Control *)self2 dm4TmMode:(int)self3
{
  if (GetConfig())
  {
    Config = GetConfig();
    if (*(Config + 4185))
    {
      if ((Config[8368] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v34 = GetConfig();
          mode = *HDRConfig::GetConfigEntryValue(v34, 0xBEu, 0);
        }

        else
        {
          mode = 0;
        }
      }
    }
  }

  *&v25 = curve;
  *&v26 = q;
  *&v27 = pQ;
  *&v28 = maxPQ;
  *&v29 = crushPQ;
  *&v30 = midPQ;
  *&v31 = clipPQ;
  *&v32 = linear;
  [(DolbyVisionDM4 *)self initToneMapParams:data srcMaxPQ:v25 tgtMinPQ:v26 tgtMaxPQ:v27 srcCrushPQ:v28 srcMidPQ:v29 srcClipPQ:v30 targetMaxLinear:v31 DM_MetaData:v32];
  if (data)
  {
    if (!GetConfig() || (v35 = GetConfig(), (*HDRConfig::GetConfigEntryValue(v35, 9u, 0) & 1) == 0))
    {
      [(DolbyVisionDM4 *)self initTrimData:data];
    }
  }

  if (GetConfig())
  {
    v36 = GetConfig();
    v37 = *HDRConfig::GetConfigEntryValue(v36, 0x10Au, 0);
  }

  else
  {
    v37 = 0.0;
  }

  diffuseInNits = v37;
  if (ctrl)
  {
    diffuseInNits = ctrl->diffuseInNits;
  }

  if (GetConfig())
  {
    v41 = GetConfig();
    ConfigEntryValue = HDRConfig::GetConfigEntryValue(v41, 0x11Du, 0);
    if (ctrl)
    {
      if (*ConfigEntryValue)
      {
        v43 = ctrl->diffuseInNits;
        if (v43 >= 0.0)
        {
          v46 = powf(v43 * 0.0001, 0.1593);
          v45 = powf(((v46 * 18.852) + 0.83594) / ((v46 * 18.688) + 1.0), 78.844);
        }

        else
        {
          v44 = powf(v43 * -0.0001, 0.1593);
          v45 = 0.0000014619 - powf(((v44 * 18.852) + 0.83594) / ((v44 * 18.688) + 1.0), 78.844);
        }

        if (GetConfig())
        {
          v47 = GetConfig();
          v48 = *HDRConfig::GetConfigEntryValue(v47, 0x11Eu, 0) + -1.0;
        }

        else
        {
          v48 = -1.0;
        }

        v49 = fmax(fmin(((((v45 + -0.41928) * v48) / -0.26934) + 1.0), 1.0), 0.0);
        tMaxPq = self->tMaxPq;
        v51 = tMaxPq < 0.00000073096;
        if (tMaxPq < 0.00000073096)
        {
          tMaxPq = -(tMaxPq + -0.0000014619);
        }

        v52 = flt_2508CD850[v51];
        v53 = powf(tMaxPq, 0.012683);
        v54 = fmax(((v53 + -0.83594) / ((v53 * -18.688) + 18.852)), 0.0);
        *&v39 = ((v52 * powf(v54, 6.2774)) / ctrl->maxEDRValue) * v49;
        if (ctrl->diffuseInNits >= *&v39)
        {
          diffuseInNits = ctrl->diffuseInNits;
        }

        else
        {
          diffuseInNits = *&v39;
        }
      }
    }
  }

  if (mode <= 3)
  {
    switch(mode)
    {
      case 1:
        if (linear >= 0.0)
        {
          v60 = powf(linear * 0.0001, 0.1593);
          *&v58 = powf(((v60 * 18.852) + 0.83594) / ((v60 * 18.688) + 1.0), 78.844);
        }

        else
        {
          v57 = powf(linear * -0.0001, 0.1593);
          *&v58 = 0.0000014619 - powf(((v57 * 18.852) + 0.83594) / ((v57 * 18.688) + 1.0), 78.844);
        }

        [(DolbyVisionDM4 *)self setPseudoTrimDataForHLG:v58];
        goto LABEL_53;
      case 2:
        goto LABEL_53;
      case 3:
        [(DolbyVisionDM4 *)self calcToneMapParamsHDR10];
        if (!ctrl)
        {
          return;
        }

        goto LABEL_54;
    }

LABEL_46:
    trimOffset = self->trimData.trimOffset;
    if (trimOffset > 0.0)
    {
      trimOffset = 0.0;
    }

    self->trimData.trimOffset = trimOffset;
LABEL_53:
    [(DolbyVisionDM4 *)self calcToneMapParams];
    if (!ctrl)
    {
      return;
    }

    goto LABEL_54;
  }

  if (mode > 5)
  {
    if (mode == 6)
    {
      *&v39 = v37;
      *&v40 = diffuseInNits;
      [(DolbyVisionDM4 *)self calcToneMapParamsRefWhiteBased:v39 TgtRefWhiteNits:v40];
      if (!ctrl)
      {
        return;
      }

      goto LABEL_54;
    }

    if (mode == 7)
    {
      *&v39 = v37;
      *&v40 = diffuseInNits;
      [(DolbyVisionDM4 *)self calcToneMapParamsRefWhiteBasedStatic:v39 TgtRefWhiteNits:v40];
      if (!ctrl)
      {
        return;
      }

      goto LABEL_54;
    }

    goto LABEL_46;
  }

  if (mode != 4)
  {
    if (linear >= 0.0)
    {
      v61 = powf(linear * 0.0001, 0.1593);
      *&v56 = powf(((v61 * 18.852) + 0.83594) / ((v61 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v55 = powf(linear * -0.0001, 0.1593);
      *&v56 = 0.0000014619 - powf(((v55 * 18.852) + 0.83594) / ((v55 * 18.688) + 1.0), 78.844);
    }

    [(DolbyVisionDM4 *)self setPseudoTrimDataForHLG:v56];
  }

  [(DolbyVisionDM4 *)self calcToneMapParamsBrightAdapted];
  if (ctrl)
  {
LABEL_54:
    ctrl->crush = self->sCrushPq;
    ctrl->mid = self->sMidPq;
    ctrl->clip = self->sClipPq;
  }
}

- (void)createTmLuts:(float *)luts tLutS:(float *)s sLutI:(float *)i sLutS:(float *)lutS tLutISize:(unint64_t)size tLutSSize:(unint64_t)sSize sLutISize:(unint64_t)iSize sLutSSize:(unint64_t)self0
{
  if (!size)
  {
    __assert_rtn("[DolbyVisionDM4 createTmLuts:tLutS:sLutI:sLutS:tLutISize:tLutSSize:sLutISize:sLutSSize:]", "DolbyVisionDM4.mm", 2479, "tLutISize");
  }

  if (!sSize)
  {
    __assert_rtn("[DolbyVisionDM4 createTmLuts:tLutS:sLutI:sLutS:tLutISize:tLutSSize:sLutISize:sLutSSize:]", "DolbyVisionDM4.mm", 2480, "tLutSSize");
  }

  if (!iSize)
  {
    __assert_rtn("[DolbyVisionDM4 createTmLuts:tLutS:sLutI:sLutS:tLutISize:tLutSSize:sLutISize:sLutSSize:]", "DolbyVisionDM4.mm", 2481, "sLutISize");
  }

  if (!lutSSize)
  {
    __assert_rtn("[DolbyVisionDM4 createTmLuts:tLutS:sLutI:sLutS:tLutISize:tLutSSize:sLutISize:sLutSSize:]", "DolbyVisionDM4.mm", 2482, "sLutSSize");
  }

  v18 = 0;
  v19 = (size - 1);
  do
  {
    *&v10 = v18 / v19;
    [(DolbyVisionDM4 *)self toneMapI:v10];
    luts[v18++] = *&v10;
  }

  while (size != v18);
  v20 = 0;
  v21 = (iSize - 1);
  do
  {
    *&v10 = v20 / v21;
    [(DolbyVisionDM4 *)self toneMapI:v10];
    LODWORD(v23) = v22;
    *&v24 = v20 / v21;
    [(DolbyVisionDM4 *)self satMapI:v24 Adm:v23];
    i[v20++] = *&v10;
  }

  while (iSize != v20);
  v25 = 0;
  do
  {
    *&v10 = (v25 / (sSize - 1)) + (v25 / (sSize - 1));
    [(DolbyVisionDM4 *)self toneMapS:v10];
    s[v25++] = *&v10;
  }

  while (sSize != v25);
  for (i = 0; i != lutSSize; ++i)
  {
    *&v10 = (i / (lutSSize - 1)) + (i / (lutSSize - 1));
    [(DolbyVisionDM4 *)self satMapS:v10];
    lutS[i] = *&v10;
  }

  memcpy(self->tmLutI, luts, 4 * size);
  memcpy(self->tmLutS, s, 4 * sSize);
  memcpy(self->smLutI, i, 4 * iSize);
  smLutS = self->smLutS;

  memcpy(smLutS, lutS, 4 * lutSSize);
}

- (void)createTmLutsEx:(float *)ex tLutS:(float *)s sLutI:(float *)i sLutS:(float *)lutS tLutISize:(unint64_t)size tLutSSize:(unint64_t)sSize sLutISize:(unint64_t)iSize sLutSSize:(unint64_t)self0 config:(id *)self1 TmParam:(const _DoViTMParam *)self2 EdrAdaptationParam:(const _EdrAdaptationParam *)self3 AmbAdaptationParam:(const _AmbAdaptationParam *)self4 IsDoVi84:(BOOL)self5 HlgOOTFCombined:(BOOL)self6
{
  adjTmax_nits = param->adjTmax_nits;
  OOTFMixingFactor = param->OOTFMixingFactor;
  Smin_nits = param->Smin_nits;
  SDRTmax_nits = param->SDRTmax_nits;
  v19 = (SDRTmax_nits / 1000.0);
  if (SDRTmax_nits > 400.0 && SDRTmax_nits < 2000.0)
  {
    v22 = log10(v19) * 0.419999987 + 1.20000005 + -1.0;
  }

  else
  {
    v21 = log2(v19);
    v22 = pow(1.11099994, v21) * 1.20000005 + -1.0;
  }

  if (!size)
  {
    __assert_rtn("[DolbyVisionDM4 createTmLutsEx:tLutS:sLutI:sLutS:tLutISize:tLutSSize:sLutISize:sLutSSize:config:TmParam:EdrAdaptationParam:AmbAdaptationParam:IsDoVi84:HlgOOTFCombined:]", "DolbyVisionDM4.mm", 2557, "tLutISize");
  }

  if (!sSize)
  {
    __assert_rtn("[DolbyVisionDM4 createTmLutsEx:tLutS:sLutI:sLutS:tLutISize:tLutSSize:sLutISize:sLutSSize:config:TmParam:EdrAdaptationParam:AmbAdaptationParam:IsDoVi84:HlgOOTFCombined:]", "DolbyVisionDM4.mm", 2558, "tLutSSize");
  }

  if (!iSize)
  {
    __assert_rtn("[DolbyVisionDM4 createTmLutsEx:tLutS:sLutI:sLutS:tLutISize:tLutSSize:sLutISize:sLutSSize:config:TmParam:EdrAdaptationParam:AmbAdaptationParam:IsDoVi84:HlgOOTFCombined:]", "DolbyVisionDM4.mm", 2559, "sLutISize");
  }

  if (!lutSSize)
  {
    __assert_rtn("[DolbyVisionDM4 createTmLutsEx:tLutS:sLutI:sLutS:tLutISize:tLutSSize:sLutISize:sLutSSize:config:TmParam:EdrAdaptationParam:AmbAdaptationParam:IsDoVi84:HlgOOTFCombined:]", "DolbyVisionDM4.mm", 2560, "sLutSSize");
  }

  v23 = v22;
  if (GetConfig())
  {
    Config = GetConfig();
    v25 = *HDRConfig::GetConfigEntryValue(Config, 0xEu, 0);
  }

  else
  {
    v25 = 0;
  }

  v26 = 0;
  v92 = (size - 1);
  v96 = v23 + 1.0;
  v95 = 1000.0 - Smin_nits;
  v27 = v25 | !vi84;
  v94 = 1.0 - OOTFMixingFactor;
  do
  {
    v28 = v26 / v92;
    v29 = v28 + -0.0000014619;
    v30 = v28;
    if (combined)
    {
      v31 = -v29;
      if (v28 >= 0.00000073096)
      {
        v31 = v26 / v92;
      }

      v32 = flt_2508CD850[v28 < 0.00000073096];
      v33 = powf(v31, 0.012683);
      v34 = fmax(((v33 + -0.83594) / ((v33 * -18.688) + 18.852)), 0.0);
      v35 = powf(v34, 6.2774);
      v36 = Smin_nits + (powf((v32 * v35) / 1000.0, 1.2) * v95);
      if (v36 >= 0.0)
      {
        v38 = powf(v36 * 0.0001, 0.1593);
        v30 = powf(((v38 * 18.852) + 0.83594) / ((v38 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v37 = powf(v36 * -0.0001, 0.1593);
        v30 = 0.0000014619 - powf(((v37 * 18.852) + 0.83594) / ((v37 * 18.688) + 1.0), 78.844);
      }
    }

    *&v39 = applySceneLuxAdaptationS_C(&param->sceneLuxAdaptationParam, v30);
    [(DolbyVisionDM4 *)self toneMapI:v39];
    v41 = v40;
    if (BYTE1(config[1].var49) != 1)
    {
      goto LABEL_25;
    }

    linearStretchMode = param->linearStretchMode;
    if (linearStretchMode != 1)
    {
      if (!linearStretchMode)
      {
        v41 = applyLinearStretchInPQ(v40, param->linearScaler, param->linearOffset);
      }

LABEL_25:
      if (v27)
      {
        goto LABEL_34;
      }

LABEL_26:
      v43 = -v29;
      if (v28 >= 0.00000073096)
      {
        v43 = v26 / v92;
      }

      v44 = flt_2508CD850[v28 < 0.00000073096];
      v45 = powf(v43, 0.012683);
      v46 = fmax(((v45 + -0.83594) / ((v45 * -18.688) + 18.852)), 0.0);
      v47 = fmaxf((v44 * powf(v46, 6.2774)) / 1000.0, 0.0);
      v48 = powf(v47, 0.83333);
      if (combined)
      {
        v48 = v47;
      }

      v49 = adjTmax_nits * powf(v48, v96);
      if (v49 >= 0.0)
      {
        v52 = powf(v49 * 0.0001, 0.1593);
        v51 = powf(((v52 * 18.852) + 0.83594) / ((v52 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v50 = powf(v49 * -0.0001, 0.1593);
        v51 = 0.0000014619 - powf(((v50 * 18.852) + 0.83594) / ((v50 * 18.688) + 1.0), 78.844);
      }

      v41 = (v94 * v51) + (OOTFMixingFactor * v41);
      goto LABEL_34;
    }

    nonlinearScaler = param->nonlinearScaler;
    if (nonlinearScaler != 1.0)
    {
      v41 = param->nonlinearOffset + ((v41 - param->nonlinearOffset) * nonlinearScaler);
    }

    if ((v27 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_34:
    v53 = applyEdrAdaptationCurveS(adaptationParam, v41);
    if (BYTE1(config[1].var49) == 1)
    {
      v54 = param->linearStretchMode;
      if (v54 == 3)
      {
        v56 = param->nonlinearScaler;
        if (v56 != 1.0)
        {
          v53 = param->nonlinearOffset + ((v53 - param->nonlinearOffset) * v56);
        }
      }

      else if (v54 == 2)
      {
        v53 = applyLinearStretchInPQ(v53, param->linearScaler, param->linearOffset);
      }
    }

    ex[v26++] = fmaxf(fminf(applyAmbAdaptationCurveS_C(ambAdaptationParam, v53), 1.0), 0.0);
  }

  while (size != v26);
  v58 = 0;
  v93 = (iSize - 1);
  do
  {
    v59 = v58 / v93;
    v60 = v59 + -0.0000014619;
    *&v57 = v59;
    if (combined)
    {
      v61 = -v60;
      if (v59 >= 0.00000073096)
      {
        v61 = v58 / v93;
      }

      v62 = flt_2508CD850[v59 < 0.00000073096];
      v63 = powf(v61, 0.012683);
      v64 = fmax(((v63 + -0.83594) / ((v63 * -18.688) + 18.852)), 0.0);
      v65 = powf(v64, 6.2774);
      v66 = Smin_nits + (powf((v62 * v65) / 1000.0, 1.2) * v95);
      if (v66 >= 0.0)
      {
        v68 = powf(v66 * 0.0001, 0.1593);
        *&v57 = powf(((v68 * 18.852) + 0.83594) / ((v68 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v67 = powf(v66 * -0.0001, 0.1593);
        *&v57 = 0.0000014619 - powf(((v67 * 18.852) + 0.83594) / ((v67 * 18.688) + 1.0), 78.844);
      }
    }

    [(DolbyVisionDM4 *)self toneMapI:v57];
    v70 = v69;
    if (BYTE1(config[1].var49) != 1)
    {
      goto LABEL_56;
    }

    v71 = param->linearStretchMode;
    if (v71 != 1)
    {
      if (!v71)
      {
        v70 = applyLinearStretchInPQ(v69, param->linearScaler, param->linearOffset);
      }

LABEL_56:
      if (v27)
      {
        goto LABEL_65;
      }

LABEL_57:
      v72 = -v60;
      if (v59 >= 0.00000073096)
      {
        v72 = v58 / v93;
      }

      v73 = flt_2508CD850[v59 < 0.00000073096];
      v74 = powf(v72, 0.012683);
      v75 = fmax(((v74 + -0.83594) / ((v74 * -18.688) + 18.852)), 0.0);
      v76 = fmaxf((v73 * powf(v75, 6.2774)) / 1000.0, 0.0);
      if (!combined)
      {
        v76 = powf(v76, 1.0 / param->systemGamma);
      }

      v77 = adjTmax_nits * powf(v76, v96);
      if (v77 >= 0.0)
      {
        v80 = powf(v77 * 0.0001, 0.1593);
        v79 = powf(((v80 * 18.852) + 0.83594) / ((v80 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v78 = powf(v77 * -0.0001, 0.1593);
        v79 = 0.0000014619 - powf(((v78 * 18.852) + 0.83594) / ((v78 * 18.688) + 1.0), 78.844);
      }

      v70 = (v94 * v79) + (OOTFMixingFactor * v70);
      goto LABEL_65;
    }

    v83 = param->nonlinearScaler;
    if (v83 != 1.0)
    {
      v70 = param->nonlinearOffset + ((v70 - param->nonlinearOffset) * v83);
    }

    if ((v27 & 1) == 0)
    {
      goto LABEL_57;
    }

LABEL_65:
    v81 = applyEdrAdaptationCurveS(adaptationParam, v70);
    if (BYTE1(config[1].var49) == 1)
    {
      v82 = param->linearStretchMode;
      if (v82 == 3)
      {
        v84 = param->nonlinearScaler;
        if (v84 != 1.0)
        {
          v81 = param->nonlinearOffset + ((v81 - param->nonlinearOffset) * v84);
        }
      }

      else if (v82 == 2)
      {
        v81 = applyLinearStretchInPQ(v81, param->linearScaler, param->linearOffset);
      }
    }

    *&v85 = fmaxf(fminf(applyAmbAdaptationCurveS_C(ambAdaptationParam, v81), 1.0), 0.0);
    *&v86 = v58 / v93;
    [(DolbyVisionDM4 *)self satMapI:v86 Adm:COERCE_DOUBLE(v85)];
    i[v58++] = *&v57;
  }

  while (iSize != v58);
  v87 = 0;
  do
  {
    *&v57 = (v87 / (sSize - 1)) + (v87 / (sSize - 1));
    [(DolbyVisionDM4 *)self toneMapS:v57];
    s[v87++] = *&v57;
  }

  while (sSize != v87);
  for (i = 0; i != lutSSize; ++i)
  {
    *&v57 = (i / (lutSSize - 1)) + (i / (lutSSize - 1));
    [(DolbyVisionDM4 *)self satMapS:v57];
    lutS[i] = *&v57;
  }

  memcpy(self->tmLutI, ex, 4 * size);
  memcpy(self->tmLutS, s, 4 * sSize);
  memcpy(self->smLutI, i, 4 * iSize);
  smLutS = self->smLutS;

  memcpy(smLutS, lutS, 4 * lutSSize);
}

- (void)InputMapping:(float *)mapping pX1:(float *)x1 pX2:(float *)x2
{
  colorSpace = self->inputSurface.colorSpace;
  if (colorSpace != 2)
  {
    if (!colorSpace)
    {
      v10 = *mapping - self->Yuv2RgbOffset[0];
      v11 = *x1 - self->Yuv2RgbOffset[1];
      v12 = *x2 - self->Yuv2RgbOffset[2];
      *mapping = ((v11 * self->YUV2RGB[0][1]) + (self->YUV2RGB[0][0] * v10)) + (self->YUV2RGB[0][2] * v12);
      *x1 = ((v11 * self->YUV2RGB[1][1]) + (self->YUV2RGB[1][0] * v10)) + (self->YUV2RGB[1][2] * v12);
      *x2 = ((v11 * self->YUV2RGB[2][1]) + (self->YUV2RGB[2][0] * v10)) + (self->YUV2RGB[2][2] * v12);
    }

    v13 = 1.0 / self->inputRange;
    *mapping = *mapping * v13;
    *x1 = *x1 * v13;
    *x2 = v13 * *x2;
    v14 = 0.0;
    v15 = 0.0;
    if (*mapping >= 0.0)
    {
      v15 = 1.0;
      if (*mapping <= 1.0)
      {
        v15 = *mapping;
      }
    }

    *mapping = v15;
    if (*x1 >= 0.0)
    {
      v14 = 1.0;
      if (*x1 <= 1.0)
      {
        v14 = *x1;
      }
    }

    *x1 = v14;
    v16 = 0.0;
    if (*x2 >= 0.0)
    {
      v16 = 1.0;
      if (*x2 <= 1.0)
      {
        v16 = *x2;
      }
    }

    *x2 = v16;
    v17 = *mapping;
    if (*mapping < 0.0)
    {
      v17 = 0.0;
    }

    v18 = powf(v17, 0.012683);
    v19 = (v18 + -0.83594) / ((v18 * -18.688) + 18.852);
    if (v19 < 0.0)
    {
      v19 = 0.0;
    }

    *mapping = powf(v19, 6.2774) * 10000.0;
    v20 = *x1;
    if (*x1 < 0.0)
    {
      v20 = 0.0;
    }

    v21 = powf(v20, 0.012683);
    v22 = (v21 + -0.83594) / ((v21 * -18.688) + 18.852);
    if (v22 < 0.0)
    {
      v22 = 0.0;
    }

    *x1 = powf(v22, 6.2774) * 10000.0;
    v23 = *x2;
    if (*x2 < 0.0)
    {
      v23 = 0.0;
    }

    v24 = powf(v23, 0.012683);
    v25 = (v24 + -0.83594) / ((v24 * -18.688) + 18.852);
    if (v25 < 0.0)
    {
      v25 = 0.0;
    }

    v26 = powf(v25, 6.2774) * 10000.0;
    *x2 = v26;
    v27 = fminf(((*x1 * self->RGB2LMS[1][1]) + (self->RGB2LMS[1][0] * *mapping)) + (self->RGB2LMS[1][2] * v26), 10000.0);
    v37 = fminf(((*x1 * self->RGB2LMS[2][1]) + (self->RGB2LMS[2][0] * *mapping)) + (self->RGB2LMS[2][2] * v26), 10000.0);
    v28 = fminf(((self->RGB2LMS[0][1] * *x1) + (self->RGB2LMS[0][0] * *mapping)) + (self->RGB2LMS[0][2] * v26), 10000.0) / 10000.0;
    if (v28 < 0.0)
    {
      v28 = 0.0;
    }

    v29 = powf(v28, 0.1593);
    v30 = powf(((v29 * 18.852) + 0.83594) / ((v29 * 18.688) + 1.0), 78.844);
    v31 = v27 / 10000.0;
    if ((v27 / 10000.0) < 0.0)
    {
      v31 = 0.0;
    }

    v32 = powf(v31, 0.1593);
    v33 = powf(((v32 * 18.852) + 0.83594) / ((v32 * 18.688) + 1.0), 78.844);
    v34 = v37 / 10000.0;
    if ((v37 / 10000.0) < 0.0)
    {
      v34 = 0.0;
    }

    v35 = powf(v34, 0.1593);
    v36 = powf(((v35 * 18.852) + 0.83594) / ((v35 * 18.688) + 1.0), 78.844);
    *mapping = ((self->LMS2ITP[0][1] * v33) + (self->LMS2ITP[0][0] * v30)) + (self->LMS2ITP[0][2] * v36);
    *x1 = ((self->LMS2ITP[1][1] * v33) + (self->LMS2ITP[1][0] * v30)) + (self->LMS2ITP[1][2] * v36);
    *x2 = ((v33 * self->LMS2ITP[2][1]) + (self->LMS2ITP[2][0] * v30)) + (self->LMS2ITP[2][2] * v36);
  }
}

- (void)ToneMappingInCtrl:(float *)ctrl pX1:(float *)x1 pX2:(float *)x2 pAdm:(float *)adm
{
  v11 = (*x2 * *x2) + (*x1 * *x1);
  *adm = *ctrl;
  [(DolbyVisionDM4 *)self toneMapI:?];
  v13 = v12;
  *adm = v12;
  *&v14 = v11;
  [(DolbyVisionDM4 *)self toneMapS:v14];
  *adm = v15 * *adm;
  *&v16 = *ctrl;
  LODWORD(v17) = v13;
  [(DolbyVisionDM4 *)self satMapI:v16 Adm:v17];
  v19 = v18;
  *&v20 = v11;
  [(DolbyVisionDM4 *)self satMapS:v20];
  v22 = v19 * v21;
  *x1 = *x1 * v22;
  *x2 = v22 * *x2;
}

- (void)ToneMapping:(float *)mapping pX1:(float *)x1 pX2:(float *)x2 pAdm:(float *)adm
{
  tmLutSize = self->tmLutSize;
  if (tmLutSize)
  {
    v7 = ((*x2 * *x2) + (*x1 * *x1)) * 0.5;
    v8 = *mapping;
    if (*mapping <= 0.0)
    {
      v11 = *self->tmLutI;
    }

    else if (v8 >= 1.0)
    {
      v11 = self->tmLutI[tmLutSize - 1];
    }

    else
    {
      v9 = v8 * (tmLutSize - 1);
      *adm = v9;
      v10 = &self->tmLutI[v9];
      v11 = *v10 + ((v10[1] - *v10) * (v9 - v9));
    }

    *adm = v11;
    if (v7 > 0.0)
    {
      if (v7 >= 1.0)
      {
        v12 = self->tmLutS[tmLutSize - 1];
      }

      else
      {
        v13 = v7 * (tmLutSize - 1);
        v14 = &self->tmLutS[v13];
        v12 = *v14 + ((v14[1] - *v14) * (v13 - v13));
      }
    }

    else
    {
      v12 = *self->tmLutS;
    }

    *adm = v11 * v12;
    v15 = *mapping;
    if (*mapping <= 0.0)
    {
      v18 = *self->smLutI;
    }

    else if (v15 >= 1.0)
    {
      v18 = self->smLutI[tmLutSize - 1];
    }

    else
    {
      v16 = v15 * (tmLutSize - 1);
      v17 = &self->smLutI[v16];
      v18 = *v17 + ((v17[1] - *v17) * (v16 - v16));
    }

    if (v7 > 0.0)
    {
      if (v7 >= 1.0)
      {
        v19 = self->smLutS[tmLutSize - 1];
      }

      else
      {
        v20 = v7 * (tmLutSize - 1);
        v21 = &self->smLutS[v20];
        v19 = *v21 + ((v21[1] - *v21) * (v20 - v20));
      }
    }

    else
    {
      v19 = *self->smLutS;
    }

    v22 = v18 * v19;
    *x1 = *x1 * v22;
    *x2 = v22 * *x2;
  }

  else
  {
    [(DolbyVisionDM4 *)self ToneMappingInCtrl:mapping pX1:x1 pX2:x2 pAdm:adm];
  }
}

- (void)OutputMapping:(float *)mapping pX1:(float *)x1 pX2:(float *)x2
{
  colorSpace = self->outputSurface.colorSpace;
  if (colorSpace != 2)
  {
    v10 = ((self->ITP2LMS[0][1] * *x1) + (self->ITP2LMS[0][0] * *mapping)) + (self->ITP2LMS[0][2] * *x2);
    v11 = ((*x1 * self->ITP2LMS[1][1]) + (self->ITP2LMS[1][0] * *mapping)) + (self->ITP2LMS[1][2] * *x2);
    v12 = ((*x1 * self->ITP2LMS[2][1]) + (self->ITP2LMS[2][0] * *mapping)) + (self->ITP2LMS[2][2] * *x2);
    if (v10 <= 1.0)
    {
      v13 = ((self->ITP2LMS[0][1] * *x1) + (self->ITP2LMS[0][0] * *mapping)) + (self->ITP2LMS[0][2] * *x2);
    }

    else
    {
      v13 = 1.0;
    }

    if (v10 >= 0.0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0.0;
    }

    if (v11 <= 1.0)
    {
      v15 = ((*x1 * self->ITP2LMS[1][1]) + (self->ITP2LMS[1][0] * *mapping)) + (self->ITP2LMS[1][2] * *x2);
    }

    else
    {
      v15 = 1.0;
    }

    if (v11 >= 0.0)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0.0;
    }

    if (v12 <= 1.0)
    {
      v17 = ((*x1 * self->ITP2LMS[2][1]) + (self->ITP2LMS[2][0] * *mapping)) + (self->ITP2LMS[2][2] * *x2);
    }

    else
    {
      v17 = 1.0;
    }

    if (v12 >= 0.0)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0.0;
    }

    v51 = v18;
    if (v14 < 0.0)
    {
      v14 = 0.0;
    }

    v19 = powf(v14, 0.012683);
    v20 = (v19 + -0.83594) / ((v19 * -18.688) + 18.852);
    if (v20 < 0.0)
    {
      v20 = 0.0;
    }

    v50 = powf(v20, 6.2774) * 10000.0;
    if (v16 < 0.0)
    {
      v21 = 0.0;
    }

    else
    {
      v21 = v16;
    }

    v22 = powf(v21, 0.012683);
    v23 = (v22 + -0.83594) / ((v22 * -18.688) + 18.852);
    if (v23 < 0.0)
    {
      v23 = 0.0;
    }

    v24 = powf(v23, 6.2774) * 10000.0;
    v25 = v51;
    if (v51 < 0.0)
    {
      v25 = 0.0;
    }

    v26 = powf(v25, 0.012683);
    v27 = (v26 + -0.83594) / ((v26 * -18.688) + 18.852);
    if (v27 < 0.0)
    {
      v27 = 0.0;
    }

    v28 = powf(v27, 6.2774) * 10000.0;
    *mapping = ((self->LMS2RGB[0][1] * v24) + (self->LMS2RGB[0][0] * v50)) + (self->LMS2RGB[0][2] * v28);
    *x1 = ((self->LMS2RGB[1][1] * v24) + (self->LMS2RGB[1][0] * v50)) + (self->LMS2RGB[1][2] * v28);
    *x2 = ((self->LMS2RGB[2][1] * v24) + (self->LMS2RGB[2][0] * v50)) + (self->LMS2RGB[2][2] * v28);
    transferFunction = self->outputSurface.transferFunction;
    if (transferFunction == 16)
    {
      v39 = *mapping / 10000.0;
      if (v39 < 0.0)
      {
        v39 = 0.0;
      }

      v40 = powf(v39, 0.1593);
      *mapping = powf(((v40 * 18.852) + 0.83594) / ((v40 * 18.688) + 1.0), 78.844);
      v41 = *x1 / 10000.0;
      if (v41 < 0.0)
      {
        v41 = 0.0;
      }

      v42 = powf(v41, 0.1593);
      *x1 = powf(((v42 * 18.852) + 0.83594) / ((v42 * 18.688) + 1.0), 78.844);
      v43 = *x2 / 10000.0;
      if (v43 < 0.0)
      {
        v43 = 0.0;
      }

      v44 = powf(v43, 0.1593);
      v38 = powf(((v44 * 18.852) + 0.83594) / ((v44 * 18.688) + 1.0), 78.844);
    }

    else
    {
      if (transferFunction)
      {
        goto LABEL_65;
      }

      Lb = self->bt1886Param.Lb;
      if (*mapping >= Lb)
      {
        Lb = self->bt1886Param.Lw;
        if (*mapping <= Lb)
        {
          Lb = *mapping;
        }
      }

      *mapping = Lb;
      Lw = self->bt1886Param.Lb;
      if (*x1 >= Lw)
      {
        Lw = self->bt1886Param.Lw;
        if (*x1 <= Lw)
        {
          Lw = *x1;
        }
      }

      *x1 = Lw;
      v32 = self->bt1886Param.Lb;
      if (*x2 >= v32)
      {
        v32 = self->bt1886Param.Lw;
        if (*x2 <= v32)
        {
          v32 = *x2;
        }
      }

      *x2 = v32;
      v33 = *mapping;
      if (*mapping < 0.0)
      {
        v33 = 0.0;
      }

      *mapping = v33;
      *mapping = powf(v33 * self->bt1886Param.aR, self->bt1886Param.gammaR) - self->bt1886Param.b;
      v34 = *x1;
      if (*x1 < 0.0)
      {
        v34 = 0.0;
      }

      *x1 = v34;
      *x1 = powf(v34 * self->bt1886Param.aR, self->bt1886Param.gammaR) - self->bt1886Param.b;
      v35 = *x2;
      if (*x2 < 0.0)
      {
        v35 = 0.0;
      }

      *x2 = v35;
      *x2 = powf(v35 * self->bt1886Param.aR, self->bt1886Param.gammaR) - self->bt1886Param.b;
      v36 = *mapping;
      if (*mapping < 0.0)
      {
        v36 = 0.0;
      }

      *mapping = v36;
      v37 = *x1;
      if (*x1 < 0.0)
      {
        v37 = 0.0;
      }

      *x1 = v37;
      v38 = *x2;
      if (*x2 < 0.0)
      {
        v38 = 0.0;
      }
    }

    *x2 = v38;
LABEL_65:
    outputRange = self->outputRange;
    *mapping = (outputRange * *mapping) + 0.0;
    *x1 = (outputRange * *x1) + 0.0;
    v46 = (outputRange * *x2) + 0.0;
    *x2 = v46;
    if (!colorSpace)
    {
      v47 = ((self->RGB2YUV[0][1] * *x1) + (self->RGB2YUV[0][0] * *mapping)) + (self->RGB2YUV[0][2] * v46);
      v48 = ((*x1 * self->RGB2YUV[1][1]) + (self->RGB2YUV[1][0] * *mapping)) + (self->RGB2YUV[1][2] * v46);
      v49 = ((*x1 * self->RGB2YUV[2][1]) + (self->RGB2YUV[2][0] * *mapping)) + (self->RGB2YUV[2][2] * v46);
      *mapping = v47 + self->Rgb2YuvOffset[0];
      *x1 = v48 + self->Rgb2YuvOffset[1];
      *x2 = v49 + self->Rgb2YuvOffset[2];
    }
  }
}

- (void)DmProcess:(int)process Height:(int)height bufI:(float *)i bufU:(float *)u bufV:(float *)v
{
  LODWORD(v19) = 0;
  if (height >= 1)
  {
    v13 = 0;
    v14 = 4 * process;
    do
    {
      if (process >= 1)
      {
        v16 = 0;
        do
        {
          v17 = i[v16];
          v20 = u[v16];
          v21 = v17;
          *(&v19 + 1) = v[v16];
          [(DolbyVisionDM4 *)self InputMapping:&v21 pX1:&v20 pX2:&v19 + 4, v19];
          [(DolbyVisionDM4 *)self ToneMapping:&v21 pX1:&v20 pX2:&v19 + 4 pAdm:&v19];
          v21 = *&v19;
          [(DolbyVisionDM4 *)self OutputMapping:&v21 pX1:&v20 pX2:&v19 + 4];
          v18 = v20;
          i[v16] = v21;
          u[v16] = v18;
          v[v16++] = *(&v19 + 1);
        }

        while (process != v16);
      }

      ++v13;
      v = (v + v14);
      u = (u + v14);
      i = (i + v14);
    }

    while (v13 != height);
  }
}

- (void)dumpConfigData:(__sFILE *)data
{
  fwrite("tm nodes in x, y, slope\n", 0x18uLL, 1uLL, data);
  fprintf(data, "\t%0.7lf\t%0.7lf\t%0.7lf\n", self->sCrushPq, self->tCrushPq, self->crushSlope);
  fprintf(data, "\t%0.7lf\t%0.7lf\t%0.7lf\n", self->sMidPq, self->tMidPq, self->midSlope);
  fprintf(data, "\t%0.7lf\t%0.7lf\t%0.7lf\n", self->sClipPq, self->tClipPq, self->clipSlope);
  fwrite("trim slope, offset, power, MSW\n", 0x1FuLL, 1uLL, data);
  fprintf(data, "\t%0.7lf\t%0.7lf\t%0.7lf\t%0.7lf\n", self->trimData.trimSlope, self->trimData.trimOffset, self->trimData.trimPower, self->trimData.msWeight);
  fwrite("trim tMidContrast, clipTrim\n", 0x1CuLL, 1uLL, data);
  fprintf(data, "\t%0.7lf\t%0.7lf\n", self->trimData.targetMidContrast, self->trimData.clipTrim);
  fwrite("  chromaW, SatGain\n", 0x13uLL, 1uLL, data);
  fprintf(data, "\t%0.7lf\t%0.7lf\n", self->trimData.trimChromaWeight, self->trimData.trimSaturationGain);
  fwrite("  satVect\n", 0xAuLL, 1uLL, data);
  fprintf(data, "\t%0.7lf\t%0.7lf\t%0.7lf\n", self->trimData.saturationVector[0], self->trimData.saturationVector[1], self->trimData.saturationVector[2]);
  fprintf(data, "\t%0.7lf\t%0.7lf\t%0.7lf\n", self->trimData.saturationVector[3], self->trimData.saturationVector[4], self->trimData.saturationVector[5]);
  fwrite("  hueVect\n", 0xAuLL, 1uLL, data);
  fprintf(data, "\t%0.7lf\t%0.7lf\t%0.7lf\n", self->trimData.hueVector[0], self->trimData.hueVector[1], self->trimData.hueVector[2]);
  fprintf(data, "\t%0.7lf\t%0.7lf\t%0.7lf\n", self->trimData.hueVector[3], self->trimData.hueVector[4], self->trimData.hueVector[5]);
  fwrite("  clipIPred2TmIRatio, clipSatPred2SmISatRatio\n", 0x2EuLL, 1uLL, data);
  fprintf(data, "\t%0.7lf\t%0.7lf\n", self->clipIPred2TmIRatio, self->clipSatPred2SmISatRatio);
  fwrite("m33Yuv2Rgb\n", 0xBuLL, 1uLL, data);
  DumpM33Dbl(data, "SRGB2LMS_TM", self->SRGB2LMS_TM[0]);
  DumpM33Dbl(data, "TRGB2LMS_TM", self->TRGB2LMS_TM[0]);
  DumpM33Dbl(data, "LMS2ITP", self->LMS2ITP[0]);
  fprintf(data, "\ntmLutSize\t\t%zu\n", self->tmLutSize);
  DumpVDbl(data, "tmLutI", self->tmLutSize, self->tmLutI);
  DumpVDbl(data, "tmLutS", self->tmLutSize, self->tmLutS);
  DumpVDbl(data, "smLutI", self->tmLutSize, self->smLutI);
  DumpVDbl(data, "smLutS", self->tmLutSize, self->smLutS);
  DumpVDblMatlab(data, "tmLutI_matlab", self->tmLutSize, self->tmLutI);
  DumpVDblMatlab(data, "tmLutS_matlab", self->tmLutSize, self->tmLutS);
  DumpVDblMatlab(data, "smLutI_matlab", self->tmLutSize, self->smLutI);
  DumpVDblMatlab(data, "smLutS_matlab", self->tmLutSize, self->smLutS);
  fwrite("m33Ipt2Lms\n", 0xBuLL, 1uLL, data);
  fwrite("m33Lms2Rgb\n", 0xBuLL, 1uLL, data);
  fwrite("m33Rgb2Yuv\n", 0xBuLL, 1uLL, data);
  fprintf(data, "cLow: %0.7f, %0.7f, %0.7f, %0.7f\n", self->cLow[0], self->cLow[1], self->cLow[2], self->cLow[3]);
  fprintf(data, "cHigh: %0.7f, %0.7f, %0.7f, %0.7f\n", self->cHigh[0], self->cHigh[1], self->cHigh[2], self->cHigh[3]);
  fprintf(data, "mLow = %0.7f, bLow = %0.7f\n", self->mLow, self->bLow);
  fprintf(data, "mHigh = %0.7f, bHigh = %0.7f\n", self->mHigh, self->bHigh);
}

- (void)dumpConfigDataToFile:(int)file
{
  v8 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x64uLL, "/tmp/com.apple.hdrprocessing/dm4_config_%d.txt", file);
  v4 = fopen(__str, "w");
  if (v4)
  {
    v5 = v4;
    [(DolbyVisionDM4 *)self dumpConfigData:v4];
    fclose(v5);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasDM4TonemapConfigChanged:(id *)changed TonemapConfig:(id *)config TCControl:(ToneCurve_Control *)control EdrAdaptationParam:(const _EdrAdaptationParam *)param AmbAdaptationParam:(const _AmbAdaptationParam *)adaptationParam
{
  if (LODWORD(changed[1].var46) == config->var7 && self->sClipPq == config->var10.var0.var2 && self->sCrushPq == config->var10.var0.var0 && self->sMidPq == config->var10.var0.var1 && self->tMaxPq == config->var10.var0.var4 && self->tMinPq == config->var10.var0.var3 && self->trimData.trimChromaWeight == config->var10.var0.var10 && self->trimData.trimOffset == config->var10.var0.var6 && self->trimData.trimPower == config->var10.var0.var7 && self->trimData.targetMidContrast == config->var10.var0.var8 && self->trimData.trimSaturationGain == config->var10.var0.var9 && self->trimData.trimSlope == config->var10.var0.var5 && changed->var53 == config->var2 && control->hcrUseSystemBrightness == config->var8 && control->targetMaxLinear == config->var9)
  {
    n = param->n;
    if (n == config->var4.n)
    {
      if (param->n)
      {
        Ys = param->Ys;
        Ms = config->var4.Ms;
        while (*(Ys - 4) == *(Ms - 8) && *Ys == *(Ms - 4) && Ys[4] == *Ms)
        {
          ++Ms;
          ++Ys;
          if (!--n)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
LABEL_23:
        v10 = adaptationParam->n;
        if (v10 == config->var5.n)
        {
          if (adaptationParam->n)
          {
            XsC = config->var5.XsC;
            YsC = adaptationParam->YsC;
            while (*(YsC - 3) == *XsC && *YsC == XsC[3] && YsC[3] == XsC[6])
            {
              ++XsC;
              ++YsC;
              if (!--v10)
              {
                goto LABEL_30;
              }
            }
          }

          else
          {
LABEL_30:
            if (adaptationParam->aL == config->var5.aL && adaptationParam->bL == config->var5.bL)
            {
              v14 = 0;
              m33Rgb2Lms = self->inputSurface.m33Rgb2Lms;
              v16 = &config->var10.var2 + 44;
LABEL_34:
              v17 = v16;
              v18 = m33Rgb2Lms;
              v19 = 3;
              v20 = m33Rgb2Lms;
              v21 = v16;
              while (1)
              {
                v23 = *v20;
                v20 = (v20 + 2);
                v22 = v23;
                v24 = *v21++;
                if (v22 != v24 || (*v18)[36] != v17[9])
                {
                  break;
                }

                v17 = v21;
                v18 = v20;
                if (!--v19)
                {
                  result = 0;
                  ++v14;
                  ++m33Rgb2Lms;
                  v16 += 6;
                  if (v14 != 3)
                  {
                    goto LABEL_34;
                  }

                  return result;
                }
              }
            }
          }
        }
      }
    }
  }

  return 1;
}

- (void)updateDM4TonemapConfig:(id *)config DMConfig:(id *)mConfig TCControl:(ToneCurve_Control *)control EdrAdaptationParam:(const _EdrAdaptationParam *)param AmbAdaptationParam:(const _AmbAdaptationParam *)adaptationParam
{
  config->var7 = LODWORD(mConfig[1].var46);
  config->var10.var0.var2 = self->sClipPq;
  *&config->var10.var0.var0 = *&self->sCrushPq;
  *(&config->var10.var2 + 12) = *&self->tMinPq;
  config->var10.var0.var10 = self->trimData.trimChromaWeight;
  *(&config->var10.var2 + 3) = *&self->trimData.trimOffset;
  config->var10.var0.var8 = self->trimData.targetMidContrast;
  config->var10.var0.var9 = self->trimData.trimSaturationGain;
  config->var10.var0.var5 = self->trimData.trimSlope;
  config->var2 = mConfig->var53;
  config->var8 = control->hcrUseSystemBrightness;
  targetMaxLinear = control->targetMaxLinear;
  config->var9 = targetMaxLinear;
  v9 = *&param->Xs[3];
  v8 = *&param->Ys[3];
  *&config->var4.on = *&param->on;
  *&config->var4.Xs[3] = v9;
  *&config->var4.Ys[3] = v8;
  v11 = *&param->splCs[1][2];
  v10 = *&param->splCs[2][2];
  v12 = *&param->splCs[0][2];
  *&config->var4.Ms[3] = *&param->Ms[3];
  *&config->var4.splCs[0][2] = v12;
  *&config->var4.splCs[1][2] = v11;
  *&config->var4.splCs[2][2] = v10;
  v14 = *&param->polyCs[2][2];
  v13 = *&param->linCs[1][0];
  v15 = *&param->polyCs[1][2];
  *&config->var4.polyCs[0][2] = *&param->polyCs[0][2];
  *&config->var4.polyCs[1][2] = v15;
  *&config->var4.polyCs[2][2] = v14;
  *&config->var4.linCs[1][0] = v13;
  v16 = *&param->RWTMO_tgtRefWtNits;
  v17 = *&param->RWTMO_b;
  v18 = *&param->RWTMO_p2x;
  *&config->var4.RWTMO_ExtensionWeight = *&param->RWTMO_ExtensionWeight;
  *&config->var4.RWTMO_b = v17;
  *&config->var4.RWTMO_p2x = v18;
  *&config->var4.RWTMO_tgtRefWtNits = v16;
  *&config->var5.on = *&adaptationParam->on;
  v19 = *adaptationParam->YsC;
  v20 = *&adaptationParam->MsC[1];
  v21 = *&adaptationParam->withLinearExtension;
  *&config->var5.splCs[0][3] = *&adaptationParam->splCs[0][3];
  *&config->var5.withLinearExtension = v21;
  *&config->var5.MsC[1] = v20;
  *config->var5.YsC = v19;
  v22 = *&adaptationParam->splCs[1][3];
  v23 = *&adaptationParam->polyCs[0][3];
  v24 = *&adaptationParam->polyCs[1][3];
  *&config->var5.linCs[1][1] = *&adaptationParam->linCs[1][1];
  *&config->var5.polyCs[1][3] = v24;
  *&config->var5.polyCs[0][3] = v23;
  *&config->var5.splCs[1][3] = v22;
  v25 = *&self->inputSurface.m33Rgb2Lms[0][0];
  config->var10.var1.var11[2][2] = self->inputSurface.m33Rgb2Lms[2][2];
  *(&config->var10.var2 + 44) = v25;
  v26 = *&self->outputSurface.m33Rgb2Lms[0][0];
  config->var10.var1.var12[2][2] = self->outputSurface.m33Rgb2Lms[2][2];
  *(&config->var10.var2 + 62) = v26;
}

- (float)applyL8Trim:(float)trim
{
  dmAlgVerInCm = self->dmAlgVerInCm;
  if (dmAlgVerInCm >= 4)
  {
    trim = (trim - self->tMinPq) / (self->tMaxPq - self->tMinPq);
  }

  v5 = self->trimData.trimOffset + (self->trimData.trimSlope * trim);
  if (v5 <= 0.0)
  {
    v6 = 0.0;
    if (v5 < 0.0)
    {
      v6 = -powf(-v5, self->trimData.trimPower);
    }
  }

  else
  {
    v6 = powf(self->trimData.trimOffset + (self->trimData.trimSlope * trim), self->trimData.trimPower);
  }

  if (dmAlgVerInCm >= 4)
  {
    v6 = self->tMinPq + (v6 * (self->tMaxPq - self->tMinPq));
  }

  v7 = 1.0;
  if (v6 <= 1.0)
  {
    v7 = v6;
  }

  v8 = v6 < 0.0;
  result = 0.0;
  if (!v8)
  {
    return v7;
  }

  return result;
}

@end