@interface MFGraphicsDevice
- (CGRect)getCanvas;
- (MFGraphicsDevice)initWithCanvas:(CGRect)canvas;
- (id)clipEverythingClippingPath;
- (id)clippingPathByCombiningClippingPath:(id)path withClippingPath:(id)clippingPath combineMode:(int)mode;
- (id)clippingPathByCombiningEmptyClippingPathWithClippingPath:(id)path combineMode:(int)mode;
- (id)clippingPathByCombiningImplicitClippingPathWithClippingPath:(id)path combineMode:(int)mode;
- (id)createColorWithRGBBytes:(unsigned __int8)bytes green:(unsigned __int8)green blue:(unsigned __int8)blue flags:(unsigned __int8)flags;
- (id)currentCummulatedClippingPath;
- (id)implicitClippingPath;
- (id)normalizedClippingPathWithClippingPath:(id)path;
- (id)recolor:(id)recolor fill:(BOOL)fill;
- (id)recolor:(unsigned __int8)recolor in_green:(unsigned __int8)in_green in_blue:(unsigned __int8)in_blue fill:(BOOL)fill;
- (int)abortPath;
- (int)alphaBlend:(int)blend in_yDest:(int)dest in_widthDest:(int)in_widthDest in_heightDest:(int)in_heightDest in_sourceImage:(id)image in_xSrc:(int)src in_ySrc:(int)in_ySrc in_widthSrc:(int)self0 in_heightSrc:(int)self1 in_sourceConstantOpacity:(unsigned __int8)self2 in_useSourceAlphaChannel:(BOOL)self3 in_xform:(CGAffineTransform *)self4 in_colour:(unsigned int)self5;
- (int)beginPath;
- (int)bitBlt:(int)blt in_yDest:(int)dest in_widthDest:(int)in_widthDest in_heightDest:(int)in_heightDest in_sourceImage:(id)image in_xSrc:(int)src in_ySrc:(int)in_ySrc in_rop:(unsigned int)self0 in_xform:(CGAffineTransform *)self1 in_colour:(unsigned int)self2;
- (int)closeCurrentPath:(BOOL)path;
- (int)createBrush:(int)brush in_colour:(id)in_colour hatchstyle:(int)hatchstyle index:(unsigned int)index;
- (int)createFontIndirect:(int)indirect lfWidth:(int)width lfEscapement:(int)escapement lfOrientation:(int)orientation lfWeight:(int)weight lfItalic:(BOOL)italic lfUnderline:(BOOL)underline lfStrikeOut:(BOOL)self0 lfCharSet:(int)self1 lfOutPrecision:(int)self2 lfClipPrecision:(unsigned __int8)self3 lfQuality:(int)self4 pitch:(int)self5 family:(int)self6 lfFaceName:(id)self7;
- (int)createFontIndirectW:(int)w lfWidth:(int)width lfEscapement:(int)escapement lfOrientation:(int)orientation lfWeight:(int)weight lfItalic:(BOOL)italic lfUnderline:(BOOL)underline lfStrikeOut:(BOOL)self0 lfCharSet:(int)self1 lfOutPrecision:(int)self2 lfClipPrecision:(unsigned __int8)self3 lfQuality:(int)self4 pitch:(int)self5 family:(int)self6 lfFaceName:(id)self7 elfFullName:(id)self8 elfStyle:(id)self9 elfVersion:(unsigned int)version elfStyleSize:(unsigned int)size elfMatch:(unsigned int)match elfVendorId:(unsigned int)id elfCulture:(unsigned int)culture index:(unsigned int)index;
- (int)createPalette:(id)palette in_index:(unsigned int)in_index;
- (int)createPatternBrush:(id)brush index:(unsigned int)index usePaletteForBilevel:(BOOL)bilevel;
- (int)createPen:(int)pen width:(int)width in_colour:(id)in_colour in_userStyleArray:(double *)array index:(unsigned int)index;
- (int)createRegion:(id)region;
- (int)endPath;
- (int)extTextOut:(int)out y:(int)y in_text:(id)in_text options:(int)options left:(int)left top:(int)top right:(int)right bottom:(int)self0 spacingValues:(int *)self1 numValues:(int)self2;
- (int)extTextOutEncoded:(int)encoded y:(int)y in_data:(id)in_data options:(int)options left:(int)left top:(int)top right:(int)right bottom:(int)self0 spacingValues:(int *)self1 numValues:(int)self2;
- (int)fillRgn:(unsigned int)rgn in_brushID:(unsigned int)d;
- (int)fillRgnWithRects:(id)rects in_brushID:(unsigned int)d;
- (int)frameRegion:(unsigned int)region in_brushID:(unsigned int)d in_width:(int)in_width in_height:(int)in_height;
- (int)frameRegionWithRects:(id)rects in_brushID:(unsigned int)d in_width:(int)in_width in_height:(int)in_height;
- (int)getStockObject:(unsigned int)object;
- (int)invertRgn:(unsigned int)rgn;
- (int)invertRgnWithRects:(id)rects;
- (int)maskBlt:(int)blt in_yDest:(int)dest in_widthDest:(int)in_widthDest in_heightDest:(int)in_heightDest in_sourceImage:(id)image in_xSrc:(int)src in_ySrc:(int)in_ySrc in_maskImage:(id)self0 in_xMask:(int)self1 in_yMask:(int)self2 in_rop:(unsigned int)self3 in_xform:(CGAffineTransform *)self4 in_colour:(unsigned int)self5;
- (int)modifyWorldTransform:(const CGAffineTransform *)transform in_command:(int)in_command;
- (int)offsetClipRegionByX:(int)x y:(int)y;
- (int)offsetViewportOrg:(int)org in_y:(int)in_y;
- (int)offsetWindowOrg:(int)org in_y:(int)in_y;
- (int)paintRgn:(unsigned int)rgn;
- (int)paintRgnWithRects:(id)rects;
- (int)plgBlt:(CGPoint *)blt in_sourceImage:(id)image in_xSrc:(int)src in_ySrc:(int)in_ySrc in_widthSrc:(int)in_widthSrc in_heightSrc:(int)in_heightSrc in_maskImage:(id)in_maskImage in_xMask:(int)self0 in_yMask:(int)self1 in_xform:(CGAffineTransform *)self2 in_colour:(unsigned int)self3;
- (int)resizePalette:(unsigned int)palette in_index:(unsigned int)in_index;
- (int)restoreDC;
- (int)restoreDC:(int)c;
- (int)saveDC;
- (int)scaleViewportExt:(int)ext in_xDenom:(int)denom in_yNum:(int)num in_yDenom:(int)in_yDenom;
- (int)scaleWindowExt:(int)ext in_xDenom:(int)denom in_yNum:(int)num in_yDenom:(int)in_yDenom;
- (int)selectClipPath:(int)path;
- (int)selectClipRegion:(id)region combineMode:(int)mode;
- (int)selectClipRegionWithRects:(id)rects in_mode:(int)in_mode;
- (int)selectClippingPath:(id)path combineMode:(int)mode;
- (int)selectObject:(int)object;
- (int)setBkColour:(id)colour;
- (int)setClipRegion:(unsigned int)region;
- (int)setMapMode:(int)mode;
- (int)setPaletteEntries:(unsigned int)entries in_colours:(id)in_colours in_index:(unsigned int)in_index;
- (int)setTextAlign:(BOOL)align textHorizontalAlign:(int)horizontalAlign textVerticalAlign:(int)verticalAlign textDirection:(int)direction;
- (int)setTextColour:(id)colour;
- (int)setViewportExt:(int)ext in_y:(int)in_y;
- (int)setViewportOrg:(int)org in_y:(int)in_y;
- (int)setWindowExt:(int)ext in_y:(int)in_y;
- (int)setWindowOrg:(int)org in_y:(int)in_y;
- (int)setWorldTransform:(const CGAffineTransform *)transform;
- (int)stretchBlt:(int)blt in_yDest:(int)dest in_widthDest:(int)in_widthDest in_heightDest:(int)in_heightDest in_sourceImage:(id)image in_xSrc:(int)src in_ySrc:(int)in_ySrc in_widthSrc:(int)self0 in_heightSrc:(int)self1 in_rop:(unsigned int)self2 in_xform:(CGAffineTransform *)self3 in_colour:(unsigned int)self4;
- (int)stretchBlt:(int)blt in_yDest:(int)dest in_widthDest:(int)in_widthDest in_heightDest:(int)in_heightDest in_sourceImage:(id)image in_xSrc:(int)src in_ySrc:(int)in_ySrc in_widthSrc:(int)self0 in_heightSrc:(int)self1 in_rop:(unsigned int)self2 in_xform:(CGAffineTransform *)self3 in_colour:(unsigned int)self4 usePaletteForBilevel:(BOOL)self5;
- (int)strokeAndFillPath:(BOOL)path in_fill:(BOOL)in_fill;
- (int)textOut:(int)out y:(int)y in_text:(id)in_text;
- (int)textOutEncoded:(int)encoded y:(int)y in_data:(id)in_data;
- (int)widenPath;
- (unint64_t)clippingStartDCIndex;
- (void)addClippingPathToCurrentContext:(id)context dc:(id)dc;
- (void)addClippingPathToCurrentDCAndCurrentContext:(id)context;
- (void)applyClippingOfDCAtIndexToCurrentContext:(unint64_t)context;
- (void)applyDCAtIndexToCurrentContext:(unint64_t)context;
- (void)applyNonClippingOfDCAtIndexToCurrentContext:(unint64_t)context;
- (void)createStockObjects;
- (void)dealloc;
- (void)done;
- (void)restoreGState:(id)state;
- (void)saveGState:(id)state;
- (void)setClippingPath:(id)path;
- (void)setColorMap:(id)map fillMap:(id)fillMap;
@end

