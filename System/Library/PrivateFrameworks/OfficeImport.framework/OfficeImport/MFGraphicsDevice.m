@interface MFGraphicsDevice
- (CGRect)getCanvas;
- (MFGraphicsDevice)initWithCanvas:(CGRect)a3;
- (id)clipEverythingClippingPath;
- (id)clippingPathByCombiningClippingPath:(id)a3 withClippingPath:(id)a4 combineMode:(int)a5;
- (id)clippingPathByCombiningEmptyClippingPathWithClippingPath:(id)a3 combineMode:(int)a4;
- (id)clippingPathByCombiningImplicitClippingPathWithClippingPath:(id)a3 combineMode:(int)a4;
- (id)createColorWithRGBBytes:(unsigned __int8)a3 green:(unsigned __int8)a4 blue:(unsigned __int8)a5 flags:(unsigned __int8)a6;
- (id)currentCummulatedClippingPath;
- (id)implicitClippingPath;
- (id)normalizedClippingPathWithClippingPath:(id)a3;
- (id)recolor:(id)a3 fill:(BOOL)a4;
- (id)recolor:(unsigned __int8)a3 in_green:(unsigned __int8)a4 in_blue:(unsigned __int8)a5 fill:(BOOL)a6;
- (int)abortPath;
- (int)alphaBlend:(int)a3 in_yDest:(int)a4 in_widthDest:(int)a5 in_heightDest:(int)a6 in_sourceImage:(id)a7 in_xSrc:(int)a8 in_ySrc:(int)a9 in_widthSrc:(int)a10 in_heightSrc:(int)a11 in_sourceConstantOpacity:(unsigned __int8)a12 in_useSourceAlphaChannel:(BOOL)a13 in_xform:(CGAffineTransform *)a14 in_colour:(unsigned int)a15;
- (int)beginPath;
- (int)bitBlt:(int)a3 in_yDest:(int)a4 in_widthDest:(int)a5 in_heightDest:(int)a6 in_sourceImage:(id)a7 in_xSrc:(int)a8 in_ySrc:(int)a9 in_rop:(unsigned int)a10 in_xform:(CGAffineTransform *)a11 in_colour:(unsigned int)a12;
- (int)closeCurrentPath:(BOOL)a3;
- (int)createBrush:(int)a3 in_colour:(id)a4 hatchstyle:(int)a5 index:(unsigned int)a6;
- (int)createFontIndirect:(int)a3 lfWidth:(int)a4 lfEscapement:(int)a5 lfOrientation:(int)a6 lfWeight:(int)a7 lfItalic:(BOOL)a8 lfUnderline:(BOOL)a9 lfStrikeOut:(BOOL)a10 lfCharSet:(int)a11 lfOutPrecision:(int)a12 lfClipPrecision:(unsigned __int8)a13 lfQuality:(int)a14 pitch:(int)a15 family:(int)a16 lfFaceName:(id)a17;
- (int)createFontIndirectW:(int)a3 lfWidth:(int)a4 lfEscapement:(int)a5 lfOrientation:(int)a6 lfWeight:(int)a7 lfItalic:(BOOL)a8 lfUnderline:(BOOL)a9 lfStrikeOut:(BOOL)a10 lfCharSet:(int)a11 lfOutPrecision:(int)a12 lfClipPrecision:(unsigned __int8)a13 lfQuality:(int)a14 pitch:(int)a15 family:(int)a16 lfFaceName:(id)a17 elfFullName:(id)a18 elfStyle:(id)a19 elfVersion:(unsigned int)a20 elfStyleSize:(unsigned int)a21 elfMatch:(unsigned int)a22 elfVendorId:(unsigned int)a23 elfCulture:(unsigned int)a24 index:(unsigned int)a25;
- (int)createPalette:(id)a3 in_index:(unsigned int)a4;
- (int)createPatternBrush:(id)a3 index:(unsigned int)a4 usePaletteForBilevel:(BOOL)a5;
- (int)createPen:(int)a3 width:(int)a4 in_colour:(id)a5 in_userStyleArray:(double *)a6 index:(unsigned int)a7;
- (int)createRegion:(id)a3;
- (int)endPath;
- (int)extTextOut:(int)a3 y:(int)a4 in_text:(id)a5 options:(int)a6 left:(int)a7 top:(int)a8 right:(int)a9 bottom:(int)a10 spacingValues:(int *)a11 numValues:(int)a12;
- (int)extTextOutEncoded:(int)a3 y:(int)a4 in_data:(id)a5 options:(int)a6 left:(int)a7 top:(int)a8 right:(int)a9 bottom:(int)a10 spacingValues:(int *)a11 numValues:(int)a12;
- (int)fillRgn:(unsigned int)a3 in_brushID:(unsigned int)a4;
- (int)fillRgnWithRects:(id)a3 in_brushID:(unsigned int)a4;
- (int)frameRegion:(unsigned int)a3 in_brushID:(unsigned int)a4 in_width:(int)a5 in_height:(int)a6;
- (int)frameRegionWithRects:(id)a3 in_brushID:(unsigned int)a4 in_width:(int)a5 in_height:(int)a6;
- (int)getStockObject:(unsigned int)a3;
- (int)invertRgn:(unsigned int)a3;
- (int)invertRgnWithRects:(id)a3;
- (int)maskBlt:(int)a3 in_yDest:(int)a4 in_widthDest:(int)a5 in_heightDest:(int)a6 in_sourceImage:(id)a7 in_xSrc:(int)a8 in_ySrc:(int)a9 in_maskImage:(id)a10 in_xMask:(int)a11 in_yMask:(int)a12 in_rop:(unsigned int)a13 in_xform:(CGAffineTransform *)a14 in_colour:(unsigned int)a15;
- (int)modifyWorldTransform:(const CGAffineTransform *)a3 in_command:(int)a4;
- (int)offsetClipRegionByX:(int)a3 y:(int)a4;
- (int)offsetViewportOrg:(int)a3 in_y:(int)a4;
- (int)offsetWindowOrg:(int)a3 in_y:(int)a4;
- (int)paintRgn:(unsigned int)a3;
- (int)paintRgnWithRects:(id)a3;
- (int)plgBlt:(CGPoint *)a3 in_sourceImage:(id)a4 in_xSrc:(int)a5 in_ySrc:(int)a6 in_widthSrc:(int)a7 in_heightSrc:(int)a8 in_maskImage:(id)a9 in_xMask:(int)a10 in_yMask:(int)a11 in_xform:(CGAffineTransform *)a12 in_colour:(unsigned int)a13;
- (int)resizePalette:(unsigned int)a3 in_index:(unsigned int)a4;
- (int)restoreDC;
- (int)restoreDC:(int)a3;
- (int)saveDC;
- (int)scaleViewportExt:(int)a3 in_xDenom:(int)a4 in_yNum:(int)a5 in_yDenom:(int)a6;
- (int)scaleWindowExt:(int)a3 in_xDenom:(int)a4 in_yNum:(int)a5 in_yDenom:(int)a6;
- (int)selectClipPath:(int)a3;
- (int)selectClipRegion:(id)a3 combineMode:(int)a4;
- (int)selectClipRegionWithRects:(id)a3 in_mode:(int)a4;
- (int)selectClippingPath:(id)a3 combineMode:(int)a4;
- (int)selectObject:(int)a3;
- (int)setBkColour:(id)a3;
- (int)setClipRegion:(unsigned int)a3;
- (int)setMapMode:(int)a3;
- (int)setPaletteEntries:(unsigned int)a3 in_colours:(id)a4 in_index:(unsigned int)a5;
- (int)setTextAlign:(BOOL)a3 textHorizontalAlign:(int)a4 textVerticalAlign:(int)a5 textDirection:(int)a6;
- (int)setTextColour:(id)a3;
- (int)setViewportExt:(int)a3 in_y:(int)a4;
- (int)setViewportOrg:(int)a3 in_y:(int)a4;
- (int)setWindowExt:(int)a3 in_y:(int)a4;
- (int)setWindowOrg:(int)a3 in_y:(int)a4;
- (int)setWorldTransform:(const CGAffineTransform *)a3;
- (int)stretchBlt:(int)a3 in_yDest:(int)a4 in_widthDest:(int)a5 in_heightDest:(int)a6 in_sourceImage:(id)a7 in_xSrc:(int)a8 in_ySrc:(int)a9 in_widthSrc:(int)a10 in_heightSrc:(int)a11 in_rop:(unsigned int)a12 in_xform:(CGAffineTransform *)a13 in_colour:(unsigned int)a14;
- (int)stretchBlt:(int)a3 in_yDest:(int)a4 in_widthDest:(int)a5 in_heightDest:(int)a6 in_sourceImage:(id)a7 in_xSrc:(int)a8 in_ySrc:(int)a9 in_widthSrc:(int)a10 in_heightSrc:(int)a11 in_rop:(unsigned int)a12 in_xform:(CGAffineTransform *)a13 in_colour:(unsigned int)a14 usePaletteForBilevel:(BOOL)a15;
- (int)strokeAndFillPath:(BOOL)a3 in_fill:(BOOL)a4;
- (int)textOut:(int)a3 y:(int)a4 in_text:(id)a5;
- (int)textOutEncoded:(int)a3 y:(int)a4 in_data:(id)a5;
- (int)widenPath;
- (unint64_t)clippingStartDCIndex;
- (void)addClippingPathToCurrentContext:(id)a3 dc:(id)a4;
- (void)addClippingPathToCurrentDCAndCurrentContext:(id)a3;
- (void)applyClippingOfDCAtIndexToCurrentContext:(unint64_t)a3;
- (void)applyDCAtIndexToCurrentContext:(unint64_t)a3;
- (void)applyNonClippingOfDCAtIndexToCurrentContext:(unint64_t)a3;
- (void)createStockObjects;
- (void)dealloc;
- (void)done;
- (void)restoreGState:(id)a3;
- (void)saveGState:(id)a3;
- (void)setClippingPath:(id)a3;
- (void)setColorMap:(id)a3 fillMap:(id)a4;
@end

