@interface PixelMemory
- (PixelMemory)initWithCvPixelBuffer:(__CVBuffer *)a3 skipClamp:(BOOL)a4 readOnly:(BOOL)a5;
- (__n64)readYCbCrValueAtX:(int)a3 Y:(int)a4;
- (double)readFourChannelAtX:(unsigned int)a3 Y:(unsigned int)a4;
- (float)readBlurredYValueAtX:(int)a3 Y:(int)a4;
- (float)readFloatAtX:(int)a3 Y:(int)a4;
- (id)readYCbCrValueAtArrayX:(id)a3 ArrayY:(id)a4;
- (int16x4_t)SampleFourChannelAtX:(float)a3 Y:;
- (unsigned)readOneChannelAtX:(int)a3 Y:(int)a4 Channel:(char)a5;
- (unsigned)sampleOneChannelAtX:(float)a3 Y:(float)a4 Channel:(char)a5;
- (void)dealloc;
- (void)writeFloat:(float)a3 X:(int)a4 Y:(int)a5;
- (void)writeValue:(int)a3 X:(int)a4 Y:;
- (void)writeValue:(unsigned __int8)a3 X:(int)a4 Y:(int)a5 Channel:(char)a6;
@end

@implementation PixelMemory

- (PixelMemory)initWithCvPixelBuffer:(__CVBuffer *)a3 skipClamp:(BOOL)a4 readOnly:(BOOL)a5
{
  v5 = a5;
  v24.receiver = self;
  v24.super_class = PixelMemory;
  v8 = [(PixelMemory *)&v24 init];
  v9 = v8;
  if (!v8)
  {
    [PixelMemory initWithCvPixelBuffer:? skipClamp:? readOnly:?];
    v21 = v25;
    goto LABEL_30;
  }

  v8->_buf = a3;
  v8->_width = CVPixelBufferGetWidth(a3);
  v9->_height = CVPixelBufferGetHeight(a3);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v9->_format = PixelFormatType;
  if (PixelFormatType == 2019963440 || PixelFormatType == 2016686640)
  {
    v9->_stride = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 1uLL);
    v12 = 24;
  }

  else
  {
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(a3);
    v12 = 20;
  }

  *(&v9->super.isa + v12) = BytesPerRowOfPlane;
  CVPixelBufferRetain(v9->_buf);
  format = v9->_format;
  v14 = 1;
  if (format <= 1278226533)
  {
    if (format != 1111970369 && format != 1278226481)
    {
      if (format != 1278226488)
      {
        goto LABEL_31;
      }

LABEL_22:
      v9->_channels = v14;
      if (format == 1278226488)
      {
        v17 = 1;
      }

      else
      {
        v17 = 4;
      }

      v9->_bytePerPixel = v17;
      v9->_readBufferOnly = v5;
      CVPixelBufferLockBaseAddress(a3, v5);
      v18 = v9->_format;
      if (v18 == 2019963440 || v18 == 2016686640)
      {
        v9->_pMemory = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 1uLL);
        v20 = 56;
      }

      else
      {
        BaseAddressOfPlane = CVPixelBufferGetBaseAddress(a3);
        v20 = 48;
      }

      *(&v9->super.isa + v20) = BaseAddressOfPlane;
      v9->_skipClamp = a4;
      v21 = v9;
      goto LABEL_30;
    }

LABEL_19:
    if (format == 1278226481)
    {
      v14 = 1;
    }

    else
    {
      v14 = 4;
    }

    goto LABEL_22;
  }

  if (format == 1278226534)
  {
    goto LABEL_22;
  }

  if (format == 2016686640 || format == 2019963440)
  {
    goto LABEL_19;
  }

LABEL_31:
  if ((global_logLevel & 0x10) != 0)
  {
    v23 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      [PixelMemory initWithCvPixelBuffer:v23 skipClamp:? readOnly:?];
    }
  }

  v21 = 0;
LABEL_30:

  return v21;
}

- (void)dealloc
{
  CVPixelBufferUnlockBaseAddress(self->_buf, self->_readBufferOnly);
  CVPixelBufferRelease(self->_buf);
  v3.receiver = self;
  v3.super_class = PixelMemory;
  [(PixelMemory *)&v3 dealloc];
}

- (float)readFloatAtX:(int)a3 Y:(int)a4
{
  v4 = __PAIR64__(a4, a3);
  if (!self->_skipClamp)
  {
    v4 = vmax_s32(vmin_s32(__PAIR64__(a4, a3), vadd_s32(*&self->_width, -1)), 0);
  }

  return *&self->_pMemory[v4 * self->_bytePerPixel + HIDWORD(v4) * self->_stride];
}

