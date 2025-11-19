float64x2_t sub_254B2659C(float64x2_t *a1, float64x2_t *a2, int a3, int a4, double a5, double a6, double a7)
{
  v8 = a2->f64[1];
  if (a3 < a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = a3;
  }

  v10 = 1.0 / v9;
  v11 = v9 + v9;
  v7 = a2->f64[0];
  v12 = (v8 * 0.0) + (v10 * v7);
  *&a7 = a3 / v11;
  v13 = v10 * v8;
  v14 = a4 / v11;
  v15 = a3;
  if (a3 < a4)
  {
    v15 = a4;
  }

  v16 = vdivq_f64(a2[1], vdupq_lane_s64(*&v15, 0));
  v17.f32[0] = v12 - *&a7;
  v18 = (v13 + (v17.f32[0] * 0.0)) - v14;
  *&a7 = ((v18 * 0.0) + (v17.f32[0] * 0.0)) + 1.0;
  v17.f32[1] = v18;
  result = vcvtq_f64_f32(vdiv_f32(v17, vdup_lane_s32(*&a7, 0)));
  *a1 = result;
  a1[1] = v16;
  return result;
}

id CreateCorrectionHomographiesWithNewImageCoordinates(void *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v6 = ICCreateCorrectionHomographiesWithNewImageCoordinates(a1, a2, a3, a4, a5, a6);

  return v6;
}

id ICCreateCorrectionHomographiesWithNewImageCoordinates(void *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v135 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = 0x277CBE000uLL;
  v85 = v9;
  v86 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  v11 = [v9 objectForKeyedSubscript:IC_A_INPUT_IMAGE_BOUNDS];
  v84 = v11;
  if (!v11)
  {
    if (a2)
    {
      v109 = *MEMORY[0x277CCA068];
      v110 = @"Missing bounds rect in corrections\n";
      v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
      *a2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"InertiaCamErrorDomain" code:2 userInfo:v63];
    }

    goto LABEL_51;
  }

  if (!CGRectMakeWithDictionaryRepresentation(v11, &rect))
  {
    if (a2)
    {
      v107 = *MEMORY[0x277CCA068];
      v108 = @"bad bounds rect in corrections\n";
      v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
      *a2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"InertiaCamErrorDomain" code:2 userInfo:v64];
    }

    goto LABEL_51;
  }

  v12 = [v9 objectForKeyedSubscript:IC_A_CROP_RECT];
  if (!CGRectMakeWithDictionaryRepresentation(v12, &v91))
  {
    if (a2)
    {
      v105 = *MEMORY[0x277CCA068];
      v106 = @"bad crop rect in corrections\n";
      v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
      *a2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"InertiaCamErrorDomain" code:2 userInfo:v65];
    }

    goto LABEL_50;
  }

  v12 = [v9 objectForKeyedSubscript:IC_A_SOURCE_SIZE];
  if (!CGSizeMakeWithDictionaryRepresentation(v12, &size))
  {
    if (a2)
    {
      v103 = *MEMORY[0x277CCA068];
      v104 = @"Missing source size in corrections\n";
      v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
      *a2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"InertiaCamErrorDomain" code:2 userInfo:v66];
    }

LABEL_50:

LABEL_51:
    v62 = 0;
    goto LABEL_52;
  }

  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(size);
  [v86 setObject:DictionaryRepresentation forKeyedSubscript:IC_A_SOURCE_SIZE];

  v137.origin.x = a3;
  v137.origin.y = a4;
  v137.size.height = a6;
  v137.size.width = a5;
  v14 = CGRectCreateDictionaryRepresentation(v137);
  [v86 setObject:v14 forKeyedSubscript:IC_A_INPUT_IMAGE_BOUNDS];

  v138.origin.x = a3 + a5 / rect.size.width * (v91.origin.x - rect.origin.x);
  v138.origin.y = a4 + a6 / rect.size.height * (v91.origin.y - rect.origin.y);
  v138.size.width = a5 / rect.size.width * v91.size.width;
  v138.size.height = a6 / rect.size.height * v91.size.height;
  v15 = CGRectCreateDictionaryRepresentation(v138);
  [v86 setObject:v15 forKeyedSubscript:IC_A_CROP_RECT];

  v69 = [v9 objectForKeyedSubscript:IC_A_FRAMEINSTRUCTIONS];
  if (v69)
  {
    v75 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    obj = v69;
    v16 = [obj countByEnumeratingWithState:&v87 objects:v100 count:16];
    if (v16)
    {
      v74 = *v88;
      allocator = *MEMORY[0x277CBECE8];
      v17.f64[0] = a5;
      v17.f64[1] = a6;
      v83 = v17;
      v70 = a2;
LABEL_8:
      v79 = 0;
      v71 = v16;
      while (1)
      {
        if (*v88 != v74)
        {
          objc_enumerationMutation(obj);
        }

        v81 = *(*(&v87 + 1) + 8 * v79);
        v18 = [v81 objectForKeyedSubscript:IC_A_FRAMETRANSFORM_RAWTIME];
        CMTimeMakeFromDictionary(&v124, v18);
        v116 = *&v124.value;
        flags = v124.flags;
        LODWORD(v117) = v124.timescale;
        epoch = v124.epoch;

        if ((flags & 1) == 0)
        {
          break;
        }

        v98 = v116;
        v99 = LODWORD(v117);
        v19 = [v81 objectForKeyedSubscript:IC_A_FRAMETRANSFORM_HOMOGRAPHY];
        if ([v19 count] != 9)
        {

          goto LABEL_59;
        }

        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        v20 = v19;
        v21 = [v20 countByEnumeratingWithState:&v131 objects:&size count:16];
        if (v21)
        {
          v22 = 0;
          v23 = *v132;
          do
          {
            v24 = 0;
            v25 = v22;
            do
            {
              if (*v132 != v23)
              {
                objc_enumerationMutation(v20);
              }

              [*(*(&v131 + 1) + 8 * v24) doubleValue];
              v22 = v25 + 1;
              v97[v25] = v26;
              ++v24;
              ++v25;
            }

            while (v21 != v24);
            v21 = [v20 countByEnumeratingWithState:&v131 objects:&size count:16];
          }

          while (v21);

          a2 = v70;
          v16 = v71;
          v10 = 0x277CBE000;
        }

        else
        {
        }

        _D4 = rect.origin.y;
        _Q0 = vdivq_f64(v83, rect.size);
        v29 = a3 - _Q0.f64[0] * rect.origin.x;
        __asm { FMLS            D3, D4, V0.D[1] }

        v124.value = *&_Q0.f64[0];
        *&v124.timescale = 0;
        *&v124.epoch = v29;
        v125 = 0;
        v126 = _Q0.f64[1];
        v127 = _D3;
        v128 = 0;
        v129 = 0;
        v130 = 0x3FF0000000000000;
        v35 = _Q0.f64[1] - _D3 * 0.0;
        v36 = v29 * 0.0;
        v116 = v35;
        v117 = v29 * 0.0;
        v37 = _D3 * 0.0 - _Q0.f64[1] * v29;
        v118 = v37;
        v38 = v29 * 0.0 * 0.0 + _Q0.f64[0] * v35 + v37 * 0.0;
        if (fabs(v38) >= 2.22044605e-16)
        {
          v116 = v35 / v38;
          v117 = v36 / v38;
          v118 = v37 / v38;
          v119 = _D3 * 0.0 / v38;
          v120 = (_Q0.f64[0] - v36) / v38;
          v121 = (v29 * 0.0 - _Q0.f64[0] * _D3) / v38;
          v39 = vdivq_f64(vsubq_f64(0, vmulq_f64(_Q0, 0)), vdupq_lane_s64(*&v38, 0));
          v122 = vextq_s8(v39, v39, 8uLL);
          v123 = _Q0.f64[0] * _Q0.f64[1] / v38;
        }

        v40 = 0;
        v41 = v97;
        do
        {
          v42 = 0;
          v43 = &v116;
          do
          {
            v44 = 0;
            v45 = 0.0;
            v46 = v43;
            do
            {
              v47 = *v46;
              v46 += 3;
              v45 = v45 + *&v41[v44++] * v47;
            }

            while (v44 != 3);
            *(&v131 + 3 * v40 + v42++) = v45;
            ++v43;
          }

          while (v42 != 3);
          ++v40;
          v41 += 3;
        }

        while (v40 != 3);
        v48 = 0;
        v49 = &v124;
        do
        {
          v50 = 0;
          v51 = &v131;
          do
          {
            v52 = 0;
            v53 = 0.0;
            v54 = v51;
            do
            {
              v55 = *v54;
              v54 += 3;
              v53 = v53 + *(&v49->value + v52) * v55;
              v52 += 8;
            }

            while (v52 != 24);
            *(&size.width + 3 * v48 + v50++) = v53;
            v51 = (v51 + 8);
          }

          while (v50 != 3);
          ++v48;
          ++v49;
        }

        while (v48 != 3);
        v56 = 0;
        v96 = v115;
        v95[2] = v113;
        v95[3] = v114;
        v95[0] = size;
        v95[1] = v112;
        v57 = vdupq_lane_s64(v115, 0);
        do
        {
          v95[v56] = vdivq_f64(v95[v56], v57);
          ++v56;
        }

        while (v56 != 4);
        v96 = 0x3FF0000000000000;
        v58 = [*(v10 + 2872) dictionaryWithCapacity:0];
        v59 = sub_254B27204(v95);
        [v58 setObject:v59 forKeyedSubscript:IC_A_FRAMETRANSFORM_HOMOGRAPHY];

        size.width = v98;
        *&size.height = __PAIR64__(flags, v99);
        *&v112 = epoch;
        v60 = CMTimeCopyAsDictionary(&size, allocator);
        [v58 setObject:v60 forKeyedSubscript:IC_A_FRAMETRANSFORM_RAWTIME];

        [v75 addObject:v58];
        if (++v79 == v16)
        {
          v16 = [obj countByEnumeratingWithState:&v87 objects:v100 count:16];
          if (v16)
          {
            goto LABEL_8;
          }

          goto LABEL_40;
        }
      }

LABEL_59:
      if (a2)
      {
        v93 = *MEMORY[0x277CCA068];
        v94 = @"bad frame instruction\n";
        v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
        *a2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"InertiaCamErrorDomain" code:2 userInfo:v68];
      }

      v62 = 0;
      goto LABEL_62;
    }

LABEL_40:

    [v86 setObject:v75 forKeyedSubscript:IC_A_FRAMEINSTRUCTIONS];
    v61 = CGRectCreateDictionaryRepresentation(rect);
    [v86 setObject:v61 forKeyedSubscript:IC_A_CONVERTED_FROM_BOUNDS];

    v62 = v86;
LABEL_62:
  }

  else if (a2)
  {
    v101 = *MEMORY[0x277CCA068];
    v102 = @"Missing frame instructions\n";
    v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
    [MEMORY[0x277CCA9B8] errorWithDomain:@"InertiaCamErrorDomain" code:2 userInfo:?];
    *a2 = v62 = 0;
  }

  else
  {
    v62 = 0;
  }

LABEL_52:

  return v62;
}

id sub_254B27204(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:9];
  for (i = 0; i != 72; i += 8)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + i)];
    [v2 addObject:v4];
  }

  return v2;
}

id ICGetIdentityHomographies(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v18[9] = *MEMORY[0x277D85DE8];
  if (sub_254B274B0(a1))
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v18[0] = 0x3FF0000000000000;
    memset(&v18[1], 0, 24);
    v18[4] = 0x3FF0000000000000;
    memset(&v18[5], 0, 24);
    v18[8] = 0x3FF0000000000000;
    v7 = sub_254B27204(v18);
    if (a2 <= a3)
    {
      v8 = *MEMORY[0x277CBECE8];
      v9 = a3 + 1;
      v10 = 304 * a2 + 112;
      do
      {
        v11 = [MEMORY[0x277CBEB38] dictionary];
        v12 = v11;
        v13 = *(a1 + 24);
        if (0x86BCA1AF286BCA1BLL * ((*(a1 + 32) - v13) >> 4) <= a2)
        {
          sub_254B32C08();
        }

        [v11 setObject:v7 forKeyedSubscript:@"homography"];
        v14 = *(v13 + v10);
        v17.epoch = *(v13 + v10 + 16);
        *&v17.value = v14;
        v15 = CMTimeCopyAsDictionary(&v17, v8);
        [v12 setObject:v15 forKeyedSubscript:@"rawTime"];

        [v6 addObject:v12];
        ++a2;
        v10 += 304;
      }

      while (v9 != a2);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_254B274B0(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);
    v2 = *(result + 32);
    if (v1 != v2)
    {
      v6 = **&MEMORY[0x277CC08A0];
      v3 = "Error: ICResult contains out-of-order presentation times.";
      while (1)
      {
        time1 = v6;
        v4 = *(v1 + 112);
        if ((CMTimeCompare(&time1, &v4) & 0x80000000) == 0)
        {
          break;
        }

        if ((*(v1 + 124) & 0x1D) != 1)
        {
          v3 = "Error: ICResult contains homographies with invalid times.";
          break;
        }

        v6 = *(v1 + 112);
        v1 += 304;
        if (v1 == v2)
        {
          return 1;
        }
      }

      puts(v3);
    }

    return 0;
  }

  return result;
}

id ICGetCoordinateShiftedHomographies(uint64_t a1, unint64_t a2, unint64_t a3, double a4, double a5)
{
  v47 = *MEMORY[0x277D85DE8];
  if (sub_254B274B0(a1))
  {
    v37 = [MEMORY[0x277CBEB18] array];
    v42[0] = 0x3FF0000000000000;
    memset(&v42[1], 0, 24);
    v42[4] = 0xBFF0000000000000;
    *&v42[5] = a5;
    v42[6] = 0;
    v42[7] = 0;
    v42[8] = 0x3FF0000000000000;
    if (a2 <= a3)
    {
      v9 = 304 * a2;
      v10 = *MEMORY[0x277CBECE8];
      do
      {
        v11 = *(a1 + 24);
        if (0x86BCA1AF286BCA1BLL * ((*(a1 + 32) - v11) >> 4) <= a2)
        {
          sub_254B32C08();
        }

        v12 = 0;
        v13 = v11 + 304 * a2;
        v14 = v11 + v9;
        do
        {
          v15 = 0;
          v16 = v42;
          do
          {
            v17 = 0;
            v18 = 0.0;
            v19 = v16;
            do
            {
              v20 = *v19;
              v19 += 3;
              v18 = v18 + *(v14 + v17) * v20;
              v17 += 8;
            }

            while (v17 != 24);
            *&time[24 * v12 + 8 * v15++] = v18;
            ++v16;
          }

          while (v15 != 3);
          ++v12;
          v14 += 24;
        }

        while (v12 != 3);
        v21 = 0;
        v38[2] = v44;
        v38[3] = v45;
        v39 = v46;
        v38[0] = *time;
        v38[1] = *&time[16];
        v22 = v42;
        do
        {
          v23 = 0;
          v24 = v38;
          do
          {
            v25 = 0;
            v26 = 0.0;
            v27 = v24;
            do
            {
              v28 = *v27;
              v27 += 3;
              v26 = v26 + *&v22[v25++] * v28;
            }

            while (v25 != 3);
            *&time[24 * v21 + 8 * v23++] = v26;
            v24 = (v24 + 8);
          }

          while (v23 != 3);
          ++v21;
          v22 += 3;
        }

        while (v21 != 3);
        v29 = 0;
        v41 = v46;
        v40[2] = v44;
        v40[3] = v45;
        v40[0] = *time;
        v40[1] = *&time[16];
        v30 = vdupq_lane_s64(v46, 0);
        do
        {
          v40[v29] = vdivq_f64(v40[v29], v30);
          ++v29;
        }

        while (v29 != 4);
        v41 = 0x3FF0000000000000;
        v31 = [MEMORY[0x277CBEB38] dictionary];
        v32 = sub_254B27204(v40);
        [v31 setObject:v32 forKeyedSubscript:@"homography"];

        v33 = *(v13 + 112);
        *&time[16] = *(v13 + 128);
        *time = v33;
        v34 = CMTimeCopyAsDictionary(time, v10);
        [v31 setObject:v34 forKeyedSubscript:@"rawTime"];

        [v37 addObject:v31];
        v9 += 304;
      }

      while (a2++ < a3);
    }
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

id sub_254B278CC(uint64_t *a1, unint64_t a2, int a3, int a4)
{
  v104 = *MEMORY[0x277D85DE8];
  v4 = a1[1] - *a1;
  if (v4)
  {
    v8 = 678152731 * (v4 >> 4) - 1;
    if (a4 == -1)
    {
      v9 = v8;
    }

    else
    {
      v9 = a4;
    }

    v83 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
    if (v9 >= a3)
    {
      v10 = HIDWORD(a2);
      if (a2 < SHIDWORD(a2))
      {
        v11 = SHIDWORD(a2);
      }

      else
      {
        v11 = a2;
      }

      v81 = -SHIDWORD(a2) / (v11 + v11);
      v82 = -a2 / (v11 + v11);
      v12 = vcvtd_n_f64_s32(a2, 1uLL);
      v13 = vcvtd_n_f64_s32(HIDWORD(a2), 1uLL);
      if (SHIDWORD(a2) <= a2)
      {
        LODWORD(v10) = a2;
      }

      v14 = v10;
      v15 = a3;
      v16 = 304 * a3;
      do
      {
        sub_254B4AE74(&v84);
        v17 = 0;
        v18 = *a1;
        v98[0] = 1.0 / v11;
        v19 = v18 + 304 * v15;
        v98[1] = 0.0;
        v98[2] = v82;
        v98[3] = 0.0;
        v98[4] = 1.0 / v11;
        v98[5] = v81;
        v98[6] = 0.0;
        v98[7] = 0.0;
        v98[8] = 1.0;
        *v97 = v11;
        v97[1] = 0;
        *&v97[2] = v12;
        v97[3] = 0;
        *&v97[4] = v11;
        *&v97[5] = v13;
        v97[6] = 0;
        v97[7] = 0;
        v20 = (v18 + v16);
        v21 = v98;
        v97[8] = 0x3FF0000000000000;
        do
        {
          v22 = 0;
          v23 = v20;
          do
          {
            v24 = 0;
            v25 = 0.0;
            v26 = v23;
            do
            {
              v27 = *v26;
              v26 += 3;
              v25 = v25 + v21[v24++] * v27;
            }

            while (v24 != 3);
            *(&v99 + 3 * v17 + v22++) = v25;
            ++v23;
          }

          while (v22 != 3);
          ++v17;
          v21 += 3;
        }

        while (v17 != 3);
        v28 = 0;
        v94 = v101;
        v95 = v102;
        v96 = v103;
        v92 = v99;
        v93 = v100;
        v29 = &v92;
        do
        {
          v30 = 0;
          v31 = v97;
          do
          {
            v32 = 0;
            v33 = 0.0;
            v34 = v31;
            do
            {
              v35 = *v34;
              v34 += 3;
              v33 = v33 + *(v29 + v32) * v35;
              v32 += 8;
            }

            while (v32 != 24);
            *(&v99 + 3 * v28 + v30++) = v33;
            ++v31;
          }

          while (v30 != 3);
          ++v28;
          v29 = (v29 + 24);
        }

        while (v28 != 3);
        v36 = 0;
        v96 = v103;
        v94 = v101;
        v95 = v102;
        v92 = v99;
        v93 = v100;
        v37 = vdupq_lane_s64(v103, 0);
        do
        {
          *(&v92 + v36) = vdivq_f64(*(&v92 + v36), v37);
          v36 += 16;
        }

        while (v36 != 64);
        v96 = 0x3FF0000000000000;
        sub_254B4ABD0(&v84, &v92);
        v38 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
        v39 = [MEMORY[0x277CCABB0] numberWithDouble:*(v19 + 112) / *(v19 + 120)];
        [v38 setObject:v39 forKeyedSubscript:@"time"];

        v40 = [MEMORY[0x277CCABB0] numberWithDouble:v86];
        [v38 setObject:v40 forKeyedSubscript:@"h_geom_rotation"];

        v41 = [MEMORY[0x277CCABB0] numberWithDouble:v87];
        [v38 setObject:v41 forKeyedSubscript:@"h_geom_scale"];

        v42 = [MEMORY[0x277CCABB0] numberWithDouble:v88];
        [v38 setObject:v42 forKeyedSubscript:@"h_geom_diff_scale"];

        v43 = [MEMORY[0x277CCABB0] numberWithDouble:v89];
        [v38 setObject:v43 forKeyedSubscript:@"h_geom_shear"];

        v44 = [MEMORY[0x277CCABB0] numberWithDouble:v84];
        [v38 setObject:v44 forKeyedSubscript:@"h_geom_trans_x"];

        v45 = [MEMORY[0x277CCABB0] numberWithDouble:v85];
        [v38 setObject:v45 forKeyedSubscript:@"h_geom_trans_y"];

        v46 = [MEMORY[0x277CCABB0] numberWithDouble:v90];
        [v38 setObject:v46 forKeyedSubscript:@"h_geom_keystone1"];

        v47 = [MEMORY[0x277CCABB0] numberWithDouble:v91];
        [v38 setObject:v47 forKeyedSubscript:@"h_geom_keystone2"];

        v48 = [MEMORY[0x277CCABB0] numberWithDouble:*(v19 + 168)];
        [v38 setObject:v48 forKeyedSubscript:@"confidence"];

        LOBYTE(v49) = *(v19 + 73);
        v50 = [MEMORY[0x277CCABB0] numberWithDouble:v49];
        [v38 setObject:v50 forKeyedSubscript:@"interpolated"];

        v51 = [MEMORY[0x277CCABB0] numberWithDouble:*(v19 + 192)];
        [v38 setObject:v51 forKeyedSubscript:@"inlierArea"];

        LODWORD(v52) = *(v19 + 196);
        v53 = [MEMORY[0x277CCABB0] numberWithDouble:v52];
        [v38 setObject:v53 forKeyedSubscript:@"feature_matches"];

        LODWORD(v54) = *(v19 + 212);
        v55 = [MEMORY[0x277CCABB0] numberWithDouble:v54];
        [v38 setObject:v55 forKeyedSubscript:@"max_features"];

        LODWORD(v56) = *(v19 + 200);
        v57 = [MEMORY[0x277CCABB0] numberWithDouble:v56];
        [v38 setObject:v57 forKeyedSubscript:@"feature_inliers"];

        LODWORD(v58) = *(v19 + 204);
        v59 = [MEMORY[0x277CCABB0] numberWithDouble:v58];
        [v38 setObject:v59 forKeyedSubscript:@"feature_priors"];

        LODWORD(v60) = *(v19 + 208);
        v61 = [MEMORY[0x277CCABB0] numberWithDouble:v60];
        [v38 setObject:v61 forKeyedSubscript:@"feature_currentPriors"];

        LODWORD(v62) = *(v19 + 204);
        v63 = [MEMORY[0x277CCABB0] numberWithDouble:v62];
        [v38 setObject:v63 forKeyedSubscript:@"feature_priors"];

        v64 = [MEMORY[0x277CCABB0] numberWithDouble:(*(v19 + 216) / v14)];
        [v38 setObject:v64 forKeyedSubscript:@"inliers_meanTravel"];

        v65 = [MEMORY[0x277CCABB0] numberWithDouble:(*(v19 + 220) / v14)];
        [v38 setObject:v65 forKeyedSubscript:@"inliers_medianTravel"];

        v66 = [MEMORY[0x277CCABB0] numberWithDouble:(*(v19 + 224) / v14)];
        [v38 setObject:v66 forKeyedSubscript:@"inliers_maxTravel"];

        v67 = v85;
        v68 = v91;
        v69 = [MEMORY[0x277CCABB0] numberWithDouble:v90 / (v84 + 0.0001)];
        [v38 setObject:v69 forKeyedSubscript:@"h_geom_synth_keyRatio_x"];

        v70 = [MEMORY[0x277CCABB0] numberWithDouble:v68 / (v67 + 0.0001)];
        [v38 setObject:v70 forKeyedSubscript:@"h_geom_synth_keyRatio_y"];

        v71 = [MEMORY[0x277CCABB0] numberWithDouble:v89 / (fabs(v84) + fabs(v85) + 0.0001)];
        [v38 setObject:v71 forKeyedSubscript:@"h_geom_synth_shearRatio"];

        v73 = *(v19 + 204);
        if (v73)
        {
          LODWORD(v72) = *(v19 + 208);
          v74 = v72 / v73;
        }

        else
        {
          v74 = 0.0;
        }

        v75 = [MEMORY[0x277CCABB0] numberWithDouble:v74];
        [v38 setObject:v75 forKeyedSubscript:@"synth_feature_cpratio"];

        v77 = *(v19 + 196);
        if (v77)
        {
          LODWORD(v76) = *(v19 + 200);
          v78 = v76 / v77;
        }

        else
        {
          v78 = 0.0;
        }

        v79 = [MEMORY[0x277CCABB0] numberWithDouble:v78];
        [v38 setObject:v79 forKeyedSubscript:@"synth_feature_inlierRatio"];

        [v83 addObject:v38];
        ++v15;
        v16 += 304;
      }

      while (v9 + 1 != v15);
    }
  }

  else
  {
    v83 = 0;
  }

  return v83;
}

id ICGetResultHomographies(uint64_t a1, int a2)
{
  if (!a1)
  {
LABEL_4:

    return a1;
  }

  if (*(a1 + 24) != *(a1 + 32))
  {
    a1 = sub_254B2831C((a1 + 24), a2, *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 48), *(a1 + 52));
    goto LABEL_4;
  }

  a1 = 0;

  return a1;
}

id sub_254B2831C(uint64_t *a1, int a2, float64_t a3, float64_t a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v98 = *MEMORY[0x277D85DE8];
  v88.x = a3;
  v88.y = a4;
  v89 = a5;
  v90 = a6;
  v86 = 0;
  v87[0] = 0;
  v87[1] = 0;
  v11 = a1 + 1;
  sub_254B36FD4(&v86, *a1, a1[1], 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 4));
  v12 = v86;
  if (v87[0] != v86)
  {
    v13 = 0;
    v14 = 0x86BCA1AF286BCA1BLL * ((v87[0] - v86) >> 4);
    v15 = a7;
    v16 = a8;
    v17 = *a1;
    if (a7 < a8)
    {
      v18 = v16;
    }

    else
    {
      v18 = v15;
    }

    v19 = vcvtd_n_f64_s32(v15, 1uLL);
    if (v14 <= 1)
    {
      v14 = 1;
    }

    v20 = vcvtd_n_f64_s32(v16, 1uLL);
    v21 = v86;
    do
    {
      v22 = 0;
      v92[0] = 1.0 / v18;
      v92[1] = 0.0;
      v92[2] = -v15 / (v18 + v18);
      v92[3] = 0.0;
      v92[4] = 1.0 / v18;
      v92[5] = -v16 / (v18 + v18);
      v92[6] = 0.0;
      v92[7] = 0.0;
      v92[8] = 1.0;
      *v91 = v18;
      v91[1] = 0;
      *&v91[2] = v19;
      v91[3] = 0;
      *&v91[4] = v18;
      *&v91[5] = v20;
      v91[6] = 0;
      v91[7] = 0;
      v23 = v92;
      v91[8] = 0x3FF0000000000000;
      do
      {
        v24 = 0;
        v25 = v17;
        do
        {
          v26 = 0;
          v27 = 0.0;
          v28 = v25;
          do
          {
            v29 = *v28;
            v28 += 3;
            v27 = v27 + v23[v26++] * v29;
          }

          while (v26 != 3);
          *(&time.x + 3 * v22 + v24++) = v27;
          ++v25;
        }

        while (v24 != 3);
        ++v22;
        v23 += 3;
      }

      while (v22 != 3);
      v30 = 0;
      v31 = v12 + 304 * v13;
      *(v31 + 16) = time_16;
      *(v31 + 32) = v95;
      *(v31 + 48) = v96;
      *(v31 + 64) = v97;
      *v31 = time;
      v32 = v21;
      do
      {
        v33 = 0;
        v34 = v91;
        do
        {
          v35 = 0;
          v36 = 0.0;
          v37 = v34;
          do
          {
            v38 = *v37;
            v37 += 3;
            v36 = v36 + *(v32 + v35) * v38;
            v35 += 8;
          }

          while (v35 != 24);
          *(&time.x + 3 * v30 + v33++) = v36;
          ++v34;
        }

        while (v33 != 3);
        ++v30;
        v32 += 24;
      }

      while (v30 != 3);
      v39 = 0;
      *(v31 + 16) = time_16;
      *(v31 + 32) = v95;
      *(v31 + 48) = v96;
      *(v31 + 64) = v97;
      *v31 = time;
      v40 = (v31 + 64);
      v41 = vld1q_dup_f64(v40);
      do
      {
        *(v21 + v39) = vdivq_f64(*(v21 + v39), v41);
        v39 += 16;
      }

      while (v39 != 64);
      *(v31 + 64) = 0x3FF0000000000000;
      ++v13;
      v17 += 304;
      v21 += 304;
    }

    while (v13 != v14);
  }

  if (a2)
  {
    v42 = &v86;
  }

  else
  {
    v42 = a1;
  }

  v85 = [MEMORY[0x277CBEB18] array];
  if (a2)
  {
    v43 = v87;
  }

  else
  {
    v43 = v11;
  }

  if (*v43 != *v42)
  {
    v44 = 0;
    v45 = 0;
    v46 = *MEMORY[0x277CBECE8];
    do
    {
      v47 = [MEMORY[0x277CBEB38] dictionary];
      v48 = *v42;
      v49 = sub_254B27204(*v42 + v44);
      [v47 setObject:v49 forKeyedSubscript:IC_A_FRAMETRANSFORM_HOMOGRAPHY];

      v50 = *(v48 + v44 + 112);
      time_16.width = *(v48 + v44 + 128);
      time = v50;
      v51 = CMTimeCopyAsDictionary(&time, v46);
      [v47 setObject:v51 forKeyedSubscript:IC_A_FRAMETRANSFORM_RAWTIME];

      [v85 addObject:v47];
      ++v45;
      v44 += 304;
    }

    while (v45 < 0x86BCA1AF286BCA1BLL * ((*v43 - *v42) >> 4));
  }

  v52 = [MEMORY[0x277CBEB38] dictionary];
  v53 = [MEMORY[0x277CBEB18] arrayWithCapacity:{0, sub_254B4AE74(&time).n128_f64[0]}];
  v54 = v86;
  if (v87[0] != v86)
  {
    v55 = 0;
    v56 = 0;
    do
    {
      sub_254B4ABD0(&time, v54 + v55);
      v57 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
      HIDWORD(v58) = HIDWORD(time_16.width);
      *&v58 = time_16.width;
      v59 = [MEMORY[0x277CCABB0] numberWithFloat:v58];
      [v57 setObject:v59 forKeyedSubscript:@"h_geom_rotation"];

      HIDWORD(v60) = HIDWORD(time_16.height);
      *&v60 = time_16.height;
      v61 = [MEMORY[0x277CCABB0] numberWithFloat:v60];
      [v57 setObject:v61 forKeyedSubscript:@"h_geom_scale"];

      HIDWORD(v62) = DWORD1(v95);
      *&v62 = *&v95;
      v63 = [MEMORY[0x277CCABB0] numberWithFloat:v62];
      [v57 setObject:v63 forKeyedSubscript:@"h_geom_diff_scale"];

      HIDWORD(v64) = HIDWORD(v95);
      *&v64 = *(&v95 + 1);
      v65 = [MEMORY[0x277CCABB0] numberWithFloat:v64];
      [v57 setObject:v65 forKeyedSubscript:@"h_geom_shear"];

      HIDWORD(v66) = HIDWORD(time.x);
      *&v66 = time.x;
      v67 = [MEMORY[0x277CCABB0] numberWithFloat:v66];
      [v57 setObject:v67 forKeyedSubscript:@"h_geom_trans_x"];

      HIDWORD(v68) = HIDWORD(time.y);
      *&v68 = time.y;
      v69 = [MEMORY[0x277CCABB0] numberWithFloat:v68];
      [v57 setObject:v69 forKeyedSubscript:@"h_geom_trans_y"];

      HIDWORD(v70) = DWORD1(v96);
      *&v70 = *&v96;
      v71 = [MEMORY[0x277CCABB0] numberWithFloat:v70];
      [v57 setObject:v71 forKeyedSubscript:@"h_geom_keystone1"];

      HIDWORD(v72) = HIDWORD(v96);
      *&v72 = *(&v96 + 1);
      v73 = [MEMORY[0x277CCABB0] numberWithFloat:v72];
      [v57 setObject:v73 forKeyedSubscript:@"h_geom_keystone2"];

      [v53 addObject:v57];
      ++v56;
      v54 = v86;
      v55 += 304;
    }

    while (0x86BCA1AF286BCA1BLL * ((v87[0] - v86) >> 4) > v56);
  }

  [v52 setObject:v53 forKeyedSubscript:@"Decompositions"];

  [v52 setObject:v85 forKeyedSubscript:IC_A_FRAMEINSTRUCTIONS];
  time = 0;
  time_16.width = a7;
  time_16.height = a8;
  if (a2)
  {
    *&v77 = *&sub_254B2659C(&time, &time, a7, a8, v74, v75, v76);
    sub_254B2659C(&v88, &v88, a7, a8, v77, v78, v79);
  }

  v101.origin = v88;
  v101.size.width = v89;
  v101.size.height = v90;
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v101);
  [v52 setObject:DictionaryRepresentation forKeyedSubscript:IC_A_CROP_RECT];

  v100.width = a7;
  v100.height = a8;
  v81 = CGSizeCreateDictionaryRepresentation(v100);
  [v52 setObject:v81 forKeyedSubscript:IC_A_SOURCE_SIZE];

  v102.origin = time;
  v102.size = time_16;
  v82 = CGRectCreateDictionaryRepresentation(v102);
  [v52 setObject:v82 forKeyedSubscript:IC_A_INPUT_IMAGE_BOUNDS];

  *&time.x = &v86;
  sub_254B36F30(&time);

  return v52;
}