@implementation MFGraphicsDevice

- (int)saveDC
{
  v3 = [(MFDeviceContext *)self->m_currentDC copy];
  [(NSMutableArray *)self->m_DCStack addObject:v3];
  v4 = [(NSMutableArray *)self->m_DCStack lastObject];
  m_currentDC = self->m_currentDC;
  self->m_currentDC = v4;

  [(MFGraphicsDevice *)self saveGState:@"saveDC"];
  return 0;
}

- (void)done
{
  [(MFObjectTable *)self->m_objectTable clear];
  m_stockObjects = self->m_stockObjects;

  [(MFObjectTable *)m_stockObjects clear];
}

- (void)dealloc
{
  m_currentDC = self->m_currentDC;
  self->m_currentDC = 0;

  v4.receiver = self;
  v4.super_class = MFGraphicsDevice;
  [(MFGraphicsDevice *)&v4 dealloc];
}

- (CGRect)getCanvas
{
  [(MFDeviceDriver *)self->m_deviceDriver getCanvas];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)createStockObjects
{
  m_deviceDriver = self->m_deviceDriver;
  v4 = [(MFGraphicsDevice *)self recolor:255 in_green:255 in_blue:255 fill:1];
  v5 = [(MFDeviceDriver *)m_deviceDriver createSolidBrush:v4];

  [(MFObjectTable *)self->m_stockObjects putObject:v5 in_objectPos:0];
  v6 = self->m_deviceDriver;
  v7 = [(MFGraphicsDevice *)self recolor:192 in_green:192 in_blue:192 fill:1];
  v8 = [(MFDeviceDriver *)v6 createSolidBrush:v7];

  [(MFObjectTable *)self->m_stockObjects putObject:v8 in_objectPos:1];
  v9 = self->m_deviceDriver;
  v10 = [(MFGraphicsDevice *)self recolor:128 in_green:128 in_blue:128 fill:1];
  v11 = [(MFDeviceDriver *)v9 createSolidBrush:v10];

  [(MFObjectTable *)self->m_stockObjects putObject:v11 in_objectPos:2];
  v12 = self->m_deviceDriver;
  v13 = [(MFGraphicsDevice *)self recolor:169 in_green:169 in_blue:169 fill:1];
  v14 = [(MFDeviceDriver *)v12 createSolidBrush:v13];

  [(MFObjectTable *)self->m_stockObjects putObject:v14 in_objectPos:3];
  v15 = self->m_deviceDriver;
  v16 = [(MFGraphicsDevice *)self recolor:0 in_green:0 in_blue:0 fill:1];
  v17 = [(MFDeviceDriver *)v15 createSolidBrush:v16];

  [(MFObjectTable *)self->m_stockObjects putObject:v17 in_objectPos:4];
  v18 = [(MFDeviceDriver *)self->m_deviceDriver createNullBrush];

  [(MFObjectTable *)self->m_stockObjects putObject:v18 in_objectPos:5];
  v19 = self->m_deviceDriver;
  v20 = [(MFGraphicsDevice *)self recolor:255 in_green:255 in_blue:255 fill:0];
  v38 = [(MFDeviceDriver *)v19 createPen:0 in_width:1 in_colour:v20 in_userStyleArray:0];

  [(MFObjectTable *)self->m_stockObjects putObject:v38 in_objectPos:6];
  v21 = self->m_deviceDriver;
  v22 = [(MFGraphicsDevice *)self recolor:0 in_green:0 in_blue:0 fill:0];
  v23 = [(MFDeviceDriver *)v21 createPen:0 in_width:1 in_colour:v22 in_userStyleArray:0];

  [(MFObjectTable *)self->m_stockObjects putObject:v23 in_objectPos:7];
  v24 = [(MFDeviceDriver *)self->m_deviceDriver createPen];

  [(MFObjectTable *)self->m_stockObjects putObject:v24 in_objectPos:8];
  v25 = [(MFDeviceDriver *)self->m_deviceDriver createFont:10];
  [(MFObjectTable *)self->m_stockObjects putObject:v25 in_objectPos:10];
  v26 = [(MFDeviceDriver *)self->m_deviceDriver createFont:11];

  [(MFObjectTable *)self->m_stockObjects putObject:v26 in_objectPos:11];
  v27 = [(MFDeviceDriver *)self->m_deviceDriver createFont:12];

  [(MFObjectTable *)self->m_stockObjects putObject:v27 in_objectPos:12];
  v28 = [(MFDeviceDriver *)self->m_deviceDriver createFont:13];

  [(MFObjectTable *)self->m_stockObjects putObject:v28 in_objectPos:13];
  v29 = [(MFDeviceDriver *)self->m_deviceDriver createFont:14];

  [(MFObjectTable *)self->m_stockObjects putObject:v29 in_objectPos:14];
  v30 = objc_alloc_init(MFPalette);
  [(MFObjectTable *)self->m_stockObjects putObject:v30 in_objectPos:15];
  v31 = [(MFDeviceDriver *)self->m_deviceDriver createFont:16];

  [(MFObjectTable *)self->m_stockObjects putObject:v31 in_objectPos:16];
  v32 = [(MFDeviceDriver *)self->m_deviceDriver createFont:17];

  [(MFObjectTable *)self->m_stockObjects putObject:v32 in_objectPos:17];
  v33 = self->m_deviceDriver;
  v34 = [(MFGraphicsDevice *)self recolor:0 in_green:0 in_blue:0 fill:1];
  v35 = [(MFDeviceDriver *)v33 createSolidBrush:v34];

  [(MFObjectTable *)self->m_stockObjects putObject:v35 in_objectPos:18];
  v36 = self->m_deviceDriver;
  v37 = [(MFGraphicsDevice *)self recolor:0 in_green:0 in_blue:0 fill:0];
  v39 = [(MFDeviceDriver *)v36 createPen:0 in_width:1 in_colour:v37 in_userStyleArray:0];

  [(MFObjectTable *)self->m_stockObjects putObject:v39 in_objectPos:19];
}