@implementation MFGraphicsDevice

- (int)saveDC
{
  v3 = [(MFDeviceContext *)self->m_currentDC copy];
  [(NSMutableArray *)self->m_DCStack addObject:v3];
  lastObject = [(NSMutableArray *)self->m_DCStack lastObject];
  m_currentDC = self->m_currentDC;
  self->m_currentDC = lastObject;

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
  createNullBrush = [(MFDeviceDriver *)self->m_deviceDriver createNullBrush];

  [(MFObjectTable *)self->m_stockObjects putObject:createNullBrush in_objectPos:5];
  v19 = self->m_deviceDriver;
  v20 = [(MFGraphicsDevice *)self recolor:255 in_green:255 in_blue:255 fill:0];
  v38 = [(MFDeviceDriver *)v19 createPen:0 in_width:1 in_colour:v20 in_userStyleArray:0];

  [(MFObjectTable *)self->m_stockObjects putObject:v38 in_objectPos:6];
  v21 = self->m_deviceDriver;
  v22 = [(MFGraphicsDevice *)self recolor:0 in_green:0 in_blue:0 fill:0];
  v23 = [(MFDeviceDriver *)v21 createPen:0 in_width:1 in_colour:v22 in_userStyleArray:0];

  [(MFObjectTable *)self->m_stockObjects putObject:v23 in_objectPos:7];
  createPen = [(MFDeviceDriver *)self->m_deviceDriver createPen];

  [(MFObjectTable *)self->m_stockObjects putObject:createPen in_objectPos:8];
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
  getPath = [(MFDeviceContext *)self->m_currentDC getPath];
  begin = [getPath begin];

  return begin;
}

- (int)endPath
{
  getPath = [(MFDeviceContext *)self->m_currentDC getPath];
  v3 = [getPath end];

  return v3;
}

- (MFGraphicsDevice)initWithCanvas:(CGRect)canvas
{
  height = canvas.size.height;
  width = canvas.size.width;
  y = canvas.origin.y;
  x = canvas.origin.x;
  v22.receiver = self;
  v22.super_class = MFGraphicsDevice;
  v7 = [(MFGraphicsDevice *)&v22 init];
  if (v7)
  {
    height = [[MFPhoneDeviceDriver alloc] initWithCanvas:x, y, width, height];
    m_deviceDriver = v7->m_deviceDriver;
    v7->m_deviceDriver = height;

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
    lastObject = [(NSMutableArray *)v7->m_DCStack lastObject];
    m_currentDC = v7->m_currentDC;
    v7->m_currentDC = lastObject;

    v7->m_gStateStackHeight = 1;
    m_colorMap = v7->m_colorMap;
    v7->m_colorMap = 0;

    m_fillMap = v7->m_fillMap;
    v7->m_fillMap = 0;
  }

  return v7;
}

- (void)setColorMap:(id)map fillMap:(id)fillMap
{
  mapCopy = map;
  fillMapCopy = fillMap;
  m_colorMap = self->m_colorMap;
  self->m_colorMap = mapCopy;
  v10 = mapCopy;

  m_fillMap = self->m_fillMap;
  self->m_fillMap = fillMapCopy;
}