void sub_254B28A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  a28 = &a12;
  sub_254B36F30(&a28);
  _Unwind_Resume(a1);
}

double ICGetResultConfidence(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  LODWORD(result) = *(a1 + 92);
  return result;
}

double ICGetAnalysisConfidence(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  LODWORD(result) = *(a1 + 88);
  return result;
}

float ICGetAnomalyScore(uint64_t a1)
{
  result = 0.0;
  if (a1)
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 32);
    v2 = (a1 + 24);
    if (v3 != v4)
    {
      return sub_254B5276C(v2);
    }
  }

  return result;
}

id *ICGetResultStats(id *a1)
{
  if (a1)
  {
    a1 = a1[2];
    v1 = vars8;
  }

  return a1;
}

uint64_t ICDestroyResult(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

id ICGetResultOptionalData(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && (sub_254B274B0(a1) & 1) != 0)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = [v3 objectForKeyedSubscript:IC_D_PER_FRAME_FEATURES];
    v6 = [v5 BOOLValue];

    if (v6)
    {
      v7 = sub_254B278CC((a1 + 24), *(a1 + 48), 0, -1);
      [v4 setObject:v7 forKeyedSubscript:IC_D_PER_FRAME_FEATURES];
    }

    v8 = [v3 objectForKeyedSubscript:IC_D_HOMOGRAPHY_METRICS];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      *&v11 = sub_254B862A8((a1 + 24), *(a1 + 48), v10);
      [v4 setObject:v10 forKeyedSubscript:{IC_D_HOMOGRAPHY_METRICS, v11}];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id ICGetResultFramePresentationTimes(uint64_t a1)
{
  if (sub_254B274B0(a1))
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3 = *(a1 + 24);
    v4 = *(a1 + 32);
    if (v3 != v4)
    {
      v5 = *MEMORY[0x277CBECE8];
      do
      {
        v8 = *(v3 + 112);
        v6 = CMTimeCopyAsDictionary(&v8, v5);
        [v2 addObject:v6];

        v3 += 304;
      }

      while (v3 != v4);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t ICChangeCorrectionsForDimensions(uint64_t result, double a2, double a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = *(result + 24);
  v4 = *(result + 32);
  if (v3 != v4)
  {
    v5 = *(result + 48);
    v6 = *(result + 52);
    v7 = a2 / v5;
    v8 = a3 / v6;
    v9 = v5 / a2;
    v10 = v6 / a3;
    do
    {
      v11 = 0;
      memset(&v32[1], 0, 24);
      *v32 = v7;
      *&v32[4] = v8;
      memset(&v32[5], 0, 24);
      v32[8] = 0x3FF0000000000000;
      memset(&v31[1], 0, 24);
      *v31 = v9;
      *&v31[4] = v10;
      memset(&v31[5], 0, 24);
      v12 = v32;
      v31[8] = 0x3FF0000000000000;
      do
      {
        v13 = 0;
        v14 = v3;
        do
        {
          v15 = 0;
          v16 = 0.0;
          v17 = v14;
          do
          {
            v18 = *v17;
            v17 += 3;
            v16 = v16 + *&v12[v15++] * v18;
          }

          while (v15 != 3);
          *(&v33 + 3 * v11 + v13++) = v16;
          ++v14;
        }

        while (v13 != 3);
        ++v11;
        v12 += 3;
      }

      while (v11 != 3);
      v19 = 0;
      v20 = &v33;
      do
      {
        v21 = 0;
        v22 = v31;
        do
        {
          v23 = 0;
          v24 = 0.0;
          v25 = v22;
          do
          {
            v26 = *v25;
            v25 += 3;
            v24 = v24 + *(v20 + v23) * v26;
            v23 += 8;
          }

          while (v23 != 24);
          *(v38 + 3 * v19 + v21++) = v24;
          ++v22;
        }

        while (v21 != 3);
        ++v19;
        v20 = (v20 + 24);
      }

      while (v19 != 3);
      v27 = 0;
      v37 = v39;
      v35 = v38[2];
      v36 = v38[3];
      v33 = v38[0];
      v34 = v38[1];
      v28 = vdupq_lane_s64(v39, 0);
      do
      {
        *(&v33 + v27) = vdivq_f64(*(&v33 + v27), v28);
        v27 += 16;
      }

      while (v27 != 64);
      v29 = v36;
      *(v3 + 32) = v35;
      *(v3 + 48) = v29;
      *(v3 + 64) = 0x3FF0000000000000;
      v30 = v34;
      *v3 = v33;
      *(v3 + 16) = v30;
      v3 += 304;
    }

    while (v3 != v4);
    *(result + 48) = a2;
    *(result + 52) = a3;
  }

  return result;
}

uint64_t ICGetCorrectionResultCropData(uint64_t a1, _OWORD *a2)
{
  if (sub_254B274B0(a1))
  {
    if (a2)
    {
      v4 = *(a1 + 72);
      *a2 = *(a1 + 56);
      a2[1] = v4;
    }

    v5 = *(a1 + 232);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void ICStoreAnalyticsViaDodML(uint64_t a1, double *a2, double *a3, void *a4)
{
  v58[6] = *MEMORY[0x277D85DE8];
  v55 = a4;
  if (a1 && *(a1 + 24) != *(a1 + 32))
  {
    context = objc_autoreleasePoolPush();
    v7 = [objc_alloc(off_281535BC8()) initWithBundleIdentifier:@"com.apple.acg.powerspectrum"];
    v8 = v7;
    if (!v7 || (v53 = v7, v9 = [v7 shouldMakeRecord], v8 = v53, (v9 & 1) == 0))
    {
LABEL_30:

      objc_autoreleasePoolPop(context);
      goto LABEL_31;
    }

    if (a2)
    {
      v10 = objc_alloc(MEMORY[0x277CCABB0]);
      v11 = *a2;
      *&v11 = *a2;
      v12 = [v10 initWithFloat:v11];
      v58[0] = v12;
      v13 = objc_alloc(MEMORY[0x277CCABB0]);
      v14 = a2[1];
      *&v14 = v14;
      v15 = [v13 initWithFloat:v14];
      v58[1] = v15;
      v16 = objc_alloc(MEMORY[0x277CCABB0]);
      v17 = a2[2];
      *&v17 = v17;
      v18 = [v16 initWithFloat:v17];
      v58[2] = v18;
      v19 = objc_alloc(MEMORY[0x277CCABB0]);
      v20 = a2[3];
      *&v20 = v20;
      v21 = [v19 initWithFloat:v20];
      v58[3] = v21;
      v22 = objc_alloc(MEMORY[0x277CCABB0]);
      v23 = a2[4];
      *&v23 = v23;
      v24 = [v22 initWithFloat:v23];
      v58[4] = v24;
      v25 = objc_alloc(MEMORY[0x277CCABB0]);
      v26 = a2[5];
      *&v26 = v26;
      v27 = [v25 initWithFloat:v26];
      v58[5] = v27;
      v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:6];

      if (a3)
      {
LABEL_7:
        v28 = objc_alloc(MEMORY[0x277CCABB0]);
        v29 = *a3;
        *&v29 = *a3;
        v30 = [v28 initWithFloat:v29];
        v57[0] = v30;
        v31 = objc_alloc(MEMORY[0x277CCABB0]);
        v32 = a3[1];
        *&v32 = v32;
        v33 = [v31 initWithFloat:v32];
        v57[1] = v33;
        v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];

LABEL_10:
        v52 = objc_alloc_init(MEMORY[0x277CBEB38]);
        if (v50)
        {
          [v52 setObject:v50 forKeyedSubscript:@"dimensions"];
        }

        if (v51)
        {
          [v52 setObject:v51 forKeyedSubscript:@"preferredTransform"];
        }

        if (v55)
        {
          [v52 setObject:v55 forKeyedSubscript:@"sourceType"];
        }

        v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v49 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if (*(a1 + 32) == *(a1 + 24))
        {
LABEL_24:
          v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
          [v39 setObject:v49 forKeyedSubscript:@"times"];
          [v39 setObject:v48 forKeyedSubscript:@"homographies"];
          if ([v52 count])
          {
            [v39 setObject:v52 forKeyedSubscript:@"info"];
          }

          v56 = 0;
          v46 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v39 requiringSecureCoding:0 error:&v56];
          v47 = v56;
          if (v46)
          {
            [v53 saveRecordWithData:v46 recordInfo:MEMORY[0x277CBEC10] completion:&unk_286700270];
          }
        }

        else
        {
          v34 = 0;
          v35 = 0;
LABEL_18:
          v36 = objc_alloc(MEMORY[0x277CCABB0]);
          *&v37 = *(*(a1 + 24) + 304 * v35 + 112) / *(*(a1 + 24) + 304 * v35 + 120);
          v38 = [v36 initWithFloat:v37];
          [v49 addObject:v38];

          v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v40 = fabs(*(*(a1 + 24) + 304 * v35 + 64));
          if (v40 != INFINITY && v40 >= 1.0e-10)
          {
            v41 = 8;
            v42 = v34;
            while ((*(*(a1 + 24) + v42) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v43 = objc_alloc(MEMORY[0x277CCABB0]);
              v44 = *(*(a1 + 24) + v42) / *(*(a1 + 24) + 304 * v35 + 64);
              *&v44 = v44;
              v45 = [v43 initWithFloat:v44];
              [v39 addObject:v45];

              v42 += 8;
              if (!--v41)
              {
                [v48 addObject:v39];

                ++v35;
                v34 += 304;
                if (0x86BCA1AF286BCA1BLL * ((*(a1 + 32) - *(a1 + 24)) >> 4) > v35)
                {
                  goto LABEL_18;
                }

                goto LABEL_24;
              }
            }
          }
        }

        v8 = v53;
        goto LABEL_30;
      }
    }

    else
    {
      v51 = 0;
      if (a3)
      {
        goto LABEL_7;
      }
    }

    v50 = 0;
    goto LABEL_10;
  }

LABEL_31:
}

uint64_t ICAnalyzeInputMotion(void *a1, void *a2, void *a3, _DWORD *a4)
{
  v44[2] = *MEMORY[0x277D85DE8];
  v29 = a1;
  v30 = a2;
  v28 = a3;
  if (qword_281535C00 != -1)
  {
    sub_254B8831C();
  }

  v6 = qword_281535BF8;
  v7 = os_signpost_id_generate(v6);
  v43 = v7;
  if (qword_281535C00 != -1)
  {
    sub_254B8831C();
  }

  v8 = qword_281535BF8;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254B25000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "ICAnalyzeInputMotion", "", buf, 2u);
  }

  if (v29)
  {
    sub_254B29EEC(v28, buf);
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:875704422];
    v44[0] = v10;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:875704438];
    v44[1] = v11;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];

    *&timingInfoOut.duration.value = *buf;
    *&timingInfoOut.duration.epoch = v39;
    *&timingInfoOut.presentationTimeStamp.timescale = v40;
    v12 = sub_254B57544(v29, &timingInfoOut.duration.value, v26, v37);
    if (v12)
    {
      v25 = [v29 tracksWithMediaType:*MEMORY[0x277CE5EA8]];
      v13 = [v25 objectAtIndex:0];
      v14 = v13;
      if (v13)
      {
        if ((buf[12] & 1) == 0 || (BYTE4(v40) & 1) == 0 || *(&v40 + 1) || (*(&v39 + 1) & 0x8000000000000000) != 0)
        {
          [v13 timeRange];
          v35 = *&timingInfoOut.duration.value;
          *v36 = *&timingInfoOut.duration.epoch;
          *&v36[16] = *&timingInfoOut.presentationTimeStamp.timescale;
        }

        else
        {
          [v12 timeRange];
          v35 = *&timingInfoOut.duration.value;
          *v36 = *&timingInfoOut.duration.epoch;
          *&v36[16] = *&timingInfoOut.presentationTimeStamp.timescale;
          [v14 timeRange];
          presentationTimeStamp = timingInfoOut.presentationTimeStamp;
          *&timingInfoOut.duration.value = *&v36[8];
          timingInfoOut.duration.epoch = *&v36[24];
          time2 = timingInfoOut.presentationTimeStamp;
          if (CMTimeCompare(&timingInfoOut.duration, &time2) >= 1)
          {
            *&v36[8] = presentationTimeStamp;
          }
        }

        v33 = 0;
        ICAnalysisInit(v28);
      }

      if (a4)
      {
        *a4 = 10;
      }

      if (qword_281535C00 != -1)
      {
        sub_254B88330();
      }

      v21 = qword_281535BF8;
      v22 = v21;
      v23 = v43;
      if (v43 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
      {
        LOWORD(timingInfoOut.duration.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_254B25000, v22, OS_SIGNPOST_EVENT, v23, "ICAnalyzeInputMotion", "IC_ERROR_BAD_INPUT", &timingInfoOut, 2u);
      }

      v19 = v25;
    }

    else
    {
      if (a4)
      {
        *a4 = 10;
      }

      if (qword_281535C00 != -1)
      {
        sub_254B88330();
      }

      v18 = qword_281535BF8;
      v19 = v18;
      v20 = v43;
      if (v43 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
      {
        LOWORD(timingInfoOut.duration.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_254B25000, v19, OS_SIGNPOST_EVENT, v20, "ICAnalyzeInputMotion", "IC_ERROR_BAD_INPUT", &timingInfoOut, 2u);
      }
    }

    if (__p)
    {
      v42 = __p;
      operator delete(__p);
    }
  }

  else
  {
    puts("No input video, can't analyze.");
    if (a4)
    {
      *a4 = 10;
    }

    if (qword_281535C00 != -1)
    {
      sub_254B88330();
    }

    v15 = qword_281535BF8;
    v16 = v15;
    v17 = v43;
    if (v43 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_254B25000, v16, OS_SIGNPOST_EVENT, v17, "ICAnalyzeInputMotion", "IC_ERROR_BAD_INPUT", buf, 2u);
    }
  }

  sub_254B2B614(&v43);

  return 0;
}

