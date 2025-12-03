@interface MaskToRoi
- (MaskToRoi)initWithMetalToolBox:(id)box;
- (id)_findBoundingBoxesWithSizeThreshold:(float)threshold LsThreshold:(float)lsThreshold scalingFactor:(float)factor[4] validWidth:(int)width validHeight:(int)height;
- (int64_t)convertInternalBBoxes:(int64_t)boxes outputArray:(id *)array;
- (int64_t)convertInternalBBoxesToROI:(int64_t)i outputArray:(id *)array;
- (int64_t)extractRoiByGraphTraversalInput:(__CVBuffer *)input bboxSizeThreshold:(float)threshold scaleFactorInv:(float)inv[4] validWidth:(int)width validHeight:(int)height lightSourceBBox:;
- (int64_t)getBBoxesUsingGraphTraversalFrom:(__CVBuffer *)from pixValThreshold:(float)threshold bboxSizeThreshold:(float)sizeThreshold scaleFactor:(int)factor roi:(BOOL)roi returnAsDetectedROI:(id *)i outputArray:;
- (int64_t)getLSBBoxesUsingGraphTraversalFrom:(__CVBuffer *)from roi:(CGRect)roi pixValThreshold:(float)threshold bboxSizeThreshold:(float)sizeThreshold scaleFactorInv:(float)inv[4] validWidth:(int)width validHeight:(int)height lightSourceBBox:;
- (void)convertPackedMaskToRegular:(__CVBuffer *)regular output:(__CVBuffer *)output;
- (void)dealloc;
@end

@implementation MaskToRoi

- (void)dealloc
{
  integralSumPixelBuffer = self->_integralSumPixelBuffer;
  if (integralSumPixelBuffer)
  {
    CFRelease(integralSumPixelBuffer);
    self->_integralSumPixelBuffer = 0;
  }

  free(*self->_connectedPixelsQueue);
  free(*self->_bboxList);
  v4.receiver = self;
  v4.super_class = MaskToRoi;
  [(MaskToRoi *)&v4 dealloc];
}