- (id)recolor:(id)recolor fill:(BOOL)fill
{
  fillCopy = fill;
  recolorCopy = recolor;
  if (!fillCopy || (m_fillMap = self->m_fillMap) == 0 || ([(NSDictionary *)m_fillMap objectForKey:recolorCopy], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    m_colorMap = self->m_colorMap;
    if (!m_colorMap || ([(NSDictionary *)m_colorMap objectForKey:recolorCopy], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v8 = recolorCopy;
    }
  }

  return v8;
}

- (id)recolor:(unsigned __int8)recolor in_green:(unsigned __int8)in_green in_blue:(unsigned __int8)in_blue fill:(BOOL)fill
{
  fillCopy = fill;
  v8 = [OITSUColor colorWithRGBBytes:recolor green:in_green blue:in_blue];
  v9 = [(MFGraphicsDevice *)self recolor:v8 fill:fillCopy];

  return v9;
}

- (int)setBkColour:(id)colour
{
  m_currentDC = self->m_currentDC;
  v4 = [(MFGraphicsDevice *)self recolor:colour fill:1];
  [(MFDeviceContext *)m_currentDC setBkColour:v4];

  return 0;
}

- (int)setTextColour:(id)colour
{
  m_currentDC = self->m_currentDC;
  v4 = [(MFGraphicsDevice *)self recolor:colour fill:0];
  [(MFDeviceContext *)m_currentDC setTextColour:v4];

  return 0;
}

- (int)setTextAlign:(BOOL)align textHorizontalAlign:(int)horizontalAlign textVerticalAlign:(int)verticalAlign textDirection:(int)direction
{
  v6 = *&direction;
  v7 = *&verticalAlign;
  v8 = *&horizontalAlign;
  [(MFDeviceContext *)self->m_currentDC setTextUpdateCP:align];
  [(MFDeviceContext *)self->m_currentDC setTextHorizontalAlign:v8];
  [(MFDeviceContext *)self->m_currentDC setTextVerticalAlign:v7];
  [(MFDeviceContext *)self->m_currentDC setTextDirection:v6];
  return 0;
}

- (int)textOut:(int)out y:(int)y in_text:(id)in_text
{
  yCopy = y;
  outCopy = out;
  in_textCopy = in_text;
  v7 = [(MFDeviceDriver *)self->m_deviceDriver textOut:self->m_currentDC px:&outCopy py:&yCopy in_text:in_textCopy];
  if (!v7 && [(MFDeviceContext *)self->m_currentDC getTextUpdateCP])
  {
    [(MFDeviceContext *)self->m_currentDC setPenPosition:outCopy, yCopy];
  }

  return v7;
}

- (int)textOutEncoded:(int)encoded y:(int)y in_data:(id)in_data
{
  v5 = *&y;
  v6 = *&encoded;
  in_dataCopy = in_data;
  getFont = [(MFDeviceContext *)self->m_currentDC getFont];
  v10 = [getFont stringWithBytes:objc_msgSend(in_dataCopy length:{"bytes"), objc_msgSend(in_dataCopy, "length")}];
  LODWORD(v5) = [(MFGraphicsDevice *)self textOut:v6 y:v5 in_text:v10];

  return v5;
}

- (int)extTextOut:(int)out y:(int)y in_text:(id)in_text options:(int)options left:(int)left top:(int)top right:(int)right bottom:(int)self0 spacingValues:(int *)self1 numValues:(int)self2
{
  v13 = *&left;
  v14 = *&options;
  yCopy = y;
  outCopy = out;
  in_textCopy = in_text;
  LODWORD(v20) = numValues;
  LODWORD(v19) = bottom;
  v17 = [(MFDeviceDriver *)self->m_deviceDriver extTextOut:self->m_currentDC px:&outCopy py:&yCopy in_text:in_textCopy options:v14 left:v13 top:__PAIR64__(right right:top) bottom:v19 spacingValues:values numValues:v20];
  if (!v17 && [(MFDeviceContext *)self->m_currentDC getTextUpdateCP])
  {
    [(MFDeviceContext *)self->m_currentDC setPenPosition:outCopy, yCopy];
  }

  return v17;
}

- (int)extTextOutEncoded:(int)encoded y:(int)y in_data:(id)in_data options:(int)options left:(int)left top:(int)top right:(int)right bottom:(int)self0 spacingValues:(int *)self1 numValues:(int)self2
{
  v12 = *&top;
  v13 = *&left;
  v14 = *&options;
  in_dataCopy = in_data;
  getFont = [(MFDeviceContext *)self->m_currentDC getFont];
  v20 = [getFont stringWithBytes:objc_msgSend(in_dataCopy length:{"bytes"), objc_msgSend(in_dataCopy, "length")}];
  encodedCopy = encoded;
  yCopy = y;
  getCharset = [getFont getCharset];
  numValuesCopy = numValues;
  if ((getCharset - 78) > 0x3A || ((1 << (getCharset - 78)) & 0x51C000000000001) == 0)
  {
    goto LABEL_15;
  }

  v24 = OCNsStringEncodingForWindowsCharSet(getCharset);
  v25 = [v20 length];
  v35 = v14;
  v36 = v13;
  v37 = v12;
  v26 = [MEMORY[0x277CCABB0] numberWithInt:numValues];
  unsignedIntegerValue = [v26 unsignedIntegerValue];

  if (v25 < unsignedIntegerValue)
  {
    unsignedIntegerValue = v25;
  }

  if (!unsignedIntegerValue)
  {
LABEL_14:
    numValuesCopy = unsignedIntegerValue;
    v13 = v36;
    v12 = v37;
    v14 = v35;
LABEL_15:
    LODWORD(v34) = numValuesCopy;
    v32 = [(MFGraphicsDevice *)self extTextOut:encodedCopy y:yCopy in_text:v20 options:v14 left:v13 top:v12 right:__PAIR64__(bottom bottom:right) spacingValues:values numValues:v34];
    goto LABEL_17;
  }

  v28 = 0;
  v29 = 0;
  while (1)
  {
    if (values && v28 + v29 < numValues)
    {
      values[v28] = values[v28 + v29];
    }

    v40 = [v20 characterAtIndex:v28];
    v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharactersNoCopy:&v40 length:1 freeWhenDone:0];
    v31 = [v30 lengthOfBytesUsingEncoding:v24];

    if (!v31)
    {
      break;
    }

    v29 = v29 + v31 - 1;
    if (unsignedIntegerValue == ++v28)
    {
      goto LABEL_14;
    }
  }

  v32 = -7;
LABEL_17:

  return v32;
}

- (void)saveGState:(id)state
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  ++self->m_gStateStackHeight;
}

- (void)restoreGState:(id)state
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
  reverseObjectEnumerator = [(NSMutableArray *)self->m_DCStack reverseObjectEnumerator];
  v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v13 != v6)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
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
        v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)applyNonClippingOfDCAtIndexToCurrentContext:(unint64_t)context
{
  v4 = [(NSMutableArray *)self->m_DCStack objectAtIndexedSubscript:context];
  getCurrentTransform = [v4 getCurrentTransform];
  [getCurrentTransform updateTransform];
}

- (id)implicitClippingPath
{
  [(MFGraphicsDevice *)self getCanvas];

  return [OITSUBezierPath bezierPathWithRect:?];
}

- (id)clipEverythingClippingPath
{
  implicitClippingPath = [(MFGraphicsDevice *)self implicitClippingPath];
  [implicitClippingPath controlPointBounds];
  CGAffineTransformMakeTranslation(&v6, v3 + v3, v4 + v4);
  [implicitClippingPath transformUsingAffineTransform:&v6];

  return implicitClippingPath;
}