- (int)beginPath
{
  v2 = [(MFDeviceContext *)self->m_currentDC getPath];
  v3 = [v2 begin];

  return v3;
}

- (int)endPath
{
  v2 = [(MFDeviceContext *)self->m_currentDC getPath];
  v3 = [v2 end];

  return v3;
}

- (MFGraphicsDevice)initWithCanvas:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v22.receiver = self;
  v22.super_class = MFGraphicsDevice;
  v7 = [(MFGraphicsDevice *)&v22 init];
  if (v7)
  {
    v8 = [[MFPhoneDeviceDriver alloc] initWithCanvas:x, y, width, height];
    m_deviceDriver = v7->m_deviceDriver;
    v7->m_deviceDriver = v8;

    v10 = objc_alloc_init(MFObjectTable);
    m_objectTable = v7->m_objectTable;
    v7->m_objectTable = v10;

    v12 = objc_alloc_init(MFObjectTable);
    m_stockObjects = v7->m_stockObjects;
    v7->m_stockObjects = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    m_DCStack = v7->m_DCStack;
    v7->m_DCStack = v14;

    v16 = [[MFDeviceContext alloc] initWithDriver:v7->m_deviceDriver];
    [(NSMutableArray *)v7->m_DCStack addObject:v16];
    v17 = [(NSMutableArray *)v7->m_DCStack lastObject];
    m_currentDC = v7->m_currentDC;
    v7->m_currentDC = v17;

    v7->m_gStateStackHeight = 1;
    m_colorMap = v7->m_colorMap;
    v7->m_colorMap = 0;

    m_fillMap = v7->m_fillMap;
    v7->m_fillMap = 0;
  }

  return v7;
}

- (void)setColorMap:(id)a3 fillMap:(id)a4
{
  v6 = a3;
  v7 = a4;
  m_colorMap = self->m_colorMap;
  self->m_colorMap = v6;
  v10 = v6;

  m_fillMap = self->m_fillMap;
  self->m_fillMap = v7;
}

- (id)recolor:(id)a3 fill:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!v4 || (m_fillMap = self->m_fillMap) == 0 || ([(NSDictionary *)m_fillMap objectForKey:v6], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    m_colorMap = self->m_colorMap;
    if (!m_colorMap || ([(NSDictionary *)m_colorMap objectForKey:v6], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v8 = v6;
    }
  }

  return v8;
}

- (id)recolor:(unsigned __int8)a3 in_green:(unsigned __int8)a4 in_blue:(unsigned __int8)a5 fill:(BOOL)a6
{
  v6 = a6;
  v8 = [OITSUColor colorWithRGBBytes:a3 green:a4 blue:a5];
  v9 = [(MFGraphicsDevice *)self recolor:v8 fill:v6];

  return v9;
}

- (int)setBkColour:(id)a3
{
  m_currentDC = self->m_currentDC;
  v4 = [(MFGraphicsDevice *)self recolor:a3 fill:1];
  [(MFDeviceContext *)m_currentDC setBkColour:v4];

  return 0;
}

- (int)setTextColour:(id)a3
{
  m_currentDC = self->m_currentDC;
  v4 = [(MFGraphicsDevice *)self recolor:a3 fill:0];
  [(MFDeviceContext *)m_currentDC setTextColour:v4];

  return 0;
}

- (int)setTextAlign:(BOOL)a3 textHorizontalAlign:(int)a4 textVerticalAlign:(int)a5 textDirection:(int)a6
{
  v6 = *&a6;
  v7 = *&a5;
  v8 = *&a4;
  [(MFDeviceContext *)self->m_currentDC setTextUpdateCP:a3];
  [(MFDeviceContext *)self->m_currentDC setTextHorizontalAlign:v8];
  [(MFDeviceContext *)self->m_currentDC setTextVerticalAlign:v7];
  [(MFDeviceContext *)self->m_currentDC setTextDirection:v6];
  return 0;
}

- (int)textOut:(int)a3 y:(int)a4 in_text:(id)a5
{
  v9 = a4;
  v10 = a3;
  v6 = a5;
  v7 = [(MFDeviceDriver *)self->m_deviceDriver textOut:self->m_currentDC px:&v10 py:&v9 in_text:v6];
  if (!v7 && [(MFDeviceContext *)self->m_currentDC getTextUpdateCP])
  {
    [(MFDeviceContext *)self->m_currentDC setPenPosition:v10, v9];
  }

  return v7;
}

- (int)textOutEncoded:(int)a3 y:(int)a4 in_data:(id)a5
{
  v5 = *&a4;
  v6 = *&a3;
  v8 = a5;
  v9 = [(MFDeviceContext *)self->m_currentDC getFont];
  v10 = [v9 stringWithBytes:objc_msgSend(v8 length:{"bytes"), objc_msgSend(v8, "length")}];
  LODWORD(v5) = [(MFGraphicsDevice *)self textOut:v6 y:v5 in_text:v10];

  return v5;
}

- (int)extTextOut:(int)a3 y:(int)a4 in_text:(id)a5 options:(int)a6 left:(int)a7 top:(int)a8 right:(int)a9 bottom:(int)a10 spacingValues:(int *)a11 numValues:(int)a12
{
  v13 = *&a7;
  v14 = *&a6;
  v21 = a4;
  v22 = a3;
  v16 = a5;
  LODWORD(v20) = a12;
  LODWORD(v19) = a10;
  v17 = [(MFDeviceDriver *)self->m_deviceDriver extTextOut:self->m_currentDC px:&v22 py:&v21 in_text:v16 options:v14 left:v13 top:__PAIR64__(a9 right:a8) bottom:v19 spacingValues:a11 numValues:v20];
  if (!v17 && [(MFDeviceContext *)self->m_currentDC getTextUpdateCP])
  {
    [(MFDeviceContext *)self->m_currentDC setPenPosition:v22, v21];
  }

  return v17;
}

- (int)extTextOutEncoded:(int)a3 y:(int)a4 in_data:(id)a5 options:(int)a6 left:(int)a7 top:(int)a8 right:(int)a9 bottom:(int)a10 spacingValues:(int *)a11 numValues:(int)a12
{
  v12 = *&a8;
  v13 = *&a7;
  v14 = *&a6;
  v18 = a5;
  v19 = [(MFDeviceContext *)self->m_currentDC getFont];
  v20 = [v19 stringWithBytes:objc_msgSend(v18 length:{"bytes"), objc_msgSend(v18, "length")}];
  v38 = a3;
  v39 = a4;
  v21 = [v19 getCharset];
  v22 = a12;
  if ((v21 - 78) > 0x3A || ((1 << (v21 - 78)) & 0x51C000000000001) == 0)
  {
    goto LABEL_15;
  }

  v24 = OCNsStringEncodingForWindowsCharSet(v21);
  v25 = [v20 length];
  v35 = v14;
  v36 = v13;
  v37 = v12;
  v26 = [MEMORY[0x277CCABB0] numberWithInt:a12];
  v27 = [v26 unsignedIntegerValue];

  if (v25 < v27)
  {
    v27 = v25;
  }

  if (!v27)
  {
LABEL_14:
    v22 = v27;
    v13 = v36;
    v12 = v37;
    v14 = v35;
LABEL_15:
    LODWORD(v34) = v22;
    v32 = [(MFGraphicsDevice *)self extTextOut:v38 y:v39 in_text:v20 options:v14 left:v13 top:v12 right:__PAIR64__(a10 bottom:a9) spacingValues:a11 numValues:v34];
    goto LABEL_17;
  }

  v28 = 0;
  v29 = 0;
  while (1)
  {
    if (a11 && v28 + v29 < a12)
    {
      a11[v28] = a11[v28 + v29];
    }

    v40 = [v20 characterAtIndex:v28];
    v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharactersNoCopy:&v40 length:1 freeWhenDone:0];
    v31 = [v30 lengthOfBytesUsingEncoding:v24];

    if (!v31)
    {
      break;
    }

    v29 = v29 + v31 - 1;
    if (v27 == ++v28)
    {
      goto LABEL_14;
    }
  }

  v32 = -7;
