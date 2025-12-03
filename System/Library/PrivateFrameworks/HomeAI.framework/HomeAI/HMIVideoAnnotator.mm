@interface HMIVideoAnnotator
- (HMIVideoAnnotator)initWithPixelBuffer:(__CVBuffer *)buffer fontSize:(double)size;
- (__CTFont)_createFontWithSize:(double)size;
- (void)dealloc;
- (void)draw:(id)draw;
- (void)drawBoundingBox:(CGRect)box lineWidth:(double)width text:(id)text color:(const double *)color;
- (void)drawPolygonWithNormalizedPoints:(id)points;
- (void)drawRect:(CGRect)rect width:(double)width color:(const double *)color;
- (void)drawText:(id)text at:(CGPoint)at color:(const double *)color;
- (void)drawTextHeaderBar:(id)bar;
@end

@implementation HMIVideoAnnotator

- (HMIVideoAnnotator)initWithPixelBuffer:(__CVBuffer *)buffer fontSize:(double)size
{
  v8.receiver = self;
  v8.super_class = HMIVideoAnnotator;
  v6 = [(HMIVideoAnnotator *)&v8 init];
  if (v6)
  {
    *(v6 + 1) = CVPixelBufferRetain(buffer);
    *(v6 + 2) = 0;
    *(v6 + 3) = 0;
    *(v6 + 4) = [v6 _createFontWithSize:size];
    *(v6 + 40) = *MEMORY[0x277CBF3A8];
  }

  return v6;
}

- (__CTFont)_createFontWithSize:(double)size
{
  v15[1] = *MEMORY[0x277D85DE8];
  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontSystem, size, 0);
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

- (void)draw:(id)draw
{
  drawCopy = draw;
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
    drawCopy[2]();
  }

  CVPixelBufferUnlockBaseAddress(self->_pixelBuffer, 0);
  CGColorSpaceRelease(self->_colorSpace);
  CGContextRelease(self->_context);
  self->_context = 0;
  self->_colorSpace = 0;
}

- (void)drawText:(id)text at:(CGPoint)at color:(const double *)color
{
  y = at.y;
  x = at.x;
  v18[2] = *MEMORY[0x277D85DE8];
  colorSpace = self->_colorSpace;
  textCopy = text;
  v11 = CGColorCreate(colorSpace, color);
  font = self->_font;
  v13 = *MEMORY[0x277CC49C0];
  v17[0] = *MEMORY[0x277CC4838];
  v17[1] = v13;
  v18[0] = font;
  v18[1] = v11;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v15 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:textCopy attributes:v14];

  v16 = CTLineCreateWithAttributedString(v15);
  CGContextSetTextPosition(self->_context, x, y);
  CTLineDraw(v16, self->_context);
  CFRelease(v16);
  CGColorRelease(v11);
}

- (void)drawRect:(CGRect)rect width:(double)width color:(const double *)color
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CGContextSetLineWidth(self->_context, width);
  if (color)
  {
    v11 = *color;
    v12 = color[1];
    v13 = color[2];
    v14 = color[3];
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
  widthCopy = width;
  v19 = height;

  CGContextStrokeRect(context, *&v16);
}

- (void)drawTextHeaderBar:(id)bar
{
  v8 = *MEMORY[0x277D85DE8];
  context = self->_context;
  barCopy = bar;
  CGContextSetRGBFillColor(context, 0.0, 0.0, 0.0, 1.0);
  v9.size.width = self->_size.width;
  v9.origin.y = self->_size.height + -64.0;
  v9.size.height = 64.0;
  v9.origin.x = 0.0;
  CGContextFillRect(context, v9);
  v6 = self->_size.height + -32.0 + -8.0;
  v7[0] = xmmword_22D298320;
  v7[1] = unk_22D298330;
  [(HMIVideoAnnotator *)self drawText:barCopy at:v7 color:10.0, v6];
}

- (void)drawBoundingBox:(CGRect)box lineWidth:(double)width text:(id)text color:(const double *)color
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  textCopy = text;
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
    [(HMIVideoAnnotator *)self drawRect:color width:MinX color:v19, v20, v21, width];
    if ([textCopy length])
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
      [(HMIVideoAnnotator *)self drawText:textCopy at:color color:v22, CGRectGetMaxY(v31) + 8.0];
    }
  }
}

- (void)drawPolygonWithNormalizedPoints:(id)points
{
  v14 = *MEMORY[0x277D85DE8];
  context = self->_context;
  *components = xmmword_22D298320;
  v13 = unk_22D298330;
  pointsCopy = points;
  CGContextSetStrokeColor(context, components);
  CGContextSetLineWidth(context, 3.0);
  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 0.0, self->_size.height);
  CGContextScaleCTM(context, 1.0, -1.0);
  CGContextBeginPath(context);
  v6 = [pointsCopy objectAtIndexedSubscript:0];
  [v6 x];
  v8 = v7 * self->_size.width;
  v9 = [pointsCopy objectAtIndexedSubscript:0];
  [v9 y];
  CGContextMoveToPoint(context, v8, v10 * self->_size.height);

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__HMIVideoAnnotator_drawPolygonWithNormalizedPoints___block_invoke;
  v11[3] = &unk_278754638;
  v11[4] = self;
  v11[5] = context;
  [pointsCopy na_each:v11];

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