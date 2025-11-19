@interface MIOL010ToL010Stride16FrameProcessor
- (BOOL)buffer:(__CVBuffer *)a3 needsAlignmentTo:(unint64_t)a4;
- (MIOL010ToL010Stride16FrameProcessor)initWithInputFormatDescription:(opaqueCMFormatDescription *)a3;
- (__CVBuffer)processPixelBuffer:(__CVBuffer *)a3 preserveAttachments:(id)a4 error:(id *)a5;
- (void)dealloc;
@end

@implementation MIOL010ToL010Stride16FrameProcessor

- (MIOL010ToL010Stride16FrameProcessor)initWithInputFormatDescription:(opaqueCMFormatDescription *)a3
{
  v7.receiver = self;
  v7.super_class = MIOL010ToL010Stride16FrameProcessor;
  v4 = [(MIOFrameProcessor *)&v7 initWithInputFormatDescription:?];
  v5 = v4;
  if (v4)
  {
    v4->_formatDescForEncoding = a3;
    CFRetain(a3);
    [(MIOFrameProcessor *)v5 setFormatDescriptionNeedsUpdate:1];
    v5->_needAlignment = 0;
    v5->_firstBufferProcessed = 0;
  }

  return v5;
}

- (void)dealloc
{
  formatDescForEncoding = self->_formatDescForEncoding;
  if (formatDescForEncoding)
  {
    CFRelease(formatDescForEncoding);
  }

  v4.receiver = self;
  v4.super_class = MIOL010ToL010Stride16FrameProcessor;
  [(MIOFrameProcessor *)&v4 dealloc];
}

- (BOOL)buffer:(__CVBuffer *)a3 needsAlignmentTo:(unint64_t)a4
{
  v9 = 0;
  extraColumnsOnRight = 0;
  CVPixelBufferGetExtendedPixels(a3, 0, &extraColumnsOnRight, 0, &v9);
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  return (extraColumnsOnRight + Width) % a4 || (v9 + Height) % a4 != 0;
}

- (__CVBuffer)processPixelBuffer:(__CVBuffer *)a3 preserveAttachments:(id)a4 error:(id *)a5
{
  v34[6] = *MEMORY[0x277D85DE8];
  v8 = a4;
  if (!self->_firstBufferProcessed)
  {
    self->_firstBufferProcessed = 1;
    v9 = [(MIOL010ToL010Stride16FrameProcessor *)self buffer:a3 needsAlignmentTo:16];
    self->_needAlignment = v9;
    if (!v9)
    {
      [(MIOFrameProcessor *)self setFormatDescriptionNeedsUpdate:0];
    }
  }

  if (!self->_needAlignment)
  {
    v22 = [(MIOPixelBufferUtility *)PixelBufferUtility newPixelBufferRefCopy:a3 attachmentKeysToCopy:v8];
    goto LABEL_19;
  }

  pool = self->_pool;
  if (!pool)
  {
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    v33[0] = *MEMORY[0x277CC4DB8];
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{-(Width - ceil(vcvtd_n_f64_u64(Width, 4uLL)) * 16.0)}];
    v34[0] = v28;
    v33[1] = *MEMORY[0x277CC4DD8];
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:Height];
    v34[1] = v27;
    v33[2] = *MEMORY[0x277CC4DE8];
    v31 = *MEMORY[0x277CD2970];
    v26 = [MEMORY[0x277CCABB0] numberWithInt:{-[MIOL010ToL010Stride16FrameProcessor bufferCacheMode](self, "bufferCacheMode")}];
    v32 = v26;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v14 = *MEMORY[0x277CC4E30];
    v34[2] = v13;
    v34[3] = &unk_2868E3A68;
    v15 = *MEMORY[0x277CC4EC8];
    v33[3] = v14;
    v33[4] = v15;
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:Width];
    v34[4] = v16;
    v33[5] = *MEMORY[0x277CC4DA0];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{-(Height - ceil(vcvtd_n_f64_u64(Height, 4uLL)) * 16.0)}];
    v34[5] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:6];

    v29 = *MEMORY[0x277CC4E50];
    v30 = &unk_2868E3A80;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v20 = [[MIOPixelBufferPool alloc] initWithPixelBuffer:0 bufferAttributes:v18 poolAttributes:v19 error:0];
    v21 = self->_pool;
    self->_pool = v20;

    if (!self->_pool)
    {
      v24 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:@"Cannot create pixel buffer pool for L010 stream." code:19];
      if (a5)
      {
        v24 = v24;
        *a5 = v24;
      }

      goto LABEL_18;
    }

    pool = self->_pool;
  }

  v22 = [(MIOPixelBufferPool *)pool getPixelBuffer];
  if (!v22)
  {
    NSLog(&cfstr_RunningOutOfBu.isa);
    __assert_rtn("[MIOL010ToL010Stride16FrameProcessor processPixelBuffer:preserveAttachments:error:]", "MIOL010ToL010Stride16FrameProcessor.mm", 141, "0");
  }

  if (![MIOPixelBufferUtility copyPixelBuffer:a3 toPixelBuffer:v22])
  {
    CVPixelBufferRelease(v22);
    CVPixelBufferRelease(a3);
    v23 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:@"Cannot copy L010 to L010 (stride) buffer." code:20];
    if (a5)
    {
      v23 = v23;
      *a5 = v23;
    }

LABEL_18:
    v22 = 0;
    goto LABEL_19;
  }

  self->_formatDescForEncoding = [(MIOFrameProcessor *)self updatedFormatDescriptionIfNeededWithBuffer:v22 currentFormatDescription:self->_formatDescForEncoding];
LABEL_19:

  return v22;
}

@end