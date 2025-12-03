@interface ISSpecularClassification
- (BOOL)_prepareMaskIfNeeded;
- (BOOL)classifySpecularWithDebug:(ISSpecularClassification *)self;
- (CGImage)createSpecularImage;
- (ISSpecularClassification)initWithSpecularImage:(CGImage *)image useAlphaOnly:(BOOL)only;
- (void)dealloc;
@end

@implementation ISSpecularClassification

- (ISSpecularClassification)initWithSpecularImage:(CGImage *)image useAlphaOnly:(BOOL)only
{
  v8.receiver = self;
  v8.super_class = ISSpecularClassification;
  v6 = [(ISSpecularClassification *)&v8 init];
  if (v6)
  {
    v6->_cgImage = CGImageRetain(image);
    v6->_useAlphaOnly = only;
  }

  return v6;
}

- (void)dealloc
{
  CGImageRelease(self->_cgImage);
  data = self->_data;
  if (data)
  {
    CFRelease(data);
  }

  ucharMask = self->_ucharMask;
  if (ucharMask)
  {
    free(ucharMask);
  }

  v5.receiver = self;
  v5.super_class = ISSpecularClassification;
  [(ISSpecularClassification *)&v5 dealloc];
}

- (BOOL)_prepareMaskIfNeeded
{
  if (self[1].super.isa)
  {
    LOBYTE(cgImage) = 1;
    return cgImage;
  }

  cgImage = self->_cgImage;
  if (!cgImage)
  {
    return cgImage;
  }

  IsMask = CGImageIsMask(cgImage);
  v5 = self->_cgImage;
  if (!IsMask)
  {
    ColorSpace = CGImageGetColorSpace(v5);
    Model = CGColorSpaceGetModel(ColorSpace);
    if (Model)
    {
      if (Model != kCGColorSpaceModelRGB)
      {
        goto LABEL_61;
      }

      BitsPerPixel = CGImageGetBitsPerPixel(self->_cgImage);
      BitsPerComponent = CGImageGetBitsPerComponent(self->_cgImage);
      LOBYTE(cgImage) = 0;
      if (BitsPerComponent != 8 || BitsPerPixel != 32)
      {
        return cgImage;
      }

      Width = CGImageGetWidth(self->_cgImage);
      Height = CGImageGetHeight(self->_cgImage);
      BytesPerRow = CGImageGetBytesPerRow(self->_cgImage);
      v25 = BytesPerRow >= 0 ? BytesPerRow : BytesPerRow + 3;
      AlphaInfo = CGImageGetAlphaInfo(self->_cgImage);
      LOBYTE(cgImage) = 0;
      if (AlphaInfo > kCGImageAlphaNoneSkipLast)
      {
        return cgImage;
      }

      if (((1 << AlphaInfo) & 0x2A) == 0)
      {
        return cgImage;
      }

      cgImage = CGImageGetDataProvider(self->_cgImage);
      if (!cgImage)
      {
        return cgImage;
      }

      cgImage = CGDataProviderCopyData(cgImage);
      if (!cgImage)
      {
        return cgImage;
      }

      v11 = cgImage;
      BytePtr = CFDataGetBytePtr(cgImage);
      if (!BytePtr)
      {
        goto LABEL_60;
      }

      v28 = BytePtr;
      v29 = (v25 >> 2) - Width;
      if (self->_useAlphaOnly)
      {
        if (AlphaInfo == kCGImageAlphaPremultipliedLast || AlphaInfo == kCGImageAlphaLast)
        {
          self->_data = v11;
          self->_mask.width = Width;
          self->_mask.height = Height;
          self->_mask.padding = v29;
          LOBYTE(cgImage) = 1;
          self->_mask.usesUchar4LastComponent = 1;
LABEL_71:
          self[1].super.isa = v28;
          return cgImage;
        }

LABEL_60:
        CFRelease(v11);
        goto LABEL_61;
      }

      v44 = (Height * Width);
      v45 = malloc_type_malloc(v44, 0x100004077774924uLL);
      if (AlphaInfo == kCGImageAlphaPremultipliedLast || AlphaInfo == kCGImageAlphaNoneSkipLast)
      {
        if (v44 >= 1)
        {
          for (i = 0; i != v44; ++i)
          {
            v46.i32[0] = *(v28 + i + i / Width * v29);
            v53 = vmovl_u8(v46).u64[0];
            v54 = vmovl_u16(v53);
            *v54.f32 = vcvt_f32_u32(vand_s8(*v54.f32, 0xFF000000FFLL));
            v54.f32[2] = v53.u16[2];
            v45[i] = ISSegmentationMathUtils_luma(v54);
          }
        }
      }

      else
      {
        if (AlphaInfo != kCGImageAlphaLast)
        {
          goto LABEL_60;
        }

        if (v44 >= 1)
        {
          for (j = 0; j != v44; ++j)
          {
            v46.i32[0] = *(v28 + j + j / Width * v29);
            v48 = vmovl_u8(v46).u64[0];
            v49 = vmovl_u16(v48);
            *v49.f32 = vcvt_f32_u32(vand_s8(*v49.f32, 0xFF000000FFLL));
            v49.f32[2] = v48.u16[2];
            v45[j] = (ISSegmentationMathUtils_luma(v49) * (v48.u16[3] / 255.0));
          }
        }
      }

      CFRelease(v11);
      self->_ucharMask = v45;
      self->_mask.width = Width;
      self->_mask.height = Height;
      self->_mask.padding = 0;
      self->_mask.usesUchar4LastComponent = 0;
      LOBYTE(cgImage) = 1;
      self[1].super.isa = v45;
      return cgImage;
    }

    v30 = CGImageGetBitsPerPixel(self->_cgImage);
    v31 = CGImageGetBitsPerComponent(self->_cgImage);
    LOBYTE(cgImage) = 0;
    if (v31 != 8)
    {
      return cgImage;
    }

    if (v30 != 16)
    {
      return cgImage;
    }

    v32 = CGImageGetWidth(self->_cgImage);
    v33 = CGImageGetHeight(self->_cgImage);
    v34 = CGImageGetBytesPerRow(self->_cgImage);
    v35 = CGImageGetAlphaInfo(self->_cgImage);
    LOBYTE(cgImage) = 0;
    if (v35 > kCGImageAlphaNoneSkipLast)
    {
      return cgImage;
    }

    if (((1 << v35) & 0x2A) == 0)
    {
      return cgImage;
    }

    cgImage = CGImageGetDataProvider(self->_cgImage);
    if (!cgImage)
    {
      return cgImage;
    }

    cgImage = CGDataProviderCopyData(cgImage);
    if (!cgImage)
    {
      return cgImage;
    }

    v11 = cgImage;
    v36 = CFDataGetBytePtr(cgImage);
    if (!v36)
    {
      goto LABEL_60;
    }

    v37 = v36;
    v38 = (v33 * v32);
    v39 = v34 / 2 - v32;
    v40 = malloc_type_malloc(v38, 0x100004077774924uLL);
    v28 = v40;
    if (self->_useAlphaOnly)
    {
      if (v35 == kCGImageAlphaPremultipliedLast || v35 == kCGImageAlphaLast)
      {
        if (v38 >= 1)
        {
          for (k = 0; k != v38; ++k)
          {
            *(v40 + k) = v37[2 * k + 1 + 2 * k / v32 * v39];
          }
        }

LABEL_70:
        CFRelease(v11);
        self->_ucharMask = v28;
        self->_mask.width = v32;
        self->_mask.height = v33;
        self->_mask.padding = 0;
        self->_mask.usesUchar4LastComponent = 0;
        LOBYTE(cgImage) = 1;
        goto LABEL_71;
      }
    }

    else
    {
      if (v35 == kCGImageAlphaPremultipliedLast || v35 == kCGImageAlphaNoneSkipLast)
      {
        if (v38 >= 1)
        {
          for (m = 0; m != v38; ++m)
          {
            *(v40 + m) = v37[2 * m + 2 * m / v32 * v39];
          }
        }

        goto LABEL_70;
      }

      if (v35 == kCGImageAlphaLast)
      {
        if (v38 >= 1)
        {
          for (n = 0; n != v38; ++n)
          {
            v51 = &v37[2 * n + 2 * n / v32 * v39];
            LOBYTE(v41) = *v51;
            LOBYTE(v42) = v51[1];
            v42 = LODWORD(v42);
            v41 = (LODWORD(v41) * v42) / 255.0;
            *(v40 + n) = v41;
          }
        }

        goto LABEL_70;
      }
    }

    free(v40);
    goto LABEL_60;
  }

  v6 = CGImageGetBitsPerPixel(v5);
  v7 = CGImageGetBitsPerComponent(self->_cgImage);
  LOBYTE(cgImage) = 0;
  if (v7 != 8 || v6 != 8)
  {
    return cgImage;
  }

  v8 = CGImageGetWidth(self->_cgImage);
  v9 = CGImageGetHeight(self->_cgImage);
  v10 = CGImageGetBytesPerRow(self->_cgImage);
  if (CGImageGetAlphaInfo(self->_cgImage))
  {
LABEL_61:
    LOBYTE(cgImage) = 0;
    return cgImage;
  }

  cgImage = CGImageGetDataProvider(self->_cgImage);
  if (!cgImage)
  {
    return cgImage;
  }

  cgImage = CGDataProviderCopyData(cgImage);
  if (!cgImage)
  {
    return cgImage;
  }

  v11 = cgImage;
  v12 = CFDataGetBytePtr(cgImage);
  if (!v12)
  {
    goto LABEL_60;
  }

  v13 = v12;
  v14 = (v9 * v8);
  v15 = malloc_type_malloc(v14, 0x100004077774924uLL);
  v16 = v15;
  if (v14 >= 1)
  {
    for (ii = 0; ii != v14; ++ii)
    {
      v15[ii] = ~v13[ii + ii / v8 * (v10 - v8)];
    }
  }

  CFRelease(v11);
  self->_ucharMask = v16;
  self->_mask.width = v8;
  self->_mask.height = v9;
  self->_mask.padding = 0;
  self->_mask.usesUchar4LastComponent = 0;
  LOBYTE(cgImage) = 1;
  self[1].super.isa = v16;
  return cgImage;
}