void sub_254B29DB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_254B2B614((v61 - 120));

  _Unwind_Resume(a1);
}

id sub_254B29EA0()
{
  if (qword_281535C00 != -1)
  {
    sub_254B8831C();
  }

  v1 = qword_281535BF8;

  return v1;
}

void sub_254B29EEC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v44 = v3;
  sub_254B32D8C(a2);
  if (v3)
  {
    v4 = [v3 objectForKeyedSubscript:IC_A_TRIM_START_TIME];
    if (v4)
    {
      v5 = [v3 objectForKeyedSubscript:IC_A_TRIM_DURATION];

      if (v5)
      {
        memset(&v49, 0, sizeof(v49));
        v6 = [v3 objectForKeyedSubscript:IC_A_TRIM_START_TIME];
        v7 = v6;
        if (v6)
        {
          [v6 CMTimeValue];
        }

        else
        {
          memset(&v49, 0, sizeof(v49));
        }

        memset(&v48, 0, sizeof(v48));
        v8 = [v3 objectForKeyedSubscript:IC_A_TRIM_DURATION];
        v9 = v8;
        if (v8)
        {
          [v8 CMTimeValue];
        }

        else
        {
          memset(&v48, 0, sizeof(v48));
        }

        start = v49;
        duration = v48;
        CMTimeRangeMake(&v47, &start, &duration);
        v10 = *&v47.start.epoch;
        *a2 = *&v47.start.value;
        *(a2 + 16) = v10;
        *(a2 + 32) = *&v47.duration.timescale;
      }
    }

    v11 = [v3 objectForKeyedSubscript:IC_A_LOOP_CLOSURE_PTS];

    if (v11)
    {
      v12 = [v3 objectForKeyedSubscript:IC_A_LOOP_CLOSURE_PTS];
      for (i = 0; [v12 count] > i; ++i)
      {
        v14 = [v12 objectAtIndexedSubscript:i];
        v15 = v14;
        if (v14)
        {
          [v14 CMTimeRangeValue];
        }

        else
        {
          memset(&v47, 0, sizeof(v47));
        }

        v16 = *(a2 + 56);
        v17 = *(a2 + 64);
        if (v16 >= v17)
        {
          v21 = *(a2 + 48);
          v22 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v21) >> 4);
          v23 = v22 + 1;
          if (v22 + 1 > 0x555555555555555)
          {
            sub_254B32E20();
          }

          v24 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v21) >> 4);
          if (2 * v24 > v23)
          {
            v23 = 2 * v24;
          }

          if (v24 >= 0x2AAAAAAAAAAAAAALL)
          {
            v25 = 0x555555555555555;
          }

          else
          {
            v25 = v23;
          }

          if (v25)
          {
            sub_254B32EC8(a2 + 48, v25);
          }

          v26 = 48 * v22;
          v27 = *&v47.start.value;
          v28 = *&v47.duration.timescale;
          *(v26 + 16) = *&v47.start.epoch;
          *(v26 + 32) = v28;
          *v26 = v27;
          v20 = 48 * v22 + 48;
          v29 = *(a2 + 48);
          v30 = *(a2 + 56) - v29;
          v31 = 48 * v22 - v30;
          memcpy((v26 - v30), v29, v30);
          v32 = *(a2 + 48);
          *(a2 + 48) = v31;
          *(a2 + 56) = v20;
          *(a2 + 64) = 0;
          if (v32)
          {
            operator delete(v32);
          }

          v3 = v44;
        }

        else
        {
          v18 = *&v47.start.value;
          v19 = *&v47.duration.timescale;
          v16[1] = *&v47.start.epoch;
          v16[2] = v19;
          *v16 = v18;
          v20 = (v16 + 3);
        }

        *(a2 + 56) = v20;
      }
    }

    v33 = [v3 objectForKeyedSubscript:qword_27F71EFA0];

    if (v33)
    {
      v34 = [v3 objectForKeyedSubscript:qword_27F71EFA0];
      [v34 getValue:a2 + 84 size:56];
    }

    v35 = [v3 objectForKeyedSubscript:qword_27F71EFA8];

    if (v35)
    {
      v36 = [v3 objectForKeyedSubscript:qword_27F71EFA8];
      [v36 floatValue];
      *(a2 + 76) = v37;
    }

    v38 = [v3 objectForKeyedSubscript:IC_A_PREROLL_FRAME_COUNT];

    if (v38)
    {
      v39 = [v3 objectForKeyedSubscript:IC_A_PREROLL_FRAME_COUNT];
      v40 = [v39 intValue];

      if ((v40 & 0x80000000) == 0)
      {
        *(a2 + 80) = v40 + 1;
      }
    }

    v41 = [v3 objectForKeyedSubscript:IC_A_COLLECT_FEATURE_POINTS];
    *(a2 + 72) = [v41 BOOLValue];

    v42 = [v3 objectForKeyedSubscript:IC_A_DISABLE_GPU_STABILIZATION];
    *(a2 + 73) = [v42 BOOLValue];

    v43 = [v3 objectForKeyedSubscript:IC_A_OPTIMIZE_FOR_MEMORY];
    *(a2 + 74) = [v43 BOOLValue];
  }
}

void sub_254B2A2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v13 = *(v10 + 48);
  if (v13)
  {
    *(v10 + 56) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

void ICAnalysisInit(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (qword_281535C00 != -1)
  {
    sub_254B8831C();
  }

  v2 = qword_281535BF8;
  v3 = os_signpost_id_generate(v2);
  v10 = v3;
  if (qword_281535C00 != -1)
  {
    sub_254B8831C();
  }

  v4 = qword_281535BF8;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254B25000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "ICAnalysisInit", "", buf, 2u);
  }

  sub_254B29EEC(v1, buf);
  v6 = [v1 objectForKeyedSubscript:IC_A_RESULT_DELEGATE];
  objc_initWeak(&location, v6);

  objc_copyWeak(&to, &location);
  v13 = 0;
  v11 = &unk_286700440;
  objc_moveWeak(&v12, &to);
  v13 = &v11;
  objc_destroyWeak(&to);
  operator new();
}

void sub_254B2A820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  (*(*v36 + 8))(v36);
  (*(*v35 + 8))(v35);
  sub_254B376A8(v38 - 120);
  objc_destroyWeak(&location);
  if (__p)
  {
    a34 = __p;
    operator delete(__p);
  }

  sub_254B2BE10((v38 - 176));

  _Unwind_Resume(a1);
}

void sub_254B2A918(CMTime *a1, CMTime *a2)
{
  memset(&v5, 0, sizeof(v5));
  lhs = *a1;
  v3 = *a2;
  CMTimeSubtract(&v5, &lhs, &v3);
  lhs = v5;
  CMTimeGetSeconds(&lhs);
  lhs = a2[1];
  CMTimeGetSeconds(&lhs);
}

uint64_t ICAnalysisStopAndGetResult(uint64_t a1, void *a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (qword_281535C00 != -1)
  {
    sub_254B8831C();
  }

  v4 = qword_281535BF8;
  v5 = os_signpost_id_generate(v4);
  v16 = v5;
  if (qword_281535C00 != -1)
  {
    sub_254B8831C();
  }

  v6 = qword_281535BF8;
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254B25000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "ICAnalysisStopAndGetResult", "", buf, 2u);
  }

  if (a1)
  {
    v8 = *(a1 + 232);
    if (v8)
    {
      if ((sub_254B5E7A0(*(a1 + 232), 0, 1) & 1) == 0)
      {
        sub_254B5E8EC(v8);
      }

      while (1)
      {
        v9 = atomic_load((v8 + 136));
        if ((v9 & 1) == 0)
        {
          break;
        }

        usleep(0x3E8u);
      }

      v18 = vcvtq_f64_f32(vcvt_f32_s32(*(a1 + 48)));
      operator new();
    }

    v19 = *MEMORY[0x277CCA068];
    v20[0] = @"Analysis is already complete";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    if (a2)
    {
      *a2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"InertiaCamErrorDomain" code:-1 userInfo:v12];
    }

    if (qword_281535C00 != -1)
    {
      sub_254B88330();
    }

    v13 = qword_281535BF8;
    v14 = v13;
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_254B25000, v14, OS_SIGNPOST_EVENT, v16, "ICAnalysisStopAndGetResult", "IC_ERROR_UNSPECIFIED", buf, 2u);
    }
  }

  else
  {
    if (a2)
    {
      *a2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"InertiaCamErrorDomain" code:10 userInfo:0];
    }

    if (qword_281535C00 != -1)
    {
      sub_254B88330();
    }

    v10 = qword_281535BF8;
    v11 = v10;
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_254B25000, v11, OS_SIGNPOST_EVENT, v16, "ICAnalysisStopAndGetResult", "IC_ERROR_BAD_INPUT", buf, 2u);
    }
  }

  sub_254B2BF80(&v16);
  return 0;
}

void sub_254B2B0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  (*(*v4 + 8))(v4);
  sub_254B2BF80(va);
  _Unwind_Resume(a1);
}

uint64_t ICAnalysisAddFrame(uint64_t a1, __CVBuffer *a2, __int128 *a3, void *a4, void *a5)
{
  v35[1] = *MEMORY[0x277D85DE8];
  v9 = a4;
  if (qword_281535C00 != -1)
  {
    sub_254B8831C();
  }

  v10 = qword_281535BF8;
  v11 = os_signpost_id_generate(v10);
  v31 = v11;
  if (qword_281535C00 != -1)
  {
    sub_254B8831C();
  }

  v12 = qword_281535BF8;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(v29) = 0;
    _os_signpost_emit_with_name_impl(&dword_254B25000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "ICAnalysisAddFrame", "", &v29, 2u);
  }

  if (a1 && a2 && (*(a3 + 12) & 1) != 0)
  {
    v19 = *(a1 + 232);
    if (v19)
    {
      v20 = *(a1 + 240);
      if (!v20)
      {
        CleanRect = CVImageBufferGetCleanRect(a2);
        width = CleanRect.size.width;
        height = CleanRect.size.height;
        *(v19 + 32) = width | (height << 32);
        *(a1 + 48) = width;
        *(a1 + 52) = height;
        v20 = *(a1 + 240);
      }

      v29 = *a3;
      v30 = *(a3 + 2);
      if (!sub_254B5925C(a2, &v29, v20, v19, v9))
      {
        ++*(a1 + 240);
        v17 = 1;
        goto LABEL_20;
      }

      v32 = *MEMORY[0x277CCA068];
      v33 = @"Error or cancelation while adding frame to be analyzed";
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      if (a5)
      {
        *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"InertiaCamErrorDomain" code:-1 userInfo:v23];
      }

      if (qword_281535C00 != -1)
      {
        sub_254B88330();
      }

      v24 = qword_281535BF8;
      v25 = v24;
      v26 = v31;
      if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        LOWORD(v29) = 0;
        _os_signpost_emit_with_name_impl(&dword_254B25000, v25, OS_SIGNPOST_EVENT, v26, "ICAnalysisAddFrame", "ANALYSIS_FAILED", &v29, 2u);
      }
    }

    else
    {
      v34 = *MEMORY[0x277CCA068];
      v35[0] = @"Analysis is already complete";
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
      if (a5)
      {
        *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"InertiaCamErrorDomain" code:-1 userInfo:v23];
      }

      if (qword_281535C00 != -1)
      {
        sub_254B88330();
      }

      v27 = qword_281535BF8;
      v25 = v27;
      v28 = v31;
      if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
      {
        LOWORD(v29) = 0;
        _os_signpost_emit_with_name_impl(&dword_254B25000, v25, OS_SIGNPOST_EVENT, v28, "ICAnalysisAddFrame", "IC_ERROR_UNSPECIFIED", &v29, 2u);
      }
    }
  }

  else
  {
    if (a5)
    {
      *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"InertiaCamErrorDomain" code:10 userInfo:0];
    }

    if (qword_281535C00 != -1)
    {
      sub_254B88330();
    }

    v14 = qword_281535BF8;
    v15 = v14;
    v16 = v31;
    if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      LOWORD(v29) = 0;
      _os_signpost_emit_with_name_impl(&dword_254B25000, v15, OS_SIGNPOST_EVENT, v16, "ICAnalysisAddFrame", "IC_ERROR_BAD_INPUT", &v29, 2u);
    }
  }

  v17 = 0;
LABEL_20:
  sub_254B2BEC8(&v31);

  return v17;
}

void sub_254B2B5CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  sub_254B2BEC8(va);
  _Unwind_Resume(a1);
}

os_signpost_id_t *sub_254B2B614(os_signpost_id_t *a1)
{
  if (qword_281535C00 != -1)
  {
    sub_254B8831C();
  }

  v2 = qword_281535BF8;
  v3 = v2;
  v4 = *a1;
  if (*a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_254B25000, v3, OS_SIGNPOST_INTERVAL_END, v4, "ICAnalyzeInputMotion", "", v6, 2u);
  }

  return a1;
}

uint64_t sub_254B2B82C(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:IC_A_SOURCE_SIZE];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (size.width = 0.0, size.height = 0.0, !CGSizeMakeWithDictionaryRepresentation(v5, &size)))
    {
      v13 = 0;
LABEL_21:

      goto LABEL_22;
    }

    sub_254B2CC50(v4, &v35);
    v33 = 0uLL;
    v34 = 0;
    if (v37)
    {
      if (v36 != 1)
      {
        v13 = 0;
LABEL_20:
        *&v40.origin.x = &v33;
        sub_254B36F30(&v40);
        goto LABEL_21;
      }

      memset(&v40, 0, 24);
      v6 = [v4 objectForKeyedSubscript:IC_A_FRAMEINSTRUCTIONS];
      sub_254B2DCFC(&v33, v6, v35, v36, 0, 0, &v40);

      if (CGRectIsNull(v38))
      {
        y = 0.0;
        width = size.width;
        height = size.height;
        v10 = size.height;
        v11 = size.width;
        x = 0.0;
      }

      else
      {
        x = v38.origin.x;
        y = v38.origin.y;
        v11 = v38.size.width;
        v10 = v38.size.height;
        width = size.width;
        height = size.height;
      }

      sub_254B49A50(a2 + 96, &v40, 0, width, height, x, y, v11, v10);
      v41 = &v40;
      sub_254B36F30(&v41);
    }

    else
    {
      v14 = [v4 objectForKeyedSubscript:IC_A_FRAMEINSTRUCTIONS];
      sub_254B2DCFC(&v33, v14, v35, v36, 0, 0, 0);
    }

    v15 = v33;
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v17 = [MEMORY[0x277CCAE60] valueWithBytes:&size objCType:"{CGSize=dd}"];
    [v16 setObject:v17 forKeyedSubscript:IC_A_STAT_MOVIE_DIMENSIONS];

    v18 = [MEMORY[0x277CCABB0] numberWithInt:0x86BCA1AF286BCA1BLL * ((*(&v15 + 1) - v15) >> 4)];
    [v16 setObject:v18 forKeyedSubscript:IC_A_STAT_FRAME_COUNT];

    *(a2 + 8) = 1;
    __asm { FMOV            V0.2S, #1.0 }

    *(a2 + 88) = _D0;
    *(a2 + 48) = vmovn_s64(vcvtq_s64_f64(size));
    sub_254B37230((a2 + 24));
    *(a2 + 24) = v33;
    *(a2 + 40) = v34;
    v34 = 0;
    v33 = 0uLL;
    objc_storeStrong((a2 + 16), v16);
    if (!CGRectIsNull(v38))
    {
      v24 = v38.origin.x;
      v25 = v38.origin.y;
      v26 = v38.size.width;
      v27 = v38.size.height;
      v40 = v38;
      v28 = *(a2 + 24);
      if (v28 != *(a2 + 32))
      {
        do
        {
          sub_254B2E6A8(v28, v28, v24, v25);
          v28 += 304;
        }

        while (v28 != *(a2 + 32));
        *(a2 + 48) = v26;
        *(a2 + 52) = v27;
        if (*(a2 + 16))
        {
          v29 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:?];
          v30 = [MEMORY[0x277CCAE60] valueWithBytes:&v40.size objCType:"{CGSize=dd}"];
          [v29 setObject:v30 forKeyedSubscript:IC_A_STAT_MOVIE_DIMENSIONS];

          v31 = *(a2 + 16);
          *(a2 + 16) = v29;
        }
      }
    }

    v13 = 1;
    goto LABEL_20;
  }

  v13 = 0;
LABEL_22:

  return v13;
}

void sub_254B2BBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  a23 = &a9;
  sub_254B36F30(&a23);

  _Unwind_Resume(a1);
}

void sub_254B2BDBC(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);

  _Unwind_Resume(a1);
}

os_signpost_id_t *sub_254B2BE10(os_signpost_id_t *a1)
{
  if (qword_281535C00 != -1)
  {
    sub_254B8831C();
  }

  v2 = qword_281535BF8;
  v3 = v2;
  v4 = *a1;
  if (*a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_254B25000, v3, OS_SIGNPOST_INTERVAL_END, v4, "ICAnalysisInit", "", v6, 2u);
  }

  return a1;
}

os_signpost_id_t *sub_254B2BEC8(os_signpost_id_t *a1)
{
  if (qword_281535C00 != -1)
  {
    sub_254B8831C();
  }

  v2 = qword_281535BF8;
  v3 = v2;
  v4 = *a1;
  if (*a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_254B25000, v3, OS_SIGNPOST_INTERVAL_END, v4, "ICAnalysisAddFrame", "", v6, 2u);
  }

  return a1;
}

os_signpost_id_t *sub_254B2BF80(os_signpost_id_t *a1)
{
  if (qword_281535C00 != -1)
  {
    sub_254B8831C();
  }

  v2 = qword_281535BF8;
  v3 = v2;
  v4 = *a1;
  if (*a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_254B25000, v3, OS_SIGNPOST_INTERVAL_END, v4, "ICAnalysisStopAndGetResult", "", v6, 2u);
  }

  return a1;
}

uint64_t ICLiveAnalysisApplyFrameCorrection(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v35 = *MEMORY[0x277D85DE8];
  if (!sub_254B274B0(a1))
  {
    return 0;
  }

  v16 = 0;
  v17 = (a1 + 256);
  v18 = a1 + 256;
  do
  {
    v19 = 0;
    v20 = a3;
    do
    {
      v21 = 0;
      v22 = 0.0;
      v23 = v20;
      do
      {
        v24 = *v23;
        v23 += 3;
        v22 = v22 + *(v18 + v21) * v24;
        v21 += 8;
      }

      while (v21 != 24);
      *(v33 + 3 * v16 + v19++) = v22;
      ++v20;
    }

    while (v19 != 3);
    ++v16;
    v18 += 24;
  }

  while (v16 != 3);
  v25 = 0;
  v26 = v33[3];
  *(a1 + 288) = v33[2];
  *(a1 + 304) = v26;
  *(a1 + 320) = v34;
  v27 = v33[1];
  *v17 = v33[0];
  *(a1 + 272) = v27;
  v28 = (a1 + 320);
  v29 = vld1q_dup_f64(v28);
  do
  {
    v17[v25] = vdivq_f64(v17[v25], v29);
    ++v25;
  }

  while (v25 != 4);
  *(a1 + 320) = 0x3FF0000000000000;
  v30 = *(a1 + 248);
  [v30 setHomographyMatrix:v17];
  v31 = [v30 ResampleCVPixels:a2 clipToRect:a4 outputSize:a5 pixelBufferPool:{a6, a7, a8, a7, a8}];

  return v31;
}

double *ICGetCorrectionsResultOptionalData(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    if ([IC_D_L1_CONSTRAINT_VIOLATIONS isEqualToString:v3])
    {
      v5 = *(a1 + 240);
      if (v5)
      {
        v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:(*(v5 + 2) - *(v5 + 1)) >> 3];
        v7 = *(v5 + 1);
        if (*(v5 + 2) != v7)
        {
          v8 = 0;
          v9 = 1;
          do
          {
            v10 = [MEMORY[0x277CCABB0] numberWithDouble:*(v7 + 8 * v8)];
            [v6 addObject:v10];

            v8 = v9;
            v7 = *(v5 + 1);
            ++v9;
          }

          while (v8 < (*(v5 + 2) - v7) >> 3);
        }

        v18 = IC_D_L1_CROP_CONSTRAINT_VIOLATION;
        v11 = [MEMORY[0x277CCABB0] numberWithDouble:*v5];
        v19 = IC_D_L1_SALIENCY_CONSTRAINT_VIOLATION;
        v23 = v11;
        v24 = v6;
        v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v18 count:2];
      }
    }

    else if ([IC_D_L1_SMOOTHNESS_METRICS isEqualToString:v4])
    {
      v5 = *(a1 + 248);
      if (v5)
      {
        v18 = IC_D_L1_OBJECTIVE;
        v12 = [MEMORY[0x277CCABB0] numberWithDouble:*v5];
        v23 = v12;
        v19 = IC_D_L1_CORRECTION_MAGNITUDE;
        v13 = [MEMORY[0x277CCABB0] numberWithDouble:v5[1]];
        v24 = v13;
        v20 = IC_D_L1_FIRST_DERIV;
        v14 = [MEMORY[0x277CCABB0] numberWithDouble:v5[4]];
        v25 = v14;
        v21 = IC_D_L1_SECOND_DERIV;
        v15 = [MEMORY[0x277CCABB0] numberWithDouble:v5[5]];
        v26 = v15;
        v22 = IC_D_L1_THIRD_DERIV;
        v16 = [MEMORY[0x277CCABB0] numberWithDouble:v5[6]];
        v27 = v16;
        v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v18 count:5];
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

void ICCalcCinematicL1Init(void *a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (qword_281535C00 != -1)
  {
    sub_254B8831C();
  }

  v8 = qword_281535BF8;
  v9 = os_signpost_id_generate(v8);
  v12 = v9;
  if (qword_281535C00 != -1)
  {
    sub_254B8831C();
  }

  v10 = qword_281535BF8;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254B25000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "ICCalcCinematicL1_Init", "", buf, 2u);
  }

  operator new();
}

void sub_254B2CB88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id location, uint64_t a12, os_signpost_id_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_254B37270(&a15);
  objc_destroyWeak(&location);
  sub_254B37270(&a25);
  (*(*v28 + 8))(v28);
  sub_254B2D408(&a13);

  _Unwind_Resume(a1);
}

void sub_254B2CC50(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  *a2 = 0;
  *(a2 + 2) = 0;
  v4 = MEMORY[0x277CBF398];
  v5 = *(MEMORY[0x277CBF398] + 16);
  *(a2 + 8) = *MEMORY[0x277CBF398];
  *(a2 + 24) = v5;
  v14 = v3;
  v6 = [v3 objectForKeyedSubscript:IC_A_HOMOGRAPHIES_INVERTED];
  v7 = v6;
  if (v6)
  {
    *a2 = [v6 BOOLValue];
  }

  v8 = [v14 objectForKeyedSubscript:IC_A_HOMOGRAPHIES_MAP_TO_REFERENCE];
  v9 = v8;
  if (v8)
  {
    *(a2 + 1) = [v8 BOOLValue];
  }

  v10 = [v14 objectForKeyedSubscript:IC_A_CALC_4DOF_POSES];
  v11 = v10;
  if (v10)
  {
    *(a2 + 2) = [v10 BOOLValue];
  }

  v12 = [v14 objectForKeyedSubscript:IC_A_REQUESTED_CROP_RECT];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !CGRectMakeWithDictionaryRepresentation(v12, (a2 + 8)))
  {
    v13 = v4[1];
    *(a2 + 8) = *v4;
    *(a2 + 24) = v13;
  }
}