LABEL_17:

  return v32;
}

- (void)saveGState:(id)a3
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  ++self->m_gStateStackHeight;
}

- (void)restoreGState:(id)a3
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextRestoreGState(CurrentContext);
  --self->m_gStateStackHeight;
}

- (unint64_t)clippingStartDCIndex
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = self->m_firstClipDC;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(NSMutableArray *)self->m_DCStack reverseObjectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v13 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = *(*(&v12 + 1) + 8 * v7);
      if (v8 == self->m_firstClipDC)
      {
        break;
      }

      if ([*(*(&v12 + 1) + 8 * v7) clippingIsRestarted])
      {
        v9 = v8;

        v3 = v9;
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v10 = [(NSMutableArray *)self->m_DCStack indexOfObjectIdenticalTo:v3];
  return v10;
}

- (void)applyNonClippingOfDCAtIndexToCurrentContext:(unint64_t)a3
{
  v4 = [(NSMutableArray *)self->m_DCStack objectAtIndexedSubscript:a3];
  v3 = [v4 getCurrentTransform];
  [v3 updateTransform];
}

- (id)implicitClippingPath
{
  [(MFGraphicsDevice *)self getCanvas];

  return [OITSUBezierPath bezierPathWithRect:?];
}

- (id)clipEverythingClippingPath
{
  v2 = [(MFGraphicsDevice *)self implicitClippingPath];
  [v2 controlPointBounds];
  CGAffineTransformMakeTranslation(&v6, v3 + v3, v4 + v4);
  [v2 transformUsingAffineTransform:&v6];

  return v2;
}

- (void)addClippingPathToCurrentContext:(id)a3 dc:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEmpty])
  {
    v8 = [(MFGraphicsDevice *)self clipEverythingClippingPath];

    v6 = v8;
  }

  memset(&v13, 0, sizeof(v13));
  v9 = [v7 getCurrentTransform];
  v10 = v9;
  if (v9)
  {
    [v9 getTransformMatrix];
  }

  else
  {
    memset(&v12, 0, sizeof(v12));
  }

  CGAffineTransformInvert(&v13, &v12);

  v11 = [v6 copy];
  v12 = v13;
  [v11 transformUsingAffineTransform:&v12];
  [v11 addClip];
}

- (void)applyClippingOfDCAtIndexToCurrentContext:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [(NSMutableArray *)self->m_DCStack objectAtIndexedSubscript:a3];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = [v4 clippingPaths];
  v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [(MFGraphicsDevice *)self addClippingPathToCurrentContext:*(*(&v9 + 1) + 8 * v8++) dc:v4];
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)applyDCAtIndexToCurrentContext:(unint64_t)a3
{
  [(MFGraphicsDevice *)self applyNonClippingOfDCAtIndexToCurrentContext:?];

  [(MFGraphicsDevice *)self applyClippingOfDCAtIndexToCurrentContext:a3];
}

- (void)addClippingPathToCurrentDCAndCurrentContext:(id)a3
{
  v5 = a3;
  v4 = [(MFDeviceContext *)self->m_currentDC clippingPaths];
  [v4 addObject:v5];

  [(MFGraphicsDevice *)self addClippingPathToCurrentContext:v5 dc:self->m_currentDC];
}

- (void)setClippingPath:(id)a3
{
  v9 = a3;
  v4 = [(MFGraphicsDevice *)self firstClipDCIndex];
  v5 = [(MFGraphicsDevice *)self clippingStartDCIndex];
  v6 = [(MFGraphicsDevice *)self currentDCIndex];
  if (v6 - v5 != -1)
  {
    v7 = v6 - v5 + 1;
    do
    {
      [(MFGraphicsDevice *)self restoreGState:@"setClippingPath unwind states"];
      --v7;
    }

    while (v7);
  }

  [(MFGraphicsDevice *)self saveGState:@"setClippingPath save state before m_firstClipDC"];
  while (v4 <= v6)
  {
    [(MFGraphicsDevice *)self applyNonClippingOfDCAtIndexToCurrentContext:v4++];
  }

  [(MFDeviceContext *)self->m_currentDC setClippingIsRestarted:1];
  v8 = [(MFDeviceContext *)self->m_currentDC clippingPaths];
  [v8 removeAllObjects];

  if (v9)
  {
    [(MFGraphicsDevice *)self addClippingPathToCurrentDCAndCurrentContext:v9];
  }
}

- (int)restoreDC
{
  if ([(NSMutableArray *)self->m_DCStack count]>= 2)
  {
    v3 = [(MFDeviceContext *)self->m_currentDC clippingIsRestarted];
    m_firstClipDC = self->m_firstClipDC;
    if (m_firstClipDC == self->m_currentDC)
    {
      self->m_firstClipDC = 0;

      v3 = 0;
    }

    [(NSMutableArray *)self->m_DCStack removeLastObject];
    v5 = [(NSMutableArray *)self->m_DCStack lastObject];
    m_currentDC = self->m_currentDC;
    self->m_currentDC = v5;

    [(MFGraphicsDevice *)self restoreGState:@"restoreDC"];
    if (v3)
    {
      [(MFGraphicsDevice *)self saveGState:@"restoreDC save state before m_firstClipDC"];
      v7 = [(MFGraphicsDevice *)self firstClipDCIndex];
      v8 = [(MFGraphicsDevice *)self clippingStartDCIndex];
      v9 = [(MFGraphicsDevice *)self currentDCIndex];
      if (v7 < v8)
      {
        do
        {
          [(MFGraphicsDevice *)self applyNonClippingOfDCAtIndexToCurrentContext:v7++];
        }

        while (v8 != v7);
      }

      [(MFGraphicsDevice *)self applyDCAtIndexToCurrentContext:v8];
      for (i = v8 + 1; i <= v9; ++i)
      {
        [(MFGraphicsDevice *)self saveGState:@"restoreDC apply DC between clippingStartDCIndex+1 and currentDCIndex"];
        [(MFGraphicsDevice *)self applyDCAtIndexToCurrentContext:i];
      }
    }
  }

  return 0;
}

- (int)restoreDC:(int)a3
{
  if (a3 < 0)
  {
    if (-a3 > 1)
    {
      v5 = -a3;
    }

    else
    {
      v5 = 1;
    }

    do
    {
      [(MFGraphicsDevice *)self restoreDC];
      --v5;
    }

    while (v5);
  }

  else if (a3)
  {
    while ([(NSMutableArray *)self->m_DCStack count]> a3)
    {
      [(MFGraphicsDevice *)self restoreDC];
    }
  }

  return 0;
}

- (id)normalizedClippingPathWithClippingPath:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 isEmpty] & 1) == 0)
  {
    v7 = 0;
    while (v7 < [v4 elementCount])
    {
      v8 = [v4 elementAtIndex:v7++] - 3;
      if (v8 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v5 = v4;
        goto LABEL_4;
      }
    }
  }

  v5 = 0;
LABEL_4:

  return v5;
}