- (id)_findBoundingBoxesWithSizeThreshold:(float)threshold LsThreshold:(float)lsThreshold scalingFactor:(float)factor[4] validWidth:(int)width validHeight:(int)height
{
  v11 = [[PixelMemory alloc] initWithCvPixelBuffer:self->_integralSumPixelBuffer skipClamp:0 readOnly:1];
  width = [(PixelMemory *)v11 width];
  if (width >= width)
  {
    widthCopy = width;
  }

  else
  {
    widthCopy = width;
  }

  height = [(PixelMemory *)v11 height];
  if (height >= height)
  {
    heightCopy = height;
  }

  else
  {
    heightCopy = height;
  }

  stride = [(PixelMemory *)v11 stride];
  v108 = v11;
  pMemory = [(PixelMemory *)v11 pMemory];
  array = [MEMORY[0x277CBEB18] array];
  v118 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v117 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v116 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v115 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v113 = widthCopy - 1;
  v17 = heightCopy - 1;
  if (heightCopy >= 1)
  {
    LODWORD(v18) = 0;
    v19 = 0.0;
    v20 = pMemory;
    do
    {
      v21 = v18;
      v22 = pMemory + stride * v18;
      v23 = stride + stride * v18;
      if (heightCopy <= v18 + 1)
      {
        v18 = (v18 + 1);
      }

      else
      {
        v18 = heightCopy;
      }

      v24 = pMemory + v23;
      while (1)
      {
        v25 = *(v20 + 4 * v113);
        if (v25 != v19)
        {
          break;
        }

        v26 = v24;
        ++v21;
        v22 += stride;
        v24 += stride;
        v20 = v26;
        v19 = v25;
        if (v21 >= heightCopy)
        {
          v19 = v25;
          v20 = v22;
          goto LABEL_17;
        }
      }

      v18 = v21;
LABEL_17:
      if (v18 == heightCopy)
      {
        break;
      }

      v27 = [MEMORY[0x277CCABB0] numberWithInt:v18];
      [v116 addObject:v27];

      if (v18 < heightCopy)
      {
        v28 = heightCopy - v18;
        v29 = pMemory + stride * v18;
        v30 = pMemory + stride + stride * v18;
        while (1)
        {
          v31 = *(v20 + 4 * v113);
          if (v31 <= v19)
          {
            break;
          }

          v32 = v30;
          LODWORD(v18) = v18 + 1;
          v29 += stride;
          v30 += stride;
          v20 = v32;
          v19 = v31;
          if (!--v28)
          {
            v19 = v31;
            LODWORD(v18) = heightCopy;
            v20 = v29;
            break;
          }
        }
      }

      v33 = [MEMORY[0x277CCABB0] numberWithInt:(v18 - 1)];
      [v115 addObject:v33];
    }

    while (v18 < heightCopy);
  }

  if (widthCopy >= 1)
  {
    LODWORD(v34) = 0;
    v35 = 0.0;
    do
    {
      v36 = v34;
      if (widthCopy <= v34 + 1)
      {
        v34 = (v34 + 1);
      }

      else
      {
        v34 = widthCopy;
      }

      while (1)
      {
        v37 = *(pMemory + v17 * stride + 4 * v36);
        if (v37 != v35)
        {
          break;
        }

        ++v36;
        v35 = v37;
        if (v36 >= widthCopy)
        {
          v35 = v37;
          goto LABEL_33;
        }
      }

      v34 = v36;
LABEL_33:
      if (v34 == widthCopy)
      {
        break;
      }

      v38 = [MEMORY[0x277CCABB0] numberWithInt:v34];
      [v118 addObject:v38];

      if (v34 < widthCopy)
      {
        v39 = (pMemory + v17 * stride + 4 * v34);
        v40 = widthCopy - v34;
        while (1)
        {
          v41 = *v39;
          if (*v39 <= v35)
          {
            break;
          }

          LODWORD(v34) = v34 + 1;
          ++v39;
          v35 = v41;
          if (!--v40)
          {
            v35 = v41;
            LODWORD(v34) = widthCopy;
            break;
          }
        }
      }

      v42 = [MEMORY[0x277CCABB0] numberWithInt:(v34 - 1)];
      [v117 addObject:v42];
    }

    while (v34 < widthCopy);
  }

  v43 = v116;
  if (![v118 count])
  {
    goto LABEL_112;
  }

  v44 = 0;
  v45.i32[0] = widthCopy - 1;
  v45.i32[1] = heightCopy - 1;
  v112 = v45;
  v111 = pMemory - 4;
  do
  {
    if (![v43 count])
    {
      goto LABEL_111;
    }

    v46 = 0;
    do
    {
      v49 = [v118 objectAtIndexedSubscript:v44];
      LODWORD(v47) = [v49 intValue];

      v48 = [v117 objectAtIndexedSubscript:v44];
      LODWORD(v49) = [v48 intValue];

      v50 = [v43 objectAtIndexedSubscript:v46];
      intValue = [v50 intValue];

      v52 = [v115 objectAtIndexedSubscript:v46];
      intValue2 = [v52 intValue];

      v54 = (v49 - v47 + 1) * (intValue2 - intValue + 1);
      if (v54 <= threshold)
      {
        goto LABEL_108;
      }

      v55 = pMemory + intValue2 * stride;
      if (!v47)
      {
        v57 = *(v55 + 4 * v49);
        if (!intValue)
        {
          v56 = 0.0;
          goto LABEL_51;
        }

        v58 = v49;
        v59 = (intValue - 1) * stride;
        v56 = 0.0;
        v60 = 0.0;
        goto LABEL_50;
      }

      v56 = *(v55 + 4 * v47 - 4);
      v57 = *(v55 + 4 * v49);
      if (intValue)
      {
        v58 = v49;
        v59 = (intValue - 1) * stride;
        v60 = *(pMemory + v59 + 4 * v47 - 4);
LABEL_50:
        v57 = (v57 + v60) - *(pMemory + v59 + 4 * v58);
      }

LABEL_51:
      if (lsThreshold * 0.1 >= ((v57 - v56) / v54))
      {
        goto LABEL_108;
      }

      if (intValue2 > intValue)
      {
        v61 = 0;
        v62 = intValue;
        v63 = pMemory + 4 * v49 + stride * intValue;
        v64 = stride * (intValue - 1);
        while (!v47)
        {
          v66 = *(v63 + v61);
          if (v62)
          {
            v67 = (v62 - 1) * stride;
            v65 = 0.0;
            v68 = 0.0;
LABEL_59:
            v66 = (v66 + v68) - *(pMemory + 4 * v49 + v67);
            goto LABEL_60;
          }

          v65 = 0.0;
LABEL_60:
          if ((v66 - v65) != 0.0)
          {
            intValue = v62;
            goto LABEL_66;
          }

          ++v62;
          v61 += stride;
          if (intValue2 == v62)
          {
            intValue = intValue2;
            goto LABEL_79;
          }
        }

        v65 = *(v111 + 4 * v47 + stride * intValue + v61);
        v66 = *(v63 + v61);
        if (!v62)
        {
          goto LABEL_60;
        }

        v67 = v64 + v61;
        v68 = *(v111 + v64 + 4 * v47 + v61);
        goto LABEL_59;
      }

LABEL_66:
      if (intValue >= intValue2)
      {
        goto LABEL_79;
      }

      v69 = 0;
      v70 = intValue2;
      v71 = pMemory + 4 * v49 + stride * intValue2;
      v72 = stride * (intValue2 - 1);
      while (1)
      {
        if (v47)
        {
          v73 = *(v111 + 4 * v47 + stride * intValue2 + v69);
          v74 = *(v71 + v69);
          if (!v70)
          {
            goto LABEL_74;
          }

          v75 = v72 + v69;
          v76 = *(v111 + v72 + 4 * v47 + v69);
          goto LABEL_73;
        }

        v74 = *(v71 + v69);
        if (v70)
        {
          v75 = (v70 - 1) * stride;
          v73 = 0.0;
          v76 = 0.0;
LABEL_73:
          v74 = (v74 + v76) - *(pMemory + 4 * v49 + v75);
          goto LABEL_74;
        }

        v73 = 0.0;
LABEL_74:
        if ((v74 - v73) != 0.0)
        {
          break;
        }

        --v70;
        v69 -= stride;
        if (v70 <= intValue)
        {
          intValue2 = intValue;
          goto LABEL_79;
        }
      }

      intValue2 = v70;
LABEL_79:
      if (v49 > v47)
      {
        v47 = v47;
        v77 = 4 * v47;
        v78 = (pMemory + v77 + intValue2 * stride);
        v79 = (pMemory + v77 + (intValue - 1) * stride);
        while (1)
        {
          if (v47)
          {
            v80 = *(v78 - 1);
            v81 = *v78;
            if (!intValue)
            {
              goto LABEL_86;
            }

            v82 = *(v79 - 1);
          }

          else
          {
            v81 = *(pMemory + intValue2 * stride);
            v80 = 0.0;
            v82 = 0.0;
            if (!intValue)
            {
              goto LABEL_86;
            }
          }

          v81 = (v81 + v82) - *v79;
LABEL_86:
          if ((v81 - v80) != 0.0)
          {
            break;
          }

          ++v47;
          ++v78;
          ++v79;
          if (v49 == v47)
          {
            LODWORD(v47) = v49;
            goto LABEL_99;
          }
        }
      }

      if (v47 >= v49)
      {
        goto LABEL_99;
      }

      v49 = v49;
      v83 = 4 * v49;
      v84 = (pMemory + v83 + (intValue - 1) * stride);
      v85 = (pMemory + v83 + intValue2 * stride);
      while (2)
      {
        if (v49)
        {
          v86 = *(v85 - 1);
          v87 = *v85;
          if (intValue)
          {
            v88 = *(v84 - 1);
            goto LABEL_95;
          }
        }

        else
        {
          v87 = *(pMemory + intValue2 * stride);
          v86 = 0.0;
          v88 = 0.0;
          if (intValue)
          {
LABEL_95:
            v87 = (v87 + v88) - *v84;
          }
        }

        if ((v87 - v86) != 0.0)
        {
          goto LABEL_99;
        }

        --v49;
        --v84;
        --v85;
        if (v49 > v47)
        {
          continue;
        }

        break;
      }

      LODWORD(v49) = v47;
LABEL_99:
      v89 = vcvt_f32_u32(vmax_s32(__PAIR64__(intValue, v47), 0));
      v90 = vcvt_f32_s32(vmin_s32(v112, __PAIR64__(intValue2, v49)));
      v91 = v89.f32[0];
      v92 = v89.f32[1];
      LODWORD(v93) = v90.f32[0];
      v94 = pMemory + stride * v90.f32[1];
      if (v89.f32[0])
      {
        v95 = *(v94 + 4 * v91 - 4);
        v96 = *(v94 + 4 * v93);
        if (v92)
        {
          v93 = v93;
          v97 = (v92 - 1) * stride;
          v98 = *(pMemory + v97 + 4 * v91 - 4);
          goto LABEL_104;
        }
      }

      else
      {
        v96 = *(v94 + 4 * v93);
        if (v92)
        {
          v93 = v93;
          v97 = (v92 - 1) * stride;
          v95 = 0.0;
          v98 = 0.0;
LABEL_104:
          v96 = (v96 + v98) - *(pMemory + v97 + 4 * v93);
        }

        else
        {
          v95 = 0.0;
        }
      }

      v99 = ((v90.f32[1] - v89.f32[1]) + 1.0) * (vsub_f32(v90, v89).f32[0] + 1.0);
      if (v99 > threshold && ((v96 - v95) / v99) > lsThreshold)
      {
        v100 = COERCE_DOUBLE(vmla_f32(*(factor + 2), *factor, v89));
        __asm { FMOV            V1.2S, #1.0 }

        v106 = [[ROI alloc] initWithBbox:v100];
        [array addObject:v106];
      }

LABEL_108:
      ++v46;
      v43 = v116;
    }

    while ([v116 count] > v46);
LABEL_111:
    ++v44;
  }

  while ([v118 count] > v44);
LABEL_112:

  return array;
}

- (int64_t)getBBoxesUsingGraphTraversalFrom:(__CVBuffer *)from pixValThreshold:(float)threshold bboxSizeThreshold:(float)sizeThreshold scaleFactor:(int)factor roi:(BOOL)roi returnAsDetectedROI:(id *)i outputArray:
{
  v68 = v8;
  v75 = *MEMORY[0x277D85DE8];
  [*i removeAllObjects];
  v16 = [[PixelMemory alloc] initWithCvPixelBuffer:from skipClamp:0 readOnly:0];
  if (v16)
  {
    roiCopy = roi;
    Width = CVPixelBufferGetWidth(from);
    Height = CVPixelBufferGetHeight(from);
    stride = [(PixelMemory *)v16 stride];
    bytePerPixel = [(PixelMemory *)v16 bytePerPixel];
    v65 = v16;
    pMemory = [(PixelMemory *)v16 pMemory];
    v25 = v68;
    if (v68.i32[0] <= v68.i32[2])
    {
      v27 = pMemory;
      v26 = 0;
      v28 = v68.i32[3];
      v29.i64[0] = Width;
      v29.i64[1] = Height;
      *v29.i8 = vcvt_f32_f64(vcvtq_f64_u64(v29));
      __asm { FMOV            V2.2S, #-1.0 }

      v35 = vadd_f32(*v29.i8, _D2);
      v36 = vadd_f32(vmul_n_f32(*v29.i8, factor), _D2);
      v37 = v68.i32[1];
      v38 = stride;
      v39 = v68.i32[0];
      v40 = v68.i32[2] + 1;
      v41 = vextq_s8(v68, v68, 8uLL).u64[0];
      v42 = &OBJC_IVAR___LoGFilter__gaussianFilteredTexture1;
      v43.i32[0] = 134218240;
      v67 = v41;
      do
      {
        if (v37 <= v28)
        {
          v44 = v27 + v39 * bytePerPixel;
          LODWORD(v22) = v39;
          LODWORD(v23) = v39 - 1;
          v66 = v39 + 1;
          LODWORD(v24) = v39 + 1;
          v70 = v23;
          v71 = v22;
          v69 = v24;
          do
          {
            v43.i8[0] = *(v44 + v37 * v38);
            *v43.i32 = v43.u32[0];
            if (*v43.i32 >= threshold)
            {
              v45 = 0;
              v46 = v37;
              **self->_connectedPixelsQueue = __PAIR64__(v37, v22);
              *(v44 + v37 * v38) = 0;
              ++v37;
              v47.i32[0] = v23;
              v47.i32[1] = v46 - 1;
              v48 = __PAIR64__(v37, v24);
              v49 = 1;
              do
              {
                v50 = 0;
                v51 = *(*self->_connectedPixelsQueue + 8 * v45);
                v47 = vbsl_s8(vcgt_s32(v51, v47), v47, vadd_s32(v51, -1));
                v52 = vadd_s32(v51, 0x100000001);
                do
                {
                  v53 = vadd_s32(*&self->_neighbors[v50], v51);
                  *v54.i8 = v53;
                  v54.u64[1] = v47;
                  v55 = vmovn_s32(vcgtq_s32(vzip1q_s32(v25, v54), vzip2q_s32(vextq_s8(v54, v54, 8uLL), v25)));
                  v55.i16[0] = vmaxv_u16(v55);
                  if ((v55.i8[0] & 1) == 0)
                  {
                    v56 = v27 + v53.i32[0] * bytePerPixel;
                    v55.i8[0] = *(v56 + v53.i32[1] * stride);
                    if (v55.u32[0] >= threshold)
                    {
                      *(*self->_connectedPixelsQueue + 8 * v49++) = v53;
                      *(v56 + v53.i32[1] * stride) = 0;
                    }
                  }

                  v50 += 8;
                }

                while (v50 != 64);
                ++v45;
                v48 = vbsl_s8(vcgt_s32(v48, v51), v48, v52);
              }

              while (v49 > v45);
              *v43.i8 = vcvt_s32_f32(vmul_f32(v36, vdiv_f32(vcvt_f32_s32(vcvt_s32_f32(vadd_f32(vcvt_f32_s32(vmax_s32(*v25.i8, v47)), 0x3F0000003F000000))), v35)));
              v57 = vsub_s32(vcvt_s32_f32(vmul_f32(v36, vdiv_f32(vcvt_f32_s32(vcvt_s32_f32(vadd_f32(vcvt_f32_s32(vmin_s32(v41, v48)), 0x3F0000003F000000))), v35))), *v43.i8);
              v58 = vcvt_f32_s32(v57);
              if (v58.f32[0] > sizeThreshold && v58.f32[1] > sizeThreshold)
              {
                if (v26 > 1023)
                {
                  if ((v42[582] & 2) != 0)
                  {
                    v60 = global_logger;
                    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 134218240;
                      *&buf[4] = v26;
                      v73 = 1024;
                      v74 = 1024;
                      _os_log_impl(&dword_24874B000, v60, OS_LOG_TYPE_DEFAULT, "bbox count %ld exceeds the limit: %d", buf, 0x12u);
                    }

                    v25 = v68;
                    v24 = v69;
                    v38 = stride;
                    v41 = v67;
                    v42 = &OBJC_IVAR___LoGFilter__gaussianFilteredTexture1;
                    v23 = v70;
                    v22 = v71;
                  }
                }

                else
                {
                  v43.u64[1] = v57;
                  v43 = vcvtq_f32_s32(v43);
                  *(*self->_bboxList + 16 * v26++) = v43;
                }
              }
            }

            else
            {
              ++v37;
            }
          }

          while (v37 != v68.i32[3] + 1);
          v28 = v68.i32[3];
          v37 = v68.i32[1];
          v39 = v66;
          v40 = v68.i32[2] + 1;
        }

        else
        {
          ++v39;
        }
      }

      while (v39 != v40);
    }

    else
    {
      v26 = 0;
    }

    if (roiCopy)
    {
      v61 = [(MaskToRoi *)self convertInternalBBoxes:v26 outputArray:i];
    }

    else
    {
      v61 = [(MaskToRoi *)self convertInternalBBoxesToROI:v26 outputArray:i];
    }

    v62 = v61;
    v16 = v65;
  }

  else
  {
    [MaskToRoi getBBoxesUsingGraphTraversalFrom:buf pixValThreshold:? bboxSizeThreshold:? scaleFactor:? roi:? returnAsDetectedROI:? outputArray:?];
    v62 = *buf;
  }

  return v62;
}

- (void)convertPackedMaskToRegular:(__CVBuffer *)regular output:(__CVBuffer *)output
{
  v22 = [[PixelMemory alloc] initWithCvPixelBuffer:regular skipClamp:0 readOnly:1];
  v5 = [[PixelMemory alloc] initWithCvPixelBuffer:output];
  pMemory = [(PixelMemory *)v5 pMemory];
  pMemory2 = [(PixelMemory *)v22 pMemory];
  width = [(PixelMemory *)v5 width];
  width2 = [(PixelMemory *)v5 width];
  if ([(PixelMemory *)v5 height]>= 1)
  {
    v10 = 0;
    v11 = width >> 3;
    v21 = width2 & 7;
    do
    {
      v12 = [(PixelMemory *)v5 stride]* v10;
      if (v11 < 1)
      {
        v18 = 0;
      }

      else
      {
        v13 = 0;
        v14 = 0;
        do
        {
          stride = [(PixelMemory *)v22 stride];
          v16 = v14 + 8;
          v17 = vdupq_n_s32(*(pMemory2 + v13 + v10 * stride));
          *(pMemory + v12 + v14) = vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqzq_s32(vandq_s8(v17, xmmword_2487C3BB0)), vceqzq_s32(vandq_s8(v17, xmmword_2487C3BC0)))));
          ++v13;
          v14 += 8;
        }

        while (v11 != v13);
        v18 = v16;
      }

      if (v21)
      {
        v19 = 0;
        v20 = pMemory + v18 + v12;
        do
        {
          *(v20 + v19) = *(pMemory2 + v11) >> v19 << 31 >> 31;
          ++v19;
        }

        while (v21 != v19);
      }

      ++v10;
    }

    while (v10 < [(PixelMemory *)v5 height]);
  }
}

