@interface HMIVideoAnnotator
- (HMIVideoAnnotator)initWithPixelBuffer:(__CVBuffer *)a3 fontSize:(double)a4;
- (__CTFont)_createFontWithSize:(double)a3;
- (void)dealloc;
- (void)draw:(id)a3;
- (void)drawBoundingBox:(CGRect)a3 lineWidth:(double)a4 text:(id)a5 color:(const double *)a6;
- (void)drawPolygonWithNormalizedPoints:(id)a3;
- (void)drawRect:(CGRect)a3 width:(double)a4 color:(const double *)a5;
- (void)drawText:(id)a3 at:(CGPoint)a4 color:(const double *)a5;
- (void)drawTextHeaderBar:(id)a3;
@end

@implementation HMIVideoAnnotator

- (HMIVideoAnnotator)initWithPixelBuffer:(__CVBuffer *)a3 fontSize:(double)a4
{
  v8.receiver = self;
  v8.super_class = HMIVideoAnnotator;
  v6 = [(HMIVideoAnnotator *)&v8 init];
  if (v6)
  {
    *(v6 + 1) = CVPixelBufferRetain(a3);
    *(v6 + 2) = 0;
    *(v6 + 3) = 0;
    *(v6 + 4) = [v6 _createFontWithSize:a4];
    *(v6 + 40) = *MEMORY[0x277CBF3A8];
  }

  return v6;
}

- (__CTFont)_createFontWithSize:(double)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontSystem, a3, 0);
  v14 = *MEMORY[0x277CC48D0];
  v4 = *MEMORY[0x277CC48C8];
  v11[0] = *MEMORY[0x277CC48D8];
  v11[1] = v4;
  v12[0] = &unk_2840750C0;
  v12[1] = &unk_2840750D8;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v13 = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v15[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  v8 = CTFontDescriptorCreateWithAttributes(v7);
  CopyWithAttributes = CTFontCreateCopyWithAttributes(UIFontForLanguage, 0.0, 0, v8);
  CFRelease(v8);
  CFRelease(UIFontForLanguage);

  return CopyWithAttributes;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_pixelBuffer);
  CGContextRelease(self->_context);
  CGColorSpaceRelease(self->_colorSpace);
  CFRelease(self->_font);
  v3.receiver = self;
  v3.super_class = HMIVideoAnnotator;
  [(HMIVideoAnnotator *)&v3 dealloc];
}

- (void)draw:(id)a3
{
  v14 = a3;
  CVPixelBufferLockBaseAddress(self->_pixelBuffer, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(self->_pixelBuffer, 0);
  PixelFormatType = CVPixelBufferGetPixelFormatType(self->_pixelBuffer);
  self->_size.width = HMICVPixelBufferGetSize(self->_pixelBuffer);
  self->_size.height = v6;
  v7 = PixelFormatType == 32;
  v8 = 2 * (PixelFormatType == 32);
  if (v7)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
  }

  else
  {
    DeviceRGB = CGColorSpaceCreateDeviceGray();
  }

  self->_colorSpace = DeviceRGB;
  width = self->_size.width;
  height = self->_size.height;
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(self->_pixelBuffer, 0);
  v13 = CGBitmapContextCreate(BaseAddressOfPlane, width, height, 8uLL, BytesPerRowOfPlane, self->_colorSpace, v8);
  self->_context = v13;
  if (v13)
  {
    v14[2]();
  }

  CVPixelBufferUnlockBaseAddress(self->_pixelBuffer, 0);
  CGColorSpaceRelease(self->_colorSpace);
  CGContextRelease(self->_context);
  self->_context = 0;
  self->_colorSpace = 0;
}

- (void)drawText:(id)a3 at:(CGPoint)a4 color:(const double *)a5
{
  y = a4.y;
  x = a4.x;
  v18[2] = *MEMORY[0x277D85DE8];
  colorSpace = self->_colorSpace;
  v10 = a3;
  v11 = CGColorCreate(colorSpace, a5);
  font = self->_font;
  v13 = *MEMORY[0x277CC49C0];
  v17[0] = *MEMORY[0x277CC4838];
  v17[1] = v13;
  v18[0] = font;
  v18[1] = v11;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v15 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v10 attributes:v14];

  v16 = CTLineCreateWithAttributedString(v15);
  CGContextSetTextPosition(self->_context, x, y);
  CTLineDraw(v16, self->_context);
  CFRelease(v16);
  CGColorRelease(v11);
}

