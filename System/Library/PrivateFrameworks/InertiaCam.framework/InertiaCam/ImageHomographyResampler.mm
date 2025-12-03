@interface ImageHomographyResampler
- (CGImage)ResampleCGImage:(CGImage *)image clipToRect:(CGRect)rect outputSize:(CGSize)size;
- (ImageHomographyResampler)init;
- (__CVBuffer)ResampleCVPixels:(__CVBuffer *)pixels clipToRect:(CGRect)rect outputSize:(CGSize)size;
- (signed)ResampleCVPixels:(__CVBuffer *)pixels clipToRect:(CGRect)rect outputSize:(CGSize)size toPixelBuffer:(__CVBuffer *)buffer;
- (void)ClearOutOfBoundsPixels:(WorkingPixmapRecord *)pixels;
- (void)EraseCVPixelBuffer:(__CVBuffer *)buffer;
- (void)setHomographyMatrix:(double *)matrix;
@end

@implementation ImageHomographyResampler

- (ImageHomographyResampler)init
{
  self->homographyMatrix[0] = 1.0;
  self->homographyMatrix[1] = 0.0;
  self->homographyMatrix[2] = 0.0;
  self->homographyMatrix[3] = 0.0;
  self->homographyMatrix[4] = 1.0;
  self->homographyMatrix[5] = 0.0;
  self->homographyMatrix[6] = 0.0;
  self->homographyMatrix[7] = 0.0;
  self->homographyMatrix[8] = 1.0;
  v3.receiver = self;
  v3.super_class = ImageHomographyResampler;
  return [(ImageHomographyResampler *)&v3 init];
}

- (void)setHomographyMatrix:(double *)matrix
{
  for (i = 0; i != 9; ++i)
  {
    self->homographyMatrix[i] = matrix[i];
  }
}

- (CGImage)ResampleCGImage:(CGImage *)image clipToRect:(CGRect)rect outputSize:(CGSize)size
{
  CGImageGetBitmapInfo(image);
  CGImageGetBitsPerPixel(image);
  CGImageGetBytesPerRow(image);
  DataProvider = CGImageGetDataProvider(image);
  cf = CGDataProviderCopyData(DataProvider);
  CFDataGetBytePtr(cf);
  CGImageGetWidth(image);
  CGImageGetHeight(image);
  operator new();
}

- (__CVBuffer)ResampleCVPixels:(__CVBuffer *)pixels clipToRect:(CGRect)rect outputSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = rect.size.height;
  v8 = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixels);
  pixelBufferOut = 0;
  v14 = CVPixelBufferCreate(0, width, height, PixelFormatType, 0, &pixelBufferOut);
  v15 = pixelBufferOut;
  if (v14)
  {
    v16 = 1;
  }

  else
  {
    v16 = pixelBufferOut == 0;
  }

  if (!v16)
  {
    [(ImageHomographyResampler *)self ResampleCVPixels:pixels clipToRect:x outputSize:y toPixelBuffer:v8, v7, width, height];
    return pixelBufferOut;
  }

  return v15;
}