- (id)currentCummulatedClippingPath
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->m_firstClipDC)
  {
    v3 = [(MFGraphicsDevice *)self clippingStartDCIndex];
    v4 = [(MFGraphicsDevice *)self currentDCIndex];
    if (v3 <= v4)
    {
      v8 = v4;
      v5 = 0;
      do
      {
        v9 = [(NSMutableArray *)self->m_DCStack objectAtIndexedSubscript:v3];
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v10 = [v9 clippingPaths];
        v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v11)
        {
          v12 = *v16;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v16 != v12)
              {
                objc_enumerationMutation(v10);
              }

              if (v5)
              {
                v6 = [v5 intersectBezierPath:*(*(&v15 + 1) + 8 * i)];

                if (!v6 || [v6 isEmpty])
                {
                  v7 = +[OITSUBezierPath bezierPath];

                  goto LABEL_22;
                }

                v5 = v6;
              }

              else
              {
                v5 = [*(*(&v15 + 1) + 8 * i) copy];
              }
            }

            v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        ++v3;
      }

      while (v3 <= v8);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = v6;
LABEL_22:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)clippingPathByCombiningImplicitClippingPathWithClippingPath:(id)a3 combineMode:(int)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 == 2)
  {
    v8 = 0;
  }

  else if ((a4 & 0xFFFFFFFB) == 1 || (a4 - 3) > 1)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(MFGraphicsDevice *)self implicitClippingPath];
    v8 = [v9 subtractBezierPath:v7];
    if (!v8)
    {
      v8 = +[OITSUBezierPath bezierPath];
    }
  }

  return v8;
}

- (id)clippingPathByCombiningEmptyClippingPathWithClippingPath:(id)a3 combineMode:(int)a4
{
  v5 = a3;
  if (a4 == 4)
  {
    v6 = +[OITSUBezierPath bezierPath];

    v5 = v6;
  }

  v7 = v5;

  return v5;
}

- (id)clippingPathByCombiningClippingPath:(id)a3 withClippingPath:(id)a4 combineMode:(int)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a5 == 4)
  {
    v11 = [v8 intersectBezierPath:v7];
    v10 = [v7 subtractBezierPath:v11];
    v12 = v9;
    goto LABEL_7;
  }

  if (a5 == 3)
  {
    v11 = [v8 uniteWithBezierPath:v7];
    v12 = [v9 intersectBezierPath:v7];
    v10 = [v11 subtractBezierPath:v12];

LABEL_7:
    v9 = v11;
    goto LABEL_8;
  }

  if (a5 != 2)
  {
    goto LABEL_9;
  }

  v10 = [v8 uniteWithBezierPath:v7];
LABEL_8:

  v9 = v10;
LABEL_9:
  if (!v9)
  {
    v9 = +[OITSUBezierPath bezierPath];
  }

  return v9;
}

- (int)selectClippingPath:(id)a3 combineMode:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [(MFGraphicsDevice *)self normalizedClippingPathWithClippingPath:v6];

  if (v4 != 5 && !v7)
  {
    goto LABEL_3;
  }

  if (self->m_firstClipDC)
  {
    if (v4 == 1)
    {
      [(MFGraphicsDevice *)self addClippingPathToCurrentDCAndCurrentContext:v7];
      v8 = v7;
    }

    else
    {
      if (v4 != 5)
      {
        v9 = [(MFGraphicsDevice *)self currentCummulatedClippingPath];
        v10 = v9;
        if (v9)
        {
          if ([v9 isEmpty])
          {
            [(MFGraphicsDevice *)self clippingPathByCombiningEmptyClippingPathWithClippingPath:v7 combineMode:v4];
          }

          else
          {
            [(MFGraphicsDevice *)self clippingPathByCombiningClippingPath:v10 withClippingPath:v7 combineMode:v4];
          }
          v11 = ;
        }

        else
        {
          v11 = [(MFGraphicsDevice *)self clippingPathByCombiningImplicitClippingPathWithClippingPath:v7 combineMode:v4];
        }

        v12 = v11;

        v7 = v12;
      }

      [(MFGraphicsDevice *)self setClippingPath:v7];
      v8 = v7;
    }
  }

  else
  {
    if (!v7)
    {
LABEL_3:
      v8 = 0;
      goto LABEL_19;
    }

    v8 = [(MFGraphicsDevice *)self clippingPathByCombiningImplicitClippingPathWithClippingPath:v7 combineMode:v4];

    if (v8)
    {
      objc_storeStrong(&self->m_firstClipDC, self->m_currentDC);
      [(MFGraphicsDevice *)self addClippingPathToCurrentDCAndCurrentContext:v8];
    }
  }

LABEL_19:

  return 0;
}

- (int)selectClipRegion:(id)a3 combineMode:(int)a4
{
  v4 = *&a4;
  v6 = [a3 pathForClippingWithDeviceContext:self->m_currentDC];
  LODWORD(v4) = [(MFGraphicsDevice *)self selectClippingPath:v6 combineMode:v4];

  return v4;
}

- (int)offsetClipRegionByX:(int)a3 y:(int)a4
{
  if (self->m_firstClipDC)
  {
    v7 = [(MFGraphicsDevice *)self currentCummulatedClippingPath];
    v8 = v7;
    if (v7 && ([v7 isEmpty] & 1) == 0)
    {
      memset(&v17, 0, sizeof(v17));
      CGAffineTransformMakeTranslation(&v17, a3, a4);
      memset(&v16, 0, sizeof(v16));
      v9 = [(MFDeviceContext *)self->m_currentDC getCurrentTransform];
      v10 = v9;
      if (v9)
      {
        [v9 getTransformMatrix];
      }

      else
      {
        memset(&v16, 0, sizeof(v16));
      }

      v14 = v16;
      memset(&v15, 0, sizeof(v15));
      CGAffineTransformInvert(&t1, &v14);
      v12 = v17;
      CGAffineTransformConcat(&v14, &t1, &v12);
      t1 = v16;
      CGAffineTransformConcat(&v15, &v14, &t1);
      v14 = v15;
      [v8 transformUsingAffineTransform:&v14];
      [(MFGraphicsDevice *)self selectClippingPath:v8 combineMode:5];
    }
  }

  return 0;
}

- (int)closeCurrentPath:(BOOL)a3
{
  v4 = [(MFDeviceContext *)self->m_currentDC getPath];
  v5 = [v4 closeFigure];
  if (!v5)
  {
    m_currentDC = self->m_currentDC;
    [v4 currentPoint];
    [(MFDeviceContext *)m_currentDC setPenPosition:?];
  }

  return v5;
}

- (int)selectObject:(int)a3
{
  v3 = *&a3;
  v5 = [(MFObjectTable *)self->m_objectTable getObject:?];
  v6 = objc_opt_class();
  v7 = TSUDynamicCast(v6, v5);
  if (v7)
  {
    v8 = [(MFGraphicsDevice *)self selectClipRegion:v7 combineMode:5];
  }

  else
  {
    v8 = [(MFObjectTable *)self->m_objectTable selectInto:v3 io_DC:self->m_currentDC];
  }

  return v8;
}

- (int)getStockObject:(unsigned int)a3
{
  v3 = *&a3;
  if (![(MFObjectTable *)self->m_stockObjects size])
  {
    [(MFGraphicsDevice *)self createStockObjects];
  }

  m_stockObjects = self->m_stockObjects;
  m_currentDC = self->m_currentDC;

  return [(MFObjectTable *)m_stockObjects selectInto:v3 io_DC:m_currentDC];
}