- (void)drawRect:(CGRect)a3 width:(double)a4 color:(const double *)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CGContextSetLineWidth(self->_context, a4);
  if (a5)
  {
    v11 = *a5;
    v12 = a5[1];
    v13 = a5[2];
    v14 = a5[3];
  }

  else
  {
    v11 = 1.0;
    v12 = 1.0;
    v13 = 1.0;
    v14 = 1.0;
  }

  CGContextSetRGBStrokeColor(self->_context, v11, v12, v13, v14);
  context = self->_context;
  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;

  CGContextStrokeRect(context, *&v16);
}

- (void)drawTextHeaderBar:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  context = self->_context;
  v5 = a3;
  CGContextSetRGBFillColor(context, 0.0, 0.0, 0.0, 1.0);
  v9.size.width = self->_size.width;
  v9.origin.y = self->_size.height + -64.0;
  v9.size.height = 64.0;
  v9.origin.x = 0.0;
  CGContextFillRect(context, v9);
  v6 = self->_size.height + -32.0 + -8.0;
  v7[0] = xmmword_22D298320;
  v7[1] = unk_22D298330;
  [(HMIVideoAnnotator *)self drawText:v5 at:v7 color:10.0, v6];
}

- (void)drawBoundingBox:(CGRect)a3 lineWidth:(double)a4 text:(id)a5 color:(const double *)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v23 = a5;
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  if (!CGRectIsNull(v25))
  {
    HMICGRectPixelFromNormalized(x, y, width, height, self->_size.width, self->_size.height);
    v13 = v26.origin.x;
    v14 = v26.origin.y;
    v15 = v26.size.width;
    v16 = v26.size.height;
    MinX = CGRectGetMinX(v26);
    v18 = self->_size.height;
    v27.origin.x = v13;
    v27.origin.y = v14;
    v27.size.width = v15;
    v27.size.height = v16;
    v19 = v18 - CGRectGetMinY(v27);
    v28.origin.x = v13;
    v28.origin.y = v14;
    v28.size.width = v15;
    v28.size.height = v16;
    v20 = CGRectGetWidth(v28);
    v29.origin.x = v13;
    v29.origin.y = v14;
    v29.size.width = v15;
    v29.size.height = v16;
    v21 = -CGRectGetHeight(v29);
    [(HMIVideoAnnotator *)self drawRect:a6 width:MinX color:v19, v20, v21, a4];
    if ([v23 length])
    {
      v30.origin.x = MinX;
      v30.origin.y = v19;
      v30.size.width = v20;
      v30.size.height = v21;
      v22 = CGRectGetMinX(v30) + 4.0;
      v31.origin.x = MinX;
      v31.origin.y = v19;
      v31.size.width = v20;
      v31.size.height = v21;
      [(HMIVideoAnnotator *)self drawText:v23 at:a6 color:v22, CGRectGetMaxY(v31) + 8.0];
    }
  }
}

- (void)drawPolygonWithNormalizedPoints:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  context = self->_context;
  *components = xmmword_22D298320;
  v13 = unk_22D298330;
  v5 = a3;
  CGContextSetStrokeColor(context, components);
  CGContextSetLineWidth(context, 3.0);
  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 0.0, self->_size.height);
  CGContextScaleCTM(context, 1.0, -1.0);
  CGContextBeginPath(context);
  v6 = [v5 objectAtIndexedSubscript:0];
  [v6 x];
  v8 = v7 * self->_size.width;
  v9 = [v5 objectAtIndexedSubscript:0];
  [v9 y];
  CGContextMoveToPoint(context, v8, v10 * self->_size.height);

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__HMIVideoAnnotator_drawPolygonWithNormalizedPoints___block_invoke;
  v11[3] = &unk_278754638;
  v11[4] = self;
  v11[5] = context;
  [v5 na_each:v11];

  CGContextStrokePath(context);
  CGContextRestoreGState(context);
}

void __53__HMIVideoAnnotator_drawPolygonWithNormalizedPoints___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 x];
  v6 = v5 * *(*(a1 + 32) + 40);
  [v4 y];
  v8 = v7;

  v9 = v8 * *(*(a1 + 32) + 48);

  CGContextAddLineToPoint(v3, v6, v9);
}

@end