- (void)addClippingPathToCurrentContext:(id)context dc:(id)dc
{
  contextCopy = context;
  dcCopy = dc;
  if ([contextCopy isEmpty])
  {
    clipEverythingClippingPath = [(MFGraphicsDevice *)self clipEverythingClippingPath];

    contextCopy = clipEverythingClippingPath;
  }

  memset(&v13, 0, sizeof(v13));
  getCurrentTransform = [dcCopy getCurrentTransform];
  v10 = getCurrentTransform;
  if (getCurrentTransform)
  {
    [getCurrentTransform getTransformMatrix];
  }

  else
  {
    memset(&v12, 0, sizeof(v12));
  }

  CGAffineTransformInvert(&v13, &v12);

  v11 = [contextCopy copy];
  v12 = v13;
  [v11 transformUsingAffineTransform:&v12];
  [v11 addClip];
}

- (void)applyClippingOfDCAtIndexToCurrentContext:(unint64_t)context
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [(NSMutableArray *)self->m_DCStack objectAtIndexedSubscript:context];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  clippingPaths = [v4 clippingPaths];
  v6 = [clippingPaths countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(clippingPaths);
        }

        [(MFGraphicsDevice *)self addClippingPathToCurrentContext:*(*(&v9 + 1) + 8 * v8++) dc:v4];
      }

      while (v6 != v8);
      v6 = [clippingPaths countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)applyDCAtIndexToCurrentContext:(unint64_t)context
{
  [(MFGraphicsDevice *)self applyNonClippingOfDCAtIndexToCurrentContext:?];

  [(MFGraphicsDevice *)self applyClippingOfDCAtIndexToCurrentContext:context];
}

- (void)addClippingPathToCurrentDCAndCurrentContext:(id)context
{
  contextCopy = context;
  clippingPaths = [(MFDeviceContext *)self->m_currentDC clippingPaths];
  [clippingPaths addObject:contextCopy];

  [(MFGraphicsDevice *)self addClippingPathToCurrentContext:contextCopy dc:self->m_currentDC];
}

- (void)setClippingPath:(id)path
{
  pathCopy = path;
  firstClipDCIndex = [(MFGraphicsDevice *)self firstClipDCIndex];
  clippingStartDCIndex = [(MFGraphicsDevice *)self clippingStartDCIndex];
  currentDCIndex = [(MFGraphicsDevice *)self currentDCIndex];
  if (currentDCIndex - clippingStartDCIndex != -1)
  {
    v7 = currentDCIndex - clippingStartDCIndex + 1;
    do
    {
      [(MFGraphicsDevice *)self restoreGState:@"setClippingPath unwind states"];
      --v7;
    }

    while (v7);
  }

  [(MFGraphicsDevice *)self saveGState:@"setClippingPath save state before m_firstClipDC"];
  while (firstClipDCIndex <= currentDCIndex)
  {
    [(MFGraphicsDevice *)self applyNonClippingOfDCAtIndexToCurrentContext:firstClipDCIndex++];
  }

  [(MFDeviceContext *)self->m_currentDC setClippingIsRestarted:1];
  clippingPaths = [(MFDeviceContext *)self->m_currentDC clippingPaths];
  [clippingPaths removeAllObjects];

  if (pathCopy)
  {
    [(MFGraphicsDevice *)self addClippingPathToCurrentDCAndCurrentContext:pathCopy];
  }
}

- (int)restoreDC
{
  if ([(NSMutableArray *)self->m_DCStack count]>= 2)
  {
    clippingIsRestarted = [(MFDeviceContext *)self->m_currentDC clippingIsRestarted];
    m_firstClipDC = self->m_firstClipDC;
    if (m_firstClipDC == self->m_currentDC)
    {
      self->m_firstClipDC = 0;

      clippingIsRestarted = 0;
    }

    [(NSMutableArray *)self->m_DCStack removeLastObject];
    lastObject = [(NSMutableArray *)self->m_DCStack lastObject];
    m_currentDC = self->m_currentDC;
    self->m_currentDC = lastObject;

    [(MFGraphicsDevice *)self restoreGState:@"restoreDC"];
    if (clippingIsRestarted)
    {
      [(MFGraphicsDevice *)self saveGState:@"restoreDC save state before m_firstClipDC"];
      firstClipDCIndex = [(MFGraphicsDevice *)self firstClipDCIndex];
      clippingStartDCIndex = [(MFGraphicsDevice *)self clippingStartDCIndex];
      currentDCIndex = [(MFGraphicsDevice *)self currentDCIndex];
      if (firstClipDCIndex < clippingStartDCIndex)
      {
        do
        {
          [(MFGraphicsDevice *)self applyNonClippingOfDCAtIndexToCurrentContext:firstClipDCIndex++];
        }

        while (clippingStartDCIndex != firstClipDCIndex);
      }

      [(MFGraphicsDevice *)self applyDCAtIndexToCurrentContext:clippingStartDCIndex];
      for (i = clippingStartDCIndex + 1; i <= currentDCIndex; ++i)
      {
        [(MFGraphicsDevice *)self saveGState:@"restoreDC apply DC between clippingStartDCIndex+1 and currentDCIndex"];
        [(MFGraphicsDevice *)self applyDCAtIndexToCurrentContext:i];
      }
    }
  }

  return 0;
}