uint64_t sub_254B2CDE4(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v5 = [v3 count];
    if (v5)
    {
      v6 = [v4 objectAtIndexedSubscript:v5 - 1];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v6 objectForKeyedSubscript:IC_A_FRAMETRANSFORM_HOMOGRAPHY];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 count] == 9)
        {
          v8 = 0;
          while (1)
          {
            v9 = [v7 objectAtIndexedSubscript:v8];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              break;
            }

            [v9 doubleValue];
            *(a2 + 8 * v8) = v10;

            if (++v8 == 9)
            {
              a2 = 1;
              goto LABEL_14;
            }
          }
        }

        a2 = 0;
LABEL_14:
      }

      else
      {
        a2 = 0;
      }
    }

    else
    {
      a2 = 0;
    }
  }

  return a2;
}

void sub_254B2CF68(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  __asm { FMOV            V0.2S, #-1.0 }

  *a2 = _D0;
  *(a2 + 8) = -1;
  *(a2 + 16) = -1;
  *(a2 + 20) = 0;
  *(a2 + 24) = -4294967255;
  *(a2 + 32) = 0xFFFFFFFFLL;
  *(a2 + 72) = 0;
  *(a2 + 40) = 0;
  if (v3)
  {
    v10 = [v3 objectForKeyedSubscript:IC_C_CROP_FRACTION];
    v11 = v10;
    if (v10)
    {
      [v10 floatValue];
      *a2 = v12;
    }

    v13 = [v4 objectForKeyedSubscript:IC_C_CROP_ASPECT_RATIO];

    if (v13)
    {
      [v13 floatValue];
      *(a2 + 4) = v14;
    }

    v15 = [v4 objectForKeyedSubscript:IC_C_FIRST_INDEX];

    if (v15)
    {
      *(a2 + 8) = [v15 intValue];
    }

    v16 = [v4 objectForKeyedSubscript:IC_C_LAST_INDEX];

    if (v16)
    {
      *(a2 + 12) = [v16 intValue];
    }

    v17 = [v4 objectForKeyedSubscript:IC_C_REF_INDEX];

    if (v17)
    {
      *(a2 + 16) = [v17 intValue];
    }

    v18 = [v4 objectForKeyedSubscript:IC_C_KERNEL_LENGTH];

    if (v18)
    {
      *(a2 + 24) = [v18 intValue];
    }

    v19 = [v4 objectForKeyedSubscript:IC_C_L1_WINDOW_LENGTH];

    if (v19)
    {
      *(a2 + 28) = [v19 intValue];
    }

    v20 = [v4 objectForKeyedSubscript:IC_C_L1_WINDOW_STRIDE];

    if (v20)
    {
      *(a2 + 32) = [v20 intValue];
    }

    v21 = [v4 objectForKeyedSubscript:IC_C_DISABLE_GAUSSIAN];
    *(a2 + 20) = [v21 BOOLValue];

    v22 = [v4 objectForKeyedSubscript:IC_C_DISABLE_CROP];
    *(a2 + 36) = [v22 BOOLValue];

    v23 = [v4 objectForKeyedSubscript:IC_C_FREE_ASPECT_RATIO];
    *(a2 + 37) = [v23 BOOLValue];

    v24 = [v4 objectForKeyedSubscript:IC_C_L1_USE_4DOF_POSES];
    *(a2 + 38) = [v24 BOOLValue];

    v25 = [v4 objectForKeyedSubscript:IC_C_L1_DISABLE_SIDELENGTH_CONSTRAINT];
    *(a2 + 39) = [v25 BOOLValue];

    v26 = [v4 objectForKeyedSubscript:IC_C_L1_DISABLE_AREA_CONSTRAINT];
    *(a2 + 40) = [v26 BOOLValue];

    v27 = [v4 objectForKeyedSubscript:IC_A_RESULT_DELEGATE];

    if (v27)
    {
      v28 = [v4 objectForKeyedSubscript:IC_A_RESULT_DELEGATE];
      objc_initWeak(&location, v28);

      objc_copyWeak(&v29, &location);
      objc_moveWeak(&to, &v29);
      v34 = 0;
      v32 = &unk_2866FFF78;
      objc_moveWeak(&v33, &to);
      v34 = &v32;
      objc_destroyWeak(&to);
      sub_254B3422C(&v32, (a2 + 48));
      sub_254B37270(&v32);
      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
    }
  }
}

void sub_254B2D338(_Unwind_Exception *a1)
{
  sub_254B37270(v2 + 48);

  _Unwind_Resume(a1);
}

void *sub_254B2D394(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  sub_254B384E4(v4, a2);
  sub_254B3422C(v4, a1);
  sub_254B37270(v4);
  return a1;
}

os_signpost_id_t *sub_254B2D408(os_signpost_id_t *a1)
{
  if (qword_281535C00 != -1)
  {
    sub_254B8831C();
  }

  v2 = qword_281535BF8;
  v3 = v2;
  v4 = *a1;
  if (*a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_254B25000, v3, OS_SIGNPOST_INTERVAL_END, v4, "ICCalcCinematicL1_Init", "", v6, 2u);
  }

  return a1;
}

uint64_t ICCalcCinematicL1AddData(uint64_t a1, void *a2, void *a3)
{
  v70 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v50 = a3;
  if (qword_281535C00 != -1)
  {
    sub_254B8831C();
  }

  v6 = qword_281535BF8;
  v7 = os_signpost_id_generate(v6);
  v67 = v7;
  if (qword_281535C00 != -1)
  {
    sub_254B8831C();
  }

  v8 = qword_281535BF8;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254B25000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "ICCalcCinematicL1_AddData", "", buf, 2u);
  }

  if (a1)
  {
    if (!v5)
    {
      if (qword_281535C00 != -1)
      {
        sub_254B88330();
      }

      v27 = qword_281535BF8;
      v24 = v27;
      v28 = v67;
      if (v67 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v27))
      {
        goto LABEL_50;
      }

      *buf = 0;
      goto LABEL_49;
    }

    v10 = *(a1 + 344);
    v11 = (v10 + 24);
    v12 = *(v10 + 24);
    v13 = *(v10 + 32);
    if (*(a1 + 234))
    {
      v14 = *(a1 + 233);
      *buf = 0;
      v60 = 0;
      v61 = 0;
      if ((sub_254B2DCFC(v11, v5, *(a1 + 232), v14, (a1 + 272), 0, buf) & v14) == 1)
      {
        v15 = *(a1 + 344);
        v16 = *(v15 + 48);
        v17 = *(v15 + 52);
        IsNull = CGRectIsNull(*(a1 + 240));
        v19 = 0.0;
        v20 = v17;
        v21 = v16;
        v22 = 0.0;
        if (!IsNull)
        {
          v22 = *(a1 + 240);
          v19 = *(a1 + 248);
          v21 = *(a1 + 256);
          v20 = *(a1 + 264);
        }

        sub_254B49A50(*(a1 + 344) + 96, buf, a1 + 272, v16, v17, v22, v19, v21, v20);
        *v53 = buf;
        sub_254B36F30(v53);
        goto LABEL_27;
      }

      *v53 = buf;
      sub_254B36F30(v53);
    }

    else if (sub_254B2DCFC(v11, v5, *(a1 + 232), *(a1 + 233), (a1 + 272), 0, 0))
    {
LABEL_27:
      if (sub_254B2CDE4(v5, a1 + 272))
      {
        v29 = *(v10 + 32);
        v49 = *(v10 + 24);
        v30 = v13 - v12;
        if (!CGRectIsNull(*(a1 + 240)))
        {
          for (i = v30 + *(v10 + 24); i != *(v10 + 32); i += 304)
          {
            sub_254B2E6A8(i, i, *(a1 + 240), *(a1 + 248));
          }
        }

        v24 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:*(*(a1 + 344) + 16)];
        v32 = [MEMORY[0x277CCABB0] numberWithInt:678152731 * ((*(*(a1 + 344) + 32) - *(*(a1 + 344) + 24)) >> 4)];
        [v24 setObject:v32 forKeyedSubscript:IC_A_STAT_FRAME_COUNT];

        objc_storeStrong((*(a1 + 344) + 16), v24);
        v33 = 0x86BCA1AF286BCA1BLL * (v30 >> 4);
        v34 = 0x86BCA1AF286BCA1BLL * ((v29 - v49) >> 4) - v33;
        *buf = 0;
        v60 = 0;
        v63[0] = 0;
        v63[1] = 0;
        v61 = 0;
        v62 = v63;
        *v64 = 0u;
        *v65 = 0u;
        v66 = 0u;
        v26 = sub_254B67D98(buf, v50, *(*(a1 + 344) + 48), v34);
        if (v26)
        {
          if (qword_281535C00 != -1)
          {
            sub_254B88330();
          }

          v35 = qword_281535BF8;
          v36 = v35;
          v37 = v67;
          if (v67 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
          {
            *v53 = 0;
            _os_signpost_emit_with_name_impl(&dword_254B25000, v36, OS_SIGNPOST_EVENT, v37, "ICCalcCinematicL1_AddData", "IC_ERROR_BAD_INPUT", v53, 2u);
          }
        }

        else
        {
          sub_254B6892C(a1 + 352, buf, 0x86BCA1AF286BCA1BLL * ((*(a1 + 32) - *(a1 + 24)) >> 4));
          sub_254B68928(v53, a1 + 352, v33, v34);
          sub_254B2E8CC(v11, v33, v34, v52);
          LODWORD(v68) = 0;
          v41 = *(a1 + 584);
          v42 = *(a1 + 344);
          v43 = *(v42 + 48);
          sub_254B384E4(v69, a1 + 552);
          sub_254B68C08(a1 + 448, v41, v52, v42 + 96, v43, v53, v69, &v68);
          sub_254B37270(v69);
          v26 = v68;
          if (v68)
          {
            if (v68 == 3)
            {
              v44 = sub_254B29EA0();
              v45 = v44;
              v46 = v67;
              if (v67 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
              {
                *v51 = 0;
                _os_signpost_emit_with_name_impl(&dword_254B25000, v45, OS_SIGNPOST_EVENT, v46, "ICCalcCinematicL1_AddData", "IC_ERROR_BAD_INPUT", v51, 2u);
              }

              v26 = 10;
            }

            else
            {
              v47 = sub_254B29EA0();
              v45 = v47;
              v48 = v67;
              if (v67 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
              {
                *v51 = 0;
                _os_signpost_emit_with_name_impl(&dword_254B25000, v45, OS_SIGNPOST_EVENT, v48, "ICCalcCinematicL1_AddData", "IC_ERROR_CALCULATING_CORRECTIONS", v51, 2u);
              }

              v26 = 9;
            }
          }

          v68 = v52;
          sub_254B36F30(&v68);
          if (__p)
          {
            v58 = __p;
            operator delete(__p);
          }

          if (v55)
          {
            v56 = v55;
            operator delete(v55);
          }

          sub_254B35FEC(v54, v54[1]);
          v52[0] = v53;
          sub_254B35B8C(v52);
        }

        if (v65[1])
        {
          *&v66 = v65[1];
          operator delete(v65[1]);
        }

        if (v64[0])
        {
          v64[1] = v64[0];
          operator delete(v64[0]);
        }

        sub_254B35FEC(&v62, v63[0]);
        *v53 = buf;
        sub_254B35B8C(v53);
        goto LABEL_51;
      }

      if (qword_281535C00 != -1)
      {
        sub_254B88330();
      }

      v39 = qword_281535BF8;
      v24 = v39;
      v28 = v67;
      if (v67 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v39))
      {
LABEL_50:
        v26 = 10;
        goto LABEL_51;
      }

      *buf = 0;
LABEL_49:
      _os_signpost_emit_with_name_impl(&dword_254B25000, v24, OS_SIGNPOST_EVENT, v28, "ICCalcCinematicL1_AddData", "IC_ERROR_BAD_INPUT", buf, 2u);
      goto LABEL_50;
    }

    if (qword_281535C00 != -1)
    {
      sub_254B88330();
    }

    v38 = qword_281535BF8;
    v24 = v38;
    v28 = v67;
    if (v67 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v38))
    {
      goto LABEL_50;
    }

    *buf = 0;
    goto LABEL_49;
  }

  if (qword_281535C00 != -1)
  {
    sub_254B88330();
  }

  v23 = qword_281535BF8;
  v24 = v23;
  v25 = v67;
  if (v67 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254B25000, v24, OS_SIGNPOST_EVENT, v25, "ICCalcCinematicL1_AddData", "IC_ERROR_CINEMATIC_SESSION_MALFORMED", buf, 2u);
  }

  v26 = 3;
LABEL_51:

  sub_254B2E9A4(&v67);
  return v26;
}

void sub_254B2DC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_254B37270(v29 - 128);
  *(v29 - 136) = &a12;
  sub_254B36F30((v29 - 136));
  sub_254B2E940(&a15);
  sub_254B2E940(&a27);

  sub_254B2E9A4((v29 - 144));
  _Unwind_Resume(a1);
}

BOOL sub_254B2DCFC(uint64_t *a1, void *a2, int a3, int a4, double *a5, uint64_t a6, uint64_t *a7)
{
  v124 = *MEMORY[0x277D85DE8];
  v98 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v10 = [v98 count]) != 0)
  {
    v114 = 0uLL;
    *&v115 = 0;
    sub_254B34490(&v114, v10);
    v11 = 0;
    LODWORD(v101) = 0;
    while (1)
    {
      v12 = [v98 objectAtIndexedSubscript:v11];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v99 = 0uLL;
        v100 = 0;
        goto LABEL_18;
      }

      v13 = [v12 objectForKeyedSubscript:IC_A_FRAMETRANSFORM_HOMOGRAPHY];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || [v13 count] != 9)
      {
        break;
      }

      v14 = 0;
      v123 = 0;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      do
      {
        v15 = [v13 objectAtIndexedSubscript:v14];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v99 = 0uLL;
          v100 = 0;

          goto LABEL_18;
        }

        [v15 doubleValue];
        *(&v119 + v14) = v16;

        ++v14;
      }

      while (v14 != 9);
      memset(v110, 0, 24);
      v17 = [v12 objectForKeyedSubscript:IC_A_FRAMETRANSFORM_RAWTIME];
      CMTimeMakeFromDictionary(v110, v17);

      if ((v110[12] & 1) == 0)
      {
        break;
      }

      v18 = *(&v114 + 1);
      if (*(&v114 + 1) >= v115)
      {
        v19 = sub_254B34830(&v114, &v101, &v119);
      }

      else
      {
        sub_254B34980(*(&v114 + 1), SLODWORD(v101), &v119);
        v19 = v18 + 304;
      }

      *(&v114 + 1) = v19;
      *(v19 - 136) = 1065353216;
      *(v19 - 232) = 1;
      *(v19 - 4) = 1;
      v20 = *v110;
      *(v19 - 176) = *&v110[16];
      *(v19 - 192) = v20;

      v11 = SLODWORD(v101) + 1;
      ++LODWORD(v101);
      if (v10 <= v11)
      {
        v99 = v114;
        v100 = v115;
        v114 = 0uLL;
        *&v115 = 0;
        goto LABEL_19;
      }
    }

    v99 = 0uLL;
    v100 = 0;

LABEL_18:
LABEL_19:
    *&v119 = &v114;
    sub_254B36F30(&v119);
  }

  else
  {
    v99 = 0uLL;
    v100 = 0;
  }

  v21 = v99;
  if (*(&v99 + 1) == v99)
  {
    goto LABEL_39;
  }

  if (a7 && &v99 != a7)
  {
    sub_254B370AC(a7, v99, *(&v99 + 1), 0x86BCA1AF286BCA1BLL * ((*(&v99 + 1) - v99) >> 4));
  }

  v22 = *a1;
  v23 = a1[1];
  v94 = v23 - *a1;
  v24 = 0x86BCA1AF286BCA1BLL * (v94 >> 4);
  v25 = v23 == *a1;
  if (v23 == *a1)
  {
    sub_254B37230(a1);
    *a1 = v99;
    a1[2] = v100;
    v100 = 0;
    v99 = 0uLL;
    if (!a6)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  v26 = 0x86BCA1AF286BCA1BLL * ((*(&v99 + 1) - v99) >> 4);
  sub_254B34A68(a1, v23, v99, *(&v99 + 1), v26);
  if (0x86BCA1AF286BCA1BLL * (v94 >> 4) < v26 - 0x79435E50D79435E5 * (v94 >> 4))
  {
    v33 = 0;
    v34 = vdupq_n_s64(v26 - 1);
    v35 = *a1 + 16 * (v94 >> 4);
    v27 = 0.0;
    do
    {
      v28 = COERCE_DOUBLE(vmovn_s64(vcgeq_u64(v34, vorrq_s8(vdupq_n_s64(v33), xmmword_254B8AAC0))));
      if (LOBYTE(v28))
      {
        *(v35 + 104) = v24 + v33;
      }

      if (BYTE4(v28))
      {
        *(v35 + 408) = v24 + v33 + 1;
      }

      v33 += 2;
      v35 += 608;
    }

    while (((v26 + 1) & 0xFFFFFFFFFFFFFFFELL) != v33);
  }

  if (a6)
  {
LABEL_35:
    v36 = 0;
    v37 = *a1;
    do
    {
      *(a6 + v36) = *(v37 + v36);
      v36 += 8;
    }

    while (v36 != 72);
  }

LABEL_37:
  if ((a3 & 1) != 0 || a4)
  {
    if (!a3 || (a4 & 1) != 0)
    {
      if (a4)
      {
        if (v23 == v22)
        {
          v114 = 0x3FF0000000000000uLL;
          v115 = 0uLL;
          v116 = 0x3FF0000000000000uLL;
          v117 = 0uLL;
          v118 = 1.0;
        }

        else
        {
          if (!a5)
          {
            goto LABEL_39;
          }

          v55 = *(a5 + 3);
          v116 = *(a5 + 2);
          v117 = v55;
          v118 = a5[8];
          v56 = *(a5 + 1);
          v114 = *a5;
          v115 = v56;
        }

        v57 = *a1;
        if (a1[1] - *a1 > v94)
        {
          v58 = 16 * (v94 >> 4);
          do
          {
            v59 = (v57 + 304 * v24);
            if (v25)
            {
              v115 = *(v59 + 1);
              v116 = *(v59 + 2);
              v117 = *(v59 + 3);
              v118 = v59[8];
              v114 = *v59;
              *v59 = 1.0;
              v59[1] = 0.0;
              v59[2] = 0.0;
              v59[3] = 0.0;
              v59[4] = 1.0;
              v59[5] = 0.0;
              v59[6] = 0.0;
              v59[7] = 0.0;
              v59[8] = 1.0;
            }

            else
            {
              if (a3)
              {
                v60 = v59[7];
                v61 = v59[8];
                v62 = v59[4];
                v63 = v59[5];
                v64 = v62 * v61 - v60 * v63;
                v101 = v64;
                v65 = v59[1];
                v66 = v59[2];
                v67 = v60 * v66 - v65 * v61;
                v68 = v65 * v63 - v62 * v66;
                v102 = v67;
                v103 = v68;
                v69 = *v59;
                v70 = v59[3];
                v71 = v59[6];
                v72 = v67 * v70 + *v59 * v64 + v71 * v68;
                if (fabs(v72) >= 2.22044605e-16)
                {
                  v101 = v64 / v72;
                  v102 = v67 / v72;
                  v103 = v68 / v72;
                  v104 = (v71 * v63 - v70 * v61) / v72;
                  v105 = (v69 * v61 - v71 * v66) / v72;
                  v106 = (v70 * v66 - v69 * v63) / v72;
                  v107 = (v70 * v60 - v71 * v62) / v72;
                  v108 = (v71 * v65 - v69 * v60) / v72;
                  v109 = (v69 * v62 - v70 * v65) / v72;
                }

                v73 = 0;
                v74 = &v114;
                do
                {
                  v75 = 0;
                  v76 = &v101;
                  do
                  {
                    v77 = 0;
                    v78 = 0.0;
                    v79 = v76;
                    do
                    {
                      v80 = *v79;
                      v79 += 3;
                      v78 = v78 + *(v74 + v77) * v80;
                      v77 += 8;
                    }

                    while (v77 != 24);
                    *(&v119 + 3 * v73 + v75++) = v78;
                    ++v76;
                  }

                  while (v75 != 3);
                  ++v73;
                  v74 = (v74 + 24);
                }

                while (v73 != 3);
              }

              else
              {
                v81 = *&v116 * v118 - *(&v117 + 1) * *(&v116 + 1);
                v82 = *(&v117 + 1) * *&v115 - *(&v114 + 1) * v118;
                v101 = v81;
                v102 = v82;
                v83 = *(&v114 + 1) * *(&v116 + 1) - *&v116 * *&v115;
                v103 = v83;
                v84 = v82 * *(&v115 + 1) + *&v114 * v81 + *&v117 * v83;
                if (fabs(v84) >= 2.22044605e-16)
                {
                  v101 = v81 / v84;
                  v102 = v82 / v84;
                  v103 = v83 / v84;
                  v104 = (*&v117 * *(&v116 + 1) - *(&v115 + 1) * v118) / v84;
                  v105 = (*&v114 * v118 - *&v117 * *&v115) / v84;
                  v106 = (*(&v115 + 1) * *&v115 - *&v114 * *(&v116 + 1)) / v84;
                  v107 = (*(&v115 + 1) * *(&v117 + 1) - *&v117 * *&v116) / v84;
                  v108 = (*&v117 * *(&v114 + 1) - *&v114 * *(&v117 + 1)) / v84;
                  v109 = (*&v114 * *&v116 - *(&v115 + 1) * *(&v114 + 1)) / v84;
                }

                v85 = 0;
                v86 = v57 + v58;
                v87 = &v101;
                do
                {
                  v88 = 0;
                  v89 = v86;
                  do
                  {
                    v90 = 0;
                    v91 = 0.0;
                    v92 = v89;
                    do
                    {
                      v93 = *v92;
                      v92 += 3;
                      v91 = v91 + v87[v90++] * v93;
                    }

                    while (v90 != 3);
                    *(&v119 + 3 * v85 + v88++) = v91;
                    ++v89;
                  }

                  while (v88 != 3);
                  ++v85;
                  v87 += 3;
                }

                while (v85 != 3);
              }

              v111 = v121;
              v112 = v122;
              v113 = v123;
              *v110 = v119;
              *&v110[16] = v120;
              v115 = *(v59 + 1);
              v116 = *(v59 + 2);
              v117 = *(v59 + 3);
              v118 = v59[8];
              v114 = *v59;
              *(v59 + 1) = v120;
              *(v59 + 2) = v111;
              *(v59 + 3) = v112;
              *(v59 + 8) = v113;
              *v59 = *v110;
            }

            v25 = 0;
            ++v24;
            v57 = *a1;
            v58 += 304;
          }

          while (v24 < 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 4));
        }
      }
    }

    else
    {
      v39 = *a1;
      if (a1[1] - *a1 > v94)
      {
        v40 = 16 * (v94 >> 4);
        do
        {
          v41 = (v39 + v40);
          v42 = *(v39 + v40 + 56);
          v43 = *(v39 + v40 + 64);
          v44 = *(v39 + v40 + 32);
          v45 = *(v39 + v40 + 40);
          v46 = *(v39 + v40 + 48);
          v47 = v44 * v43 - v42 * v45;
          v49 = *(v39 + v40);
          v48 = *(v39 + v40 + 8);
          v51 = *(v39 + v40 + 16);
          v50 = *(v39 + v40 + 24);
          v52 = v42 * v51 - v48 * v43;
          v53 = v48 * v45 - v44 * v51;
          v54 = v52 * v50 + v49 * v47 + v46 * v53;
          if (fabs(v54) >= 2.22044605e-16)
          {
            v47 = v47 / v54;
            v52 = v52 / v54;
            v53 = v53 / v54;
            v28 = (v46 * v45 - v50 * v43) / v54;
            v27 = (v50 * v42 - v46 * v44) / v54;
            v29 = (v49 * v43 - v46 * v51) / v54;
            v30 = (v50 * v51 - v49 * v45) / v54;
            v31 = (v46 * v48 - v49 * v42) / v54;
            v32 = (v49 * v44 - v50 * v48) / v54;
          }

          *(v39 + v40) = v47;
          v41[1] = v52;
          v41[2] = v53;
          v41[3] = v28;
          v41[4] = v29;
          v41[5] = v30;
          v41[6] = v27;
          v41[7] = v31;
          v41[8] = v32;
          ++v24;
          v39 = *a1;
          v40 += 304;
        }

        while (v24 < 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 4));
      }
    }
  }