- (int)createRegion:(id)a3
{
  v4 = [(MFDeviceDriver *)self->m_deviceDriver createRegionWithRects:a3 in_dc:self->m_currentDC];
  if (v4)
  {
    v5 = [(MFObjectTable *)self->m_objectTable putObject:v4 in_objectPos:0xFFFFFFFFLL];
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

- (int)createBrush:(int)a3 in_colour:(id)a4 hatchstyle:(int)a5 index:(unsigned int)a6
{
  v6 = *&a6;
  v7 = *&a5;
  v10 = a4;
  if (a3 == 2)
  {
    m_deviceDriver = self->m_deviceDriver;
    v12 = [(MFGraphicsDevice *)self recolor:v10 fill:1];
    v13 = [(MFDeviceDriver *)m_deviceDriver createHatchBrush:v12 in_hatchstyle:v7];
    goto LABEL_8;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      v14 = 0;
      goto LABEL_11;
    }

    v11 = self->m_deviceDriver;
    v12 = [(MFGraphicsDevice *)self recolor:v10 fill:1];
    v13 = [(MFDeviceDriver *)v11 createSolidBrush:v12];
LABEL_8:
    v14 = v13;

    if (v14)
    {
      goto LABEL_9;
    }

LABEL_11:
    v16 = -1;
    goto LABEL_12;
  }

  v14 = [(MFDeviceDriver *)self->m_deviceDriver createNullBrush];
  if (!v14)
  {
    goto LABEL_11;
  }

LABEL_9:
  v16 = [(MFObjectTable *)self->m_objectTable putObject:v14 in_objectPos:v6];
LABEL_12:

  return v16;
}

- (int)createFontIndirect:(int)a3 lfWidth:(int)a4 lfEscapement:(int)a5 lfOrientation:(int)a6 lfWeight:(int)a7 lfItalic:(BOOL)a8 lfUnderline:(BOOL)a9 lfStrikeOut:(BOOL)a10 lfCharSet:(int)a11 lfOutPrecision:(int)a12 lfClipPrecision:(unsigned __int8)a13 lfQuality:(int)a14 pitch:(int)a15 family:(int)a16 lfFaceName:(id)a17
{
  LODWORD(v23) = a16;
  BYTE4(v22) = a13;
  HIDWORD(v21) = a11;
  LODWORD(v22) = a12;
  LOWORD(v21) = __PAIR16__(a10, a9);
  v18 = [MFDeviceDriver createFont:"createFont:lfWidth:lfEscapement:lfOrientation:lfWeight:lfItalic:lfUnderline:lfStrikeOut:lfCharSet:lfOutPrecision:lfClipPrecision:lfQuality:pitch:family:lfFaceName:" lfWidth:*&a3 lfEscapement:*&a4 lfOrientation:*&a5 lfWeight:*&a6 lfItalic:*&a7 lfUnderline:a8 lfStrikeOut:v21 lfCharSet:v22 lfOutPrecision:*&a14 lfClipPrecision:v23 lfQuality:a17 pitch:? family:? lfFaceName:?];
  if (v18)
  {
    v19 = [(MFObjectTable *)self->m_objectTable putObject:v18 in_objectPos:0xFFFFFFFFLL];
  }

  else
  {
    v19 = -1;
  }

  return v19;
}

- (int)createFontIndirectW:(int)a3 lfWidth:(int)a4 lfEscapement:(int)a5 lfOrientation:(int)a6 lfWeight:(int)a7 lfItalic:(BOOL)a8 lfUnderline:(BOOL)a9 lfStrikeOut:(BOOL)a10 lfCharSet:(int)a11 lfOutPrecision:(int)a12 lfClipPrecision:(unsigned __int8)a13 lfQuality:(int)a14 pitch:(int)a15 family:(int)a16 lfFaceName:(id)a17 elfFullName:(id)a18 elfStyle:(id)a19 elfVersion:(unsigned int)a20 elfStyleSize:(unsigned int)a21 elfMatch:(unsigned int)a22 elfVendorId:(unsigned int)a23 elfCulture:(unsigned int)a24 index:(unsigned int)a25
{
  LODWORD(v32) = a24;
  LODWORD(v31) = a16;
  BYTE4(v30) = a13;
  HIDWORD(v29) = a11;
  LODWORD(v30) = a12;
  LOWORD(v29) = __PAIR16__(a10, a9);
  v26 = [MFDeviceDriver createFontIndirectW:"createFontIndirectW:lfWidth:lfEscapement:lfOrientation:lfWeight:lfItalic:lfUnderline:lfStrikeOut:lfCharSet:lfOutPrecision:lfClipPrecision:lfQuality:pitch:family:lfFaceName:elfFullName:elfStyle:elfVersion:elfStyleSize:elfMatch:elfVendorId:elfCulture:" lfWidth:*&a3 lfEscapement:*&a4 lfOrientation:*&a5 lfWeight:*&a6 lfItalic:*&a7 lfUnderline:a8 lfStrikeOut:v29 lfCharSet:v30 lfOutPrecision:*&a14 lfClipPrecision:v31 lfQuality:a17 pitch:a18 family:a19 lfFaceName:*&a20 elfFullName:*&a22 elfStyle:v32 elfVersion:? elfStyleSize:? elfMatch:? elfVendorId:? elfCulture:?];
  if (v26)
  {
    v27 = [(MFObjectTable *)self->m_objectTable putObject:v26 in_objectPos:a25];
  }

  else
  {
    v27 = -1;
  }

  return v27;
}

- (int)createPen:(int)a3 width:(int)a4 in_colour:(id)a5 in_userStyleArray:(double *)a6 index:(unsigned int)a7
{
  v7 = *&a7;
  v9 = *&a4;
  v10 = *&a3;
  m_deviceDriver = self->m_deviceDriver;
  v13 = [(MFGraphicsDevice *)self recolor:a5 fill:0];
  v14 = [(MFDeviceDriver *)m_deviceDriver createPen:v10 in_width:v9 in_colour:v13 in_userStyleArray:a6];

  LODWORD(v7) = [(MFObjectTable *)self->m_objectTable putObject:v14 in_objectPos:v7];
  return v7;
}

- (id)createColorWithRGBBytes:(unsigned __int8)a3 green:(unsigned __int8)a4 blue:(unsigned __int8)a5 flags:(unsigned __int8)a6
{
  v6 = a3;
  if (a6 == 1)
  {
    v7 = [(MFDeviceContext *)self->m_currentDC getSelectedPalette:a3];
    v8 = [v7 getColour:v6];
  }

  else
  {
    v8 = [OITSUColor colorWithRGBBytes:a3 green:a4 blue:a5];
  }

  return v8;
}

- (int)setPaletteEntries:(unsigned int)a3 in_colours:(id)a4 in_index:(unsigned int)a5
{
  v5 = *&a5;
  v6 = *&a3;
  v8 = a4;
  if (v5 == -1)
  {
    [(MFDeviceContext *)self->m_currentDC getSelectedPalette];
  }

  else
  {
    [(MFObjectTable *)self->m_objectTable getObject:v5];
  }
  v9 = ;
  if ([v9 setEntries:v6 in_colours:v8])
  {
    v10 = 0;
  }

  else
  {
    v10 = -7;
  }

  return v10;
}

- (int)resizePalette:(unsigned int)a3 in_index:(unsigned int)a4
{
  v4 = *&a3;
  if (a4 == -1)
  {
    [(MFDeviceContext *)self->m_currentDC getSelectedPalette];
  }

  else
  {
    [(MFObjectTable *)self->m_objectTable getObject:*&a4];
  }
  v5 = ;
  v6 = [v5 resize:v4] - 1;

  return v6;
}

- (int)createPalette:(id)a3 in_index:(unsigned int)a4
{
  v4 = *&a4;
  v6 = [MFPalette paletteWithColours:a3];
  if (v6)
  {
    v7 = [(MFObjectTable *)self->m_objectTable putObject:v6 in_objectPos:v4];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (int)createPatternBrush:(id)a3 index:(unsigned int)a4 usePaletteForBilevel:(BOOL)a5
{
  v5 = *&a4;
  v7 = [(MFDeviceDriver *)self->m_deviceDriver createPatternBrush:a3 usePaletteForBilevel:a5];
  if (v7)
  {
    v8 = [(MFObjectTable *)self->m_objectTable putObject:v7 in_objectPos:v5];
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (int)setWindowExt:(int)a3 in_y:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  v6 = [(MFDeviceContext *)self->m_currentDC getCurrentTransform];
  LODWORD(v4) = [v6 setWindowExt:v5 in_y:v4];

  return v4;
}

- (int)setWindowOrg:(int)a3 in_y:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  v6 = [(MFDeviceContext *)self->m_currentDC getCurrentTransform];
  LODWORD(v4) = [v6 setWindowOrg:v5 in_y:v4];

  return v4;
}

- (int)setViewportExt:(int)a3 in_y:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  v6 = [(MFDeviceContext *)self->m_currentDC getCurrentTransform];
  LODWORD(v4) = [v6 setViewportExt:v5 in_y:v4];

  return v4;
}

- (int)offsetWindowOrg:(int)a3 in_y:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  v6 = [(MFDeviceContext *)self->m_currentDC getCurrentTransform];
  LODWORD(v4) = [v6 offsetWindowOrg:v5 in_y:v4];

  return v4;
}

- (int)offsetViewportOrg:(int)a3 in_y:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  v6 = [(MFDeviceContext *)self->m_currentDC getCurrentTransform];
  LODWORD(v4) = [v6 offsetViewportOrg:v5 in_y:v4];

  return v4;
}