- (unsigned)readOneChannelAtX:(int)a3 Y:(int)a4 Channel:(char)a5
{
  v5 = __PAIR64__(a4, a3);
  if (!self->_skipClamp)
  {
    v5 = vmax_s32(vmin_s32(__PAIR64__(a4, a3), vadd_s32(*&self->_width, -1)), 0);
    v6 = self->_channels - 1;
    if (v6 >= a5)
    {
      v6 = a5;
    }

    *&a5 = v6 & ~(v6 >> 31);
  }

  return self->_pMemory[v5 * self->_bytePerPixel + HIDWORD(v5) * self->_stride + a5];
}

- (double)readFourChannelAtX:(unsigned int)a3 Y:(unsigned int)a4
{
  v4 = __PAIR64__(a4, a3);
  if ((*(a1 + 10) & 1) == 0)
  {
    v4 = vmax_s32(vmin_s32(__PAIR64__(a4, a3), vadd_s32(*(a1 + 12), -1)), 0);
  }

  v4.i32[0] = *(*(a1 + 48) + v4.i32[0] * *(a1 + 32) + v4.i32[1] * *(a1 + 20));
  *&result = vmovl_u8(v4).u64[0];
  return result;
}

- (void)writeValue:(unsigned __int8)a3 X:(int)a4 Y:(int)a5 Channel:(char)a6
{
  v6 = __PAIR64__(a5, a4);
  if (!self->_skipClamp)
  {
    v6 = vmax_s32(vmin_s32(__PAIR64__(a5, a4), vadd_s32(*&self->_width, -1)), 0);
    v7 = self->_channels - 1;
    if (v7 >= a6)
    {
      v7 = a6;
    }

    *&a6 = v7 & ~(v7 >> 31);
  }

  self->_pMemory[v6 * self->_bytePerPixel + HIDWORD(v6) * self->_stride + a6] = a3;
}

- (void)writeValue:(int)a3 X:(int)a4 Y:
{
  v5 = __PAIR64__(v4, a4);
  if (!self->_skipClamp)
  {
    v5 = vmax_s32(vmin_s32(__PAIR64__(v4, a4), vadd_s32(*&self->_width, -1)), 0);
  }

  *&self->_pMemory[v5 * self->_bytePerPixel + HIDWORD(v5) * self->_stride] = a3;
}

- (void)writeFloat:(float)a3 X:(int)a4 Y:(int)a5
{
  v5 = __PAIR64__(a5, a4);
  if (!self->_skipClamp)
  {
    v5 = vmax_s32(vmin_s32(__PAIR64__(a5, a4), vadd_s32(*&self->_width, -1)), 0);
  }

  *&self->_pMemory[v5 * self->_bytePerPixel + HIDWORD(v5) * self->_stride] = a3;
}

- (unsigned)sampleOneChannelAtX:(float)a3 Y:(float)a4 Channel:(char)a5
{
  v7 = a5;
  v11 = floorf(a3);
  LODWORD(v5) = vcvtms_s32_f32(a3);
  v12 = floorf(a4);
  LODWORD(v6) = vcvtms_s32_f32(a4);
  v13 = [(PixelMemory *)self readOneChannelAtX:v5 Y:v6 Channel:a5];
  v14 = [(PixelMemory *)self readOneChannelAtX:(v5 + 1) Y:v6 Channel:v7];
  v15 = [(PixelMemory *)self readOneChannelAtX:v5 Y:(v6 + 1) Channel:v7];
  v16 = [(PixelMemory *)self readOneChannelAtX:(v5 + 1) Y:(v6 + 1) Channel:v7];
  v17 = a3 - v11;
  v18 = fminf(((a4 - v12) * ((v17 * v16) + ((1.0 - v17) * v15))) + ((1.0 - (a4 - v12)) * ((v17 * v14) + ((1.0 - v17) * v13))), 255.0);
  if (v18 < 0.0)
  {
    return 0.0;
  }

  return v18;
}