LABEL_39:
  *&v119 = &v99;
  sub_254B36F30(&v119);

  return *(&v21 + 1) != v21;
}

void sub_254B2E600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  *(v37 - 176) = &a35;
  sub_254B36F30((v37 - 176));

  _Unwind_Resume(a1);
}

uint64_t sub_254B2E6A8(uint64_t result, uint64_t a2, double a3, double a4)
{
  v46 = *MEMORY[0x277D85DE8];
  v36 = xmmword_254B8AAD0;
  v37 = -a3;
  v38 = xmmword_254B8AAE0;
  v39 = -a4;
  v40 = 0;
  v41 = 0;
  v42 = 0x3FF0000000000000;
  v4 = a4 * 0.0 + 1.0;
  v28 = v4;
  v29 = a3 * -0.0;
  v5 = a3 + a4 * -0.0;
  v30 = v5;
  v6 = v4 + a3 * -0.0 * 0.0 + v5 * 0.0;
  if (fabs(v6) >= 2.22044605e-16)
  {
    v28 = v4 / v6;
    v29 = a3 * -0.0 / v6;
    v30 = v5 / v6;
    v31 = a4 * -0.0 / v6;
    v7 = vdivq_f64(xmmword_254B8AAE0, vdupq_lane_s64(*&v6, 0));
    v32 = (a3 * 0.0 + 1.0) / v6;
    v33 = (a4 + -a3 * 0.0) / v6;
    v34 = v7.f64[0];
    v35 = v7;
  }

  for (i = 0; i != 3; ++i)
  {
    v9 = 0;
    v10 = &v28;
    do
    {
      v11 = 0;
      v12 = 0.0;
      v13 = v10;
      do
      {
        v14 = *v13;
        v13 += 3;
        v12 = v12 + *(result + v11) * v14;
        v11 += 8;
      }

      while (v11 != 24);
      v43[3 * i + v9++] = v12;
      ++v10;
    }

    while (v9 != 3);
    result += 24;
  }

  v15 = 0;
  v16 = &v36;
  do
  {
    v17 = 0;
    v18 = v43;
    do
    {
      v19 = 0;
      v20 = 0.0;
      v21 = v18;
      do
      {
        v22 = *v21;
        v21 += 3;
        v20 = v20 + *(v16 + v19) * v22;
        v19 += 8;
      }

      while (v19 != 24);
      *(v44 + 3 * v15 + v17++) = v20;
      ++v18;
    }

    while (v17 != 3);
    ++v15;
    v16 = (v16 + 24);
  }

  while (v15 != 3);
  v23 = 0;
  v24 = v44[3];
  *(a2 + 32) = v44[2];
  *(a2 + 48) = v24;
  *(a2 + 64) = v45;
  v25 = v44[1];
  *a2 = v44[0];
  *(a2 + 16) = v25;
  v26 = (a2 + 64);
  v27 = vld1q_dup_f64(v26);
  do
  {
    *(a2 + v23) = vdivq_f64(*(a2 + v23), v27);
    v23 += 16;
  }

  while (v23 != 64);
  *(a2 + 64) = 0x3FF0000000000000;
  return result;
}

uint64_t *sub_254B2E8CC@<X0>(uint64_t *result@<X0>, unsigned int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  v4 = *result;
  v5 = result[1];
  if (*result == v5 || (a2 & 0x80000000) != 0 || (v6 = 678152731 * ((v5 - v4) >> 4), v6 <= a2) || a3 <= -2)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    if (a3 == -1)
    {
      v7 = v6 - a2;
    }

    else
    {
      v7 = a3;
    }

    if ((v7 + a2) <= v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6 - a2;
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return sub_254B3857C(a4, v4 + 304 * a2, v4 + 304 * a2 + 304 * v8, v8);
  }

  return result;
}

uint64_t sub_254B2E940(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  sub_254B35FEC(a1 + 24, *(a1 + 32));
  v5 = a1;
  sub_254B35B8C(&v5);
  return a1;
}

os_signpost_id_t *sub_254B2E9A4(os_signpost_id_t *a1)
{
  if (qword_281535C00 != -1)
  {
    sub_254B8831C();
  }

  v2 = qword_281535BF8;
  v3 = v2;
  v4 = *a1;
  if (*a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_254B25000, v3, OS_SIGNPOST_INTERVAL_END, v4, "ICCalcCinematicL1_AddData", "", v6, 2u);
  }

  return a1;
}

uint64_t ICCalcCinematicL1StopAndGetResult(uint64_t a1, void *a2, _DWORD *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (qword_281535C00 != -1)
  {
    sub_254B8831C();
  }

  v6 = qword_281535BF8;
  v7 = os_signpost_id_generate(v6);
  v13 = v7;
  if (qword_281535C00 != -1)
  {
    sub_254B8831C();
  }

  v8 = qword_281535BF8;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254B25000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "ICCalcCinematicL1_StopAndGetResult", "", buf, 2u);
  }

  if (a1)
  {
    sub_254B384E4(v15, a1 + 552);
    sub_254B6A854();
  }

  if (a3)
  {
    *a3 = 3;
  }

  if (qword_281535C00 != -1)
  {
    sub_254B88330();
  }

  v10 = qword_281535BF8;
  v11 = v10;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254B25000, v11, OS_SIGNPOST_EVENT, v13, "ICCalcCinematicL1_StopAndGetResult", "IC_ERROR_CINEMATIC_SESSION_MALFORMED", buf, 2u);
  }

  sub_254B2EDD8(&v13);
  return 0;
}

void sub_254B2ED90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (a3)
  {
    sub_254B88358(a3);
  }

  sub_254B2EDD8(va);

  _Unwind_Resume(a1);
}

os_signpost_id_t *sub_254B2EDD8(os_signpost_id_t *a1)
{
  if (qword_281535C00 != -1)
  {
    sub_254B8831C();
  }

  v2 = qword_281535BF8;
  v3 = v2;
  v4 = *a1;
  if (*a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_254B25000, v3, OS_SIGNPOST_INTERVAL_END, v4, "ICCalcCinematicL1_StopAndGetResult", "", v6, 2u);
  }

  return a1;
}

uint64_t ICCalcCinematicL1Corrections(uint64_t a1, void *a2, void *a3, _DWORD *a4)
{
  v149 = *MEMORY[0x277D85DE8];
  val = a2;
  v7 = a3;
  if (qword_281535C00 != -1)
  {
    sub_254B8831C();
  }

  v8 = qword_281535BF8;
  v9 = os_signpost_id_generate(v8);
  v108 = v9;
  if (qword_281535C00 != -1)
  {
    sub_254B8831C();
  }

  v10 = qword_281535BF8;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(buf.origin.x) = 0;
    _os_signpost_emit_with_name_impl(&dword_254B25000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "ICCalcCinematicL1Corrections", "", &buf, 2u);
  }

  if (sub_254B274B0(a1))
  {
    sub_254B2CF68(v7, &v128);
    if (v128 == 0.0)
    {
      if (a4)
      {
        *a4 = 4;
      }

      if (qword_281535C00 != -1)
      {
        sub_254B88330();
      }

      v12 = qword_281535BF8;
      v13 = v12;
      if (v108 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        LOWORD(buf.origin.x) = 0;
        _os_signpost_emit_with_name_impl(&dword_254B25000, v13, OS_SIGNPOST_EVENT, v108, "ICCalcCinematicL1Corrections", "IC_ERROR_CROP_FRACTION_INVALID", &buf, 2u);
      }

      goto LABEL_146;
    }

    if (v128 < 0.0)
    {
      v128 = 0.1;
    }

    if ((v130 & 0x80000000) != 0)
    {
      v130 = 0;
    }

    v97 = ICGetResultStats(a1);
    v16 = [v97 objectForKeyedSubscript:IC_A_STAT_FRAME_COUNT];
    v17 = [v16 intValue];

    v18 = v131;
    if (v131 == -1 || v131 >= v17)
    {
      v18 = v17 - 1;
      v131 = v17 - 1;
    }

    v19 = v18 + 1;
    if (v130)
    {
      v20 = 0;
    }

    else
    {
      v20 = v19 == v17;
    }

    v21 = !v20;
    v96 = v21;
    v107 = 0uLL;
    v106 = &v107;
    v22 = [v7 objectForKeyedSubscript:IC_C_L1_PATH_CONSTRAINTS];
    v23 = v22 == 0;

    if (v23)
    {
      goto LABEL_98;
    }

    [v7 objectForKeyedSubscript:IC_C_L1_PATH_CONSTRAINTS];
    v103 = 0;
    v104 = 0;
    v92 = v105 = 0;
    sub_254B36FD4(&v103, *(a1 + 24), *(a1 + 32), 0x86BCA1AF286BCA1BLL * ((*(a1 + 32) - *(a1 + 24)) >> 4));
    v24 = v92;
    v25 = [v24 objectForKeyedSubscript:IC_A_HOMOGRAPHIES_INVERTED];
    v95 = v25;
    if (v25)
    {
      v26 = [v25 BOOLValue];
    }

    else
    {
      v26 = 0;
    }

    v110 = 0uLL;
    v111 = 0;
    v27 = [v24 objectForKeyedSubscript:IC_A_FRAMEINSTRUCTIONS];
    v28 = sub_254B2DCFC(&v110, v27, v26, 0, 0, 0, 0);

    if (!v28)
    {
      v57 = 0;
      goto LABEL_97;
    }

    v93 = [v24 objectForKeyedSubscript:IC_A_FLIP_Y_COORDS];
    if (v93 && [v93 BOOLValue])
    {
      dict = [v24 objectForKeyedSubscript:IC_A_INPUT_IMAGE_BOUNDS];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        NSLog(&cfstr_ErrorFlippingO.isa);
        goto LABEL_95;
      }

      memset(&rect, 0, sizeof(rect));
      if (!CGRectMakeWithDictionaryRepresentation(dict, &rect))
      {
        NSLog(&cfstr_ErrorImageBoun.isa);
        goto LABEL_95;
      }

      time1.value = 0x3FF0000000000000;
      *&time1.timescale = 0;
      time1.epoch = 0;
      v115 = 0;
      v116 = 0xBFF0000000000000;
      height = rect.size.height;
      v118 = 0;
      v119 = 0;
      v120 = 0x3FF0000000000000;
      v29 = v110;
      if (*(&v110 + 1) != v110)
      {
        v30 = 0;
        v31 = 0x86BCA1AF286BCA1BLL * ((*(&v110 + 1) - v110) >> 4);
        if (v31 <= 1)
        {
          v31 = 1;
        }

        v32 = v110;
        do
        {
          v33 = 0;
          v34 = v32;
          do
          {
            v35 = 0;
            p_time1 = &time1;
            do
            {
              v37 = 0;
              v38 = 0.0;
              p_value = &p_time1->value;
              do
              {
                v40 = *p_value;
                p_value += 3;
                v38 = v38 + *(v34 + v37) * v40;
                v37 += 8;
              }

              while (v37 != 24);
              *(&buf.origin.x + 3 * v33 + v35++) = v38;
              p_time1 = (p_time1 + 8);
            }

            while (v35 != 3);
            ++v33;
            v34 += 24;
          }

          while (v33 != 3);
          v41 = 0;
          v142 = v124;
          v143 = *v125;
          v144 = v126[0];
          v141 = buf;
          v42 = &time1;
          do
          {
            v43 = 0;
            v44 = &v141;
            do
            {
              v45 = 0;
              v46 = 0.0;
              p_x = &v44->origin.x;
              do
              {
                v48 = *p_x;
                p_x += 3;
                v46 = v46 + *(&v42->value + v45) * v48;
                v45 += 8;
              }

              while (v45 != 24);
              *(&buf.origin.x + 3 * v41 + v43++) = v46;
              v44 = (v44 + 8);
            }

            while (v43 != 3);
            ++v41;
            ++v42;
          }

          while (v41 != 3);
          v49 = 0;
          v148 = v126[0];
          v146 = v124;
          v147 = *v125;
          time2 = buf;
          v50 = vdupq_lane_s64(v126[0], 0);
          do
          {
            *(&time2.origin + v49) = vdivq_f64(*(&time2.origin + v49), v50);
            v49 += 16;
          }

          while (v49 != 64);
          v51 = v29 + 304 * v30;
          *(v51 + 16) = time2.size;
          *(v51 + 32) = v146;
          *(v51 + 48) = v147;
          *(v51 + 64) = 0x3FF0000000000000;
          *v51 = time2.origin;
          ++v30;
          v32 += 304;
        }

        while (v30 != v31);
      }
    }

    dict = [v24 objectForKeyedSubscript:IC_A_REQUESTED_CROP_RECT];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v53 = *(&v110 + 1);
      v52 = v110;
      goto LABEL_76;
    }

    memset(&buf, 0, sizeof(buf));
    if (CGRectMakeWithDictionaryRepresentation(dict, &buf))
    {
      v53 = *(&v110 + 1);
      v52 = v110;
      if (*(&v110 + 1) != v110)
      {
        v54 = v24;
        v55 = 0;
        v56 = 0;
        do
        {
          sub_254B2E6A8(v52 + v55, v52 + v55, buf.origin.x, buf.origin.y);
          ++v56;
          v53 = *(&v110 + 1);
          v52 = v110;
          v55 += 304;
        }

        while (v56 < 0x86BCA1AF286BCA1BLL * ((*(&v110 + 1) - v110) >> 4));
        v24 = v54;
      }

LABEL_76:
      if (v53 == v52)
      {
        v57 = 1;
      }

      else
      {
        v58 = 0;
        v59 = 0;
        v91 = v24;
        while (1)
        {
          v60 = (v52 + 304 * v59);
          v61 = v60[7];
          buf.size.width = v60[8].x;
          buf.origin = v61;
          v62 = v103;
          if (v104 == v103)
          {
            break;
          }

          v63 = 0;
          v64 = 112;
          while (1)
          {
            *&time1.value = buf.origin;
            time1.epoch = *&buf.size.width;
            v65 = (v62 + v64);
            v66 = *v65;
            time2.size.width = v65[1].x;
            time2.origin = v66;
            if (!CMTimeCompare(&time1, &time2))
            {
              break;
            }

            ++v63;
            v62 = v103;
            v64 += 304;
            if (v63 >= 0x86BCA1AF286BCA1BLL * ((v104 - v103) >> 4))
            {
              goto LABEL_90;
            }
          }

          if ((v63 & 0x80000000) != 0)
          {
            break;
          }

          sub_254B35394(&time1, 9uLL);
          *&v67 = v63 & 0x7FFFFFFF;
          v141.origin.x = v67;
          *&time2.origin.x = &v141;
          v68 = sub_254B35490(&v106, &v141);
          v69 = v68[5];
          if (v69)
          {
            v68[6] = v69;
            operator delete(v69);
            v68[5] = 0;
            v68[6] = 0;
            v68[7] = 0;
          }

          *(v68 + 5) = time1;
          time2.origin.x = v67;
          time1.value = &time2;
          v70 = sub_254B35490(&v106, &time2);
          v71 = 0;
          v72 = v70[5];
          v52 = v110;
          v73 = v110 + v58;
          v24 = v91;
          do
          {
            *(v72 + v71) = *(v73 + v71);
            v71 += 8;
          }

          while (v71 != 72);
          ++v59;
          v58 += 304;
          v57 = 1;
          if (v59 >= 0x86BCA1AF286BCA1BLL * ((*(&v110 + 1) - v52) >> 4))
          {
            goto LABEL_96;
          }
        }

LABEL_90:
        v57 = 0;
        v24 = v91;
      }

      goto LABEL_96;
    }

    NSLog(&cfstr_ErrorCropRectD.isa);
LABEL_95:
    v57 = 0;
LABEL_96:

LABEL_97:
    *&buf.origin.x = &v110;
    sub_254B36F30(&buf);

    *&buf.origin.x = &v103;
    sub_254B36F30(&buf);

    if ((v57 & 1) == 0)
    {
      if (a4)
      {
        *a4 = 8;
      }

      if (qword_281535C00 != -1)
      {
        sub_254B88330();
      }

      v74 = qword_281535BF8;
      v75 = v74;
      v76 = v108;
      if (v108 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v74))
      {
        LOWORD(buf.origin.x) = 0;
        _os_signpost_emit_with_name_impl(&dword_254B25000, v75, OS_SIGNPOST_EVENT, v76, "ICCalcCinematicL1Corrections", "IC_ERROR_PATH_CONSTRAINTS_INVALID", &buf, 2u);
      }

      goto LABEL_145;
    }

LABEL_98:
    sub_254B64A6C(&v141);
    LODWORD(v141.origin.x) = v133;
    BYTE4(v141.origin.x) = v132 ^ 1;
    LOBYTE(v142) = v136 ^ 1;
    if (v128 != -1.0)
    {
      *&v141.size.height = 1.0 - v128;
    }

    if (v129 != -1.0)
    {
      *(&v142 + 1) = v129;
    }

    objc_initWeak(&location, val);
    time2.size.height = 0.0;
    *(&v147 + 1) = 0;
    objc_copyWeak(&rect, &location);
    objc_moveWeak(&time1, &rect);
    buf.size.height = 0.0;
    *&buf.origin.x = &unk_286700028;
    objc_moveWeak(&buf.origin.y, &time1);
    *&buf.size.height = &buf;
    objc_destroyWeak(&time1);
    sub_254B37CC4(&buf, &time2);
    sub_254B362D0(&buf);
    objc_destroyWeak(&rect);
    objc_copyWeak(&rect, &location);
    objc_moveWeak(&time1, &rect);
    buf.size.height = 0.0;
    *&buf.origin.x = &unk_2866FFFD0;
    objc_moveWeak(&buf.origin.y, &time1);
    *&buf.size.height = &buf;
    objc_destroyWeak(&time1);
    sub_254B38140(&buf, &v146);
    sub_254B36250(&buf);
    objc_destroyWeak(&rect);
    memset(&buf, 0, 24);
    v124 = 0uLL;
    *&buf.size.height = &v124;
    *v125 = 0u;
    *v126 = 0u;
    v127 = 0u;
    sub_254B35FEC(&buf.size.height, 0);
    *&buf.size.height = v106;
    v124 = v107;
    if (*(&v107 + 1))
    {
      *(v107 + 16) = &v124;
      v106 = &v107;
      v107 = 0uLL;
    }

    else
    {
      *&buf.size.height = &v124;
    }

    v77 = sub_254B67D98(&buf, v7, *(a1 + 48), 0x86BCA1AF286BCA1BLL * ((*(a1 + 32) - *(a1 + 24)) >> 4));
    if (v77)
    {
      if (a4)
      {
        *a4 = v77;
      }

      if (qword_281535C00 != -1)
      {
        sub_254B88330();
      }

      v78 = qword_281535BF8;
      v79 = v78;
      v80 = v108;
      if (v108 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v78))
      {
        LOWORD(time1.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_254B25000, v79, OS_SIGNPOST_EVENT, v80, "ICCalcCinematicL1Corrections", "IC_ERROR_BAD_INPUT", &time1, 2u);
      }
    }

    else
    {
      if (v96)
      {
        sub_254B68928(&time1, &buf, v130, v131 - v130 + 1);
        sub_254B2E8CC((a1 + 24), v130, v131 - v130 + 1, &rect);
        v101 = 0;
        if (sub_254B30264((a1 + 96)))
        {
          operator new();
        }
      }

      else
      {
        sub_254B357BC(&time1, &buf);
        memset(&rect, 0, 24);
        sub_254B36FD4(&rect, *(a1 + 24), *(a1 + 32), 0x86BCA1AF286BCA1BLL * ((*(a1 + 32) - *(a1 + 24)) >> 4));
        v101 = 0;
      }

      v100 = 0;
      sub_254B68A3C(&v141, *(a1 + 48), &time2, v134, v135, v137, v138, v139, &v110, v128, &v100);
      if (v100)
      {
        if (a4)
        {
          *a4 = 10;
        }

        if (qword_281535C00 != -1)
        {
          sub_254B88330();
        }

        v81 = qword_281535BF8;
        v82 = v81;
        v83 = v108;
        if (v108 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v81))
        {
          *v99 = 0;
          _os_signpost_emit_with_name_impl(&dword_254B25000, v82, OS_SIGNPOST_EVENT, v83, "ICCalcCinematicL1Corrections", "IC_ERROR_BAD_INPUT", v99, 2u);
        }
      }

      else
      {
        v85 = v110;
        v86 = *(a1 + 48);
        sub_254B384E4(v113, v140);
        sub_254B68C08(&v141, v85, &rect, a1 + 96, v86, &time1.value, v113, &v100);
        sub_254B37270(v113);
        if (!v100)
        {
          sub_254B384E4(v112, v140);
          sub_254B6A854();
        }

        if (v100 == 3)
        {
          if (a4)
          {
            *a4 = 10;
          }

          v87 = sub_254B29EA0();
          v82 = v87;
          v88 = v108;
          if (v108 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v87))
          {
            *v99 = 0;
            _os_signpost_emit_with_name_impl(&dword_254B25000, v82, OS_SIGNPOST_EVENT, v88, "ICCalcCinematicL1Corrections", "IC_ERROR_BAD_INPUT", v99, 2u);
          }
        }

        else
        {
          if (a4)
          {
            *a4 = 9;
          }

          v89 = sub_254B29EA0();
          v82 = v89;
          v90 = v108;
          if (v108 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v89))
          {
            *v99 = 0;
            _os_signpost_emit_with_name_impl(&dword_254B25000, v82, OS_SIGNPOST_EVENT, v90, "ICCalcCinematicL1Corrections", "IC_ERROR_CALCULATING_CORRECTIONS", v99, 2u);
          }
        }
      }

      sub_254B383A4(&v110, 0);
      sub_254B38B54(&v101, 0);
      *&v110 = &rect;
      sub_254B36F30(&v110);
      if (__p)
      {
        v122 = __p;
        operator delete(__p);
      }

      if (v118)
      {
        v119 = v118;
        operator delete(v118);
      }

      sub_254B35FEC(&v115, v116);
      *&rect.origin.x = &time1;
      sub_254B35B8C(&rect);
    }

    if (v126[1])
    {
      *&v127 = v126[1];
      operator delete(v126[1]);
    }

    if (v125[0])
    {
      v125[1] = v125[0];
      operator delete(v125[0]);
    }

    sub_254B35FEC(&buf.size.height, v124);
    time1.value = &buf;
    sub_254B35B8C(&time1);
    sub_254B36250(&v146);
    sub_254B362D0(&time2);
    objc_destroyWeak(&location);
    nullsub_2(&v141);
LABEL_145:
    sub_254B35FEC(&v106, v107);
    v13 = v97;
