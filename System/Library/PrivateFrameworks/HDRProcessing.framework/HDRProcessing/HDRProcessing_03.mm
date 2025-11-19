float applyEdrAdaptationCurveS(_EdrAdaptationParam *a1, float a2)
{
  v2 = a2;
  if (a1->on)
  {
    if (a1->RWTMO_v2_on)
    {
      v4 = applyRWTMO(a2, a1);
    }

    else if (a1->withLinearExtension)
    {
      v4 = spl_apply_with_linear_extension(a1->n, a1->Xs, a1->Ys, a1->Ms, a2);
    }

    else if (a1->withLinearExtensionAndHighClip)
    {
      if (GetConfig() && (Config = GetConfig(), *HDRConfig::GetConfigEntryValue(Config, 0x125u, 0) == 1))
      {
        v4 = spl_apply_with_linear_extension_and_high_clip_monotonic(v2, a1->n, a1->Xs, a1->Ys, a1->Ms, v6, v7, v8, v9, v10, v11);
      }

      else
      {
        v4 = spl_apply_with_linear_extension_and_high_clip(v2, a1->n, a1->Xs, a1->Ys, a1->Ms);
      }
    }

    else
    {
      v4 = spl_apply(a1->n, a1->Xs, a1->Ys, a1->Ms, a2);
    }

    v2 = v4;
  }

  if (GetConfig())
  {
    v12 = GetConfig();
    HDRConfig::GetConfigEntryValue(v12, 0x56u, 0);
  }

  return v2;
}

