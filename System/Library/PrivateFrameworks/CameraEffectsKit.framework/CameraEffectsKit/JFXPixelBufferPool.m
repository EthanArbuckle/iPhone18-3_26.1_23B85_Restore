@interface JFXPixelBufferPool
- (CGSize)size;
- (JFXPixelBufferPool)initWithSize:(CGSize)a3 type:(unsigned int)a4;
- (__CVBuffer)createPixelBuffer;
- (void)dealloc;
@end

@implementation JFXPixelBufferPool

- (JFXPixelBufferPool)initWithSize:(CGSize)a3 type:(unsigned int)a4
{
  v4 = *&a4;
  width = a3.width;
  height = a3.height;
  v20[4] = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = JFXPixelBufferPool;
  v5 = [(JFXPixelBufferPool *)&v18 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_5;
  }

  v7.f64[0] = width;
  v7.f64[1] = height;
  *(v5 + 24) = vcvtq_f64_u64(vcvtq_u64_f64(v7));
  *(v5 + 4) = v4;
  v19[0] = *MEMORY[0x277CC4E30];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  v9 = *MEMORY[0x277CC4E08];
  v20[0] = v8;
  v20[1] = MEMORY[0x277CBEC38];
  v10 = *MEMORY[0x277CC4EC8];
  v19[1] = v9;
  v19[2] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:*(v6 + 3)];
  v20[2] = v11;
  v19[3] = *MEMORY[0x277CC4DD8];
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:*(v6 + 4)];
  v20[3] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];

  if (!CVPixelBufferPoolCreate(*MEMORY[0x277CBECE8], 0, v13, v6 + 1))
  {

LABEL_5:
    v14 = v6;
    goto LABEL_6;
  }

  CVPixelBufferPoolRelease(*(v6 + 1));

  v14 = 0;
LABEL_6:

  return v14;
}

- (void)dealloc
{
  pixelBufferPool = self->_pixelBufferPool;
  if (pixelBufferPool)
  {
    CVPixelBufferPoolFlush(pixelBufferPool, 1uLL);
    CVPixelBufferPoolRelease(self->_pixelBufferPool);
    self->_pixelBufferPool = 0;
  }

  v4.receiver = self;
  v4.super_class = JFXPixelBufferPool;
  [(JFXPixelBufferPool *)&v4 dealloc];
}

- (__CVBuffer)createPixelBuffer
{
  pixelBufferOut = 0;
  v2 = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], self->_pixelBufferPool, &pixelBufferOut);
  result = pixelBufferOut;
  if (v2)
  {
    CVPixelBufferRelease(pixelBufferOut);
    return 0;
  }

  return result;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end