LABEL_146:

    sub_254B37270(v140);
    goto LABEL_147;
  }

  if (a4)
  {
    *a4 = 1;
  }

  if (qword_281535C00 != -1)
  {
    sub_254B88330();
  }

  v14 = qword_281535BF8;
  v15 = v14;
  if (v108 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    LOWORD(buf.origin.x) = 0;
    _os_signpost_emit_with_name_impl(&dword_254B25000, v15, OS_SIGNPOST_EVENT, v108, "ICCalcCinematicL1Corrections", "IC_ERROR_ANALYSIS_MALFORMED", &buf, 2u);
  }

LABEL_147:
  sub_254B30468(&v108);

  return 0;
}

void sub_254B30074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, os_signpost_id_t a32, __int16 a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  sub_254B37270(&a41);
  sub_254B383A4(&a37, 0);
  sub_254B38B54(&a24, 0);
  a37 = &a33;
  sub_254B36F30(&a37);
  sub_254B2E940(&__p);
  sub_254B2E940(&a61);
  sub_254B36250(v62 + 32);
  sub_254B362D0(v63 - 176);
  objc_destroyWeak(&location);
  nullsub_2(v63 - 256);
  sub_254B35FEC(&a29, a30);

  sub_254B37270(&STACK[0x230]);
  sub_254B30468(&a32);

  _Unwind_Resume(a1);
}

BOOL sub_254B30264(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  v2 = v1 - *a1;
  v3 = 0xAAAAAAAAAAAAAAABLL * (v2 >> 3);
  if (0x8E38E38E38E38E39 * ((a1[4] - a1[3]) >> 3) != v3 || 0x8E38E38E38E38E39 * ((a1[10] - a1[9]) >> 3) != v3 || a1[13] != v3)
  {
    return 0;
  }

  v4 = a1[7] - a1[6];
  return !v4 || v4 == v2;
}

uint64_t *sub_254B302EC@<X0>(uint64_t *result@<X0>, unsigned int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  v4 = *result;
  v5 = result[1];
  if (*result == v5 || (a2 & 0x80000000) != 0 || (v6 = -1431655765 * ((v5 - v4) >> 3), v6 <= a2) || a3 <= -2)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    if (a3 == -1)
    {
      v7 = v6 - a2;
    }

    else
    {
      v7 = a3;
    }

    if ((v7 + a2) <= v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6 - a2;
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return sub_254B38BF8(a4, v4 + 24 * a2, v4 + 24 * a2 + 24 * v8, v8);
  }

  return result;
}

uint64_t *sub_254B30360@<X0>(uint64_t *result@<X0>, unsigned int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  v4 = *result;
  v5 = result[1];
  if (*result == v5 || (a2 & 0x80000000) != 0 || (v6 = 954437177 * ((v5 - v4) >> 3), v6 <= a2) || a3 <= -2)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    if (a3 == -1)
    {
      v7 = v6 - a2;
    }

    else
    {
      v7 = a3;
    }

    if ((v7 + a2) <= v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6 - a2;
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return sub_254B38C78(a4, v4 + 72 * a2, v4 + 72 * a2 + 72 * v8, v8);
  }

  return result;
}

void *sub_254B303D4@<X0>(void *result@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  v4 = result[1];
  if (v4 && (a2 & 0x80000000) == 0 && v4 > a2 && a3 > -2)
  {
    if (a3 == -1)
    {
      v5 = v4 - a2;
    }

    else
    {
      v5 = a3;
    }

    if (v5 + a2 <= v4)
    {
      v6 = v5;
    }

    else
    {
      v6 = v4 - a2;
    }

    v7 = a2;
    v8 = *result + ((a2 >> 3) & 0x1FFFFFF8);
    v9 = (v7 & 0x3F) + v6;
    v10 = v9 - 63;
    if (v9 < 63)
    {
      v10 = (v7 & 0x3F) + v6;
    }

    v11 = v10 >> 6;
    v12 = v9 >> 6;
    if (v6 < 0)
    {
      v12 = v11;
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return sub_254B38D0C(a4, v8, v7 & 0x3F, v8 + 8 * v12, (v6 + v7) & 0x3F, ((v6 + v7) & 0x3F) - (v7 & 0x3F) + (v12 << 6));
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  return result;
}

os_signpost_id_t *sub_254B30468(os_signpost_id_t *a1)
{
  if (qword_281535C00 != -1)
  {
    sub_254B8831C();
  }

  v2 = qword_281535BF8;
  v3 = v2;
  v4 = *a1;
  if (*a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_254B25000, v3, OS_SIGNPOST_INTERVAL_END, v4, "ICCalcCinematicL1Corrections", "", v6, 2u);
  }

  return a1;
}

uint64_t ICCorrectionCopyAndExtend(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v7 = a3;
  if (qword_281535C00 != -1)
  {
    sub_254B8831C();
  }

  v8 = qword_281535BF8;
  v9 = os_signpost_id_generate(v8);
  v19 = v9;
  if (qword_281535C00 != -1)
  {
    sub_254B8831C();
  }

  v10 = qword_281535BF8;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254B25000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "ICCorrectionUpdateWithSourceSize", "", buf, 2u);
  }

  if (sub_254B274B0(a1))
  {
    if (sub_254B274B0(a2))
    {
      operator new();
    }

    if (a4)
    {
      *a4 = 2;
    }

    if (qword_281535C00 != -1)
    {
      sub_254B88330();
    }

    v16 = qword_281535BF8;
    v13 = v16;
    v14 = v19;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      v15 = "IC_ERROR_CORRECTIONS_MALFORMED";
      goto LABEL_25;
    }
  }

  else
  {
    if (a4)
    {
      *a4 = 1;
    }

    if (qword_281535C00 != -1)
    {
      sub_254B88330();
    }

    v12 = qword_281535BF8;
    v13 = v12;
    v14 = v19;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      v15 = "IC_ERROR_ANALYSIS_MALFORMED";
LABEL_25:
      _os_signpost_emit_with_name_impl(&dword_254B25000, v13, OS_SIGNPOST_EVENT, v14, "ICCorrectionUpdateWithSourceSize", v15, buf, 2u);
    }
  }

  sub_254B30978(&v19);
  return 0;
}

void sub_254B308A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, os_signpost_id_t a15, void **a16)
{
  a16 = &a11;
  sub_254B36F30(&a16);
  (*(*v16 + 8))(v16);
  sub_254B30978(&a15);

  _Unwind_Resume(a1);
}

uint64_t sub_254B30938(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_254B38E78(a1, a2);
  }

  else
  {
    sub_254B38D90(a1, a2);
    result = v3 + 304;
  }

  a1[1] = result;
  return result;
}

os_signpost_id_t *sub_254B30978(os_signpost_id_t *a1)
{
  if (qword_281535C00 != -1)
  {
    sub_254B8831C();
  }

  v2 = qword_281535BF8;
  v3 = v2;
  v4 = *a1;
  if (*a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_254B25000, v3, OS_SIGNPOST_INTERVAL_END, v4, "ICCorrectionUpdateWithSourceSize", "", v6, 2u);
  }

  return a1;
}

uint64_t ICCalcSmoothingCorrections(uint64_t a1, void *a2, _DWORD *a3)
{
  v5 = a2;
  if (sub_254B274B0(a1))
  {
    operator new();
  }

  if (a3)
  {
    *a3 = 1;
  }

  return 0;
}

void sub_254B30C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  nullsub_2(va);
  sub_254B37270(va1);
  (*(*v4 + 8))(v4);

  _Unwind_Resume(a1);
}

uint64_t ICCalcCanDoTripod(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, void *a5)
{
  v30[4] = *MEMORY[0x277D85DE8];
  v8 = a2;
  if (sub_254B274B0(a1))
  {
    sub_254B2CF68(v8, &v22);
    if (v24 == -1)
    {
      v24 = 0;
    }

    if (v25 == -1)
    {
      v9 = ICGetResultStats(a1);
      v10 = [v9 objectForKeyedSubscript:IC_A_STAT_FRAME_COUNT];
      v11 = [v10 intValue];

      v25 = v11 - 1;
    }

    if (v26 == -1)
    {
      v26 = (v25 + v24) / 2;
    }

    v21 = 0;
    sub_254B30FD8(v8, &v21);
    sub_254B64A6C(&v16);
    v16 = v28;
    v17 = v27 ^ 1;
    v19 = v29 ^ 1;
    if (v22 != -1.0)
    {
      v18 = 1.0 - v22;
    }

    if (v23 != -1.0)
    {
      v20 = v23;
    }

    if (a5)
    {
      v12 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:*a5];
    }

    else
    {
      v12 = 0;
    }

    if (v21 == 1)
    {
      sub_254B6B114(&v16, (a1 + 24), *(a1 + 48), v26, v24, v25);
    }

    v13 = sub_254B6B1A4(&v16, (a1 + 24), *(a1 + 48), *(a1 + 232), v26, v24, v25);
    if (a5)
    {
      v14 = v12;
      *a5 = v12;
    }

    nullsub_2(&v16);
    sub_254B37270(v30);
  }

  else
  {
    v13 = 0;
    if (a3)
    {
      *a3 = 1;
    }
  }

  return v13;
}

void sub_254B30F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  nullsub_2(&a11);
  sub_254B37270(&a23);

  _Unwind_Resume(a1);
}

void sub_254B30FD8(void *a1, _BYTE *a2)
{
  v3 = a1;
  *a2 = 0;
  v6 = v3;
  v4 = [v3 objectForKeyedSubscript:IC_D_CALC_TRIPOD_CONFIDENCE];

  if (v4)
  {
    v5 = [v6 objectForKeyedSubscript:IC_D_CALC_TRIPOD_CONFIDENCE];
    *a2 = [v5 BOOLValue];
  }
}

uint64_t ICCalcTripodCorrections(uint64_t a1, void *a2, _DWORD *a3)
{
  v5 = a2;
  if (sub_254B274B0(a1))
  {
    operator new();
  }

  if (a3)
  {
    *a3 = 1;
  }

  return 0;
}

void sub_254B31428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_254B39358(&a12, 0);
  nullsub_2(&a13);
  sub_254B37270(&a26);
  (*(*v27 + 8))(v27);

  _Unwind_Resume(a1);
}

uint64_t ICCalcPassThruCorrections(uint64_t a1, _DWORD *a2)
{
  if (sub_254B274B0(a1))
  {
    operator new();
  }

  if (a2)
  {
    *a2 = 1;
  }

  return 0;
}

uint64_t ICGetRecordIndexForTime(uint64_t a1, CMTime *a2)
{
  v3 = ICGetResultHomographies(a1, 0);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:IC_A_FRAMEINSTRUCTIONS];
    v6 = [v5 count];
    if (v6)
    {
      memset(&v18, 0, sizeof(v18));
      v7 = [v5 objectAtIndexedSubscript:0];
      v8 = [v7 objectForKeyedSubscript:IC_A_FRAMETRANSFORM_RAWTIME];
      CMTimeMakeFromDictionary(&v18, v8);

      time1 = *a2;
      v16 = v18;
      if (CMTimeCompare(&time1, &v16) <= 0)
      {
        v6 = 0;
        goto LABEL_13;
      }

      memset(&v18, 0, sizeof(v18));
      v9 = [v5 objectAtIndexedSubscript:v6 - 1];
      v10 = [v9 objectForKeyedSubscript:IC_A_FRAMETRANSFORM_RAWTIME];
      CMTimeMakeFromDictionary(&v18, v10);

      time1 = *a2;
      v16 = v18;
      if ((CMTimeCompare(&time1, &v16) & 0x80000000) == 0)
      {
        v6 = (v6 - 1);
LABEL_13:

        goto LABEL_14;
      }

      v11 = v6 - 1;
      while (1)
      {
        v12 = __OFSUB__(v6, 1);
        v6 = (v6 - 1);
        if (v6 < 0 != v12)
        {
          break;
        }

        memset(&v18, 0, sizeof(v18));
        v13 = [v5 objectAtIndexedSubscript:v11];
        v14 = [v13 objectForKeyedSubscript:IC_A_FRAMETRANSFORM_RAWTIME];
        CMTimeMakeFromDictionary(&v18, v14);

        time1 = v18;
        v16 = *a2;
        --v11;
        if (CMTimeCompare(&time1, &v16) <= 0)
        {
          goto LABEL_13;
        }
      }
    }

    v6 = 0xFFFFFFFFLL;
    goto LABEL_13;
  }

  v6 = 0xFFFFFFFFLL;
LABEL_14:

  return v6;
}

id ICFillHomographyGaps(void *a1, void *a2, void *a3, void *a4)
{
  v129 = *MEMORY[0x277D85DE8];
  v96 = a1;
  v95 = a2;
  v97 = a3;
  v7 = [v97 objectForKeyedSubscript:IC_A_HOMOGRAPHIES_INVERTED];
  v93 = v7;
  if (v7)
  {
    v8 = [v7 BOOLValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v97 objectForKeyedSubscript:IC_A_HOMOGRAPHIES_MAP_TO_REFERENCE];
  v94 = v9;
  if (v9)
  {
    v10 = [v9 BOOLValue];
  }

  else
  {
    v10 = 0;
  }

  v102 = 0;
  v103 = 0;
  v104 = 0;
  if (sub_254B2DCFC(&v102, v96, v8, v10, 0, __src, 0))
  {
    sub_254B3222C(v95, &__p);
    v11 = __p;
    if (__p == v101)
    {
      if (a4)
      {
        v111 = *MEMORY[0x277CCA068];
        v112 = @"No requested fill times were provided.\n";
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
        *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"InertiaCamErrorDomain" code:10 userInfo:v26];
      }
    }

    else
    {
      while ((*(v11 + 3) & 0x1D) == 1)
      {
        v11 += 24;
        if (v11 == v101)
        {
          sub_254B53AA8(&v102, &__p, &v102, &v98);
          v18 = v98;
          if (v98 == v99)
          {
            v19 = 0;
          }

          else
          {
            v19 = 0;
            do
            {
              v20 = v18[1];
              v21 = v18;
              if (v20)
              {
                do
                {
                  v22 = v20;
                  v20 = *v20;
                }

                while (v20);
              }

              else
              {
                do
                {
                  v22 = v21[2];
                  v23 = *v22 == v21;
                  v21 = v22;
                }

                while (!v23);
              }

              v19 -= 0x5555555555555555 * ((v18[12] - v18[11]) >> 3);
              v18 = v22;
            }

            while (v22 != v99);
          }

          if (v19 != 0xAAAAAAAAAAAAAAABLL * ((v101 - __p) >> 3))
          {
            if (a4)
            {
              v107 = *MEMORY[0x277CCA068];
              v108 = @"Number of filled gaps does not match number of requested fill times.\n";
              v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
              *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"InertiaCamErrorDomain" code:10 userInfo:v60];
            }

            v25 = 0;
            goto LABEL_79;
          }

          if ((v8 | v10) == 1)
          {
            if ((v10 | v8 ^ 1))
            {
              if (v10)
              {
                v28 = v102;
                v29 = v103;
                if (v102 != v103)
                {
                  v30 = 1;
                  v31 = __src;
                  do
                  {
                    if (v30)
                    {
                      memmove(v28, v31, 0x48uLL);
                    }

                    else
                    {
                      if (v8)
                      {
                        v32 = v28[7];
                        v33 = v28[8];
                        v34 = v28[5];
                        v35 = v28[6];
                        v37 = v28[3];
                        v36 = v28[4];
                        v38 = v36 * v33 - v32 * v34;
                        v39 = v28[1];
                        v40 = v28[2];
                        v41 = v32 * v40 - v39 * v33;
                        v116 = v38;
                        v117 = v41;
                        v42 = v39 * v34 - v36 * v40;
                        v118 = v42;
                        v43 = *v28;
                        v44 = v41 * v37 + *v28 * v38 + v35 * v42;
                        if (fabs(v44) >= 2.22044605e-16)
                        {
                          v116 = v38 / v44;
                          v117 = v41 / v44;
                          v118 = v42 / v44;
                          v119 = (v35 * v34 - v37 * v33) / v44;
                          v120 = (v43 * v33 - v35 * v40) / v44;
                          v121 = (v37 * v40 - v43 * v34) / v44;
                          v122 = (v37 * v32 - v35 * v36) / v44;
                          v123 = (v35 * v39 - v43 * v32) / v44;
                          v124 = (v43 * v36 - v37 * v39) / v44;
                        }

                        v45 = 0;
                        v46 = &v116;
                        do
                        {
                          v47 = 0;
                          v48 = v31;
                          do
                          {
                            v49 = 0;
                            v50 = 0.0;
                            v51 = v48;
                            do
                            {
                              v52 = *v51;
                              v51 += 3;
                              v50 = v50 + v46[v49++] * v52;
                            }

                            while (v49 != 3);
                            *&time[24 * v45 + 8 * v47++] = v50;
                            ++v48;
                          }

                          while (v47 != 3);
                          ++v45;
                          v46 += 3;
                        }

                        while (v45 != 3);
                      }

                      else
                      {
                        for (i = 0; i != 3; ++i)
                        {
                          v54 = 0;
                          v55 = v28;
                          do
                          {
                            v56 = 0;
                            v57 = 0.0;
                            v58 = v55;
                            do
                            {
                              v59 = *v58;
                              v58 += 3;
                              v57 = v57 + v31[v56++] * v59;
                            }

                            while (v56 != 3);
                            *&time[24 * i + 8 * v54++] = v57;
                            ++v55;
                          }

                          while (v54 != 3);
                          v31 += 3;
                        }
                      }

                      *(v28 + 1) = *&time[16];
                      *(v28 + 2) = v126;
                      *(v28 + 3) = v127;
                      *(v28 + 8) = v128;
                      *v28 = *time;
                      v31 = v28;
                    }

                    v30 = 0;
                    v28 += 38;
                  }

                  while (v28 != v29);
                }
              }
            }

            else
            {
              v61 = v102;
              for (j = v103; v61 != j; v61 += 38)
              {
                v63 = v61[7];
                v64 = v61[8];
                v65 = v61[4];
                v66 = v61[5];
                v67 = v61[6];
                v68 = v65 * v64 - v63 * v66;
                v70 = *v61;
                v69 = v61[1];
                v72 = v61[2];
                v71 = v61[3];
                v73 = v63 * v72 - v69 * v64;
                v74 = v69 * v66 - v65 * v72;
                v75 = v73 * v71 + *v61 * v68 + v67 * v74;
                if (fabs(v75) >= 2.22044605e-16)
                {
                  v68 = v68 / v75;
                  v73 = v73 / v75;
                  v74 = v74 / v75;
                  v13 = (v67 * v66 - v71 * v64) / v75;
                  v12 = (v71 * v63 - v67 * v65) / v75;
                  v14 = (v70 * v64 - v67 * v72) / v75;
                  v15 = (v71 * v72 - v70 * v66) / v75;
                  v16 = (v67 * v69 - v70 * v63) / v75;
                  v17 = (v70 * v65 - v71 * v69) / v75;
                }

                *v61 = v68;
                v61[1] = v73;
                v61[2] = v74;
                v61[3] = v13;
                v61[4] = v14;
                v61[5] = v15;
                v61[6] = v12;
                v61[7] = v16;
                v61[8] = v17;
              }
            }
          }

          v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v116 = 0.0;
          v77 = v102;
          v76 = v103;
          if (v103 == v102)
          {
            goto LABEL_79;
          }

          v78 = 0;
          v79 = *MEMORY[0x277CBECE8];
          while (1)
          {
            v80 = v99[0];
            if (!v99[0])
            {
LABEL_70:
              ++v78;
              goto LABEL_78;
            }

            while (1)
            {
              v81 = v80[4];
              if (v78 >= v81)
              {
                break;
              }

LABEL_69:
              v80 = *v80;
              if (!v80)
              {
                goto LABEL_70;
              }
            }

            if (v81 < v78)
            {
              break;
            }

            *time = &v116;
            v82 = sub_254B39410(&v98, &v116);
            v83 = v82[12] - v82[11];
            v92 = 0xAAAAAAAAAAAAAAABLL * (v83 >> 3);
            if (v83)
            {
              if (v92 <= 1)
              {
                v84 = 1;
              }

              else
              {
                v84 = 0xAAAAAAAAAAAAAAABLL * (v83 >> 3);
              }

              v85 = 14;
              do
              {
                v86 = &v102[38 * *&v116 + v85];
                v105[0] = IC_A_FRAMETRANSFORM_HOMOGRAPHY;
                v87 = sub_254B27204(v86 - 112);
                v105[1] = IC_A_FRAMETRANSFORM_RAWTIME;
                v106[0] = v87;
                v88 = *v86;
                *&time[16] = *(v86 + 16);
                *time = v88;
                v89 = CMTimeCopyAsDictionary(time, v79);
                v106[1] = v89;
                v90 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v106 forKeys:v105 count:2];

                [v25 addObject:v90];
                v85 += 38;
                --v84;
              }

              while (v84);
            }

            v78 = *&v116 + v92;
            v77 = v102;
            v76 = v103;
LABEL_78:
            v116 = *&v78;
            if (v78 >= 0x86BCA1AF286BCA1BLL * ((v76 - v77) >> 4))
            {
LABEL_79:
              sub_254B393AC(&v98, v99[0]);
              goto LABEL_80;
            }
          }

          ++v80;
          goto LABEL_69;
        }
      }

      if (a4)
      {
        v109 = *MEMORY[0x277CCA068];
        v110 = @"Requested fill time value is not numeric.\n";
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
        *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"InertiaCamErrorDomain" code:10 userInfo:v27];
      }
    }

    v25 = 0;
LABEL_80:
    if (__p)
    {
      v101 = __p;
      operator delete(__p);
    }
  }

  else
  {
    if (a4)
    {
      v113 = *MEMORY[0x277CCA068];
      v114 = @"Error while extracting existing homographies.\n";
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"InertiaCamErrorDomain" code:10 userInfo:v24];
    }

    v25 = 0;
  }

  *time = &v102;
  sub_254B36F30(time);

  return v25;
}

void sub_254B32120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, char a15, void *a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, char a21)
{
  sub_254B393AC(&a15, a16);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  *(v22 - 248) = &a21;
  sub_254B36F30((v22 - 248));

  _Unwind_Resume(a1);
}

void sub_254B3222C(void *a1@<X0>, const void **a2@<X8>)
{
  v3 = a1;
  v4 = [v3 count];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (v4)
  {
    sub_254B36E70(a2, v4);
    v5 = 0;
    do
    {
      v6 = [v3 objectAtIndexedSubscript:v5];
      memset(&v20, 0, sizeof(v20));
      CMTimeMakeFromDictionary(&v20, v6);
      v8 = a2[1];
      v7 = a2[2];
      if (v8 >= v7)
      {
        v11 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a2) >> 3);
        v12 = v11 + 1;
        if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_254B32E20();
        }

        v13 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a2) >> 3);
        if (2 * v13 > v12)
        {
          v12 = 2 * v13;
        }

        if (v13 >= 0x555555555555555)
        {
          v14 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          sub_254B36A4C(a2, v14);
        }

        v15 = 24 * v11;
        v16 = *&v20.value;
        *(v15 + 16) = v20.epoch;
        *v15 = v16;
        v10 = 24 * v11 + 24;
        v17 = a2[1] - *a2;
        v18 = 24 * v11 - v17;
        memcpy((v15 - v17), *a2, v17);
        v19 = *a2;
        *a2 = v18;
        a2[1] = v10;
        a2[2] = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        v9 = *&v20.value;
        *(v8 + 2) = v20.epoch;
        *v8 = v9;
        v10 = (v8 + 24);
      }

      a2[1] = v10;

      ++v5;
    }

    while (v4 != v5);
  }
}

