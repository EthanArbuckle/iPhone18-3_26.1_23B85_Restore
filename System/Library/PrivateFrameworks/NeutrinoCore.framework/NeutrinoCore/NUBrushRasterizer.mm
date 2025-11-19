@interface NUBrushRasterizer
+ (int64_t)_rasterizeBrushStroke:(id)a3 toROI:(id *)a4 maskPtr:(char *)a5 maskPtrRowBytes:(int64_t)a6 close:(BOOL)a7 startIndex:(int64_t)a8 pressureMode:(int64_t)a9;
+ (int64_t)rasterizeBrushStroke:(id)a3 atPoint:(id)a4 toBuffer:(id)a5 close:(BOOL)a6 startIndex:(int64_t)a7;
@end

@implementation NUBrushRasterizer

+ (int64_t)rasterizeBrushStroke:(id)a3 atPoint:(id)a4 toBuffer:(id)a5 close:(BOOL)a6 startIndex:(int64_t)a7
{
  v8 = a6;
  var1 = a4.var1;
  var0 = a4.var0;
  v13 = a3;
  v14 = a5;
  v15 = [v14 size];
  [v14 size];
  v19[0] = var0;
  v19[1] = var1;
  v19[2] = v15;
  v19[3] = v16;
  v17 = [a1 _rasterizeBrushStroke:v13 toROI:v19 maskPtr:objc_msgSend(v14 maskPtrRowBytes:"mutableBytes") close:objc_msgSend(v14 startIndex:"rowBytes") pressureMode:{v8, a7, objc_msgSend(v13, "pressureMode")}];

  return v17;
}

+ (int64_t)_rasterizeBrushStroke:(id)a3 toROI:(id *)a4 maskPtr:(char *)a5 maskPtrRowBytes:(int64_t)a6 close:(BOOL)a7 startIndex:(int64_t)a8 pressureMode:(int64_t)a9
{
  v10 = a7;
  v14 = a3;
  v15 = [v14 pointCount];
  if (!v15)
  {
    v56 = 0;
    goto LABEL_44;
  }

  v16 = [v14 points];
  v17 = [v16 bytes];
  [v14 radius];
  v63 = v18;
  v58 = v16;
  [v14 softness];
  v20 = v19;
  v21 = v17 + 12 * v15;
  v22 = floorf(v63 + 0.5);
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v65 = __103__NUBrushRasterizer__rasterizeBrushStroke_toROI_maskPtr_maskPtrRowBytes_close_startIndex_pressureMode___block_invoke;
  v66 = &__block_descriptor_84_e27_v16__0r__BrushStamp_fffff_8l;
  var1 = a4->var1;
  if (a8 >= 0)
  {
    v24 = a8 + 1;
  }

  else
  {
    v24 = 0;
  }

  var0 = a4->var0;
  v68 = var1;
  v69 = a6;
  v70 = a5;
  v71 = v22;
  v25 = v64;
  v28 = 0.5;
  v60 = v25;
  v29 = 0;
  v59 = v21;
  v30 = (v21 - 12);
  v31 = *(v17 + 8);
  v32 = *v17;
  v33 = !v10;
  v34 = 1.0;
  v35 = v17;
  do
  {
    v36 = *v35;
    v37 = v35[1].f32[0];
    if (v35 == v17)
    {
      v41 = 1;
    }

    else
    {
      v38 = vsub_f32(v32, v36);
      v39 = fabsf(v38.f32[0]);
      v40 = fabsf(v38.f32[1]);
      if (v39 <= v40)
      {
        v41 = v40;
      }

      else
      {
        v41 = v39;
      }

      if (v41 <= 1)
      {
        v42 = 1;
      }

      else
      {
        v42 = v41;
      }

      if (v35 == v30)
      {
        v41 = v42;
      }

      else if (!v41)
      {
        v43 = v29;
        v44 = v32;
        goto LABEL_41;
      }
    }

    v45 = 0;
    v46 = v41;
    v47 = vcltz_s32(vshl_n_s32(vdup_n_s32(v35 == v17), 0x1FuLL));
    v61 = *v35;
    do
    {
      v26.f32[0] = (v45 + v34) / v46;
      v48 = v31 + (-(v31 - v37) * v26.f32[0]);
      if (v35 == v17)
      {
        v48 = v37;
      }

      v49 = floorf(v28 + (v63 * v48));
      if (a9 == 1)
      {
        *v27.i32 = v49;
      }

      else
      {
        *v27.i32 = v22;
      }

      v26 = vadd_f32(vbsl_s8(v47, v36, vmls_lane_f32(v32, vsub_f32(v32, v36), v26, 0)), 0x3F0000003F000000);
      v44 = vrndm_f32(v26);
      if (v35 == v17 || (v41 != 1 ? (v50 = 1) : (v50 = v33), v35 == v30 && !v50 || (v51 = fmaxf(((v20 * 0.8) + 0.2) * (*v27.i32 * 0.25), v34), v52 = vsub_f32(v44, v32), (COERCE_FLOAT(vmul_f32(v52, v52).i32[1]) + (v52.f32[0] * v52.f32[0])) >= (v51 * v51))))
      {
        v43 = v29 + 1;
        if (a9 == 2)
        {
          v53 = v48;
        }

        else
        {
          v53 = v34;
        }

        if (v29 >= v24)
        {
          v62 = v27.i32[0];
          v54 = a4->var0;
          v55 = a4->var1;
          v76 = vcvtq_s64_f64(vcvtq_f64_f32(vsub_f32(v44, vdup_lane_s32(v27, 0))));
          v77 = vdupq_n_s64(((*v27.i32 + *v27.i32) + v34));
          v75[0] = v54;
          v75[1] = v55;
          NU::RectT<long>::Intersection(v72, v76.i64, v75);
          if (v73 && v74)
          {
            *v76.i8 = v44;
            v76.i64[1] = __PAIR64__(LODWORD(v20), v62);
            *v77.i32 = v53;
            v65(v60, &v76);
          }

          v28 = 0.5;
          v34 = 1.0;
          v36 = v61;
        }
      }

      else
      {
        v43 = v29;
        v44 = v32;
      }

      ++v45;
      v29 = v43;
      v32 = v44;
      --v41;
    }

    while (v41);
LABEL_41:
    v35 = (v35 + 12);
    v29 = v43;
    v31 = v37;
    v32 = v44;
  }

  while (v35 != v59);

  v56 = v43 - 1;
LABEL_44:

  return v56;
}

