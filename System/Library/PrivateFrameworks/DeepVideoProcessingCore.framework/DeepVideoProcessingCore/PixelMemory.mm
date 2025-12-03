@interface PixelMemory
- (PixelMemory)initWithCvPixelBuffer:(__CVBuffer *)buffer skipClamp:(BOOL)clamp readOnly:(BOOL)only;
- (__n64)readYCbCrValueAtX:(int)x Y:(int)y;
- (double)readFourChannelAtX:(unsigned int)x Y:(unsigned int)y;
- (float)readBlurredYValueAtX:(int)x Y:(int)y;
- (float)readFloatAtX:(int)x Y:(int)y;
- (id)readYCbCrValueAtArrayX:(id)x ArrayY:(id)y;
- (int16x4_t)SampleFourChannelAtX:(float)x Y:;
- (unsigned)readOneChannelAtX:(int)x Y:(int)y Channel:(char)channel;
- (unsigned)sampleOneChannelAtX:(float)x Y:(float)y Channel:(char)channel;
- (void)dealloc;
- (void)writeFloat:(float)float X:(int)x Y:(int)y;
- (void)writeValue:(int)value X:(int)x Y:;
- (void)writeValue:(unsigned __int8)value X:(int)x Y:(int)y Channel:(char)channel;
@end

@implementation PixelMemory

- (PixelMemory)initWithCvPixelBuffer:(__CVBuffer *)buffer skipClamp:(BOOL)clamp readOnly:(BOOL)only
{
  onlyCopy = only;
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

  v8->_buf = buffer;
  v8->_width = CVPixelBufferGetWidth(buffer);
  v9->_height = CVPixelBufferGetHeight(buffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  v9->_format = PixelFormatType;
  if (PixelFormatType == 2019963440 || PixelFormatType == 2016686640)
  {
    v9->_stride = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, 1uLL);
    v12 = 24;
  }

  else
  {
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(buffer);
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
      v9->_readBufferOnly = onlyCopy;
      CVPixelBufferLockBaseAddress(buffer, onlyCopy);
      v18 = v9->_format;
      if (v18 == 2019963440 || v18 == 2016686640)
      {
        v9->_pMemory = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, 1uLL);
        v20 = 56;
      }

      else
      {
        BaseAddressOfPlane = CVPixelBufferGetBaseAddress(buffer);
        v20 = 48;
      }

      *(&v9->super.isa + v20) = BaseAddressOfPlane;
      v9->_skipClamp = clamp;
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

- (float)readFloatAtX:(int)x Y:(int)y
{
  v4 = __PAIR64__(y, x);
  if (!self->_skipClamp)
  {
    v4 = vmax_s32(vmin_s32(__PAIR64__(y, x), vadd_s32(*&self->_width, -1)), 0);
  }

  return *&self->_pMemory[v4 * self->_bytePerPixel + HIDWORD(v4) * self->_stride];
}

- (unsigned)readOneChannelAtX:(int)x Y:(int)y Channel:(char)channel
{
  v5 = __PAIR64__(y, x);
  if (!self->_skipClamp)
  {
    v5 = vmax_s32(vmin_s32(__PAIR64__(y, x), vadd_s32(*&self->_width, -1)), 0);
    channelCopy = self->_channels - 1;
    if (channelCopy >= channel)
    {
      channelCopy = channel;
    }

    *&channel = channelCopy & ~(channelCopy >> 31);
  }

  return self->_pMemory[v5 * self->_bytePerPixel + HIDWORD(v5) * self->_stride + channel];
}

- (double)readFourChannelAtX:(unsigned int)x Y:(unsigned int)y
{
  v4 = __PAIR64__(y, x);
  if ((*(self + 10) & 1) == 0)
  {
    v4 = vmax_s32(vmin_s32(__PAIR64__(y, x), vadd_s32(*(self + 12), -1)), 0);
  }

  v4.i32[0] = *(*(self + 48) + v4.i32[0] * *(self + 32) + v4.i32[1] * *(self + 20));
  *&result = vmovl_u8(v4).u64[0];
  return result;
}

- (void)writeValue:(unsigned __int8)value X:(int)x Y:(int)y Channel:(char)channel
{
  v6 = __PAIR64__(y, x);
  if (!self->_skipClamp)
  {
    v6 = vmax_s32(vmin_s32(__PAIR64__(y, x), vadd_s32(*&self->_width, -1)), 0);
    channelCopy = self->_channels - 1;
    if (channelCopy >= channel)
    {
      channelCopy = channel;
    }

    *&channel = channelCopy & ~(channelCopy >> 31);
  }

  self->_pMemory[v6 * self->_bytePerPixel + HIDWORD(v6) * self->_stride + channel] = value;
}

- (void)writeValue:(int)value X:(int)x Y:
{
  v5 = __PAIR64__(v4, x);
  if (!self->_skipClamp)
  {
    v5 = vmax_s32(vmin_s32(__PAIR64__(v4, x), vadd_s32(*&self->_width, -1)), 0);
  }

  *&self->_pMemory[v5 * self->_bytePerPixel + HIDWORD(v5) * self->_stride] = value;
}

- (void)writeFloat:(float)float X:(int)x Y:(int)y
{
  v5 = __PAIR64__(y, x);
  if (!self->_skipClamp)
  {
    v5 = vmax_s32(vmin_s32(__PAIR64__(y, x), vadd_s32(*&self->_width, -1)), 0);
  }

  *&self->_pMemory[v5 * self->_bytePerPixel + HIDWORD(v5) * self->_stride] = float;
}

- (unsigned)sampleOneChannelAtX:(float)x Y:(float)y Channel:(char)channel
{
  channelCopy = channel;
  v11 = floorf(x);
  LODWORD(v5) = vcvtms_s32_f32(x);
  v12 = floorf(y);
  LODWORD(v6) = vcvtms_s32_f32(y);
  v13 = [(PixelMemory *)self readOneChannelAtX:v5 Y:v6 Channel:channel];
  v14 = [(PixelMemory *)self readOneChannelAtX:(v5 + 1) Y:v6 Channel:channelCopy];
  v15 = [(PixelMemory *)self readOneChannelAtX:v5 Y:(v6 + 1) Channel:channelCopy];
  v16 = [(PixelMemory *)self readOneChannelAtX:(v5 + 1) Y:(v6 + 1) Channel:channelCopy];
  v17 = x - v11;
  v18 = fminf(((y - v12) * ((v17 * v16) + ((1.0 - v17) * v15))) + ((1.0 - (y - v12)) * ((v17 * v14) + ((1.0 - v17) * v13))), 255.0);
  if (v18 < 0.0)
  {
    return 0.0;
  }

  return v18;
}

- (int16x4_t)SampleFourChannelAtX:(float)x Y:
{
  v8 = floorf(a2);
  LODWORD(v3) = vcvtms_s32_f32(a2);
  v9 = floorf(x);
  LODWORD(v4) = vcvtms_s32_f32(x);
  [self readFourChannelAtX:v3 Y:v4];
  v11 = v10;
  [self readFourChannelAtX:(v3 + 1) Y:v4];
  v13 = v12;
  [self readFourChannelAtX:v3 Y:(v4 + 1)];
  v15 = v14;
  [self readFourChannelAtX:(v3 + 1) Y:(v4 + 1)];
  v16 = vdupq_n_s32(0x4B400000u);
  v17 = vdupq_n_s32(0xCB400000);
  v18 = vaddq_f32(vorrq_s8(vmovl_u16((v11 & 0xFF00FF00FF00FFLL)), v16), v17);
  v19 = vaddq_f32(vorrq_s8(vmovl_u16((v13 & 0xFF00FF00FF00FFLL)), v16), v17);
  v20 = vaddq_f32(vorrq_s8(vmovl_u16((v15 & 0xFF00FF00FF00FFLL)), v16), v17);
  v22 = vaddq_f32(vorrq_s8(vmovl_u16((v21 & 0xFF00FF00FF00FFLL)), v16), v17);
  *v16.i32 = a2 - v8;
  return vmovn_s32(vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmlaq_n_f32(vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(v22, *v16.i32), v20, 1.0 - *v16.i32), x - v9), vmlaq_n_f32(vmulq_n_f32(v19, *v16.i32), v18, 1.0 - *v16.i32), 1.0 - (x - v9)), 0), vdupq_n_s32(0x437F0000u))));
}