void sub_254B323C0(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void *ICFillMotionBlurVectorGaps(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v71[1] = *MEMORY[0x277D85DE8];
  v9 = a1;
  v45 = a2;
  v44 = a3;
  v43 = a4;
  sub_254B3222C(v9, &v55);
  v10 = v55;
  if (v55 == v56)
  {
    if (!a5)
    {
      goto LABEL_60;
    }

    v70 = *MEMORY[0x277CCA068];
    v71[0] = @"No input frame times were provided.\n";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:&v70 count:1];
    *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"InertiaCamErrorDomain" code:10 userInfo:v18];
  }

  else
  {
    while ((*(v10 + 3) & 0x1D) == 1)
    {
      v10 += 24;
      if (v10 == v56)
      {
        v53 = 0uLL;
        v54 = 0;
        if (sub_254B681E8(v45, &v53))
        {
          if (v56 - v55 == *(&v53 + 1) - v53)
          {
            sub_254B3222C(v44, &__p);
            v11 = __p;
            if (__p == v52)
            {
              if (a5)
              {
                v62 = *MEMORY[0x277CCA068];
                v63 = @"No requested fill times were provided.\n";
                v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
                *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"InertiaCamErrorDomain" code:10 userInfo:v22];

                goto LABEL_32;
              }
            }

            else
            {
              while ((*(v11 + 3) & 0x1D) == 1)
              {
                v11 += 24;
                if (v11 == v52)
                {
                  v47 = v53;
                  v48 = v54;
                  v53 = 0uLL;
                  v54 = 0;
                  sub_254B5438C(&v55, &v47, &__p, &v53, &v49);
                  v57 = &v47;
                  sub_254B35B8C(&v57);
                  v12 = v49;
                  if (v49 == v50)
                  {
                    v13 = 0;
                  }

                  else
                  {
                    v13 = 0;
                    do
                    {
                      v14 = v12[1];
                      v15 = v12;
                      if (v14)
                      {
                        do
                        {
                          v16 = v14;
                          v14 = *v14;
                        }

                        while (v14);
                      }

                      else
                      {
                        do
                        {
                          v16 = v15[2];
                          v17 = *v16 == v15;
                          v15 = v16;
                        }

                        while (!v17);
                      }

                      v13 -= 0x5555555555555555 * ((v12[12] - v12[11]) >> 3);
                      v12 = v16;
                    }

                    while (v16 != v50);
                  }

                  if (v13 != 0xAAAAAAAAAAAAAAABLL * ((v52 - __p) >> 3))
                  {
                    if (a5)
                    {
                      v58 = *MEMORY[0x277CCA068];
                      v59 = @"Number of filled gaps does not match number of requested fill times.\n";
                      v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
                      *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"InertiaCamErrorDomain" code:10 userInfo:v40];

                      a5 = 0;
                    }

                    goto LABEL_56;
                  }

                  a5 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  v46 = 0;
                  v24 = *(&v53 + 1);
                  v25 = v53;
                  if (*(&v53 + 1) == v53)
                  {
                    goto LABEL_56;
                  }

                  v26 = 0;
                  while (1)
                  {
                    v27 = v50[0];
                    if (!v50[0])
                    {
LABEL_42:
                      ++v26;
                      goto LABEL_52;
                    }

                    while (1)
                    {
                      v28 = v27[4];
                      if (v26 >= v28)
                      {
                        break;
                      }

LABEL_41:
                      v27 = *v27;
                      if (!v27)
                      {
                        goto LABEL_42;
                      }
                    }

                    if (v28 < v26)
                    {
                      break;
                    }

                    v57 = &v46;
                    v29 = sub_254B39410(&v49, &v46);
                    v30 = v29[12] - v29[11];
                    v42 = 0xAAAAAAAAAAAAAAABLL * (v30 >> 3);
                    if (v30)
                    {
                      v31 = 0;
                      if (v42 <= 1)
                      {
                        v32 = 1;
                      }

                      else
                      {
                        v32 = 0xAAAAAAAAAAAAAAABLL * (v30 >> 3);
                      }

                      do
                      {
                        v33 = v46;
                        v34 = v53;
                        v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
                        v36 = (v34 + 24 * v33 + 24 * v31);
                        v37 = *v36;
                        v38 = v36[1];
                        while (v37 != v38)
                        {
                          v39 = [MEMORY[0x277CCABB0] numberWithDouble:*v37];
                          [v35 addObject:v39];

                          ++v37;
                        }

                        [a5 addObject:v35];

                        ++v31;
                      }

                      while (v31 != v32);
                    }

                    v26 = v46 + v42;
                    v24 = *(&v53 + 1);
                    v25 = v53;
LABEL_52:
                    v46 = v26;
                    if (v26 >= 0xAAAAAAAAAAAAAAABLL * ((v24 - v25) >> 3))
                    {
LABEL_56:
                      sub_254B393AC(&v49, v50[0]);
                      goto LABEL_57;
                    }
                  }

                  ++v27;
                  goto LABEL_41;
                }
              }

              if (a5)
              {
                v60 = *MEMORY[0x277CCA068];
                v61 = @"Requested fill time value is not numeric.\n";
                v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
                *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"InertiaCamErrorDomain" code:10 userInfo:v23];

LABEL_32:
                a5 = 0;
              }
            }

LABEL_57:
            if (__p)
            {
              v52 = __p;
              operator delete(__p);
            }

LABEL_59:
            __p = &v53;
            sub_254B35B8C(&__p);
            goto LABEL_60;
          }

          if (!a5)
          {
            goto LABEL_59;
          }

          v64 = *MEMORY[0x277CCA068];
          v65 = @"Mismatch between number of frame times and motion blur vectors provided.\n";
          v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
          *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"InertiaCamErrorDomain" code:10 userInfo:v21];
        }

        else
        {
          if (!a5)
          {
            goto LABEL_59;
          }

          v66 = *MEMORY[0x277CCA068];
          v67 = @"Unable to parse motion blur vector input.\n";
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
          *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"InertiaCamErrorDomain" code:10 userInfo:v20];
        }

        a5 = 0;
        goto LABEL_59;
      }
    }

    if (!a5)
    {
      goto LABEL_60;
    }

    v68 = *MEMORY[0x277CCA068];
    v69 = @"A provided frame time value is not numeric.\n";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
    *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"InertiaCamErrorDomain" code:10 userInfo:v19];
  }

  a5 = 0;
LABEL_60:
  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  return a5;
}

void sub_254B32AD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, void *a20, uint64_t a21, char *__p, char *a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_254B393AC(&a19, a20);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  __p = &a25;
  sub_254B35B8C(&__p);
  if (a28)
  {
    a29 = a28;
    operator delete(a28);
  }

  _Unwind_Resume(a1);
}

void sub_254B32C20(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_254B32C7C(exception, a1);
  __cxa_throw(exception, off_2797A9980, MEMORY[0x277D825F8]);
}

std::logic_error *sub_254B32C7C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

Class sub_254B32CB0()
{
  if (qword_281535BD0 != -1)
  {
    sub_254B88390();
  }

  result = objc_getClass("DESRecordStore");
  qword_281535BE0 = result;
  off_281535BC8 = sub_254B32D04;
  return result;
}

void *sub_254B32D10()
{
  result = dlopen("/System/Library/PrivateFrameworks/DistributedEvaluation.framework/DistributedEvaluation", 2);
  qword_281535BD8 = result;
  return result;
}

uint64_t sub_254B32D3C()
{
  qword_281535BF8 = os_log_create("com.apple.acg.inertiacam", "InertiaCam");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_254B32D8C(uint64_t a1)
{
  v2 = *MEMORY[0x277CC08C8];
  v3 = *(MEMORY[0x277CC08C8] + 32);
  *(a1 + 16) = *(MEMORY[0x277CC08C8] + 16);
  *(a1 + 32) = v3;
  *(a1 + 48) = 0;
  *a1 = v2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 71) = 0;
  *(a1 + 76) = -3229614080;
  sub_254B7D85C(a1 + 84);
  return a1;
}

void sub_254B32DEC(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B32E38(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_254B32E94(exception, a1);
  __cxa_throw(exception, off_2797A9978, MEMORY[0x277D825F0]);
}

std::logic_error *sub_254B32E94(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_254B32EC8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_254B32F20();
}

void sub_254B32F20()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void sub_254B33108(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_254B32F20();
}

uint64_t sub_254B331F8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_254B33274(result, a4);
  }

  return result;
}

void sub_254B33258(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B33274(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    sub_254B332B0(a1, a2);
  }

  sub_254B32E20();
}

void sub_254B332B0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_254B32F20();
}

uint64_t sub_254B332F8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_254B33380(result, a4);
  }

  return result;
}

void sub_254B33360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_254B33CE0(&a9);
  _Unwind_Resume(a1);
}

void sub_254B33380(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xDD67C8A60DD67DLL)
  {
    sub_254B333D0(a1, a2);
  }

  sub_254B32E20();
}

void sub_254B333D0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xDD67C8A60DD67DLL)
  {
    operator new();
  }

  sub_254B32F20();
}

uint64_t sub_254B3342C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_254B334D0(v4, v6);
      v6 += 296;
      v4 = v11 + 296;
      v11 += 296;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_254B33C14(v8);
  return v4;
}

uint64_t sub_254B334D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  sub_254B33604(a1 + 32, 0, *(a2 + 40), *(a2 + 48));
  memmove(*(a1 + 32), *(a2 + 32), 8 * *(a2 + 48));
  sub_254B33704(a1 + 104, 0, *(a2 + 112), *(a2 + 120));
  memmove(*(a1 + 104), *(a2 + 104), 4 * *(a2 + 120));
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  sub_254B33784(a1 + 176, *(a2 + 176), *(a2 + 184), (*(a2 + 184) - *(a2 + 176)) >> 2);
  sub_254B33884(a1 + 200, 0, *(a2 + 208), *(a2 + 216));
  memmove(*(a1 + 200), *(a2 + 200), 32 * *(a2 + 216));
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = 0;
  sub_254B33904(a1 + 272, *(a2 + 272), *(a2 + 280), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 280) - *(a2 + 272)) >> 4));
  return a1;
}

void sub_254B335B8(_Unwind_Exception *a1)
{
  sub_254B33A24(v1 + 200);
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 184) = v4;
    operator delete(v4);
  }

  sub_254B33B34(v1 + 104);
  sub_254B33BA4(v1 + 32);
  _Unwind_Resume(a1);
}

uint64_t sub_254B33604(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 24) = 0;
  *(result + 56) = 0;
  if (!a2)
  {
    if (a3)
    {
      *(result + 24) = 1;
      operator new[]();
    }
  }

  return result;
}

uint64_t sub_254B33684(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_254B33704(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 24) = 0;
  *(result + 56) = 0;
  if (!a2)
  {
    if (a3)
    {
      *(result + 24) = 1;
      operator new[]();
    }
  }

  return result;
}

uint64_t sub_254B33784(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_254B33800(result, a4);
  }

  return result;
}

void sub_254B337E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B33800(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_254B3383C(a1, a2);
  }

  sub_254B32E20();
}

void sub_254B3383C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_254B32F20();
}

uint64_t sub_254B33884(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 24) = 0;
  *(result + 56) = 0;
  if (!a2)
  {
    if (a3)
    {
      *(result + 24) = 1;
      operator new[]();
    }
  }

  return result;
}

uint64_t sub_254B33904(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_254B33980(result, a4);
  }

  return result;
}

void sub_254B33964(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B33980(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_254B339CC(a1, a2);
  }

  sub_254B32E20();
}

void sub_254B339CC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_254B32F20();
}

uint64_t sub_254B33A24(uint64_t a1)
{
  if (*(a1 + 24) == 1 && *a1)
  {
    MEMORY[0x259C24DE0]();
  }

  if (*(a1 + 56))
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      sub_254B33A94(a1 + 32, v2);
    }
  }

  sub_254B33684(a1 + 32);
  return a1;
}

uint64_t sub_254B33A94(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_254B33AE8();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_254B33AE8()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

uint64_t sub_254B33B34(uint64_t a1)
{
  if (*(a1 + 24) == 1 && *a1)
  {
    MEMORY[0x259C24DE0]();
  }

  if (*(a1 + 56))
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      sub_254B33A94(a1 + 32, v2);
    }
  }

  sub_254B33684(a1 + 32);
  return a1;
}

uint64_t sub_254B33BA4(uint64_t a1)
{
  if (*(a1 + 24) == 1 && *a1)
  {
    MEMORY[0x259C24DE0]();
  }

  if (*(a1 + 56))
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      sub_254B33A94(a1 + 32, v2);
    }
  }

  sub_254B33684(a1 + 32);
  return a1;
}

uint64_t sub_254B33C14(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_254B33C60(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_254B33C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      v7 = *(v6 - 24);
      if (v7)
      {
        *(v6 - 16) = v7;
        operator delete(v7);
      }

      sub_254B33A24(v6 - 96);
      v8 = *(v6 - 120);
      if (v8)
      {
        *(v6 - 112) = v8;
        operator delete(v8);
      }

      sub_254B33B34(v6 - 192);
      sub_254B33BA4(v6 - 264);
      v6 -= 296;
    }

    while (v6 != a5);
  }
}

void sub_254B33CE0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_254B33D34(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_254B33D34(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  if (v3 != *result)
  {
    do
    {
      v4 = *(v3 - 24);
      if (v4)
      {
        *(v3 - 16) = v4;
        operator delete(v4);
      }

      sub_254B33A24(v3 - 96);
      v5 = *(v3 - 120);
      if (v5)
      {
        *(v3 - 112) = v5;
        operator delete(v5);
      }

      sub_254B33B34(v3 - 192);
      result = sub_254B33BA4(v3 - 264);
      v3 -= 296;
    }

    while (v3 != v2);
  }

  v1[1] = v2;
  return result;
}

void sub_254B33DB4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_254B33E34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_254B33E48(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_254B33E48(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = (v2 + 56);
    sub_254B33CE0(&v4);
    MEMORY[0x259C24E00](v2, 0x1020C408C3C92B4);
  }

  return a1;
}

void sub_254B33EAC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C24E00);
}

uint64_t sub_254B33EEC(uint64_t a1, uint64_t a2)
{
  if (sub_254B33F84(a2, &unk_286700BD8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254B33F2C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = (a2 + 56);
    sub_254B33CE0(&v4);
    return MEMORY[0x259C24E00](a2, 0x1020C408C3C92B4);
  }

  return result;
}

BOOL sub_254B33F84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void sub_254B34004(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));

  JUMPOUT(0x259C24E00);
}

void sub_254B340E8(id *a1)
{
  objc_destroyWeak(a1 + 1);

  operator delete(a1);
}

void sub_254B34124(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v3 = *a2;
  v6 = *a3;
  v7 = *(a3 + 2);
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  if (objc_opt_respondsToSelector())
  {
    v5 = sub_254B27204(v3);
    v8 = v6;
    v9 = v7;
    [WeakRetained ICReportL1Correction:v5 forPresentationTime:&v8 withStats:MEMORY[0x277CBEC10]];
  }
}

uint64_t sub_254B341E0(uint64_t a1, uint64_t a2)
{
  if (sub_254B33F84(a2, &unk_286700130))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_254B3422C(void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_254B34484(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_254B32E0C(a1);
}

void *sub_254B34490(void *result, unint64_t a2)
{
  if (0x86BCA1AF286BCA1BLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0xD79435E50D7944)
    {
      sub_254B34578(result, a2);
    }

    sub_254B32E20();
  }

  return result;
}

void sub_254B34564(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_254B34798(va);
  _Unwind_Resume(a1);
}

void sub_254B34578(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xD79435E50D7944)
  {
    operator new();
  }

  sub_254B32F20();
}

uint64_t sub_254B345D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v23 = a4;
  v21[0] = a1;
  v21[1] = &v23;
  v21[2] = &v24;
  if (a2 == a3)
  {
    v22 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 16);
      v8 = *(v6 + 32);
      v9 = *(v6 + 48);
      *(a4 + 60) = *(v6 + 60);
      *(a4 + 32) = v8;
      *(a4 + 48) = v9;
      *(a4 + 16) = v7;
      *(a4 + 88) = 0;
      *(a4 + 96) = 0;
      *(a4 + 80) = 0;
      *(a4 + 80) = *(v6 + 80);
      *(a4 + 96) = *(v6 + 96);
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      *(v6 + 80) = 0;
      v10 = *(v6 + 136);
      v11 = *(v6 + 152);
      v12 = *(v6 + 168);
      *(a4 + 120) = *(v6 + 120);
      *(a4 + 168) = v12;
      *(a4 + 152) = v11;
      *(a4 + 136) = v10;
      v13 = *(v6 + 200);
      v14 = *(v6 + 216);
      v15 = *(v6 + 232);
      *(a4 + 184) = *(v6 + 184);
      *(a4 + 232) = v15;
      *(a4 + 216) = v14;
      *(a4 + 200) = v13;
      v16 = *(v6 + 264);
      v17 = *(v6 + 280);
      v18 = *(v6 + 293);
      *(a4 + 248) = *(v6 + 248);
      *(a4 + 293) = v18;
      *(a4 + 264) = v16;
      *(a4 + 280) = v17;
      *(a4 + 104) = *(v6 + 104);
      v6 += 304;
      a4 += 304;
    }

    while (v6 != a3);
    v24 = a4;
    v22 = 1;
    while (v5 != a3)
    {
      v19 = *(v5 + 80);
      if (v19)
      {
        *(v5 + 88) = v19;
        operator delete(v19);
      }

      v5 += 304;
    }
  }

  return sub_254B34718(v21);
}

uint64_t sub_254B34718(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_254B34750(a1);
  }

  return a1;
}

void sub_254B34750(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 224);
    if (v3)
    {
      *(v1 - 216) = v3;
      operator delete(v3);
    }

    v1 -= 304;
  }
}

uint64_t sub_254B34798(uint64_t a1)
{
  sub_254B347D0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_254B347D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 304;
    v5 = *(v2 - 224);
    if (v5)
    {
      *(v2 - 216) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 304;
    }
  }
}

uint64_t sub_254B34830(uint64_t *a1, int *a2, uint64_t a3)
{
  v3 = 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0xD79435E50D7943)
  {
    sub_254B32E20();
  }

  if (0xD79435E50D79436 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0xD79435E50D79436 * ((a1[2] - *a1) >> 4);
  }

  if (0x86BCA1AF286BCA1BLL * ((a1[2] - *a1) >> 4) >= 0x6BCA1AF286BCA1)
  {
    v7 = 0xD79435E50D7943;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    sub_254B34578(a1, v7);
  }

  v14 = 0;
  v15 = 304 * v3;
  v16 = 304 * v3;
  sub_254B34980(304 * v3, *a2, a3);
  *&v16 = 304 * v3 + 304;
  v8 = a1[1];
  v9 = 304 * v3 + *a1 - v8;
  sub_254B345D4(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_254B34798(&v14);
  return v13;
}

void sub_254B3496C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_254B34798(va);
  _Unwind_Resume(a1);
}

uint64_t sub_254B34980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 168) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = a2;
  v4 = MEMORY[0x277CC0898];
  *(a1 + 112) = *MEMORY[0x277CC0898];
  *(a1 + 128) = *(v4 + 16);
  *(a1 + 136) = -1;
  v5 = MEMORY[0x277CC0888];
  *(a1 + 144) = *MEMORY[0x277CC0888];
  *(a1 + 160) = *(v5 + 16);
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 293) = 0;
  if (a3)
  {
    for (i = 0; i != 72; i += 8)
    {
      *(a1 + i) = *(a3 + i);
    }
  }

  else
  {
    *a1 = 0x3FF0000000000000;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0x3FF0000000000000;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0x3FF0000000000000;
  }

  bzero((a1 + 252), 0x30uLL);
  *(a1 + 284) = vdupq_n_s32(0x3FC90FDBu);
  bzero((a1 + 196), 0x38uLL);
  return a1;
}

uint64_t sub_254B34A68(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if ((0x86BCA1AF286BCA1BLL * ((v9 - v10) >> 4)) >= a5)
    {
      v16 = v10 - a2;
      if ((0x86BCA1AF286BCA1BLL * ((v10 - a2) >> 4)) >= a5)
      {
        v18 = 304 * a5;
        sub_254B34C4C(a1, a2, a1[1], a2 + 304 * a5);
        v17 = v18 + a3;
      }

      else
      {
        a1[1] = sub_254B34FD4(a1, v16 + a3, a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        sub_254B34C4C(a1, v5, v10, v5 + 304 * a5);
        v17 = v16 + a3;
      }

      sub_254B35164(&v20, a3, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x79435E50D79435E5 * ((v10 - *a1) >> 4);
    if (v12 > 0xD79435E50D7943)
    {
      sub_254B32E20();
    }

    v13 = a2 - v11;
    v14 = 0x86BCA1AF286BCA1BLL * ((v9 - v11) >> 4);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x6BCA1AF286BCA1)
    {
      v15 = 0xD79435E50D7943;
    }

    else
    {
      v15 = v12;
    }

    v24 = a1;
    if (v15)
    {
      sub_254B34578(a1, v15);
    }

    v20 = 0;
    v21 = 16 * (v13 >> 4);
    v22 = v21;
    v23 = 0;
    sub_254B34DFC(&v20, a3, a5);
    v5 = sub_254B34F18(a1, &v20, v5);
    sub_254B34798(&v20);
  }

  return v5;
}

__n128 sub_254B34C4C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = a2 + v4 - a4;
  v6 = v4;
  while (v5 < a3)
  {
    *v6 = *v5;
    v7 = *(v5 + 16);
    v8 = *(v5 + 32);
    v9 = *(v5 + 48);
    *(v6 + 60) = *(v5 + 60);
    *(v6 + 32) = v8;
    *(v6 + 48) = v9;
    *(v6 + 16) = v7;
    *(v6 + 88) = 0;
    *(v6 + 96) = 0;
    *(v6 + 80) = 0;
    *(v6 + 80) = *(v5 + 80);
    *(v6 + 96) = *(v5 + 96);
    *(v5 + 88) = 0;
    *(v5 + 96) = 0;
    *(v5 + 80) = 0;
    v10 = *(v5 + 136);
    v11 = *(v5 + 152);
    v12 = *(v5 + 168);
    *(v6 + 120) = *(v5 + 120);
    *(v6 + 168) = v12;
    *(v6 + 152) = v11;
    *(v6 + 136) = v10;
    v13 = *(v5 + 200);
    v14 = *(v5 + 216);
    v15 = *(v5 + 232);
    *(v6 + 184) = *(v5 + 184);
    *(v6 + 232) = v15;
    *(v6 + 216) = v14;
    *(v6 + 200) = v13;
    v16 = *(v5 + 264);
    v17 = *(v5 + 280);
    v18 = *(v5 + 293);
    *(v6 + 248) = *(v5 + 248);
    *(v6 + 293) = v18;
    *(v6 + 264) = v16;
    *(v6 + 280) = v17;
    result = *(v5 + 104);
    *(v6 + 104) = result;
    v5 += 304;
    v6 += 304;
  }

  *(a1 + 8) = v6;
  if (v4 != a4)
  {
    v20 = v4 - 304;
    v21 = a2 + v4 - 304 - a4;
    v22 = a4 - v4;
    do
    {
      *v20 = *v21;
      v23 = *(v21 + 16);
      v24 = *(v21 + 32);
      v25 = *(v21 + 48);
      *(v20 + 60) = *(v21 + 60);
      *(v20 + 32) = v24;
      *(v20 + 48) = v25;
      *(v20 + 16) = v23;
      sub_254B35110(v20 + 80, (v21 + 80));
      *(v20 + 104) = *(v21 + 104);
      v26 = *(v21 + 120);
      v27 = *(v21 + 136);
      v28 = *(v21 + 152);
      *(v20 + 168) = *(v21 + 168);
      *(v20 + 152) = v28;
      *(v20 + 136) = v27;
      *(v20 + 120) = v26;
      v29 = *(v21 + 184);
      v30 = *(v21 + 200);
      v31 = *(v21 + 216);
      *(v20 + 232) = *(v21 + 232);
      *(v20 + 216) = v31;
      *(v20 + 200) = v30;
      *(v20 + 184) = v29;
      result = *(v21 + 248);
      v32 = *(v21 + 264);
      v33 = *(v21 + 280);
      *(v20 + 293) = *(v21 + 293);
      *(v20 + 264) = v32;
      *(v20 + 280) = v33;
      *(v20 + 248) = result;
      v21 -= 304;
      v20 -= 304;
      v22 += 304;
    }

    while (v22);
  }

  return result;
}