- (int)setViewportOrg:(int)a3 in_y:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  v6 = [(MFDeviceContext *)self->m_currentDC getCurrentTransform];
  LODWORD(v4) = [v6 setViewportOrg:v5 in_y:v4];

  return v4;
}

- (int)scaleViewportExt:(int)a3 in_xDenom:(int)a4 in_yNum:(int)a5 in_yDenom:(int)a6
{
  v6 = *&a6;
  v7 = *&a5;
  v8 = *&a4;
  v9 = *&a3;
  v10 = [(MFDeviceContext *)self->m_currentDC getCurrentTransform];
  LODWORD(v6) = [v10 scaleViewportExt:v9 in_xDenom:v8 in_yNum:v7 in_yDenom:v6];

  return v6;
}

- (int)scaleWindowExt:(int)a3 in_xDenom:(int)a4 in_yNum:(int)a5 in_yDenom:(int)a6
{
  v6 = *&a6;
  v7 = *&a5;
  v8 = *&a4;
  v9 = *&a3;
  v10 = [(MFDeviceContext *)self->m_currentDC getCurrentTransform];
  LODWORD(v6) = [v10 scaleWindowExt:v9 in_xDenom:v8 in_yNum:v7 in_yDenom:v6];

  return v6;
}

- (int)setWorldTransform:(const CGAffineTransform *)a3
{
  v4 = [(MFDeviceContext *)self->m_currentDC getCurrentTransform];
  LODWORD(a3) = [v4 setWorldTransform:a3];

  return a3;
}

- (int)modifyWorldTransform:(const CGAffineTransform *)a3 in_command:(int)a4
{
  v4 = *&a4;
  v6 = [(MFDeviceContext *)self->m_currentDC getCurrentTransform];
  LODWORD(v4) = [v6 modifyWorldTransform:a3 in_command:v4];

  return v4;
}

- (int)setMapMode:(int)a3
{
  v3 = *&a3;
  v4 = [(MFDeviceContext *)self->m_currentDC getCurrentTransform];
  LODWORD(v3) = [v4 setMapMode:v3];

  return v3;
}

- (int)abortPath
{
  v2 = [(MFDeviceContext *)self->m_currentDC getPath];
  v3 = [v2 abort];

  return v3;
}

- (int)widenPath
{
  v2 = self;
  v3 = [(MFDeviceContext *)self->m_currentDC getPath];
  LODWORD(v2) = [v3 widen:v2->m_currentDC];

  return v2;
}

- (int)strokeAndFillPath:(BOOL)a3 in_fill:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(MFDeviceContext *)self->m_currentDC getPath];
  v8 = v7;
  if (v4)
  {
    v4 = [v7 fill:self->m_currentDC];
  }

  if (v5 && !v4)
  {
    v4 = [v8 stroke:self->m_currentDC];
  }

  return v4;
}