- (int16x4_t)SampleFourChannelAtX:(float)a3 Y:
{
  v8 = floorf(a2);
  LODWORD(v3) = vcvtms_s32_f32(a2);
  v9 = floorf(a3);
  LODWORD(v4) = vcvtms_s32_f32(a3);
  [a1 readFourChannelAtX:v3 Y:v4];
  v11 = v10;
  [a1 readFourChannelAtX:(v3 + 1) Y:v4];
  v13 = v12;
  [a1 readFourChannelAtX:v3 Y:(v4 + 1)];
  v15 = v14;
  [a1 readFourChannelAtX:(v3 + 1) Y:(v4 + 1)];
  v16 = vdupq_n_s32(0x4B400000u);
  v17 = vdupq_n_s32(0xCB400000);
  v18 = vaddq_f32(vorrq_s8(vmovl_u16((v11 & 0xFF00FF00FF00FFLL)), v16), v17);
  v19 = vaddq_f32(vorrq_s8(vmovl_u16((v13 & 0xFF00FF00FF00FFLL)), v16), v17);
  v20 = vaddq_f32(vorrq_s8(vmovl_u16((v15 & 0xFF00FF00FF00FFLL)), v16), v17);
  v22 = vaddq_f32(vorrq_s8(vmovl_u16((v21 & 0xFF00FF00FF00FFLL)), v16), v17);
  *v16.i32 = a2 - v8;
  return vmovn_s32(vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmlaq_n_f32(vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(v22, *v16.i32), v20, 1.0 - *v16.i32), a3 - v9), vmlaq_n_f32(vmulq_n_f32(v19, *v16.i32), v18, 1.0 - *v16.i32), 1.0 - (a3 - v9)), 0), vdupq_n_s32(0x437F0000u))));
}

- (__n64)readYCbCrValueAtX:(int)a3 Y:(int)a4
{
  result.n64_f32[0] = (*(*(a1 + 48) + *(a1 + 20) * a4 + 2 * a3) >> 6);
  result.n64_f32[1] = (*(*(a1 + 56) + *(a1 + 24) * (a4 / 2) + 4 * (a3 / 2)) >> 6);
  return result;
}

- (id)readYCbCrValueAtArrayX:(id)a3 ArrayY:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  if ([v6 count])
  {
    v9 = 0;
    do
    {
      v10 = [v6 objectAtIndexedSubscript:v9];
      v11 = [v10 intValue];

      v12 = [v7 objectAtIndexedSubscript:v9];
      v13 = [v12 intValue];

      v14 = &self->_pMemoryPlane2[4 * (v11 / 2) + self->_stridePlane2 * (v13 / 2)];
      *&v15 = (*&self->_pMemory[2 * v11 + self->_stride * v13] >> 6);
      *(&v15 + 1) = (*v14 >> 6);
      *(&v15 + 2) = (*(v14 + 1) >> 6);
      v18 = v15;
      v16 = [MEMORY[0x277CBEA90] dataWithBytes:&v18 length:16];
      [v8 addObject:v16];

      ++v9;
    }

    while ([v6 count] > v9);
  }

  return v8;
}

- (float)readBlurredYValueAtX:(int)a3 Y:(int)a4
{
  if (a3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = a3;
  }

  LODWORD(v5) = self->_width - 1;
  if (v5 >= a3 + 2)
  {
    v5 = (a3 + 2);
  }

  else
  {
    v5 = v5;
  }

  result = 0.0;
  if (v4 - 2 <= v5)
  {
    if (a4 <= 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = a4;
    }

    v8 = v7 - 2;
    v9 = a4 + 2;
    if (self->_height - 1 < a4 + 2)
    {
      v9 = self->_height - 1;
    }

    v10 = v7 - 2;
    v11 = v4 - 2;
    v12 = v7 - 3;
    v13 = 2 * v4 - 4;
    v14 = 0.0;
    v15 = 0.0;
    do
    {
      if (v8 <= v9)
      {
        stride = self->_stride;
        v17 = &self->_pMemory[v13 + v10 * stride];
        v18 = v12;
        do
        {
          v14 = v14 + (*v17 >> 6);
          v15 = v15 + 1.0;
          ++v18;
          v17 += stride;
        }

        while (v18 < v9);
      }

      v13 += 2;
    }

    while (v11++ < v5);
    result = 0.0;
    if (v15 > 4.0)
    {
      return v14 / (v15 * 1023.0);
    }
  }

  return result;
}

- (void)initWithCvPixelBuffer:(void *)a1 skipClamp:readOnly:.cold.2(void *a1)
{
  if ((global_logLevel & 0x10) != 0)
  {
    v2 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&dword_24874B000, v2, OS_LOG_TYPE_ERROR, "Unable to initialize Pixel memory class", v3, 2u);
    }
  }

  *a1 = 0;
}

@end