uint64_t sub_254B34DFC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 16);
  if (a3)
  {
    v6 = v4 + 304 * a3;
    v7 = v4 + 80;
    v8 = 304 * a3;
    do
    {
      *(v7 - 80) = *a2;
      v9 = *(a2 + 16);
      v10 = *(a2 + 32);
      v11 = *(a2 + 48);
      *(v7 - 20) = *(a2 + 60);
      *(v7 - 48) = v10;
      *(v7 - 32) = v11;
      *(v7 - 64) = v9;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      result = sub_254B331F8(v7, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 6);
      *(v7 + 24) = *(a2 + 104);
      v12 = *(a2 + 120);
      v13 = *(a2 + 136);
      v14 = *(a2 + 152);
      *(v7 + 88) = *(a2 + 168);
      *(v7 + 72) = v14;
      *(v7 + 56) = v13;
      *(v7 + 40) = v12;
      v15 = *(a2 + 184);
      v16 = *(a2 + 200);
      v17 = *(a2 + 216);
      *(v7 + 152) = *(a2 + 232);
      *(v7 + 136) = v17;
      *(v7 + 120) = v16;
      *(v7 + 104) = v15;
      v18 = *(a2 + 248);
      v19 = *(a2 + 264);
      v20 = *(a2 + 280);
      *(v7 + 213) = *(a2 + 293);
      *(v7 + 200) = v20;
      *(v7 + 184) = v19;
      *(v7 + 168) = v18;
      a2 += 304;
      v7 += 304;
      v8 -= 304;
    }

    while (v8);
  }

  else
  {
    v6 = *(result + 16);
  }

  *(v3 + 16) = v6;
  return result;
}

uint64_t sub_254B34F18(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  sub_254B345D4(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  sub_254B345D4(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_254B34FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v22 = a4;
  v23 = a4;
  v20[0] = a1;
  v20[1] = &v22;
  v20[2] = &v23;
  v21 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = *v6;
      v7 = *(v6 + 16);
      v8 = *(v6 + 32);
      v9 = *(v6 + 48);
      *(v4 + 60) = *(v6 + 60);
      *(v4 + 32) = v8;
      *(v4 + 48) = v9;
      *(v4 + 16) = v7;
      *(v4 + 88) = 0;
      *(v4 + 96) = 0;
      *(v4 + 80) = 0;
      sub_254B331F8(v4 + 80, *(v6 + 80), *(v6 + 88), (*(v6 + 88) - *(v6 + 80)) >> 6);
      *(v4 + 104) = *(v6 + 104);
      v10 = *(v6 + 120);
      v11 = *(v6 + 136);
      v12 = *(v6 + 152);
      *(v4 + 168) = *(v6 + 168);
      *(v4 + 152) = v12;
      *(v4 + 136) = v11;
      *(v4 + 120) = v10;
      v13 = *(v6 + 184);
      v14 = *(v6 + 200);
      v15 = *(v6 + 216);
      *(v4 + 232) = *(v6 + 232);
      *(v4 + 216) = v15;
      *(v4 + 200) = v14;
      *(v4 + 184) = v13;
      v16 = *(v6 + 248);
      v17 = *(v6 + 264);
      v18 = *(v6 + 280);
      *(v4 + 293) = *(v6 + 293);
      *(v4 + 264) = v17;
      *(v4 + 280) = v18;
      *(v4 + 248) = v16;
      v6 += 304;
      v4 = v23 + 304;
      v23 += 304;
    }

    while (v6 != a3);
  }

  v21 = 1;
  sub_254B34718(v20);
  return v4;
}

__n128 sub_254B35110(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_254B35164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a2;
  if (a2 != a3)
  {
    v7 = a2 + 88;
    do
    {
      v8 = v7 - 88;
      *a4 = *(v7 - 88);
      v9 = *(v7 - 72);
      v10 = *(v7 - 56);
      v11 = *(v7 - 40);
      *(a4 + 60) = *(v7 - 28);
      *(a4 + 32) = v10;
      *(a4 + 48) = v11;
      *(a4 + 16) = v9;
      if (a4 != v7 - 88)
      {
        sub_254B35268((a4 + 80), *(v7 - 8), *v7, (*v7 - *(v7 - 8)) >> 6);
      }

      *(a4 + 104) = *(v7 + 16);
      v12 = *(v7 + 32);
      v13 = *(v7 + 48);
      v14 = *(v7 + 64);
      *(a4 + 168) = *(v7 + 80);
      *(a4 + 152) = v14;
      *(a4 + 136) = v13;
      *(a4 + 120) = v12;
      v15 = *(v7 + 96);
      v16 = *(v7 + 112);
      v17 = *(v7 + 128);
      *(a4 + 232) = *(v7 + 144);
      *(a4 + 216) = v17;
      *(a4 + 200) = v16;
      *(a4 + 184) = v15;
      v18 = *(v7 + 160);
      v19 = *(v7 + 176);
      v20 = *(v7 + 192);
      *(a4 + 293) = *(v7 + 205);
      *(a4 + 264) = v19;
      *(a4 + 280) = v20;
      *(a4 + 248) = v18;
      a4 += 304;
      v7 += 304;
    }

    while (v8 + 304 != a3);
    return a3;
  }

  return result;
}

void *sub_254B35268(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 6)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 58))
    {
      v9 = v7 >> 5;
      if (v7 >> 5 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFC0)
      {
        v10 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_254B33274(v6, v10);
    }

    sub_254B32E20();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 6)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void *sub_254B35394(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_254B3540C(result, a2);
  }

  return result;
}

void sub_254B353F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B3540C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_254B35448(a1, a2);
  }

  sub_254B32E20();
}

void sub_254B35448(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_254B32F20();
}

void *sub_254B35490(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_254B35564(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_254B355BC(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_254B355BC(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void sub_254B35758(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[5];
    if (v3)
    {
      __p[6] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_254B357BC(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_254B358A8(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  sub_254B35C38(a1 + 3, (a2 + 3));
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_254B36050((a1 + 6), a2[6], a2[7], (a2[7] - a2[6]) >> 4);
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  sub_254B36150((a1 + 9), a2[9], a2[10], (a2[10] - a2[9]) >> 5);
  return a1;
}

void sub_254B35864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = *v11;
  if (*v11)
  {
    *(v10 + 56) = v13;
    operator delete(v13);
  }

  sub_254B35FEC(v10 + 24, *(v10 + 32));
  a10 = v10;
  sub_254B35B8C(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_254B358A8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_254B35930(result, a4);
  }

  return result;
}

void sub_254B35910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_254B35B8C(&a9);
  _Unwind_Resume(a1);
}

void sub_254B35930(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_254B3597C(a1, a2);
  }

  sub_254B32E20();
}

void sub_254B3597C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_254B32F20();
}

void *sub_254B359D4(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_254B35A88(v4, *v6, v6[1], (v6[1] - *v6) >> 3);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_254B35B04(v8);
  return v4;
}

uint64_t sub_254B35A88(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_254B3540C(result, a4);
  }

  return result;
}

void sub_254B35AE8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B35B04(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_254B35B3C(a1);
  }

  return a1;
}

void sub_254B35B3C(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void sub_254B35B8C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_254B35BE0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_254B35BE0(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void *sub_254B35C38(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_254B35C90(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_254B35C90(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_254B35D18(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_254B35D18(void *a1, void *a2, unint64_t *a3)
{
  result = *sub_254B35D9C(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_254B35F44();
  }

  return result;
}

void *sub_254B35D9C(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void sub_254B35FD0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_254B35758(v3, v2);
  _Unwind_Resume(a1);
}

void sub_254B35FEC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_254B35FEC(a1, *a2);
    sub_254B35FEC(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t sub_254B36050(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_254B360CC(result, a4);
  }

  return result;
}

void sub_254B360B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B360CC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_254B36108(a1, a2);
  }

  sub_254B32E20();
}

void sub_254B36108(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_254B32F20();
}

uint64_t sub_254B36150(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_254B361CC(result, a4);
  }

  return result;
}

void sub_254B361B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B361CC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_254B36208(a1, a2);
  }

  sub_254B32E20();
}

void sub_254B36208(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_254B32F20();
}

uint64_t sub_254B36250(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_254B362D0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_254B36350(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2867004F0;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  *(a1 + 24) = 0;
  *(a1 + 16) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_254B36FD4(a1 + 24, *(a2 + 24), *(a2 + 32), 0x86BCA1AF286BCA1BLL * ((*(a2 + 32) - *(a2 + 24)) >> 4));
  v5 = *(a2 + 48);
  v6 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v6;
  *(a1 + 48) = v5;
  sub_254B36830(a1 + 96, a2 + 96);
  *a1 = &unk_2867008B0;
  *(a1 + 240) = 0;
  *(a1 + 232) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 232) = *(a2 + 232);
  if (*(a2 + 240))
  {
    operator new();
  }

  if (*(a2 + 248))
  {
    operator new();
  }

  return a1;
}

void sub_254B36500(_Unwind_Exception *a1)
{
  MEMORY[0x259C24E00](v3, 0x1080C409938AC02);
  sub_254B36594((v1 + 256));
  v5 = *(v1 + 248);
  *(v1 + 248) = 0;
  if (v5)
  {
    MEMORY[0x259C24E00](v5, 0x1000C40FF89C88ELL);
  }

  v6 = *v2;
  *v2 = 0;
  if (v6)
  {
    sub_254B36E14(v2, v6);
  }

  sub_254B3661C(v1);
  _Unwind_Resume(a1);
}

void *sub_254B36594(void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[10];
    if (v3)
    {
      v2[11] = v3;
      operator delete(v3);
    }

    v4 = v2[7];
    if (v4)
    {
      v2[8] = v4;
      operator delete(v4);
    }

    v5 = v2[4];
    if (v5)
    {
      v2[5] = v5;
      operator delete(v5);
    }

    v6 = v2[1];
    if (v6)
    {
      v2[2] = v6;
      operator delete(v6);
    }

    MEMORY[0x259C24E00](v2, 0x1080C40DA9AB05ALL);
  }

  return a1;
}

uint64_t sub_254B3661C(uint64_t a1)
{
  *a1 = &unk_2867004F0;
  v2 = *(a1 + 192);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(a1 + 168);
  if (v3)
  {
    *(a1 + 176) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 144);
  if (v4)
  {
    *(a1 + 152) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 120);
  if (v5)
  {
    *(a1 + 128) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 96);
  if (v6)
  {
    *(a1 + 104) = v6;
    operator delete(v6);
  }

  v8 = (a1 + 24);
  sub_254B36F30(&v8);

  return a1;
}

uint64_t sub_254B366C8(void *a1)
{
  *a1 = &unk_2867008B0;
  sub_254B36594(a1 + 32);
  v2 = a1[31];
  a1[31] = 0;
  if (v2)
  {
    MEMORY[0x259C24E00](v2, 0x1000C40FF89C88ELL);
  }

  v3 = a1[30];
  a1[30] = 0;
  if (v3)
  {
    sub_254B36E14((a1 + 30), v3);
  }

  return sub_254B3661C(a1);
}

void sub_254B36754(void *a1)
{
  *a1 = &unk_2867008B0;
  sub_254B36594(a1 + 32);
  v2 = a1[31];
  a1[31] = 0;
  if (v2)
  {
    MEMORY[0x259C24E00](v2, 0x1000C40FF89C88ELL);
  }

  v3 = a1[30];
  a1[30] = 0;
  if (v3)
  {
    sub_254B36E14((a1 + 30), v3);
  }

  sub_254B3661C(a1);

  JUMPOUT(0x259C24E00);
}

void sub_254B367F8(uint64_t a1)
{
  sub_254B3661C(a1);

  JUMPOUT(0x259C24E00);
}

uint64_t sub_254B36830(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_254B36984(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_254B36AA4(a1 + 24, *(a2 + 24), *(a2 + 32), 0x8E38E38E38E38E39 * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_254B36BCC(a1 + 48, *(a2 + 48), *(a2 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 56) - *(a2 + 48)) >> 3));
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_254B36AA4(a1 + 72, *(a2 + 72), *(a2 + 80), 0x8E38E38E38E38E39 * ((*(a2 + 80) - *(a2 + 72)) >> 3));
  sub_254B36C48((a1 + 96), a2 + 96);
  *(a1 + 120) = *(a2 + 120);
  return a1;
}

void sub_254B36920(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 80) = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v8;
    operator delete(v8);
  }

  v9 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B36984(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_254B36A00(result, a4);
  }

  return result;
}

void sub_254B369E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B36A00(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_254B36A4C(a1, a2);
  }

  sub_254B32E20();
}

void sub_254B36A4C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_254B32F20();
}

uint64_t sub_254B36AA4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_254B36B20(result, a4);
  }

  return result;
}

void sub_254B36B04(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B36B20(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    sub_254B36B70(a1, a2);
  }

  sub_254B32E20();
}

void sub_254B36B70(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_254B32F20();
}

uint64_t sub_254B36BCC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_254B36A00(result, a4);
  }

  return result;
}

void sub_254B36C2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_254B36C48(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    sub_254B36CA4(result, v2);
  }

  return result;
}

void sub_254B36CA4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    sub_254B35448(a1, v2);
  }

  sub_254B32E20();
}

void sub_254B36CE8(void *a1, void *a2, unsigned int a3, void *a4, int a5, uint64_t a6)
{
  v8 = a1[1];
  v9 = v8 + a6;
  a1[1] = v8 + a6;
  if (!v8 || ((v9 - 1) ^ (v8 - 1)) >= 0x40)
  {
    if (v9 >= 0x41)
    {
      v10 = (v9 - 1) >> 6;
    }

    else
    {
      v10 = 0;
    }

    *(*a1 + 8 * v10) = 0;
  }

  v14 = v6;
  v15 = v7;
  v11 = *a1 + 8 * (v8 >> 6);
  v12 = v8 & 0x3F;
  sub_254B36D70(a2, a3, a4, a5, &v11, v13);
}

void sub_254B36D70(void *a1@<X1>, unint64_t a2@<X2>, void *a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  LODWORD(v6) = a2;
  v7 = *a5;
  v8 = *(a5 + 8);
  if (a1 != a3 || a2 != a4)
  {
    do
    {
      v9 = 1 << v8;
      if ((*a1 >> a2))
      {
        v10 = *v7 | v9;
      }

      else
      {
        v10 = *v7 & ~v9;
      }

      *v7 = v10;
      v11 = v6 == 63;
      v12 = v6 == 63;
      v6 = (a2 + 1);
      if (v11)
      {
        v6 = 0;
      }

      if (v8 == 63)
      {
        v8 = 0;
        *a5 = ++v7;
      }

      else
      {
        ++v8;
      }

      a1 += v12;
      a2 = v6 | a2 & 0xFFFFFFFF00000000;
    }

    while (a1 != a3 || v6 != a4);
    *(a5 + 8) = v8;
  }

  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v7;
  *(a6 + 24) = v8;
}

void sub_254B36E14(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      *(a2 + 16) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x259C24E00);
  }
}

void *sub_254B36E70(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      sub_254B36A4C(result, a2);
    }

    sub_254B32E20();
  }

  return result;
}

void sub_254B36F30(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_254B36F84(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_254B36F84(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 304)
  {
    v4 = *(i - 224);
    if (v4)
    {
      *(i - 216) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

uint64_t sub_254B36FD4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_254B3705C(result, a4);
  }

  return result;
}

void sub_254B3703C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_254B36F30(&a9);
  _Unwind_Resume(a1);
}

void sub_254B3705C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xD79435E50D7944)
  {
    sub_254B34578(a1, a2);
  }

  sub_254B32E20();
}

void sub_254B370AC(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0x86BCA1AF286BCA1BLL * ((a1[2] - *a1) >> 4) < a4)
  {
    sub_254B37230(a1);
    if (a4 <= 0xD79435E50D7943)
    {
      v9 = 0xD79435E50D79436 * ((a1[2] - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0x86BCA1AF286BCA1BLL * ((a1[2] - *a1) >> 4) >= 0x6BCA1AF286BCA1)
      {
        v10 = 0xD79435E50D7943;
      }

      else
      {
        v10 = v9;
      }

      sub_254B3705C(a1, v10);
    }

    sub_254B32E20();
  }

  v11 = a1[1] - v8;
  if (0x86BCA1AF286BCA1BLL * (v11 >> 4) >= a4)
  {
    sub_254B35164(&v17, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      do
      {
        v15 = *(v14 - 224);
        if (v15)
        {
          *(v14 - 216) = v15;
          operator delete(v15);
        }

        v14 -= 304;
      }

      while (v14 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    sub_254B35164(&v16, a2, a2 + v11, v8);
    a1[1] = sub_254B34FD4(a1, a2 + v11, a3, a1[1]);
  }
}

void sub_254B37230(uint64_t *a1)
{
  if (*a1)
  {
    sub_254B36F84(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_254B37270(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_254B372F4(void *a1)
{
  sub_254B3732C(a1);

  JUMPOUT(0x259C24E00);
}

uint64_t sub_254B3732C(void *a1)
{
  *a1 = &unk_2867009C0;
  v2 = a1[29];
  if (v2)
  {
    sub_254B5D614(v2);
    v3 = a1[29];
    if (v3)
    {
      v4 = *v3;
      if (*v3)
      {
        *(v3 + 8) = v4;
        operator delete(v4);
      }

      MEMORY[0x259C24E00](v3, 0x80C40D6874129);
    }

    a1[29] = 0;
  }

  return sub_254B3661C(a1);
}

void sub_254B373EC(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));

  JUMPOUT(0x259C24E00);
}

void sub_254B374D0(id *a1)
{
  objc_destroyWeak(a1 + 1);

  operator delete(a1);
}

void sub_254B3750C(uint64_t a1, uint64_t *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  if (objc_opt_respondsToSelector())
  {
    v4 = sub_254B27204(v2);
    v9 = IC_A_STAT_FRAME_MATCH_CONFIDENCE;
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(v2 + 168)];
    v10[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

    v7 = *(v2 + 112);
    v8 = *(v2 + 128);
    [WeakRetained ICReportFrameAnalysis:v4 forPresentationTime:&v7 withStats:v6];
  }
}

uint64_t sub_254B3765C(uint64_t a1, uint64_t a2)
{
  if (sub_254B33F84(a2, &unk_286700B40))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254B376A8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_254B37728(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void sub_254B377C4(void *a1)
{
  sub_254B377FC(a1);

  JUMPOUT(0x259C24E00);
}

uint64_t sub_254B377FC(void *a1)
{
  *a1 = &unk_2867008D0;
  v2 = a1[29];
  if (v2)
  {
    sub_254B5E8EC(v2);
    while (1)
    {
      v3 = atomic_load((a1[29] + 136));
      if ((v3 & 1) == 0)
      {
        break;
      }

      usleep(0x3E8u);
    }

    v4 = a1[29];
    a1[29] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  return sub_254B3661C(a1);
}

uint64_t sub_254B378AC(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  *a1 = &unk_286700870;
  *(a1 + 232) = 0;
  *(a1 + 234) = 0;
  v2 = *(MEMORY[0x277CBF398] + 16);
  *(a1 + 240) = *MEMORY[0x277CBF398];
  *(a1 + 256) = v2;
  *(a1 + 336) = 0x3FF0000000000000;
  *(a1 + 304) = xmmword_254B8ADC0;
  *(a1 + 320) = unk_254B8ADD0;
  *(a1 + 272) = xmmword_254B8ADA0;
  *(a1 + 288) = *algn_254B8ADB0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = a1 + 384;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 400) = 0u;
  sub_254B64A6C(a1 + 448);
  *(a1 + 512) = 0;
  *(a1 + 544) = 0;
  *(a1 + 576) = 0u;
  return a1;
}

void sub_254B3797C(_Unwind_Exception *a1)
{
  sub_254B2E940(v1 + 352);
  v3 = *(v1 + 344);
  *(v1 + 344) = 0;
  if (v3)
  {
    sub_254B883A4(v3);
  }

  sub_254B3661C(v1);
  _Unwind_Resume(a1);
}

void sub_254B379AC(uint64_t a1)
{
  sub_254B379E4(a1);

  JUMPOUT(0x259C24E00);
}

uint64_t sub_254B379E4(uint64_t a1)
{
  *a1 = &unk_286700870;
  sub_254B383A4((a1 + 584), 0);
  sub_254B37270(a1 + 552);
  sub_254B36250(a1 + 520);
  sub_254B362D0(a1 + 488);
  nullsub_2(a1 + 448);
  v2 = *(a1 + 424);
  if (v2)
  {
    *(a1 + 432) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 400);
  if (v3)
  {
    *(a1 + 408) = v3;
    operator delete(v3);
  }

  sub_254B35FEC(a1 + 376, *(a1 + 384));
  v6 = (a1 + 352);
  sub_254B35B8C(&v6);
  v4 = *(a1 + 344);
  *(a1 + 344) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return sub_254B3661C(a1);
}

void sub_254B37AF4(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));

  JUMPOUT(0x259C24E00);
}

void sub_254B37BD8(id *a1)
{
  objc_destroyWeak(a1 + 1);

  operator delete(a1);
}

uint64_t sub_254B37C14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  if (objc_opt_respondsToSelector())
  {
    v2 = [WeakRetained ICShouldBeCanceled];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_254B37C78(uint64_t a1, uint64_t a2)
{
  if (sub_254B33F84(a2, &unk_286700170))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_254B37CC4(void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_254B37F1C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_254B32E0C(a1);
}

void sub_254B37F54(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));

  JUMPOUT(0x259C24E00);
}

void sub_254B38038(id *a1)
{
  objc_destroyWeak(a1 + 1);

  operator delete(a1);
}

void sub_254B38074(uint64_t a1, int *a2)
{
  v2 = *a2;
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  if (objc_opt_respondsToSelector())
  {
    LODWORD(v3) = v2;
    [WeakRetained ICReportProgress:v3];
  }
}

uint64_t sub_254B380F4(uint64_t a1, uint64_t a2)
{
  if (sub_254B33F84(a2, &unk_286700160))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_254B38140(void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_254B38398(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_254B32E0C(a1);
}

uint64_t *sub_254B383A4(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 520);
    if (v3)
    {
      *(v2 + 528) = v3;
      operator delete(v3);
    }

    sub_254B3842C(v2 + 296);
    v4 = (v2 + 272);
    sub_254B35B8C(&v4);
    sub_254B36594((v2 + 256));
    sub_254B36250(v2 + 192);
    sub_254B362D0(v2 + 160);
    return MEMORY[0x259C24E00](v2, 0x10B0C408AFB0367);
  }

  return result;
}

uint64_t sub_254B3842C(uint64_t a1)
{
  sub_254B35FEC(a1 + 192, *(a1 + 200));
  v2 = *(a1 + 168);
  if (v2)
  {
    *(a1 + 176) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 144);
  if (v3)
  {
    *(a1 + 152) = v3;
    operator delete(v3);
  }

  v9 = (a1 + 120);
  sub_254B35B8C(&v9);
  v9 = (a1 + 96);
  sub_254B35B8C(&v9);
  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    *(a1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v7;
    operator delete(v7);
  }

  return a1;
}

uint64_t sub_254B384E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}