- (MaskToRoi)initWithMetalToolBox:(id)box
{
  boxCopy = box;
  v13.receiver = self;
  v13.super_class = MaskToRoi;
  v5 = [(MaskToRoi *)&v13 init];
  if (v5 && (!boxCopy ? (v6 = objc_alloc_init(GGMMetalToolBox)) : (v6 = boxCopy), (metalToolbox = v5->_metalToolbox, v5->_metalToolbox = v6, metalToolbox, *v5->_neighbors = -1, *&v5->_neighbors[8] = 0xFFFFFFFFLL, *&v5->_neighbors[16] = 0xFFFFFFFF00000000, *&v5->_neighbors[24] = 1, *&v5->_neighbors[32] = 0x100000000, *&v5->_neighbors[40] = 0x100000001, *&v5->_neighbors[48] = 0x1FFFFFFFFLL, *&v5->_neighbors[56] = 0xFFFFFFFF00000001, *&v5->_width = xmmword_2487C3BA0, OUTLINED_FUNCTION_0_27(), v9 = malloc_type_malloc(0x1CF3400uLL, v8), (*v5->_connectedPixelsQueue = v9) != 0) && (v10 = malloc_type_malloc(0x4000uLL, 0x1000040451B5BE8uLL), (*v5->_bboxList = v10) != 0)))
  {
    v11 = v5;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int64_t)convertInternalBBoxesToROI:(int64_t)i outputArray:(id *)array
{
  OUTLINED_FUNCTION_1_27(self, a2, i, array);
  if (v5 < 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = 6;
  while (1)
  {
    v9 = [[ROI alloc] initWithBbox:*(*(v6 + 112) + 16 * v7)];
    if (!v9)
    {
      break;
    }

    v10 = v9;
    [*v4 addObject:v9];

    if (v5 == ++v7)
    {
      return 0;
    }
  }

  return v8;
}

- (int64_t)convertInternalBBoxes:(int64_t)boxes outputArray:(id *)array
{
  OUTLINED_FUNCTION_1_27(self, a2, boxes, array);
  if (v5 < 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = 6;
  while (1)
  {
    v9 = [[DetectedROI alloc] initWithTrackingSessionId:0 roiId:0 andRoi:COERCE_FLOAT(*(*(v6 + 112) + 16 * v7)), COERCE_FLOAT(HIDWORD(*(*(v6 + 112) + 16 * v7))), COERCE_FLOAT(*(*(v6 + 112) + 16 * v7 + 8)), COERCE_FLOAT(HIDWORD(*(*(v6 + 112) + 16 * v7)))];
    if (!v9)
    {
      break;
    }

    v10 = v9;
    [(DetectedROI *)v9 setTrackedCnt:10];
    [*v4 addObject:v10];

    if (v5 == ++v7)
    {
      return 0;
    }
  }

  return v8;
}

- (int64_t)getLSBBoxesUsingGraphTraversalFrom:(__CVBuffer *)from roi:(CGRect)roi pixValThreshold:(float)threshold bboxSizeThreshold:(float)sizeThreshold scaleFactorInv:(float)inv[4] validWidth:(int)width validHeight:(int)height lightSourceBBox:
{
  v61 = v9;
  v62 = *&sizeThreshold;
  v68 = *MEMORY[0x277D85DE8];
  Width = CVPixelBufferGetWidth(from);
  Height = CVPixelBufferGetHeight(from);
  BytesPerRow = CVPixelBufferGetBytesPerRow(from);
  if (CVPixelBufferLockBaseAddress(from, 0))
  {
    return 0;
  }

  result = CVPixelBufferGetBaseAddress(from);
  if (result)
  {
    pixelBuffer = from;
    v20 = vmin_s32(__PAIR64__(Height, Width), __PAIR64__(height, width));
    v55 = v20.i32[0];
    if (v20.i32[0] < 1)
    {
      v22 = 0;
    }

    else
    {
      v21 = result;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = v20.u32[1];
      v26 = vadd_s32(v20, -1);
      v27 = vdup_lane_s32(v62, 0);
      v28 = BytesPerRow;
      v29 = &OBJC_IVAR___LoGFilter__gaussianFilteredTexture1;
      v56 = v20;
      do
      {
        if (v25 >= 1)
        {
          v30 = 0;
          v31 = v21 + (v24 >> 3);
          v32 = 1 << (v24 & 7);
          LODWORD(v19) = v24;
          v33 = ~v32;
          v59 = v24;
          v58 = v19;
          do
          {
            v34 = *(v31 + v30 * v28);
            if ((v32 & v34) != 0)
            {
              v35 = 0;
              **self->_connectedPixelsQueue = __PAIR64__(v30, v19);
              *(v31 + v30 * v28) = v34 & v33;
              v36 = vadd_s32(__PAIR64__(v30, v19), -1);
              v37 = vadd_s32(__PAIR64__(v30, v19), 0x100000001);
              v38 = 1;
              do
              {
                v39 = 0;
                v40 = *(*self->_connectedPixelsQueue + 8 * v35);
                v41 = vadd_s32(v40, -1);
                v42 = vadd_s32(v40, 0x100000001);
                do
                {
                  v43 = vadd_s32(*&self->_neighbors[v39], v40);
                  v44 = vcgez_s32(v43);
                  if ((vpmin_u32(v44, v44).u32[0] & 0x80000000) != 0)
                  {
                    v45 = vcgt_s32(v20, v43);
                    if ((vpmin_u32(v45, v45).u32[0] & 0x80000000) != 0)
                    {
                      v46 = v21 + (v43.i32[0] >> 3);
                      v47 = *(v46 + v43.i32[1] * BytesPerRow);
                      v48 = 1 << (v43.i8[0] & 7);
                      if ((v48 & v47) != 0)
                      {
                        *(*self->_connectedPixelsQueue + 8 * v38++) = v43;
                        *(v46 + v43.i32[1] * BytesPerRow) = v47 & ~v48;
                      }
                    }
                  }

                  v39 += 8;
                }

                while (v39 != 64);
                ++v35;
                v36 = vmin_s32(v41, v36);
                v37 = vmax_s32(v42, v37);
              }

              while (v38 > v35);
              v49 = vcvt_s32_f32(vmla_f32(*(inv + 2), *inv, vadd_f32(vcvt_f32_s32(vmin_s32(v26, v37)), 0x3F0000003F000000)));
              *&v50 = vcvt_f32_s32(vcvt_s32_f32(vmla_f32(*(inv + 2), *inv, vadd_f32(vcvt_f32_s32(vmax_s32(v36, 0)), 0x3F0000003F000000))));
              v51 = vsub_f32(vcvt_f32_s32(v49), *&v50);
              v52 = vcgt_f32(v51, v27);
              if ((vpmax_u32(v52, v52).u32[0] & 0x80000000) != 0)
              {
                ++v23;
                if (v22 > 1023)
                {
                  if ((v29[582] & 2) != 0)
                  {
                    v63 = v23;
                    v60 = v22;
                    log = global_logger;
                    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 134218240;
                      v65 = v63;
                      v66 = 1024;
                      v67 = 1024;
                      _os_log_impl(&dword_24874B000, log, OS_LOG_TYPE_DEFAULT, "light source bounding box count: %ld exeed the limit: %d", buf, 0x12u);
                      v23 = v63;
                      v22 = v60;
                      v20 = v56;
                    }

                    else
                    {
                      v22 = v60;
                      v20 = v56;
                      v23 = v63;
                    }

                    v24 = v59;
                    v28 = BytesPerRow;
                    v29 = &OBJC_IVAR___LoGFilter__gaussianFilteredTexture1;
                    v19 = v58;
                    v33 = ~v32;
                  }
                }

                else
                {
                  *(&v50 + 1) = v51;
                  *(v61 + 16 * v22++) = v50;
                }
              }
            }

            ++v30;
          }

          while (v30 != v25);
        }

        ++v24;
      }

      while (v24 != v55);
    }

    v53 = v22;
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
    return v53;
  }

  return result;
}

- (int64_t)extractRoiByGraphTraversalInput:(__CVBuffer *)input bboxSizeThreshold:(float)threshold scaleFactorInv:(float)inv[4] validWidth:(int)width validHeight:(int)height lightSourceBBox:
{
  v8 = v7;
  v9 = *&height;
  v10 = *&width;
  Width = CVPixelBufferGetWidth(input);
  Height = CVPixelBufferGetHeight(input);
  if (!v8)
  {
    return 0;
  }

  if (Width != self->_width || Height != self->_height)
  {
    self->_width = Width;
    self->_height = Height;
    free(*self->_connectedPixelsQueue);
    OUTLINED_FUNCTION_0_27();
    v21 = malloc_type_malloc(v19, v20);
    *self->_connectedPixelsQueue = v21;
    if (!v21)
    {
      return 0;
    }
  }

  v22 = *MEMORY[0x277CBF3A0];
  v23 = *(MEMORY[0x277CBF3A0] + 8);
  v24 = *(MEMORY[0x277CBF3A0] + 16);
  v25 = *(MEMORY[0x277CBF3A0] + 24);
  LODWORD(v17) = 1008981770;
  *&v18 = threshold;

  return [(MaskToRoi *)self getLSBBoxesUsingGraphTraversalFrom:input roi:inv pixValThreshold:v10 bboxSizeThreshold:v9 scaleFactorInv:v8 validWidth:v22 validHeight:v23 lightSourceBBox:v24, v25, v17, v18];
}

- (void)getBBoxesUsingGraphTraversalFrom:(void *)a1 pixValThreshold:bboxSizeThreshold:scaleFactor:roi:returnAsDetectedROI:outputArray:.cold.1(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((global_logLevel & 2) != 0)
  {
    v2 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315138;
      v4 = "[MaskToRoi getBBoxesUsingGraphTraversalFrom:pixValThreshold:bboxSizeThreshold:scaleFactor:roi:returnAsDetectedROI:outputArray:]";
      _os_log_impl(&dword_24874B000, v2, OS_LOG_TYPE_DEFAULT, "notVisited in %s is NULL.", &v3, 0xCu);
    }
  }

  *a1 = 0;
}

@end