void calculateAmbAdaptationParamS(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 4);
  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  v96 = *(a1 + 24);
  v9 = *(a1 + 32);
  *a2 = 1;
  *(a2 + 48) = *(a1 + 36);
  if (v3 <= 3)
  {
    if (v3 == 2)
    {
      v21 = v4 * v7;
      *(a2 + 2) = 3;
      *(a2 + 4) = v8;
      if ((v4 * v7) >= 0.0)
      {
        v54 = powf(v21 * 0.0001, 0.1593);
        v23 = powf(((v54 * 18.852) + 0.83594) / ((v54 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v22 = powf(v21 * -0.0001, 0.1593);
        v23 = 0.0000014619 - powf(((v22 * 18.852) + 0.83594) / ((v22 * 18.688) + 1.0), 78.844);
      }

      *(a2 + 8) = v23;
      *(a2 + 12) = v96;
      v55 = v5 + v6;
      if ((v5 + v6) >= 0.0)
      {
        v58 = powf(v55 * 0.0001, 0.1593);
        v57 = powf(((v58 * 18.852) + 0.83594) / ((v58 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v56 = powf(v55 * -0.0001, 0.1593);
        v57 = 0.0000014619 - powf(((v56 * 18.852) + 0.83594) / ((v56 * 18.688) + 1.0), 78.844);
      }

      *(a2 + 16) = v57;
      v59 = v5 + v21;
      if ((v5 + v21) >= 0.0)
      {
        v62 = powf(v59 * 0.0001, 0.1593);
        v61 = powf(((v62 * 18.852) + 0.83594) / ((v62 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v60 = powf(v59 * -0.0001, 0.1593);
        v61 = 0.0000014619 - powf(((v60 * 18.852) + 0.83594) / ((v60 * 18.688) + 1.0), 78.844);
      }

      *(a2 + 20) = v61;
      v63 = v5 + v7;
      if ((v5 + v7) >= 0.0)
      {
        v66 = powf(v63 * 0.0001, 0.1593);
        v65 = powf(((v66 * 18.852) + 0.83594) / ((v66 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v64 = powf(v63 * -0.0001, 0.1593);
        v65 = 0.0000014619 - powf(((v64 * 18.852) + 0.83594) / ((v64 * 18.688) + 1.0), 78.844);
      }

      v67 = (v61 - v57) / (v23 - v8);
      *(a2 + 24) = v65;
      *(a2 + 28) = (1.0 / v67) * (v67 * v67);
      *(a2 + 32) = v67;
      *(a2 + 36) = (1.0 / v67) * (((v65 - v61) / (v96 - v23)) * ((v65 - v61) / (v96 - v23)));
      v68 = (v5 - (v5 + v9)) / (v7 - v9);
      *(a2 + 40) = v68;
      v10 = (v5 + v9) - (v68 * v9);
    }

    else
    {
      if (v3 != 3)
      {
        goto LABEL_16;
      }

      *(a2 + 2) = 3;
      *(a2 + 12) = v96;
      *(a2 + 4) = v8;
      *(a2 + 8) = (v8 + v96) * 0.5;
      v11 = v5 + v6;
      if ((v5 + v6) >= 0.0)
      {
        v69 = powf(v11 * 0.0001, 0.1593);
        v13 = powf(((v69 * 18.852) + 0.83594) / ((v69 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v12 = powf(v11 * -0.0001, 0.1593);
        v13 = 0.0000014619 - powf(((v12 * 18.852) + 0.83594) / ((v12 * 18.688) + 1.0), 78.844);
      }

      *(a2 + 16) = v13;
      v70 = v5 + v7;
      if ((v5 + v7) >= 0.0)
      {
        v73 = powf(v70 * 0.0001, 0.1593);
        v72 = powf(((v73 * 18.852) + 0.83594) / ((v73 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v71 = powf(v70 * -0.0001, 0.1593);
        v72 = 0.0000014619 - powf(((v71 * 18.852) + 0.83594) / ((v71 * 18.688) + 1.0), 78.844);
      }

      *(a2 + 20) = (v13 + v72) * 0.5;
      *(a2 + 24) = v72;
      v74 = (v72 - v13) / (v96 - v8);
      *(a2 + 28) = v74;
      *(a2 + 32) = v74;
      v75 = (v5 - (v5 + v9)) / (v7 - v9);
      *(a2 + 36) = v74;
      *(a2 + 40) = v75;
      v10 = (v5 + v9) - (v75 * v9);
    }
  }

  else
  {
    switch(v3)
    {
      case 4:
        *(a2 + 2) = 3;
        *(a2 + 4) = v8;
        *(a2 + 12) = v96;
        v14 = v5 + v6;
        if ((v5 + v6) >= 0.0)
        {
          v24 = powf(v14 * 0.0001, 0.1593);
          v16 = powf(((v24 * 18.852) + 0.83594) / ((v24 * 18.688) + 1.0), 78.844);
        }

        else
        {
          v15 = powf(v14 * -0.0001, 0.1593);
          v16 = 0.0000014619 - powf(((v15 * 18.852) + 0.83594) / ((v15 * 18.688) + 1.0), 78.844);
        }

        *(a2 + 16) = v16;
        v25 = v5 + v7;
        if ((v5 + v7) >= 0.0)
        {
          v28 = powf(v25 * 0.0001, 0.1593);
          v27 = powf(((v28 * 18.852) + 0.83594) / ((v28 * 18.688) + 1.0), 78.844);
        }

        else
        {
          v26 = powf(v25 * -0.0001, 0.1593);
          v27 = 0.0000014619 - powf(((v26 * 18.852) + 0.83594) / ((v26 * 18.688) + 1.0), 78.844);
        }

        v29 = v8 + ((v96 - v8) * 0.5);
        v30 = v16 + ((v27 - v16) * 0.5);
        if (v16 >= v30)
        {
          v30 = v16;
        }

        v31 = v16 + ((v96 - v8) * 0.5);
        if (v31 >= v27)
        {
          v31 = v27;
        }

        v32 = v30 + ((v31 - v30) * 2.5);
        *(a2 + 8) = v29;
        *(a2 + 20) = v32;
        *(a2 + 24) = v27;
        v33 = 1.0;
        v34 = 1.0;
        if (v29 != v8)
        {
          v34 = (v32 - v16) / (v29 - v8);
        }

        if (v96 != v29)
        {
          v33 = (v27 - v32) / (v96 - v29);
        }

        v35 = (v34 + -1.0) + 1.0;
        v36 = (1.0 / v35) * (v33 * v33);
        *(a2 + 28) = ((v34 * v34) * (1.0 / v35)) * 0.75;
        *(a2 + 32) = v35;
        v37 = (v5 - (v5 + v9)) / (v7 - v9);
        *(a2 + 36) = v36;
        *(a2 + 40) = v37;
        v10 = (v5 + v9) - (v37 * v9);
        break;
      case 5:
        v17 = *(a1 + 40);
        v18 = v5 + v6;
        if ((v5 + v6) >= 0.0)
        {
          v38 = powf(v18 * 0.0001, 0.1593);
          v20 = powf(((v38 * 18.852) + 0.83594) / ((v38 * 18.688) + 1.0), 78.844);
        }

        else
        {
          v19 = powf(v18 * -0.0001, 0.1593);
          v20 = 0.0000014619 - powf(((v19 * 18.852) + 0.83594) / ((v19 * 18.688) + 1.0), 78.844);
        }

        v95 = v20;
        v39 = v5 + v7;
        if ((v5 + v7) >= 0.0)
        {
          v42 = powf(v39 * 0.0001, 0.1593);
          v41 = powf(((v42 * 18.852) + 0.83594) / ((v42 * 18.688) + 1.0), 78.844);
        }

        else
        {
          v40 = powf(v39 * -0.0001, 0.1593);
          v41 = 0.0000014619 - powf(((v40 * 18.852) + 0.83594) / ((v40 * 18.688) + 1.0), 78.844);
        }

        v94 = v41;
        v43 = 0.0;
        v44 = 0.0;
        if (GetConfig())
        {
          Config = GetConfig();
          v44 = *HDRConfig::GetConfigEntryValue(Config, 0x96u, 0);
        }

        if (GetConfig())
        {
          v46 = GetConfig();
          v43 = *HDRConfig::GetConfigEntryValue(v46, 0x97u, 0);
        }

        v47 = v8 + (v44 * (v96 - v8));
        v48 = v8 + (v43 * (v96 - v8));
        v49 = 1.0;
        v50 = 1.0;
        if (v47 != v48)
        {
          v50 = fmax(fmin(((v17 - v48) / (v47 - v48)), 1.0), 0.0);
        }

        v51 = fmax(fmin(((v94 - v95) / (v96 - v8)), 1.0), 0.0);
        if (v8 != v96)
        {
          v49 = v51;
        }

        v91 = v49;
        v92 = v7;
        v93 = v9;
        if (GetConfig())
        {
          v52 = GetConfig();
          v53 = *HDRConfig::GetConfigEntryValue(v52, 0x98u, 0);
        }

        else
        {
          v53 = 0.0;
        }

        if (v17 >= ((v8 + v96) * 0.5))
        {
          v17 = (v8 + v96) * 0.5;
        }

        v76 = -(v17 + -0.0000014619);
        if (v17 >= 0.00000073096)
        {
          v76 = v17;
        }

        v77 = flt_2508CD850[v17 < 0.00000073096];
        v78 = powf(v76, 0.012683);
        v79 = fmax(((v78 + -0.83594) / ((v78 * -18.688) + 18.852)), 0.0);
        v80 = v5 + (v77 * powf(v79, 6.2774));
        if (v80 >= 0.0)
        {
          v83 = powf(v80 * 0.0001, 0.1593);
          v82 = powf(((v83 * 18.852) + 0.83594) / ((v83 * 18.688) + 1.0), 78.844);
        }

        else
        {
          v81 = powf(v80 * -0.0001, 0.1593);
          v82 = 0.0000014619 - powf(((v81 * 18.852) + 0.83594) / ((v81 * 18.688) + 1.0), 78.844);
        }

        v84 = v95 + (((v17 - v8) * v91) * v53);
        if (v82 >= v84)
        {
          v84 = v82;
        }

        v85 = 1.0;
        v86 = ((1.0 - v50) * v84) + (v50 * v82);
        v87 = 1.0;
        if (v8 != v17)
        {
          v87 = (v86 - v95) / (v17 - v8);
        }

        if (v17 != v96)
        {
          v85 = (v94 - v86) / (v96 - v17);
        }

        v88 = pow(v87, 3.0);
        v89 = v88 + ((v87 - v88) * v50);
        *(a2 + 2) = 3;
        *(a2 + 4) = v8;
        *(a2 + 8) = v17;
        *(a2 + 12) = v96;
        *(a2 + 16) = v95;
        *(a2 + 20) = v86;
        *(a2 + 24) = v94;
        *(a2 + 28) = v89;
        *(a2 + 32) = v85 + ((((v89 + v85) * 0.5) - v85) * v50);
        v90 = (v5 - (v5 + v93)) / (v92 - v93);
        *(a2 + 36) = v85;
        *(a2 + 40) = v90;
        v10 = (v5 + v93) - (v90 * v93);
        break;
      case 6:
        *a2 = 0;
        *(a2 + 2) = 3;
        *(a2 + 4) = xmmword_2508D09B0;
        *(a2 + 20) = xmmword_2508D09C0;
        *(a2 + 36) = 1065353216;
        v10 = 0.0;
        break;
      default:
LABEL_16:
        *a2 = 0;
        *(a2 + 2) = 3;
        *(a2 + 4) = xmmword_2508D09B0;
        *(a2 + 20) = xmmword_2508D09C0;
        *(a2 + 36) = 1065353216;
        *(a2 + 40) = -v9 / (v7 - v9);
        v10 = (v7 * v9) / (v7 - v9);
        break;
    }
  }

  *(a2 + 44) = v10;
}

float applyAmbAdaptationCurveS(uint64_t a1, float a2)
{
  if (*a1 == 1)
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 2);
    v6 = (a1 + 4);
    v7 = (a1 + 16);
    v8 = (a1 + 28);
    if (v4 == 1)
    {
      v9 = spl_apply_with_linear_extension(v5, v6, v7, v8, a2);
    }

    else
    {
      v9 = spl_apply(v5, v6, v7, v8, a2);
    }

    v16 = v9;
    if (GetConfig())
    {
      Config = GetConfig();
      HDRConfig::GetConfigEntryValue(Config, 0x56u, 0);
    }

    v18 = -(v16 + -0.0000014619);
    if (v16 < 0.00000073096)
    {
      v19 = -10000.0;
    }

    else
    {
      v18 = v16;
      v19 = 10000.0;
    }

    v29 = v19;
    v20 = powf(v18, 0.012683);
    v21 = fmax(((v20 + -0.83594) / ((v20 * -18.688) + 18.852)), 0.0);
    v22 = powf(v21, 6.2774);
    v28 = *(a1 + 40);
    v30 = v29 * v22;
    v23 = -(a2 + -0.0000014619);
    if (a2 < 0.00000073096)
    {
      v24 = -10000.0;
    }

    else
    {
      v23 = a2;
      v24 = 10000.0;
    }

    v25 = powf(v23, 0.012683);
    v26 = fmax(((v25 + -0.83594) / ((v25 * -18.688) + 18.852)), 0.0);
    v15 = v30 - (*(a1 + 44) + (v28 * (v24 * powf(v26, 6.2774))));
  }

  else
  {
    v10 = -(a2 + -0.0000014619);
    if (a2 >= 0.00000073096)
    {
      v10 = a2;
    }

    v11 = flt_2508CD850[a2 < 0.00000073096];
    v12 = powf(v10, 0.012683);
    v13 = fmax(((v12 + -0.83594) / ((v12 * -18.688) + 18.852)), 0.0);
    v14 = powf(v13, 6.2774);
    v15 = (v11 * v14) - (*(a1 + 44) + (*(a1 + 40) * (v11 * v14)));
  }

  return fmaxf(v15, 0.0);
}

float applyAmbAdaptationCurveS_C(uint64_t a1, float result)
{
  v3 = result;
  if (*a1 == 1)
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 2);
    v6 = (a1 + 4);
    v7 = (a1 + 16);
    v8 = (a1 + 28);
    if (v4 == 1)
    {
      v9 = spl_apply_with_linear_extension(v5, v6, v7, v8, result);
    }

    else
    {
      v9 = spl_apply(v5, v6, v7, v8, result);
    }

    v18 = v9;
    if (GetConfig())
    {
      Config = GetConfig();
      HDRConfig::GetConfigEntryValue(Config, 0x56u, 0);
    }

    v20 = -(v18 + -0.0000014619);
    if (v18 < 0.00000073096)
    {
      v21 = -10000.0;
    }

    else
    {
      v20 = v18;
      v21 = 10000.0;
    }

    v32 = v21;
    v22 = powf(v20, 0.012683);
    v23 = fmax(((v22 + -0.83594) / ((v22 * -18.688) + 18.852)), 0.0);
    v24 = powf(v23, 6.2774);
    v31 = *(a1 + 40);
    v33 = v32 * v24;
    v25 = -(v3 + -0.0000014619);
    if (v3 < 0.00000073096)
    {
      v26 = -10000.0;
    }

    else
    {
      v25 = v3;
      v26 = 10000.0;
    }

    v27 = powf(v25, 0.012683);
    v28 = fmax(((v27 + -0.83594) / ((v27 * -18.688) + 18.852)), 0.0);
    v17 = v33 - (*(a1 + 44) + (v31 * (v26 * powf(v28, 6.2774))));
  }

  else
  {
    v10 = *(a1 + 40);
    if (v10 == 0.0)
    {
      return result;
    }

    v11 = *(a1 + 44);
    if (v11 == 0.0)
    {
      return result;
    }

    v12 = -(result + -0.0000014619);
    if (v3 >= 0.00000073096)
    {
      v12 = v3;
    }

    v13 = flt_2508CD850[v3 < 0.00000073096];
    v14 = powf(v12, 0.012683);
    v15 = fmax(((v14 + -0.83594) / ((v14 * -18.688) + 18.852)), 0.0);
    v16 = powf(v15, 6.2774);
    v17 = (v13 * v16) - (v11 + (v10 * (v13 * v16)));
  }

  v29 = powf(fmaxf(v17, 0.0) * 0.0001, 0.1593);
  v30 = ((v29 * 18.852) + 0.83594) / ((v29 * 18.688) + 1.0);

  return powf(v30, 78.844);
}

void calculateSceneLuxAdaptationParamS(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*a1 == 2)
  {
    predictSceneLuxAdaptationAnchorLinReg(a1);
  }

  else if (*a1 == 1)
  {
    v24 = 0;
    v4 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:&unk_2862D50C0 dataType:65568 error:&v24];
    v5 = v24;
    v23 = 0;
    v6 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:&unk_2862D50D8 dataType:65568 error:&v23];
    v7 = v23;
    v8 = *(a1 + 16);
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 4)];
    [v4 setObject:v9 atIndexedSubscript:0];

    v10 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 12)];
    [v4 setObject:v10 atIndexedSubscript:1];

    v11 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 8)];
    [v4 setObject:v11 atIndexedSubscript:2];

    v12 = [MEMORY[0x277CCABB0] numberWithDouble:{fminf(v8, 65495.0)}];
    [v4 setObject:v12 atIndexedSubscript:3];

    v22 = v5;
    v13 = [v3 predictionFromFeature_vector:v4 error:&v22];
    v14 = v22;

    v15 = [v13 anchor_points];

    if (v15)
    {
      v16 = [v15 objectAtIndexedSubscript:0];
      [v16 floatValue];
      *(a1 + 20) = v17;

      v18 = [v15 objectAtIndexedSubscript:1];
      [v18 floatValue];
      *(a1 + 24) = v19;

      v20 = [v15 objectAtIndexedSubscript:2];
      [v20 floatValue];
      *(a1 + 28) = v21;
    }

    else
    {
      *(a1 + 20) = 0x3F0000003E800000;
      *(a1 + 28) = 1061158912;
    }
  }
}

__int32 *predictSceneLuxAdaptationAnchorLinReg(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  if (GetConfig())
  {
    Config = GetConfig();
    v3 = *HDRConfig::GetConfigEntryValue(Config, 0xBBu, 0);
  }

  else
  {
    v3 = 0.0;
  }

  v4 = *(a1 + 16);
  if (v4 >= v3)
  {
    v3 = 250000.0;
    if (v4 <= 250000.0)
    {
      v3 = *(a1 + 16);
    }
  }

  v27 = log10f(v3);
  v5 = *(a1 + 8);
  result = GetConfig();
  if (result)
  {
    v8 = GetConfig();
    result = HDRConfig::GetConfigEntryValue(v8, 0xBCu, 0);
    v7.i32[0] = *result;
  }

  else
  {
    v7.i32[0] = 0;
  }

  v9 = 0;
  if (v5 >= *v7.i32)
  {
    *v7.i32 = v5;
  }

  v28[0] = 1065353216;
  v28[1] = v7.i32[0];
  *&v28[2] = v27;
  v10 = v27 * *v7.i32;
  v11.i64[0] = __PAIR64__(LODWORD(v27), v7.u32[0]);
  v11.i64[1] = __PAIR64__(LODWORD(v27), v7.u32[0]);
  *&v7.i32[1] = v27;
  *v7.i8 = vmul_f32(*v7.i8, *v7.i8);
  v28[3] = v7.i32[0];
  *&v28[4] = v10;
  v28[5] = v7.i32[1];
  v29 = vmulq_f32(v11, vzip1q_s32(v7, v7));
  *(a1 + 72) = 0;
  *(a1 + 32) = 3;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0x3F4077BE3F02116DLL;
  v12 = 1;
  do
  {
    v13 = 0;
    v14 = v9;
    v15 = (&unk_2508D0AE8 + 4 * v12);
    v16 = 0.0;
    do
    {
      v17 = *v15;
      v15 += 3;
      v16 = v16 + (*&v28[v13++] * v17);
    }

    while (v13 != 10);
    *(a1 + 72 + 4 * v12) = v16;
    v9 = 1;
    v12 = 2;
  }

  while ((v14 & 1) == 0);
  v18 = *(a1 + 76);
  v19 = *(a1 + 80);
  if (v18 <= 0.50808)
  {
    v20 = *(a1 + 76);
  }

  else
  {
    v20 = 0.50808;
  }

  if (v18 >= 0.12702)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0.12702;
  }

  v22 = 0.75183;
  if (v19 <= 0.75183)
  {
    v22 = *(a1 + 80);
  }

  if (v19 >= 0.37077)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0.37077;
  }

  if (v23 >= (v21 + 0.24375))
  {
    v23 = v21 + 0.24375;
  }

  *(a1 + 76) = v21;
  *(a1 + 80) = v23;
  v24 = v21 / 0.50808;
  v25 = (v23 - v21) / 0.24375;
  *(a1 + 116) = v25;
  *(a1 + 108) = v24;
  *(a1 + 112) = (v24 + v25) * 0.5;
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

float calcSceneLuxAdaptationMixFactor(float a1)
{
  v1 = fminf(a1, 10000.0);
  if (v1 >= 0.0)
  {
    v4 = powf(v1 * 0.0001, 0.1593);
    v3 = powf(((v4 * 18.852) + 0.83594) / ((v4 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v2 = powf(v1 * -0.0001, 0.1593);
    v3 = 0.0000014619 - powf(((v2 * 18.852) + 0.83594) / ((v2 * 18.688) + 1.0), 78.844);
  }

  v5 = 0.65;
  if (v3 <= 0.65)
  {
    v5 = v3;
  }

  v6 = v5 + -0.55;
  v7 = v3 < 0.55;
  result = 0.0;
  if (v7)
  {
    v6 = 0.0;
  }

  v9 = (v6 * -10.0) + 1.0;
  if (v9 <= 1.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1.0;
  }

  if (v9 >= 0.0)
  {
    return v10;
  }

  return result;
}

float applySceneLuxAdaptationS_C(uint64_t a1, float a2)
{
  v3 = a2;
  v12 = *MEMORY[0x277D85DE8];
  if (*a1 == 2)
  {
    v4 = spl_apply_with_linear_extension(*(a1 + 32), (a1 + 36), (a1 + 72), (a1 + 108), a2);
    v5 = 1.0;
    if (v4 <= 1.0)
    {
      v5 = v4;
    }

    v6 = v4 < 0.0;
    a2 = 0.0;
    if (!v6)
    {
      a2 = v5;
    }
  }

  else if (*a1 == 1)
  {
    v9 = *(a1 + 20);
    v10 = *(a1 + 28);
    v11 = 1065353216;
    a2 = ebz_norm(4u, &v9, a2);
  }

  v7 = *MEMORY[0x277D85DE8];
  return ((1.0 - *(a1 + 144)) * v3) + (*(a1 + 144) * a2);
}

float getReflectionNits(float a1, float a2, float a3, float a4)
{
  v4 = a1 + -5.093;
  if (v4 <= a2)
  {
    a2 = v4;
  }

  v5 = v4 < 0.0;
  v6 = 0.0;
  if (!v5)
  {
    v6 = a2;
  }

  return (v6 * a3) * a4;
}

float calculateDpcParamS(float *a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1 == 2)
  {
    v5 = 1.0 / a1[1];
    *a2 = v5;
    if (v5 > 0.0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (LODWORD(v4) == 1)
    {
      *a2 = 1065353216;
      v5 = 1.0;
LABEL_5:
      *(a2 + 4) = 1.0 / powf(1.0 / v5, 0.45455);
      *(a2 + 8) = *(a1 + 1);
      v6 = 1;
      goto LABEL_8;
    }

    *a2 = 0;
  }

  *(a2 + 4) = 1065353216;
  *(a2 + 8) = *(a1 + 1);
  v6 = (LODWORD(v4) - 1) < 2;
LABEL_8:
  *(a2 + 16) = v6;
  *(a2 + 17) = *(a1 + 16);
  *(a2 + 20) = a1[5];
  if (GetConfig())
  {
    Config = GetConfig();
    v8 = *HDRConfig::GetConfigEntryValue(Config, 0xEDu, 0);
  }

  else
  {
    v8 = 0;
  }

  *(a2 + 24) = v8;
  result = a1[6];
  *(a2 + 28) = result;
  return result;
}

float PQ_EOTF_nits(float a1)
{
  v1 = pow(fmaxf(fminf(a1, 1.0), 0.0), 0.0126833135);
  v2 = pow(fmax(v1 + -0.8359375, 0.0) / (v1 * -18.6875 + 18.8515625), 6.27739464);
  return v2 * 10000.0;
}

float HLG_OETF(float a1)
{
  v2 = fabsf(a1);
  if (v2 <= 0.0833333333)
  {
    v3 = sqrt(v2 * 3.0);
  }

  else
  {
    v3 = log(v2 * 12.0 + -0.28466892) * 0.17883277 + 0.55991073;
  }

  if (a1 < 0.0)
  {
    return -v3;
  }

  return v3;
}

float HLG_InverseOETF(float a1)
{
  v2 = fabsf(a1);
  v3 = v2;
  if (v2 <= 0.5)
  {
    v4 = v3 * v3;
    v5 = 3.0;
  }

  else
  {
    v4 = exp((v3 + -0.55991073) / 0.17883277) + 0.28466892;
    v5 = 12.0;
  }

  v6 = v4 / v5;
  if (a1 < 0.0)
  {
    return -v6;
  }

  return v6;
}

float HLG_SystemGamma(float a1)
{
  v2 = a1 / 1000.0;
  if (a1 <= 400.0 || a1 >= 2000.0)
  {
    v4 = log2f(v2);
    return pow(1.111, v4) * 1.2;
  }

  else
  {
    return log10f(v2) * 0.42 + 1.2;
  }
}

float HLG_OOTF_1(float a1, float a2, float a3)
{
  v6 = a2 / 1000.0;
  if (a2 <= 400.0 || a2 >= 2000.0)
  {
    v8 = log2f(v6);
    v7 = pow(1.111, v8) * 1.2;
  }

  else
  {
    v7 = log10f(v6) * 0.42 + 1.2;
  }

  v9 = v7;
  return a3 + ((a2 - a3) * powf(a1, v9));
}

float HLG_InverseOOTF_1(float a1, float a2, float a3)
{
  v6 = a2 / 1000.0;
  if (a2 <= 400.0 || a2 >= 2000.0)
  {
    v8 = log2f(v6);
    v7 = pow(1.111, v8) * 1.2;
  }

  else
  {
    v7 = log10f(v6) * 0.42 + 1.2;
  }

  v9 = v7;
  return powf((a1 - a3) / (a2 - a3), 1.0 / v9);
}

void updateL2PQTable(uint64_t a1, unint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 != 1024)
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v4 = logInstanceID;
      }

      else
      {
        v4 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134217984;
        v13 = WORD1(v4);
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: tableSize == 1024 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/DisplayManagement/common_display_management_host.mm at line 3455\n", &v12, 0xCu);
      }

      prevLogInstanceID = v4;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: tableSize == 1024 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/DisplayManagement/common_display_management_host.mm at line 3455\n", &v12, 2u);
    }
  }

  for (i = 0; i != 801; ++i)
  {
    v6 = ATFMTLhalf2float(32 * (i & 0x7FF));
    v7 = pow(fmaxf(fminf(v6 * 0.00097656, 1.0), 0.0), 0.159301758);
    v8 = pow((v7 * 18.8515625 + 0.8359375) / (v7 * 18.6875 + 1.0), 78.84375);
    *(a1 + 4 * i) = fmaxf(fminf(v8, 1.0), 0.0);
  }

  if (a2 >= 0x322)
  {
    v9 = 801;
    v10 = 801;
    do
    {
      *(a1 + 4 * v9) = *(a1 + 4 * v9 - 4);
      v9 = ++v10;
    }

    while (v10 < a2);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void histogram_HLG2PQ(float *a1, int a2, float *a3, float a4)
{
  if (a2 >= 1)
  {
    LODWORD(v6) = a2;
    v8 = a4 / 1000.0;
    v9 = log2f(a4 / 1000.0);
    v10 = pow(1.111, v9);
    v11 = log10f(v8);
    v12 = a4 >= 2000.0 || a4 <= 400.0;
    v13 = v11 * 0.42 + 1.2;
    v6 = v6;
    if (v12)
    {
      v13 = v10 * 1.2;
    }

    v14 = v13;
    do
    {
      v15 = *a1;
      v16 = fabsf(*a1);
      v17 = v16;
      if (v16 <= 0.5)
      {
        v18 = v17 * v17;
        v19 = 3.0;
      }

      else
      {
        v18 = exp((v17 + -0.55991073) / 0.17883277) + 0.28466892;
        v19 = 12.0;
      }

      v20 = v18 / v19;
      if (v15 < 0.0)
      {
        v20 = -v20;
      }

      v21 = v20;
      v22 = (a4 * powf(v21, v14)) + 0.0;
      if (v22 >= 0.0)
      {
        v25 = powf(v22 * 0.0001, 0.1593);
        v24 = powf(((v25 * 18.852) + 0.83594) / ((v25 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v23 = powf(v22 * -0.0001, 0.1593);
        v24 = 0.0000014619 - powf(((v23 * 18.852) + 0.83594) / ((v23 * 18.688) + 1.0), 78.844);
      }

      *a3++ = v24;
      ++a1;
      --v6;
    }

    while (v6);
  }
}

uint64_t histogram_generate_percentiles(uint64_t result, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  if (a5 >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0.0;
    do
    {
      if (v8 < a3)
      {
        v10 = *(a4 + 4 * v6);
        if (v9 < v10)
        {
          v11 = a3 - 1 - v8;
          v12 = (result + 4 * v8);
          while (1)
          {
            v9 = v9 + *v12;
            if (!v11)
            {
              break;
            }

            ++v8;
            --v11;
            ++v12;
            if (v9 >= v10)
            {
              v7 = v8 - 1;
              goto LABEL_10;
            }
          }

          v8 = a3;
          v7 = a3 - 1;
        }
      }

LABEL_10:
      *(a6 + 4 * v6++) = *(a2 + 4 * v7);
    }

    while (v6 != a5);
  }

  return result;
}

float firFilter(float *a1, int a2)
{
  if (a2 < 1)
  {
    v3 = 0.0;
  }

  else
  {
    v2 = a2;
    v3 = 0.0;
    do
    {
      v4 = *a1++;
      v3 = v3 + v4;
      --v2;
    }

    while (v2);
  }

  return v3 / a2;
}

float calculateAdaptiveHeadroom(float a1, float a2, float a3)
{
  if (a1 >= 0.0)
  {
    v8 = powf(a1 * 0.0001, 0.1593);
    v7 = powf(((v8 * 18.852) + 0.83594) / ((v8 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v6 = powf(a1 * -0.0001, 0.1593);
    v7 = 0.0000014619 - powf(((v6 * 18.852) + 0.83594) / ((v6 * 18.688) + 1.0), 78.844);
  }

  if (a3 >= 0.0)
  {
    v11 = powf(a3 * 0.0001, 0.1593);
    v10 = powf(((v11 * 18.852) + 0.83594) / ((v11 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v9 = powf(a3 * -0.0001, 0.1593);
    v10 = 0.0000014619 - powf(((v9 * 18.852) + 0.83594) / ((v9 * 18.688) + 1.0), 78.844);
  }

  if (v10 > 0.0)
  {
    if (a2 >= 0.0)
    {
      v14 = powf(a2 * 0.0001, 0.1593);
      v13 = powf(((v14 * 18.852) + 0.83594) / ((v14 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v12 = powf(a2 * -0.0001, 0.1593);
      v13 = 0.0000014619 - powf(((v12 * 18.852) + 0.83594) / ((v12 * 18.688) + 1.0), 78.844);
    }

    v15 = (v7 / v10) * v13;
    v7 = 0.0;
    if (v15 >= 0.0)
    {
      v7 = 1.0;
      if (v15 <= 1.0)
      {
        v7 = v15;
      }
    }
  }

  v16 = -(v7 + -0.0000014619);
  if (v7 >= 0.00000073096)
  {
    v16 = v7;
  }

  v17 = flt_2508CD850[v7 < 0.00000073096];
  v18 = powf(v16, 0.012683);
  v19 = fmax(((v18 + -0.83594) / ((v18 * -18.688) + 18.852)), 0.0);
  return fmaxf((v17 * powf(v19, 6.2774)) / a1, 1.0);
}

float *calculateContentAdaptiveHeadroom(int a1, float a2, float a3, float a4, float a5, float a6)
{
  if (GetConfig())
  {
    Config = GetConfig();
    v13 = *HDRConfig::GetConfigEntryValue(Config, 0x93u, 0);
  }

  else
  {
    v13 = 0.0;
  }

  if (v13 <= a3)
  {
    v13 = a3;
  }

  v14 = v13 - a2;
  v15 = a5 / a6;
  if ((v13 - a2) > 0.0)
  {
    if (a1 == 3)
    {
      if (a6 >= 0.0)
      {
        v40 = powf(a6 * 0.0001, 0.1593);
        v24 = powf(((v40 * 18.852) + 0.83594) / ((v40 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v23 = powf(a6 * -0.0001, 0.1593);
        v24 = 0.0000014619 - powf(((v23 * 18.852) + 0.83594) / ((v23 * 18.688) + 1.0), 78.844);
      }

      v60 = a4;
      if (a4 >= 0.0)
      {
        v42 = powf(a4 * 0.0001, 0.1593);
        v27 = powf(((v42 * 18.852) + 0.83594) / ((v42 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v41 = powf(a4 * -0.0001, 0.1593);
        v27 = 0.0000014619 - powf(((v41 * 18.852) + 0.83594) / ((v41 * 18.688) + 1.0), 78.844);
      }

      if (v27 <= v24)
      {
        v43 = v27;
      }

      else
      {
        v43 = v24;
      }

      if (v27 < 0.18821)
      {
        v43 = 0.18821;
      }

      v30 = (0.18821 - v43) / (0.18821 - v24);
      v31 = (v43 - v24) / (0.18821 - v24);
      v44 = (v31 * 0.6) + (v30 * 0.4);
      if (v14 <= v44)
      {
        v44 = v14;
      }

      if (v14 >= ((v31 * 0.3) + (v30 * 0.2)))
      {
        v45 = v44;
      }

      else
      {
        v45 = (v31 * 0.3) + (v30 * 0.2);
      }

      if (a5 >= 0.0)
      {
        v48 = powf(a5 * 0.0001, 0.1593);
        v47 = powf(((v48 * 18.852) + 0.83594) / ((v48 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v46 = powf(a5 * -0.0001, 0.1593);
        v47 = 0.0000014619 - powf(((v46 * 18.852) + 0.83594) / ((v46 * 18.688) + 1.0), 78.844);
      }

      v37 = v47 / v24;
      v38 = (((0.4 - v45) + (v45 + -0.2)) / 0.2) * v37;
      v39 = (0.6 - v45) + ((v45 + -0.3) * 1.2185);
    }

    else
    {
      if (a1 != 2)
      {
        v15 = a5 / a6;
        if (a1 != 1)
        {
          goto LABEL_64;
        }

        v16 = *&histAdjustHeadroomReLUParamB + (*&histAdjustHeadroomReLUParamA * v14);
        if (v16 <= 1.0)
        {
          v17 = *&histAdjustHeadroomReLUParamB + (*&histAdjustHeadroomReLUParamA * v14);
        }

        else
        {
          v17 = 1.0;
        }

        if (v16 >= *&histAdjustHeadroomReLUParamC)
        {
          v18 = v17;
        }

        else
        {
          v18 = *&histAdjustHeadroomReLUParamC;
        }

        if (a5 >= 0.0)
        {
          v50 = powf(a5 * 0.0001, 0.1593);
          v20 = powf(((v50 * 18.852) + 0.83594) / ((v50 * 18.688) + 1.0), 78.844);
        }

        else
        {
          v19 = powf(a5 * -0.0001, 0.1593);
          v20 = 0.0000014619 - powf(((v19 * 18.852) + 0.83594) / ((v19 * 18.688) + 1.0), 78.844);
        }

        v49 = v18 * v20;
        goto LABEL_61;
      }

      if (a6 >= 0.0)
      {
        v25 = powf(a6 * 0.0001, 0.1593);
        v22 = powf(((v25 * 18.852) + 0.83594) / ((v25 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v21 = powf(a6 * -0.0001, 0.1593);
        v22 = 0.0000014619 - powf(((v21 * 18.852) + 0.83594) / ((v21 * 18.688) + 1.0), 78.844);
      }

      v60 = a4;
      if (a4 >= 0.0)
      {
        v28 = powf(a4 * 0.0001, 0.1593);
        v27 = powf(((v28 * 18.852) + 0.83594) / ((v28 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v26 = powf(a4 * -0.0001, 0.1593);
        v27 = 0.0000014619 - powf(((v26 * 18.852) + 0.83594) / ((v26 * 18.688) + 1.0), 78.844);
      }

      if (v27 <= v22)
      {
        v29 = v27;
      }

      else
      {
        v29 = v22;
      }

      if (v27 < 0.18821)
      {
        v29 = 0.18821;
      }

      v30 = (0.18821 - v29) / (0.18821 - v22);
      v31 = (v29 - v22) / (0.18821 - v22);
      v32 = (v31 * 0.5) + (v30 * 0.4);
      if (v14 <= v32)
      {
        v32 = v14;
      }

      if (v14 >= ((v31 * 0.2) + (v30 * 0.2)))
      {
        v33 = v32;
      }

      else
      {
        v33 = (v31 * 0.2) + (v30 * 0.2);
      }

      if (a5 >= 0.0)
      {
        v36 = powf(a5 * 0.0001, 0.1593);
        v35 = powf(((v36 * 18.852) + 0.83594) / ((v36 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v34 = powf(a5 * -0.0001, 0.1593);
        v35 = 0.0000014619 - powf(((v34 * 18.852) + 0.83594) / ((v34 * 18.688) + 1.0), 78.844);
      }

      v37 = v35 / v22;
      v38 = (((v33 + -0.2) + ((0.4 - v33) * 0.9)) / 0.2) * v37;
      v39 = ((v33 + -0.2) * 1.2389) + ((0.5 - v33) * 0.9161);
    }

    v49 = v27 * ((v31 * ((v39 / 0.3) * v37)) + (v30 * v38));
    a6 = v60;
LABEL_61:
    v51 = v49 < 0.00000073096;
    if (v49 < 0.00000073096)
    {
      v49 = -(v49 + -0.0000014619);
    }

    v52 = flt_2508CD850[v51];
    v53 = powf(v49, 0.012683);
    v54 = fmax(((v53 + -0.83594) / ((v53 * -18.688) + 18.852)), 0.0);
    v15 = (v52 * powf(v54, 6.2774)) / a6;
  }

LABEL_64:
  result = GetConfig();
  if (result)
  {
    v56 = GetConfig();
    result = HDRConfig::GetConfigEntryValue(v56, 0x80u, 0);
    v57 = *result;
  }

  else
  {
    v57 = 0.0;
  }

  if (v15 < v57)
  {
    result = GetConfig();
    if (result)
    {
      v58 = GetConfig();
      result = HDRConfig::GetConfigEntryValue(v58, 0x80u, 0);
      v59 = *result;
    }
  }

  return result;
}

float adjustDovi84DM4Stats(float a1, float a2, uint64_t a3, float *a4, float *a5, float *a6)
{
  if (GetConfig() && (v11 = GetConfig(), *HDRConfig::GetConfigEntryValue(v11, 0x91u, 0) == 1))
  {
    v12 = fminf(a4[15] / *&DM4MidConvergeStartNits, 1.0);
  }

  else
  {
    v12 = 1.0;
    if (!GetConfig() || (Config = GetConfig(), *HDRConfig::GetConfigEntryValue(Config, 0x91u, 0) != 2))
    {
      v15 = 1.0;
      goto LABEL_10;
    }

    if (GetConfig())
    {
      v14 = GetConfig();
      v15 = *HDRConfig::GetConfigEntryValue(v14, 0x92u, 0);
      goto LABEL_10;
    }
  }

  v15 = 0.0;
LABEL_10:
  v16 = a4[24];
  if (v16 >= 0.0)
  {
    v19 = powf(v16 * 0.0001, 0.1593);
    v18 = powf(((v19 * 18.852) + 0.83594) / ((v19 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v17 = powf(v16 * -0.0001, 0.1593);
    v18 = 0.0000014619 - powf(((v17 * 18.852) + 0.83594) / ((v17 * 18.688) + 1.0), 78.844);
  }

  *a5 = ((1.0 - v12) * v18) + (v12 * a1);
  v20 = a4[11];
  if (v20 >= 0.0)
  {
    v23 = powf(v20 * 0.0001, 0.1593);
    v22 = powf(((v23 * 18.852) + 0.83594) / ((v23 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v21 = powf(v20 * -0.0001, 0.1593);
    v22 = 0.0000014619 - powf(((v21 * 18.852) + 0.83594) / ((v21 * 18.688) + 1.0), 78.844);
  }

  if (v15 <= 1.0)
  {
    v24 = v15;
  }

  else
  {
    v24 = 1.0;
  }

  if (v15 < 0.0)
  {
    v24 = 0.0;
  }

  result = ((1.0 - v24) * v22) + (v24 * a2);
  *a6 = result;
  return result;
}

float computeHdr10TmLumaMixYMinRatio(uint64_t a1)
{
  v1 = (((*(a1 + 76) + -0.41928) * 0.3) / 0.1072) + 0.1;
  v2 = 0.4;
  if (v1 <= 0.4)
  {
    v2 = (((*(a1 + 76) + -0.41928) * 0.3) / 0.1072) + 0.1;
  }

  if (v1 >= 0.1)
  {
    return v2;
  }

  else
  {
    return 0.1;
  }
}

uint64_t updateAUWDMParamsByDefaultsWrite(_DWORD *a1)
{
  if (GetConfig())
  {
    Config = GetConfig();
    if (*(Config + 4427))
    {
      if ((Config[8852] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v3 = GetConfig();
          v4 = *HDRConfig::GetConfigEntryValue(v3, 0xC9u, 0);
        }

        else
        {
          v4 = 0;
        }

        a1[72] = v4;
      }
    }
  }

  if (GetConfig())
  {
    v5 = GetConfig();
    if (*(v5 + 4449))
    {
      if ((v5[8896] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v6 = GetConfig();
          v7 = *HDRConfig::GetConfigEntryValue(v6, 0xCAu, 0);
        }

        else
        {
          v7 = 0;
        }

        a1[73] = v7;
      }
    }
  }

  if (GetConfig())
  {
    v8 = GetConfig();
    if (*(v8 + 4471))
    {
      if ((v8[8940] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v9 = GetConfig();
          v10 = *HDRConfig::GetConfigEntryValue(v9, 0xCBu, 0);
        }

        else
        {
          v10 = 0;
        }

        a1[74] = v10;
      }
    }
  }

  if (GetConfig())
  {
    v11 = GetConfig();
    if (*(v11 + 4493))
    {
      if ((v11[8984] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v12 = GetConfig();
          v13 = *HDRConfig::GetConfigEntryValue(v12, 0xCCu, 0);
        }

        else
        {
          v13 = 0;
        }

        a1[75] = v13;
      }
    }
  }

  if (GetConfig())
  {
    v14 = GetConfig();
    if (*(v14 + 4515))
    {
      if ((v14[9028] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v15 = GetConfig();
          v16 = *HDRConfig::GetConfigEntryValue(v15, 0xCDu, 0);
        }

        else
        {
          v16 = 0;
        }

        a1[76] = v16;
      }
    }
  }

  if (GetConfig())
  {
    v17 = GetConfig();
    if (*(v17 + 4537))
    {
      if ((v17[9072] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v18 = GetConfig();
          v19 = *HDRConfig::GetConfigEntryValue(v18, 0xCEu, 0);
        }

        else
        {
          v19 = 0;
        }

        a1[77] = v19;
      }
    }
  }

  if (GetConfig())
  {
    v20 = GetConfig();
    if (*(v20 + 4559))
    {
      if ((v20[9116] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v21 = GetConfig();
          v22 = *HDRConfig::GetConfigEntryValue(v21, 0xCFu, 0);
        }

        else
        {
          v22 = 0;
        }

        a1[78] = v22;
      }
    }
  }

  if (GetConfig())
  {
    v23 = GetConfig();
    if (*(v23 + 4581))
    {
      if ((v23[9160] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v24 = GetConfig();
          v25 = *HDRConfig::GetConfigEntryValue(v24, 0xD0u, 0);
        }

        else
        {
          v25 = 0;
        }

        a1[79] = v25;
      }
    }
  }

  if (GetConfig())
  {
    v26 = GetConfig();
    if (*(v26 + 4603))
    {
      if ((v26[9204] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v27 = GetConfig();
          v28 = *HDRConfig::GetConfigEntryValue(v27, 0xD1u, 0);
        }

        else
        {
          v28 = 0;
        }

        a1[80] = v28;
      }
    }
  }

  if (GetConfig())
  {
    v29 = GetConfig();
    if (*(v29 + 4625))
    {
      if ((v29[9248] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v30 = GetConfig();
          v31 = *HDRConfig::GetConfigEntryValue(v30, 0xD2u, 0);
        }

        else
        {
          v31 = 0;
        }

        a1[81] = v31;
      }
    }
  }

  if (GetConfig())
  {
    v32 = GetConfig();
    if (*(v32 + 4647))
    {
      if ((v32[9292] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v33 = GetConfig();
          v34 = *HDRConfig::GetConfigEntryValue(v33, 0xD3u, 0);
        }

        else
        {
          v34 = 0;
        }

        a1[82] = v34;
      }
    }
  }

  if (GetConfig())
  {
    v35 = GetConfig();
    if (*(v35 + 4669))
    {
      if ((v35[9336] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v36 = GetConfig();
          v37 = *HDRConfig::GetConfigEntryValue(v36, 0xD4u, 0);
        }

        else
        {
          v37 = 0;
        }

        a1[83] = v37;
      }
    }
  }

  if (GetConfig())
  {
    v38 = GetConfig();
    if (*(v38 + 4691))
    {
      if ((v38[9380] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v39 = GetConfig();
          v40 = *HDRConfig::GetConfigEntryValue(v39, 0xD5u, 0);
        }

        else
        {
          v40 = 0;
        }

        a1[84] = v40;
      }
    }
  }

  if (GetConfig())
  {
    v41 = GetConfig();
    if (*(v41 + 4713))
    {
      if ((v41[9424] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v42 = GetConfig();
          v43 = *HDRConfig::GetConfigEntryValue(v42, 0xD6u, 0);
        }

        else
        {
          v43 = 0;
        }

        a1[85] = v43;
      }
    }
  }

  if (GetConfig())
  {
    v44 = GetConfig();
    if (*(v44 + 4735))
    {
      if ((v44[9468] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v45 = GetConfig();
          v46 = *HDRConfig::GetConfigEntryValue(v45, 0xD7u, 0);
        }

        else
        {
          v46 = 0;
        }

        a1[86] = v46;
      }
    }
  }

  if (GetConfig())
  {
    v47 = GetConfig();
    if (*(v47 + 4757))
    {
      if ((v47[9512] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v48 = GetConfig();
          v49 = *HDRConfig::GetConfigEntryValue(v48, 0xD8u, 0);
        }

        else
        {
          v49 = 0;
        }

        a1[87] = v49;
      }
    }
  }

  if (GetConfig())
  {
    v50 = GetConfig();
    if (*(v50 + 4779))
    {
      if ((v50[9556] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v51 = GetConfig();
          v52 = *HDRConfig::GetConfigEntryValue(v51, 0xD9u, 0);
        }

        else
        {
          v52 = 0;
        }

        a1[88] = v52;
      }
    }
  }

  result = GetConfig();
  if (result)
  {
    result = GetConfig();
    if (*(result + 19204))
    {
      if ((*(result + 19200) & 0x80) != 0)
      {
        result = GetConfig();
        if (result)
        {
          v54 = GetConfig();
          result = HDRConfig::GetConfigEntryValue(v54, 0xDAu, 0);
          v55 = *result;
        }

        else
        {
          v55 = 0;
        }

        a1[89] = v55;
      }
    }
  }

  return result;
}

float calculateAdaptiveSdiv(float a1, float a2)
{
  if (GetConfig())
  {
    Config = GetConfig();
    if (*HDRConfig::GetConfigEntryValue(Config, 0x102u, 0) == 1 && (IsVirtualized() & 1) == 0)
    {
      v5 = 0.0;
      a2 = 0.0;
      if (GetConfig())
      {
        v6 = GetConfig();
        a2 = *HDRConfig::GetConfigEntryValue(v6, 0x104u, 0);
      }

      if (GetConfig())
      {
        v7 = GetConfig();
        v5 = *HDRConfig::GetConfigEntryValue(v7, 0x105u, 0);
      }

      if (v5 <= a1)
      {
        v8 = v5;
      }

      else
      {
        v8 = a1;
      }

      if (a2 < v8)
      {
        return v8;
      }
    }
  }

  return a2;
}

__n128 updateEdrAdaptationDataByTMData(uint64_t a1, uint64_t a2)
{
  *(a2 + 92) = *(a1 + 296);
  *(a2 + 60) = *(a1 + 264);
  *(a2 + 108) = *(a1 + 312);
  *(a2 + 124) = *(a1 + 328);
  *(a2 + 76) = *(a1 + 280);
  result = *(a1 + 344);
  *(a2 + 140) = result;
  return result;
}

void sub_2508A9F1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = HistBasedToneMapping;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

float getCurvatureDegammaLutInput(float *a1)
{
  v1 = 0;
  result = -0.00097656;
  v3 = 0.00048828;
  do
  {
    v4 = __const__Z27getCurvatureDegammaLutInputPf_sub_lut_entries[v1];
    if (v4 <= 1)
    {
      v4 = 1;
    }

    do
    {
      result = v3 + result;
      *a1++ = result;
      --v4;
    }

    while (v4);
    if (v1 == 5)
    {
      v5 = 16.0;
    }

    else
    {
      v5 = 2.0;
    }

    v3 = v3 * v5;
    ++v1;
  }

  while (v1 != 8);
  return result;
}

float *getCurvatureRegammaLutInput(float *result)
{
  v1 = 0;
  v2 = 9.3132e-10;
  v3 = -9.3132e-10;
  do
  {
    if (v1 == 27)
    {
      v4 = 1;
    }

    else
    {
      v4 = 4;
    }

    if (v1 == 1)
    {
      v4 = 7;
    }

    if (!v1)
    {
      v4 = 5;
    }

    do
    {
      v3 = v2 + v3;
      *result++ = v3;
      --v4;
    }

    while (v4);
    v5 = v2 * 4.0;
    if (v1 != 26)
    {
      v2 = v2 + v2;
    }

    if (!v1)
    {
      v2 = v5;
    }

    ++v1;
  }

  while (v1 != 28);
  return result;
}

double L2PqNormMR81(double a1)
{
  if (a1 < 0.0)
  {
    a1 = 0.0;
  }

  v1 = pow(a1 / 10000.0, 0.159301758);
  v2 = (v1 * 18.8515625 + 0.8359375) / (v1 * 18.6875 + 1.0);

  return pow(v2, 78.84375);
}

double CubicEaseMR81(double a1, double a2, double a3, double a4, double a5)
{
  if (a1 > a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = a1;
  }

  if (a1 >= a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = a2;
  }

  v7 = (v6 - a2) / (a3 - a2);
  if (v7 <= 0.5)
  {
    v8 = v7 * (v7 * (v7 * 4.0));
  }

  else
  {
    v8 = (v7 + -1.0) * ((v7 + -1.0) * 4.0) * (v7 + -1.0) + 1.0;
  }

  return a4 + v8 * (a5 - a4);
}

__int128 *GetPrimariesPtrMR81(unsigned int a1)
{
  if (a1 <= 0x12)
  {
    return &V8PrimaryTblMR81[4 * a1];
  }

  else
  {
    return 0;
  }
}

double GetRgb2XyzM33ByPrimsMR81(double *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v9 = (a2 - a6) * (a5 - a7) - (a3 - a7) * (a4 - a6);
  v10 = 0.0;
  v11 = 0.0;
  if (v9 != 0.0)
  {
    v12 = a8 - a6;
    v10 = (v12 * (a5 - a7) - (a9 - a7) * (a4 - a6)) / v9;
    v11 = (v12 * -(a3 - a7) + (a2 - a6) * (a9 - a7)) / v9;
  }

  v13 = v10 / a9;
  v14 = a9 == 0.0;
  if (a9 == 0.0)
  {
    v13 = 0.0;
  }

  v15 = v11 / a9;
  if (a9 == 0.0)
  {
    v15 = 0.0;
  }

  v16 = (1.0 - v10 - v11) / a9;
  if (v14)
  {
    v16 = 0.0;
  }

  *a1 = v13 * a2;
  a1[1] = v15 * a4;
  a1[2] = v16 * a6;
  a1[3] = v13 * a3;
  a1[4] = v15 * a5;
  a1[5] = v16 * a7;
  a1[6] = (1.0 - a2 - a3) * v13;
  a1[7] = (1.0 - a4 - a5) * v15;
  result = (1.0 - a6 - a7) * v16;
  a1[8] = result;
  return result;
}

double hdrpMrToneCurve(int a1, double *a2, int a3, int a4, double *a5, double *a6, int a7, uint64_t a8)
{
  v14 = *(a8 + 96 * a4 + 1024);
  if (*(a8 + 9168) >= 4)
  {
    if ((v14 & 0x10) == 0)
    {
      v15 = (v14 >> 3) & 1;
      goto LABEL_10;
    }

LABEL_6:
    Dm4Tc(a1, a2, a3, a4, a6, a5, a8);
    if (!a7)
    {
      return result;
    }

    goto LABEL_11;
  }

  if ((v14 & 4) != 0)
  {
    v15 = 0;
  }

  else
  {
    if ((v14 & 8) == 0)
    {
      goto LABEL_6;
    }

    v15 = 1;
  }

LABEL_10:
  Dm23Tc(a1, v15, a2, a3, a4, a6, a5, a8);
  if (!a7)
  {
    return result;
  }

LABEL_11:
  if (a6)
  {
    v17 = a3 + 3;
  }

  else
  {
    v17 = a3;
  }

  if (v17)
  {
    result = *a5;
    v18 = v17;
    v19 = (a8 + 16 * v17 + 8000);
    do
    {
      v20 = *(v19 - 1);
      if (result >= v20)
      {
        v20 = *v19;
        if (result <= *v19)
        {
          v20 = result;
        }
      }

      *a5 = v20;
      v19 -= 2;
      result = v20;
      --v18;
    }

    while (v18);
  }

  return result;
}

void Dm4Tc(int a1, double *a2, int a3, int a4, double *a5, uint64_t a6, uint64_t a7)
{
  v10 = a4;
  v193 = *MEMORY[0x277D85DE8];
  v13 = a7 + 8136;
  if (a1)
  {
    v14 = 4192;
  }

  else
  {
    v14 = 1136;
  }

  v186 = (a7 + v14);
  v15 = a4;
  *(a7 + 4 * a4 + 9152) = 4;
  v16 = a7 + 16 * a4;
  if (a1)
  {
    goto LABEL_95;
  }

  v17 = *v186;
  v185 = a7 + 16 * a4;
  v181 = a4;
  if ((*v186 & 1) == 0)
  {
    if (enableLogInstance)
    {
      v18 = a7 + 8136;
      if (logInstanceID)
      {
        v19 = logInstanceID;
      }

      else
      {
        v19 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v192 = WORD1(v19);
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx MR81: Error: PrepareL8 MDSEXT_HAVE_LVL_L0 is false", buf, 0xCu);
      }

      prevLogInstanceID = v19;
      v13 = v18;
      v16 = v185;
      v15 = v181;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] MR81: Error: PrepareL8 MDSEXT_HAVE_LVL_L0 is false", buf, 2u);
    }

    v17 = *v186;
  }

  if ((v17 & 0x100) == 0 || *(a7 + 8360))
  {
    goto LABEL_82;
  }

  v178 = a5;
  v179 = a3;
  v20 = a7 + 8376;
  v184 = a7 + 8472;
  v21 = *(v186 + 226);
  v174 = v13;
  v176 = v21;
  v22 = v21;
  if (v21 >= 1)
  {
    v23 = 0;
    while (1)
    {
      v24 = v186[21 * v23 + 114];
      v25 = v20 + 16 * v23;
      if (v24 <= 0x31)
      {
        v26 = DisplayIdxTblDoViMR81[v24];
        if (v26)
        {
          break;
        }
      }

      v30 = *(v186 + 608);
      if (v30 >= 1)
      {
        v31 = v14 + a7 + 2472;
        while (*(v31 - 32) != v24)
        {
          v31 += 96;
          if (!--v30)
          {
            goto LABEL_29;
          }
        }

        v27 = *(v31 - 24);
        *(v25 + 8) = v27;
        v32 = *(v31 - 8);
        v33 = v32 > 0x12;
        v29 = &V8PrimaryTblMR81[4 * v32];
        if (v33)
        {
          v29 = v31;
        }

        goto LABEL_32;
      }

LABEL_29:
      *v25 = 0;
      *(v25 + 8) = 0;
LABEL_38:
      if (++v23 == v22)
      {
        goto LABEL_39;
      }
    }

    v27 = *(v26 + 24);
    *(v25 + 8) = v27;
    v28 = *(v26 + 32);
    if (v28 <= 0x12)
    {
      v29 = &V8PrimaryTblMR81[4 * v28];
    }

    else
    {
      v29 = 0;
    }

LABEL_32:
    *(v184 + 8 * v23) = v29;
    v34 = fmin(v27, 1.99205017);
    if (v27 >= 0.0)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0.0;
    }

    v36 = pow(v35, 0.0126833135);
    v37 = (v36 + -0.8359375) / (v36 * -18.6875 + 18.8515625);
    if (v37 < 0.0)
    {
      v37 = 0.0;
    }

    *(v20 + 16 * v23) = pow(v37, 6.27739464) * 10000.0;
    goto LABEL_38;
  }

LABEL_39:
  v38 = v186[28];
  v39 = v20 + 16 * v176;
  *(v39 + 8) = v38;
  v40 = fmin(v38, 1.99205017);
  if (v38 >= 0.0)
  {
    v41 = v40;
  }

  else
  {
    v41 = 0.0;
  }

  v42 = pow(v41, 0.0126833135);
  v43 = (v42 + -0.8359375) / (v42 * -18.6875 + 18.8515625);
  if (v43 < 0.0)
  {
    v43 = 0.0;
  }

  *v39 = pow(v43, 6.27739464) * 10000.0;
  *(v184 + 8 * v176) = a7 + 7944;
  v44 = (a7 + 8528);
  if (!v176)
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v47 = logInstanceID;
      }

      else
      {
        v47 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v192 = WORD1(v47);
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx MR81: Error: BuildLumaXInfo trimNum=0", buf, 0xCu);
      }

      prevLogInstanceID = v47;
      a3 = v179;
    }

    else
    {
      v48 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      a3 = v179;
      v44 = (a7 + 8528);
      if (!v48)
      {
LABEL_57:
        *(a7 + 8520) = 0;
LABEL_58:
        v49 = 0;
        v50 = 0;
        do
        {
          v51 = *(v20 + 16 * v50 + 8);
          *(a7 + 8576 + 8 * v49) = v51;
          if (v51 > 0.0)
          {
            v52 = v51 * 1024.0;
            v53 = (v52 + 1.0);
            v54 = (v52 + 0.5);
            if (v49 < 1)
            {
LABEL_65:
              *(v190 + v49) = v53;
              *&buf[4 * v49] = v54;
              v44->i32[v49] = v50;
              v49 = *(a7 + 8520) + 1;
              *(a7 + 8520) = v49;
            }

            else
            {
              v55 = v49;
              v56 = v190;
              v57 = buf;
              while (1)
              {
                v58 = *v57;
                v57 += 4;
                if (v58 == v54 || *v56 == v53)
                {
                  break;
                }

                v56 = (v56 + 4);
                if (!--v55)
                {
                  goto LABEL_65;
                }
              }
            }
          }

          ++v50;
        }

        while (v50 != v176 + 1);
        v45 = a6;
        v46 = v49 - 1;
        goto LABEL_68;
      }

      *buf = 0;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] MR81: Error: BuildLumaXInfo trimNum=0", buf, 2u);
    }

    v44 = (a7 + 8528);
    goto LABEL_57;
  }

  *(a7 + 8520) = 0;
  a3 = v179;
  if ((v22 & 0x80000000) == 0)
  {
    goto LABEL_58;
  }

  v45 = a6;
  v46 = -1;
LABEL_68:
  *(a7 + 8520) = v46;
  SortAscend_0((a7 + 8576), v44, v46);
  v59 = *(v186 + 226);
  v182 = (a7 + 8624);
  v177 = (a7 + 8552);
  *(a7 + 8524) = 0;
  if ((v59 & 0x80000000) != 0)
  {
    v74 = -1;
    v13 = v174;
  }

  else
  {
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = v59 + 1;
    v13 = v174;
    do
    {
      v64 = (v20 + 16 * v62);
      v65 = v64[1];
      if (v65 > 0.0)
      {
        ChromaDist = FindChromaDist(*(v184 + 8 * v62), *v64, v65);
        v182[v60] = ChromaDist;
        v67 = ChromaDist * 1024.0;
        v68 = (v67 + 1.0);
        v69 = (v67 + 0.5);
        if (v60 < 1)
        {
LABEL_76:
          *(v190 + v60) = v68;
          *&buf[4 * v60] = v69;
          v177->i32[v60] = v62;
          v60 = *(a7 + 8524) + 1;
          *(a7 + 8524) = v60;
        }

        else
        {
          v70 = v60;
          v71 = v190;
          v72 = buf;
          while (1)
          {
            v73 = *v72;
            v72 += 4;
            if (v73 == v69 || *v71 == v68)
            {
              break;
            }

            v71 = (v71 + 4);
            if (!--v70)
            {
              goto LABEL_76;
            }
          }
        }

        v61 = v60;
      }

      ++v62;
    }

    while (v62 != v63);
    v74 = v61 - 1;
    a3 = v179;
    a5 = v178;
  }

  *(a7 + 8524) = v74;
  SortAscend_0(v182, v177, v74);
  *(a7 + 8360) = 1;
  v17 = *v186;
  a6 = v45;
  v16 = v185;
  v15 = v181;
LABEL_82:
  v189 = 0;
  v190[0] = 0.0;
  v188 = 0;
  if ((v17 & 1) == 0)
  {
    if (enableLogInstance)
    {
      v75 = v15;
      v76 = v13;
      if (logInstanceID)
      {
        v77 = logInstanceID;
      }

      else
      {
        v77 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v192 = WORD1(v77);
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx MR81: Error: InterpL8 MDSEXT_HAVE_LVL_L0 is false", buf, 0xCu);
      }

      prevLogInstanceID = v77;
      v13 = v76;
      v16 = v185;
      v15 = v75;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] MR81: Error: InterpL8 MDSEXT_HAVE_LVL_L0 is false", buf, 2u);
    }

    v17 = *v186;
  }

  v78 = a7 + 8804;
  if ((v17 & 0x100) == 0)
  {
    *(v78 + 4 * v15) = 1;
LABEL_95:
    *(a7 + 8800) = 1;
    v79 = v186;
LABEL_96:
    v80 = *(a7 + 8368);
    goto LABEL_97;
  }

  v175 = v13;
  v180 = a3;
  v183 = v10;
  v136 = 0;
  v80 = a7 + 168 * v15 + 8816;
  *(v78 + 4 * v15) = 0;
  v137 = 1;
  do
  {
    v138 = v137;
    if (v137)
    {
      v139 = *(v16 + 8016);
      v140 = 6;
      v141 = &L8LumaTt;
    }

    else
    {
      v139 = FindChromaDist((a7 + 96 * v15 + 960), *(a7 + 96 * v15 + 944), *(v16 + 8016));
      v140 = 14;
      v141 = &L8ChromaTt;
    }

    BuildInterpInfo(v186 + 224, (a7 + 8576 + 48 * v136), a7 + 8528 + 24 * v136, *(a7 + 8520 + 4 * v136), v190, &v189, &v188, v139);
    v142 = v188;
    v143 = v189;
    v144 = v190[0];
    do
    {
      v145 = *v141++;
      *(v80 + 8 * v145) = *(v143 + 8 * v145) + (*(v142 + 8 * v145) - *(v143 + 8 * v145)) * v144;
      --v140;
    }

    while (v140);
    v137 = 0;
    v136 = 1;
    v16 = v185;
  }

  while ((v138 & 1) != 0);
  *v80 = 0;
  v146 = *(a7 + 168 * v15 + 8832) + *(a7 + 168 * v15 + 8832);
  *(a7 + 168 * v15 + 8824) = *(a7 + 168 * v15 + 8824) * 2.0 + -1.0;
  *(a7 + 168 * v15 + 8832) = v146;
  *(a7 + 168 * v15 + 8840) = *(a7 + 168 * v15 + 8840) * 2.0 + -1.0;
  v10 = v183;
  v13 = v175;
  v147 = *(a7 + 8804 + 4 * v181);
  *(a7 + 8800) = v147;
  a3 = v180;
  v79 = v186;
  if (v147)
  {
    goto LABEL_96;
  }

LABEL_97:
  v81 = v79[41];
  v82 = v79[43];
  v83 = v79[42] + *(v80 + 64);
  if ((*v79 & 8) != 0)
  {
    v81 = v81 + v79[44];
    v83 = v83 + v79[45];
    v82 = v82 + v79[46];
  }

  v84 = fmin(v82, 0.9997558);
  if (v82 >= 0.000244200244)
  {
    v85 = v84;
  }

  else
  {
    v85 = 0.000244200244;
  }

  v86 = v85 + -0.000244200244;
  if (v81 <= v85 + -0.000244200244)
  {
    v86 = v81;
  }

  if (v81 >= 0.0)
  {
    v87 = v86;
  }

  else
  {
    v87 = 0.0;
  }

  v88 = fmin(v83, 1.0);
  if (v83 >= v85 + 0.000244200244)
  {
    v89 = v88;
  }

  else
  {
    v89 = v85 + 0.000244200244;
  }

  v90 = *(v16 + 8008);
  v91 = *(v16 + 8016);
  v92 = v90 + 0.1;
  v93 = v91 - v90 + v91 - v90;
  if (v87 > v90)
  {
    v94 = *(v16 + 8008);
  }

  else
  {
    v94 = v87;
  }

  if (v89 < v91)
  {
    v95 = *(v16 + 8016);
  }

  else
  {
    v95 = v89;
  }

  v96 = v90 + 0.02;
  if (v90 + 0.02 > v92)
  {
    v96 = v90 + 0.1;
  }

  v97 = v91 + -0.1;
  if (v91 + -0.1 < v92)
  {
    v97 = v90 + 0.1;
  }

  v98 = v92 - v94;
  v99 = (v92 - v96) / (v92 - v94);
  v100 = v97 - v92;
  v101 = v95 - v92;
  v102 = v100 / v101;
  v103 = fmin(v99 * 3.0, 1.0);
  v104 = fmin(v100 / v101 * 3.0, 1.0);
  if (v93 > v103)
  {
    v93 = v103;
  }

  if (v93 > v104)
  {
    v93 = v104;
  }

  v105 = v99 * v99;
  if (v105 > v103)
  {
    v105 = v103;
  }

  v106 = (v85 - v94) / v98;
  v107 = v96 + (v106 * (v106 * v106) * -2.0 + v106 * v106 * 3.0) * (v92 - v96) + ((v106 * (v106 * v106) - v106 * v106) * v93 + (v106 + v106 * (v106 * v106) + v106 * v106 * -2.0) * v105) * v98;
  v108 = v102 * v102;
  if (v102 * v102 > v104)
  {
    v108 = v104;
  }

  v109 = (v85 - v92) / v101;
  v110 = v92 + (v109 * (v109 * v109) * -2.0 + v109 * v109 * 3.0) * v100 + ((v109 * (v109 * v109) - v109 * v109) * v108 + (v109 + v109 * (v109 * v109) + v109 * v109 * -2.0) * v93) * v101;
  if (v92 < v85)
  {
    v111 = v110;
  }

  else
  {
    v111 = v107;
  }

  v112 = v89 - v85;
  if (v91 - v111 <= v89 - v85)
  {
    v113 = v111;
  }

  else
  {
    v113 = v91 - (v89 - v85);
  }

  v114 = v85 - v87;
  if (v111 - v90 > v85 - v87)
  {
    v111 = v90 + v85 - v87;
  }

  if (v113 >= v85)
  {
    v113 = v85;
  }

  if (v111 <= v85)
  {
    v111 = v85;
  }

  v115 = v113 + v111 - v85;
  v116 = v91 + -0.000244200244;
  if (v115 <= v91 + -0.000244200244)
  {
    v116 = v115;
  }

  if (v115 >= v90 + 0.000244200244)
  {
    v117 = v116;
  }

  else
  {
    v117 = v90 + 0.000244200244;
  }

  if (v117 - v114 < v90)
  {
    v118 = *(v16 + 8008);
  }

  else
  {
    v118 = v117 - v114;
  }

  if (v112 + v117 > v91)
  {
    v119 = *(v16 + 8016);
  }

  else
  {
    v119 = v112 + v117;
  }

  *(a7 + 8136) = v87;
  *(a7 + 8144) = v85;
  *(a7 + 8152) = v89;
  *(a7 + 8160) = v118;
  *(a7 + 8168) = v117;
  *(a7 + 8176) = v119;
  CalSlopes(0, v13, *(v80 + 56));
  v120 = *(v13 + 48);
  v121 = *(v13 + 56);
  *(a7 + 8208) = 1.0 / v114 * (-2.0 * v120.f64[0] + (v118 - v117) * -3.0 * (1.0 / v114) - v121);
  *(a7 + 8216) = 1.0 / v114 * (1.0 / v114) * (v121 + v120.f64[0] + (v118 - v117 + v118 - v117) * (1.0 / v114));
  v122 = *(a7 + 8200);
  *(a7 + 8224) = 1.0 / v112 * (vmuld_lane_f64(-2.0, v120, 1) + (v117 - v119) * -3.0 * (1.0 / v112) - v122);
  *(a7 + 8232) = 1.0 / v112 * (1.0 / v112) * (v122 + v121 + (v117 - v119 + v117 - v119) * (1.0 / v112));
  *(a7 + 8040) = v87;
  *(a7 + 8056) = v85;
  *(a7 + 8048) = v89;
  *(a7 + 8064) = v118;
  *(a7 + 8072) = v117;
  *(a7 + 8080) = v119;
  if (a5)
  {
    v187 = v120;
    v123 = (v16 + 8008);
    TmDm4(v10, 0, a7 + 7936, 0.0);
    v125 = v124;
    v126 = 1.0;
    TmDm4(v10, 0, a7 + 7936, 1.0);
    v129 = *v123;
    v128 = v123[1];
    if (v128 <= v127)
    {
      v127 = v123[1];
    }

    if (v128 >= v125)
    {
      v130 = v127;
    }

    else
    {
      v130 = v125;
    }

    if (v129 > v130)
    {
      v131 = v130;
    }

    else
    {
      v131 = *v123;
    }

    if (v129 >= v125)
    {
      v125 = v131;
    }

    v132 = v130 - v125;
    if (v130 - v125 == 0.0)
    {
      *a5 = 0.0;
      a5[1] = *(a7 + 8144);
    }

    else
    {
      v134 = fmin(v132, 0.9) / 0.9;
      if (v132 < 0.0)
      {
        v134 = 0.0;
      }

      if (v134 <= 0.5)
      {
        v135 = v134 * (v134 * (v134 * 4.0));
      }

      else
      {
        v135 = (v134 + -1.0) * ((v134 + -1.0) * 4.0) * (v134 + -1.0) + 1.0;
      }

      v148 = v125 + (v135 * -0.2 + 0.55) * v132;
      *(a7 + 8240) = *(a7 + 8160);
      *(a7 + 8256) = *(a7 + 8176);
      *(v13 + 128) = *v13;
      *(a7 + 8280) = *(a7 + 8152);
      __asm { FMOV            V1.2D, #1.0 }

      *(a7 + 8288) = vbslq_s8(vcgtq_f64(v187, vdupq_n_s64(0x3F30000000000000uLL)), vdivq_f64(_Q1, v187), vdupq_n_s64(0x40B0000000000000uLL));
      v154 = 1.0 / v122;
      if (v122 <= 0.000244140625)
      {
        v154 = 4096.0;
      }

      *(a7 + 8304) = v154;
      CalSlopes(1, (a7 + 8240), 0.0);
      v155 = *(a7 + 8248);
      v156 = *(a7 + 8272);
      v157 = *(a7 + 8288);
      v158 = *(a7 + 8296);
      v159 = 1.0 / (v155 - *(a7 + 8240));
      v160 = *(a7 + 8264) - v156;
      *(a7 + 8312) = v159 * (v157 * -2.0 + v160 * -3.0 * v159 - v158);
      *(a7 + 8320) = v159 * v159 * (v158 + v157 + (v160 + v160) * v159);
      v161 = *(a7 + 8304);
      v162 = 1.0 / (*(a7 + 8256) - v155);
      v163 = v156 - *(a7 + 8280);
      *(a7 + 8328) = v162 * (v158 * -2.0 + v163 * -3.0 * v162 - v161);
      *(a7 + 8336) = v162 * v162 * (v161 + v158 + (v163 + v163) * v162);
      TmDm4(v10, 1u, a7 + 7936, v125);
      *a5 = v164;
      TmDm4(v10, 1u, a7 + 7936, v148);
      *(a5 + 1) = v165;
      TmDm4(v10, 1u, a7 + 7936, v130);
      v126 = v166;
    }

    v167 = 0;
    a5[2] = v126;
    v133 = 3;
    do
    {
      TmDm4(v10, 0, a7 + 7936, a5[v167]);
      *(a6 + v167 * 8) = v168;
      ++v167;
    }

    while (v167 != 3);
  }

  else
  {
    v133 = 0;
  }

  if (a3 >= 1)
  {
    v169 = a3;
    v170 = (a6 + 8 * v133);
    do
    {
      v171 = *a2++;
      TmDm4(v10, 0, a7 + 7936, v171);
      *v170++ = v172;
      --v169;
    }

    while (v169);
  }

  v173 = *MEMORY[0x277D85DE8];
}

void Dm23Tc(int a1, int a2, double *a3, int a4, int a5, double *a6, uint64_t a7, uint64_t a8)
{
  v103 = *MEMORY[0x277D85DE8];
  v14 = 4192;
  if (!a1)
  {
    v14 = 1136;
  }

  v15 = (a8 + v14);
  v16 = a5;
  v17 = a8 + 16 * a5;
  if (a1)
  {
    v18 = 1;
  }

  else
  {
    v19 = *v15;
    if ((*v15 & 1) == 0)
    {
      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v20 = logInstanceID;
        }

        else
        {
          v20 = prevLogInstanceID;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = WORD1(v20);
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx MR81: Error: PrepareL2 MDSEXT_HAVE_LVL_L0 is false", buf, 0xCu);
        }

        prevLogInstanceID = v20;
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] MR81: Error: PrepareL2 MDSEXT_HAVE_LVL_L0 is false", buf, 2u);
      }

      v19 = *v15;
    }

    if ((v19 & 4) != 0 && !*(a8 + 8672))
    {
      *(a8 + 8688) = 0;
      v21 = *(v15 + 96);
      if (v21 < 0)
      {
        v28 = -1;
      }

      else
      {
        v22 = 0;
        v23 = 0;
        do
        {
          v24 = v15[7 * v23 + 49];
          if (v22 < 1)
          {
LABEL_24:
            *(a8 + 8728 + 8 * v22) = v24;
            *(a8 + 8692 + 4 * v22) = v23;
            v22 = *(a8 + 8688) + 1;
            *(a8 + 8688) = v22;
            v21 = *(v15 + 96);
          }

          else
          {
            v25 = v22;
            v26 = (a8 + 8728);
            while (*v26 != v24)
            {
              ++v26;
              if (!--v25)
              {
                goto LABEL_24;
              }
            }
          }
        }

        while (v23++ < v21);
        v28 = v22 - 1;
      }

      *(a8 + 8688) = v28;
      SortAscend_0((a8 + 8728), (a8 + 8692), v28);
      *(a8 + 8672) = 1;
      v19 = *v15;
    }

    if ((v19 & 1) == 0)
    {
      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v29 = logInstanceID;
        }

        else
        {
          v29 = prevLogInstanceID;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = WORD1(v29);
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx MR81: Error: InterpL2 MDSEXT_HAVE_LVL_L0 is false", buf, 0xCu);
        }

        prevLogInstanceID = v29;
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] MR81: Error: InterpL2 MDSEXT_HAVE_LVL_L0 is false", buf, 2u);
      }

      v19 = *v15;
    }

    if ((v19 & 4) != 0)
    {
      v101 = 0;
      *buf = 0;
      v100 = 0;
      *(a8 + 8804 + 4 * v16) = 0;
      BuildInterpInfo(v15 + 94, (a8 + 8728), a8 + 8692, *(a8 + 8688), buf, &v101, &v100, *(v17 + 8016));
      v30 = 0;
      v31 = v100;
      v32 = v101;
      v33 = *buf;
      do
      {
        *(a8 + 168 * v16 + 8816 + v30) = *(v32 + v30) + (*(v31 + v30) - *(v32 + v30)) * v33;
        v30 += 8;
      }

      while (v30 != 56);
      v18 = *(a8 + 8804 + 4 * v16);
    }

    else
    {
      v18 = 1;
      *(a8 + 4 * v16 + 8804) = 1;
    }
  }

  *(a8 + 8800) = v18;
  v34 = a8 + 9152;
  if (a2)
  {
    *(v34 + 4 * v16) = 3;
    v35 = fmin(v15[41], 0.002930403);
    v36 = fmax(v15[43], 0.2);
    v37 = fmax(v15[42], 0.508078422);
    if (v36 > v37 + -0.000244200244)
    {
      v36 = v37 + -0.000244200244;
    }

    v38 = (v15[28] + v15[27]) * 0.5;
    v39 = *(v17 + 8016);
    v40 = v38 - (v39 + *(v17 + 8008)) * 0.5;
    *(a8 + 8088) = v40;
    v41 = ((v36 - v38) * 3.0 + 1.0) * (v40 * 0.5);
    v42 = *(a8 + 8096);
    v43 = (v40 + 1.0) / v42;
    *(a8 + 8104) = v43;
    if (v35 - v41 < *(v17 + 8008))
    {
      v44 = *(v17 + 8008);
    }

    else
    {
      v44 = v35 - v41;
    }

    v45 = v37 - v41;
    if (v37 - v41 > v39)
    {
      v45 = v39;
    }

    v46 = (v37 - v35) * 0.15;
    v47 = v35 + v46;
    v48 = v37 - v46;
    if (v36 <= v48)
    {
      v48 = v36;
    }

    if (v36 >= v47)
    {
      v49 = v48;
    }

    else
    {
      v49 = v47;
    }

    v50 = (v45 - v44) * 0.15;
    v51 = v44 + v50;
    v52 = v45 - v50;
    if (v49 - v41 <= v52)
    {
      v52 = v49 - v41;
    }

    v53 = 8072;
    v54 = 8080;
    v55 = 8056;
    v56 = 8048;
    if (v49 - v41 < v51)
    {
      v52 = v51;
    }

    __x = v45;
    v57 = v52;
    v58 = v37;
    v59 = v49;
  }

  else
  {
    *(v34 + 4 * v16) = 2;
    v35 = fmin(v15[41], 0.002930403);
    v60 = fmax(v15[43], 0.2);
    v49 = fmax(v15[42], 0.508078422);
    if (v60 > v49 + -0.000244200244)
    {
      v60 = v49 + -0.000244200244;
    }

    v61 = fmax(v49 * 0.25 + v35 * 0.75, 0.1);
    if (v60 >= v61)
    {
      v61 = fmin(v49 * 0.75 + v35 * 0.25, 0.9);
      if (v60 <= v61)
      {
        v61 = v60;
      }
    }

    if (v61 + -0.01 <= v35)
    {
      v35 = v61 + -0.01;
    }

    if (v61 + -0.01 < 0.0)
    {
      v35 = 0.0;
    }

    v62 = fmin(v61 + 0.01, 1.0);
    if (v61 + 0.01 >= v49)
    {
      v49 = v62;
    }

    v63 = *(v17 + 8016);
    v64 = v15[27];
    v65 = v15[28];
    v66 = fmin(sqrt((*(v17 + 8008) + v63) / (v64 + v65)), 1.0);
    *(a8 + 8088) = v66;
    v67 = (v61 - v64) * (v61 * (1.0 - v66)) / (v65 - v64);
    v68 = v67 + v67;
    v69 = v35 - (v67 + v67);
    if (v69 < *(v17 + 8008))
    {
      v44 = *(v17 + 8008);
    }

    else
    {
      v44 = v69;
    }

    v52 = v49 - v68;
    if (v49 - v68 > v63)
    {
      v52 = v63;
    }

    v70 = v61 - v68;
    if (v70 > v52)
    {
      v45 = v52;
    }

    else
    {
      v45 = v70;
    }

    if (v70 < v44)
    {
      v45 = v44;
    }

    v37 = v68 + v45;
    v71 = sqrt(1.0 / v66);
    v42 = *(a8 + 8096);
    v53 = 8080;
    v54 = 8072;
    v55 = 8048;
    v56 = 8056;
    v43 = v71 / v42;
    *(a8 + 8104) = v71 / v42;
    __x = v52;
    v57 = v45;
    v58 = v49;
    v59 = v68 + v45;
  }

  *(a8 + 8040) = v35;
  *(a8 + v56) = v37;
  *(a8 + v55) = v49;
  *(a8 + 8064) = v44;
  *(a8 + v54) = v45;
  *(a8 + v53) = v52;
  v72 = 1.0;
  v73 = 1.0 / v42;
  v74 = pow(v35, v43);
  v75 = pow(v59, v43);
  v76 = pow(v58, v43);
  v77 = pow(v44, v73);
  v78 = pow(v57, v73);
  v79 = pow(__x, v73);
  v80 = (v76 - v74) * (v78 * v75) + v79 * v76 * (v74 - v75) + v74 * v77 * (v75 - v76);
  *(a8 + 8112) = (v78 * ((v77 - v79) * -(v74 * v76)) + (v78 - v79) * (v76 * v75) * v77 + (v77 - v78) * (v74 * v75) * v79) / v80;
  *(a8 + 8120) = (v78 * -(v79 * v76 - v74 * v77) - -(v79 * v76 - v75 * v78) * v77 - -(v78 * v75 - v74 * v77) * v79) / v80;
  v81 = ((v76 - v75) * v77 - (v76 - v74) * v78 + (v75 - v74) * v79) / v80;
  *(a8 + 8128) = v81;
  if (a6)
  {
    if (v81 < 0.0)
    {
      v72 = fmin(pow(-1.0 / v81, 1.0 / v43) + -0.0009765625, 1.0);
    }

    v82 = TmDm23(a5, 0, a8 + 7936, 0.0);
    v83 = TmDm23(a5, 0, a8 + 7936, v72);
    v84 = *(v17 + 8016);
    if (v84 <= v83)
    {
      v83 = *(v17 + 8016);
    }

    if (v84 >= v82)
    {
      v85 = v83;
    }

    else
    {
      v85 = v82;
    }

    v86 = *(v17 + 8008);
    if (v86 > v85)
    {
      v87 = v85;
    }

    else
    {
      v87 = *(v17 + 8008);
    }

    if (v86 >= v82)
    {
      v88 = v87;
    }

    else
    {
      v88 = v82;
    }

    v89 = fmin(v85 - v88, 0.9) / 0.9;
    if (v85 - v88 < 0.0)
    {
      v89 = 0.0;
    }

    if (v89 <= 0.5)
    {
      v90 = v89 * (v89 * (v89 * 4.0));
    }

    else
    {
      v90 = (v89 + -1.0) * ((v89 + -1.0) * 4.0) * (v89 + -1.0) + 1.0;
    }

    v92 = v88 + (v90 * -0.2 + 0.55) * (v85 - v88);
    *a6 = TmDm23(a5, 1, a8 + 7936, v88);
    a6[1] = TmDm23(a5, 1, a8 + 7936, v92);
    v93 = 0;
    a6[2] = TmDm23(a5, 1, a8 + 7936, v85);
    v91 = 3;
    do
    {
      *(a7 + v93 * 8) = TmDm23(a5, 0, a8 + 7936, a6[v93]);
      ++v93;
    }

    while (v93 != 3);
  }

  else
  {
    v91 = 0;
  }

  if (a4 >= 1)
  {
    v94 = a4;
    v95 = (a7 + 8 * v91);
    do
    {
      v96 = *a3++;
      *v95++ = TmDm23(a5, 0, a8 + 7936, v96);
      --v94;
    }

    while (v94);
  }

  v97 = *MEMORY[0x277D85DE8];
}

void TmDm4(int a1, unsigned int a2, uint64_t a3, double a4)
{
  v5 = (a3 + 104 * a2);
  v6 = *(a3 + 864);
  if (v6)
  {
    v7 = *(a3 + 432);
    v8 = a3 + 16 * a1;
    v9 = *(v8 + 72);
    v10 = *(v8 + 80) - v9;
  }

  else
  {
    v7 = a3 + 168 * a1 + 880;
    v11 = a3 + 16 * a1;
    v9 = *(v11 + 72);
    v10 = *(v11 + 80) - v9;
    if (a2 == 1)
    {
      v12 = (a4 - v9) / v10;
      if (v12 <= 0.0)
      {
        v13 = 0.0;
        if (v12 < 0.0)
        {
          v13 = -pow(-v12, 1.0 / *(a3 + 168 * a1 + 904));
        }
      }

      else
      {
        v13 = pow(v12, 1.0 / *(a3 + 168 * a1 + 904));
      }

      a4 = v9 + (v13 - *(v7 + 16)) / *(v7 + 8) * v10;
    }
  }

  v14 = v5[26];
  if (a4 <= v14)
  {
    v18 = a4 - v5[25];
    v17 = v5[28] + v5[31] * v18;
    if (v18 > 0.0)
    {
      v17 = v17 + v18 * (v18 * v18) * v5[35] + v5[34] * (v18 * v18);
    }
  }

  else
  {
    v15 = a4 - v5[27];
    if (v15 >= 0.0)
    {
      v17 = v5[30] + v5[33] * v15;
    }

    else
    {
      v16 = a4 - v14;
      v17 = v5[29] + v5[32] * v16 + v5[36] * (v16 * v16) + v5[37] * (v16 * (v16 * v16));
    }
  }

  if (!(v6 | a2))
  {
    v19 = *(v7 + 16) + *(v7 + 8) * ((v17 - v9) / v10);
    if (v19 <= 0.0)
    {
      if (v19 < 0.0)
      {
        v20 = -pow(-v19, *(v7 + 24));
      }
    }

    else
    {
      pow(v19, *(v7 + 24));
    }
  }
}

double *SortAscend_0(double *result, int32x2_t *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = 0;
      v5 = *result;
      v6 = v3;
      v7 = result + 1;
      v8 = a2;
      do
      {
        if (v5 <= *v7)
        {
          v5 = *v7;
        }

        else
        {
          *(v7 - 1) = *v7;
          *v7 = v5;
          *v8 = vrev64_s32(*v8);
          v4 = 1;
        }

        v8 = (v8 + 4);
        ++v7;
        --v6;
      }

      while (v6);
      if (v3 < 2)
      {
        break;
      }

      --v3;
    }

    while (v4);
  }

  return result;
}

double FindChromaDist(double *a1, double a2, double a3)
{
  v24[9] = *MEMORY[0x277D85DE8];
  GetRgb2XyzM33ByPrimsMR81(v24, *a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6], a1[7]);
  v4 = v24[1] * 0.0 + v24[0] * a2 + v24[2] * 0.0;
  v5 = v24[4] * 0.0 + v24[3] * a2 + v24[5] * 0.0;
  v6 = v24[7] * 0.0 + v24[6] * a2 + v24[8] * 0.0;
  v7 = v5 * 0.707593156 + v4 * 0.40023822 + v6 * -0.0808055815;
  v8 = v5 * 1.16531559 + v4 * -0.226298104 + v6 * 0.0457007745;
  v9 = v5 * 0.0 + v4 * 0.0 + v6 * 0.918224951;
  v10 = v8 * 0.92 + v7 * 0.04 + v9 * 0.04;
  v23 = v8 * 0.04 + v7 * 0.04 + v9 * 0.92;
  if (v8 * 0.04 + v7 * 0.92 + v9 * 0.04 < 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v8 * 0.04 + v7 * 0.92 + v9 * 0.04;
  }

  v12 = pow(v11 / 10000.0, 0.159301758);
  v13 = pow((v12 * 18.8515625 + 0.8359375) / (v12 * 18.6875 + 1.0), 78.84375);
  v14 = 0.0;
  if (v10 >= 0.0)
  {
    v14 = v10;
  }

  v15 = pow(v14 / 10000.0, 0.159301758);
  v16 = pow((v15 * 18.8515625 + 0.8359375) / (v15 * 18.6875 + 1.0), 78.84375);
  v17 = v23;
  if (v23 < 0.0)
  {
    v17 = 0.0;
  }

  v18 = pow(v17 / 10000.0, 0.159301758);
  v19 = pow((v18 * 18.8515625 + 0.8359375) / (v18 * 18.6875 + 1.0), 78.84375);
  v20 = *MEMORY[0x277D85DE8];
  return fabs(v16 * -4.24560547 + v13 * 4.37817383 + v19 * -0.132568359) + fabs(v16 * -1.66174316 + v13 * 0.806884766 + v19 * 0.854858398) + vabdd_f64(a3, v16 * 0.5 + v13 * 0.5 + v19 * 0.0);
}

void BuildInterpInfo(_DWORD *a1, double *a2, uint64_t a3, int a4, double *a5, void *a6, void *a7, double a8)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a4 && *a2 <= a8)
  {
    v17 = (a4 & ~(a4 >> 31)) + 1;
    v18 = a2 + 1;
    v15 = -1;
    v19 = a4 & ~(a4 >> 31);
    while (v19)
    {
      v20 = *v18++;
      ++v15;
      --v19;
      if (v20 > a8)
      {
        v17 = v15 + 1;
        goto LABEL_9;
      }
    }

    v15 = a4 & ~(a4 >> 31);
LABEL_9:
    if (v17 <= a4)
    {
      v16 = v17;
    }

    else
    {
      v16 = v15;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  if (*a1 != 8)
  {
    if (*a1 == 2)
    {
      v21 = a1 + 4;
      v22 = *(a3 + 4 * v15);
      v23 = 56;
      goto LABEL_25;
    }

    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v24 = logInstanceID;
      }

      else
      {
        v24 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v27 = 134217984;
        v28 = WORD1(v24);
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx MR81: Error: BuildInterpInfo TrimLevel must be 8", &v27, 0xCu);
      }

      prevLogInstanceID = v24;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] MR81: Error: BuildInterpInfo TrimLevel must be 8", &v27, 2u);
    }
  }

  v21 = a1 + 4;
  v22 = *(a3 + 4 * v15);
  v23 = 168;
LABEL_25:
  *a6 = v21 + v22 * v23;
  *a7 = v21 + *(a3 + 4 * v16) * v23;
  v25 = 0.0;
  if (v15 != v16)
  {
    v25 = (a8 - a2[v15]) / (a2[v16] - a2[v15]);
  }

  *a5 = v25;
  v26 = *MEMORY[0x277D85DE8];
}

uint64_t CalSlopes(uint64_t result, double *a2, double a3)
{
  v3 = a2[4];
  v4 = a2[1];
  v5 = (v3 - a2[3]) / (v4 - *a2);
  v6 = (a2[5] - v3) / (a2[2] - v4);
  v7 = v5 * 3.0;
  v8 = v6 * 3.0;
  v9 = v5 * v5;
  if (v9 > v7)
  {
    v9 = v7;
  }

  a2[6] = v9;
  if (result)
  {
    v10 = a2[7];
    if (v7 > v8)
    {
      v11 = v6 * 3.0;
    }

    else
    {
      v11 = v7;
    }

    if (v10 > v11)
    {
      v10 = v11;
    }
  }

  else
  {
    v12 = v3 - v4 + 1.0 + a3;
    if (v7 > v8)
    {
      v13 = v6 * 3.0;
    }

    else
    {
      v13 = v7;
    }

    if (v12 <= v13)
    {
      v13 = v12;
    }

    v14 = v12 <= 0.0;
    v10 = 0.0;
    if (!v14)
    {
      v10 = v13;
    }
  }

  a2[7] = v10;
  v15 = v6 * v6;
  if (v6 * v6 > v8)
  {
    v15 = v6 * 3.0;
  }

  a2[8] = v15;
  return result;
}

double TmDm23(int a1, int a2, uint64_t a3, long double a4)
{
  v5 = *(a3 + 864);
  if (v5)
  {
    if (!a2)
    {
      v6 = *(a3 + 744);
      goto LABEL_16;
    }

LABEL_8:
    if (a4 < 0.0)
    {
      a4 = 0.0;
    }

    v8 = pow(a4, 1.0 / *(a3 + 160));
    v9 = (v8 - *(a3 + 176)) / (*(a3 + 184) - *(a3 + 192) * v8);
    if (v9 < 0.0)
    {
      v9 = 0.0;
    }

    v10 = 1.0 / *(a3 + 168);
    goto LABEL_13;
  }

  v7 = (a3 + 168 * a1);
  v6 = v7 + 110;
  if (a2)
  {
    if (a4 < 0.0)
    {
      a4 = 0.0;
    }

    a4 = (pow(a4, 1.0 / v7[113]) - v7[112]) / v7[111];
    goto LABEL_8;
  }

LABEL_16:
  if (a4 < 0.0)
  {
    a4 = 0.0;
  }

  v12 = pow(a4, *(a3 + 168));
  v13 = (*(a3 + 176) + *(a3 + 184) * v12) / (*(a3 + 192) * v12 + 1.0);
  if (v13 < 0.0)
  {
    v13 = 0.0;
  }

  result = pow(v13, *(a3 + 160));
  if (!v5)
  {
    v9 = v6[2] + v6[1] * result;
    if (v9 < 0.0)
    {
      v9 = 0.0;
    }

    v10 = v6[3];
LABEL_13:

    return pow(v9, v10);
  }

  return result;
}

float adjustMidTone_dup(float a1, float a2, const float *a3, const float *a4, int a5, int a6, const float *a7)
{
  v7 = a6;
  v8 = a5;
  if (a5 > 0)
  {
    v9 = 0;
    while (a3[v9] < a1)
    {
      if (a5 == ++v9)
      {
        goto LABEL_7;
      }
    }

    v8 = v9;
  }

LABEL_7:
  if (a6 <= 0)
  {
LABEL_11:
    if (!v8)
    {
LABEL_17:
      if (!v7)
      {
        return *a7;
      }

      if (v7 == a6)
      {
        v11 = (a6 - 1) * a5;
        return a7[v11];
      }

      v19 = a5;
      v20 = v7 - 1;
      v21 = a7[v7 * v19];
      v22 = a7[v20 * v19];
      v23 = a4[v20];
      goto LABEL_30;
    }
  }

  else
  {
    v10 = 0;
    while (a4[v10] < a2)
    {
      if (a6 == ++v10)
      {
        goto LABEL_11;
      }
    }

    v7 = v10;
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  if (v8 != a5)
  {
    if (v7)
    {
      v13 = a5;
      v14 = v8 - 1;
      v15 = a1 - a3[v14];
      v16 = a3[v8] - a1;
      v17 = v15 + v16;
      if (v7 != a6)
      {
        v33 = v7 - 1;
        v34 = ((v15 * a7[v33 * v13 + v8]) + (a7[v33 * v13 + v14] * v16)) / v17;
        v35 = ((v15 * a7[v7 * v13 + v8]) + (a7[v7 * v13 + v14] * v16)) / v17;
        v36 = a4[v7] - a2;
        v37 = a2 - a4[v33];
        v31 = (v35 * v37) + (v34 * v36);
        v32 = v36 + v37;
        return v31 / v32;
      }

      v18 = (v15 * a7[v8 + (a6 - 1) * v13]) + (a7[v14 + (a6 - 1) * v13] * v16);
    }

    else
    {
      v24 = 4 * v8 - 4;
      v25 = a1 - *(a3 + v24);
      v26 = a3[v8] - a1;
      v18 = (a7[v8] * v25) + (*(a7 + v24) * v26);
      v17 = v25 + v26;
    }

    return v18 / v17;
  }

  if (!v7)
  {
    return a7[a5 - 1];
  }

  if (v7 == a6)
  {
    v11 = a5 + (a6 - 1) * a5 - 1;
    return a7[v11];
  }

  v27 = a5;
  v28 = v7 - 1;
  v21 = a7[a5 - 1 + v7 * v27];
  v22 = a7[a5 - 1 + v28 * v27];
  v23 = a4[v28];
LABEL_30:
  v29 = a2 - v23;
  v30 = a4[v7] - a2;
  v31 = (v21 * v29) + (v22 * v30);
  v32 = v29 + v30;
  return v31 / v32;
}

void dovi_calculateTonemapCurveParamS(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v297 = *MEMORY[0x277D85DE8];
  v264 = *(a1 + 12);
  v243 = *(a1 + 16);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v283 = *(a1 + 52);
  v7 = *(a1 + 124);
  v8 = fmaxf(v7, 40.0);
  if (*(a2 + 493))
  {
    v9 = *(a1 + 60);
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a1 + 68);
  v284 = *(a1 + 72);
  v12 = *(a1 + 76);
  v11 = *(a1 + 80);
  v275 = *(a1 + 40);
  v13 = *&v275;
  v14 = &off_2508CD000;
  if (*&v5 >= 0.0)
  {
    v17 = powf(*&v5 * 0.0001, 0.1593);
    v16 = powf(((v17 * 18.852) + 0.83594) / ((v17 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v15 = powf(*&v5 * -0.0001, 0.1593);
    v16 = 0.0000014619 - powf(((v15 * 18.852) + 0.83594) / ((v15 * 18.688) + 1.0), 78.844);
  }

  v246 = v16;
  v18 = *(&v275 + 1);
  if (*(&v275 + 1) >= 0.0)
  {
    v21 = powf(*(&v275 + 1) * 0.0001, 0.1593);
    v20 = powf(((v21 * 18.852) + 0.83594) / ((v21 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v19 = powf(*(&v275 + 1) * -0.0001, 0.1593);
    v20 = 0.0000014619 - powf(((v19 * 18.852) + 0.83594) / ((v19 * 18.688) + 1.0), 78.844);
  }

  v250 = v20;
  if (v6 >= 0.0)
  {
    v24 = powf(v6 * 0.0001, 0.1593);
    v23 = powf(((v24 * 18.852) + 0.83594) / ((v24 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v22 = powf(v6 * -0.0001, 0.1593);
    v23 = 0.0000014619 - powf(((v22 * 18.852) + 0.83594) / ((v22 * 18.688) + 1.0), 78.844);
  }

  v270 = v23;
  if (v9 >= 0.0)
  {
    v27 = powf(v9 * 0.0001, 0.1593);
    v26 = powf(((v27 * 18.852) + 0.83594) / ((v27 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v25 = powf(v9 * -0.0001, 0.1593);
    v26 = 0.0000014619 - powf(((v25 * 18.852) + 0.83594) / ((v25 * 18.688) + 1.0), 78.844);
  }

  v255 = v26;
  v269 = *(a1 + 8);
  *a3 = 1;
  *&v28 = v275;
  v29 = v283.f32[0];
  *(&v28 + 1) = v283;
  *(a3 + 4) = v28;
  *(a3 + 20) = v7;
  v30 = v284;
  v261 = v11;
  if (*(a1 + 196) == 1)
  {
    if (*&v275 >= v10)
    {
      v31 = *&v275;
    }

    else
    {
      v31 = v10;
    }

    v32 = v284;
    if (*(a1 + 198) == 1)
    {
      v32 = v284;
      if (*(a1 + 112) == 1)
      {
        v32 = v284;
        if (v9 < 1000.0)
        {
          v32 = v284;
          if ((*(a1 + 200) & 1) == 0)
          {
            v32 = v284;
            if (v9 >= v283.f32[1])
            {
              v32 = v284;
              if (v284 <= *(&v275 + 1))
              {
                if (GetConfig())
                {
                  Config = GetConfig();
                  v34 = *HDRConfig::GetConfigEntryValue(Config, 0x67u, 0);
                }

                else
                {
                  v34 = 0.0;
                }

                v30 = v284;
                v32 = v284 * v34;
                if (v32 >= *(&v275 + 1))
                {
                  v32 = *(&v275 + 1);
                }

                v29 = v283.f32[0];
              }
            }
          }
        }
      }
    }

    if (v29 >= v31)
    {
      v13 = v31;
    }

    else
    {
      v13 = v29;
    }

    *(a3 + 24) = v13;
    if (v32 >= v9)
    {
      v18 = v32;
    }

    else
    {
      v18 = v9;
    }

    if (v18 >= v12)
    {
      v35 = v18;
    }

    else
    {
      v35 = v12;
    }

    *(a3 + 32) = v18;
    *(a3 + 36) = v35;
    *(a3 + 40) = v6;
    if (v283.f32[1] >= v9)
    {
      v36 = v283.f32[1];
    }

    else
    {
      v36 = v9;
    }

    *(a3 + 48) = v9;
    *(a3 + 52) = v36;
    if (v30 <= *(&v275 + 1) || v7 <= *(&v275 + 1))
    {
      v7 = v9;
    }

    else
    {
      if (v7 >= v30)
      {
        v7 = v30;
      }

      *(a3 + 48) = v7;
      if (v18 >= 0.0)
      {
        v39 = powf(v18 * 0.0001, 0.1593);
        v38 = powf(((v39 * 18.852) + 0.83594) / ((v39 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v37 = powf(v18 * -0.0001, 0.1593);
        v38 = 0.0000014619 - powf(((v37 * 18.852) + 0.83594) / ((v37 * 18.688) + 1.0), 78.844);
      }

      v250 = v38;
      if (v7 >= 0.0)
      {
        v42 = powf(v7 * 0.0001, 0.1593);
        v41 = powf(((v42 * 18.852) + 0.83594) / ((v42 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v40 = powf(v7 * -0.0001, 0.1593);
        v41 = 0.0000014619 - powf(((v40 * 18.852) + 0.83594) / ((v40 * 18.688) + 1.0), 78.844);
      }

      v255 = v41;
    }

    v30 = v18;
    v10 = v13;
  }

  else
  {
    *(a3 + 24) = v275;
    if (*(&v275 + 1) >= v12)
    {
      v35 = *(&v275 + 1);
    }

    else
    {
      v35 = v12;
    }

    *(a3 + 32) = HIDWORD(v275);
    *(a3 + 36) = v35;
    *(a3 + 40) = v6;
    if (v283.f32[1] >= v9)
    {
      v36 = v283.f32[1];
    }

    else
    {
      v36 = v9;
    }

    *(a3 + 48) = v9;
    *(a3 + 52) = v36;
    v7 = v9;
  }

  v285 = v30;
  if (v13 >= 0.0)
  {
    v45 = powf(v13 * 0.0001, 0.1593);
    v44 = powf(((v45 * 18.852) + 0.83594) / ((v45 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v43 = powf(v13 * -0.0001, 0.1593);
    v44 = 0.0000014619 - powf(((v43 * 18.852) + 0.83594) / ((v43 * 18.688) + 1.0), 78.844);
  }

  *(a3 + 56) = v44;
  if (v18 >= 0.0)
  {
    v48 = powf(v18 * 0.0001, 0.1593);
    v47 = powf(((v48 * 18.852) + 0.83594) / ((v48 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v46 = powf(v18 * -0.0001, 0.1593);
    v47 = 0.0000014619 - powf(((v46 * 18.852) + 0.83594) / ((v46 * 18.688) + 1.0), 78.844);
  }

  *(a3 + 64) = v47;
  if (v35 >= 0.0)
  {
    v51 = powf(v35 * 0.0001, 0.1593);
    v50 = powf(((v51 * 18.852) + 0.83594) / ((v51 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v49 = powf(v35 * -0.0001, 0.1593);
    v50 = 0.0000014619 - powf(((v49 * 18.852) + 0.83594) / ((v49 * 18.688) + 1.0), 78.844);
  }

  *(a3 + 68) = v50;
  if (v6 >= 0.0)
  {
    v54 = powf(v6 * 0.0001, 0.1593);
    v53 = powf(((v54 * 18.852) + 0.83594) / ((v54 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v52 = powf(v6 * -0.0001, 0.1593);
    v53 = 0.0000014619 - powf(((v52 * 18.852) + 0.83594) / ((v52 * 18.688) + 1.0), 78.844);
  }

  *(a3 + 72) = v53;
  if (v7 >= 0.0)
  {
    v57 = powf(v7 * 0.0001, 0.1593);
    v56 = powf(((v57 * 18.852) + 0.83594) / ((v57 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v55 = powf(v7 * -0.0001, 0.1593);
    v56 = 0.0000014619 - powf(((v55 * 18.852) + 0.83594) / ((v55 * 18.688) + 1.0), 78.844);
  }

  *(a3 + 80) = v56;
  if (v36 >= 0.0)
  {
    v60 = powf(v36 * 0.0001, 0.1593);
    v59 = powf(((v60 * 18.852) + 0.83594) / ((v60 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v58 = powf(v36 * -0.0001, 0.1593);
    v59 = 0.0000014619 - powf(((v58 * 18.852) + 0.83594) / ((v58 * 18.688) + 1.0), 78.844);
  }

  *(a3 + 84) = v59;
  if (v10 >= 0.0)
  {
    v63 = powf(v10 * 0.0001, 0.1593);
    v62 = powf(((v63 * 18.852) + 0.83594) / ((v63 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v61 = powf(v10 * -0.0001, 0.1593);
    v62 = 0.0000014619 - powf(((v61 * 18.852) + 0.83594) / ((v61 * 18.688) + 1.0), 78.844);
  }

  v276 = v62;
  if (v285 >= 0.0)
  {
    v66 = powf(v285 * 0.0001, 0.1593);
    v65 = powf(((v66 * 18.852) + 0.83594) / ((v66 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v64 = powf(v285 * -0.0001, 0.1593);
    v65 = 0.0000014619 - powf(((v64 * 18.852) + 0.83594) / ((v64 * 18.688) + 1.0), 78.844);
  }

  if (v261 >= 0.0)
  {
    v69 = powf(v261 * 0.0001, 0.1593);
    v68 = powf(((v69 * 18.852) + 0.83594) / ((v69 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v67 = powf(v261 * -0.0001, 0.1593);
    v68 = 0.0000014619 - powf(((v67 * 18.852) + 0.83594) / ((v67 * 18.688) + 1.0), 78.844);
  }

  v286 = v68;
  v70 = *(a1 + 84);
  v71 = *(a1 + 88);
  if (GetConfig())
  {
    v72 = GetConfig();
    v73 = *HDRConfig::GetConfigEntryValue(v72, 0x95u, 0);
  }

  else
  {
    v73 = 0;
  }

  *(a3 + 136) = v73;
  if (*(a1 + 104) == 1 && !*(a1 + 116))
  {
    *(a3 + 136) = 0;
  }

  if (*(a2 + 493) == 1)
  {
    *(a3 + 120) = v6;
    v74 = *(a3 + 48);
    if (*(a1 + 124) >= v74)
    {
      v75 = *(a3 + 48);
    }

    else
    {
      v75 = *(a1 + 124);
    }

    if (v9 >= v74)
    {
      v9 = *(a3 + 48);
    }

    v76 = fmax(fmin(((v75 - v6) / (v9 - v6)), 1.0), 0.0);
    *(a3 + 124) = v76;
    if (v6 >= 0.0)
    {
      v82 = powf(v6 * 0.0001, 0.1593);
      v78 = powf(((v82 * 18.852) + 0.83594) / ((v82 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v77 = powf(v6 * -0.0001, 0.1593);
      v78 = 0.0000014619 - powf(((v77 * 18.852) + 0.83594) / ((v77 * 18.688) + 1.0), 78.844);
    }

    *(a3 + 128) = v78;
    if (v75 >= 0.0)
    {
      v88 = powf(v75 * 0.0001, 0.1593);
      v84 = powf(((v88 * 18.852) + 0.83594) / ((v88 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v83 = powf(v75 * -0.0001, 0.1593);
      v84 = 0.0000014619 - powf(((v83 * 18.852) + 0.83594) / ((v83 * 18.688) + 1.0), 78.844);
    }

    if (v6 >= 0.0)
    {
      v92 = powf(v6 * 0.0001, 0.1593);
      v90 = powf(((v92 * 18.852) + 0.83594) / ((v92 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v89 = powf(v6 * -0.0001, 0.1593);
      v90 = 0.0000014619 - powf(((v89 * 18.852) + 0.83594) / ((v89 * 18.688) + 1.0), 78.844);
    }

    if (v9 >= 0.0)
    {
      v95 = powf(v9 * 0.0001, 0.1593);
      v94 = powf(((v95 * 18.852) + 0.83594) / ((v95 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v93 = powf(v9 * -0.0001, 0.1593);
      v94 = 0.0000014619 - powf(((v93 * 18.852) + 0.83594) / ((v93 * 18.688) + 1.0), 78.844);
    }

    v81 = v84 - v90;
    if (v6 >= 0.0)
    {
      v98 = powf(v6 * 0.0001, 0.1593);
      v97 = powf(((v98 * 18.852) + 0.83594) / ((v98 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v96 = powf(v6 * -0.0001, 0.1593);
      v97 = 0.0000014619 - powf(((v96 * 18.852) + 0.83594) / ((v96 * 18.688) + 1.0), 78.844);
    }

    v87 = v94 - v97;
  }

  else
  {
    *(a3 + 120) = 0;
    *(a3 + 128) = 0;
    v79 = fmax(fmin((v283.f32[1] / v9), 1.0), 0.0);
    *(a3 + 124) = v79;
    if (v283.f32[1] >= 0.0)
    {
      v85 = powf(v283.f32[1] * 0.0001, 0.1593);
      v81 = powf(((v85 * 18.852) + 0.83594) / ((v85 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v80 = powf(v283.f32[1] * -0.0001, 0.1593);
      v81 = 0.0000014619 - powf(((v80 * 18.852) + 0.83594) / ((v80 * 18.688) + 1.0), 78.844);
    }

    if (v9 >= 0.0)
    {
      v91 = powf(v9 * 0.0001, 0.1593);
      v87 = powf(((v91 * 18.852) + 0.83594) / ((v91 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v86 = powf(v9 * -0.0001, 0.1593);
      v87 = 0.0000014619 - powf(((v86 * 18.852) + 0.83594) / ((v86 * 18.688) + 1.0), 78.844);
    }
  }

  v99 = fmax(fmin((v81 / v87), 1.0), 0.0);
  *(a3 + 132) = v99;
  switch(v264)
  {
    case 4:
      v135.f32[0] = v276;
      if (*(a1 + 196) == 1)
      {
        *(a3 + 56) = v276;
        *(a3 + 60) = v286;
        *(a3 + 64) = v65;
        v135.f32[1] = v286;
        v136 = vcge_f32(v135, vdup_n_s32(0x354436E8u));
        v137 = vbsl_s8(v136, v135, vneg_f32(vadd_f32(v135, vdup_n_s32(0xB5C436E8))));
        v277 = *v137.i32;
        v138 = vbsl_s8(v136, vdup_n_s32(0x461C4000u), vdup_n_s32(0xC61C4000));
        v289 = powf(*&v137.i32[1], 0.012683);
        v139.f32[0] = powf(v277, 0.012683);
        v139.f32[1] = v289;
        v140 = vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vdiv_f32(vadd_f32(v139, vdup_n_s32(0xBF560000)), vmla_f32(vdup_n_s32(0x4196D000u), vdup_n_s32(0xC1958000), v139))), 0));
        v278 = v140.f32[0];
        v290 = powf(v140.f32[1], 6.2774);
        v141.f32[0] = powf(v278, 6.2774);
        v141.f32[1] = v290;
        *(a3 + 24) = vmul_f32(v138, v141);
        v142 = -(v65 + -0.0000014619);
        if (v65 < 0.00000073096)
        {
          v143 = -10000.0;
        }

        else
        {
          v142 = v65;
          v143 = 10000.0;
        }

        v144 = powf(v142, 0.012683);
        v145 = fmax(((v144 + -0.83594) / ((v144 * -18.688) + 18.852)), 0.0);
        *(a3 + 32) = v143 * powf(v145, 6.2774);
      }

      break;
    case 3:
      if (v255 < v250)
      {
        v112 = v255;
      }

      else
      {
        v112 = v250;
      }

      v113 = (v246 + v250) * 0.5;
      v114 = v113 - ((v270 + v112) * 0.5);
      v115 = (v114 + 1.0) / 0.33333;
      *(a3 + 88) = v115;
      v116 = ((v114 * (((v286 - v113) * 3.0) + 1.0)) * 0.5) + 0.0;
      v117 = v276;
      v118 = v276 - v116;
      if ((v65 - v116) >= v112)
      {
        v119 = v112;
      }

      else
      {
        v119 = v65 - v116;
      }

      v120 = (v65 - v276);
      v121 = v276 + v120 * 0.85;
      v122 = v276 + v120 * 0.15;
      if (v286 <= v121)
      {
        v123 = v286;
      }

      else
      {
        v123 = v121;
      }

      if (v123 <= v122)
      {
        v123 = v122;
      }

      v266 = v123;
      v124 = v123 - v116;
      v125 = (v123 - v116) + 0.0;
      if (v270 >= v118)
      {
        v118 = v270;
      }

      v126 = (v119 - v118);
      v271 = v118;
      v127 = v118;
      v128 = v127 + v126 * 0.85;
      v129 = v127 + v126 * 0.15;
      if (v124 > v128)
      {
        v125 = v128;
      }

      if (v125 <= v129)
      {
        v125 = v129;
      }

      v288 = v125;
      if (*(a1 + 198) != 1)
      {
        goto LABEL_205;
      }

      v130 = 0.65;
      if (GetConfig())
      {
        v131 = GetConfig();
        if (*(v131 + 3261))
        {
          v117 = v276;
          v132 = v288;
          v133 = v266;
          if ((v131[6520] & 0x80) == 0)
          {
LABEL_202:
            v190 = v132 - v133;
            v191 = (v132 - v133) < 0.0;
            v192 = 0.0;
            if (!v191)
            {
              v192 = v190;
            }

            v266 = v133 + (v192 * v130);
            v115 = *(a3 + 88);
LABEL_205:
            v193 = powf(v117, v115);
            v194 = powf(v266, v115);
            v195 = powf(v65, v115);
            v196 = powf(v271, 3.0);
            v197 = powf(v288, 3.0);
            v198 = powf(v119, 3.0);
            v199 = (((v195 - v193) * (v197 * v194)) + ((v198 * v195) * (v193 - v194))) + ((v196 * v193) * (v194 - v195));
            *(a3 + 92) = (((v197 * ((v198 - v196) * (v193 * v195))) + (((v197 - v198) * (v195 * v194)) * v196)) + (((v196 - v197) * (v193 * v194)) * v198)) / v199;
            *(a3 + 96) = (((v197 * -((v198 * v195) - (v193 * v196))) + (-((v197 * v194) - (v195 * v198)) * v196)) + (-((v196 * v193) - (v194 * v197)) * v198)) / v199;
            *(a3 + 100) = ((((v195 - v194) * v196) - ((v195 - v193) * v197)) + ((v194 - v193) * v198)) / v199;
            *(a3 + 104) = 0;
            if (*(a1 + 196) != 1)
            {
              break;
            }

            v200 = __PAIR64__(LODWORD(v266), LODWORD(v276));
            *(a3 + 56) = v276;
            *(a3 + 60) = v266;
            *(a3 + 64) = v65;
            *(a3 + 72) = v271;
            *(a3 + 76) = v288;
            *(a3 + 80) = v119;
            v280 = vdup_n_s32(0x354436E8u);
            v268 = vdup_n_s32(0xB5C436E8);
            v201 = vcge_f32(v200, v280);
            v202 = vbsl_s8(v201, v200, vneg_f32(vadd_f32(v200, v268)));
            v253 = *v202.i32;
            v260 = vdup_n_s32(0xC61C4000);
            v263 = vdup_n_s32(0x461C4000u);
            v203 = vbsl_s8(v201, v263, v260);
            v257 = powf(*&v202.i32[1], 0.012683);
            v204.f32[0] = powf(v253, 0.012683);
            v204.f32[1] = v257;
            v258 = vdup_n_s32(0xBF560000);
            v254 = vdup_n_s32(0xC1958000);
            v205 = vdup_n_s32(0x4196D000u);
            v206 = vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vdiv_f32(vadd_f32(v204, v258), vmla_f32(v205, v254, v204))), 0));
            v245 = v206.f32[0];
            v249 = powf(v206.f32[1], 6.2774);
            v207.f32[0] = powf(v245, 6.2774);
            v207.f32[1] = v249;
            *(a3 + 24) = vmul_f32(v203, v207);
            v208 = -(v65 + -0.0000014619);
            if (v65 < 0.00000073096)
            {
              v209 = -10000.0;
            }

            else
            {
              v208 = v65;
              v209 = 10000.0;
            }

            v210 = powf(v208, 0.012683);
            v211 = fmax(((v210 + -0.83594) / ((v210 * -18.688) + 18.852)), 0.0);
            *(a3 + 32) = v209 * powf(v211, 6.2774);
            v212 = vcge_f32(__PAIR64__(LODWORD(v288), LODWORD(v271)), v280);
            v213 = vbsl_s8(v212, __PAIR64__(LODWORD(v288), LODWORD(v271)), vneg_f32(vadd_f32(__PAIR64__(LODWORD(v288), LODWORD(v271)), v268)));
            v281 = *v213.i32;
            v214 = vbsl_s8(v212, v263, v260);
            v293 = powf(*&v213.i32[1], 0.012683);
            v215.f32[0] = powf(v281, 0.012683);
            v215.f32[1] = v293;
            v216 = vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vdiv_f32(vadd_f32(v215, v258), vmla_f32(v205, v254, v215))), 0));
            v282 = v216.f32[0];
            v294 = powf(v216.f32[1], 6.2774);
            v217.f32[0] = powf(v282, 6.2774);
            v217.f32[1] = v294;
            *(a3 + 40) = vmul_f32(v214, v217);
            v218 = -(v119 + -0.0000014619);
            if (v119 < 0.00000073096)
            {
              v219 = -10000.0;
            }

            else
            {
              v218 = v119;
              v219 = 10000.0;
            }

            v220 = powf(v218, 0.012683);
            v221 = fmax(((v220 + -0.83594) / ((v220 * -18.688) + 18.852)), 0.0);
            v189 = v219 * powf(v221, 6.2774);
            goto LABEL_213;
          }

          if (GetConfig())
          {
            v134 = GetConfig();
            v130 = *HDRConfig::GetConfigEntryValue(v134, 0x94u, 0);
          }

          else
          {
            v130 = 0.0;
          }
        }
      }

      v117 = v276;
      v132 = v288;
      v133 = v266;
      goto LABEL_202;
    case 2:
      v100 = fminf(sqrtf((v255 - v270) / (v250 - v246)), 1.0);
      v101 = sqrtf(1.0 / v100);
      v102 = 1.0 - v100;
      v103 = v101 / 0.33333;
      *(a3 + 88) = v101 / 0.33333;
      v104 = v276 + (v65 - v276) * 0.85;
      if (v286 <= v104)
      {
        v105 = v286;
      }

      else
      {
        v105 = v276 + (v65 - v276) * 0.85;
      }

      v106 = v102 * (v105 * (((v105 - v246) + (v105 - v246)) / (v250 - v246)));
      if (v270 >= (v276 - v106))
      {
        v107 = v270;
      }

      else
      {
        v107 = v276 - v106;
      }

      if ((v65 - v106) >= v255)
      {
        v108 = v255;
      }

      else
      {
        v108 = v65 - v106;
      }

      v109 = v105 - v106;
      v287 = v107;
      v265 = v105;
      if (v243 == 1)
      {
        if (GetConfig() && (v110 = GetConfig(), (*HDRConfig::GetConfigEntryValue(v110, 0x4Fu, 0) & 1) != 0) || *(a1 + 112) != 4)
        {
          v109 = fminf(v109, 0.5);
          v111 = &middata_3LED;
        }

        else
        {
          v111 = &middata_3LED_84;
        }

        v151 = adjustMidTone_dup(v70, v71, AB_3LED, BR_3LED, 8, 9, v111) + 0.0;
        v148 = adjustMidTone_dup(v70, v71, AB_3LED, BR_3LED, 8, 9, sat_3LED);
        v152 = v109 + v151;
        if (v65 <= 0.001)
        {
          v153 = 0.949999988;
        }

        else
        {
          v153 = (v265 / v65);
        }

        v149 = v276;
        v156 = v108;
        v157 = v153 * 1.875 + -0.7937;
        v158 = fmax(fmin(v157, 0.95), 0.8);
        v159 = v108 * v158;
        if (v152 < v159)
        {
          v159 = v152;
        }

        if (v287 >= v159)
        {
          v159 = v287;
        }

        v270 = v159;
        v103 = *(a3 + 88);
        v14 = &off_2508CD000;
      }

      else
      {
        v148 = 0.0;
        if (v109 >= v270)
        {
          v154 = v255 * 0.95;
          v149 = v276;
          if (v154 >= v109)
          {
            v155 = v109;
          }

          else
          {
            v155 = v154;
          }

          v270 = v155;
        }

        else
        {
          v149 = v276;
        }

        v156 = v108;
      }

      v160 = powf(v149, v103);
      v161 = powf(v265, v103);
      v162 = powf(v65, v103);
      v163 = powf(v287, 3.0);
      v164 = powf(v270, 3.0);
      v165 = powf(v156, 3.0);
      v166 = (((v162 - v160) * (v161 * v164)) + ((v165 * v162) * (v160 - v161))) + ((v163 * v160) * (v161 - v162));
      *(a3 + 92) = (((v164 * ((v165 - v163) * (v160 * v162))) + (((v161 * v162) * (v164 - v165)) * v163)) + (((v160 * v161) * (v163 - v164)) * v165)) / v166;
      *(a3 + 96) = (((v164 * -((v165 * v162) - (v160 * v163))) + (-((v161 * v164) - (v162 * v165)) * v163)) + (-((v163 * v160) - (v161 * v164)) * v165)) / v166;
      *(a3 + 100) = ((((v162 - v161) * v163) - ((v162 - v160) * v164)) + ((v161 - v160) * v165)) / v166;
      *(a3 + 104) = v148;
      if (*(a1 + 196) == 1)
      {
        v167 = __PAIR64__(LODWORD(v265), LODWORD(v276));
        *(a3 + 56) = v276;
        *(a3 + 60) = v265;
        *(a3 + 64) = v65;
        *(a3 + 72) = v287;
        *(a3 + 76) = v270;
        *(a3 + 80) = v156;
        v262 = vdup_n_s32(0xB5C436E8);
        v267 = vdup_n_s32(0x354436E8u);
        v168 = vcge_f32(v167, v267);
        v256 = vdup_n_s32(0xC61C4000);
        v169 = vbsl_s8(v168, v167, vneg_f32(vadd_f32(v167, v262)));
        v247 = *v169.i32;
        v259 = vdup_n_s32(0x461C4000u);
        v279 = v156;
        v170 = vbsl_s8(v168, v259, v256);
        v251 = powf(*&v169.i32[1], 0.012683);
        v171.f32[0] = powf(v247, 0.012683);
        v171.f32[1] = v251;
        v252 = vdup_n_s32(0xBF560000);
        v248 = vdup_n_s32(0xC1958000);
        v172 = vdup_n_s32(0x4196D000u);
        v173 = vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vdiv_f32(vadd_f32(v171, v252), vmla_f32(v172, v248, v171))), 0));
        v242 = v173.f32[0];
        v244 = powf(v173.f32[1], 6.2774);
        v174.f32[0] = powf(v242, 6.2774);
        v174.f32[1] = v244;
        *(a3 + 24) = vmul_f32(v170, v174);
        v175 = -(v65 + -0.0000014619);
        if (v65 >= 0.00000073096)
        {
          v175 = v65;
        }

        v176 = -10000.0;
        if (v65 >= 0.00000073096)
        {
          v177 = 10000.0;
        }

        else
        {
          v177 = -10000.0;
        }

        v178 = powf(v175, 0.012683);
        v179 = fmax(((v178 + -0.83594) / ((v178 * -18.688) + 18.852)), 0.0);
        *(a3 + 32) = v177 * powf(v179, 6.2774);
        v180 = vcge_f32(__PAIR64__(LODWORD(v270), LODWORD(v287)), v267);
        v181 = vbsl_s8(v180, __PAIR64__(LODWORD(v270), LODWORD(v287)), vneg_f32(vadd_f32(__PAIR64__(LODWORD(v270), LODWORD(v287)), v262)));
        v272 = *v181.i32;
        v182 = vbsl_s8(v180, v259, v256);
        v291 = powf(*&v181.i32[1], 0.012683);
        v183.f32[0] = powf(v272, 0.012683);
        v183.f32[1] = v291;
        v184 = vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vdiv_f32(vadd_f32(v183, v252), vmla_f32(v172, v248, v183))), 0));
        v273 = v184.f32[0];
        v292 = powf(v184.f32[1], 6.2774);
        v185.f32[0] = powf(v273, 6.2774);
        v185.f32[1] = v292;
        *(a3 + 40) = vmul_f32(v182, v185);
        v186 = -(v279 + -0.0000014619);
        if (v279 >= 0.00000073096)
        {
          v186 = v279;
          v176 = 10000.0;
        }

        v187 = powf(v186, 0.012683);
        v188 = fmax(((v187 + -0.83594) / ((v187 * -18.688) + 18.852)), 0.0);
        v189 = v176 * powf(v188, 6.2774);
LABEL_213:
        *(a3 + 48) = v189;
      }

      break;
    default:
      *a3 = 0;
      *(a3 + 24) = 0;
      *(a3 + 32) = HIDWORD(v275);
      *(a3 + 36) = 1176256512;
      *(a3 + 48) = HIDWORD(v275);
      *(a3 + 52) = 1176256512;
      if (*(&v275 + 1) >= 0.0)
      {
        v150 = powf(*(&v275 + 1) * 0.0001, 0.1593);
        v147 = powf(((v150 * 18.852) + 0.83594) / ((v150 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v146 = powf(*(&v275 + 1) * -0.0001, 0.1593);
        v147 = 0.0000014619 - powf(((v146 * 18.852) + 0.83594) / ((v146 * 18.688) + 1.0), 78.844);
      }

      *(a3 + 64) = v147;
      *(a3 + 68) = 1065353216;
      *(a3 + 80) = v147;
      *(a3 + 84) = xmmword_2508D15B0;
      *(a3 + 100) = 0;
      *(a3 + 104) = 0;
      break;
  }

  v222 = 1.0;
  if (v269 != 2)
  {
    if (v269 == 1)
    {
      v223 = *(a1 + 96);
      if (v223 >= 0.0)
      {
        v229 = powf(v223 * 0.0001, 0.1593);
        v225 = powf(((v229 * 18.852) + 0.83594) / ((v229 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v224 = powf(v223 * *(v14 + 620), 0.1593);
        v225 = 0.0000014619 - powf(((v224 * 18.852) + 0.83594) / ((v224 * 18.688) + 1.0), 78.844);
      }

      v230 = vmuls_lane_f32(*(a1 + 24), v283, 1);
      if (v230 >= 0.0)
      {
        v233 = powf(v230 * 0.0001, 0.1593);
        v232 = powf(((v233 * 18.852) + 0.83594) / ((v233 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v231 = powf(v230 * *(v14 + 620), 0.1593);
        v232 = 0.0000014619 - powf(((v231 * 18.852) + 0.83594) / ((v231 * 18.688) + 1.0), 78.844);
      }

      if (v283.f32[1] >= 0.0)
      {
        v236 = powf(v283.f32[1] * 0.0001, 0.1593);
        v235 = powf(((v236 * 18.852) + 0.83594) / ((v236 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v234 = powf(v283.f32[1] * *(v14 + 620), 0.1593);
        v235 = 0.0000014619 - powf(((v234 * 18.852) + 0.83594) / ((v234 * 18.688) + 1.0), 78.844);
      }

      v237 = dovi_applyTonemapCurveS_NoTrim(a2, a3, v225);
      v238 = v232 - v235;
      v239 = v237 - v235;
      goto LABEL_241;
    }

    goto LABEL_242;
  }

  v226 = *(a1 + 28);
  if (GetConfig())
  {
    v227 = GetConfig();
    v228 = *HDRConfig::GetConfigEntryValue(v227, 0x7Du, 0);
    if (v228 >= 100.0)
    {
      goto LABEL_239;
    }
  }

  else
  {
    v228 = 0.0;
  }

  if (enableLogInstance)
  {
    if (logInstanceID)
    {
      v240 = logInstanceID;
    }

    else
    {
      v240 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v296 = WORD1(v240);
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: overrideHLGOOTFMixingStartTdivNits >= 100.0f warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/DisplayManagement/dovi_display_management_host.mm at line 695\n", buf, 0xCu);
    }

    prevLogInstanceID = v240;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: overrideHLGOOTFMixingStartTdivNits >= 100.0f warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/DisplayManagement/dovi_display_management_host.mm at line 695\n", buf, 2u);
  }

LABEL_239:
  if (v283.f32[1] > v228)
  {
    v238 = v226 - v283.f32[1];
    v239 = v228 - v283.f32[1];
LABEL_241:
    v222 = fmaxf(fminf(v238 / v239, 1.0), 0.0);
  }

LABEL_242:
  *(a3 + 116) = v222;
  *(a3 + 112) = *(a1 + 100);
  v241 = *MEMORY[0x277D85DE8];
}

float dovi_applyTonemapCurveS_NoTrim(uint64_t a1, uint64_t a2, float result)
{
  if (*a2 == 1)
  {
    v5 = powf(result, *(a2 + 88));
    v6 = fmax(((*(a2 + 92) + (*(a2 + 96) * v5)) / ((*(a2 + 100) * v5) + 1.0)), 0.0);
    result = powf(v6, 0.33333);
    v7 = *(a2 + 136);
    if (*(a1 + 493))
    {
      if (v7 == 1)
      {
        v17 = *(a2 + 132);
        if (v17 != 1.0)
        {
          return *(a2 + 128) + ((result - *(a2 + 128)) * v17);
        }
      }

      else if (!v7)
      {
        v9 = *(a2 + 120);
        v8 = *(a2 + 124);

        return applyLinearStretchInPQ(result, v8, v9);
      }
    }

    else if (v7 == 1)
    {
      v18 = *(a2 + 132);
      if (v18 != 1.0)
      {
        return result * v18;
      }
    }

    else if (!v7)
    {
      v10 = *(a2 + 124);
      if (v10 != 1.0)
      {
        v11 = result < 0.00000073096;
        if (result < 0.00000073096)
        {
          result = -(result + -0.0000014619);
        }

        v12 = flt_2508CD850[v11];
        v13 = powf(result, 0.012683);
        v14 = fmax(((v13 + -0.83594) / ((v13 * -18.688) + 18.852)), 0.0);
        v15 = (v12 * powf(v14, 6.2774)) * v10;
        if (v15 >= 0.0)
        {
          v19 = powf(v15 * 0.0001, 0.1593);
          v20 = ((v19 * 18.852) + 0.83594) / ((v19 * 18.688) + 1.0);

          return powf(v20, 78.844);
        }

        else
        {
          v16 = powf(v15 * -0.0001, 0.1593);
          return 0.0000014619 - powf(((v16 * 18.852) + 0.83594) / ((v16 * 18.688) + 1.0), 78.844);
        }
      }
    }
  }

  return result;
}

float dovi_applyTonemapCurveS(uint64_t a1, uint64_t a2, void *a3, float a4)
{
  v7 = a3;
  v9 = v7;
  if (*a2 != 1)
  {
    goto LABEL_25;
  }

  if (*(a1 + 480) == 4)
  {
    *&v8 = a4;
    [v7 toneMapI:v8];
  }

  else
  {
    v11 = hasTrim(a1);
    v12 = powf(a4, *(a2 + 88));
    v13 = fmax(((*(a2 + 92) + (*(a2 + 96) * v12)) / ((*(a2 + 100) * v12) + 1.0)), 0.0);
    v14 = powf(v13, 0.33333);
    a4 = v14;
    if (!v11)
    {
      goto LABEL_7;
    }

    v15 = fmax((*(a1 + 240) + (v14 * *(a1 + 236))), 0.0);
    v10 = powf(v15, *(a1 + 244));
  }

  a4 = v10;
LABEL_7:
  v16 = *(a2 + 136);
  if (*(a1 + 493))
  {
    if (v16 == 1)
    {
      v25 = *(a2 + 132);
      if (v25 != 1.0)
      {
        a4 = *(a2 + 128) + ((a4 - *(a2 + 128)) * v25);
      }
    }

    else if (!v16)
    {
      v17 = applyLinearStretchInPQ(a4, *(a2 + 124), *(a2 + 120));
LABEL_24:
      a4 = v17;
    }
  }

  else if (v16 == 1)
  {
    v26 = *(a2 + 132);
    if (v26 != 1.0)
    {
      a4 = a4 * v26;
    }
  }

  else if (!v16)
  {
    v18 = *(a2 + 124);
    if (v18 != 1.0)
    {
      v19 = -(a4 + -0.0000014619);
      if (a4 >= 0.00000073096)
      {
        v19 = a4;
      }

      v20 = flt_2508CD850[a4 < 0.00000073096];
      v21 = powf(v19, 0.012683);
      v22 = fmax(((v21 + -0.83594) / ((v21 * -18.688) + 18.852)), 0.0);
      v23 = (v20 * powf(v22, 6.2774)) * v18;
      if (v23 >= 0.0)
      {
        v27 = powf(v23 * 0.0001, 0.1593);
        v17 = powf(((v27 * 18.852) + 0.83594) / ((v27 * 18.688) + 1.0), 78.844);
        goto LABEL_24;
      }

      v24 = powf(v23 * -0.0001, 0.1593);
      a4 = 0.0000014619 - powf(((v24 * 18.852) + 0.83594) / ((v24 * 18.688) + 1.0), 78.844);
    }
  }

LABEL_25:

  return a4;
}

float dovi_applyTonemapCurveS_NoLS(uint64_t a1, uint64_t a2, void *a3, float a4)
{
  v7 = a3;
  v9 = v7;
  if (*a2 == 1)
  {
    if (*(a1 + 480) == 4)
    {
      *&v8 = a4;
      [v7 toneMapI:v8];
LABEL_6:
      a4 = v10;
      goto LABEL_7;
    }

    v11 = hasTrim(a1);
    v12 = powf(a4, *(a2 + 88));
    v13 = fmax(((*(a2 + 92) + (*(a2 + 96) * v12)) / ((*(a2 + 100) * v12) + 1.0)), 0.0);
    v14 = powf(v13, 0.33333);
    a4 = v14;
    if (v11)
    {
      v15 = fmax((*(a1 + 240) + (v14 * *(a1 + 236))), 0.0);
      v10 = powf(v15, *(a1 + 244));
      goto LABEL_6;
    }
  }

LABEL_7:

  return a4;
}

float dovi84_applyTonemapCurveS_C(float *a1, uint64_t a2, int a3, void *a4, float a5)
{
  v9 = a4;
  v10 = *(a2 + 20);
  v11 = *(a2 + 112);
  v12 = *(a2 + 116);
  v13 = hasTrim(a1);
  v14 = a5;
  if (a3)
  {
    v15 = -(a5 + -0.0000014619);
    if (a5 >= 0.00000073096)
    {
      v15 = a5;
    }

    v16 = flt_2508CD850[a5 < 0.00000073096];
    v17 = powf(v15, 0.012683);
    v18 = fmax(((v17 + -0.83594) / ((v17 * -18.688) + 18.852)), 0.0);
    v19 = (v16 * powf(v18, 6.2774)) / 1000.0;
    v20 = powf(fabsf(v19), *(a2 + 108));
    if (v19 < 0.0)
    {
      v20 = -v20;
    }

    v21 = *(a2 + 4) + (v20 * (1000.0 - *(a2 + 4)));
    if (v21 >= 0.0)
    {
      v23 = powf(v21 * 0.0001, 0.1593);
      v14 = powf(((v23 * 18.852) + 0.83594) / ((v23 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v22 = powf(v21 * -0.0001, 0.1593);
      v14 = 0.0000014619 - powf(((v22 * 18.852) + 0.83594) / ((v22 * 18.688) + 1.0), 78.844);
    }
  }

  v24 = applySceneLuxAdaptationS_C(a2 + 144, v14);
  v25 = dovi_applyTonemapCurveS(a1, a2, v9, v24);
  if (*a2 == 1 && !v13)
  {
    v26 = (v11 / 1000.0);
    if (v11 <= 400.0 || v11 >= 2000.0)
    {
      v28 = log2(v26);
      v27 = pow(1.11099994, v28) * 1.20000005 + -1.0;
    }

    else
    {
      v27 = log10(v26) * 0.419999987 + 1.20000005 + -1.0;
    }

    v29 = v27;
    v30 = v29 + 1.0;
    v31 = -(a5 + -0.0000014619);
    if (a5 >= 0.00000073096)
    {
      v31 = a5;
    }

    v32 = flt_2508CD850[a5 < 0.00000073096];
    v33 = powf(v31, 0.012683);
    v34 = fmax(((v33 + -0.83594) / ((v33 * -18.688) + 18.852)), 0.0);
    v35 = (v32 * powf(v34, 6.2774)) / 1000.0;
    if ((a3 & 1) == 0)
    {
      v36 = powf(fabsf(v35), 1.0 / *(a2 + 108));
      if (v35 < 0.0)
      {
        v35 = -v36;
      }

      else
      {
        v35 = v36;
      }
    }

    v37 = powf(fabsf(v35), v30);
    if (v35 < 0.0)
    {
      v37 = -v37;
    }

    v38 = v10 * v37;
    if (v38 >= 0.0)
    {
      v41 = powf(v38 * 0.0001, 0.1593);
      v40 = powf(((v41 * 18.852) + 0.83594) / ((v41 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v39 = powf(v38 * -0.0001, 0.1593);
      v40 = 0.0000014619 - powf(((v39 * 18.852) + 0.83594) / ((v39 * 18.688) + 1.0), 78.844);
    }

    v25 = ((1.0 - v12) * v40) + (v12 * v25);
  }

  return v25;
}

float dovi84_applyTonemapCurveS_L(float *a1, uint64_t a2, int a3, int a4, char a5, void *a6, float a7)
{
  v13 = a6;
  v14 = *(a2 + 20);
  v16 = *(a2 + 112);
  v15 = *(a2 + 116);
  v17 = hasTrim(a1);
  if (a4)
  {
    v18 = powf(fabsf(a7), *(a2 + 108));
    if (a7 < 0.0)
    {
      v19 = -v18;
    }

    else
    {
      v19 = v18;
    }
  }

  else
  {
    v20 = v17;
    v21 = a7;
    if (a3)
    {
      v21 = powf(fabsf(a7), *(a2 + 108));
      if (a7 < 0.0)
      {
        v21 = -v21;
      }
    }

    v22 = *(a2 + 4) + (v21 * (1000.0 - *(a2 + 4)));
    if (v22 >= 0.0)
    {
      v25 = powf(v22 * 0.0001, 0.1593);
      v24 = powf(((v25 * 18.852) + 0.83594) / ((v25 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v23 = powf(v22 * -0.0001, 0.1593);
      v24 = 0.0000014619 - powf(((v23 * 18.852) + 0.83594) / ((v23 * 18.688) + 1.0), 78.844);
    }

    v26 = applySceneLuxAdaptationS_C(a2 + 144, v24);
    v19 = dovi_applyTonemapCurveS(a1, a2, v13, v26);
    if (*a2 == 1 && !v20 && (a5 & 1) == 0)
    {
      v27 = (v16 / 1000.0);
      if (v16 <= 400.0 || v16 >= 2000.0)
      {
        v29 = log2(v27);
        v28 = pow(1.11099994, v29) * 1.20000005 + -1.0;
      }

      else
      {
        v28 = log10(v27) * 0.419999987 + 1.20000005 + -1.0;
      }

      v30 = v28;
      v31 = powf(fabsf(a7), v30 + 1.0);
      if (a7 < 0.0)
      {
        v31 = -v31;
      }

      v32 = v14 * v31;
      if (v32 >= 0.0)
      {
        v35 = powf(v32 * 0.0001, 0.1593);
        v34 = powf(((v35 * 18.852) + 0.83594) / ((v35 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v33 = powf(v32 * -0.0001, 0.1593);
        v34 = 0.0000014619 - powf(((v33 * 18.852) + 0.83594) / ((v33 * 18.688) + 1.0), 78.844);
      }

      v19 = ((1.0 - v15) * v34) + (v15 * v19);
    }
  }

  return v19;
}

void dovi_generateEdrAdaptationDataS(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v123 = a7;
  v11 = *(a1 + 92);
  v12 = *(a1 + 96);
  v13 = *(a1 + 108);
  v14 = *(a2 + 8);
  if (v14 >= 0.0)
  {
    v17 = powf(v14 * 0.0001, 0.1593);
    v16 = powf(((v17 * 18.852) + 0.83594) / ((v17 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v15 = powf(v14 * -0.0001, 0.1593);
    v16 = 0.0000014619 - powf(((v15 * 18.852) + 0.83594) / ((v15 * 18.688) + 1.0), 78.844);
  }

  v18 = *(a1 + 124);
  if (v18 >= 0.0)
  {
    v21 = powf(v18 * 0.0001, 0.1593);
    v20 = powf(((v21 * 18.852) + 0.83594) / ((v21 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v19 = powf(v18 * -0.0001, 0.1593);
    v20 = 0.0000014619 - powf(((v19 * 18.852) + 0.83594) / ((v19 * 18.688) + 1.0), 78.844);
  }

  v118 = *(a2 + 64);
  v22 = *(a2 + 72);
  v23 = *(a2 + 80);
  v24 = *(a2 + 16);
  if (v24 >= 0.0)
  {
    v27 = powf(v24 * 0.0001, 0.1593);
    v26 = powf(((v27 * 18.852) + 0.83594) / ((v27 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v25 = powf(v24 * -0.0001, 0.1593);
    v26 = 0.0000014619 - powf(((v25 * 18.852) + 0.83594) / ((v25 * 18.688) + 1.0), 78.844);
  }

  v28 = v20 < v23 && (*(a2 + 136) & 0xFFFFFFFE) == 2;
  *a6 = *(a1 + 16);
  *(a6 + 4) = *(a1 + 24);
  *(a6 + 8) = v16;
  *(a6 + 12) = v22;
  *(a6 + 16) = v26;
  v29 = *(a1 + 56);
  if (v29 >= 0.0)
  {
    v32 = powf(v29 * 0.0001, 0.1593);
    v31 = powf(((v32 * 18.852) + 0.83594) / ((v32 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v30 = powf(v29 * -0.0001, 0.1593);
    v31 = 0.0000014619 - powf(((v30 * 18.852) + 0.83594) / ((v30 * 18.688) + 1.0), 78.844);
  }

  *(a6 + 252) = v31;
  if (*(a3 + 493) == 1)
  {
    if (v28)
    {
      v33 = v23;
    }

    else
    {
      v33 = v20;
    }

    *(a6 + 16) = v33;
  }

  if (v12 >= 0.0)
  {
    v36 = powf(v12 * 0.0001, 0.1593);
    v35 = powf(((v36 * 18.852) + 0.83594) / ((v36 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v34 = powf(v12 * -0.0001, 0.1593);
    v35 = 0.0000014619 - powf(((v34 * 18.852) + 0.83594) / ((v34 * 18.688) + 1.0), 78.844);
  }

  *(a6 + 20) = v35;
  if (v13 >= 0.0)
  {
    v39 = powf(v13 * 0.0001, 0.1593);
    v38 = powf(((v39 * 18.852) + 0.83594) / ((v39 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v37 = powf(v13 * -0.0001, 0.1593);
    v38 = 0.0000014619 - powf(((v37 * 18.852) + 0.83594) / ((v37 * 18.688) + 1.0), 78.844);
  }

  *(a6 + 24) = v38;
  *(a6 + 28) = v11;
  *(a6 + 32) = dovi_applyTonemapCurveS(a3, a2, v123, v35);
  *(a6 + 56) = dovi_applyTonemapCurveS(a3, a2, v123, *(a6 + 24));
  v40 = 124;
  if (v28)
  {
    v40 = 60;
  }

  v41 = *(a1 + v40) / *(a1 + 120);
  if (v41 >= 0.0)
  {
    v44 = powf(v41 * 0.0001, 0.1593);
    v43 = powf(((v44 * 18.852) + 0.83594) / ((v44 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v42 = powf(v41 * -0.0001, 0.1593);
    v43 = 0.0000014619 - powf(((v42 * 18.852) + 0.83594) / ((v42 * 18.688) + 1.0), 78.844);
  }

  *(a6 + 52) = v43;
  *(a6 + 192) = xmmword_2508D15C0;
  HIDWORD(v45) = 1056964608;
  *(a6 + 208) = 0x3F0000003F800000;
  *(a6 + 216) = 1065353216;
  if ((*(a1 + 104) & 1) != 0 || *(a1 + 16) == 27)
  {
    v46 = v20;
  }

  else if ((*(a3 + 480) & 0xFFFFFFFE) == 2)
  {
    v46 = v20;
    if (hasTrim(a3))
    {
      v86 = *(a3 + 236);
      v87 = *(a3 + 240);
      v88 = fmax((v87 + (*(a6 + 16) * v86)), 0.0);
      v89 = *(a3 + 244);
      *(a6 + 16) = powf(v88, v89);
      v90 = fmax((v87 + (*(a6 + 12) * v86)), 0.0);
      *(a6 + 12) = powf(v90, v89);
      v91 = fmax((v87 + (v43 * v86)), 0.0);
      v43 = powf(v91, v89);
      *(a6 + 52) = v43;
    }
  }

  else
  {
    v46 = v20;
    *&v45 = v23;
    [v123 applyL8Trim:v45];
    if (*&v92 < v23)
    {
      *&v92 = v23;
    }

    *(a6 + 16) = LODWORD(v92);
    LODWORD(v92) = *(a6 + 12);
    [v123 applyL8Trim:v92];
    *(a6 + 12) = v93;
    v43 = *(a6 + 52);
  }

  if (*(a3 + 493))
  {
    v47 = v26;
  }

  else
  {
    v47 = v23;
  }

  v48 = fminf((((v118 * v43) / *(a6 + 20)) - v22) / (v47 - v22), 1.0);
  *(a6 + 220) = v22;
  *(a6 + 224) = v48;
  v49 = *(a1 + 68);
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

  *(a6 + 228) = v51;
  v53 = *(a1 + 80);
  if (v53 >= 0.0)
  {
    v56 = powf(v53 * 0.0001, 0.1593);
    v55 = powf(((v56 * 18.852) + 0.83594) / ((v56 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v54 = powf(v53 * -0.0001, 0.1593);
    v55 = 0.0000014619 - powf(((v54 * 18.852) + 0.83594) / ((v54 * 18.688) + 1.0), 78.844);
  }

  *(a6 + 232) = v55;
  v57 = *(a1 + 72);
  if (v57 >= 0.0)
  {
    v60 = powf(v57 * 0.0001, 0.1593);
    v59 = powf(((v60 * 18.852) + 0.83594) / ((v60 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v58 = powf(v57 * -0.0001, 0.1593);
    v59 = 0.0000014619 - powf(((v58 * 18.852) + 0.83594) / ((v58 * 18.688) + 1.0), 78.844);
  }

  *(a6 + 236) = v59;
  v61 = *(a1 + 76);
  if (v61 >= 0.0)
  {
    v64 = powf(v61 * 0.0001, 0.1593);
    v63 = powf(((v64 * 18.852) + 0.83594) / ((v64 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v62 = powf(v61 * -0.0001, 0.1593);
    v63 = 0.0000014619 - powf(((v62 * 18.852) + 0.83594) / ((v62 * 18.688) + 1.0), 78.844);
  }

  *(a6 + 240) = v63;
  v65 = v123;
  if (*(a1 + 196) == 1)
  {
    *(a6 + 12) = dovi_applyTonemapCurveS(a3, a2, v123, v51);
    v55 = *(a6 + 232);
    v65 = v123;
  }

  *(a6 + 244) = dovi_applyTonemapCurveS(a3, a2, v65, v55);
  *(a6 + 248) = dovi_applyTonemapCurveS(a3, a2, v123, *(a6 + 236));
  if (a4 && a5 && *(a1 + 104) == 1)
  {
    v66 = dovi_applyTonemapCurveS(a5, a4, v123, *(a6 + 20));
    *(a6 + 36) = (v46 * v66) / *(a4 + 80);
    v67 = v66 < 0.00000073096;
    if (v66 < 0.00000073096)
    {
      v66 = -(v66 + -0.0000014619);
    }

    v68 = v46;
    v69 = 10000.0;
    v70 = -10000.0;
    if (v67)
    {
      v69 = -10000.0;
    }

    v119 = v69;
    v71 = powf(v66, 0.012683);
    v72 = fmax(((v71 + -0.83594) / ((v71 * -18.688) + 18.852)), 0.0);
    v120 = v119 * powf(v72, 6.2774);
    v73 = -(v68 + -0.0000014619);
    if (v68 >= 0.00000073096)
    {
      v73 = v68;
      v70 = 10000.0;
    }

    v74 = powf(v73, 0.012683);
    v75 = fmax(((v74 + -0.83594) / ((v74 * -18.688) + 18.852)), 0.0);
    v76 = v70 * powf(v75, 6.2774);
    *(a6 + 40) = (v76 * v120) / *(a4 + 48);
    v77 = dovi_applyTonemapCurveS(a5, a4, v123, *(a6 + 24));
    *(a6 + 44) = (v68 * v77) / *(a4 + 80);
    v78 = v77 < 0.00000073096;
    if (v77 < 0.00000073096)
    {
      v77 = -(v77 + -0.0000014619);
    }

    v79 = flt_2508CD850[v78];
    v80 = powf(v77, 0.012683);
    v81 = fmax(((v80 + -0.83594) / ((v80 * -18.688) + 18.852)), 0.0);
    v82 = (v76 * (v79 * powf(v81, 6.2774))) / *(a4 + 48);
  }

  else
  {
    *(a6 + 36) = 0x412000003E997209;
    *(a6 + 44) = 1050243593;
    v82 = 10.0;
  }

  *(a6 + 48) = v82;
  *(a6 + 256) = *(a1 + 36);
  *(a6 + 260) = *(a1 + 196);
  updateEdrAdaptationDataByTMData(a1, a6);
  *(a6 + 264) = xmmword_2508D15D0;
  *(a6 + 280) = 1036831949;
  *(a6 + 284) = 257;
  *(a6 + 286) = *a6 != 17;
  *(a6 + 287) = 1;
  if (GetConfig())
  {
    Config = GetConfig();
    if (*(Config + 3481))
    {
      if ((Config[6960] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v84 = GetConfig();
          v85 = *HDRConfig::GetConfigEntryValue(v84, 0x9Eu, 0);
        }

        else
        {
          v85 = 0;
        }

        *(a6 + 264) = v85;
      }
    }
  }

  if (GetConfig())
  {
    v94 = GetConfig();
    if (*(v94 + 3547))
    {
      if ((v94[7092] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v95 = GetConfig();
          v96 = *HDRConfig::GetConfigEntryValue(v95, 0xA1u, 0);
        }

        else
        {
          v96 = 0;
        }

        *(a6 + 268) = v96;
      }
    }
  }

  if (GetConfig())
  {
    v97 = GetConfig();
    if (*(v97 + 3569))
    {
      if ((v97[7136] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v98 = GetConfig();
          v99 = *HDRConfig::GetConfigEntryValue(v98, 0xA2u, 0);
        }

        else
        {
          v99 = 0;
        }

        *(a6 + 272) = v99;
      }
    }
  }

  if (GetConfig())
  {
    v100 = GetConfig();
    if (*(v100 + 3591))
    {
      if ((v100[7180] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v101 = GetConfig();
          v102 = *HDRConfig::GetConfigEntryValue(v101, 0xA3u, 0);
        }

        else
        {
          v102 = 0;
        }

        *(a6 + 276) = v102;
      }
    }
  }

  if (GetConfig())
  {
    v103 = GetConfig();
    if (*(v103 + 3613))
    {
      if ((v103[7224] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v104 = GetConfig();
          v105 = *HDRConfig::GetConfigEntryValue(v104, 0xA4u, 0);
        }

        else
        {
          v105 = 0;
        }

        *(a6 + 280) = v105;
      }
    }
  }

  if (GetConfig())
  {
    v106 = GetConfig();
    if (*(v106 + 3635))
    {
      if ((v106[7268] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v107 = GetConfig();
          v108 = *HDRConfig::GetConfigEntryValue(v107, 0xA5u, 0);
        }

        else
        {
          v108 = 0;
        }

        *(a6 + 284) = v108 & 1;
      }
    }
  }

  if (GetConfig())
  {
    v109 = GetConfig();
    if (*(v109 + 3657))
    {
      if ((v109[7312] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v110 = GetConfig();
          v111 = *HDRConfig::GetConfigEntryValue(v110, 0xA6u, 0);
        }

        else
        {
          v111 = 0;
        }

        *(a6 + 285) = v111 & 1;
      }
    }
  }

  if (GetConfig())
  {
    v112 = GetConfig();
    if (*(v112 + 3679))
    {
      if ((v112[7356] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v113 = GetConfig();
          v114 = *HDRConfig::GetConfigEntryValue(v113, 0xA7u, 0);
        }

        else
        {
          v114 = 0;
        }

        *(a6 + 286) = v114 & 1;
      }
    }
  }

  if (GetConfig())
  {
    v115 = GetConfig();
    if (*(v115 + 3701))
    {
      if ((v115[7400] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v116 = GetConfig();
          v117 = *HDRConfig::GetConfigEntryValue(v116, 0xA8u, 0);
        }

        else
        {
          v117 = 0;
        }

        *(a6 + 287) = v117 & 1;
      }
    }
  }

  *(a6 + 288) = vand_s8(0x3F4000003F800000, vcgez_s32(vshl_n_s32(vdup_n_s32(*(a1 + 116) == 1), 0x1FuLL)));
  *(a6 + 296) = xmmword_2508D15E0;
  *(a6 + 312) = xmmword_2508D15F0;
  *(a6 + 328) = xmmword_2508D1600;
  *(a6 + 344) = xmmword_2508D1610;
  updateAUWDMParamsByDefaultsWrite(a6);
  *(a6 + 360) = *(a1 + 120);
}

void dovi84_generateEdrAdaptationDataS(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v124 = a7;
  v11 = *(a1 + 92);
  v12 = *(a1 + 96);
  v13 = *(a1 + 108);
  v14 = *(a2 + 8);
  if (v14 >= 0.0)
  {
    v17 = powf(v14 * 0.0001, 0.1593);
    v16 = powf(((v17 * 18.852) + 0.83594) / ((v17 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v15 = powf(v14 * -0.0001, 0.1593);
    v16 = 0.0000014619 - powf(((v15 * 18.852) + 0.83594) / ((v15 * 18.688) + 1.0), 78.844);
  }

  v18 = *(a1 + 124);
  if (v18 >= 0.0)
  {
    v21 = powf(v18 * 0.0001, 0.1593);
    v20 = powf(((v21 * 18.852) + 0.83594) / ((v21 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v19 = powf(v18 * -0.0001, 0.1593);
    v20 = 0.0000014619 - powf(((v19 * 18.852) + 0.83594) / ((v19 * 18.688) + 1.0), 78.844);
  }

  v119 = *(a2 + 64);
  v22 = *(a2 + 72);
  v23 = *(a2 + 80);
  v24 = *(a2 + 16);
  if (v24 >= 0.0)
  {
    v27 = powf(v24 * 0.0001, 0.1593);
    v26 = powf(((v27 * 18.852) + 0.83594) / ((v27 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v25 = powf(v24 * -0.0001, 0.1593);
    v26 = 0.0000014619 - powf(((v25 * 18.852) + 0.83594) / ((v25 * 18.688) + 1.0), 78.844);
  }

  v28 = v20 < v23 && (*(a2 + 136) & 0xFFFFFFFE) == 2;
  *a6 = *(a1 + 16);
  *(a6 + 4) = *(a1 + 24);
  *(a6 + 8) = v16;
  *(a6 + 12) = v22;
  *(a6 + 16) = v26;
  v29 = *(a1 + 56);
  if (v29 >= 0.0)
  {
    v32 = powf(v29 * 0.0001, 0.1593);
    v31 = powf(((v32 * 18.852) + 0.83594) / ((v32 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v30 = powf(v29 * -0.0001, 0.1593);
    v31 = 0.0000014619 - powf(((v30 * 18.852) + 0.83594) / ((v30 * 18.688) + 1.0), 78.844);
  }

  *(a6 + 252) = v31;
  if (*(a3 + 493) == 1)
  {
    if (v28)
    {
      v33 = v23;
    }

    else
    {
      v33 = v20;
    }

    *(a6 + 16) = v33;
  }

  if (v12 >= 0.0)
  {
    v36 = powf(v12 * 0.0001, 0.1593);
    v35 = powf(((v36 * 18.852) + 0.83594) / ((v36 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v34 = powf(v12 * -0.0001, 0.1593);
    v35 = 0.0000014619 - powf(((v34 * 18.852) + 0.83594) / ((v34 * 18.688) + 1.0), 78.844);
  }

  *(a6 + 20) = v35;
  if (v13 >= 0.0)
  {
    v39 = powf(v13 * 0.0001, 0.1593);
    v38 = powf(((v39 * 18.852) + 0.83594) / ((v39 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v37 = powf(v13 * -0.0001, 0.1593);
    v38 = 0.0000014619 - powf(((v37 * 18.852) + 0.83594) / ((v37 * 18.688) + 1.0), 78.844);
  }

  *(a6 + 24) = v38;
  *(a6 + 28) = v11;
  *(a6 + 32) = dovi_applyTonemapCurveS(a3, a2, v124, v35);
  *(a6 + 56) = dovi_applyTonemapCurveS(a3, a2, v124, *(a6 + 24));
  v40 = 124;
  if (v28)
  {
    v40 = 60;
  }

  v41 = *(a1 + v40) / *(a1 + 120);
  if (v41 >= 0.0)
  {
    v44 = powf(v41 * 0.0001, 0.1593);
    v43 = powf(((v44 * 18.852) + 0.83594) / ((v44 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v42 = powf(v41 * -0.0001, 0.1593);
    v43 = 0.0000014619 - powf(((v42 * 18.852) + 0.83594) / ((v42 * 18.688) + 1.0), 78.844);
  }

  *(a6 + 52) = v43;
  *(a6 + 192) = xmmword_2508D15C0;
  HIDWORD(v45) = 1056964608;
  *(a6 + 208) = 0x3F0000003F800000;
  *(a6 + 216) = 1065353216;
  if ((*(a1 + 104) & 1) != 0 || *(a1 + 16) == 27)
  {
    goto LABEL_34;
  }

  if ((*(a3 + 480) & 0xFFFFFFFE) == 2)
  {
    v46 = v20;
    if (!hasTrim(a3))
    {
      goto LABEL_35;
    }

    v86 = *(a3 + 236);
    v87 = *(a3 + 240);
    v88 = fmax((v87 + (*(a6 + 16) * v86)), 0.0);
    v89 = *(a3 + 244);
    *(a6 + 16) = powf(v88, v89);
    v90 = fmax((v87 + (*(a6 + 12) * v86)), 0.0);
    *(a6 + 12) = powf(v90, v89);
    v91 = fmax((v87 + (v43 * v86)), 0.0);
    v43 = powf(v91, v89);
  }

  else
  {
    *&v45 = v23;
    [v124 applyL8Trim:v45];
    if (*&v92 < v23)
    {
      *&v92 = v23;
    }

    *(a6 + 16) = LODWORD(v92);
    LODWORD(v92) = *(a6 + 12);
    [v124 applyL8Trim:v92];
    *(a6 + 12) = LODWORD(v93);
    v43 = *(a6 + 52);
    if (*(a3 + 508))
    {
LABEL_34:
      v46 = v20;
      goto LABEL_35;
    }

    LODWORD(v93) = *(a6 + 52);
    [v124 applyL8Trim:v93];
    v46 = v20;
    if (v94 >= *(a6 + 16))
    {
      v43 = *(a6 + 16);
    }

    else
    {
      v43 = v94;
    }
  }

  *(a6 + 52) = v43;
LABEL_35:
  if (*(a3 + 493))
  {
    v47 = v26;
  }

  else
  {
    v47 = v23;
  }

  v48 = fminf((((v119 * v43) / *(a6 + 20)) - v22) / (v47 - v22), 1.0);
  *(a6 + 220) = v22;
  *(a6 + 224) = v48;
  v49 = *(a1 + 68);
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

  *(a6 + 228) = v51;
  v53 = *(a1 + 80);
  if (v53 >= 0.0)
  {
    v56 = powf(v53 * 0.0001, 0.1593);
    v55 = powf(((v56 * 18.852) + 0.83594) / ((v56 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v54 = powf(v53 * -0.0001, 0.1593);
    v55 = 0.0000014619 - powf(((v54 * 18.852) + 0.83594) / ((v54 * 18.688) + 1.0), 78.844);
  }

  *(a6 + 232) = v55;
  v57 = *(a1 + 72);
  if (v57 >= 0.0)
  {
    v60 = powf(v57 * 0.0001, 0.1593);
    v59 = powf(((v60 * 18.852) + 0.83594) / ((v60 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v58 = powf(v57 * -0.0001, 0.1593);
    v59 = 0.0000014619 - powf(((v58 * 18.852) + 0.83594) / ((v58 * 18.688) + 1.0), 78.844);
  }

  *(a6 + 236) = v59;
  v61 = *(a1 + 76);
  if (v61 >= 0.0)
  {
    v64 = powf(v61 * 0.0001, 0.1593);
    v63 = powf(((v64 * 18.852) + 0.83594) / ((v64 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v62 = powf(v61 * -0.0001, 0.1593);
    v63 = 0.0000014619 - powf(((v62 * 18.852) + 0.83594) / ((v62 * 18.688) + 1.0), 78.844);
  }

  *(a6 + 240) = v63;
  v65 = v124;
  if (*(a1 + 196) == 1)
  {
    *(a6 + 12) = dovi_applyTonemapCurveS(a3, a2, v124, v51);
    v55 = *(a6 + 232);
    v65 = v124;
  }

  *(a6 + 244) = dovi_applyTonemapCurveS(a3, a2, v65, v55);
  *(a6 + 248) = dovi_applyTonemapCurveS(a3, a2, v124, *(a6 + 236));
  if (a4 && a5 && *(a1 + 104) == 1)
  {
    v66 = dovi_applyTonemapCurveS(a5, a4, v124, *(a6 + 20));
    *(a6 + 36) = (v46 * v66) / *(a4 + 80);
    v67 = v66 < 0.00000073096;
    if (v66 < 0.00000073096)
    {
      v66 = -(v66 + -0.0000014619);
    }

    v68 = v46;
    v69 = 10000.0;
    v70 = -10000.0;
    if (v67)
    {
      v69 = -10000.0;
    }

    v120 = v69;
    v71 = powf(v66, 0.012683);
    v72 = fmax(((v71 + -0.83594) / ((v71 * -18.688) + 18.852)), 0.0);
    v121 = v120 * powf(v72, 6.2774);
    v73 = -(v68 + -0.0000014619);
    if (v68 >= 0.00000073096)
    {
      v73 = v68;
      v70 = 10000.0;
    }

    v74 = powf(v73, 0.012683);
    v75 = fmax(((v74 + -0.83594) / ((v74 * -18.688) + 18.852)), 0.0);
    v76 = v70 * powf(v75, 6.2774);
    *(a6 + 40) = (v76 * v121) / *(a4 + 48);
    v77 = dovi_applyTonemapCurveS(a5, a4, v124, *(a6 + 24));
    *(a6 + 44) = (v68 * v77) / *(a4 + 80);
    v78 = v77 < 0.00000073096;
    if (v77 < 0.00000073096)
    {
      v77 = -(v77 + -0.0000014619);
    }

    v79 = flt_2508CD850[v78];
    v80 = powf(v77, 0.012683);
    v81 = fmax(((v80 + -0.83594) / ((v80 * -18.688) + 18.852)), 0.0);
    v82 = (v76 * (v79 * powf(v81, 6.2774))) / *(a4 + 48);
  }

  else
  {
    *(a6 + 36) = 0x412000003E997209;
    *(a6 + 44) = 1050243593;
    v82 = 10.0;
  }

  *(a6 + 48) = v82;
  *(a6 + 256) = *(a1 + 36);
  *(a6 + 260) = *(a1 + 196);
  updateEdrAdaptationDataByTMData(a1, a6);
  *(a6 + 264) = xmmword_2508D15D0;
  *(a6 + 280) = 1036831949;
  *(a6 + 284) = 257;
  *(a6 + 286) = *a6 != 17;
  *(a6 + 287) = 1;
  if (*(a3 + 508) == 1)
  {
    *(a6 + 284) = 0;
    *(a6 + 264) = 1046898278;
    *(a6 + 286) = 1;
  }

  if (GetConfig())
  {
    Config = GetConfig();
    if (*(Config + 3481))
    {
      if ((Config[6960] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v84 = GetConfig();
          v85 = *HDRConfig::GetConfigEntryValue(v84, 0x9Eu, 0);
        }

        else
        {
          v85 = 0;
        }

        *(a6 + 264) = v85;
      }
    }
  }

  if (GetConfig())
  {
    v95 = GetConfig();
    if (*(v95 + 3547))
    {
      if ((v95[7092] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v96 = GetConfig();
          v97 = *HDRConfig::GetConfigEntryValue(v96, 0xA1u, 0);
        }

        else
        {
          v97 = 0;
        }

        *(a6 + 268) = v97;
      }
    }
  }

  if (GetConfig())
  {
    v98 = GetConfig();
    if (*(v98 + 3569))
    {
      if ((v98[7136] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v99 = GetConfig();
          v100 = *HDRConfig::GetConfigEntryValue(v99, 0xA2u, 0);
        }

        else
        {
          v100 = 0;
        }

        *(a6 + 272) = v100;
      }
    }
  }

  if (GetConfig())
  {
    v101 = GetConfig();
    if (*(v101 + 3591))
    {
      if ((v101[7180] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v102 = GetConfig();
          v103 = *HDRConfig::GetConfigEntryValue(v102, 0xA3u, 0);
        }

        else
        {
          v103 = 0;
        }

        *(a6 + 276) = v103;
      }
    }
  }

  if (GetConfig())
  {
    v104 = GetConfig();
    if (*(v104 + 3613))
    {
      if ((v104[7224] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v105 = GetConfig();
          v106 = *HDRConfig::GetConfigEntryValue(v105, 0xA4u, 0);
        }

        else
        {
          v106 = 0;
        }

        *(a6 + 280) = v106;
      }
    }
  }

  if (GetConfig())
  {
    v107 = GetConfig();
    if (*(v107 + 3635))
    {
      if ((v107[7268] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v108 = GetConfig();
          v109 = *HDRConfig::GetConfigEntryValue(v108, 0xA5u, 0);
        }

        else
        {
          v109 = 0;
        }

        *(a6 + 284) = v109 & 1;
      }
    }
  }

  if (GetConfig())
  {
    v110 = GetConfig();
    if (*(v110 + 3657))
    {
      if ((v110[7312] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v111 = GetConfig();
          v112 = *HDRConfig::GetConfigEntryValue(v111, 0xA6u, 0);
        }

        else
        {
          v112 = 0;
        }

        *(a6 + 285) = v112 & 1;
      }
    }
  }

  if (GetConfig())
  {
    v113 = GetConfig();
    if (*(v113 + 3679))
    {
      if ((v113[7356] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v114 = GetConfig();
          v115 = *HDRConfig::GetConfigEntryValue(v114, 0xA7u, 0);
        }

        else
        {
          v115 = 0;
        }

        *(a6 + 286) = v115 & 1;
      }
    }
  }

  if (GetConfig())
  {
    v116 = GetConfig();
    if (*(v116 + 3701))
    {
      if ((v116[7400] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v117 = GetConfig();
          v118 = *HDRConfig::GetConfigEntryValue(v117, 0xA8u, 0);
        }

        else
        {
          v118 = 0;
        }

        *(a6 + 287) = v118 & 1;
      }
    }
  }

  *(a6 + 288) = vand_s8(0x3F4000003F800000, vcgez_s32(vshl_n_s32(vdup_n_s32(*(a1 + 116) == 1), 0x1FuLL)));
  *(a6 + 296) = xmmword_2508D15E0;
  *(a6 + 312) = xmmword_2508D15F0;
  *(a6 + 328) = xmmword_2508D1600;
  *(a6 + 344) = xmmword_2508D1610;
  updateAUWDMParamsByDefaultsWrite(a6);
  *(a6 + 360) = *(a1 + 120);
}

void dovi_generateAmbAdaptationDataS(uint64_t a1, uint64_t a2, uint64_t a3, _EdrAdaptationParam *a4, uint64_t a5, uint64_t a6)
{
  *a6 = *(a1 + 32);
  v12 = *(a1 + 36);
  *(a6 + 4) = *(a1 + 24);
  *(a6 + 8) = v12;
  v13 = *(a2 + 52);
  *(a6 + 12) = *(a2 + 40);
  *(a6 + 16) = v13;
  v14 = *(a2 + 84);
  *(a6 + 20) = *(a2 + 72);
  *(a6 + 24) = v14;
  if (*(a5 + 493) == 1)
  {
    v15 = *(a2 + 16);
    *(a6 + 16) = v15;
    if (v15 >= 0.0)
    {
      v18 = powf(v15 * 0.0001, 0.1593);
      v17 = powf(((v18 * 18.852) + 0.83594) / ((v18 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v16 = powf(v15 * -0.0001, 0.1593);
      v17 = 0.0000014619 - powf(((v16 * 18.852) + 0.83594) / ((v16 * 18.688) + 1.0), 78.844);
    }

    *(a6 + 24) = v17;
  }

  *(a6 + 36) = *(a1 + 196);
  v19 = applyEdrAdaptationCurveS(a4, *(a3 + 244));
  if (*(a5 + 493) == 1)
  {
    v20 = *(a2 + 136);
    if (v20 == 3)
    {
      v21 = *(a2 + 132);
      if (v21 != 1.0)
      {
        v19 = *(a2 + 128) + ((v19 - *(a2 + 128)) * v21);
      }
    }

    else if (v20 == 2)
    {
      v19 = applyLinearStretchInPQ(v19, *(a2 + 124), *(a2 + 120));
    }
  }

  *(a6 + 40) = v19;
  v22 = *(a1 + 64);
  if (v22 >= *(a6 + 12))
  {
    v22 = *(a6 + 12);
  }

  *(a6 + 32) = v22;
}

void dovi84_generateAmbAdaptationDataS(uint64_t a1, uint64_t a2, uint64_t a3, _EdrAdaptationParam *a4, uint64_t a5, uint64_t a6)
{
  *a6 = *(a1 + 32);
  v12 = *(a1 + 36);
  *(a6 + 4) = *(a1 + 24);
  *(a6 + 8) = v12;
  v13 = *(a2 + 52);
  if (*(a1 + 116) == 1)
  {
    if (v13 >= 0.0)
    {
      v16 = powf(v13 * 0.0001, 0.1593);
      v15 = powf(((v16 * 18.852) + 0.83594) / ((v16 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v14 = powf(v13 * -0.0001, 0.1593);
      v15 = 0.0000014619 - powf(((v14 * 18.852) + 0.83594) / ((v14 * 18.688) + 1.0), 78.844);
    }

    v17 = v15 * 0.25;
    v18 = v17 < 0.00000073096;
    if (v17 < 0.00000073096)
    {
      v17 = -(v17 + -0.0000014619);
    }

    v19 = flt_2508CD850[v18];
    v20 = powf(v17, 0.012683);
    v21 = fmax(((v20 + -0.83594) / ((v20 * -18.688) + 18.852)), 0.0);
    v22 = v19 * powf(v21, 6.2774);
    if (v12 < v22)
    {
      v22 = v12;
    }

    *(a6 + 8) = v22;
  }

  *(a6 + 12) = *(a2 + 40);
  *(a6 + 16) = v13;
  v23 = *(a2 + 84);
  *(a6 + 20) = *(a2 + 72);
  *(a6 + 24) = v23;
  if (*(a5 + 493) == 1)
  {
    v24 = *(a2 + 16);
    *(a6 + 16) = v24;
    if (v24 >= 0.0)
    {
      v27 = powf(v24 * 0.0001, 0.1593);
      v26 = powf(((v27 * 18.852) + 0.83594) / ((v27 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v25 = powf(v24 * -0.0001, 0.1593);
      v26 = 0.0000014619 - powf(((v25 * 18.852) + 0.83594) / ((v25 * 18.688) + 1.0), 78.844);
    }

    *(a6 + 24) = v26;
  }

  *(a6 + 36) = *(a1 + 196);
  v28 = applyEdrAdaptationCurveS(a4, *(a3 + 244));
  if (*(a5 + 493) == 1)
  {
    v29 = *(a2 + 136);
    if (v29 == 3)
    {
      v30 = *(a2 + 132);
      if (v30 != 1.0)
      {
        v28 = *(a2 + 128) + ((v28 - *(a2 + 128)) * v30);
      }
    }

    else if (v29 == 2)
    {
      v28 = applyLinearStretchInPQ(v28, *(a2 + 124), *(a2 + 120));
    }
  }

  *(a6 + 40) = v28;
  v31 = *(a1 + 64);
  if (v31 >= *(a6 + 12))
  {
    v31 = *(a6 + 12);
  }

  *(a6 + 32) = v31;
}

float dovi84_generateSceneLuxAdaptationDataS(uint64_t a1, uint64_t a2)
{
  if (GetConfig())
  {
    Config = GetConfig();
    v5 = *HDRConfig::GetConfigEntryValue(Config, 0xB9u, 0);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 4) = vrev64_s32(*(a1 + 136));
  result = *(a1 + 144);
  v7 = *(a1 + 160);
  *(a2 + 12) = result;
  *(a2 + 16) = v7;
  return result;
}

float dovi_getScalingFactorS_C(uint64_t a1, uint64_t a2, _EdrAdaptationParam *a3, uint64_t a4, void *a5, float a6)
{
  v11 = a5;
  v12 = dovi_applyTonemapCurveS(a1, a2, v11, a6);
  v13 = applyEdrAdaptationCurveS(a3, v12);
  if (*(a1 + 493) == 1)
  {
    v14 = *(a2 + 136);
    if (v14 == 3)
    {
      v15 = *(a2 + 132);
      v16 = *(a2 + 128) + ((v13 - *(a2 + 128)) * v15);
      if (v15 != 1.0)
      {
        v13 = *(a2 + 128) + ((v13 - *(a2 + 128)) * v15);
      }
    }

    else if (v14 == 2)
    {
      v13 = applyLinearStretchInPQ(v13, *(a2 + 124), *(a2 + 120));
    }
  }

  v17 = applyAmbAdaptationCurveS_C(a4, v13);
  v18 = *(a1 + 480);
  v19 = v17 / a6;
  if (v18 == 4)
  {
    if (a6 == 0.0)
    {
      v20 = v17;
    }

    else
    {
      v20 = v17 / a6;
    }
  }

  else
  {
    v21 = 1.0;
    if (a6 != 0.0)
    {
      v21 = v19;
    }

    v22 = fmaxf(v21, 0.5);
    if (*(a1 + 492))
    {
      v21 = v22;
    }

    v20 = fminf(v21, 2.0);
  }

  if (*(a1 + 465) == 1 && *(a1 + 472) == 1)
  {
    v23 = *(a1 + 476);
    v24 = v20 * a6;
    if ((v20 * a6) < 0.00000073096)
    {
      v24 = -(v24 + -0.0000014619);
    }

    v25 = flt_2508CD850[(v20 * a6) < 0.00000073096];
    v26 = powf(v24, 0.012683);
    v27 = fmax(((v26 + -0.83594) / ((v26 * -18.688) + 18.852)), 0.0);
    v28 = powf(v27, 6.2774);
    v29 = pow(((v25 * v28) / v23), 1.0 / *(a1 + 468));
    v30 = v23 * v29;
    if (v30 >= 0.0)
    {
      v33 = powf(v30 * 0.0001, 0.1593);
      v32 = powf(((v33 * 18.852) + 0.83594) / ((v33 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v31 = powf(v30 * -0.0001, 0.1593);
      v32 = 0.0000014619 - powf(((v31 * 18.852) + 0.83594) / ((v31 * 18.688) + 1.0), 78.844);
    }

    v34 = v32 / a6;
    if (v18 != 4)
    {
      v32 = 1.0;
    }

    if (a6 == 0.0)
    {
      v20 = v32;
    }

    else
    {
      v20 = v34;
    }
  }

  return v20;
}

float dovi_getScalingFactorForPTS_C(uint64_t a1, uint64_t a2, _EdrAdaptationParam *a3, uint64_t a4, void *a5, float a6)
{
  v11 = a5;
  v12 = dovi_applyTonemapCurveS(a1, a2, v11, a6);
  if (*(a1 + 480) != 4)
  {
    v13 = *(a2 + 140);
    if (v13 > 0.0)
    {
      v12 = powf(v12, v13);
    }
  }

  v14 = applyEdrAdaptationCurveS(a3, v12);
  if (*(a1 + 493) == 1)
  {
    v15 = *(a2 + 136);
    if (v15 == 3)
    {
      v16 = *(a2 + 132);
      v17 = *(a2 + 128) + ((v14 - *(a2 + 128)) * v16);
      if (v16 != 1.0)
      {
        v14 = *(a2 + 128) + ((v14 - *(a2 + 128)) * v16);
      }
    }

    else if (v15 == 2)
    {
      v14 = applyLinearStretchInPQ(v14, *(a2 + 124), *(a2 + 120));
    }
  }

  *&v18 = applyAmbAdaptationCurveS_C(a4, v14);
  v20 = *&v18;
  if (*(a1 + 480) == 4)
  {
    if (*(a1 + 465) == 1 && *(a1 + 472) == 1)
    {
      if (GetConfig())
      {
        Config = GetConfig();
        if (*HDRConfig::GetConfigEntryValue(Config, 0xEEu, 0) == 1)
        {
          v22 = *(a1 + 476);
          v23 = -(v20 + -0.0000014619);
          if (v20 >= 0.00000073096)
          {
            v23 = v20;
          }

          v24 = flt_2508CD850[v20 < 0.00000073096];
          v25 = powf(v23, 0.012683);
          v26 = fmax(((v25 + -0.83594) / ((v25 * -18.688) + 18.852)), 0.0);
          v27 = powf(v26, 6.2774);
          v28 = pow(((v24 * v27) / v22), 1.0 / *(a1 + 468));
          v29 = v22 * v28;
          if (v29 >= 0.0)
          {
            v45 = powf(v29 * 0.0001, 0.1593);
            v20 = powf(((v45 * 18.852) + 0.83594) / ((v45 * 18.688) + 1.0), 78.844);
          }

          else
          {
            v30 = powf(v29 * -0.0001, 0.1593);
            v20 = 0.0000014619 - powf(((v30 * 18.852) + 0.83594) / ((v30 * 18.688) + 1.0), 78.844);
          }
        }
      }
    }

    *&v18 = a6;
    *&v19 = v20;
    [v11 satMapI:v18 Adm:v19];
    v47 = v46;
  }

  else
  {
    v31 = *&v18 / a6;
    if (a6 == 0.0)
    {
      v31 = 1.0;
    }

    v32 = fmaxf(v31, 0.5);
    if (*(a1 + 492))
    {
      v31 = v32;
    }

    v33 = fminf(v31, 2.0);
    if (*(a1 + 465) == 1 && *(a1 + 472) == 1)
    {
      if (GetConfig())
      {
        v34 = GetConfig();
        if (*HDRConfig::GetConfigEntryValue(v34, 0xEEu, 0) == 1)
        {
          v35 = *(a1 + 476);
          v36 = v33 * a6;
          if ((v33 * a6) < 0.00000073096)
          {
            v36 = -(v36 + -0.0000014619);
          }

          v37 = flt_2508CD850[(v33 * a6) < 0.00000073096];
          v38 = powf(v36, 0.012683);
          v39 = fmax(((v38 + -0.83594) / ((v38 * -18.688) + 18.852)), 0.0);
          v40 = powf(v39, 6.2774);
          v41 = pow(((v37 * v40) / v35), 1.0 / *(a1 + 468));
          v42 = v35 * v41;
          if (v42 >= 0.0)
          {
            v48 = powf(v42 * 0.0001, 0.1593);
            v44 = powf(((v48 * 18.852) + 0.83594) / ((v48 * 18.688) + 1.0), 78.844);
          }

          else
          {
            v43 = powf(v42 * -0.0001, 0.1593);
            v44 = 0.0000014619 - powf(((v43 * 18.852) + 0.83594) / ((v43 * 18.688) + 1.0), 78.844);
          }

          v49 = v44 / a6;
          if (a6 == 0.0)
          {
            v33 = 1.0;
          }

          else
          {
            v33 = v49;
          }
        }
      }
    }

    v47 = getMesopicCrushForDM3(a1, v33 * a6) * (1.0 - (a6 - (v33 * a6)));
  }

  return v47;
}

float getMesopicCrushForDM3(uint64_t a1, float a2)
{
  v2 = *(a1 + 496);
  if (v2 == 2)
  {
    v3 = 0.0;
    if (a2 >= 0.006105)
    {
      v3 = 1.0;
      if (a2 < 0.21333)
      {
        return 1.0 - ((((a2 + -0.006105) / -0.20722) + 1.0) * (((a2 + -0.006105) / -0.20722) + 1.0));
      }
    }

    return v3;
  }

  v3 = 1.0;
  if (v2 != 1)
  {
    return v3;
  }

  v4 = *(a1 + 280);
  if (v4 >= 40.0)
  {
    v3 = 0.0;
    if (v4 < 100.0)
    {
      v3 = ((v4 + -40.0) / -60.0) + 1.0;
    }
  }

  v5 = 0.0;
  if (a2 >= 0.006105)
  {
    v5 = 1.0;
    if (a2 < 0.21333)
    {
      v5 = (-((((a2 + -0.006105) / -0.20722) + 1.0) * (((a2 + -0.006105) / -0.20722) + 1.0)) * (((a2 + -0.006105) / -0.20722) + 1.0)) + 1.0;
    }
  }

  return (1.0 - v3) + (v5 * v3);
}

void dovi_setScalingFactorTableS_C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, _EdrAdaptationParam *a6, uint64_t a7, void *a8)
{
  v19 = a8;
  if (a3)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      *(a1 + 4 * v15) = dovi_getScalingFactorS_C(a4, a5, a6, a7, v19, *(a2 + 4 * v15));
      v15 = v16++;
    }

    while (v15 < a3);
    if (*(a4 + 500) == 1)
    {
      v17 = 0;
      v18 = a1 + 4 * a3;
      do
      {
        *(v18 + 4 * v17) = dovi_getScalingFactorForPTS_C(a4, a5, a6, a7, v19, *(a2 + 4 * v17));
        ++v17;
      }

      while (v17 < a3);
    }
  }
}

float dovi84_getScalingFactorS_C(uint64_t a1, uint64_t a2, _EdrAdaptationParam *a3, uint64_t a4, int a5, void *a6, float a7)
{
  v13 = a6;
  v14 = dovi84_applyTonemapCurveS_C(a1, a2, a5, v13, a7);
  v15 = applyEdrAdaptationCurveS(a3, v14);
  if (*(a1 + 493) == 1)
  {
    v16 = *(a2 + 136);
    if (v16 == 3)
    {
      v17 = *(a2 + 132);
      v18 = *(a2 + 128) + ((v15 - *(a2 + 128)) * v17);
      if (v17 != 1.0)
      {
        v15 = *(a2 + 128) + ((v15 - *(a2 + 128)) * v17);
      }
    }

    else if (v16 == 2)
    {
      v15 = applyLinearStretchInPQ(v15, *(a2 + 124), *(a2 + 120));
    }
  }

  v19 = applyAmbAdaptationCurveS_C(a4, v15);
  v20 = v19;
  if (a7 == 0.0)
  {
    v21 = *(a1 + 480);
    if (v21 == 4)
    {
      v22 = v19;
    }

    else
    {
      v22 = 1.0;
    }
  }

  else
  {
    v21 = *(a1 + 480);
    v22 = v19 / a7;
  }

  if (v21 <= 3 && *(a1 + 240) > 0.0)
  {
    v23 = -(a7 + -0.0000014619);
    if (a7 >= 0.00000073096)
    {
      v23 = a7;
    }

    v24 = flt_2508CD850[a7 < 0.00000073096];
    v25 = powf(v23, 0.012683);
    v26 = fmax(((v25 + -0.83594) / ((v25 * -18.688) + 18.852)), 0.0);
    v27 = (v24 * powf(v26, 6.2774)) / 1000.0;
    v28 = powf(fabsf(v27), *(a1 + 284) + 1.0);
    if (v27 < 0.0)
    {
      v28 = -v28;
    }

    v29 = *(a2 + 4) + (v28 * (1000.0 - *(a2 + 4)));
    if (v29 >= 0.0)
    {
      v32 = powf(v29 * 0.0001, 0.1593);
      v31 = powf(((v32 * 18.852) + 0.83594) / ((v32 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v30 = powf(v29 * -0.0001, 0.1593);
      v31 = 0.0000014619 - powf(((v30 * 18.852) + 0.83594) / ((v30 * 18.688) + 1.0), 78.844);
    }

    v22 = 1.0;
    if (a7 != 0.0)
    {
      v33 = v20 / v31;
      if (v31 == 0.0)
      {
        v33 = 1.0;
      }

      v34 = fmin(v33, 2.0);
      v22 = (v31 * v34) / a7;
    }
  }

  if (*(a1 + 465) == 1 && a7 != 0.0 && *(a1 + 472) == 1)
  {
    v35 = *(a1 + 476);
    v36 = v22 * a7;
    if ((v22 * a7) < 0.00000073096)
    {
      v36 = -(v36 + -0.0000014619);
    }

    v37 = flt_2508CD850[(v22 * a7) < 0.00000073096];
    v38 = powf(v36, 0.012683);
    v39 = fmax(((v38 + -0.83594) / ((v38 * -18.688) + 18.852)), 0.0);
    v40 = powf(v39, 6.2774);
    v41 = pow(((v37 * v40) / v35), 1.0 / *(a1 + 468));
    v42 = v35 * v41;
    if (v42 >= 0.0)
    {
      v45 = powf(v42 * 0.0001, 0.1593);
      v44 = powf(((v45 * 18.852) + 0.83594) / ((v45 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v43 = powf(v42 * -0.0001, 0.1593);
      v44 = 0.0000014619 - powf(((v43 * 18.852) + 0.83594) / ((v43 * 18.688) + 1.0), 78.844);
    }

    v22 = v44 / a7;
  }

  return v22;
}

float dovi84_getScalingFactorForPTS_C(uint64_t a1, uint64_t a2, _EdrAdaptationParam *a3, uint64_t a4, int a5, void *a6, float a7)
{
  v13 = a6;
  v14 = dovi84_applyTonemapCurveS_C(a1, a2, a5, v13, a7);
  v15 = applyEdrAdaptationCurveS(a3, v14);
  if (*(a1 + 493) == 1)
  {
    v16 = *(a2 + 136);
    if (v16 == 3)
    {
      v17 = *(a2 + 132);
      v18 = *(a2 + 128) + ((v15 - *(a2 + 128)) * v17);
      if (v17 != 1.0)
      {
        v15 = *(a2 + 128) + ((v15 - *(a2 + 128)) * v17);
      }
    }

    else if (v16 == 2)
    {
      v15 = applyLinearStretchInPQ(v15, *(a2 + 124), *(a2 + 120));
    }
  }

  *&v19 = applyAmbAdaptationCurveS_C(a4, v15);
  v21 = *&v19;
  if (*(a1 + 480) == 4)
  {
    *&v19 = a7;
    *&v20 = v21;
    [v13 satMapI:v19 Adm:v20];
    v23 = v22;
  }

  else
  {
    if (a7 == 0.0)
    {
      v24 = 1.0;
    }

    else
    {
      v24 = *&v19 / a7;
    }

    if (*(a1 + 240) > 0.0)
    {
      v25 = -(a7 + -0.0000014619);
      if (a7 >= 0.00000073096)
      {
        v25 = a7;
      }

      v26 = flt_2508CD850[a7 < 0.00000073096];
      v27 = powf(v25, 0.012683);
      v28 = fmax(((v27 + -0.83594) / ((v27 * -18.688) + 18.852)), 0.0);
      v29 = (v26 * powf(v28, 6.2774)) / 1000.0;
      v30 = powf(fabsf(v29), *(a1 + 284) + 1.0);
      if (v29 < 0.0)
      {
        v30 = -v30;
      }

      v31 = *(a2 + 4) + (v30 * (1000.0 - *(a2 + 4)));
      if (v31 >= 0.0)
      {
        v34 = powf(v31 * 0.0001, 0.1593);
        v33 = powf(((v34 * 18.852) + 0.83594) / ((v34 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v32 = powf(v31 * -0.0001, 0.1593);
        v33 = 0.0000014619 - powf(((v32 * 18.852) + 0.83594) / ((v32 * 18.688) + 1.0), 78.844);
      }

      v24 = 1.0;
      if (a7 != 0.0)
      {
        v35 = v21 / v33;
        if (v33 == 0.0)
        {
          v35 = 1.0;
        }

        v36 = fmin(v35, 2.0);
        v24 = (v33 * v36) / a7;
      }
    }

    v37 = *(a2 + 64);
    v38 = *(a2 + 56);
    v39 = v37 == v38;
    v40 = fmax(((a7 - v38) / (v37 - v38)), 0.0);
    v41 = fminf(v40, 1.0);
    if (v39)
    {
      v42 = 1.0;
    }

    else
    {
      v42 = v41;
    }

    v23 = ((1.0 - (a7 - (v24 * a7))) * v42) + ((1.0 - v42) * powf(v24, 0.7));
  }

  return v23;
}

void dovi84_getScalingFactorS_C_base(uint64_t a1, uint64_t a2, float a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  if (GetConfig())
  {
    Config = GetConfig();
    v14 = *HDRConfig::GetConfigEntryValue(Config, 0xC1u, 0);
  }

  else
  {
    v14 = 0.0;
  }

  v15 = *(a8 + 24);
  if (a6)
  {
    v16 = -(a3 + -0.0000014619);
    if (a3 >= 0.00000073096)
    {
      v16 = a3;
    }

    v17 = flt_2508CD850[a3 < 0.00000073096];
    v18 = powf(v16, 0.012683);
    v19 = fmax(((v18 + -0.83594) / ((v18 * -18.688) + 18.852)), 0.0);
    v20 = (v17 * powf(v19, 6.2774)) / 1000.0;
    v21 = powf(fabsf(v20), *(a2 + 108));
    if (v20 < 0.0)
    {
      v21 = -v21;
    }

    v22 = *(a2 + 4) + (v21 * (1000.0 - *(a2 + 4)));
    if (v22 >= 0.0)
    {
      v24 = powf(v22 * 0.0001, 0.1593);
      a3 = powf(((v24 * 18.852) + 0.83594) / ((v24 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v23 = powf(v22 * -0.0001, 0.1593);
      a3 = 0.0000014619 - powf(((v23 * 18.852) + 0.83594) / ((v23 * 18.688) + 1.0), 78.844);
    }
  }

  v25 = -(a3 + -0.0000014619);
  if (a3 >= 0.00000073096)
  {
    v25 = a3;
  }

  v26 = flt_2508CD850[a3 < 0.00000073096];
  v27 = powf(v25, 0.012683);
  v28 = fmax(((v27 + -0.83594) / ((v27 * -18.688) + 18.852)), 0.0);
  v29 = (v15 / v14) * (v26 * powf(v28, 6.2774));
  if (v29 >= 0.0)
  {
    v31 = powf(v29 * 0.0001, 0.1593);
    powf(((v31 * 18.852) + 0.83594) / ((v31 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v30 = powf(v29 * -0.0001, 0.1593);
    powf(((v30 * 18.852) + 0.83594) / ((v30 * 18.688) + 1.0), 78.844);
  }

  if (a3 == 0.0)
  {
    *(a1 + 480);
  }
}

float dovi84_getScalingFactorForPTS_C_base(uint64_t a1, uint64_t a2, float a3, uint64_t a4, uint64_t a5, int a6, void *a7, uint64_t a8)
{
  v13 = a7;
  if (GetConfig())
  {
    Config = GetConfig();
    v15 = *HDRConfig::GetConfigEntryValue(Config, 0xC1u, 0);
  }

  else
  {
    v15 = 0.0;
  }

  v16 = *(a8 + 24);
  if (a6)
  {
    v17 = -(a3 + -0.0000014619);
    if (a3 >= 0.00000073096)
    {
      v17 = a3;
    }

    v18 = flt_2508CD850[a3 < 0.00000073096];
    v19 = powf(v17, 0.012683);
    v20 = fmax(((v19 + -0.83594) / ((v19 * -18.688) + 18.852)), 0.0);
    v21 = (v18 * powf(v20, 6.2774)) / 1000.0;
    v22 = powf(fabsf(v21), *(a2 + 108));
    if (v21 < 0.0)
    {
      v22 = -v22;
    }

    v23 = *(a2 + 4) + (v22 * (1000.0 - *(a2 + 4)));
    if (v23 >= 0.0)
    {
      v25 = powf(v23 * 0.0001, 0.1593);
      a3 = powf(((v25 * 18.852) + 0.83594) / ((v25 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v24 = powf(v23 * -0.0001, 0.1593);
      a3 = 0.0000014619 - powf(((v24 * 18.852) + 0.83594) / ((v24 * 18.688) + 1.0), 78.844);
    }
  }

  v26 = -(a3 + -0.0000014619);
  if (a3 >= 0.00000073096)
  {
    v26 = a3;
  }

  v27 = flt_2508CD850[a3 < 0.00000073096];
  v28 = powf(v26, 0.012683);
  v29 = fmax(((v28 + -0.83594) / ((v28 * -18.688) + 18.852)), 0.0);
  v30 = (v16 / v15) * (v27 * powf(v29, 6.2774));
  if (v30 >= 0.0)
  {
    v34 = powf(v30 * 0.0001, 0.1593);
    LODWORD(v33) = powf(((v34 * 18.852) + 0.83594) / ((v34 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v31 = powf(v30 * -0.0001, 0.1593);
    *&v33 = 0.0000014619 - powf(((v31 * 18.852) + 0.83594) / ((v31 * 18.688) + 1.0), 78.844);
  }

  if (*(a1 + 480) == 4)
  {
    *&v32 = a3;
    [v13 satMapI:v32 Adm:v33];
    v36 = v35;
  }

  else if (a3 == 0.0)
  {
    v36 = 1.0;
  }

  else
  {
    v36 = *&v33 / a3;
  }

  return v36;
}

void dovi84_setScalingFactorTableS_C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, _EdrAdaptationParam *a6, uint64_t a7, int a8, void *a9, uint64_t a10)
{
  v33 = a9;
  [v33 debugParams];
  if (a3)
  {
    v18 = 0;
    v19 = 1;
    do
    {
      *(a1 + 4 * v18) = dovi84_getScalingFactorS_C(a4, a5, a6, a7, a8, v33, *(a2 + 4 * v18));
      v18 = v19++;
    }

    while (v18 < a3);
    if (*(a4 + 500) == 1)
    {
      v23 = 0;
      do
      {
        *(a1 + 4 * a3 + 4 * v23) = dovi84_getScalingFactorForPTS_C(a4, a5, a6, a7, a8, v33, *(a2 + 4 * v23));
        ++v23;
      }

      while (v23 < a3);
    }

    if (*(a10 + 164) == 1)
    {
      v24 = 0;
      v25 = *(a10 + 168);
      v26 = 1.0 - v25;
      v27 = 1;
      do
      {
        dovi84_getScalingFactorS_C_base(a4, a5, *(a2 + 4 * v24), v20, v21, a8, v22, a10);
        v29 = (v25 * *(a1 + 4 * v24)) + v26 * v28;
        *(a1 + 4 * v24) = v29;
        v24 = v27++;
      }

      while (v24 < a3);
      if (*(a4 + 500) == 1)
      {
        v30 = 0;
        v31 = a1 + 4 * a3;
        do
        {
          v32 = (v25 * *(v31 + 4 * v30)) + v26 * dovi84_getScalingFactorForPTS_C_base(a4, a5, *(a2 + 4 * v30), v20, v21, a8, v33, a10);
          *(v31 + 4 * v30++) = v32;
        }

        while (v30 < a3);
      }
    }
  }
}

void dovi84_getScalingFactorS_L(uint64_t a1, uint64_t a2, _EdrAdaptationParam *a3, uint64_t a4, int a5, int a6, char a7, void *a8, float a9)
{
  v9 = a6;
  v13 = dovi84_applyTonemapCurveS_L(a1, a2, a5, a6, a7, a8, a9);
  if ((v9 & 1) == 0)
  {
    v14 = applyEdrAdaptationCurveS(a3, v13);
    v15 = applyAmbAdaptationCurveS(a4, v14);
    v16 = *(a1 + 196);
    v17 = v15 * v16;
    if (*(a1 + 465) == 1 && *(a1 + 472) == 1)
    {
      v18 = pow(((v17 / v16) / *(a1 + 476)), 1.0 / *(a1 + 468));
    }
  }
}

void dovi84_setScalingFactorTableS_L(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, _EdrAdaptationParam *a6, uint64_t a7, int a8, unsigned __int8 a9, void *a10)
{
  v29 = a10;
  if (GetConfig())
  {
    Config = GetConfig();
    v18 = *HDRConfig::GetConfigEntryValue(Config, 0xEu, 0);
  }

  else
  {
    v18 = 0;
  }

  if (GetConfig() && (v19 = GetConfig(), (*HDRConfig::GetConfigEntryValue(v19, 0x50u, 0) & 1) != 0) || (a9 & 1) != 0)
  {
    if (a3)
    {
      v25 = 0;
      v26 = 1;
      do
      {
        dovi84_getScalingFactorS_L(a4, a5, a6, a7, a8, a9, v18 & 1, v29, *(a2 + 4 * v25));
        *(a1 + 4 * v25) = v27;
        v25 = v26++;
      }

      while (v25 < a3);
    }
  }

  else
  {
    for (i = 0; i != 801; ++i)
    {
      v21 = ATFMTLhalf2float(32 * (i & 0x7FF));
      dovi84_getScalingFactorS_L(a4, a5, a6, a7, a8, 0, v18 & 1, v29, v21 * 0.00097656);
      *(a1 + 4 * i) = v22;
    }

    if (a3 >= 0x322)
    {
      v23 = 801;
      v24 = 801;
      do
      {
        *(a1 + 4 * v23) = *(a1 + 4 * v23 - 4);
        v23 = ++v24;
      }

      while (v24 < a3);
    }
  }
}

_BYTE *dovi_setupTmConfig(int a1, int a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      v7 = vcltz_s32(vshl_n_s32(vdup_n_s32(a2 == 4), 0x1FuLL));
      v8 = 0x600000002;
      v9 = 0x1100000004;
    }

    else
    {
      if (a1 == 7)
      {
        if (a2 == 4)
        {
          v11 = 4;
        }

        else
        {
          v11 = 2;
        }

        a4[3] = v11;
        if (a2 == 4)
        {
          if (GetConfig() && (Config = GetConfig(), *HDRConfig::GetConfigEntryValue(Config, 0x91u, 0) == 1))
          {
            v15 = 12;
          }

          else
          {
            v15 = 15;
          }
        }

        else
        {
          v15 = 10;
        }

        a4[4] = v15;
        goto LABEL_37;
      }

      if (a1 == 8)
      {
        if (a2 == 4)
        {
          v14 = 4;
        }

        else
        {
          v14 = 2;
        }

        a4[3] = v14;
        a4[4] = 19;
        goto LABEL_37;
      }

      if (a1 != 9)
      {
        goto LABEL_39;
      }

      v7 = vcltz_s32(vshl_n_s32(vdup_n_s32(a2 == 4), 0x1FuLL));
      v8 = 0xA00000002;
      v9 = 0x1000000004;
    }

    *(a4 + 3) = vbsl_s8(v7, v9, v8);
LABEL_37:
    v10 = 5;
LABEL_38:
    a4[8] = v10;
    goto LABEL_39;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      a4[3] = 0;
      a4[4] = 0;
      a4[8] = 0;
      goto LABEL_39;
    }

    if (a1 != 1)
    {
      goto LABEL_39;
    }

    *(a4 + 3) = 0x100000002;
    v10 = 3;
    goto LABEL_38;
  }

  if (a1 == 2)
  {
    *(a4 + 3) = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(a2 == 4), 0x1FuLL)), 0x1100000004, 0x500000002);
  }

  else
  {
    if (a1 != 3)
    {
      *(a4 + 3) = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(a2 == 4), 0x1FuLL)), 0x1100000004, 0xB00000002);
      a4[8] = 5;
      *(a5 + 188) = 3;
      goto LABEL_39;
    }

    if (a2 == 4)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    a4[3] = v13;
    a4[4] = 10;
  }

  a4[8] = 5;
  *(a5 + 188) = 0;
LABEL_39:
  v16 = a4[28];
  if (!v16)
  {
    if (a4[4])
    {
      if (GetConfig())
      {
        v17 = GetConfig();
        if (*HDRConfig::GetConfigEntryValue(v17, 0xE2u, 0) == 1)
        {
          goto LABEL_55;
        }
      }
    }

    v16 = a4[28];
  }

  if (v16 != 4 || a4[29] || !a4[4] || !GetConfig() || (v20 = GetConfig(), *HDRConfig::GetConfigEntryValue(v20, 0xE2u, 0) != 1))
  {
    if (a4[28] != 4)
    {
      goto LABEL_63;
    }

    if (a4[29] != 1)
    {
      goto LABEL_63;
    }

    if (!a4[4])
    {
      goto LABEL_63;
    }

    if (!GetConfig())
    {
      goto LABEL_63;
    }

    v18 = GetConfig();
    if (*HDRConfig::GetConfigEntryValue(v18, 0xE3u, 0) != 1)
    {
      goto LABEL_63;
    }

    v19 = GetConfig();
LABEL_58:
    if (v19)
    {
      v22 = GetConfig();
      v23 = 228;
      goto LABEL_60;
    }

LABEL_61:
    v24 = 0;
    goto LABEL_62;
  }

LABEL_55:
  v21 = a4[3];
  v19 = GetConfig();
  if (v21 != 4)
  {
    goto LABEL_58;
  }

  if (!v19)
  {
    goto LABEL_61;
  }

  v22 = GetConfig();
  v23 = 229;
LABEL_60:
  v24 = *HDRConfig::GetConfigEntryValue(v22, v23, 0);
LABEL_62:
  a4[4] = v24;
LABEL_63:
  if (*(a3 + 185) == 1)
  {
    a4[4] = 0;
    a4[8] = 0;
    if (a4[28] != 4 || a4[29] != 1)
    {
      if (GetConfig())
      {
        v25 = GetConfig();
        if (*HDRConfig::GetConfigEntryValue(v25, 0x100u, 0) == 1)
        {
          a4[4] = 27;
        }
      }
    }
  }

  if (overrideAmbAdaptationMode <= 6)
  {
    a4[8] = overrideAmbAdaptationMode;
  }

  if (overrideEdrAdaptationMode <= 0x1B)
  {
    a4[4] = overrideEdrAdaptationMode;
  }

  result = GetConfig();
  if (!result || (v27 = GetConfig(), result = HDRConfig::GetConfigEntryValue(v27, 0x66u, 0), (*result & 1) == 0))
  {
    a4[8] = 0;
  }

  return result;
}

void hdr10_calculateTonemapCurveParamS(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v440 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v431 = *a1;
  v8 = *(a1 + 16);
  v10 = *(a1 + 20);
  v9 = *(a1 + 24);
  v11 = *(a1 + 40);
  v12 = *(a1 + 52);
  v13 = *(a1 + 124);
  v14 = *(a1 + 60);
  v15 = *(a1 + 48);
  v16 = *(a1 + 76);
  *a4 = 1;
  *&v17 = v11;
  v420 = v11;
  v424 = v12;
  *(&v17 + 1) = v12;
  *(a4 + 4) = v17;
  if (v11.f32[0] >= v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = v11.f32[0];
  }

  *(a4 + 20) = v18;
  v19 = v11.f32[1];
  *(a4 + 28) = v11.i32[1];
  if (v11.f32[1] >= v16)
  {
    v20 = v11.f32[1];
  }

  else
  {
    v20 = v16;
  }

  *(a4 + 32) = v20;
  *(a4 + 36) = v15;
  if (v13 >= v14)
  {
    v21 = v13;
  }

  else
  {
    v21 = v14;
  }

  *(a4 + 44) = v14;
  *(a4 + 48) = v21;
  if (v18 >= 0.0)
  {
    v24 = powf(v18 * 0.0001, 0.1593);
    v23 = powf(((v24 * 18.852) + 0.83594) / ((v24 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v22 = powf(v18 * -0.0001, 0.1593);
    v23 = 0.0000014619 - powf(((v22 * 18.852) + 0.83594) / ((v22 * 18.688) + 1.0), 78.844);
  }

  *(a4 + 52) = v23;
  if (v19 >= 0.0)
  {
    v27 = powf(v19 * 0.0001, 0.1593);
    v26 = powf(((v27 * 18.852) + 0.83594) / ((v27 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v25 = powf(v19 * -0.0001, 0.1593);
    v26 = 0.0000014619 - powf(((v25 * 18.852) + 0.83594) / ((v25 * 18.688) + 1.0), 78.844);
  }

  *(a4 + 60) = v26;
  if (v20 >= 0.0)
  {
    v30 = powf(v20 * 0.0001, 0.1593);
    v29 = powf(((v30 * 18.852) + 0.83594) / ((v30 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v28 = powf(v20 * -0.0001, 0.1593);
    v29 = 0.0000014619 - powf(((v28 * 18.852) + 0.83594) / ((v28 * 18.688) + 1.0), 78.844);
  }

  *(a4 + 64) = v29;
  if (v15 >= 0.0)
  {
    v33 = powf(v15 * 0.0001, 0.1593);
    v32 = powf(((v33 * 18.852) + 0.83594) / ((v33 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v31 = powf(v15 * -0.0001, 0.1593);
    v32 = 0.0000014619 - powf(((v31 * 18.852) + 0.83594) / ((v31 * 18.688) + 1.0), 78.844);
  }

  *(a4 + 68) = v32;
  if (v14 >= 0.0)
  {
    v36 = powf(v14 * 0.0001, 0.1593);
    v35 = powf(((v36 * 18.852) + 0.83594) / ((v36 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v34 = powf(v14 * -0.0001, 0.1593);
    v35 = 0.0000014619 - powf(((v34 * 18.852) + 0.83594) / ((v34 * 18.688) + 1.0), 78.844);
  }

  *(a4 + 76) = v35;
  if (v21 >= 0.0)
  {
    v39 = powf(v21 * 0.0001, 0.1593);
    v38 = powf(((v39 * 18.852) + 0.83594) / ((v39 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v37 = powf(v21 * -0.0001, 0.1593);
    v38 = 0.0000014619 - powf(((v37 * 18.852) + 0.83594) / ((v37 * 18.688) + 1.0), 78.844);
  }

  *(a4 + 80) = v38;
  v40 = *(a1 + 80);
  *(a4 + 24) = v40;
  if (v40 >= 0.0)
  {
    v43 = powf(v40 * 0.0001, 0.1593);
    v42 = powf(((v43 * 18.852) + 0.83594) / ((v43 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v41 = powf(v40 * -0.0001, 0.1593);
    v42 = 0.0000014619 - powf(((v41 * 18.852) + 0.83594) / ((v41 * 18.688) + 1.0), 78.844);
  }

  *(a4 + 56) = v42;
  v430 = v7;
  if (GetConfig())
  {
    Config = GetConfig();
    v48 = *HDRConfig::GetConfigEntryValue(Config, 0x95u, 0);
  }

  else
  {
    v48 = 0;
  }

  *(a4 + 1396) = v48;
  if (*(a1 + 104) == 1 && !*(a1 + 116))
  {
    *(a4 + 1396) = 0;
  }

  if (*(a1 + 16) == 26)
  {
    *(a4 + 1396) = -1;
  }

  v49 = *(a2 + 493);
  if (v49 == 1)
  {
    *(a4 + 1380) = v15;
    v50 = *(a4 + 44);
    if (*(a1 + 124) >= v50)
    {
      v51 = *(a4 + 44);
    }

    else
    {
      v51 = *(a1 + 124);
    }

    if (v14 >= v50)
    {
      v52 = *(a4 + 44);
    }

    else
    {
      v52 = v14;
    }

    v53 = fmax(fmin(((v51 - v15) / (v52 - v15)), 1.0), 0.0);
    *(a4 + 1384) = v53;
    if (v15 >= 0.0)
    {
      v57 = powf(v15 * 0.0001, 0.1593);
      v55 = powf(((v57 * 18.852) + 0.83594) / ((v57 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v54 = powf(v15 * -0.0001, 0.1593);
      v55 = 0.0000014619 - powf(((v54 * 18.852) + 0.83594) / ((v54 * 18.688) + 1.0), 78.844);
    }

    *(a4 + 1388) = v55;
    if (v51 >= 0.0)
    {
      v60 = powf(v51 * 0.0001, 0.1593);
      v59 = powf(((v60 * 18.852) + 0.83594) / ((v60 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v58 = powf(v51 * -0.0001, 0.1593);
      v59 = 0.0000014619 - powf(((v58 * 18.852) + 0.83594) / ((v58 * 18.688) + 1.0), 78.844);
    }

    if (v15 >= 0.0)
    {
      v63 = powf(v15 * 0.0001, 0.1593);
      v62 = powf(((v63 * 18.852) + 0.83594) / ((v63 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v61 = powf(v15 * -0.0001, 0.1593);
      v62 = 0.0000014619 - powf(((v61 * 18.852) + 0.83594) / ((v61 * 18.688) + 1.0), 78.844);
    }

    if (v52 >= 0.0)
    {
      v66 = powf(v52 * 0.0001, 0.1593);
      v65 = powf(((v66 * 18.852) + 0.83594) / ((v66 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v64 = powf(v52 * -0.0001, 0.1593);
      v65 = 0.0000014619 - powf(((v64 * 18.852) + 0.83594) / ((v64 * 18.688) + 1.0), 78.844);
    }

    v67 = v59 - v62;
    if (v15 >= 0.0)
    {
      v70 = powf(v15 * 0.0001, 0.1593);
      v69 = powf(((v70 * 18.852) + 0.83594) / ((v70 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v68 = powf(v15 * -0.0001, 0.1593);
      v69 = 0.0000014619 - powf(((v68 * 18.852) + 0.83594) / ((v68 * 18.688) + 1.0), 78.844);
    }

    v56 = fmax(fmin((v67 / (v65 - v69)), 1.0), 0.0);
  }

  else
  {
    *(a4 + 1380) = 0;
    *(a4 + 1384) = 1065353216;
    v56 = 1.0;
  }

  *(a4 + 1392) = v56;
  v71 = __dst;
  switch(LODWORD(v431))
  {
    case 1:
      *(a4 + 84) = 1;
      *(a4 + 88) = 4;
      v72 = v9;
      v74 = *(a4 + 60);
      v73 = *(a4 + 64);
      v75 = v74 / v73;
      v77 = *(a4 + 76);
      v76 = *(a4 + 80);
      v78 = v72 * *(a4 + 48);
      v79 = v77 / v76;
      if (v78 >= 0.0)
      {
        v234 = powf(v78 * 0.0001, 0.1593);
        v81 = powf(((v234 * 18.852) + 0.83594) / ((v234 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v80 = powf(v78 * -0.0001, 0.1593);
        v81 = 0.0000014619 - powf(((v80 * 18.852) + 0.83594) / ((v80 * 18.688) + 1.0), 78.844);
      }

      v235 = v75 / v79;
      v236 = v81 * 0.65;
      v237 = ((v236 + (v236 * (1.0 / (v74 / v77)))) * 0.5) + ((1.0 - (((1.0 - (1.0 / (v74 / v77))) / 0.74254) * ((1.0 - (1.0 / (v74 / v77))) / 0.74254))) * (v236 - ((v236 + (v236 * (1.0 / (v74 / v77)))) * 0.5)));
      v238 = *(a4 + 52) / v73;
      v239 = v236 / v73;
      *(a4 + 92) = v238;
      *(a4 + 96) = v239;
      *(a4 + 100) = v75;
      *(a4 + 104) = 1065353216;
      v240 = *(a4 + 68) / v76;
      v241 = v237 / v76;
      *(a4 + 116) = v240;
      *(a4 + 120) = v237 / v76;
      *(a4 + 124) = v79;
      *(a4 + 128) = 1065353216;
      if (v239 <= (v237 / v76))
      {
        v242 = v75 / v79;
        v71 = v430;
        if (v239 != 0.0)
        {
          v242 = v241 / v239;
        }
      }

      else
      {
        v242 = v75 / v79;
        v71 = v430;
        if (v75 != v239)
        {
          v242 = (v79 - v241) / (v75 - v239);
        }
      }

      if (v239 != v238)
      {
        v235 = (v241 - v240) / (v239 - v238);
      }

      v243 = 1.0;
      v244 = 1.0;
      if (v75 != v239)
      {
        v244 = (v79 - v241) / (v75 - v239);
      }

      if (v75 != 1.0)
      {
        v243 = (1.0 - v79) / (1.0 - v75);
      }

      *(a4 + 140) = v235;
      *(a4 + 144) = v242;
      v245 = (1.0 / v242) * (v244 * v244);
      v246 = 1.0 / v245;
      v247 = v243 * v243;
      goto LABEL_232;
    case 2:
      v168 = v9;
      *(a4 + 84) = 1;
      *(a4 + 88) = 4;
      v169 = *(a4 + 60);
      v170 = *(a4 + 64);
      v171 = *(a4 + 76);
      v172 = *(a4 + 80);
      v173 = v169 / v170;
      v174 = v171 / v172;
      v175 = (v169 / v170) / (v171 / v172);
      v176 = v171 * 0.5;
      v177 = ((v171 * 0.5) * (1.0 / (v169 / v171))) + (((v171 * 0.5) - ((v171 * 0.5) * (1.0 / (v169 / v171)))) * 0.5);
      v178 = *(a4 + 52) / v170;
      v179 = v176 / v170;
      *(a4 + 92) = v178;
      *(a4 + 96) = v176 / v170;
      *(a4 + 100) = v173;
      *(a4 + 104) = 1065353216;
      v180 = *(a4 + 68) / v172;
      v181 = v177 / v172;
      *(a4 + 116) = v180;
      *(a4 + 120) = v181;
      *(a4 + 124) = v174;
      *(a4 + 128) = 1065353216;
      if (v179 == 0.0)
      {
        v182 = v175;
      }

      else
      {
        v182 = v181 / v179;
      }

      if (v179 != v178)
      {
        v175 = (v181 - v180) / (v179 - v178);
      }

      *(a4 + 140) = v175;
      *(a4 + 144) = v182;
      if (v8 == 1)
      {
        v183 = v168 * *(a4 + 48);
        if (v183 >= 0.0)
        {
          v333 = powf(v183 * 0.0001, 0.1593);
          v185 = powf(((v333 * 18.852) + 0.83594) / ((v333 * 18.688) + 1.0), 78.844);
        }

        else
        {
          v184 = powf(v183 * -0.0001, 0.1593);
          v185 = 0.0000014619 - powf(((v184 * 18.852) + 0.83594) / ((v184 * 18.688) + 1.0), 78.844);
        }

        v181 = ((v176 * v185) / 0.50808) / v172;
        *(a4 + 120) = v181;
      }

      v334 = 1.0;
      v335 = 1.0;
      v71 = v430;
      if (v173 != v179)
      {
        v335 = (v174 - v181) / (v173 - v179);
      }

      if (v173 != 1.0)
      {
        v334 = (1.0 - v174) / (1.0 - v173);
      }

      v329 = (1.0 / v182) * (v335 * v335);
      v330 = (1.0 / v329) * (v334 * v334);
      goto LABEL_241;
    case 3:
      v122 = v9;
      *(a4 + 84) = 1;
      *(a4 + 88) = 4;
      v123 = *(a4 + 60);
      v124 = *(a4 + 64);
      v125 = *(a4 + 76);
      v126 = *(a4 + 80);
      v127 = 1.0 / (v123 / v125);
      v128 = v123 / v124;
      v129 = v125 / v126;
      v130 = (v123 / v124) / (v125 / v126);
      v131 = (v127 * v127) * 0.5;
      v132 = *(a4 + 52);
      v133 = *(a4 + 68);
      v134 = v132 + ((v125 - v133) * 0.5);
      if ((v133 + (v134 - v132)) < v125)
      {
        v125 = v133 + (v134 - v132);
      }

      v135 = v133 + ((v134 - v132) * v127);
      if (v133 >= v135)
      {
        v136 = *(a4 + 68);
      }

      else
      {
        v136 = v135;
      }

      v137 = v136 + ((v125 - v136) * v131);
      v138 = v132 / v124;
      v139 = v134 / v124;
      *(a4 + 92) = v132 / v124;
      *(a4 + 96) = v134 / v124;
      *(a4 + 100) = v128;
      *(a4 + 104) = 1065353216;
      v140 = v137 / v126;
      *(a4 + 116) = v133 / v126;
      *(a4 + 120) = v137 / v126;
      *(a4 + 124) = v129;
      *(a4 + 128) = 1065353216;
      v141 = (v137 / v126) / v139;
      if (v139 == 0.0)
      {
        v142 = v130;
      }

      else
      {
        v142 = v141;
      }

      if (v139 != v138)
      {
        v130 = (v140 - (v133 / v126)) / (v139 - v138);
      }

      *(a4 + 140) = v130;
      *(a4 + 144) = v142;
      if (v8 == 1)
      {
        v143 = v122 * *(a4 + 48);
        if (v143 >= 0.0)
        {
          v326 = powf(v143 * 0.0001, 0.1593);
          v145 = powf(((v326 * 18.852) + 0.83594) / ((v326 * 18.688) + 1.0), 78.844);
        }

        else
        {
          v144 = powf(v143 * -0.0001, 0.1593);
          v145 = 0.0000014619 - powf(((v144 * 18.852) + 0.83594) / ((v144 * 18.688) + 1.0), 78.844);
        }

        v140 = (v136 + ((((v134 * v145) / 0.50808) - v136) * v10)) / v126;
        *(a4 + 120) = v140;
      }

      v327 = 1.0;
      v328 = 1.0;
      v71 = v430;
      if (v128 != v139)
      {
        v328 = (v129 - v140) / (v128 - v139);
      }

      if (v128 != 1.0)
      {
        v327 = (1.0 - v129) / (1.0 - v128);
      }

      v329 = (1.0 / v142) * (v328 * v328);
      v330 = (1.0 / v329) * (v327 * v327);
LABEL_241:
      *(a4 + 148) = v329;
      *(a4 + 152) = v330;
      goto LABEL_318;
    case 4:
      *(a4 + 84) = 1;
      *(a4 + 88) = 4;
      v146 = *(a4 + 76);
      v147 = *(a4 + 80);
      v148 = v146 / v147;
      v149 = *(a4 + 60);
      v150 = *(a4 + 64);
      v151 = v149 / v150;
      v152 = *(a4 + 68);
      v153 = v152 + ((v146 - v152) * 0.5);
      v154 = v153 + (((v149 - (v146 - v153)) - v153) * 0.2);
      v155 = *(a4 + 52) / v150;
      v156 = v154 / v150;
      *(a4 + 92) = v155;
      *(a4 + 96) = v154 / v150;
      *(a4 + 100) = v151;
      *(a4 + 104) = 1065353216;
      v157 = v152 / v147;
      v158 = v153 / v147;
      *(a4 + 116) = v157;
      *(a4 + 120) = v153 / v147;
      *(a4 + 124) = v146 / v147;
      *(a4 + 128) = 1065353216;
      v159.f32[0] = v150 / v147;
      v160 = v150 / v147;
      if ((v154 / v150) != v155)
      {
        v160 = (v158 - v157) / (v156 - v155);
      }

      v161 = v9;
      v162 = v150 / v147;
      if (v151 != v156)
      {
        v162 = (v148 - v158) / (v151 - v156);
      }

      v163 = v159.f32[0];
      *v44.i32 = v148 / v151;
      v71 = v430;
      if (v151 != 1.0)
      {
        v163 = (1.0 - v148) / (1.0 - v151);
      }

      v159.f32[1] = v162;
      *(a4 + 140) = v44.i32[0];
      v164 = vmul_f32(vadd_f32(vdup_lane_s32(v44, 0), v159), 0x3F0000003F000000);
      *(a4 + 144) = v164;
      if (v8 == 1)
      {
        v421 = v164.i32[0];
        v426 = v162;
        v165 = v161 * *(a4 + 48);
        if (v165 >= 0.0)
        {
          v331 = powf(v165 * 0.0001, 0.1593);
          v167 = powf(((v331 * 18.852) + 0.83594) / ((v331 * 18.688) + 1.0), 78.844);
        }

        else
        {
          v166 = powf(v165 * -0.0001, 0.1593);
          v167 = 0.0000014619 - powf(((v166 * 18.852) + 0.83594) / ((v166 * 18.688) + 1.0), 78.844);
        }

        *(a4 + 120) = (v153 + ((((v154 * v167) / 0.50808) - v153) * v10)) / v147;
        v164.i32[0] = v421;
        v162 = v426;
      }

      v332 = 1.0 / v164.f32[0];
      *(a4 + 140) = v332 * (v160 * v160);
      v245 = v332 * (v162 * v162);
      v246 = 1.0 / v245;
      v247 = v163 * v163;
LABEL_232:
      v325 = v246 * v247;
      goto LABEL_233;
    case 5:
      if ((v49 & 1) == 0)
      {
        *(a4 + 20) = v420.i32[0];
        if (vcgt_f32(v420, v424).u8[0])
        {
          v89 = v420.f32[0];
        }

        else
        {
          v89 = v424.f32[0];
        }

        *(a4 + 36) = v89;
        *(a4 + 48) = v424.i32[1];
        if (v420.f32[0] >= 0.0)
        {
          v92 = &off_2508CD000;
          v287 = powf(v420.f32[0] * 0.0001, 0.1593);
          v91 = powf(((v287 * 18.852) + 0.83594) / ((v287 * 18.688) + 1.0), 78.844);
        }

        else
        {
          v90 = powf(v420.f32[0] * -0.0001, 0.1593);
          v91 = 0.0000014619 - powf(((v90 * 18.852) + 0.83594) / ((v90 * 18.688) + 1.0), 78.844);
          v92 = &off_2508CD000;
        }

        *(a4 + 52) = v91;
        if (v89 >= 0.0)
        {
          v290 = powf(v89 * *(v92 + 607), 0.1593);
          v289 = powf(((v290 * 18.852) + 0.83594) / ((v290 * 18.688) + 1.0), 78.844);
        }

        else
        {
          v288 = powf(v89 * -0.0001, 0.1593);
          v289 = 0.0000014619 - powf(((v288 * 18.852) + 0.83594) / ((v288 * 18.688) + 1.0), 78.844);
        }

        *(a4 + 68) = v289;
        if (v424.f32[1] >= 0.0)
        {
          v293 = powf(v424.f32[1] * *(v92 + 607), 0.1593);
          v292 = powf(((v293 * 18.852) + 0.83594) / ((v293 * 18.688) + 1.0), 78.844);
        }

        else
        {
          v291 = powf(v424.f32[1] * -0.0001, 0.1593);
          v292 = 0.0000014619 - powf(((v291 * 18.852) + 0.83594) / ((v291 * 18.688) + 1.0), 78.844);
        }

        *(a4 + 80) = v292;
      }

      v294 = *(a1 + 80);
      *(a4 + 24) = v294;
      v417 = v9;
      v419 = v10;
      if (v294 >= 0.0)
      {
        v297 = &off_2508CD000;
        v298 = powf(v294 * 0.0001, 0.1593);
        v296 = powf(((v298 * 18.852) + 0.83594) / ((v298 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v295 = powf(v294 * -0.0001, 0.1593);
        v296 = 0.0000014619 - powf(((v295 * 18.852) + 0.83594) / ((v295 * 18.688) + 1.0), 78.844);
        v297 = &off_2508CD000;
      }

      *(a4 + 56) = v296;
      *(a4 + 84) = 1;
      *(a4 + 88) = 4;
      v300 = *(a4 + 60);
      v299 = *(a4 + 64);
      v301 = *(a4 + 76);
      v428 = *(a4 + 80);
      v302 = v299 / v428;
      v303 = *(a4 + 68);
      v304 = v301 - v303;
      v305 = *(a4 + 52);
      v306 = v303 + ((v301 - v303) * 0.5);
      v71 = v430;
      if (v301 <= v300)
      {
        v310 = powf(1.0 - (v304 / (v300 - v305)), 0.25);
        v308 = v303 + ((v301 - v303) * 0.5);
        v309 = v306 + (((v300 - (v301 - v306)) - v306) * (v310 * 0.45));
      }

      else
      {
        v307 = powf((v306 - v303) / v304, 1.0 / (((((v301 - v300) * 0.078125) / (0.90234 - v300)) + 1.0) + -0.05));
        v308 = v303 + ((v301 - v303) * 0.5);
        v309 = v303 + ((v307 / (v301 / v300)) * v304);
      }

      v311 = v305 / v299;
      v312 = v309 / v299;
      *(a4 + 92) = v305 / v299;
      *(a4 + 96) = v309 / v299;
      v313 = v300 / v299;
      *(a4 + 100) = v313;
      *(a4 + 104) = 1065353216;
      v314 = v308 / v428;
      *(a4 + 116) = v303 / v428;
      *(a4 + 120) = v308 / v428;
      v315 = v301 / v428;
      *(a4 + 124) = v301 / v428;
      *(a4 + 128) = 1065353216;
      v316 = (v308 / v428) / v312;
      if (v312 == 0.0)
      {
        v316 = v302;
      }

      v317 = v302;
      if (v312 != v311)
      {
        v317 = (v314 - (v303 / v428)) / (v312 - v311);
      }

      v318 = v302;
      if (v313 != v312)
      {
        v318 = (v315 - v314) / (v313 - v312);
      }

      v319 = v302;
      if (v313 != 1.0)
      {
        v319 = (1.0 - v315) / (1.0 - v313);
      }

      v320 = v316 + ((v302 - v316) * 0.25);
      if (v8 == 1)
      {
        v423 = v308;
        v321 = v417 * *(a4 + 48);
        if (v321 >= 0.0)
        {
          v324 = powf(v321 * *(v297 + 607), 0.1593);
          v323 = powf(((v324 * 18.852) + 0.83594) / ((v324 * 18.688) + 1.0), 78.844);
        }

        else
        {
          v322 = powf(v321 * -0.0001, 0.1593);
          v323 = 0.0000014619 - powf(((v322 * 18.852) + 0.83594) / ((v322 * 18.688) + 1.0), 78.844);
        }

        *(a4 + 120) = (v423 + ((((v309 * v323) / 0.50808) - v423) * v419)) / v428;
      }

      v245 = (1.0 / v320) * (v318 * v318);
      *(a4 + 128) = v315 + ((1.0 - v313) * v245);
      *(a4 + 140) = (1.0 / v320) * (v317 * v317);
      *(a4 + 144) = v320;
      v325 = (1.0 / v245) * (v319 * v319);
LABEL_233:
      *(a4 + 148) = v245;
      *(a4 + 152) = v325;
      goto LABEL_318;
    case 6:
      v186 = *(a4 + 64);
      v187 = *(a4 + 52) / v186;
      v188 = *(a4 + 60) / v186;
      *(a4 + 92) = v187;
      *(a4 + 96) = v188;
      v189 = *(a4 + 80);
      v190 = *(a4 + 68) / v189;
      v191 = *(a4 + 76) / v189;
      *(a4 + 84) = 1;
      *(a4 + 88) = 3;
      *(a4 + 100) = 1065353216;
      *(a4 + 116) = v190;
      *(a4 + 120) = v191;
      *(a4 + 124) = 1065353216;
      *(a4 + 164) = 262149;
      *(a4 + 176) = xmmword_2508D1A00;
      *(a4 + 232) = 0x3F0000003E800000;
      *(a4 + 240) = 1061158912;
      v71 = v430;
      goto LABEL_323;
    case 7:
    case 8:
      *(a4 + 84) = 2;
      dovi_calculateTonemapCurveParamS(a1, a2, __dst);
      *(a4 + 88) = *&__dst[11];
      *(a4 + 20) = *&__dst[3];
      *(a4 + 36) = *&__dst[5];
      *(a4 + 52) = *&__dst[7];
      *(a4 + 68) = *&__dst[9];
      goto LABEL_123;
    case 9:
      v208 = *(a1 + 68);
      v209 = *(a1 + 80);
      if (v208 >= 0.0)
      {
        v212 = &off_2508CD000;
        v255 = powf(v208 * 0.0001, 0.1593);
        v211 = powf(((v255 * 18.852) + 0.83594) / ((v255 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v210 = powf(v208 * -0.0001, 0.1593);
        v211 = 0.0000014619 - powf(((v210 * 18.852) + 0.83594) / ((v210 * 18.688) + 1.0), 78.844);
        v212 = &off_2508CD000;
      }

      v256 = *(a1 + 72);
      if (v256 >= 0.0)
      {
        v259 = powf(v256 * *(v212 + 607), 0.1593);
        v258 = powf(((v259 * 18.852) + 0.83594) / ((v259 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v257 = powf(v256 * -0.0001, 0.1593);
        v258 = 0.0000014619 - powf(((v257 * 18.852) + 0.83594) / ((v257 * 18.688) + 1.0), 78.844);
      }

      v71 = v430;
      v416 = v9;
      v418 = v10;
      if (v209 >= 0.0)
      {
        v262 = powf(v209 * *(v212 + 607), 0.1593);
        v261 = powf(((v262 * 18.852) + 0.83594) / ((v262 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v260 = powf(v209 * -0.0001, 0.1593);
        v261 = 0.0000014619 - powf(((v260 * 18.852) + 0.83594) / ((v260 * 18.688) + 1.0), 78.844);
      }

      *(a4 + 84) = 1;
      *(a4 + 88) = 4;
      v263 = *(a4 + 76);
      v264 = *(a4 + 60);
      v265 = *(a4 + 68);
      v266 = *(a4 + 52);
      v267 = powf((v261 - v211) / (v258 - v211), ((v263 - v265) / (v264 - v266)) * 4.0);
      v268 = v265 + ((v263 - v265) * 0.5);
      v269 = v268 + (((v264 - (v263 - v268)) - v268) * v267);
      *(a4 + 92) = v266;
      *(a4 + 96) = v269;
      v270.i32[0] = *(a4 + 64);
      *(a4 + 100) = v264;
      *(a4 + 104) = v270.i32[0];
      *(a4 + 116) = v265;
      *(a4 + 120) = v268;
      v271.i32[0] = *(a4 + 80);
      *(a4 + 124) = v263;
      *(a4 + 128) = v271.i32[0];
      v272 = 1.0;
      v273 = 1.0;
      if (v269 != v266)
      {
        v273 = (v268 - v265) / (v269 - v266);
      }

      if (v264 != v269)
      {
        v272 = (v263 - v268) / (v264 - v269);
      }

      v274 = (((v263 / v264) + -1.0) * v267) + 1.0;
      if (v8 == 1)
      {
        v422 = v271;
        v427 = v270;
        v275 = v416 * *(a4 + 48);
        if (v275 >= 0.0)
        {
          v336 = powf(v275 * *(v212 + 607), 0.1593);
          v277 = powf(((v336 * 18.852) + 0.83594) / ((v336 * 18.688) + 1.0), 78.844);
        }

        else
        {
          v276 = powf(v275 * -0.0001, 0.1593);
          v277 = 0.0000014619 - powf(((v276 * 18.852) + 0.83594) / ((v276 * 18.688) + 1.0), 78.844);
        }

        *(a4 + 120) = v268 + ((((v269 * v277) / 0.50808) - v268) * v418);
        v271 = v422;
        v270 = v427;
      }

      *(a4 + 140) = (v273 * v273) * (1.0 / *(a4 + 144));
      *(a4 + 144) = v274;
      v337 = (1.0 / v274) * (v272 * v272);
      *(a4 + 148) = v337;
      *(a4 + 152) = v337;
      *(a4 + 128) = v263 + ((*v270.i32 - v264) * v337);
      *(a4 + 92) = vdivq_f32(*(a4 + 92), vdupq_lane_s32(v270, 0));
      *(a4 + 116) = vdivq_f32(*(a4 + 116), vdupq_lane_s32(v271, 0));
      _Q0 = vmulq_n_f32(*(a4 + 140), *v270.i32 / *v271.i32);
      goto LABEL_245;
    case 0xA:
      if (*(a1 + 192) != 5)
      {
        __assert_rtn("hdr10_calculateTonemapCurveParamS", "hdr10_display_management_host.mm", 648, "pPercentiles->n == 5");
      }

      _ZF = *(a1 + 200) == 0;
      v96 = 164;
      if (*(a1 + 200))
      {
        v96 = 160;
      }

      v97 = *(a1 + v96);
      v98 = 172;
      if (*(a1 + 200))
      {
        v98 = 176;
      }

      v99 = *(a1 + 168);
      v100 = v97 / v99;
      v101 = (*(a1 + v98) - v99) / (1.0 - v99);
      *(a4 + 84) = 0;
      *(a4 + 88) = 6;
      v102 = 132;
      if (!_ZF)
      {
        v102 = 128;
      }

      v103 = *(a1 + v102);
      v104 = *(a4 + 60);
      v45.i32[0] = *(a4 + 64);
      v105 = *(a4 + 76);
      v46.i32[0] = *(a4 + 80);
      v106 = v104 / v105;
      v107 = 140;
      if (!_ZF)
      {
        v107 = 144;
      }

      v108 = *(a1 + v107);
      v109.i32[0] = *(a1 + 136);
      v110.f32[0] = (v109.f32[0] / v106) + (v99 * (1.0 - (1.0 / v106)));
      v111 = (v103 / v106) + (v100 * (v110.f32[0] - (v109.f32[0] / v106)));
      v112.i32[0] = *(a4 + 52);
      v112.f32[1] = v104 * v111;
      v110.f32[1] = (v110.f32[0] + ((v108 - v109.f32[0]) / v106)) + (v101 * ((1.0 - v110.f32[0]) - ((1.0 - v109.f32[0]) / v106)));
      *&v112.u32[2] = vmul_n_f32(v110, v104);
      *(a4 + 92) = vdivq_f32(v112, vdupq_lane_s32(v45, 0));
      *(a4 + 108) = v104 / *v45.i32;
      *(a4 + 112) = 1065353216;
      v113.i32[0] = *(a4 + 68);
      v112.f32[0] = v109.f32[0] - v103;
      v109.f32[1] = v108;
      v113.f32[1] = v105 * v103;
      *&v113.u32[2] = vmul_n_f32(v109, v105);
      *(a4 + 116) = vdivq_f32(v113, vdupq_lane_s32(v46, 0));
      *(a4 + 132) = v105 / *v46.i32;
      *(a4 + 136) = 1065353216;
      v114 = v103 / v111;
      v115 = (v108 - v109.f32[0]) / (v110.f32[1] - v111);
      v116 = (1.0 - v108) / (1.0 - v110.f32[1]);
      v117 = v114 + (((v112.f32[0] / (v110.f32[0] - v111)) - v114) * v100);
      v118 = v115 + ((v116 - v115) * v101);
      v119.f32[0] = v114 * v114 * (1.0 / v117);
      v120 = v116 * v116 * (1.0 / v118);
      v119.f32[1] = v117;
      v119.f32[2] = (v112.f32[0] / (v110.f32[0] - v111)) + ((v115 - (v112.f32[0] / (v110.f32[0] - v111))) * v99);
      v119.f32[3] = v118;
      *(a4 + 140) = vmulq_n_f32(v119, *v45.i32 / *v46.i32);
      v121 = (*v45.i32 / *v46.i32) * v120;
      *(a4 + 156) = v121;
      *(a4 + 160) = v121;
LABEL_123:
      v71 = v430;
      goto LABEL_318;
    case 0xB:
      *(a4 + 84) = 3;
      v194 = *(a4 + 52);
      v195 = *(a4 + 60);
      v196 = *(a4 + 68);
      if (*(a4 + 76) >= v195)
      {
        v197 = *(a4 + 60);
      }

      else
      {
        v197 = *(a4 + 76);
      }

      v198 = *(a1 + 96);
      if (v198 >= 0.0)
      {
        v254 = powf(v198 * 0.0001, 0.1593);
        LODWORD(v205) = powf(((v254 * 18.852) + 0.83594) / ((v254 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v199 = powf(v198 * -0.0001, 0.1593);
        *&v205 = 0.0000014619 - powf(((v199 * 18.852) + 0.83594) / ((v199 * 18.688) + 1.0), 78.844);
      }

      v71 = v430;
      if (v430)
      {
        LODWORD(v207) = *(a1 + 124);
        LODWORD(v200) = v194;
        *&v201 = v195;
        LODWORD(v202) = v196;
        LODWORD(v203) = v197;
        LODWORD(v204) = v194;
        *&v206 = v195;
        [v430 createToneCurve:0 srcMaxPQ:0 tgtMinPQ:1 tgtMaxPQ:v200 srcCrushPQ:v201 srcMidPQ:v202 srcClipPQ:v203 targetMaxLinear:v204 DM_MetaData:v205 tcCtrl:v206 dm4TmMode:v207];
      }

      goto LABEL_318;
    case 0xC:
      *(a4 + 84) = 3;
      v425 = *(a4 + 52);
      v82 = *(a4 + 60);
      v83 = *(a4 + 68);
      if (*(a4 + 76) >= v82)
      {
        v84 = *(a4 + 60);
      }

      else
      {
        v84 = *(a4 + 76);
      }

      v85 = *(a1 + 68);
      if (v85 >= 0.0)
      {
        v88 = &off_2508CD000;
        v213 = powf(v85 * 0.0001, 0.1593);
        v87 = powf(((v213 * 18.852) + 0.83594) / ((v213 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v86 = powf(v85 * -0.0001, 0.1593);
        v87 = 0.0000014619 - powf(((v86 * 18.852) + 0.83594) / ((v86 * 18.688) + 1.0), 78.844);
        v88 = &off_2508CD000;
      }

      v214 = *(a1 + 80);
      if (v214 >= 0.0)
      {
        v217 = powf(v214 * *(v88 + 607), 0.1593);
        v216 = powf(((v217 * 18.852) + 0.83594) / ((v217 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v215 = powf(v214 * -0.0001, 0.1593);
        v216 = 0.0000014619 - powf(((v215 * 18.852) + 0.83594) / ((v215 * 18.688) + 1.0), 78.844);
      }

      v71 = v430;
      v218 = *(a1 + 72);
      if (v218 >= 0.0)
      {
        v228 = powf(v218 * *(v88 + 607), 0.1593);
        LODWORD(v221) = powf(((v228 * 18.852) + 0.83594) / ((v228 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v219 = powf(v218 * -0.0001, 0.1593);
        *&v221 = 0.0000014619 - powf(((v219 * 18.852) + 0.83594) / ((v219 * 18.688) + 1.0), 78.844);
      }

      v229 = v14 < 1000.0 && v14 >= *(a4 + 16);
      if (*(a1 + 198) == 1 && *(a1 + 112) == 1)
      {
        v230 = *(a1 + 200) == 0 && v229;
        if (v218 > v19)
        {
          v230 = 0;
        }
      }

      else
      {
        v230 = 0;
      }

      v231 = *(a1 + 124);
      *__dst = v216;
      LODWORD(v432) = LODWORD(v221);
      if (*(a2 + 484) || *(a1 + 116) != 1)
      {
        if (v230)
        {
          if (GetConfig())
          {
            v232 = GetConfig();
            v233 = *HDRConfig::GetConfigEntryValue(v232, 0x67u, 0);
          }

          else
          {
            v233 = 0.0;
          }

          v391 = v218 * v233;
          if (v391 >= v19)
          {
            v391 = v19;
          }

          if (v391 >= 0.0)
          {
            v393 = powf(v391 * *(v88 + 607), 0.1593);
            *&v220 = powf(((v393 * 18.852) + 0.83594) / ((v393 * 18.688) + 1.0), 78.844);
          }

          else
          {
            v392 = powf(v391 * -0.0001, 0.1593);
            *&v220 = 0.0000014619 - powf(((v392 * 18.852) + 0.83594) / ((v392 * 18.688) + 1.0), 78.844);
          }

          LODWORD(v432) = LODWORD(v220);
        }
      }

      else
      {
        adjustDovi84DM4Stats(v216, *&v221, a2, a1, __dst, &v432);
      }

      if (*(a1 + 112) == 2 && *(a1 + 116) == 1)
      {
        if (*(a2 + 508))
        {
          v394 = 5;
        }

        else
        {
          v394 = 1;
        }
      }

      else
      {
        v394 = 3;
      }

      v395 = *__dst;
      v396 = *&v432;
      if (v430)
      {
        LODWORD(v220) = v425;
        *&v221 = v82;
        LODWORD(v222) = v83;
        LODWORD(v223) = v84;
        *&v224 = v87;
        LODWORD(v225) = __dst[0];
        LODWORD(v226) = v432;
        LODWORD(v227) = v231;
        [v430 createToneCurve:0 srcMaxPQ:0 tgtMinPQ:v394 tgtMaxPQ:v220 srcCrushPQ:v221 srcMidPQ:v222 srcClipPQ:v223 targetMaxLinear:v224 DM_MetaData:v225 tcCtrl:v226 dm4TmMode:v227];
      }

      *(a4 + 20) = *(a1 + 68);
      v397 = -(v395 + -0.0000014619);
      if (v395 >= 0.00000073096)
      {
        v397 = v395;
      }

      v429 = v87;
      v398 = -10000.0;
      if (v395 >= 0.00000073096)
      {
        v399 = 10000.0;
      }

      else
      {
        v399 = -10000.0;
      }

      v415 = v399;
      v400 = powf(v397, 0.012683);
      v401 = fmax(((v400 + -0.83594) / ((v400 * -18.688) + 18.852)), 0.0);
      *(a4 + 24) = v415 * powf(v401, 6.2774);
      v402 = -(v396 + -0.0000014619);
      if (v396 >= 0.00000073096)
      {
        v402 = v396;
        v398 = 10000.0;
      }

      v403 = powf(v402, 0.012683);
      v404 = fmax(((v403 + -0.83594) / ((v403 * -18.688) + 18.852)), 0.0);
      *(a4 + 28) = v398 * powf(v404, 6.2774);
      *(a4 + 52) = v429;
      *(a4 + 56) = v395;
      *(a4 + 60) = v396;
      goto LABEL_318;
    case 0xD:
      *(a4 + 84) = 4;
      *(a4 + 96) = *(a1 + 212);
      *(a4 + 140) = 1065353216;
      *(a4 + 148) = 0;
      *(a4 + 152) = xmmword_2508D19F0;
      *(a4 + 168) = 0;
      if (GetConfig())
      {
        v93 = GetConfig();
        v94 = *HDRConfig::GetConfigEntryValue(v93, 0x9Au, 0);
      }

      else
      {
        v94 = 0;
      }

      v278 = *(a1 + 72);
      *(a4 + 28) = v278;
      v279 = *(a4 + 44);
      if (v279 >= v278)
      {
        v279 = v278;
      }

      *(a4 + 44) = v279;
      *(a4 + 24) = *(a1 + 80);
      if (v278 >= *(a1 + 256))
      {
        v280 = *(a1 + 256);
      }

      else
      {
        v280 = v278;
      }

      v282 = *(a1 + 204);
      v281 = *(a1 + 208);
      v283 = *(a1 + 216);
      v284 = *(a1 + 236);
      v437 = *(a1 + 220);
      v438 = v284;
      v439 = *(a1 + 252);
      if (v279 >= v280)
      {
        v285 = v278 - v280;
        if (v285 == 0.0)
        {
          v286 = 0.0;
        }

        else
        {
          v286 = (v279 - v280) / v285;
        }

        *(a4 + 152) = v286;
      }

      v414 = a2;
      if (GetConfig() && (v338 = GetConfig(), *HDRConfig::GetConfigEntryValue(v338, 0x6Bu, 0) == 1))
      {
        v339 = v94;
        if (v282 != 0.0)
        {
          v283 = v281 / ((v282 * (1.0 - v281)) * 10.0);
        }
      }

      else
      {
        v339 = v94;
      }

      *(a4 + 100) = v283;
      *(a4 + 144) = v280;
      *(a4 + 88) = v282;
      *(a4 + 92) = v281;
      v340 = v438;
      *(a4 + 104) = v437;
      *(a4 + 120) = v340;
      *(a4 + 136) = v439;
      v341 = *(a4 + 96) + 1;
      *(a4 + 140) = (1.0 - v281) * ebz_prime(v341, a4 + 100, (0.99805 - v282) / (1.0 - v282));
      v342 = *(a4 + 28);
      v343 = *(a4 + 24) / v342;
      if (v343 >= v282)
      {
        v344 = v281 + ((1.0 - v281) * ebz_norm(v341, (a4 + 100), (v343 - v282) / (1.0 - v282)));
      }

      else
      {
        v344 = (v281 * v343) / v282;
      }

      v345 = v280 * v344;
      v346 = *(a4 + 44);
      v71 = v430;
      if (v430 && v280 > v346 && v339 == 2)
      {
        v347 = *(a4 + 52);
        v348 = *(a4 + 60);
        v349 = *(a4 + 68);
        if (v346 >= 0.0)
        {
          v353 = powf(v346 * 0.0001, 0.1593);
          v351 = powf(((v353 * 18.852) + 0.83594) / ((v353 * 18.688) + 1.0), 78.844);
        }

        else
        {
          v350 = powf(v346 * -0.0001, 0.1593);
          v351 = 0.0000014619 - powf(((v350 * 18.852) + 0.83594) / ((v350 * 18.688) + 1.0), 78.844);
        }

        v354 = *(a1 + 68);
        if (v354 >= 0.0)
        {
          v357 = powf(v354 * 0.0001, 0.1593);
          v356 = powf(((v357 * 18.852) + 0.83594) / ((v357 * 18.688) + 1.0), 78.844);
        }

        else
        {
          v355 = powf(v354 * -0.0001, 0.1593);
          v356 = 0.0000014619 - powf(((v355 * 18.852) + 0.83594) / ((v355 * 18.688) + 1.0), 78.844);
        }

        if (v345 >= 0.0)
        {
          v360 = powf(v345 * 0.0001, 0.1593);
          v359 = powf(((v360 * 18.852) + 0.83594) / ((v360 * 18.688) + 1.0), 78.844);
        }

        else
        {
          v358 = powf(v345 * -0.0001, 0.1593);
          v359 = 0.0000014619 - powf(((v358 * 18.852) + 0.83594) / ((v358 * 18.688) + 1.0), 78.844);
        }

        if (v280 >= 0.0)
        {
          v370 = powf(v280 * 0.0001, 0.1593);
          LODWORD(v368) = powf(((v370 * 18.852) + 0.83594) / ((v370 * 18.688) + 1.0), 78.844);
        }

        else
        {
          v361 = powf(v280 * -0.0001, 0.1593);
          *&v368 = 0.0000014619 - powf(((v361 * 18.852) + 0.83594) / ((v361 * 18.688) + 1.0), 78.844);
        }

        LODWORD(v369) = *(a1 + 124);
        LODWORD(v362) = v347;
        LODWORD(v363) = v348;
        LODWORD(v364) = v349;
        *&v365 = v351;
        *&v366 = v356;
        *&v367 = v359;
        [v430 createToneCurve:0 srcMaxPQ:0 tgtMinPQ:3 tgtMaxPQ:v362 srcCrushPQ:v363 srcMidPQ:v364 srcClipPQ:v365 targetMaxLinear:v366 DM_MetaData:v367 tcCtrl:v368 dm4TmMode:{v369, v414}];
        v352 = 2;
        goto LABEL_275;
      }

      if (v280 > v346 && v339 == 1)
      {
        v435 = 0;
        memset(v434, 0, sizeof(v434));
        v432 = 0u;
        v433 = 0u;
        memcpy(__dst, a1, sizeof(__dst));
        HIDWORD(__dst[1]) = 3;
        HIDWORD(__dst[15]) = *(a1 + 124);
        *&__dst[7] = v346;
        *(&__dst[7] + 1) = v346;
        *&__dst[9] = v342;
        *&__dst[10] = v345;
        dovi_calculateTonemapCurveParamS(__dst, v414, &v432);
        *(a4 + 156) = *(&v434[3] + 8);
        *(a4 + 20) = DWORD2(v433);
        *(a4 + 36) = *(v434 + 8);
        v352 = 1;
LABEL_275:
        *(a4 + 148) = v352;
        goto LABEL_276;
      }

      if (v280 > v346 && !v339)
      {
        *(a4 + 148) = 0;
        *(a4 + 144) = v346;
      }

LABEL_276:
      v371 = *(a4 + 20);
      if (v371 >= 0.0)
      {
        v374 = powf(v371 * 0.0001, 0.1593);
        v373 = powf(((v374 * 18.852) + 0.83594) / ((v374 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v372 = powf(v371 * -0.0001, 0.1593);
        v373 = 0.0000014619 - powf(((v372 * 18.852) + 0.83594) / ((v372 * 18.688) + 1.0), 78.844);
      }

      *(a4 + 52) = v373;
      v375 = *(a4 + 36);
      if (v375 >= 0.0)
      {
        v378 = powf(v375 * 0.0001, 0.1593);
        v377 = powf(((v378 * 18.852) + 0.83594) / ((v378 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v376 = powf(v375 * -0.0001, 0.1593);
        v377 = 0.0000014619 - powf(((v376 * 18.852) + 0.83594) / ((v376 * 18.688) + 1.0), 78.844);
      }

      *(a4 + 68) = v377;
      v379 = *(a4 + 44);
      if (v379 >= 0.0)
      {
        v382 = powf(v379 * 0.0001, 0.1593);
        v381 = powf(((v382 * 18.852) + 0.83594) / ((v382 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v380 = powf(v379 * -0.0001, 0.1593);
        v381 = 0.0000014619 - powf(((v380 * 18.852) + 0.83594) / ((v380 * 18.688) + 1.0), 78.844);
      }

      *(a4 + 76) = v381;
      v383 = *(a4 + 48);
      if (v383 >= 0.0)
      {
        v386 = powf(v383 * 0.0001, 0.1593);
        v385 = powf(((v386 * 18.852) + 0.83594) / ((v386 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v384 = powf(v383 * -0.0001, 0.1593);
        v385 = 0.0000014619 - powf(((v384 * 18.852) + 0.83594) / ((v384 * 18.688) + 1.0), 78.844);
      }

      *(a4 + 80) = v385;
      v387 = *(a4 + 24);
      if (v387 >= 0.0)
      {
        v390 = powf(v387 * 0.0001, 0.1593);
        v389 = powf(((v390 * 18.852) + 0.83594) / ((v390 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v388 = powf(v387 * -0.0001, 0.1593);
        v389 = 0.0000014619 - powf(((v388 * 18.852) + 0.83594) / ((v388 * 18.688) + 1.0), 78.844);
      }

      *(a4 + 56) = v389;
LABEL_318:
      if (*(a4 + 84) == 1 && LODWORD(v431) != 6)
      {
        v405 = *(a4 + 88);
        if (v405 >= 2)
        {
          v406 = (v405 - 1);
          v407 = (a4 + 164);
          v408 = (a4 + 184);
          v409 = (a4 + 144);
          __asm { FMOV            V2.4S, #1.0 }

          do
          {
            *v407++ = 4;
            v411 = (*(v409 - 12) - *(v409 - 13)) / (*(v409 - 6) - *(v409 - 7));
            v412 = vmlaq_f32(vmulq_f32(vmaxnmq_f32(vminnmq_f32(vmlaq_n_f32(_Q2, xmmword_2508D1A20, (*v409 * v411) * 0.25), _Q2), 0), xmmword_2508D1A30), xmmword_2508D1A40, vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(xmmword_2508D1A10, (*(v409 - 1) * v411) * 0.25), _Q2), 0));
            *(v408 - 1) = v412.i64[0];
            *v408 = v412.i32[2];
            v408 += 14;
            ++v409;
            --v406;
          }

          while (v406);
        }
      }

LABEL_323:

      v413 = *MEMORY[0x277D85DE8];
      return;
    default:
      *a4 = 0;
      *(a4 + 20) = 0;
      *(a4 + 28) = v19;
      *(a4 + 32) = 1176256512;
      *(a4 + 44) = v19;
      *(a4 + 48) = 1176256512;
      if (v19 >= 0.0)
      {
        v248 = powf(v19 * 0.0001, 0.1593);
        v193 = powf(((v248 * 18.852) + 0.83594) / ((v248 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v192 = powf(v19 * -0.0001, 0.1593);
        v193 = 0.0000014619 - powf(((v192 * 18.852) + 0.83594) / ((v192 * 18.688) + 1.0), 78.844);
      }

      *(a4 + 60) = v193;
      *(a4 + 64) = 1065353216;
      *(a4 + 76) = v193;
      *(a4 + 80) = 1065353216;
      *(a4 + 88) = 4;
      *(a4 + 92) = 0;
      v249 = (v193 + 0.0) * 0.5;
      *(a4 + 96) = v249;
      *(a4 + 100) = v193;
      *(a4 + 104) = 1065353216;
      *(a4 + 116) = 0;
      *(a4 + 120) = v249;
      *(a4 + 124) = v193;
      *(a4 + 128) = 1065353216;
      __asm { FMOV            V0.4S, #1.0 }

LABEL_245:
      *(a4 + 140) = _Q0;
      goto LABEL_318;
  }
}

float hdr10_applyTonemapCurveS(const _HDR10TMParam *a1, void *a2, float a3)
{
  v5 = a2;
  v7 = v5;
  if (a1->on)
  {
    curveType = a1->tmCurveParam.curveType;
    if (curveType <= 1)
    {
      if (curveType)
      {
        if (curveType == 1)
        {
          if (a1->tmCurveParam.param.spl.XsC[0] <= a3)
          {
            n = a1->tmCurveParam.param.spl.n;
            if (n < 2)
            {
LABEL_20:
              a3 = a1->tmCurveParam.param.spl.XsC[n + 5];
            }

            else
            {
              v13 = &a1->tmCurveParam.param.spl.splCs[0][3];
              ms = a1->tmCurveParam.param.ebz.ms;
              v15 = n - 1;
              v16 = &a1->tmCurveParam.param.spl.YsC[1];
              while (1)
              {
                v17 = *(v16 - 6);
                if (v17 > a3)
                {
                  break;
                }

                v13 += 14;
                ++ms;
                ++v16;
                if (!--v15)
                {
                  goto LABEL_20;
                }
              }

              v19 = *(v16 - 7);
              v20 = v17 - v19;
              v21 = *(v16 - 1);
              if (v20 == 0.0)
              {
                a3 = *(v16 - 1);
              }

              else
              {
                v22 = *v16 - v21;
                a3 = v21 + (v22 * ebz_norm(*ms, v13, (a3 - v19) / v20));
              }
            }
          }

          else
          {
            a3 = a1->tmCurveParam.param.spl.YsC[0];
          }
        }
      }

      else
      {
        a3 = spl_apply(a1->tmCurveParam.param.spl.n, a1->tmCurveParam.param.spl.XsC, a1->tmCurveParam.param.spl.YsC, &a1->tmCurveParam.param.hdr10Plus.slopeAtTmax, a3);
      }
    }

    else
    {
      switch(curveType)
      {
        case 2:
          v10 = powf(a1->tm_Send_C * a3, a1->tmCurveParam.param.dovi.sl);
          v11 = fmax(((a1->tmCurveParam.param.spl.XsC[0] + (a1->tmCurveParam.param.spl.XsC[1] * v10)) / ((a1->tmCurveParam.param.spl.XsC[2] * v10) + 1.0)), 0.0);
          v9 = powf(v11, 0.33333);
          goto LABEL_14;
        case 3:
          if (v5)
          {
            *&v6 = a1->tm_Send_C * a3;
            [(DolbyVisionDM4 *)v5 toneMapI:v6];
            goto LABEL_14;
          }

          break;
        case 4:
          v9 = hdr10_applyTonemapCurveS_C_BezierHDR10Plus(a1->tm_Send_C * a3, a1, v5);
LABEL_14:
          a3 = v9 / a1->tm_Tend_C;
          break;
      }
    }
  }

  return a3;
}