- (void)EraseCVPixelBuffer:(__CVBuffer *)buffer
{
  CVPixelBufferLockBaseAddress(buffer, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
  bzero(BaseAddress, BytesPerRow * Height);

  CVPixelBufferUnlockBaseAddress(buffer, 0);
}

- (void)ClearOutOfBoundsPixels:(WorkingPixmapRecord *)pixels
{
  v80 = *MEMORY[0x277D85DE8];
  v6 = self->homographyMatrix[7];
  v7 = self->homographyMatrix[8];
  v8 = self->homographyMatrix[4];
  v9 = self->homographyMatrix[5];
  v10 = self->homographyMatrix[6];
  v11 = v8 * v7 - v6 * v9;
  v13 = self->homographyMatrix[0];
  v12 = self->homographyMatrix[1];
  v15 = self->homographyMatrix[2];
  v14 = self->homographyMatrix[3];
  v16 = v6 * v15 - v12 * v7;
  v71 = v11;
  v72 = v16;
  v17 = v12 * v9 - v8 * v15;
  v73 = v17;
  v18 = v16 * v14 + v13 * v11 + v10 * v17;
  if (fabs(v18) >= 2.22044605e-16)
  {
    v71 = v11 / v18;
    v72 = v16 / v18;
    v73 = v17 / v18;
    v74 = (v10 * v9 - v14 * v7) / v18;
    v11 = (v14 * v6 - v10 * v8) / v18;
    v16 = -(v10 * v15);
    v75 = (v13 * v7 - v10 * v15) / v18;
    v76 = (v14 * v15 - v13 * v9) / v18;
    v77 = v11;
    v78 = (v10 * v12 - v13 * v6) / v18;
    v79 = (v13 * v8 - v14 * v12) / v18;
  }

  for (i = 0; i != 9; ++i)
  {
    *&v20 = *(&v71 + i);
    v67.i32[i] = v20;
  }

  var2 = pixels->var2;
  if (var2 >= 1)
  {
    v22 = 0;
    var3 = pixels->var3;
    var1 = pixels->var1;
    *&v11 = var1;
    *&v16 = var2;
    v65 = *&v68[8];
    v66 = *&v67.i32[1];
    v25 = *&v69[8];
    v26 = &v70;
    v27 = pixels->var2 & 0x7FFFFFFF;
    v28 = vdupq_n_s64((var1 & 0x7FFFFFFF) - 1);
    v29 = vdupq_lane_s32(v67, 0);
    v30 = vdupq_lane_s32(*v68, 0);
    v31 = vdupq_lane_s32(*&v68[4], 0);
    v32 = vdupq_lane_s32(*v69, 0);
    v33 = vdupq_lane_s32(*&v69[4], 0);
    v34 = vld1q_dup_f32(v26);
    v35 = vdupq_lane_s32(*&v11, 0);
    v36 = vdupq_lane_s32(*&v16, 0);
    v37 = pixels->var0 + 1;
    __asm { FMOV            V23.4S, #1.0 }

    v43 = vdupq_n_s64(0x3F747AE147AE147BuLL);
    v44 = vdupq_n_s64(4uLL);
    v45.i64[0] = 0x400000004;
    v45.i64[1] = 0x400000004;
    do
    {
      if (var1 >= 1)
      {
        v5.f32[0] = v25 * v22;
        v4.f32[0] = v65 * v22;
        v3.f32[0] = v66 * v22;
        v3 = vdupq_lane_s32(*v3.f32, 0);
        v4 = vdupq_lane_s32(*v4.f32, 0);
        v46 = v37;
        v5 = vdupq_lane_s32(*v5.f32, 0);
        v47 = (var1 + 3) & 0xFFFFFFFC;
        v48 = xmmword_254B8AAC0;
        v49 = xmmword_254B8B0E0;
        v50 = xmmword_254B8B930;
        do
        {
          v51 = vcgeq_u64(v28, v48);
          v52 = vcgeq_u64(v28, v49);
          v53 = vuzp1q_s32(v51, v52);
          v54 = vcvtq_f32_u32(v50);
          v55 = vaddq_f32(v30, vmlaq_f32(v3, v54, v29));
          v56 = vaddq_f32(v32, vmlaq_f32(v4, v54, v31));
          v57 = vaddq_f32(v34, vmlaq_f32(v5, v54, v33));
          v58 = vabdq_f32(_Q23, v57);
          v59 = vdivq_f32(_Q23, v57);
          v60 = vuzp1q_s32(vbicq_s8(v51, vcgtq_f64(vcvtq_f64_f32(*v58.f32), v43)), vbicq_s8(v52, vcgtq_f64(vcvt_hight_f64_f32(v58), v43)));
          v61 = vbslq_s8(v60, v56, vmulq_f32(v56, v59));
          v62 = vbslq_s8(v60, v55, vmulq_f32(v55, v59));
          v63 = vcltzq_f32(v62);
          v64 = vmovn_s32(vorrq_s8(vandq_s8(vbicq_s8(v53, v63), vorrq_s8(vcgeq_f32(v62, v35), vorrq_s8(vcltzq_f32(v61), vcgeq_f32(v61, v36)))), vandq_s8(v53, v63)));
          if (v64.i8[0])
          {
            *(v46 - 1) = 0;
          }

          if (v64.i8[2])
          {
            *v46 = 0;
          }

          if (v64.i8[4])
          {
            v46[1] = 0;
          }

          if (v64.i8[6])
          {
            v46[2] = 0;
          }

          v49 = vaddq_s64(v49, v44);
          v48 = vaddq_s64(v48, v44);
          v50 = vaddq_s32(v50, v45);
          v46 += 4;
          v47 -= 4;
        }

        while (v47);
      }

      ++v22;
      v37 += var3;
    }

    while (v22 != v27);
  }
}

- (signed)ResampleCVPixels:(__CVBuffer *)pixels clipToRect:(CGRect)rect outputSize:(CGSize)size toPixelBuffer:(__CVBuffer *)buffer
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v81 = *MEMORY[0x277D85DE8];
  [(ImageHomographyResampler *)self EraseCVPixelBuffer:buffer, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, size.width, size.height];
  CVPixelBufferLockBaseAddress(pixels, 0);
  CVPixelBufferLockBaseAddress(buffer, 0);
  CleanRect = CVImageBufferGetCleanRect(pixels);
  v13 = CleanRect.origin.x;
  v14 = CleanRect.origin.y;
  v15 = CleanRect.size.width;
  v16 = CleanRect.size.height;
  BaseAddress = CVPixelBufferGetBaseAddress(pixels);
  v18 = CVPixelBufferGetHeight(pixels);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixels);
  v20 = BytesPerRow;
  v21 = self->homographyMatrix[7];
  v22 = self->homographyMatrix[8];
  v23 = self->homographyMatrix[4];
  v24 = self->homographyMatrix[5];
  v25 = self->homographyMatrix[6];
  v26 = v23 * v22 - v21 * v24;
  v28 = self->homographyMatrix[0];
  v27 = self->homographyMatrix[1];
  v30 = self->homographyMatrix[2];
  v29 = self->homographyMatrix[3];
  v31 = v21 * v30 - v27 * v22;
  v72 = v26;
  v73 = v31;
  v32 = v27 * v24 - v23 * v30;
  v74 = v32;
  v33 = v31 * v29 + v28 * v26 + v25 * v32;
  if (fabs(v33) >= 2.22044605e-16)
  {
    v72 = v26 / v33;
    v73 = v31 / v33;
    v74 = v32 / v33;
    v75 = (v25 * v24 - v29 * v22) / v33;
    v76 = (v28 * v22 - v25 * v30) / v33;
    v77 = (v29 * v30 - v28 * v24) / v33;
    v78 = (v29 * v21 - v25 * v23) / v33;
    v79 = (v25 * v27 - v28 * v21) / v33;
    v80 = (v28 * v23 - v29 * v27) / v33;
  }

  v34 = BaseAddress + 4 * v13 + (v18 - (v14 + v16)) * BytesPerRow;
  v35 = y;
  v36 = width + x;
  v37 = height + y;
  v38 = CVPixelBufferGetBytesPerRow(buffer);
  v39 = CVPixelBufferGetBaseAddress(buffer);
  for (i = 0; i != 9; ++i)
  {
    v41 = *(&v72 + i);
    *(v65 + i) = v41;
  }

  *(&v66 + 1) = v34;
  *&v67 = v20;
  *(&v67 + 1) = 4;
  *&v68 = v15;
  *(&v68 + 1) = v16;
  *&v69 = v39;
  *(&v69 + 1) = v38;
  *&v70 = 4;
  *(&v70 + 1) = CVPixelBufferGetWidth(buffer);
  bufferCopy = buffer;
  *&v71 = CVPixelBufferGetWidth(buffer);
  *(&v71 + 1) = v35;
  group = dispatch_group_create();
  v42 = qos_class_self();
  v43 = dispatch_get_global_queue(v42, 0);
  v44 = v37 - v35;
  if (v37 < v35)
  {
    v44 = v37 - v35 + 15;
  }

  v45 = v44 >> 4;
  v46 = MEMORY[0x277D85DD0];
  v47 = 16;
  do
  {
    block[0] = v46;
    if (--v47)
    {
      v48 = v35 + v45;
    }

    else
    {
      v48 = v37;
    }

    block[1] = 3221225472;
    block[2] = sub_254B64A5C;
    block[3] = &unk_2797A9C88;
    v57 = v68;
    v58 = v69;
    v59 = v70;
    v60 = v71;
    v53 = v65[0];
    v54 = v65[1];
    v55 = v66;
    v56 = v67;
    v61 = x;
    v62 = v36;
    v63 = v35;
    v64 = v48;
    dispatch_group_async(group, v43, block);
    v35 = v48;
  }

  while (v47);
  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
  CVPixelBufferUnlockBaseAddress(pixels, 0);
  CVPixelBufferUnlockBaseAddress(bufferCopy, 0);

  return 0;
}

@end