- (__n64)readYCbCrValueAtX:(int)x Y:(int)y
{
  result.n64_f32[0] = (*(*(self + 48) + *(self + 20) * y + 2 * x) >> 6);
  result.n64_f32[1] = (*(*(self + 56) + *(self + 24) * (y / 2) + 4 * (x / 2)) >> 6);
  return result;
}

- (id)readYCbCrValueAtArrayX:(id)x ArrayY:(id)y
{
  xCopy = x;
  yCopy = y;
  array = [MEMORY[0x277CBEB18] array];
  if ([xCopy count])
  {
    v9 = 0;
    do
    {
      v10 = [xCopy objectAtIndexedSubscript:v9];
      intValue = [v10 intValue];

      v12 = [yCopy objectAtIndexedSubscript:v9];
      intValue2 = [v12 intValue];

      v14 = &self->_pMemoryPlane2[4 * (intValue / 2) + self->_stridePlane2 * (intValue2 / 2)];
      *&v15 = (*&self->_pMemory[2 * intValue + self->_stride * intValue2] >> 6);
      *(&v15 + 1) = (*v14 >> 6);
      *(&v15 + 2) = (*(v14 + 1) >> 6);
      v18 = v15;
      v16 = [MEMORY[0x277CBEA90] dataWithBytes:&v18 length:16];
      [array addObject:v16];

      ++v9;
    }

    while ([xCopy count] > v9);
  }

  return array;
}

- (float)readBlurredYValueAtX:(int)x Y:(int)y
{
  if (x <= 2)
  {
    xCopy = 2;
  }

  else
  {
    xCopy = x;
  }

  LODWORD(v5) = self->_width - 1;
  if (v5 >= x + 2)
  {
    v5 = (x + 2);
  }

  else
  {
    v5 = v5;
  }

  result = 0.0;
  if (xCopy - 2 <= v5)
  {
    if (y <= 2)
    {
      yCopy = 2;
    }

    else
    {
      yCopy = y;
    }

    v8 = yCopy - 2;
    v9 = y + 2;
    if (self->_height - 1 < y + 2)
    {
      v9 = self->_height - 1;
    }

    v10 = yCopy - 2;
    v11 = xCopy - 2;
    v12 = yCopy - 3;
    v13 = 2 * xCopy - 4;
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