- (int)restoreDC:(int)c
{
  if (c < 0)
  {
    if (-c > 1)
    {
      v5 = -c;
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

  else if (c)
  {
    while ([(NSMutableArray *)self->m_DCStack count]> c)
    {
      [(MFGraphicsDevice *)self restoreDC];
    }
  }

  return 0;
}

- (id)normalizedClippingPathWithClippingPath:(id)path
{
  pathCopy = path;
  v4 = pathCopy;
  if (pathCopy && ([pathCopy isEmpty] & 1) == 0)
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
    clippingStartDCIndex = [(MFGraphicsDevice *)self clippingStartDCIndex];
    currentDCIndex = [(MFGraphicsDevice *)self currentDCIndex];
    if (clippingStartDCIndex <= currentDCIndex)
    {
      v8 = currentDCIndex;
      v5 = 0;
      do
      {
        v9 = [(NSMutableArray *)self->m_DCStack objectAtIndexedSubscript:clippingStartDCIndex];
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        clippingPaths = [v9 clippingPaths];
        v11 = [clippingPaths countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v11)
        {
          v12 = *v16;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v16 != v12)
              {
                objc_enumerationMutation(clippingPaths);
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

            v11 = [clippingPaths countByEnumeratingWithState:&v15 objects:v19 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        ++clippingStartDCIndex;
      }

      while (clippingStartDCIndex <= v8);
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

- (id)clippingPathByCombiningImplicitClippingPathWithClippingPath:(id)path combineMode:(int)mode
{
  pathCopy = path;
  v7 = pathCopy;
  if (mode == 2)
  {
    v8 = 0;
  }

  else if ((mode & 0xFFFFFFFB) == 1 || (mode - 3) > 1)
  {
    v8 = pathCopy;
  }

  else
  {
    implicitClippingPath = [(MFGraphicsDevice *)self implicitClippingPath];
    v8 = [implicitClippingPath subtractBezierPath:v7];
    if (!v8)
    {
      v8 = +[OITSUBezierPath bezierPath];
    }
  }

  return v8;
}

- (id)clippingPathByCombiningEmptyClippingPathWithClippingPath:(id)path combineMode:(int)mode
{
  pathCopy = path;
  if (mode == 4)
  {
    v6 = +[OITSUBezierPath bezierPath];

    pathCopy = v6;
  }

  v7 = pathCopy;

  return pathCopy;
}

- (id)clippingPathByCombiningClippingPath:(id)path withClippingPath:(id)clippingPath combineMode:(int)mode
{
  pathCopy = path;
  clippingPathCopy = clippingPath;
  v9 = clippingPathCopy;
  if (mode == 4)
  {
    v11 = [clippingPathCopy intersectBezierPath:pathCopy];
    v10 = [pathCopy subtractBezierPath:v11];
    v12 = v9;
    goto LABEL_7;
  }

  if (mode == 3)
  {
    v11 = [clippingPathCopy uniteWithBezierPath:pathCopy];
    v12 = [v9 intersectBezierPath:pathCopy];
    v10 = [v11 subtractBezierPath:v12];

LABEL_7:
    v9 = v11;
    goto LABEL_8;
  }

  if (mode != 2)
  {
    goto LABEL_9;
  }

  v10 = [clippingPathCopy uniteWithBezierPath:pathCopy];
LABEL_8:

  v9 = v10;
LABEL_9:
  if (!v9)
  {
    v9 = +[OITSUBezierPath bezierPath];
  }

  return v9;
}

- (int)selectClippingPath:(id)path combineMode:(int)mode
{
  v4 = *&mode;
  pathCopy = path;
  v7 = [(MFGraphicsDevice *)self normalizedClippingPathWithClippingPath:pathCopy];

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
        currentCummulatedClippingPath = [(MFGraphicsDevice *)self currentCummulatedClippingPath];
        v10 = currentCummulatedClippingPath;
        if (currentCummulatedClippingPath)
        {
          if ([currentCummulatedClippingPath isEmpty])
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

- (int)selectClipRegion:(id)region combineMode:(int)mode
{
  v4 = *&mode;
  v6 = [region pathForClippingWithDeviceContext:self->m_currentDC];
  LODWORD(v4) = [(MFGraphicsDevice *)self selectClippingPath:v6 combineMode:v4];

  return v4;
}

- (int)offsetClipRegionByX:(int)x y:(int)y
{
  if (self->m_firstClipDC)
  {
    currentCummulatedClippingPath = [(MFGraphicsDevice *)self currentCummulatedClippingPath];
    v8 = currentCummulatedClippingPath;
    if (currentCummulatedClippingPath && ([currentCummulatedClippingPath isEmpty] & 1) == 0)
    {
      memset(&v17, 0, sizeof(v17));
      CGAffineTransformMakeTranslation(&v17, x, y);
      memset(&v16, 0, sizeof(v16));
      getCurrentTransform = [(MFDeviceContext *)self->m_currentDC getCurrentTransform];
      v10 = getCurrentTransform;
      if (getCurrentTransform)
      {
        [getCurrentTransform getTransformMatrix];
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

- (int)closeCurrentPath:(BOOL)path
{
  getPath = [(MFDeviceContext *)self->m_currentDC getPath];
  closeFigure = [getPath closeFigure];
  if (!closeFigure)
  {
    m_currentDC = self->m_currentDC;
    [getPath currentPoint];
    [(MFDeviceContext *)m_currentDC setPenPosition:?];
  }

  return closeFigure;
}

- (int)selectObject:(int)object
{
  v3 = *&object;
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

- (int)getStockObject:(unsigned int)object
{
  v3 = *&object;
  if (![(MFObjectTable *)self->m_stockObjects size])
  {
    [(MFGraphicsDevice *)self createStockObjects];
  }

  m_stockObjects = self->m_stockObjects;
  m_currentDC = self->m_currentDC;

  return [(MFObjectTable *)m_stockObjects selectInto:v3 io_DC:m_currentDC];
}

- (int)createRegion:(id)region
{
  v4 = [(MFDeviceDriver *)self->m_deviceDriver createRegionWithRects:region in_dc:self->m_currentDC];
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

- (int)createBrush:(int)brush in_colour:(id)in_colour hatchstyle:(int)hatchstyle index:(unsigned int)index
{
  v6 = *&index;
  v7 = *&hatchstyle;
  in_colourCopy = in_colour;
  if (brush == 2)
  {
    m_deviceDriver = self->m_deviceDriver;
    v12 = [(MFGraphicsDevice *)self recolor:in_colourCopy fill:1];
    v13 = [(MFDeviceDriver *)m_deviceDriver createHatchBrush:v12 in_hatchstyle:v7];
    goto LABEL_8;
  }

  if (brush != 1)
  {
    if (brush)
    {
      createNullBrush = 0;
      goto LABEL_11;
    }

    v11 = self->m_deviceDriver;
    v12 = [(MFGraphicsDevice *)self recolor:in_colourCopy fill:1];
    v13 = [(MFDeviceDriver *)v11 createSolidBrush:v12];
LABEL_8:
    createNullBrush = v13;

    if (createNullBrush)
    {
      goto LABEL_9;
    }

LABEL_11:
    v16 = -1;
    goto LABEL_12;
  }

  createNullBrush = [(MFDeviceDriver *)self->m_deviceDriver createNullBrush];
  if (!createNullBrush)
  {
    goto LABEL_11;
  }

LABEL_9:
  v16 = [(MFObjectTable *)self->m_objectTable putObject:createNullBrush in_objectPos:v6];
LABEL_12:

  return v16;
}

- (int)createFontIndirect:(int)indirect lfWidth:(int)width lfEscapement:(int)escapement lfOrientation:(int)orientation lfWeight:(int)weight lfItalic:(BOOL)italic lfUnderline:(BOOL)underline lfStrikeOut:(BOOL)self0 lfCharSet:(int)self1 lfOutPrecision:(int)self2 lfClipPrecision:(unsigned __int8)self3 lfQuality:(int)self4 pitch:(int)self5 family:(int)self6 lfFaceName:(id)self7
{
  LODWORD(v23) = family;
  BYTE4(v22) = clipPrecision;
  HIDWORD(v21) = set;
  LODWORD(v22) = precision;
  LOWORD(v21) = __PAIR16__(out, underline);
  v18 = [MFDeviceDriver createFont:"createFont:lfWidth:lfEscapement:lfOrientation:lfWeight:lfItalic:lfUnderline:lfStrikeOut:lfCharSet:lfOutPrecision:lfClipPrecision:lfQuality:pitch:family:lfFaceName:" lfWidth:*&indirect lfEscapement:*&width lfOrientation:*&escapement lfWeight:*&orientation lfItalic:*&weight lfUnderline:italic lfStrikeOut:v21 lfCharSet:v22 lfOutPrecision:*&quality lfClipPrecision:v23 lfQuality:name pitch:? family:? lfFaceName:?];
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

- (int)createFontIndirectW:(int)w lfWidth:(int)width lfEscapement:(int)escapement lfOrientation:(int)orientation lfWeight:(int)weight lfItalic:(BOOL)italic lfUnderline:(BOOL)underline lfStrikeOut:(BOOL)self0 lfCharSet:(int)self1 lfOutPrecision:(int)self2 lfClipPrecision:(unsigned __int8)self3 lfQuality:(int)self4 pitch:(int)self5 family:(int)self6 lfFaceName:(id)self7 elfFullName:(id)self8 elfStyle:(id)self9 elfVersion:(unsigned int)version elfStyleSize:(unsigned int)size elfMatch:(unsigned int)match elfVendorId:(unsigned int)id elfCulture:(unsigned int)culture index:(unsigned int)index
{
  LODWORD(v32) = culture;
  LODWORD(v31) = family;
  BYTE4(v30) = clipPrecision;
  HIDWORD(v29) = set;
  LODWORD(v30) = precision;
  LOWORD(v29) = __PAIR16__(out, underline);
  v26 = [MFDeviceDriver createFontIndirectW:"createFontIndirectW:lfWidth:lfEscapement:lfOrientation:lfWeight:lfItalic:lfUnderline:lfStrikeOut:lfCharSet:lfOutPrecision:lfClipPrecision:lfQuality:pitch:family:lfFaceName:elfFullName:elfStyle:elfVersion:elfStyleSize:elfMatch:elfVendorId:elfCulture:" lfWidth:*&w lfEscapement:*&width lfOrientation:*&escapement lfWeight:*&orientation lfItalic:*&weight lfUnderline:italic lfStrikeOut:v29 lfCharSet:v30 lfOutPrecision:*&quality lfClipPrecision:v31 lfQuality:name pitch:fullName family:style lfFaceName:*&version elfFullName:*&match elfStyle:v32 elfVersion:? elfStyleSize:? elfMatch:? elfVendorId:? elfCulture:?];
  if (v26)
  {
    v27 = [(MFObjectTable *)self->m_objectTable putObject:v26 in_objectPos:index];
  }

  else
  {
    v27 = -1;
  }

  return v27;
}

- (int)createPen:(int)pen width:(int)width in_colour:(id)in_colour in_userStyleArray:(double *)array index:(unsigned int)index
{
  v7 = *&index;
  v9 = *&width;
  v10 = *&pen;
  m_deviceDriver = self->m_deviceDriver;
  v13 = [(MFGraphicsDevice *)self recolor:in_colour fill:0];
  v14 = [(MFDeviceDriver *)m_deviceDriver createPen:v10 in_width:v9 in_colour:v13 in_userStyleArray:array];

  LODWORD(v7) = [(MFObjectTable *)self->m_objectTable putObject:v14 in_objectPos:v7];
  return v7;
}

- (id)createColorWithRGBBytes:(unsigned __int8)bytes green:(unsigned __int8)green blue:(unsigned __int8)blue flags:(unsigned __int8)flags
{
  bytesCopy = bytes;
  if (flags == 1)
  {
    v7 = [(MFDeviceContext *)self->m_currentDC getSelectedPalette:bytes];
    v8 = [v7 getColour:bytesCopy];
  }

  else
  {
    v8 = [OITSUColor colorWithRGBBytes:bytes green:green blue:blue];
  }

  return v8;
}

- (int)setPaletteEntries:(unsigned int)entries in_colours:(id)in_colours in_index:(unsigned int)in_index
{
  v5 = *&in_index;
  v6 = *&entries;
  in_coloursCopy = in_colours;
  if (v5 == -1)
  {
    [(MFDeviceContext *)self->m_currentDC getSelectedPalette];
  }

  else
  {
    [(MFObjectTable *)self->m_objectTable getObject:v5];
  }
  v9 = ;
  if ([v9 setEntries:v6 in_colours:in_coloursCopy])
  {
    v10 = 0;
  }

  else
  {
    v10 = -7;
  }

  return v10;
}

- (int)resizePalette:(unsigned int)palette in_index:(unsigned int)in_index
{
  v4 = *&palette;
  if (in_index == -1)
  {
    [(MFDeviceContext *)self->m_currentDC getSelectedPalette];
  }

  else
  {
    [(MFObjectTable *)self->m_objectTable getObject:*&in_index];
  }
  v5 = ;
  v6 = [v5 resize:v4] - 1;

  return v6;
}

- (int)createPalette:(id)palette in_index:(unsigned int)in_index
{
  v4 = *&in_index;
  v6 = [MFPalette paletteWithColours:palette];
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

- (int)createPatternBrush:(id)brush index:(unsigned int)index usePaletteForBilevel:(BOOL)bilevel
{
  v5 = *&index;
  v7 = [(MFDeviceDriver *)self->m_deviceDriver createPatternBrush:brush usePaletteForBilevel:bilevel];
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

- (int)setWindowExt:(int)ext in_y:(int)in_y
{
  v4 = *&in_y;
  v5 = *&ext;
  getCurrentTransform = [(MFDeviceContext *)self->m_currentDC getCurrentTransform];
  LODWORD(v4) = [getCurrentTransform setWindowExt:v5 in_y:v4];

  return v4;
}

- (int)setWindowOrg:(int)org in_y:(int)in_y
{
  v4 = *&in_y;
  v5 = *&org;
  getCurrentTransform = [(MFDeviceContext *)self->m_currentDC getCurrentTransform];
  LODWORD(v4) = [getCurrentTransform setWindowOrg:v5 in_y:v4];

  return v4;
}

- (int)setViewportExt:(int)ext in_y:(int)in_y
{
  v4 = *&in_y;
  v5 = *&ext;
  getCurrentTransform = [(MFDeviceContext *)self->m_currentDC getCurrentTransform];
  LODWORD(v4) = [getCurrentTransform setViewportExt:v5 in_y:v4];

  return v4;
}

- (int)offsetWindowOrg:(int)org in_y:(int)in_y
{
  v4 = *&in_y;
  v5 = *&org;
  getCurrentTransform = [(MFDeviceContext *)self->m_currentDC getCurrentTransform];
  LODWORD(v4) = [getCurrentTransform offsetWindowOrg:v5 in_y:v4];

  return v4;
}

- (int)offsetViewportOrg:(int)org in_y:(int)in_y
{
  v4 = *&in_y;
  v5 = *&org;
  getCurrentTransform = [(MFDeviceContext *)self->m_currentDC getCurrentTransform];
  LODWORD(v4) = [getCurrentTransform offsetViewportOrg:v5 in_y:v4];

  return v4;
}

- (int)setViewportOrg:(int)org in_y:(int)in_y
{
  v4 = *&in_y;
  v5 = *&org;
  getCurrentTransform = [(MFDeviceContext *)self->m_currentDC getCurrentTransform];
  LODWORD(v4) = [getCurrentTransform setViewportOrg:v5 in_y:v4];

  return v4;
}

- (int)scaleViewportExt:(int)ext in_xDenom:(int)denom in_yNum:(int)num in_yDenom:(int)in_yDenom
{
  v6 = *&in_yDenom;
  v7 = *&num;
  v8 = *&denom;
  v9 = *&ext;
  getCurrentTransform = [(MFDeviceContext *)self->m_currentDC getCurrentTransform];
  LODWORD(v6) = [getCurrentTransform scaleViewportExt:v9 in_xDenom:v8 in_yNum:v7 in_yDenom:v6];

  return v6;
}

- (int)scaleWindowExt:(int)ext in_xDenom:(int)denom in_yNum:(int)num in_yDenom:(int)in_yDenom
{
  v6 = *&in_yDenom;
  v7 = *&num;
  v8 = *&denom;
  v9 = *&ext;
  getCurrentTransform = [(MFDeviceContext *)self->m_currentDC getCurrentTransform];
  LODWORD(v6) = [getCurrentTransform scaleWindowExt:v9 in_xDenom:v8 in_yNum:v7 in_yDenom:v6];

  return v6;
}

- (int)setWorldTransform:(const CGAffineTransform *)transform
{
  getCurrentTransform = [(MFDeviceContext *)self->m_currentDC getCurrentTransform];
  LODWORD(transform) = [getCurrentTransform setWorldTransform:transform];

  return transform;
}

- (int)modifyWorldTransform:(const CGAffineTransform *)transform in_command:(int)in_command
{
  v4 = *&in_command;
  getCurrentTransform = [(MFDeviceContext *)self->m_currentDC getCurrentTransform];
  LODWORD(v4) = [getCurrentTransform modifyWorldTransform:transform in_command:v4];

  return v4;
}

- (int)setMapMode:(int)mode
{
  v3 = *&mode;
  getCurrentTransform = [(MFDeviceContext *)self->m_currentDC getCurrentTransform];
  LODWORD(v3) = [getCurrentTransform setMapMode:v3];

  return v3;
}

- (int)abortPath
{
  getPath = [(MFDeviceContext *)self->m_currentDC getPath];
  abort = [getPath abort];

  return abort;
}

- (int)widenPath
{
  selfCopy = self;
  getPath = [(MFDeviceContext *)self->m_currentDC getPath];
  LODWORD(selfCopy) = [getPath widen:selfCopy->m_currentDC];

  return selfCopy;
}

- (int)strokeAndFillPath:(BOOL)path in_fill:(BOOL)in_fill
{
  in_fillCopy = in_fill;
  pathCopy = path;
  getPath = [(MFDeviceContext *)self->m_currentDC getPath];
  v8 = getPath;
  if (in_fillCopy)
  {
    in_fillCopy = [getPath fill:self->m_currentDC];
  }

  if (pathCopy && !in_fillCopy)
  {
    in_fillCopy = [v8 stroke:self->m_currentDC];
  }

  return in_fillCopy;
}

- (int)selectClipPath:(int)path
{
  v3 = *&path;
  m_deviceDriver = self->m_deviceDriver;
  getPath = [(MFDeviceContext *)self->m_currentDC getPath];
  v7 = [(MFDeviceDriver *)m_deviceDriver createRegionWithPath:getPath];

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

- (int)selectClipRegionWithRects:(id)rects in_mode:(int)in_mode
{
  v4 = *&in_mode;
  rectsCopy = rects;
  v7 = [rectsCopy count];
  if (v4 != 5 || v7)
  {
    v9 = [(MFDeviceDriver *)self->m_deviceDriver createRegionWithRects:rectsCopy in_dc:self->m_currentDC];
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

- (int)setClipRegion:(unsigned int)region
{
  if (region)
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

- (int)paintRgnWithRects:(id)rects
{
  v4 = [(MFDeviceDriver *)self->m_deviceDriver createRegionWithRects:rects in_dc:self->m_currentDC];
  getBrush = [(MFDeviceContext *)self->m_currentDC getBrush];
  if (v4)
  {
    v6 = [v4 fill:self->m_currentDC in_brush:getBrush];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (int)paintRgn:(unsigned int)rgn
{
  v4 = [(MFObjectTable *)self->m_objectTable getObject:*&rgn];
  getBrush = [(MFDeviceContext *)self->m_currentDC getBrush];
  if (v4)
  {
    v6 = [v4 fill:self->m_currentDC in_brush:getBrush];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int)invertRgnWithRects:(id)rects
{
  v4 = [(MFDeviceDriver *)self->m_deviceDriver createRegionWithRects:rects in_dc:self->m_currentDC];
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

- (int)invertRgn:(unsigned int)rgn
{
  v4 = [(MFObjectTable *)self->m_objectTable getObject:*&rgn];
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

- (int)fillRgnWithRects:(id)rects in_brushID:(unsigned int)d
{
  v4 = *&d;
  v6 = [(MFDeviceDriver *)self->m_deviceDriver createRegionWithRects:rects in_dc:self->m_currentDC];
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

- (int)fillRgn:(unsigned int)rgn in_brushID:(unsigned int)d
{
  v4 = *&d;
  v6 = [(MFObjectTable *)self->m_objectTable getObject:*&rgn];
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

- (int)frameRegionWithRects:(id)rects in_brushID:(unsigned int)d in_width:(int)in_width in_height:(int)in_height
{
  v6 = *&d;
  v8 = [(MFDeviceDriver *)self->m_deviceDriver createRegionWithRects:rects in_dc:self->m_currentDC, *&in_width, *&in_height];
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

- (int)frameRegion:(unsigned int)region in_brushID:(unsigned int)d in_width:(int)in_width in_height:(int)in_height
{
  v6 = *&d;
  v8 = [(MFObjectTable *)self->m_objectTable getObject:*&region, *&d, *&in_width, *&in_height];
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

- (int)bitBlt:(int)blt in_yDest:(int)dest in_widthDest:(int)in_widthDest in_heightDest:(int)in_heightDest in_sourceImage:(id)image in_xSrc:(int)src in_ySrc:(int)in_ySrc in_rop:(unsigned int)self0 in_xform:(CGAffineTransform *)self1 in_colour:(unsigned int)self2
{
  v13 = *&in_heightDest;
  v14 = *&in_widthDest;
  v15 = *&dest;
  v16 = *&blt;
  imageCopy = image;
  [imageCopy setMonoPalette:self->m_currentDC];
  LODWORD(v21) = in_colour;
  LODWORD(v20) = in_rop;
  LODWORD(v13) = [(MFDeviceDriver *)self->m_deviceDriver bitBlt:self->m_currentDC in_xDest:v16 in_yDest:v15 in_widthDest:v14 in_heightDest:v13 in_sourceImage:imageCopy in_xSrc:__PAIR64__(in_ySrc in_ySrc:src) in_rop:v20 in_xform:in_xform in_colour:v21];

  return v13;
}

- (int)stretchBlt:(int)blt in_yDest:(int)dest in_widthDest:(int)in_widthDest in_heightDest:(int)in_heightDest in_sourceImage:(id)image in_xSrc:(int)src in_ySrc:(int)in_ySrc in_widthSrc:(int)self0 in_heightSrc:(int)self1 in_rop:(unsigned int)self2 in_xform:(CGAffineTransform *)self3 in_colour:(unsigned int)self4
{
  v15 = *&in_heightDest;
  v16 = *&in_widthDest;
  v17 = *&dest;
  v18 = *&blt;
  imageCopy = image;
  [imageCopy setMonoPalette:self->m_currentDC];
  LODWORD(v23) = in_colour;
  LODWORD(v22) = in_rop;
  LODWORD(v15) = [(MFDeviceDriver *)self->m_deviceDriver stretchBlt:self->m_currentDC in_xDest:v18 in_yDest:v17 in_widthDest:v16 in_heightDest:v15 in_sourceImage:imageCopy in_xSrc:__PAIR64__(in_ySrc in_ySrc:src) in_widthSrc:__PAIR64__(in_heightSrc in_heightSrc:in_widthSrc) in_rop:v22 in_xform:in_xform in_colour:v23];

  return v15;
}

- (int)stretchBlt:(int)blt in_yDest:(int)dest in_widthDest:(int)in_widthDest in_heightDest:(int)in_heightDest in_sourceImage:(id)image in_xSrc:(int)src in_ySrc:(int)in_ySrc in_widthSrc:(int)self0 in_heightSrc:(int)self1 in_rop:(unsigned int)self2 in_xform:(CGAffineTransform *)self3 in_colour:(unsigned int)self4 usePaletteForBilevel:(BOOL)self5
{
  LODWORD(v17) = in_colour;
  *&v16[4] = *&in_ySrc;
  *v16 = src;
  return [MFDeviceDriver stretchBlt:"stretchBlt:in_xDest:in_yDest:in_widthDest:in_heightDest:in_sourceImage:in_xSrc:in_ySrc:in_widthSrc:in_heightSrc:in_rop:in_xform:in_colour:" in_xDest:self->m_currentDC in_yDest:*&blt in_widthDest:*&dest in_heightDest:*&in_widthDest in_sourceImage:*&in_heightDest in_xSrc:image in_ySrc:*v16 in_widthSrc:(*&in_ySrc >> 32) in_heightSrc:*&v16[16] in_rop:in_xform in_xform:v17 in_colour:?];
}

- (int)alphaBlend:(int)blend in_yDest:(int)dest in_widthDest:(int)in_widthDest in_heightDest:(int)in_heightDest in_sourceImage:(id)image in_xSrc:(int)src in_ySrc:(int)in_ySrc in_widthSrc:(int)self0 in_heightSrc:(int)self1 in_sourceConstantOpacity:(unsigned __int8)self2 in_useSourceAlphaChannel:(BOOL)self3 in_xform:(CGAffineTransform *)self4 in_colour:(unsigned int)self5
{
  v16 = *&in_heightDest;
  v17 = *&in_widthDest;
  v18 = *&dest;
  v19 = *&blend;
  imageCopy = image;
  [imageCopy setMonoPalette:self->m_currentDC];
  LODWORD(v25) = in_colour;
  LOWORD(v24) = __PAIR16__(channel, opacity);
  HIDWORD(v23) = in_heightSrc;
  LODWORD(v23) = src;
  *(&v23 + 4) = __PAIR64__(in_widthSrc, in_ySrc);
  LODWORD(v16) = [MFDeviceDriver alphaBlend:"alphaBlend:in_xDest:in_yDest:in_widthDest:in_heightDest:in_sourceImage:in_xSrc:in_ySrc:in_widthSrc:in_heightSrc:in_sourceConstantOpacity:in_useSourceAlphaChannel:in_xform:in_colour:" in_xDest:self->m_currentDC in_yDest:v19 in_widthDest:v18 in_heightDest:v17 in_sourceImage:v16 in_xSrc:imageCopy in_ySrc:v23 in_widthSrc:v24 in_heightSrc:in_xform in_sourceConstantOpacity:v25 in_useSourceAlphaChannel:? in_xform:? in_colour:?];

  return v16;
}

- (int)maskBlt:(int)blt in_yDest:(int)dest in_widthDest:(int)in_widthDest in_heightDest:(int)in_heightDest in_sourceImage:(id)image in_xSrc:(int)src in_ySrc:(int)in_ySrc in_maskImage:(id)self0 in_xMask:(int)self1 in_yMask:(int)self2 in_rop:(unsigned int)self3 in_xform:(CGAffineTransform *)self4 in_colour:(unsigned int)self5
{
  v16 = *&in_heightDest;
  v17 = *&in_widthDest;
  v18 = *&dest;
  v19 = *&blt;
  imageCopy = image;
  in_maskImageCopy = in_maskImage;
  [imageCopy setMonoPalette:self->m_currentDC];
  LODWORD(v25) = in_colour;
  LODWORD(v24) = in_rop;
  LODWORD(v16) = [(MFDeviceDriver *)self->m_deviceDriver maskBlt:self->m_currentDC in_xDest:v19 in_yDest:v18 in_widthDest:v17 in_heightDest:v16 in_sourceImage:imageCopy in_xSrc:__PAIR64__(in_ySrc in_ySrc:src) in_maskImage:in_maskImageCopy in_xMask:__PAIR64__(in_yMask in_yMask:mask) in_rop:v24 in_xform:in_xform in_colour:v25];

  return v16;
}

- (int)plgBlt:(CGPoint *)blt in_sourceImage:(id)image in_xSrc:(int)src in_ySrc:(int)in_ySrc in_widthSrc:(int)in_widthSrc in_heightSrc:(int)in_heightSrc in_maskImage:(id)in_maskImage in_xMask:(int)self0 in_yMask:(int)self1 in_xform:(CGAffineTransform *)self2 in_colour:(unsigned int)self3
{
  v14 = *&in_widthSrc;
  v15 = *&in_ySrc;
  v16 = *&src;
  imageCopy = image;
  in_maskImageCopy = in_maskImage;
  [imageCopy setMonoPalette:self->m_currentDC];
  LODWORD(v23) = in_colour;
  LODWORD(v22) = in_heightSrc;
  LODWORD(v14) = [(MFDeviceDriver *)self->m_deviceDriver plgBlt:self->m_currentDC in_destinationParallelogram:blt in_sourceImage:imageCopy in_xSrc:v16 in_ySrc:v15 in_widthSrc:v14 in_heightSrc:v22 in_maskImage:in_maskImageCopy in_xMask:__PAIR64__(in_yMask in_yMask:mask) in_xform:in_xform in_colour:v23];

  return v14;
}

@end