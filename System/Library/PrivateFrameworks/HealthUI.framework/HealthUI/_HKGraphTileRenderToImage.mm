@interface _HKGraphTileRenderToImage
- (CGImage)drawToImage:(id)image;
- (CGSize)sizeInPoints;
- (_HKGraphTileRenderToImage)initWithSize:(CGSize)size scale:(double)scale invertedYAxis:(BOOL)axis;
- (void)dealloc;
@end

@implementation _HKGraphTileRenderToImage

- (_HKGraphTileRenderToImage)initWithSize:(CGSize)size scale:(double)scale invertedYAxis:(BOOL)axis
{
  height = size.height;
  width = size.width;
  v18.receiver = self;
  v18.super_class = _HKGraphTileRenderToImage;
  v6 = [(_HKGraphTileRenderToImage *)&v18 init];
  v7 = v6;
  if (v6)
  {
    v9.f64[0] = width;
    v8.f64[0] = scale;
    *(v6 + 2) = scale;
    *(v6 + 11) = width;
    *(v6 + 12) = height;
    v6[8] = axis;
    v9.f64[1] = height;
    v8.f64[1] = ceil(scale);
    v10 = vcvtq_u64_f64(vrndpq_f64(vmulq_f64(v9, v8)));
    *(v6 + 24) = v10;
    *(v6 + 5) = 4 * v10.i64[0];
    v11 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
    v7->_bitmapInfo = 2;
    v12 = 4 * v7->_widthInPixels * v7->_heightInPixels;
    v7->_colorSpace = v11;
    v7->_bufferSize = v12;
    v13 = malloc_type_malloc(v12, 0x79316A4uLL);
    v7->_rawBufferBytes = v13;
    v7->_drawingContext = CGBitmapContextCreate(v13, v7->_widthInPixels, v7->_heightInPixels, 8uLL, v7->_bytesPerRow, v7->_colorSpace, v7->_bitmapInfo);
    v7->_lastRenderedImage = 0;
  }

  return v7;
}

- (void)dealloc
{
  lastRenderedImage = self->_lastRenderedImage;
  if (lastRenderedImage)
  {
    CGImageRelease(lastRenderedImage);
    self->_lastRenderedImage = 0;
  }

  CGContextRelease(self->_drawingContext);
  self->_drawingContext = 0;
  free(self->_rawBufferBytes);
  self->_rawBufferBytes = 0;
  CGColorSpaceRelease(self->_colorSpace);
  v4.receiver = self;
  v4.super_class = _HKGraphTileRenderToImage;
  [(_HKGraphTileRenderToImage *)&v4 dealloc];
}

- (CGImage)drawToImage:(id)image
{
  imageCopy = image;
  UIGraphicsPushContext([(_HKGraphTileRenderToImage *)self drawingContext]);
  CGContextSaveGState([(_HKGraphTileRenderToImage *)self drawingContext]);
  if (self->_invertedYAxis)
  {
    CGContextTranslateCTM([(_HKGraphTileRenderToImage *)self drawingContext], 0.0, [(_HKGraphTileRenderToImage *)self heightInPixels]);
    CGContextScaleCTM([(_HKGraphTileRenderToImage *)self drawingContext], 1.0, -1.0);
  }

  drawingContext = [(_HKGraphTileRenderToImage *)self drawingContext];
  [(_HKGraphTileRenderToImage *)self scale];
  v7 = v6;
  [(_HKGraphTileRenderToImage *)self scale];
  CGContextScaleCTM(drawingContext, v7, v8);
  drawingContext2 = [(_HKGraphTileRenderToImage *)self drawingContext];
  [(_HKGraphTileRenderToImage *)self sizeInPoints];
  imageCopy[2](imageCopy, drawingContext2);

  CGContextRestoreGState([(_HKGraphTileRenderToImage *)self drawingContext]);
  UIGraphicsPopContext();
  v10 = CGDataProviderCreateWithData(0, self->_rawBufferBytes, self->_bufferSize, 0);
  v11 = CGImageCreate(self->_widthInPixels, self->_heightInPixels, 8uLL, 0x20uLL, self->_bytesPerRow, self->_colorSpace, self->_bitmapInfo, v10, 0, 0, kCGRenderingIntentDefault);
  CGDataProviderRelease(v10);
  lastRenderedImage = self->_lastRenderedImage;
  if (lastRenderedImage)
  {
    CGImageRelease(lastRenderedImage);
  }

  self->_lastRenderedImage = v11;
  return v11;
}

- (CGSize)sizeInPoints
{
  width = self->_sizeInPoints.width;
  height = self->_sizeInPoints.height;
  result.height = height;
  result.width = width;
  return result;
}

@end