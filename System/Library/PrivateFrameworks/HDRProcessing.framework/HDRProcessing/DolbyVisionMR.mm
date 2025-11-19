@interface DolbyVisionMR
- (DolbyVisionMR)init;
- (int)metadataReconstruction:(id *)a3 dmData:(id *)a4 maxDisplayBrightnessNits:(double)a5 targetMaxNits:(double)a6 targetMinNits:(double)a7 displayPrimaries:(double *)a8 baseMax:(double)a9 baseMin:(double)a10 videoFullRangeFlag:(int)a11 colourPrimaries:(int)a12 matrixCoeffs:(int)a13 numFrames:(unsigned int)a14;
- (void)dealloc;
@end

@implementation DolbyVisionMR

- (DolbyVisionMR)init
{
  v8.receiver = self;
  v8.super_class = DolbyVisionMR;
  v2 = [(DolbyVisionMR *)&v8 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 8) = xmmword_2508D1D20;
    *(v2 + 3) = 0x10000000CLL;
    *(v2 + 8) = 1;
    *(v2 + 5) = 0;
    *(v2 + 12) = 0;
    *(v2 + 16) = 0x200000000;
    *(v2 + 34) = 0;
    *(v2 + 54) = 0;
    *(v2 + 62) = 0;
    *(v2 + 72) = 0;
    *(v2 + 35) = 3;
    *(v2 + 37) = 0x3F747AE147AE147BLL;
    *(v2 + 38) = 0x408F400000000000;
    *(v2 + 39) = 3;
    *(v2 + 48) = 28;
    *(v2 + 49) = 0x3F747AE147AE147BLL;
    *(v2 + 50) = 0x4059000000000000;
    *(v2 + 51) = 2;
    v4 = &DisplayTbl;
    v5 = 7;
    *(v2 + 60) = 16;
    do
    {
      DisplayIdxTblDoViMR81[*v4] = v4;
      v4 += 40;
      --v5;
    }

    while (v5);
    bzero(v2 + 12752, 0x450uLL);
    v6 = v3;
  }

  return v3;
}