- (int)selectClipPath:(int)a3
{
  v3 = *&a3;
  m_deviceDriver = self->m_deviceDriver;
  v6 = [(MFDeviceContext *)self->m_currentDC getPath];
  v7 = [(MFDeviceDriver *)m_deviceDriver createRegionWithPath:v6];

  if (v7)
  {
    v8 = [(MFGraphicsDevice *)self selectClipRegion:v7 combineMode:v3];
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (int)selectClipRegionWithRects:(id)a3 in_mode:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [v6 count];
  if (v4 != 5 || v7)
  {
    v9 = [(MFDeviceDriver *)self->m_deviceDriver createRegionWithRects:v6 in_dc:self->m_currentDC];
    if (v9)
    {
      v8 = [(MFGraphicsDevice *)self selectClipRegion:v9 combineMode:v4];
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    [(MFGraphicsDevice *)self removeClip];
    v8 = 0;
  }

  return v8;
}

- (int)setClipRegion:(unsigned int)a3
{
  if (a3)
  {
    v4 = [(MFObjectTable *)self->m_objectTable getObject:?];
    if (v4)
    {
      v5 = [(MFGraphicsDevice *)self selectClipRegion:v4 combineMode:5];
    }

    else
    {
      v5 = 0;
    }

    return v5;
  }

  else
  {

    return [(MFGraphicsDevice *)self removeClip];
  }
}

- (int)paintRgnWithRects:(id)a3
{
  v4 = [(MFDeviceDriver *)self->m_deviceDriver createRegionWithRects:a3 in_dc:self->m_currentDC];
  v5 = [(MFDeviceContext *)self->m_currentDC getBrush];
  if (v4)
  {
    v6 = [v4 fill:self->m_currentDC in_brush:v5];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (int)paintRgn:(unsigned int)a3
{
  v4 = [(MFObjectTable *)self->m_objectTable getObject:*&a3];
  v5 = [(MFDeviceContext *)self->m_currentDC getBrush];
  if (v4)
  {
    v6 = [v4 fill:self->m_currentDC in_brush:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int)invertRgnWithRects:(id)a3
{
  v4 = [(MFDeviceDriver *)self->m_deviceDriver createRegionWithRects:a3 in_dc:self->m_currentDC];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 invert:self->m_currentDC];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (int)invertRgn:(unsigned int)a3
{
  v4 = [(MFObjectTable *)self->m_objectTable getObject:*&a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 invert:self->m_currentDC];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int)fillRgnWithRects:(id)a3 in_brushID:(unsigned int)a4
{
  v4 = *&a4;
  v6 = [(MFDeviceDriver *)self->m_deviceDriver createRegionWithRects:a3 in_dc:self->m_currentDC];
  v7 = [(MFObjectTable *)self->m_objectTable getObject:v4];
  if (v6)
  {
    v8 = [v6 fill:self->m_currentDC in_brush:v7];
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (int)fillRgn:(unsigned int)a3 in_brushID:(unsigned int)a4
{
  v4 = *&a4;
  v6 = [(MFObjectTable *)self->m_objectTable getObject:*&a3];
  v7 = [(MFObjectTable *)self->m_objectTable getObject:v4];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [v6 fill:self->m_currentDC in_brush:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int)frameRegionWithRects:(id)a3 in_brushID:(unsigned int)a4 in_width:(int)a5 in_height:(int)a6
{
  v6 = *&a4;
  v8 = [(MFDeviceDriver *)self->m_deviceDriver createRegionWithRects:a3 in_dc:self->m_currentDC, *&a5, *&a6];
  v9 = [(MFObjectTable *)self->m_objectTable getObject:v6];
  if (v8)
  {
    v10 = [v8 frame:self->m_currentDC in_brush:v9];
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (int)frameRegion:(unsigned int)a3 in_brushID:(unsigned int)a4 in_width:(int)a5 in_height:(int)a6
{
  v6 = *&a4;
  v8 = [(MFObjectTable *)self->m_objectTable getObject:*&a3, *&a4, *&a5, *&a6];
  v9 = [(MFObjectTable *)self->m_objectTable getObject:v6];
  if (v8)
  {
    v10 = [v8 frame:self->m_currentDC in_brush:v9];
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (int)bitBlt:(int)a3 in_yDest:(int)a4 in_widthDest:(int)a5 in_heightDest:(int)a6 in_sourceImage:(id)a7 in_xSrc:(int)a8 in_ySrc:(int)a9 in_rop:(unsigned int)a10 in_xform:(CGAffineTransform *)a11 in_colour:(unsigned int)a12
{
  v13 = *&a6;
  v14 = *&a5;
  v15 = *&a4;
  v16 = *&a3;
  v18 = a7;
  [v18 setMonoPalette:self->m_currentDC];
  LODWORD(v21) = a12;
  LODWORD(v20) = a10;
  LODWORD(v13) = [(MFDeviceDriver *)self->m_deviceDriver bitBlt:self->m_currentDC in_xDest:v16 in_yDest:v15 in_widthDest:v14 in_heightDest:v13 in_sourceImage:v18 in_xSrc:__PAIR64__(a9 in_ySrc:a8) in_rop:v20 in_xform:a11 in_colour:v21];

  return v13;
}

- (int)stretchBlt:(int)a3 in_yDest:(int)a4 in_widthDest:(int)a5 in_heightDest:(int)a6 in_sourceImage:(id)a7 in_xSrc:(int)a8 in_ySrc:(int)a9 in_widthSrc:(int)a10 in_heightSrc:(int)a11 in_rop:(unsigned int)a12 in_xform:(CGAffineTransform *)a13 in_colour:(unsigned int)a14
{
  v15 = *&a6;
  v16 = *&a5;
  v17 = *&a4;
  v18 = *&a3;
  v20 = a7;
  [v20 setMonoPalette:self->m_currentDC];
  LODWORD(v23) = a14;
  LODWORD(v22) = a12;
  LODWORD(v15) = [(MFDeviceDriver *)self->m_deviceDriver stretchBlt:self->m_currentDC in_xDest:v18 in_yDest:v17 in_widthDest:v16 in_heightDest:v15 in_sourceImage:v20 in_xSrc:__PAIR64__(a9 in_ySrc:a8) in_widthSrc:__PAIR64__(a11 in_heightSrc:a10) in_rop:v22 in_xform:a13 in_colour:v23];

  return v15;
}

- (int)stretchBlt:(int)a3 in_yDest:(int)a4 in_widthDest:(int)a5 in_heightDest:(int)a6 in_sourceImage:(id)a7 in_xSrc:(int)a8 in_ySrc:(int)a9 in_widthSrc:(int)a10 in_heightSrc:(int)a11 in_rop:(unsigned int)a12 in_xform:(CGAffineTransform *)a13 in_colour:(unsigned int)a14 usePaletteForBilevel:(BOOL)a15
{
  LODWORD(v17) = a14;
  *&v16[4] = *&a9;
  *v16 = a8;
  return [MFDeviceDriver stretchBlt:"stretchBlt:in_xDest:in_yDest:in_widthDest:in_heightDest:in_sourceImage:in_xSrc:in_ySrc:in_widthSrc:in_heightSrc:in_rop:in_xform:in_colour:" in_xDest:self->m_currentDC in_yDest:*&a3 in_widthDest:*&a4 in_heightDest:*&a5 in_sourceImage:*&a6 in_xSrc:a7 in_ySrc:*v16 in_widthSrc:(*&a9 >> 32) in_heightSrc:*&v16[16] in_rop:a13 in_xform:v17 in_colour:?];
}

- (int)alphaBlend:(int)a3 in_yDest:(int)a4 in_widthDest:(int)a5 in_heightDest:(int)a6 in_sourceImage:(id)a7 in_xSrc:(int)a8 in_ySrc:(int)a9 in_widthSrc:(int)a10 in_heightSrc:(int)a11 in_sourceConstantOpacity:(unsigned __int8)a12 in_useSourceAlphaChannel:(BOOL)a13 in_xform:(CGAffineTransform *)a14 in_colour:(unsigned int)a15
{
  v16 = *&a6;
  v17 = *&a5;
  v18 = *&a4;
  v19 = *&a3;
  v21 = a7;
  [v21 setMonoPalette:self->m_currentDC];
  LODWORD(v25) = a15;
  LOWORD(v24) = __PAIR16__(a13, a12);
  HIDWORD(v23) = a11;
  LODWORD(v23) = a8;
  *(&v23 + 4) = __PAIR64__(a10, a9);
  LODWORD(v16) = [MFDeviceDriver alphaBlend:"alphaBlend:in_xDest:in_yDest:in_widthDest:in_heightDest:in_sourceImage:in_xSrc:in_ySrc:in_widthSrc:in_heightSrc:in_sourceConstantOpacity:in_useSourceAlphaChannel:in_xform:in_colour:" in_xDest:self->m_currentDC in_yDest:v19 in_widthDest:v18 in_heightDest:v17 in_sourceImage:v16 in_xSrc:v21 in_ySrc:v23 in_widthSrc:v24 in_heightSrc:a14 in_sourceConstantOpacity:v25 in_useSourceAlphaChannel:? in_xform:? in_colour:?];

  return v16;
}

- (int)maskBlt:(int)a3 in_yDest:(int)a4 in_widthDest:(int)a5 in_heightDest:(int)a6 in_sourceImage:(id)a7 in_xSrc:(int)a8 in_ySrc:(int)a9 in_maskImage:(id)a10 in_xMask:(int)a11 in_yMask:(int)a12 in_rop:(unsigned int)a13 in_xform:(CGAffineTransform *)a14 in_colour:(unsigned int)a15
{
  v16 = *&a6;
  v17 = *&a5;
  v18 = *&a4;
  v19 = *&a3;
  v21 = a7;
  v22 = a10;
  [v21 setMonoPalette:self->m_currentDC];
  LODWORD(v25) = a15;
  LODWORD(v24) = a13;
  LODWORD(v16) = [(MFDeviceDriver *)self->m_deviceDriver maskBlt:self->m_currentDC in_xDest:v19 in_yDest:v18 in_widthDest:v17 in_heightDest:v16 in_sourceImage:v21 in_xSrc:__PAIR64__(a9 in_ySrc:a8) in_maskImage:v22 in_xMask:__PAIR64__(a12 in_yMask:a11) in_rop:v24 in_xform:a14 in_colour:v25];

  return v16;
}

- (int)plgBlt:(CGPoint *)a3 in_sourceImage:(id)a4 in_xSrc:(int)a5 in_ySrc:(int)a6 in_widthSrc:(int)a7 in_heightSrc:(int)a8 in_maskImage:(id)a9 in_xMask:(int)a10 in_yMask:(int)a11 in_xform:(CGAffineTransform *)a12 in_colour:(unsigned int)a13
{
  v14 = *&a7;
  v15 = *&a6;
  v16 = *&a5;
  v19 = a4;
  v20 = a9;
  [v19 setMonoPalette:self->m_currentDC];
  LODWORD(v23) = a13;
  LODWORD(v22) = a8;
  LODWORD(v14) = [(MFDeviceDriver *)self->m_deviceDriver plgBlt:self->m_currentDC in_destinationParallelogram:a3 in_sourceImage:v19 in_xSrc:v16 in_ySrc:v15 in_widthSrc:v14 in_heightSrc:v22 in_maskImage:v20 in_xMask:__PAIR64__(a11 in_yMask:a10) in_xform:a12 in_colour:v23];

  return v14;
}

@end