@interface MIOq8q2ToL010FrameProcessor
- (MIOq8q2ToL010FrameProcessor)initWithInputFormatDescription:(opaqueCMFormatDescription *)a3;
- (__CVBuffer)processPixelBuffer:(__CVBuffer *)a3 preserveAttachments:(id)a4 error:(id *)a5;
- (void)dealloc;
@end

@implementation MIOq8q2ToL010FrameProcessor

- (MIOq8q2ToL010FrameProcessor)initWithInputFormatDescription:(opaqueCMFormatDescription *)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = MIOq8q2ToL010FrameProcessor;
  v4 = [(MIOFrameProcessor *)&v10 initWithInputFormatDescription:?];
  if (v4)
  {
    Dimensions = CMVideoFormatDescriptionGetDimensions(a3);
    texture = 0;
    v11 = *MEMORY[0x277CC4DE8];
    v12[0] = MEMORY[0x277CBEC10];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    CVPixelBufferCreate(*MEMORY[0x277CBECE8], Dimensions.width, *&Dimensions >> 32, 0x4C303130u, v6, &texture);
    v7 = [MOVStreamIOUtility createFormatDescriptionFromPixelBuffer:texture];
    v4->_formatDescForEncoding = v7;
    CFRetain(v7);
    CVPixelBufferRelease(texture);
    [(MIOFrameProcessor *)v4 setFormatDescriptionNeedsUpdate:1];
  }

  return v4;
}

- (void)dealloc
{
  formatDescForEncoding = self->_formatDescForEncoding;
  if (formatDescForEncoding)
  {
    CFRelease(formatDescForEncoding);
  }

  v4.receiver = self;
  v4.super_class = MIOq8q2ToL010FrameProcessor;
  [(MIOFrameProcessor *)&v4 dealloc];
}

- (__CVBuffer)processPixelBuffer:(__CVBuffer *)a3 preserveAttachments:(id)a4 error:(id *)a5
{
  v34[6] = *MEMORY[0x277D85DE8];
  v8 = a4;
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  pool = self->_pool;
  if (!pool)
  {
    v33[0] = *MEMORY[0x277CC4DB8];
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{-(Width - ceil(vcvtd_n_f64_u64(Width, 6uLL)) * 64.0)}];
    v34[0] = v26;
    v33[1] = *MEMORY[0x277CC4DD8];
    [MEMORY[0x277CCABB0] numberWithUnsignedLong:Height];
    v27 = v28 = a5;
    v34[1] = v27;
    v33[2] = *MEMORY[0x277CC4DE8];
    v31 = *MEMORY[0x277CD2970];
    v12 = [MEMORY[0x277CCABB0] numberWithInt:{-[MIOq8q2ToL010FrameProcessor bufferCacheMode](self, "bufferCacheMode")}];
    v32 = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v14 = *MEMORY[0x277CC4E30];
    v34[2] = v13;
    v34[3] = &unk_2868E39D8;
    v15 = *MEMORY[0x277CC4EC8];
    v33[3] = v14;
    v33[4] = v15;
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:Width];
    v34[4] = v16;
    v33[5] = *MEMORY[0x277CC4DA0];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{-(Height - ceil(vcvtd_n_f64_u64(Height, 6uLL)) * 64.0)}];
    v34[5] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:6];

    v29 = *MEMORY[0x277CC4E50];
    v30 = &unk_2868E39F0;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v20 = [[MIOPixelBufferPool alloc] initWithPixelBuffer:0 bufferAttributes:v18 poolAttributes:v19 error:0];
    v21 = self->_pool;
    self->_pool = v20;

    if (!self->_pool)
    {
      v24 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:@"Cannot create pixel buffer pool for q8q2 stream." code:19];
      if (v28)
      {
        v24 = v24;
        *v28 = v24;
      }

      goto LABEL_13;
    }

    pool = self->_pool;
    a5 = v28;
  }

  [(MIOPixelBufferPool *)pool flush];
  v22 = [(MIOPixelBufferPool *)self->_pool getPixelBuffer];
  if (!v22)
  {
    NSLog(&cfstr_RunningOutOfBu.isa);
    __assert_rtn("[MIOq8q2ToL010FrameProcessor processPixelBuffer:preserveAttachments:error:]", "MIOq8q2ToL010FrameProcessor.mm", 107, "0");
  }

  if (![MIOPixelBufferUtility transferq8q2PixelBuffer:a3 toL010PixelBuffer:v22])
  {
    CVPixelBufferRelease(v22);
    CVPixelBufferRelease(a3);
    v23 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:@"Cannot convert q8q2 to L010 buffer." code:20];
    if (a5)
    {
      v23 = v23;
      *a5 = v23;
    }

LABEL_13:
    v22 = 0;
    goto LABEL_14;
  }

  self->_formatDescForEncoding = [(MIOFrameProcessor *)self updatedFormatDescriptionIfNeededWithBuffer:v22 currentFormatDescription:self->_formatDescForEncoding];
LABEL_14:

  return v22;
}

@end