- (int)metadataReconstruction:(id *)a3 dmData:(id *)a4 maxDisplayBrightnessNits:(double)a5 targetMaxNits:(double)a6 targetMinNits:(double)a7 displayPrimaries:(double *)a8 baseMax:(double)a9 baseMin:(double)a10 videoFullRangeFlag:(int)a11 colourPrimaries:(int)a12 matrixCoeffs:(int)a13 numFrames:(unsigned int)a14
{
  v197 = *MEMORY[0x277D85DE8];
  v26 = 0.0;
  if (a9 >= 0.0)
  {
    v26 = a9;
  }

  v27 = pow(v26 / 10000.0, 0.159301758);
  v28 = pow((v27 * 18.8515625 + 0.8359375) / (v27 * 18.6875 + 1.0), 78.84375);
  v173 = a4;
  LODWORD(v29) = a4->var16;
  if (fabs(v28 + v29 / -4095.0) >= 0.00138888889)
  {
    v31 = 1000.0;
    if (a6 <= 1000.0)
    {
      v31 = a6;
    }

    v175 = v31;
    if (GetConfig())
    {
      Config = GetConfig();
      if (*HDRConfig::GetConfigEntryValue(Config, 0x5Du, 0) == 1)
      {
        v189[0] = 0;
        if (MrCacheIsHit(a4, a11, a12, a13, self->mrCache.YCCtoRGB_coef, v189, v175, a7, a9, a10))
        {
          invalidateDMDataL2L4L5L6L8L10(a4);
          v33 = *self->mrCache.mr_YCCtoRGB_coef;
          v34 = *&self->mrCache.mr_YCCtoRGB_coef[4];
          a4->var4[8] = self->mrCache.mr_YCCtoRGB_coef[8];
          *a4->var4 = v33;
          *&a4->var4[4] = v34;
          v35 = *self->mrCache.mr_YCCtoRGB_offset;
          a4->var5[2] = self->mrCache.mr_YCCtoRGB_offset[2];
          *a4->var5 = v35;
          v36 = *self->mrCache.mr_RGBtoLMS_coef;
          v37 = *&self->mrCache.mr_RGBtoLMS_coef[4];
          a4->var6[8] = self->mrCache.mr_RGBtoLMS_coef[8];
          *a4->var6 = v36;
          *&a4->var6[4] = v37;
          *&a4->var15 = *&self->mrCache.mr_source_min_PQ;
          *&a4->var18 = *&self->mrCache.mr_num_ext_blocks;
          a4->var20 = self->mrCache.mr_num_blocks_l8;
          a4->var21 = self->mrCache.mr_L1;
          v38 = self->mrCache.mr_L2[0];
          v39 = self->mrCache.mr_L2[1];
          v40 = self->mrCache.mr_L2[2];
          a4->var22[3] = self->mrCache.mr_L2[3];
          a4->var22[2] = v40;
          a4->var22[1] = v39;
          a4->var22[0] = v38;
          v41 = self->mrCache.mr_L2[4];
          v42 = self->mrCache.mr_L2[5];
          v43 = self->mrCache.mr_L2[7];
          a4->var22[6] = self->mrCache.mr_L2[6];
          a4->var22[7] = v43;
          a4->var22[5] = v42;
          a4->var22[4] = v41;
          a4->var23 = self->mrCache.mr_L3;
          v44 = *&self->mrCache.mr_L4.valid;
          a4->var24.var2 = self->mrCache.mr_L4.anchor_power;
          *&a4->var24.var0 = v44;
          v45 = *self->mrCache.mr_L8[2].hue_vector_field;
          v47 = *&self->mrCache.mr_L8[1].trim_saturation_gain;
          v46 = *&self->mrCache.mr_L8[1].hue_vector_field[2];
          *&a4->var27[2].var6 = *&self->mrCache.mr_L8[2].trim_chroma_weight;
          *a4->var27[2].var12 = v45;
          *&a4->var27[1].var7 = v47;
          *&a4->var27[1].var12[2] = v46;
          v49 = *&self->mrCache.mr_L8[3].saturation_vector_field[4];
          v48 = *&self->mrCache.mr_L8[4].trim_offset;
          v50 = *&self->mrCache.mr_L8[3].trim_power;
          *&a4->var27[4].var9 = *&self->mrCache.mr_L8[4].target_mid_contrast;
          *&a4->var27[3].var11[4] = v49;
          *&a4->var27[4].var4 = v48;
          *&a4->var27[3].var5 = v50;
          v51 = *&self->mrCache.mr_L8[0].valid;
          v52 = *&self->mrCache.mr_L8[0].hue_vector_field[4];
          *&a4->var27[0].var8 = *&self->mrCache.mr_L8[0].ms_weight;
          *&a4->var27[0].var12[4] = v52;
          *&a4->var27[0].var0 = v51;
          v53 = *&self->mrCache.mr_L10[0].valid;
          v54 = *&self->mrCache.mr_L10[1].target_display_index;
          *&a4->var29[0].var8 = *&self->mrCache.mr_L10[0].target_primary_green_x;
          *&a4->var29[1].var2 = v54;
          *&a4->var29[0].var0 = v53;
          v55 = *&self->mrCache.mr_L10[1].target_primary_blue_x;
          v56 = *&self->mrCache.mr_L10[2].target_min_PQ;
          v57 = *&self->mrCache.mr_L10[3].target_primary_red_x;
          *&a4->var29[2].var12 = *&self->mrCache.mr_L10[2].target_primary_white_x;
          *&a4->var29[3].var6 = v57;
          *&a4->var29[1].var10 = v55;
          *&a4->var29[2].var4 = v56;
LABEL_19:
          updateComposerData(a3);
          goto LABEL_20;
        }

        if (v189[0] == 1)
        {
          if (GetConfig())
          {
            v59 = GetConfig();
            if (*HDRConfig::GetConfigEntryValue(v59, 0x61u, 0) == 1)
            {
              LOWORD(v181) = 0;
              *buf = 0;
              if (a4->var24.var0)
              {
                hdrpConstructL4(&self->mr, a4, buf, v60);
              }

              *&self->mrCache.mr_L4.valid = *buf;
              self->mrCache.mr_L4.anchor_power = v181;
              invalidateDMDataL2L4L5L6L8L10(a4);
              MrCacheReadTgt(a4, self->mrCache.YCCtoRGB_coef);
              goto LABEL_19;
            }
          }
        }

        MrCacheUpdateSrc(a4, a11, a12, a13, self->mrCache.YCCtoRGB_coef, v175, a7, a9, a10);
      }
    }

    v169 = a11;
    v61 = &self->mr.trmCodec.CodeBias2[1];
    memset(v190, 0, sizeof(v190));
    memset(v189, 0, 170);
    memset(v188, 0, sizeof(v188));
    v179 = 0;
    v178 = 0;
    bzero(&self->mdsExt, 0xBE0uLL);
    *&self->mdsExt.trim2.TrimLevel = 0x700000002;
    *&self->mdsExt.trim8.TrimLevel = 0x1500000008;
    *&self->mdsExt.trim10.TrimLevel = 0xC0000000ALL;
    self->mdsExt.filtered_mean_PQ = -1.0;
    p_mr = &self->mr;
    bzero(&self->mr, 0x2408uLL);
    v174 = self;
    p_trim8 = &self->mr.mdsBase.mdsExtBaseFxp.trim8;
    self->mr.trmCodec.Default2[1] = 1.0;
    self->mr.trmCodec.Default2[3] = 1.0;
    __asm { FMOV            V0.2D, #1.0 }

    *&self->mr.trmCodec.Default2[5] = _Q0;
    v167 = _Q0;
    self->mr.trmCodec.CodeBias2[1] = 0.5;
    *&self->mr.trmCodec.CodeBias2[2] = xmmword_2508D1D30;
    *&self->mr.trmCodec.CodeBias2[4] = xmmword_2508D1D30;
    Default8 = self->mr.trmCodec.Default8;
    *Default8 = 1.0;
    *&v174->mr.trmCodec.Default8[1] = *&v174->mr.trmCodec.Default2[1];
    *&v174->mr.trmCodec.Default8[3] = *&v174->mr.trmCodec.Default2[3];
    v69 = *(v61 + 1);
    *(v61 + 14) = *v61;
    *(v61 + 15) = v69;
    *&v174->mr.trmCodec.Default8[5] = _Q0;
    *(v61 + 16) = *(v61 + 2);
    *&v174->mr.trmCodec.Default8[7] = 0u;
    v174->mr.trmCodec.CodeBias8[7] = -0.5;
    v174->mr.trmCodec.CodeBias8[8] = -0.5;
    *&v174->mr.trmCodec.Default8[13] = 0u;
    *&v174->mr.trmCodec.Default8[11] = 0u;
    *&v174->mr.trmCodec.Default8[9] = 0u;
    memset_pattern16(&v174->mr.trmCodec.CodeBias8[9], &unk_2508D1DB0, 0x30uLL);
    *&v174->mr.trmCodec.Default8[19] = 0u;
    *&v174->mr.trmCodec.Default8[17] = 0u;
    *&v174->mr.trmCodec.Default8[15] = 0u;
    memset_pattern16(&v174->mr.trmCodec.CodeBias8[15], &unk_2508D1DC0, 0x30uLL);
    *&v174->mr.trmCodec.CodeBias10[8] = 0u;
    *&v174->mr.trmCodec.CodeBias10[10] = 0u;
    *&v174->mr.trmCodec.CodeBias10[4] = 0u;
    *&v174->mr.trmCodec.CodeBias10[6] = 0u;
    *v174->mr.trmCodec.CodeBias10 = 0u;
    *&v174->mr.trmCodec.CodeBias10[2] = 0u;
    v174->mr.trmCodec.Default10[0] = 1.0;
    *&v174->mr.trmCodec.Default10[1] = xmmword_2508D1D40;
    v174->mr.trmCodec.Default10[3] = 1.0;
    v174->mr.mrCfgChged = 1;
    v174->mr.mdsExtChged = 1;
    v174->mr.mdsBaseValid = -1;
    bzero(&v174->mr.mdsBase.mdsExtBase, 0xBE0uLL);
    *&v174->mr.mdsBase.mdsExtBase.trim2.TrimLevel = 0x700000002;
    *&v174->mr.mdsBase.mdsExtBase.trim8.TrimLevel = 0x1500000008;
    *&v174->mr.mdsBase.mdsExtBase.trim10.TrimLevel = 0xC0000000ALL;
    v174->mr.mdsBase.mdsExtBase.filtered_mean_PQ = -1.0;
    bzero(&v174->mr.mdsBase.mdsExtBaseFxp, 0x2BCuLL);
    *&v174->mr.mdsBase.mdsExtBaseFxp.trim2.TrimLevel = 0x700000002;
    *&v174->mr.mdsBase.mdsExtBaseFxp.trim8.TrimLevel = 0x1500000008;
    *&v174->mr.mdsBase.mdsExtBaseFxp.trim10.TrimLevel = 0xC0000000ALL;
    p_trim8[1].Trima[3][9] = -1;
    v174->mr.tcCtrl.pDefL8 = Default8;
    v174->mr.tcCtrl.pDefL2 = p_mr;
    v174->mr.tcCtrl.sps[1].sMin = 0.0;
    *&v174->mr.tcCtrl.sps[1].tMin = xmmword_2508D1D50;
    *&v174->mr.tcCtrl.sps[1].sMid = xmmword_2508D1D60;
    *&v174->mr.tcCtrl.sps[1].slopeMid = v167;
    *&v174->mr.tcCtrl.sps[1].tMax = v167;
    *&v174->mr.tcCtrl.sps[1].c2l = 0u;
    *&v174->mr.tcCtrl.sps[1].c2u = 0u;
    v174->mrCfg.mrCtrl.Bdp = a3->var2;
    v174->mrCfg.mrCtrl.Rng = v169 != 0;
    if (a12 == 12)
    {
      v174->mrCfg.sigEnv[0].RgbDef = 0;
      *v174->mrCfg.sigEnv[0].V8Primaries = xmmword_2508D1EC0;
      *&v174->mrCfg.sigEnv[0].V8Primaries[2] = unk_2508D1ED0;
      *&v174->mrCfg.sigEnv[0].V8Primaries[4] = xmmword_2508D1EE0;
      *&v174->mrCfg.sigEnv[0].V8Primaries[6] = unk_2508D1EF0;
      v70 = a4;
    }

    else
    {
      v70 = a4;
      if (a12 == 1)
      {
        v174->mrCfg.sigEnv[0].RgbDef = 2;
        v71 = &xmmword_2508D1E40;
      }

      else
      {
        v174->mrCfg.sigEnv[0].RgbDef = 3;
        v71 = &xmmword_2508D1E80;
      }

      v72 = v71[1];
      *v174->mrCfg.sigEnv[0].V8Primaries = *v71;
      *&v174->mrCfg.sigEnv[0].V8Primaries[2] = v72;
      v73 = v71[3];
      *&v174->mrCfg.sigEnv[0].V8Primaries[4] = v71[2];
      *&v174->mrCfg.sigEnv[0].V8Primaries[6] = v73;
    }

    if (a13 == 1)
    {
      v74 = 2;
    }

    else
    {
      v74 = 3;
    }

    if (a13 == 12)
    {
      v74 = 0;
    }

    v174->mrCfg.mrCtrl.YuvXferSpec = v74;
    v75 = *a8;
    v76 = *(a8 + 1);
    v77 = *(a8 + 3);
    *&v174->mrCfg.sigEnv[1].V8Primaries[4] = *(a8 + 2);
    *&v174->mrCfg.sigEnv[1].V8Primaries[6] = v77;
    *v174->mrCfg.sigEnv[1].V8Primaries = v75;
    *&v174->mrCfg.sigEnv[1].V8Primaries[2] = v76;
    if (GetConfig())
    {
      v78 = GetConfig();
      if (*HDRConfig::GetConfigEntryValue(v78, 0x64u, 0) == 1)
      {
        *v174->mrCfg.sigEnv[1].V8Primaries = xmmword_2508D1EC0;
        *&v174->mrCfg.sigEnv[1].V8Primaries[2] = unk_2508D1ED0;
        *&v174->mrCfg.sigEnv[1].V8Primaries[4] = xmmword_2508D1EE0;
        *&v174->mrCfg.sigEnv[1].V8Primaries[6] = unk_2508D1EF0;
      }
    }

    v174->mrCfg.mrCtrl.DmVer = 2;
    if (v70->var32.var0)
    {
      v79 = 4;
      if (v70->var32.var2 == 2)
      {
        v174->mrCfg.mrCtrl.DmVer = 4;
        v80 = 16;
        v79 = 16;
LABEL_50:
        v174->mrCfg.sigEnv[0].SupportDms = v79;
        v174->mrCfg.sigEnv[1].SupportDms = v80;
        v174->mrCfg.sigEnv[0].Min = a10;
        v174->mrCfg.sigEnv[0].Max = a9;
        v187 = 0;
        v186 = 0u;
        v185 = 0u;
        *&v184[8] = 0u;
        *v184 = v175;
        if (!GetConfig() || (v81 = GetConfig(), *HDRConfig::GetConfigEntryValue(v81, 0x62u, 0) != 1))
        {
          v84 = 1;
          goto LABEL_64;
        }

        *v184 = xmmword_2508D1D70;
        *&v184[16] = 0x407D900000000000;
        if (GetConfig())
        {
          v82 = GetConfig();
          ConfigEntryValue = HDRConfig::GetConfigEntryValue(v82, 0x5Fu, 0);
          v84 = 3;
          if (a5 <= 100.0 || a5 >= 1000.0 || (*ConfigEntryValue & 1) == 0)
          {
LABEL_64:
            v88 = (a7 * 1000000.0 + 0.5) / 1000000.0;
            if (GetConfig())
            {
              v89 = GetConfig();
              if (*HDRConfig::GetConfigEntryValue(v89, 0x63u, 0))
              {
                v88 = 0.005;
              }
            }

            bzero(buf, 0x364uLL);
            v177 = 0;
            v90 = convertMetaDataToPayLoad(v70, buf);
            v96 = MrParseMds(buf, v90, v91, v92, v93, v94, v95, &v174->mrCfg, &v177, &v174->mdsExt, p_mr);
            if (v96 < 0)
            {
              v155 = v96;
              if (enableLogInstance)
              {
                if (logInstanceID)
                {
                  v156 = logInstanceID;
                }

                else
                {
                  v156 = prevLogInstanceID;
                }

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  *v191 = 134218240;
                  *&v191[4] = WORD1(v156);
                  *&v191[12] = 1024;
                  *v192 = v155;
                  v157 = MEMORY[0x277D86220];
                  v158 = " [1.450.54] #%04llx MR81: metadataReconstruction: Error: ParseMds ret = %d";
LABEL_185:
                  _os_log_impl(&dword_250836000, v157, OS_LOG_TYPE_DEFAULT, v158, v191, 0x12u);
                }

LABEL_186:
                prevLogInstanceID = v156;
                goto LABEL_196;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
LABEL_196:
                LODWORD(v58) = -1;
                goto LABEL_197;
              }

              *v191 = 67109120;
              *&v191[4] = v155;
              v159 = MEMORY[0x277D86220];
              v160 = " [1.450.54] MR81: metadataReconstruction: Error: ParseMds ret = %d";
            }

            else
            {
              v176 = 0;
              v97 = v184;
              v98 = v84;
              while (1)
              {
                v99 = *v97;
                v174->mrCfg.sigEnv[1].Min = v88;
                v174->mrCfg.sigEnv[1].Max = v99;
                v100 = hdrpMetadataReconstruction(&v174->mrCfg, &v174->mdsExt, 0, p_mr);
                v101 = v100;
                if (v100 < 0)
                {
                  if (enableLogInstance)
                  {
                    if (logInstanceID)
                    {
                      v156 = logInstanceID;
                    }

                    else
                    {
                      v156 = prevLogInstanceID;
                    }

                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      *v191 = 134218240;
                      *&v191[4] = WORD1(v156);
                      *&v191[12] = 1024;
                      *v192 = v101;
                      v157 = MEMORY[0x277D86220];
                      v158 = " [1.450.54] #%04llx MR81: metadataReconstruction: Error: ret = %d";
                      goto LABEL_185;
                    }

                    goto LABEL_186;
                  }

                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_196;
                  }

                  *v191 = 67109120;
                  *&v191[4] = v101;
                  v159 = MEMORY[0x277D86220];
                  v160 = " [1.450.54] MR81: metadataReconstruction: Error: ret = %d";
                  goto LABEL_195;
                }

                if (!v100)
                {
                  if (enableLogInstance)
                  {
                    if (logInstanceID)
                    {
                      v156 = logInstanceID;
                    }

                    else
                    {
                      v156 = prevLogInstanceID;
                    }

                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      *v191 = 134218240;
                      *&v191[4] = WORD1(v156);
                      *&v191[12] = 1024;
                      *v192 = 0;
                      v157 = MEMORY[0x277D86220];
                      v158 = " [1.450.54] #%04llx MR81: metadataReconstruction: Warning: ret = %d [no change]";
                      goto LABEL_185;
                    }

                    goto LABEL_186;
                  }

                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_196;
                  }

                  *v191 = 67109120;
                  v159 = MEMORY[0x277D86220];
                  v160 = " [1.450.54] MR81: metadataReconstruction: Warning: ret = %d [no change]";
                  goto LABEL_195;
                }

                MdsExtFxpMr = MrGetMdsExtFxpMr(&v176, p_mr);
                v103 = MdsExtFxpMr;
                if (MdsExtFxpMr < 0)
                {
                  if (enableLogInstance)
                  {
                    if (logInstanceID)
                    {
                      v156 = logInstanceID;
                    }

                    else
                    {
                      v156 = prevLogInstanceID;
                    }

                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      *v191 = 134218240;
                      *&v191[4] = WORD1(v156);
                      *&v191[12] = 1024;
                      *v192 = v103;
                      v157 = MEMORY[0x277D86220];
                      v158 = " [1.450.54] #%04llx MR81: metadataReconstruction: Error: GetMdsExtFxpMr ret = %d";
                      goto LABEL_185;
                    }

                    goto LABEL_186;
                  }

                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_196;
                  }

                  *v191 = 67109120;
                  *&v191[4] = v103;
                  v159 = MEMORY[0x277D86220];
                  v160 = " [1.450.54] MR81: metadataReconstruction: Error: GetMdsExtFxpMr ret = %d";
                  goto LABEL_195;
                }

                if (!MdsExtFxpMr)
                {
                  break;
                }

                v104 = v176;
                copyL2L8L10(v176, v190, v189, v188, &v179 + 1, &v179, &v178);
                ++v97;
                if (!--v98)
                {
                  v166 = v84;
                  v168 = p_mr;
                  v170 = a3;
                  invalidateDMDataL2L4L5L6L8L10(v70);
                  v105 = 0;
                  v70->var15 = *(v104 + 76);
                  v70->var16 = *(v104 + 78);
                  var4 = v70->var4;
                  v172 = v104;
                  v107 = v104 + 8;
                  v108 = MEMORY[0x277D86220];
                  do
                  {
                    for (i = 0; i != 3; ++i)
                    {
                      v110 = var4[i];
                      v111 = *(v107 + 2 * i);
                      if (v110 != v111)
                      {
                        if (enableLogInstance)
                        {
                          if (logInstanceID)
                          {
                            v112 = logInstanceID;
                          }

                          else
                          {
                            v112 = prevLogInstanceID;
                          }

                          if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                          {
                            *v191 = 134219008;
                            *&v191[4] = WORD1(v112);
                            *&v191[12] = 1024;
                            *v192 = v105;
                            *&v192[4] = 1024;
                            *v193 = i;
                            *&v193[4] = 1024;
                            v194 = v110;
                            v195 = 1024;
                            v196 = v111;
                            _os_log_impl(&dword_250836000, v108, OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx MR81: metadataReconstruction: Warning: YCCtoRGB_coef [%d][%d] changed, %d/%d", v191, 0x24u);
                          }

                          prevLogInstanceID = v112;
                        }

                        else if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                        {
                          *v191 = 67109888;
                          *&v191[4] = v105;
                          *&v191[8] = 1024;
                          *&v191[10] = i;
                          *v192 = 1024;
                          *&v192[2] = v110;
                          *v193 = 1024;
                          *&v193[2] = v111;
                          _os_log_impl(&dword_250836000, v108, OS_LOG_TYPE_DEFAULT, " [1.450.54] MR81: metadataReconstruction: Warning: YCCtoRGB_coef [%d][%d] changed, %d/%d", v191, 0x1Au);
                        }
                      }
                    }

                    ++v105;
                    v107 += 6;
                    var4 += 3;
                  }

                  while (v105 != 3);
                  v113 = 0;
                  v114 = MEMORY[0x277D86220];
                  v115 = v173;
                  do
                  {
                    v116 = v115->var5[v113];
                    v117 = *(v172 + 28 + 4 * v113);
                    if (v116 != v117)
                    {
                      if (enableLogInstance)
                      {
                        if (logInstanceID)
                        {
                          v118 = logInstanceID;
                        }

                        else
                        {
                          v118 = prevLogInstanceID;
                        }

                        if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
                        {
                          *v191 = 134218752;
                          *&v191[4] = WORD1(v118);
                          *&v191[12] = 1024;
                          *v192 = v113;
                          *&v192[4] = 1024;
                          *v193 = v116;
                          *&v193[4] = 1024;
                          v194 = v117;
                          _os_log_impl(&dword_250836000, v114, OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx MR81: metadataReconstruction: Warning: YCCtoRGB_offset[%d] changed, %u/%u", v191, 0x1Eu);
                        }

                        prevLogInstanceID = v118;
                        v115 = v173;
                      }

                      else if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
                      {
                        *v191 = 67109632;
                        *&v191[4] = v113;
                        *&v191[8] = 1024;
                        *&v191[10] = v116;
                        *v192 = 1024;
                        *&v192[2] = v117;
                        _os_log_impl(&dword_250836000, v114, OS_LOG_TYPE_DEFAULT, " [1.450.54] MR81: metadataReconstruction: Warning: YCCtoRGB_offset[%d] changed, %u/%u", v191, 0x14u);
                      }
                    }

                    ++v113;
                  }

                  while (v113 != 3);
                  v119 = 0;
                  var6 = v115->var6;
                  v121 = v172 + 42;
                  v122 = MEMORY[0x277D86220];
                  do
                  {
                    for (j = 0; j != 3; ++j)
                    {
                      v124 = var6[j];
                      v125 = *(v121 + 2 * j);
                      if (v124 != v125)
                      {
                        if (enableLogInstance)
                        {
                          if (logInstanceID)
                          {
                            v126 = logInstanceID;
                          }

                          else
                          {
                            v126 = prevLogInstanceID;
                          }

                          if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
                          {
                            *v191 = 134219008;
                            *&v191[4] = WORD1(v126);
                            *&v191[12] = 1024;
                            *v192 = v119;
                            *&v192[4] = 1024;
                            *v193 = j;
                            *&v193[4] = 1024;
                            v194 = v124;
                            v195 = 1024;
                            v196 = v125;
                            _os_log_impl(&dword_250836000, v122, OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx MR81: metadataReconstruction: Warning: RGBtoLMS_coef [%d][%d] changed, %d/%d", v191, 0x24u);
                          }

                          prevLogInstanceID = v126;
                        }

                        else if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
                        {
                          *v191 = 67109888;
                          *&v191[4] = v119;
                          *&v191[8] = 1024;
                          *&v191[10] = j;
                          *v192 = 1024;
                          *&v192[2] = v124;
                          *v193 = 1024;
                          *&v193[2] = v125;
                          _os_log_impl(&dword_250836000, v122, OS_LOG_TYPE_DEFAULT, " [1.450.54] MR81: metadataReconstruction: Warning: RGBtoLMS_coef [%d][%d] changed, %d/%d", v191, 0x1Au);
                        }
                      }
                    }

                    ++v119;
                    v121 += 6;
                    var6 += 3;
                  }

                  while (v119 != 3);
                  *v173->var4 = vmovl_s16(*(v172 + 8));
                  *&v173->var4[4] = vmovl_s16(*(v172 + 16));
                  v173->var4[8] = *(v172 + 24);
                  v173->var5[0] = *(v172 + 28);
                  v173->var5[1] = *(v172 + 32);
                  v173->var5[2] = *(v172 + 36);
                  *v173->var6 = vmovl_s16(*(v172 + 42));
                  *&v173->var6[4] = vmovl_s16(*(v172 + 50));
                  v173->var6[8] = *(v172 + 58);
                  v173->var21.var1 = *(v172 + 120);
                  v173->var21.var3 = *(v172 + 124);
                  v173->var21.var2 = *(v172 + 122);
                  v173->var23.var0 = 1;
                  v173->var23.var1 = *(v172 + 126);
                  v173->var23.var2 = *(v172 + 128);
                  v173->var23.var3 = *(v172 + 130);
                  ++v173->var18;
                  if (*(v172 + 692) != -1)
                  {
                    if (GetConfig())
                    {
                      v127 = GetConfig();
                      if (*HDRConfig::GetConfigEntryValue(v127, 0x60u, 0) == 1)
                      {
                        v173->var24.var0 = 1;
                        *&v173->var24.var1 = *(v172 + 692);
                        ++v173->var18;
                      }
                    }
                  }

                  v128 = v166;
                  if (v174->mrCfg.mrCtrl.DmVer == 4)
                  {
                    v174->mrCfg.mrCtrl.DmVer = 3;
                    v174->mrCfg.sigEnv[0].SupportDms = 4;
                    v174->mrCfg.sigEnv[1].SupportDms = 8;
                    v174->mdsExt.dm_version_index = 1;
                    bzero(&v174->mr.mdsBase.mdsExtBase, 0xBE0uLL);
                    *&v174->mr.mdsBase.mdsExtBase.trim2.TrimLevel = 0x700000002;
                    *&v174->mr.mdsBase.mdsExtBase.trim8.TrimLevel = 0x1500000008;
                    *&v174->mr.mdsBase.mdsExtBase.trim10.TrimLevel = 0xC0000000ALL;
                    v174->mr.mdsBase.mdsExtBase.filtered_mean_PQ = -1.0;
                    bzero(&v174->mr.mdsBase.mdsExtBaseFxp, 0x2BCuLL);
                    *&v174->mr.mdsBase.mdsExtBaseFxp.trim2.TrimLevel = 0x700000002;
                    *&p_trim8->TrimLevel = 0x1500000008;
                    *&p_trim8[1].TrimLevel = 0xC0000000ALL;
                    p_trim8[1].Trima[3][9] = -1;
                    v129 = v184;
                    while (1)
                    {
                      v130 = *v129;
                      v174->mrCfg.sigEnv[1].Min = v88;
                      v174->mrCfg.sigEnv[1].Max = v130;
                      v131 = hdrpMetadataReconstruction(&v174->mrCfg, &v174->mdsExt, 0, v168);
                      v132 = v131;
                      if (v131 < 0)
                      {
                        if (enableLogInstance)
                        {
                          if (logInstanceID)
                          {
                            v162 = logInstanceID;
                          }

                          else
                          {
                            v162 = prevLogInstanceID;
                          }

                          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                          {
                            *v191 = 134218240;
                            *&v191[4] = WORD1(v162);
                            *&v191[12] = 1024;
                            *v192 = v132;
                            v163 = MEMORY[0x277D86220];
                            v164 = " [1.450.54] #%04llx MR81: metadataReconstruction: Error: ret = %d";
                            goto LABEL_222;
                          }

                          goto LABEL_223;
                        }

                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                        {
                          *v191 = 67109120;
                          *&v191[4] = v132;
                          v159 = MEMORY[0x277D86220];
                          v160 = " [1.450.54] MR81: metadataReconstruction: Error: ret = %d";
                          goto LABEL_195;
                        }

                        goto LABEL_196;
                      }

                      if (!v131)
                      {
                        if (enableLogInstance)
                        {
                          if (logInstanceID)
                          {
                            v162 = logInstanceID;
                          }

                          else
                          {
                            v162 = prevLogInstanceID;
                          }

                          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                          {
                            *v191 = 134218240;
                            *&v191[4] = WORD1(v162);
                            *&v191[12] = 1024;
                            *v192 = 0;
                            v163 = MEMORY[0x277D86220];
                            v164 = " [1.450.54] #%04llx MR81: metadataReconstruction: Warning: ret = %d [no change]";
                            goto LABEL_222;
                          }

                          goto LABEL_223;
                        }

                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                        {
                          *v191 = 67109120;
                          v159 = MEMORY[0x277D86220];
                          v160 = " [1.450.54] MR81: metadataReconstruction: Warning: ret = %d [no change]";
                          goto LABEL_195;
                        }

                        goto LABEL_196;
                      }

                      v133 = MrGetMdsExtFxpMr(&v176, v168);
                      v134 = v133;
                      if (v133 < 0)
                      {
                        if (enableLogInstance)
                        {
                          if (logInstanceID)
                          {
                            v162 = logInstanceID;
                          }

                          else
                          {
                            v162 = prevLogInstanceID;
                          }

                          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                          {
                            *v191 = 134218240;
                            *&v191[4] = WORD1(v162);
                            *&v191[12] = 1024;
                            *v192 = v134;
                            v163 = MEMORY[0x277D86220];
                            v164 = " [1.450.54] #%04llx MR81: metadataReconstruction: Error: GetMdsExtFxpMr ret = %d";
                            goto LABEL_222;
                          }

LABEL_223:
                          prevLogInstanceID = v162;
                          goto LABEL_196;
                        }

                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                        {
                          *v191 = 67109120;
                          *&v191[4] = v134;
                          v159 = MEMORY[0x277D86220];
                          v160 = " [1.450.54] MR81: metadataReconstruction: Error: GetMdsExtFxpMr ret = %d";
                          goto LABEL_195;
                        }

                        goto LABEL_196;
                      }

                      if (!v133)
                      {
                        break;
                      }

                      copyL2L8L10(v176, v190, v189, v188, &v179 + 1, &v179, &v178);
                      ++v129;
                      if (!--v128)
                      {
                        goto LABEL_125;
                      }
                    }

                    if (enableLogInstance)
                    {
                      if (logInstanceID)
                      {
                        v162 = logInstanceID;
                      }

                      else
                      {
                        v162 = prevLogInstanceID;
                      }

                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                      {
                        *v191 = 134218240;
                        *&v191[4] = WORD1(v162);
                        *&v191[12] = 1024;
                        *v192 = 0;
                        v163 = MEMORY[0x277D86220];
                        v164 = " [1.450.54] #%04llx MR81: metadataReconstruction: Warning: GetMdsExtFxpMr ret = %d [no change]";
LABEL_222:
                        _os_log_impl(&dword_250836000, v163, OS_LOG_TYPE_DEFAULT, v164, v191, 0x12u);
                      }

                      goto LABEL_223;
                    }

                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      *v191 = 67109120;
                      v159 = MEMORY[0x277D86220];
                      v160 = " [1.450.54] MR81: metadataReconstruction: Warning: GetMdsExtFxpMr ret = %d [no change]";
                      goto LABEL_195;
                    }

                    goto LABEL_196;
                  }

LABEL_125:
                  v135 = v179;
                  v136 = HIDWORD(v179);
                  v137 = v178;
                  if (HIDWORD(v179))
                  {
                    if (SHIDWORD(v179) >= 1)
                    {
                      var18 = v173->var18;
                      v139 = v190 | 0xE;
                      p_var7 = &v173->var22[0].var7;
                      v141 = HIDWORD(v179);
                      do
                      {
                        *(p_var7 - 6) = *(v139 - 12);
                        *(p_var7 - 2) = *(v139 - 4);
                        *(p_var7 - 1) = *(v139 - 2);
                        *(p_var7 - 7) = 1;
                        v139 += 16;
                        p_var7 += 8;
                        --v141;
                      }

                      while (v141);
                      v173->var18 = var18 + v136;
                    }

                    v173->var19 = v136;
                  }

                  if (v135)
                  {
                    if (v135 >= 1)
                    {
                      v142 = 0;
                      v143 = v173->var18;
                      do
                      {
                        v144 = v173 + v142;
                        v144[330] = v189[v142 + 4];
                        *&v173->var27[v142 / 0x22].var3 = *&v189[v142 + 6];
                        *(v144 + 85) = *&v189[v142 + 14];
                        *(v144 + 164) = 10;
                        v145 = *&v189[v142 + 18];
                        if (v145 != 2048)
                        {
                          *(v144 + 172) = v145;
                          *(v144 + 164) = 12;
                        }

                        *(v144 + 173) = 2048;
                        *(v144 + 348) = 0x8080808080808080;
                        *(v144 + 89) = -2139062144;
                        *(v144 + 163) = 1;
                        v142 += 34;
                      }

                      while (34 * v135 != v142);
                      v173->var18 = v143 + v135;
                    }

                    v173->var20 = v135;
                    *&v173->var32.var1 = 512;
                    if (!v173->var32.var0)
                    {
                      v173->var32.var0 = 1;
                      ++v173->var18;
                    }
                  }

                  if (v137 >= 1)
                  {
                    v146 = 0;
                    v147 = v173->var18;
                    do
                    {
                      v148 = v173 + v146;
                      v148[522] = v188[v146 + 4];
                      *(v148 + 131) = *&v188[v146 + 6];
                      v149 = v188[v146 + 10];
                      v148[528] = v149;
                      *&v173->var29[v146 / 0x1C].var6 = *&v188[v146 + 12];
                      if (v149 <= 0x12)
                      {
                        v150 = 5;
                      }

                      else
                      {
                        v150 = 21;
                      }

                      *(v148 + 260) = v150;
                      *(v148 + 259) = 1;
                      v146 += 28;
                    }

                    while (28 * v137 != v146);
                    v173->var18 = v147 + v137;
                  }

                  if (v135 >= 1)
                  {
                    v151 = 0;
                    p_var2 = &v173->var27[0].var2;
                    v153 = &v173->var29[0].var2;
                    do
                    {
                      *v153 = v151 - 76;
                      v153 += 28;
                      *p_var2 = v151 - 76;
                      p_var2 += 34;
                      ++v151;
                    }

                    while (v135 != v151);
                  }

                  updateComposerData(v170);
                  v58 = GetConfig();
                  if (v58)
                  {
                    v154 = GetConfig();
                    if (*HDRConfig::GetConfigEntryValue(v154, 0x5Du, 0) == 1)
                    {
                      MrCacheUpdateTgt(v173, v174->mrCache.YCCtoRGB_coef);
                    }

                    goto LABEL_20;
                  }

                  goto LABEL_197;
                }
              }

              if (enableLogInstance)
              {
                if (logInstanceID)
                {
                  v156 = logInstanceID;
                }

                else
                {
                  v156 = prevLogInstanceID;
                }

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  *v191 = 134218240;
                  *&v191[4] = WORD1(v156);
                  *&v191[12] = 1024;
                  *v192 = 0;
                  v157 = MEMORY[0x277D86220];
                  v158 = " [1.450.54] #%04llx MR81: metadataReconstruction: Warning: GetMdsExtFxpMr ret = %d [no change]";
                  goto LABEL_185;
                }

                goto LABEL_186;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_196;
              }

              *v191 = 67109120;
              v159 = MEMORY[0x277D86220];
              v160 = " [1.450.54] MR81: metadataReconstruction: Warning: GetMdsExtFxpMr ret = %d [no change]";
            }

LABEL_195:
            _os_log_impl(&dword_250836000, v159, OS_LOG_TYPE_DEFAULT, v160, v191, 8u);
            goto LABEL_196;
          }

          v85 = 0.0;
          if (a5 >= 0.0)
          {
            v85 = a5;
          }

          v86 = pow(v85 / 10000.0, 0.159301758);
          v87 = pow((v86 * 18.8515625 + 0.8359375) / (v86 * 18.6875 + 1.0), 78.84375);
          if (fabs(v87 + -0.508078422) > 0.02 && fabs(v87 + -0.589110431) > 0.02 && fabs(v87 + -0.670599738) > 0.02)
          {
            *&v185 = a5;
            v84 = 4;
            goto LABEL_64;
          }
        }

        v84 = 3;
        goto LABEL_64;
      }
    }

    else
    {
      v79 = 4;
    }

    v80 = 8;
    goto LABEL_50;
  }

  if (a3->var14[0][0][1][0] == 1 || a3->var14[0][0][2][0] == 1)
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v30 = logInstanceID;
      }

      else
      {
        v30 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v181 = WORD1(v30);
        v182 = 1024;
        v183 = 1;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx MR81: metadataReconstruction: Error: unmapped, hasMMRData=%d", buf, 0x12u);
      }

      prevLogInstanceID = v30;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v181) = 1;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] MR81: metadataReconstruction: Error: unmapped, hasMMRData=%d", buf, 8u);
    }

    updateComposerData(a3);
    goto LABEL_196;
  }

LABEL_20:
  LODWORD(v58) = 0;
LABEL_197:
  v161 = *MEMORY[0x277D85DE8];
  return v58;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = DolbyVisionMR;
  [(DolbyVisionMR *)&v2 dealloc];
}

@end