void __103__NUBrushRasterizer__rasterizeBrushStroke_toROI_maskPtr_maskPtrRowBytes_close_startIndex_pressureMode___block_invoke(uint64_t a1, float32x2_t *a2)
{
  v4 = rintf(floorf(a2[1].f32[0] + 0.5));
  v5 = (2 * v4) | 1;
  v6 = vsubq_s64(vcvtq_s64_f64(vcvtq_f64_f32(*a2)), vdupq_n_s64(v4));
  v7 = *(a1 + 48);
  block = *(a1 + 32);
  v51 = v7;
  v40 = v6;
  v55 = v6;
  v56 = vdupq_n_s64(v5);
  NU::RectT<long>::Intersection(&v59, &block, v55.i64);
  v8 = v60;
  v10 = *(&v60 + 1);
  v9 = v60;
  if (v4 >= 1 && v60 != 0 && *(&v60 + 1) != 0)
  {
    v13 = v59;
    v14 = *(a1 + 64);
    v15 = v59;
    v16 = *(a1 + 72) + v14 * (*(a1 + 56) + *(a1 + 40) - (*(&v60 + 1) + *(&v59 + 1))) + v59 - *(a1 + 32);
    *&v59 = 0;
    *(&v59 + 1) = &v59;
    *&v60 = 0x2020000000;
    BYTE8(v60) = 0;
    v17 = a2[1].f32[0];
    if (v17 == *(a1 + 80))
    {
      v38 = v13;
      v39 = v8;
      v18 = a2[1].i32[1];
      {
      }

      v55.i64[0] = 0;
      v55.i64[1] = &v55;
      v56.i64[0] = 0x3032000000;
      v56.i64[1] = __Block_byref_object_copy__1495;
      v57 = __Block_byref_object_dispose__1496;
      v58 = 0;
      *&block = MEMORY[0x1E69E9820];
      *(&block + 1) = 3221225472;
      *&v51 = ___ZN12_GLOBAL__N_114getCachedBrushElf_block_invoke_10;
      *(&v51 + 1) = &unk_1E81095F8;
      v54 = v18;
      v52 = &v55;
      v53 = (2 * v4) | 1;
      v19 = *(v55.i64[1] + 40);
      _Block_object_dispose(&v55, 8);

      v20 = [v19 size];
      block = 0uLL;
      *&v51 = v20;
      *(&v51 + 1) = v21;
      v22 = [NURegion regionWithRect:&block];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __103__NUBrushRasterizer__rasterizeBrushStroke_toROI_maskPtr_maskPtrRowBytes_close_startIndex_pressureMode___block_invoke_2;
      v41[3] = &unk_1E8109590;
      v42 = v40;
      v43 = v5;
      v44 = v5;
      v45 = v38;
      v46 = v39;
      v23 = *(a1 + 64);
      v47 = v16;
      v48 = v23;
      v49 = a2;
      v41[4] = &v59;
      [v19 readBufferRegion:v22 withBlock:v41];

      if (*(*(&v59 + 1) + 24))
      {
        goto LABEL_28;
      }

      v14 = *(a1 + 64);
      v17 = a2[1].f32[0];
    }

    if (v17 > 1.0)
    {
      v24 = a2->f32[0] + 0.5;
      v25 = a2->f32[1] + 0.5;
      v27 = a2[1].f32[1];
      v26 = a2[2].f32[0];
      if ((2.0 / (v17 + v17)) > v27)
      {
        v27 = 2.0 / (v17 + v17);
      }

      v28 = v17 * (1.0 - v27);
      v29 = *(&v15 + 1) + 0.5;
      do
      {
        v30 = 0;
        v31 = v15 + 0.5;
        do
        {
          v32 = sqrtf(((v29 - v25) * (v29 - v25)) + ((v31 - v24) * (v31 - v24)));
          if (v32 <= v17)
          {
            v33 = 1.0;
            if (v32 <= v28 || (v34 = (v32 - v28) / (v17 - v28), v32 = v34 * ((v34 * -2.0) + 3.0), v33 = 1.0 - (v34 * v32), v33 > 0.0))
            {
              LOBYTE(v32) = *(v16 + v30);
              v35 = LODWORD(v32) / 255.0;
              v36 = 1.0 - ((1.0 - v33) * (1.0 - v35));
              v37 = v35 + (v33 * (v26 - v35));
              if (v35 >= v26)
              {
                v37 = v35;
              }

              if (v26 == 1.0)
              {
                v37 = v36;
              }

              *(v16 + v30) = (v37 * 255.0);
            }
          }

          v31 = v31 + 1.0;
          ++v30;
        }

        while (v9 != v30);
        v16 += v14;
        v29 = v29 + 1.0;
        --v10;
      }

      while (v10);
    }

LABEL_28:
    _Block_object_dispose(&v59, 8);
  }
}

void __103__NUBrushRasterizer__rasterizeBrushStroke_toROI_maskPtr_maskPtrRowBytes_close_startIndex_pressureMode___block_invoke_2(void *a1, void *a2)
{
  v14 = a2;
  v3 = [v14 buffer];
  v4 = [v3 rowBytes];
  v5 = [v3 bytes];
  v6 = a1[12];
  if (v6)
  {
    v7 = vcvts_n_s32_f32(*(a1[15] + 16), 8uLL);
    v8 = a1[11];
    v10 = a1[13];
    v9 = a1[14];
    v11 = v5 + (a1[8] + a1[6] - (v6 + a1[10])) * v4 + a1[9] - a1[5];
    do
    {
      if (v8)
      {
        for (i = 0; i != v8; ++i)
        {
          v13 = *(v10 + i);
          if (v7 > v13)
          {
            *(v10 + i) = v13 + (((v7 - v13) * *(v11 + i)) >> 8);
          }
        }
      }

      v11 += v4;
      v10 += v9;
      --v6;
    }

    while (v6);
  }

  *(*(a1[4] + 8) + 24) = 1;
}

@end