- (BOOL)classifySpecularWithDebug:(ISSpecularClassification *)self
{
  if ([(ISSpecularClassification *)self _prepareMaskIfNeeded])
  {
    width = self->_mask.width;
    height = self->_mask.height;
    p_mask = &self->_mask;
    v6 = width;
    v7 = malloc_type_malloc(height * width, 0x100004077774924uLL);
    v100 = height;
    v101 = v7;
    if (self->_mask.usesUchar4LastComponent)
    {
      ISAccelerateIconClassifySpecularWithDebug(self[1].super.isa, width, height, 127, v7);
    }

    else
    {
      if (height < 1)
      {
LABEL_87:
        v84 = 0;
        v44 = 0;
        if (width >= height)
        {
          v45 = height;
        }

        else
        {
          v45 = width;
        }

        v46 = v45 / 18;
        v47 = (width / 8);
        v48 = width - 1;
        v49 = (width - 1);
        v91 = height - 1;
        v82 = (height - 1);
        v83 = (height / 8);
        v50 = vmulq_n_f64(xmmword_1A78250A0, (v45 / 18));
        v51 = v45 / -18;
        v52 = 0uLL;
        v53 = 0.0;
        v54 = 0.0;
        v93 = width - 1;
        v95 = v45 / 18;
        v89 = v50;
        v88 = v45 / -18;
        do
        {
          v55 = fmin(fmax((v54 + 0.5) * v83, 0.0), v82);
          v85 = v6 * v55;
          v86 = 0;
          v56 = v51 + v55;
          v57 = 0.0;
          v99 = v55;
          v97 = v51 + v55;
          do
          {
            v58 = 0;
            v59 = fmin(fmax((v57 + 0.5) * v47, 0.0), v49);
            v60 = v85 + v59;
            v103 = v85 + v59;
            v105 = v59;
            do
            {
              if ((v59 & 0x80000000) == 0)
              {
                v61 = dword_1A78252F0[v58];
                v62 = dword_1A7825310[v58];
                v63 = v56;
                v64 = v60;
                v65 = v55;
                v66 = v59;
                while (v66 < v6 && (v65 & 0x80000000) == 0 && v65 < height)
                {
                  if (v7[v64])
                  {
                    v67 = (v51 + v66) & ~((v51 + v66) >> 31);
                    LODWORD(v68) = v46 + v66;
                    if (v46 + v66 >= v48)
                    {
                      v68 = v48;
                    }

                    else
                    {
                      v68 = v68;
                    }

                    v116 = v68;
                    if (v67 <= v68)
                    {
                      v107 = v58;
                      v110 = v52;
                      v112 = v44;
                      v71 = 0;
                      v72 = 0;
                      v73 = 0;
                      v74 = v51 + v65;
                      v75 = v46 + v65;
                      if (v75 >= v91)
                      {
                        v75 = v91;
                      }

                      v76 = v74 & ~(v74 >> 31);
                      v77 = v75;
                      v114 = &v7[v6 * (v63 & ~(v63 >> 31))];
                      do
                      {
                        if (v76 <= v77)
                        {
                          v78 = v114;
                          v79 = v76;
                          do
                          {
                            v117 = *p_mask;
                            v118 = *&p_mask[1].width;
                            ++v73;
                            if (ISSegmentationMask_readMaskValue_xy(&v117, v67, v79) > 0x7E)
                            {
                              ++v72;
                            }

                            v71 += v78[v67] & 1;
                            v78 += v6;
                            v25 = v79++ < v77;
                          }

                          while (v25);
                        }
                      }

                      while (v67++ < v116);
                      v69 = v71;
                      v70 = v72 / v73;
                      LODWORD(height) = v100;
                      v7 = v101;
                      v44 = v112;
                      v48 = v93;
                      v46 = v95;
                      v52 = v110;
                      v50 = v89;
                      v51 = v88;
                      v55 = v99;
                      v56 = v97;
                      v58 = v107;
                      v60 = v103;
                      v59 = v105;
                    }

                    else
                    {
                      v69 = 0.0;
                      v70 = NAN;
                    }

                    ++v44;
                    *&v52 = vsub_s32(*&v52, vmovn_s64(vcgtq_f64(vdupq_lane_s64(*&v69, 0), v50)));
                    v53 = v53 + v70;
                    break;
                  }

                  v65 += v62;
                  v64 += v61 + v6 * v62;
                  v63 += v62;
                  v66 += v61;
                  if (v66 < 0)
                  {
                    break;
                  }
                }
              }

              ++v58;
            }

            while (v58 != 8);
            v57 = v57 + 1.0;
            ++v86;
          }

          while (v86 != 8);
          v54 = v54 + 1.0;
          ++v84;
        }

        while (v84 != 8);
        if (v44)
        {
          v8 = 0;
          if (SDWORD1(v52) <= 0 && v44 * 0.055 > v52)
          {
            v8 = (v53 / v44) >= 0.38;
          }

          goto LABEL_126;
        }

LABEL_125:
        v8 = 0;
LABEL_126:
        free(v7);
        return v8;
      }

      v113 = 0;
      v98 = width - 1;
      v87 = height - 1;
      v94 = width;
      do
      {
        if (width <= 0)
        {
          v38 = v113 + 1;
        }

        else
        {
          v9 = 0;
          v10 = 0;
          v96 = v113 * width;
          if (v113 <= 1)
          {
            v11 = 1;
          }

          else
          {
            v11 = v113;
          }

          v90 = v11 - 1;
          v12 = v113 + 1;
          if (v113 + 1 >= v87)
          {
            v12 = v87;
          }

          v111 = v12;
          if (v113 <= 2)
          {
            v13 = 2;
          }

          else
          {
            v13 = v113;
          }

          v102 = v13 - 2;
          v14 = v113 + 2;
          if (v113 + 2 >= v87)
          {
            v14 = v87;
          }

          v115 = v14;
          do
          {
            if (v10 <= 2)
            {
              v15 = 2;
            }

            else
            {
              v15 = v10;
            }

            v117 = *p_mask;
            v118 = *&p_mask[1].width;
            v104 = v10 + v96;
            v106 = v10;
            if (ISSegmentationMask_readMaskValue_i(&v117, v10 + v96) > 0x7E)
            {
              v20 = 0;
            }

            else
            {
              v108 = v15;
              if (v10 <= 1)
              {
                v16 = 1;
              }

              else
              {
                v16 = v10;
              }

              if (v10 + 1 < v98)
              {
                v17 = v10 + 1;
              }

              else
              {
                v17 = v6 - 1;
              }

              v18 = v90;
              if (v90 <= v111)
              {
                v19 = 0;
                v21 = v16 - 1;
                do
                {
                  if (v21 <= v17)
                  {
                    if (v18 - v113 >= 0)
                    {
                      v22 = v18 - v113;
                    }

                    else
                    {
                      v22 = v113 - v18;
                    }

                    v23 = v21;
                    do
                    {
                      v24 = v9 + v23;
                      if (v9 + v23 < 0)
                      {
                        v24 = -v24;
                      }

                      if (v24 + v22 == 1)
                      {
                        v117 = *p_mask;
                        v118 = *&p_mask[1].width;
                        v19 |= ISSegmentationMask_readMaskValue_xy(&v117, v23, v18) > 0x7E;
                      }

                      v25 = v23++ < v17;
                    }

                    while (v25);
                  }

                  v25 = v18++ < v111;
                }

                while (v25);
              }

              else
              {
                v19 = 0;
              }

              v20 = v19 & 1;
              v7 = v101;
              width = v94;
              v10 = v106;
              v15 = v108;
            }

            v26 = 2;
            if (v10 <= 2)
            {
              v27 = 2;
            }

            else
            {
              v27 = v10;
            }

            if (v10 + 2 >= v98)
            {
              v28 = v6 - 1;
            }

            else
            {
              v28 = v10 + 2;
            }

            if (v102 <= v115)
            {
              v92 = v20;
              v29 = 0;
              v30 = 0;
              v109 = v15 - 3;
              v31 = v27 - 2;
              v32 = v102;
              do
              {
                if (v31 <= v28)
                {
                  if (v32 - v113 >= 0)
                  {
                    v33 = v32 - v113;
                  }

                  else
                  {
                    v33 = v113 - v32;
                  }

                  v34 = v109;
                  do
                  {
                    v35 = ++v34 + v9;
                    if (v34 + v9 < 0)
                    {
                      v35 = -v35;
                    }

                    if ((v35 + v33) <= 2)
                    {
                      v117 = *p_mask;
                      v118 = *&p_mask[1].width;
                      MaskValue_xy = ISSegmentationMask_readMaskValue_xy(&v117, v34, v32);
                      if (MaskValue_xy < 0x7F)
                      {
                        ++v30;
                      }

                      if (MaskValue_xy > 0x7E)
                      {
                        ++v29;
                      }
                    }
                  }

                  while (v34 < v28);
                }

                v25 = v32++ < v115;
              }

              while (v25);
              if (v30)
              {
                v37 = v29 == 0;
              }

              else
              {
                v37 = 1;
              }

              if (v37)
              {
                v26 = 2;
              }

              else
              {
                v26 = 0;
              }

              height = v100;
              v7 = v101;
              width = v94;
              v10 = v106;
              v20 = v92;
            }

            v7[v104] = v26 | v20;
            ++v10;
            --v9;
          }

          while (v10 != width);
          v38 = v113 + 1;
        }

        v113 = v38;
      }

      while (v38 != height);
    }

    if (height >= 1)
    {
      v39 = 0;
      v40 = 0;
      v41 = 0;
      do
      {
        v42 = width;
        v43 = v39;
        if (width >= 1)
        {
          do
          {
            if ((v101[v43] & 2) != 0)
            {
              v117 = *p_mask;
              v118 = *&p_mask[1].width;
              if (ISSegmentationMask_readMaskValue_i(&v117, v43) - 64 < 0x3F)
              {
                ++v41;
              }
            }

            ++v43;
            --v42;
          }

          while (v42);
        }

        ++v40;
        v39 += width;
      }

      while (v40 != height);
      v7 = v101;
      if (v41 > 4)
      {
        goto LABEL_125;
      }
    }

    goto LABEL_87;
  }

  return 0;
}

- (CGImage)createSpecularImage
{
  if (![(ISSpecularClassification *)self _prepareMaskIfNeeded])
  {
    return 0;
  }

  mask = self->_mask;
  isa = self[1].super.isa;
  return ISCreateAlphaPremultipliedCGImageSegmentationMask(&mask.width);
}

@end