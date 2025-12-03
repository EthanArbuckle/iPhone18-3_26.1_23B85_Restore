@interface MFPhoneDeviceDriver
+ (int)getROP:(id)p;
- (CGRect)getCanvas;
- (MFPhoneDeviceDriver)initWithCanvas:(CGRect)canvas;
- (id)createBitmap:(id)bitmap in_width:(int)in_width in_height:(int)in_height in_planes:(int)in_planes in_bitsPerPixel:(int)pixel in_bitmap:(const char *)in_bitmap in_bitmapSize:(unsigned int)size;
- (id)createDIBitmap:(id)bitmap in_dib:(const char *)in_dib in_dibSize:(unsigned int)size in_usage:(int)in_usage;
- (id)createDIBitmap:(id)bitmap in_header:(const char *)in_header in_headerSize:(unsigned int)size in_bitmap:(const char *)in_bitmap in_bitmapSize:(unsigned int)in_bitmapSize in_usage:(int)in_usage;
- (id)createFont:(int)font lfWidth:(int)width lfEscapement:(int)escapement lfOrientation:(int)orientation lfWeight:(int)weight lfItalic:(BOOL)italic lfUnderline:(BOOL)underline lfStrikeOut:(BOOL)self0 lfCharSet:(int)self1 lfOutPrecision:(int)self2 lfClipPrecision:(unsigned __int8)self3 lfQuality:(int)self4 pitch:(int)self5 family:(int)self6 lfFaceName:(id)self7;
- (id)createFontIndirectW:(int)w lfWidth:(int)width lfEscapement:(int)escapement lfOrientation:(int)orientation lfWeight:(int)weight lfItalic:(BOOL)italic lfUnderline:(BOOL)underline lfStrikeOut:(BOOL)self0 lfCharSet:(int)self1 lfOutPrecision:(int)self2 lfClipPrecision:(unsigned __int8)self3 lfQuality:(int)self4 pitch:(int)self5 family:(int)self6 lfFaceName:(id)self7 elfFullName:(id)self8 elfStyle:(id)self9 elfVersion:(unsigned int)version elfStyleSize:(unsigned int)size elfMatch:(unsigned int)match elfVendorId:(unsigned int)id elfCulture:(unsigned int)culture;
- (id)createHatchBrush:(id)brush in_hatchstyle:(int)in_hatchstyle;
- (id)createPath;
- (id)createPatternBrush:(id)brush usePaletteForBilevel:(BOOL)bilevel;
- (id)createPen:(int)pen in_width:(int)in_width in_colour:(id)in_colour in_userStyleArray:(double *)array;
- (id)createRegionWithPath:(id)path;
- (id)createRegionWithRects:(id)rects in_dc:(id)in_dc;
- (id)createSolidBrush:(id)brush;
- (int)activateTransform:(CGAffineTransform *)transform;
- (int)alphaBlend:(id)blend in_xDest:(int)dest in_yDest:(int)in_yDest in_widthDest:(int)in_widthDest in_heightDest:(int)in_heightDest in_sourceImage:(id)image in_xSrc:(int)src in_ySrc:(int)self0 in_widthSrc:(int)self1 in_heightSrc:(int)self2 in_sourceConstantOpacity:(unsigned __int8)self3 in_useSourceAlphaChannel:(BOOL)self4 in_xform:(CGAffineTransform *)self5 in_colour:(unsigned int)self6;
- (int)angleArc:(id)arc x:(int)x y:(int)y radius:(unsigned int)radius startAngle:(double)angle sweepAngle:(double)sweepAngle;
- (int)arc:(id)arc nLeftRect:(int)rect nTopRect:(int)topRect nRightRect:(int)rightRect nBottomRect:(int)bottomRect nXStartArc:(int)startArc nYStartArc:(int)yStartArc nXEndArc:(int)self0 nYEndArc:(int)self1;
- (int)arcTo:(id)to nLeftRect:(int)rect nTopRect:(int)topRect nRightRect:(int)rightRect nBottomRect:(int)bottomRect nXStartArc:(int)arc nYStartArc:(int)startArc nXEndArc:(int)self0 nYEndArc:(int)self1;
- (int)bezier:(id)bezier x:(int)x y:(int)y x2:(int)x2 y2:(int)y2 x3:(int)x3 y3:(int)y3 x4:(int)self0 y4:(int)self1;
- (int)bezierTo:(id)to x:(int)x y:(int)y x2:(int)x2 y2:(int)y2 x3:(int)x3 y3:(int)y3;
- (int)bitBlt:(id)blt in_xDest:(int)dest in_yDest:(int)in_yDest in_widthDest:(int)in_widthDest in_heightDest:(int)in_heightDest in_sourceImage:(id)image in_xSrc:(int)src in_ySrc:(int)self0 in_rop:(unsigned int)self1 in_xform:(CGAffineTransform *)self2 in_colour:(unsigned int)self3;
- (int)chord:(id)chord leftRect:(int)rect topRect:(int)topRect rightRect:(int)rightRect bottomRect:(int)bottomRect xStartArc:(int)arc yStartArc:(int)startArc xEndArc:(int)self0 yEndArc:(int)self1;
- (int)ellipse:(id)ellipse x1:(int)x1 y1:(int)y1 x2:(int)x2 y2:(int)y2;
- (int)excludeClipRect:(CGRect)rect;
- (int)extTextOut:(id)out px:(int *)px py:(int *)py in_text:(id)in_text options:(int)options left:(int)left top:(int)top right:(int)self0 bottom:(int)self1 spacingValues:(int *)self2 numValues:(int)self3;
- (int)fillRectangle:(id)rectangle x1:(int)x1 y1:(int)y1 x2:(int)x2 y2:(int)y2;
- (int)intersectClipRect:(CGRect)rect;
- (int)lineTo:(id)to x:(double)x y:(double)y;
- (int)patBlt:(id)blt in_x:(int)in_x in_y:(int)in_y in_width:(int)in_width in_height:(int)in_height in_rop:(unsigned int)in_rop;
- (int)pie:(id)pie nLeftRect:(int)rect nTopRect:(int)topRect nRightRect:(int)rightRect nBottomRect:(int)bottomRect nXStartArc:(int)arc nYStartArc:(int)startArc nXEndArc:(int)self0 nYEndArc:(int)self1;
- (int)polyPolygon:(id)polygon in_points:(CGPoint *)in_points in_polyCounts:(int *)counts in_count:(int)in_count;
- (int)polyPolyline:(id)polyline in_points:(CGPoint *)in_points in_polyCounts:(int *)counts in_count:(int)in_count;
- (int)polygon:(id)polygon in_points:(CGPoint *)in_points in_count:(int)in_count;
- (int)polyline:(id)polyline in_points:(CGPoint *)in_points in_count:(int)in_count;
- (int)rectangle:(id)rectangle x1:(int)x1 y1:(int)y1 x2:(int)x2 y2:(int)y2;
- (int)roundRect:(id)rect left:(int)left top:(int)top right:(int)right bottom:(int)bottom rx:(double)rx ry:(double)ry;
- (int)setViewBox:(double)box top:(double)top width:(double)width height:(double)height;
- (int)stretchBlt:(id)blt in_xDest:(int)dest in_yDest:(int)in_yDest in_widthDest:(int)in_widthDest in_heightDest:(int)in_heightDest in_sourceImage:(id)image in_xSrc:(int)src in_ySrc:(int)self0 in_widthSrc:(int)self1 in_heightSrc:(int)self2 in_rop:(unsigned int)self3 in_xform:(CGAffineTransform *)self4 in_colour:(unsigned int)self5;
- (int)textOut:(id)out px:(int *)px py:(int *)py in_text:(id)in_text;
- (void)applyTransformsToCurrentContext;
- (void)drawBezierPath:(id)path dc:(id)dc fill:(BOOL)fill stroke:(BOOL)stroke;
- (void)updateViewBoxTransform;
@end

@implementation MFPhoneDeviceDriver

- (id)createPath
{
  v2 = objc_alloc_init(MFPhonePath);

  return v2;
}

- (void)updateViewBoxTransform
{
  v2 = self->m_canvas.size.width / self->m_viewBox.size.width;
  x = self->m_viewBox.origin.x;
  y = self->m_viewBox.origin.y;
  v5 = self->m_canvas.origin.x;
  v6 = self->m_canvas.origin.y;
  v7.f64[0] = self->m_canvas.size.height / self->m_viewBox.size.height;
  self->m_viewBoxTransform.a = v2;
  self->m_viewBoxTransform.b = 0.0;
  self->m_viewBoxTransform.c = 0.0;
  v7.f64[1] = v5 + -v2 * x;
  v8 = vcvt_f32_f64(v7);
  *v7.f64 = v6 + -v8.f32[0] * y;
  *&self->m_viewBoxTransform.d = vcvtq_f64_f32(v8);
  self->m_viewBoxTransform.ty = *v7.f64;
  [(MFPhoneDeviceDriver *)self applyTransformsToCurrentContext];
}

- (CGRect)getCanvas
{
  x = self->m_canvas.origin.x;
  y = self->m_canvas.origin.y;
  width = self->m_canvas.size.width;
  height = self->m_canvas.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (MFPhoneDeviceDriver)initWithCanvas:(CGRect)canvas
{
  height = canvas.size.height;
  width = canvas.size.width;
  y = canvas.origin.y;
  x = canvas.origin.x;
  v19.receiver = self;
  v19.super_class = MFPhoneDeviceDriver;
  v7 = [(MFPhoneDeviceDriver *)&v19 init];
  v8 = v7;
  if (v7)
  {
    v7->m_canvas.origin.x = x;
    v7->m_canvas.origin.y = y;
    v7->m_canvas.size.width = width;
    v7->m_canvas.size.height = height;
    v9 = TCCurrentGraphicsContext();
    CGContextGetCTM(&v18, v9);
    v11 = *&v18.c;
    v10 = *&v18.tx;
    *&v8->m_canvasTransform.a = *&v18.a;
    *&v8->m_canvasTransform.c = v11;
    *&v8->m_canvasTransform.tx = v10;
    v8->m_viewBox.origin.x = x;
    v8->m_viewBox.origin.y = y;
    v8->m_viewBox.size.width = width;
    v8->m_viewBox.size.height = height;
    v12 = MEMORY[0x277CBF2C0];
    v13 = *(MEMORY[0x277CBF2C0] + 16);
    *&v8->m_viewBoxTransform.a = *MEMORY[0x277CBF2C0];
    v14 = *v12;
    v15 = v12[1];
    *&v8->m_viewBoxTransform.c = v13;
    v16 = v12[2];
    *&v8->m_viewBoxTransform.tx = v16;
    *&v8->m_worldToDeviceTransform.tx = v16;
    *&v8->m_worldToDeviceTransform.a = v14;
    *&v8->m_worldToDeviceTransform.c = v15;
    *&v8->m_combinedTransform.tx = v12[2];
    *&v8->m_combinedTransform.c = v15;
    *&v8->m_combinedTransform.a = v14;
  }

  return v8;
}

- (void)drawBezierPath:(id)path dc:(id)dc fill:(BOOL)fill stroke:(BOOL)stroke
{
  strokeCopy = stroke;
  fillCopy = fill;
  pathCopy = path;
  dcCopy = dc;
  getPath = [dcCopy getPath];
  if ([getPath isOpen])
  {
    [getPath appendBezierPath:pathCopy dc:dcCopy];
  }

  else
  {
    if (fillCopy)
    {
      getBrush = [dcCopy getBrush];
      [getBrush fillPath:dcCopy in_path:pathCopy];
    }

    if (strokeCopy)
    {
      getPen = [dcCopy getPen];
      [getPen strokePath:dcCopy in_path:pathCopy];
    }
  }
}

+ (int)getROP:(id)p
{
  pCopy = p;
  getPath = [pCopy getPath];
  if ([getPath isOpen])
  {
    v5 = 3;
  }

  else
  {
    getRop2 = [pCopy getRop2];
    if (getRop2 == 16)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    if (getRop2 == 1)
    {
      v5 = 0;
    }

    else
    {
      v5 = v7;
    }
  }

  return v5;
}

- (int)textOut:(id)out px:(int *)px py:(int *)py in_text:(id)in_text
{
  LODWORD(v8) = 0;
  LODWORD(v7) = 0;
  return [(MFPhoneDeviceDriver *)self extTextOut:out px:px py:py in_text:in_text options:0 left:0 top:0 right:v7 bottom:0 spacingValues:v8 numValues:?];
}

- (int)extTextOut:(id)out px:(int *)px py:(int *)py in_text:(id)in_text options:(int)options left:(int)left top:(int)top right:(int)self0 bottom:(int)self1 spacingValues:(int *)self2 numValues:(int)self3
{
  optionsCopy = options;
  v113 = *MEMORY[0x277D85DE8];
  outCopy = out;
  in_textCopy = in_text;
  v111 = outCopy;
  getFont = [outCopy getFont];
  v104 = optionsCopy;
  v108 = getFont;
  createCTFontEquivalent = [getFont createCTFontEquivalent];
  v20 = *px;
  v21 = *py;
  getPath = [v111 getPath];
  if ([(__CFString *)in_textCopy length])
  {
    if ([v111 getTextUpdateCP])
    {
      [v111 getPenPosition];
      v24 = v23;
      v26 = v25;
    }

    else
    {
      v24 = v20;
      v26 = v21;
    }

    v28 = in_textCopy;
    if (!in_textCopy)
    {
      v28 = &stru_286EE1130;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      faceName = [getFont faceName];
      faceName2 = [getFont faceName];
      v31 = [TCFontUtils stringByFixingString:v28 latinFontFamilyName:faceName symbolFontFamilyName:faceName2];

      v32 = [(__CFString *)v31 length];
      v28 = v31;
      if (!v32)
      {
LABEL_19:
        CFRelease(createCTFontEquivalent);
        v27 = 0;
        goto LABEL_101;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_19;
      }

      v32 = [(__CFString *)v28 length]/ 2;
      if (!v32)
      {
        goto LABEL_19;
      }
    }

    v33 = malloc_type_malloc(2 * v32, 0x1000040BDFB0063uLL);
    bzero(v33, 2 * v32);
    v34 = malloc_type_malloc(2 * v32 + 2, 0x1000040BDFB0063uLL);
    font = createCTFontEquivalent;
    pxCopy = px;
    v103 = v32;
    advances = malloc_type_malloc(16 * v32, 0x1000040451B5BE8uLL);
    v35 = malloc_type_malloc(8 * v32, 0x6004044C4A2DFuLL);
    v36 = v35;
    if (v33 && v34 && advances && v35)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(__CFString *)v28 getCharacters:v34 range:0, v32];
        CTFontGetGlyphsForCharacters(font, v34, v33, v32);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          memcpy(v33, [(__CFString *)v28 bytes], 2 * v32);
        }
      }

      CTFontGetAdvancesForGlyphs(font, kCTFontOrientationDefault, v33, advances, v32);
      if (v32 >= 1)
      {
        bzero(v36, 8 * v32);
      }

      v110 = v28;
      v102 = getPath;
      objc_opt_class();
      characters = v34;
      if ((v32 < 1) | ((objc_opt_isKindOfClass() & 1) == 0))
      {
        v40 = 0;
      }

      else
      {
        v37 = 0;
        v38 = v32;
        while (*&v33[v37])
        {
          v37 += 2;
          if (2 * v32 == v37)
          {
            v39 = font;
            goto LABEL_40;
          }
        }

        v114.length = [(__CFString *)v28 length];
        v114.location = 0;
        v39 = CTFontCreateForString(font, v28, v114);
        CFRelease(font);
        CTFontGetGlyphsForCharacters(v39, characters, v33, v32);
        CTFontGetAdvancesForGlyphs(v39, kCTFontOrientationDefault, v33, advances, v32);
LABEL_40:
        v40 = 0;
        v41 = v33;
        v42 = characters;
        v43 = advances;
        v44 = v36;
        do
        {
          if (!*v41)
          {
            v45 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharactersNoCopy:v42 length:1 freeWhenDone:0];
            v115.length = [(__CFString *)v45 length];
            v115.location = 0;
            v46 = CTFontCreateForString(v39, v45, v115);
            CTFontGetGlyphsForCharacters(v46, v42, v41, 1);
            CTFontGetAdvancesForGlyphs(v46, kCTFontOrientationDefault, v41, v43, 1);
            *v44 = v46;

            v40 = 1;
          }

          ++v44;
          ++v43;
          ++v42;
          ++v41;
          --v38;
        }

        while (v38);
        font = v39;
      }

      getTextCharExtra = [v111 getTextCharExtra];
      numValuesCopy = numValues;
      valuesCopy = values;
      v50 = 0.0;
      if (v103 >= 1)
      {
        v51 = v103;
        p_width = &advances->width;
        do
        {
          v53 = *p_width;
          p_width += 2;
          v50 = v53 + v50;
          --v51;
        }

        while (v51);
      }

      v54 = getTextCharExtra;
      tx = v24;
      if (values && numValues)
      {
        v55 = 0.0;
        if (numValues >= 1)
        {
          numValuesCopy2 = numValues;
          valuesCopy2 = values;
          do
          {
            v58 = *valuesCopy2++;
            v55 = v55 + v58;
            --numValuesCopy2;
          }

          while (numValuesCopy2);
        }

        if ((v40 & 1) != 0 || (v59 = CTFontCopyFamilyName(font), [v108 faceName], v60 = objc_claimAutoreleasedReturnValue(), v61 = objc_msgSend(v60, "isEqualToString:", v59), v60, CFRelease(v59), (v61 & 1) == 0))
        {
          numValuesCopy = 0;
          valuesCopy = 0;
          if (v103 < 2)
          {
            v54 = 0.0;
          }

          else
          {
            v54 = (v55 - v50) / (v103 - 1);
          }
        }
      }

      else
      {
        v55 = v50 + (v103 * v54);
      }

      Ascent = CTFontGetAscent(font);
      Descent = CTFontGetDescent(font);
      Leading = CTFontGetLeading(font);
      getTextVerticalAlign = [v111 getTextVerticalAlign];
      v65 = Ascent;
      v66 = Descent;
      v67 = fabsf(v66);
      v68 = v65;
      if (getTextVerticalAlign)
      {
        if (getTextVerticalAlign == 8)
        {
          v68 = -v67;
        }

        else
        {
          v68 = 0.0;
        }
      }

      getTextHorizontalAlign = [v111 getTextHorizontalAlign];
      v70 = v55;
      if (getTextHorizontalAlign != 2)
      {
        if (getTextHorizontalAlign == 6)
        {
          v70 = v55 * 0.5;
        }

        else
        {
          v70 = 0.0;
        }
      }

      v71 = TCCurrentGraphicsContext();
      CGContextSaveGState(v71);
      CGContextGetCTM(&v112, v71);
      d = v112.d;
      if (v112.d < 0.0)
      {
        v68 = v65 - v68;
      }

      CGContextTranslateCTM(v71, tx, v26);
      [v108 escapement];
      v74 = v73;
      if (v74 != 0.0)
      {
        CGContextRotateCTM(v71, (360.0 - v74) * 3.14159265 / 180.0);
      }

      CGContextTranslateCTM(v71, -v70, -v68);
      if (d < 0.0)
      {
        CGContextTranslateCTM(v71, 0.0, (v65 * 0.5));
        CGContextScaleCTM(v71, 1.0, -1.0);
        CGContextTranslateCTM(v71, 0.0, -(v65 * 0.5));
      }

      v75 = v67 + v65;
      if (((v104 & 2) != 0 || [v111 getBkMode] == 2) && (objc_msgSend(v102, "isOpen") & 1) == 0)
      {
        getBkColour = [v111 getBkColour];
        [getBkColour set];

        v116.origin.y = -v67;
        v116.size.width = v55;
        v116.size.height = v75;
        v116.origin.x = 0.0;
        CGContextFillRect(v71, v116);
      }

      if (([v102 isOpen] & 1) == 0)
      {
        getTextColour = [v111 getTextColour];
        [getTextColour set];
      }

      Size = CTFontGetSize(font);
      CGContextSetFontSize(v71, Size);
      v105 = v33;
      v79 = CTFontCopyGraphicsFont(font, 0);
      CGContextSetFont(v71, v79);
      if (v103 >= 1)
      {
        v80 = 0;
        v81 = 0;
        v82 = v54;
        v83 = numValuesCopy;
        v84 = 0.0;
        v85 = v105;
        v86 = &advances->width;
        while (1)
        {
          v87 = v81;
          v81 = *(v36 + v80);
          if (v81 != v87)
          {
            if (v81)
            {
              v88 = CTFontCopyGraphicsFont(*(v36 + v80), 0);
              CGContextSetFont(v71, v88);
              CFRelease(v88);
            }

            else
            {
              CGContextSetFont(v71, v79);
            }
          }

          v112.a = v84;
          v112.b = 0.0;
          v89 = TCCurrentGraphicsContext();
          CGContextShowGlyphsAtPositions(v89, v85, &v112, 1uLL);
          if (v80 < v83)
          {
            break;
          }

          v84 = *v86 + v82 + v84;
          if (v81)
          {
            goto LABEL_91;
          }

LABEL_92:
          ++v80;
          v86 += 2;
          ++v85;
          if (v103 == v80)
          {
            goto LABEL_93;
          }
        }

        if (valuesCopy)
        {
          v84 = v84 + valuesCopy[v80];
        }

        if (!v81)
        {
          goto LABEL_92;
        }

LABEL_91:
        CFRelease(v81);
        *(v36 + v80) = 0;
        goto LABEL_92;
      }

LABEL_93:
      CFRelease(v79);
      v28 = v110;
      if (([v108 strikeout] & 1) != 0 || objc_msgSend(v108, "underline") && (objc_msgSend(v102, "isOpen") & 1) == 0)
      {
        getTextColour2 = [v111 getTextColour];
        [getTextColour2 set];

        [v108 fontHeight];
        CGContextSetLineWidth(v71, fabs(v91) / 20.0);
        strikeout = [v108 strikeout];
        v93 = Leading;
        v94 = v75 + v93;
        if (strikeout)
        {
          v95 = v94 * 0.2;
          v112.a = 0.0;
          v112.b = v95;
          v112.c = v55;
          v112.d = v95;
          CGContextStrokeLineSegments(v71, &v112, 2uLL);
        }

        if ([v108 underline])
        {
          v96 = v94 * -0.1;
          v112.a = 0.0;
          v112.b = v96;
          v112.c = v55;
          v112.d = v96;
          CGContextStrokeLineSegments(v71, &v112, 2uLL);
        }
      }

      CGContextRestoreGState(v71);
      *pxCopy = (tx + v70 + v55);
      CFRelease(font);
      free(v105);
      free(characters);
      free(advances);
      free(v36);
      v27 = 0;
      getPath = v102;
    }

    else
    {
      if (v33)
      {
        free(v33);
      }

      if (v34)
      {
        free(v34);
      }

      if (advances)
      {
        free(advances);
      }

      if (v36)
      {
        free(v36);
      }

      v27 = -4;
    }
  }

  else
  {
    CFRelease(createCTFontEquivalent);
    v27 = 0;
    v28 = in_textCopy;
  }

LABEL_101:

  return v27;
}

- (int)arc:(id)arc nLeftRect:(int)rect nTopRect:(int)topRect nRightRect:(int)rightRect nBottomRect:(int)bottomRect nXStartArc:(int)startArc nYStartArc:(int)yStartArc nXEndArc:(int)self0 nYEndArc:(int)self1
{
  arcCopy = arc;
  getArcDirection = [arcCopy getArcDirection];
  v19 = objc_alloc_init(OITSUBezierPath);
  [(OITSUBezierPath *)v19 appendBezierPathWithArcWithEllipseBounds:getArcDirection == 1 startRadialVector:1 endRadialVector:rect angleSign:topRect startNewPath:(rightRect - rect), (bottomRect - topRect), startArc, yStartArc, endArc, yEndArc];
  [(MFPhoneDeviceDriver *)self drawBezierPath:v19 dc:arcCopy fill:0 stroke:1];

  return 0;
}

- (int)arcTo:(id)to nLeftRect:(int)rect nTopRect:(int)topRect nRightRect:(int)rightRect nBottomRect:(int)bottomRect nXStartArc:(int)arc nYStartArc:(int)startArc nXEndArc:(int)self0 nYEndArc:(int)self1
{
  toCopy = to;
  getArcDirection = [toCopy getArcDirection];
  v19 = objc_alloc_init(OITSUBezierPath);
  [toCopy getPenPosition];
  [(OITSUBezierPath *)v19 moveToPoint:?];
  [(OITSUBezierPath *)v19 appendBezierPathWithArcWithEllipseBounds:getArcDirection == 1 startRadialVector:0 endRadialVector:rect angleSign:topRect startNewPath:(rightRect - rect), (bottomRect - topRect), arc, startArc, endArc, yEndArc];
  [(MFPhoneDeviceDriver *)self drawBezierPath:v19 dc:toCopy fill:0 stroke:1];
  [(OITSUBezierPath *)v19 currentPoint];
  [toCopy setPenPosition:?];

  return 0;
}

- (int)angleArc:(id)arc x:(int)x y:(int)y radius:(unsigned int)radius startAngle:(double)angle sweepAngle:(double)sweepAngle
{
  arcCopy = arc;
  v15 = 360.0 - angle;
  v16 = fmod(360.0 - angle, 360.0);
  v17 = fmod(v15 - sweepAngle, 360.0);
  v18 = objc_alloc_init(OITSUBezierPath);
  [arcCopy getPenPosition];
  [(OITSUBezierPath *)v18 moveToPoint:?];
  [(OITSUBezierPath *)v18 appendBezierPathWithArcWithCenter:sweepAngle > 0.0 radius:x startAngle:y endAngle:radius clockwise:v16, v17];
  [(MFPhoneDeviceDriver *)self drawBezierPath:v18 dc:arcCopy fill:0 stroke:1];
  [(OITSUBezierPath *)v18 currentPoint];
  [arcCopy setPenPosition:?];

  return 0;
}

- (int)pie:(id)pie nLeftRect:(int)rect nTopRect:(int)topRect nRightRect:(int)rightRect nBottomRect:(int)bottomRect nXStartArc:(int)arc nYStartArc:(int)startArc nXEndArc:(int)self0 nYEndArc:(int)self1
{
  pieCopy = pie;
  getArcDirection = [pieCopy getArcDirection];
  v19 = objc_alloc_init(OITSUBezierPath);
  v20 = rightRect - rect;
  v21 = bottomRect - topRect;
  [(OITSUBezierPath *)v19 moveToPoint:vcvtd_n_f64_s32(v20, 1uLL) + rect, vcvtd_n_f64_s32(v21, 1uLL) + topRect];
  [(OITSUBezierPath *)v19 appendBezierPathWithArcWithEllipseBounds:getArcDirection == 1 startRadialVector:0 endRadialVector:rect angleSign:topRect startNewPath:v20, v21, arc, startArc, endArc, yEndArc];
  [(OITSUBezierPath *)v19 closePath];
  [(MFPhoneDeviceDriver *)self drawBezierPath:v19 dc:pieCopy fill:1 stroke:1];

  return 0;
}

- (int)chord:(id)chord leftRect:(int)rect topRect:(int)topRect rightRect:(int)rightRect bottomRect:(int)bottomRect xStartArc:(int)arc yStartArc:(int)startArc xEndArc:(int)self0 yEndArc:(int)self1
{
  chordCopy = chord;
  getArcDirection = [chordCopy getArcDirection];
  v19 = objc_alloc_init(OITSUBezierPath);
  [(OITSUBezierPath *)v19 appendBezierPathWithArcWithEllipseBounds:getArcDirection == 1 startRadialVector:1 endRadialVector:rect angleSign:topRect startNewPath:(rightRect - rect), (bottomRect - topRect), arc, startArc, endArc, yEndArc];
  [(OITSUBezierPath *)v19 closePath];
  [(MFPhoneDeviceDriver *)self drawBezierPath:v19 dc:chordCopy fill:1 stroke:1];

  return 0;
}

- (int)polyline:(id)polyline in_points:(CGPoint *)in_points in_count:(int)in_count
{
  polylineCopy = polyline;
  if (in_count >= 2)
  {
    v9 = objc_alloc_init(OITSUBezierPath);
    [(OITSUBezierPath *)v9 appendBezierPathWithPoints:in_points count:in_count];
    [(MFPhoneDeviceDriver *)self drawBezierPath:v9 dc:polylineCopy fill:0 stroke:1];
  }

  return 0;
}

- (int)polyPolyline:(id)polyline in_points:(CGPoint *)in_points in_polyCounts:(int *)counts in_count:(int)in_count
{
  polylineCopy = polyline;
  if (in_count < 1)
  {
    v15 = 0;
  }

  else
  {
    v11 = 0;
    in_countCopy = in_count;
    v13 = 1;
    do
    {
      v14 = [(MFPhoneDeviceDriver *)self polyline:polylineCopy in_points:&in_points[v11] in_count:*counts];
      v15 = v14;
      if (v13 >= in_countCopy)
      {
        break;
      }

      v16 = *counts++;
      v11 += v16;
      ++v13;
    }

    while (!v14);
  }

  return v15;
}

- (int)polygon:(id)polygon in_points:(CGPoint *)in_points in_count:(int)in_count
{
  polygonCopy = polygon;
  if (in_count >= 2)
  {
    v9 = objc_alloc_init(OITSUBezierPath);
    [(OITSUBezierPath *)v9 appendBezierPathWithPoints:in_points count:in_count];
    [(OITSUBezierPath *)v9 closePath];
    [(MFPhoneDeviceDriver *)self drawBezierPath:v9 dc:polygonCopy fill:1 stroke:1];
  }

  return 0;
}

- (int)polyPolygon:(id)polygon in_points:(CGPoint *)in_points in_polyCounts:(int *)counts in_count:(int)in_count
{
  LODWORD(v6) = in_count;
  polygonCopy = polygon;
  v11 = objc_alloc_init(OITSUBezierPath);
  if (v6 >= 1)
  {
    v12 = 0;
    v6 = v6;
    do
    {
      [(OITSUBezierPath *)v11 appendBezierPathWithPoints:&in_points[v12] count:*counts];
      [(OITSUBezierPath *)v11 closePath];
      v13 = *counts++;
      v12 += v13;
      --v6;
    }

    while (v6);
  }

  [(MFPhoneDeviceDriver *)self drawBezierPath:v11 dc:polygonCopy fill:1 stroke:1];

  return 0;
}

- (int)lineTo:(id)to x:(double)x y:(double)y
{
  toCopy = to;
  v9 = objc_alloc_init(OITSUBezierPath);
  [toCopy getPenPosition];
  [(OITSUBezierPath *)v9 moveToPoint:?];
  getPath = [toCopy getPath];
  isOpen = [getPath isOpen];

  if (isOpen)
  {
    [(OITSUBezierPath *)v9 lineToPoint:x, y];
  }

  else
  {
    v15 = *MEMORY[0x277CBF348];
    [toCopy getPenPosition];
    v17.x = v12;
    v17.y = v13;
    v16.x = x;
    v16.y = y;
    calculatePreviousPointOnLine(v16, v17, &v15);
    [(OITSUBezierPath *)v9 lineToPoint:v15];
  }

  [(MFPhoneDeviceDriver *)self drawBezierPath:v9 dc:toCopy fill:0 stroke:1];
  [toCopy setPenPosition:{x, y}];

  return 0;
}

- (int)rectangle:(id)rectangle x1:(int)x1 y1:(int)y1 x2:(int)x2 y2:(int)y2
{
  rectangleCopy = rectangle;
  v13 = objc_alloc_init(OITSUBezierPath);
  v14 = v13;
  if (y1 <= y2)
  {
    y1Copy = y2;
  }

  else
  {
    y1Copy = y1;
  }

  v16 = y1Copy;
  if (y1 >= y2)
  {
    y1Copy2 = y2;
  }

  else
  {
    y1Copy2 = y1;
  }

  v18 = y1Copy2;
  if (x1 <= x2)
  {
    x1Copy = x2;
  }

  else
  {
    x1Copy = x1;
  }

  v20 = x1Copy;
  if (x1 >= x2)
  {
    x1Copy2 = x2;
  }

  else
  {
    x1Copy2 = x1;
  }

  [(OITSUBezierPath *)v13 appendBezierPathWithRect:x1Copy2, v18, (v20 - x1Copy2), (v16 - v18)];
  [(MFPhoneDeviceDriver *)self drawBezierPath:v14 dc:rectangleCopy fill:1 stroke:1];

  return 0;
}

- (int)fillRectangle:(id)rectangle x1:(int)x1 y1:(int)y1 x2:(int)x2 y2:(int)y2
{
  rectangleCopy = rectangle;
  v13 = objc_alloc_init(OITSUBezierPath);
  v14 = v13;
  if (y1 <= y2)
  {
    y1Copy = y2;
  }

  else
  {
    y1Copy = y1;
  }

  v16 = y1Copy;
  if (y1 >= y2)
  {
    y1Copy2 = y2;
  }

  else
  {
    y1Copy2 = y1;
  }

  v18 = y1Copy2;
  if (x1 <= x2)
  {
    x1Copy = x2;
  }

  else
  {
    x1Copy = x1;
  }

  v20 = x1Copy;
  if (x1 >= x2)
  {
    x1Copy2 = x2;
  }

  else
  {
    x1Copy2 = x1;
  }

  [(OITSUBezierPath *)v13 appendBezierPathWithRect:x1Copy2, v18, (v20 - x1Copy2), (v16 - v18)];
  [(MFPhoneDeviceDriver *)self drawBezierPath:v14 dc:rectangleCopy fill:1 stroke:0];

  return 0;
}

- (int)roundRect:(id)rect left:(int)left top:(int)top right:(int)right bottom:(int)bottom rx:(double)rx ry:(double)ry
{
  v11 = *&bottom;
  v12 = *&right;
  v13 = *&top;
  v14 = *&left;
  rectCopy = rect;
  if (v14 >= v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = v14;
  }

  v18 = v17;
  if (v14 <= v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = v14;
  }

  if (v13 >= v11)
  {
    v20 = v11;
  }

  else
  {
    v20 = v13;
  }

  v21 = v19 - v18;
  if (v13 <= v11)
  {
    v22 = v11;
  }

  else
  {
    v22 = v13;
  }

  if (v21 * 0.001 <= rx && (v23 = v20, v24 = v22 - v20, v24 * 0.001 <= ry))
  {
    if ((v21 * 0.5) >= rx)
    {
      rxCopy = rx;
    }

    else
    {
      rxCopy = (v21 * 0.5);
    }

    if ((v24 * 0.5) >= ry)
    {
      ryCopy = ry;
    }

    else
    {
      ryCopy = (v24 * 0.5);
    }

    v28 = objc_alloc_init(OITSUBezierPath);
    v33 = ryCopy;
    v29 = ryCopy + ryCopy;
    v32 = v18;
    [OITSUBezierPath appendBezierPathWithArcWithEllipseBounds:v28 startAngle:"appendBezierPathWithArcWithEllipseBounds:startAngle:swingAngle:angleType:startNewPath:" swingAngle:0 angleType:1 startNewPath:?];
    v30 = (v21 + v18) + rxCopy * -2.0;
    [(OITSUBezierPath *)v28 appendBezierPathWithArcWithEllipseBounds:0 startAngle:0 swingAngle:v30 angleType:v23 startNewPath:rxCopy + rxCopy, v29, 270.0, 90.0];
    [(OITSUBezierPath *)v28 appendBezierPathWithArcWithEllipseBounds:0 startAngle:0 swingAngle:v30 angleType:(v24 + v23) + v33 * -2.0 startNewPath:rxCopy + rxCopy, v29, 0.0, 90.0];
    [(OITSUBezierPath *)v28 appendBezierPathWithArcWithEllipseBounds:0 startAngle:0 swingAngle:v32 angleType:(v24 + v23) + v33 * -2.0 startNewPath:rxCopy + rxCopy, v29, 90.0, 90.0];
    [(OITSUBezierPath *)v28 closePath];
    [(MFPhoneDeviceDriver *)self drawBezierPath:v28 dc:rectCopy fill:1 stroke:1];

    v25 = 0;
  }

  else
  {
    v25 = [(MFPhoneDeviceDriver *)self rectangle:rectCopy x1:v14 y1:v13 x2:v12 y2:v11];
  }

  return v25;
}

- (int)ellipse:(id)ellipse x1:(int)x1 y1:(int)y1 x2:(int)x2 y2:(int)y2
{
  ellipseCopy = ellipse;
  v13 = objc_alloc_init(OITSUBezierPath);
  v14 = v13;
  if (y1 <= y2)
  {
    y1Copy = y2;
  }

  else
  {
    y1Copy = y1;
  }

  v16 = y1Copy;
  if (y1 >= y2)
  {
    y1Copy2 = y2;
  }

  else
  {
    y1Copy2 = y1;
  }

  v18 = y1Copy2;
  v19 = v16 - y1Copy2;
  if (x1 <= x2)
  {
    x1Copy = x2;
  }

  else
  {
    x1Copy = x1;
  }

  v21 = x1Copy;
  if (x1 >= x2)
  {
    x1Copy2 = x2;
  }

  else
  {
    x1Copy2 = x1;
  }

  [(OITSUBezierPath *)v13 appendBezierPathWithOvalInRect:x1Copy2, v18, v21 - x1Copy2, v19];
  [(MFPhoneDeviceDriver *)self drawBezierPath:v14 dc:ellipseCopy fill:1 stroke:1];

  return 0;
}

- (int)bezierTo:(id)to x:(int)x y:(int)y x2:(int)x2 y2:(int)y2 x3:(int)x3 y3:(int)y3
{
  toCopy = to;
  v16 = objc_alloc_init(OITSUBezierPath);
  [toCopy getPenPosition];
  [(OITSUBezierPath *)v16 moveToPoint:?];
  [(OITSUBezierPath *)v16 curveToPoint:x3 controlPoint1:y3 controlPoint2:x, y, x2, y2];
  [(MFPhoneDeviceDriver *)self drawBezierPath:v16 dc:toCopy fill:0 stroke:1];
  [toCopy setPenPosition:{x3, y3}];

  return 0;
}

- (int)bezier:(id)bezier x:(int)x y:(int)y x2:(int)x2 y2:(int)y2 x3:(int)x3 y3:(int)y3 x4:(int)self0 y4:(int)self1
{
  bezierCopy = bezier;
  v18 = objc_alloc_init(OITSUBezierPath);
  [(OITSUBezierPath *)v18 moveToPoint:x, y];
  [(OITSUBezierPath *)v18 curveToPoint:x4 controlPoint1:y4 controlPoint2:x2, y2, x3, y3];
  [(MFPhoneDeviceDriver *)self drawBezierPath:v18 dc:bezierCopy fill:0 stroke:1];

  return 0;
}

- (void)applyTransformsToCurrentContext
{
  v3 = TCCurrentGraphicsContext();
  CGContextGetCTM(&t1, v3);
  CGAffineTransformInvert(&transform, &t1);
  CGContextConcatCTM(v3, &transform);
  v4 = *&self->m_canvasTransform.c;
  *&transform.a = *&self->m_canvasTransform.a;
  *&transform.c = v4;
  *&transform.tx = *&self->m_canvasTransform.tx;
  CGContextConcatCTM(v3, &transform);
  v5 = *&self->m_worldToDeviceTransform.c;
  *&t1.a = *&self->m_worldToDeviceTransform.a;
  *&t1.c = v5;
  *&t1.tx = *&self->m_worldToDeviceTransform.tx;
  v6 = *&self->m_viewBoxTransform.c;
  *&v9.a = *&self->m_viewBoxTransform.a;
  *&v9.c = v6;
  *&v9.tx = *&self->m_viewBoxTransform.tx;
  CGAffineTransformConcat(&transform, &t1, &v9);
  v7 = *&transform.c;
  *&self->m_combinedTransform.a = *&transform.a;
  *&self->m_combinedTransform.c = v7;
  *&self->m_combinedTransform.tx = *&transform.tx;
  v8 = *&self->m_combinedTransform.c;
  *&transform.a = *&self->m_combinedTransform.a;
  *&transform.c = v8;
  *&transform.tx = *&self->m_combinedTransform.tx;
  CGContextConcatCTM(v3, &transform);
}

- (int)setViewBox:(double)box top:(double)top width:(double)width height:(double)height
{
  self->m_viewBox.origin.x = box;
  self->m_viewBox.origin.y = top;
  self->m_viewBox.size.width = width;
  self->m_viewBox.size.height = height;
  [(MFPhoneDeviceDriver *)self updateViewBoxTransform];
  v7 = *&self->m_worldToDeviceTransform.c;
  *&v18.a = *&self->m_worldToDeviceTransform.a;
  *&v18.c = v7;
  *&v18.tx = *&self->m_worldToDeviceTransform.tx;
  memset(&v19, 0, sizeof(v19));
  CGAffineTransformInvert(&v19, &v18);
  width = self->m_viewBox.size.width;
  height = self->m_viewBox.size.height;
  v10 = v19.c * height + v19.a * width;
  if (v10 > 0.0)
  {
    v11 = v19.d * height + v19.b * width;
    if (v11 > 0.0)
    {
      x = self->m_viewBox.origin.x;
      y = self->m_viewBox.origin.y;
      v14 = v19.ty + v19.d * y + v19.b * x;
      v15 = v19.tx + v19.c * y + v19.a * x;
      v16 = TCCurrentGraphicsContext();
      v20.origin.x = v15;
      v20.origin.y = v14;
      v20.size.width = v10;
      v20.size.height = v11;
      CGContextClipToRect(v16, v20);
    }
  }

  return 0;
}

- (int)activateTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->c;
  *&self->m_worldToDeviceTransform.tx = *&transform->tx;
  *&self->m_worldToDeviceTransform.c = v4;
  *&self->m_worldToDeviceTransform.a = v3;
  [(MFPhoneDeviceDriver *)self applyTransformsToCurrentContext];
  return 0;
}

- (int)excludeClipRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (CGRectIntersectsRect(rect, self->m_canvas))
  {
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    v15 = CGRectIntersection(v14, self->m_canvas);
    v8 = v15.origin.x;
    v9 = v15.origin.y;
    v10 = v15.size.width;
    v11 = v15.size.height;
    v12 = [OITSUBezierPath bezierPathWithRect:self->m_canvas.origin.x, self->m_canvas.origin.y, self->m_canvas.size.width, self->m_canvas.size.height];
    [v12 appendBezierPathWithRect:{v8, v9, v10, v11}];
    [v12 setWindingRule:1];
    [v12 addClip];
  }

  return 0;
}

- (int)intersectClipRect:(CGRect)rect
{
  if (rect.size.width > 0.0 && rect.size.height > 0.0)
  {
    [OITSUBezierPath clipRect:rect.origin.x, rect.origin.y, v3, v4];
  }

  return 0;
}

- (int)patBlt:(id)blt in_x:(int)in_x in_y:(int)in_y in_width:(int)in_width in_height:(int)in_height in_rop:(unsigned int)in_rop
{
  bltCopy = blt;
  getPath = [bltCopy getPath];
  isOpen = [getPath isOpen];

  if (in_rop == 11141161)
  {
    v17 = 1;
  }

  else
  {
    v17 = isOpen;
  }

  if ((v17 & 1) == 0)
  {
    getRop2 = [bltCopy getRop2];
    if (in_rop == 16711778)
    {
      v19 = 16;
    }

    else
    {
      v19 = 13;
    }

    if (in_rop == 66)
    {
      v20 = 1;
    }

    else
    {
      v20 = v19;
    }

    [bltCopy setRop2:v20];
    v21 = objc_alloc_init(OITSUBezierPath);
    [(OITSUBezierPath *)v21 appendBezierPathWithRect:in_x, in_y, in_width, in_height];
    [(MFPhoneDeviceDriver *)self drawBezierPath:v21 dc:bltCopy fill:1 stroke:0];
    [bltCopy setRop2:getRop2];
  }

  return 0;
}

- (int)bitBlt:(id)blt in_xDest:(int)dest in_yDest:(int)in_yDest in_widthDest:(int)in_widthDest in_heightDest:(int)in_heightDest in_sourceImage:(id)image in_xSrc:(int)src in_ySrc:(int)self0 in_rop:(unsigned int)self1 in_xform:(CGAffineTransform *)self2 in_colour:(unsigned int)self3
{
  LODWORD(v15) = in_colour;
  LODWORD(v14) = in_rop;
  return [(MFPhoneDeviceDriver *)self stretchBlt:blt in_xDest:*&dest in_yDest:*&in_yDest in_widthDest:*&in_widthDest in_heightDest:*&in_heightDest in_sourceImage:image in_xSrc:__PAIR64__(in_ySrc in_ySrc:src) in_widthSrc:__PAIR64__(in_heightDest in_heightSrc:in_widthDest) in_rop:v14 in_xform:in_xform in_colour:v15];
}

- (int)stretchBlt:(id)blt in_xDest:(int)dest in_yDest:(int)in_yDest in_widthDest:(int)in_widthDest in_heightDest:(int)in_heightDest in_sourceImage:(id)image in_xSrc:(int)src in_ySrc:(int)self0 in_widthSrc:(int)self1 in_heightSrc:(int)self2 in_rop:(unsigned int)self3 in_xform:(CGAffineTransform *)self4 in_colour:(unsigned int)self5
{
  v16 = *&in_heightDest;
  v17 = *&in_widthDest;
  v18 = *&in_yDest;
  v19 = *&dest;
  bltCopy = blt;
  imageCopy = image;
  getPath = [bltCopy getPath];
  isOpen = [getPath isOpen];

  if (in_rop == 11141161)
  {
    v25 = 1;
  }

  else
  {
    v25 = isOpen;
  }

  if ((v25 & 1) == 0)
  {
    if (([imageCopy isEmpty] & 1) != 0 || in_rop == 16711778 || in_rop == 66)
    {
      v26 = [(MFPhoneDeviceDriver *)self patBlt:bltCopy in_x:v19 in_y:v18 in_width:v17 in_height:v16 in_rop:in_rop];
      goto LABEL_10;
    }

    srcCopy = src;
    in_ySrcCopy = in_ySrc;
    in_widthSrcCopy = in_widthSrc;
    in_heightSrcCopy = in_heightSrc;
    if (in_xform)
    {
      b = in_xform->b;
      c = in_xform->c;
      d = in_xform->d;
      v35 = d * in_ySrcCopy + b * srcCopy;
      srcCopy = in_xform->tx + c * in_ySrcCopy + in_xform->a * srcCopy;
      in_ySrcCopy = in_xform->ty + v35;
      v36 = c * in_heightSrcCopy;
      in_heightSrcCopy = d * in_heightSrcCopy + b * in_widthSrcCopy;
      in_widthSrcCopy = v36 + in_xform->a * in_widthSrcCopy;
    }

    getImage = [imageCopy getImage];
    [getImage drawInRect:1 fromRect:v19 isFlipped:{v18, v17, v16, srcCopy, in_ySrcCopy, in_widthSrcCopy, in_heightSrcCopy}];
  }

  v26 = 0;
LABEL_10:

  return v26;
}

- (int)alphaBlend:(id)blend in_xDest:(int)dest in_yDest:(int)in_yDest in_widthDest:(int)in_widthDest in_heightDest:(int)in_heightDest in_sourceImage:(id)image in_xSrc:(int)src in_ySrc:(int)self0 in_widthSrc:(int)self1 in_heightSrc:(int)self2 in_sourceConstantOpacity:(unsigned __int8)self3 in_useSourceAlphaChannel:(BOOL)self4 in_xform:(CGAffineTransform *)self5 in_colour:(unsigned int)self6
{
  imageCopy = image;
  getPath = [blend getPath];
  if ([getPath isOpen])
  {
    goto LABEL_28;
  }

  isEmpty = [imageCopy isEmpty];

  if ((isEmpty & 1) == 0)
  {
    srcCopy = src;
    in_ySrcCopy = in_ySrc;
    in_widthSrcCopy = in_widthSrc;
    in_heightSrcCopy = in_heightSrc;
    if (in_xform)
    {
      b = in_xform->b;
      c = in_xform->c;
      d = in_xform->d;
      v32 = d * in_ySrcCopy + b * srcCopy;
      srcCopy = in_xform->tx + c * in_ySrcCopy + in_xform->a * srcCopy;
      in_ySrcCopy = in_xform->ty + v32;
      v33 = c * in_heightSrcCopy;
      in_heightSrcCopy = d * in_heightSrcCopy + b * in_widthSrcCopy;
      in_widthSrcCopy = v33 + in_xform->a * in_widthSrcCopy;
    }

    getImage = [imageCopy getImage];
    getPath = getImage;
    if (!getImage)
    {
      v24 = -1;
LABEL_29:

      goto LABEL_30;
    }

    destCopy = dest;
    in_yDestCopy = in_yDest;
    in_widthDestCopy = in_widthDest;
    in_heightDestCopy = in_heightDest;
    if (__PAIR64__(channel, opacity) == 255)
    {
      goto LABEL_27;
    }

    cGImage = [getImage CGImage];
    v40 = cGImage;
    if (!cGImage)
    {
      goto LABEL_27;
    }

    Width = CGImageGetWidth(cGImage);
    Height = CGImageGetHeight(v40);
    if (channel)
    {
      pixelData = [imageCopy pixelData];
      if ([imageCopy pixelDataLength] == Height * 4 * Width && (v44 = TSUDeviceRGBColorSpace(), v45 = CGBitmapContextCreateWithData(pixelData, Width, Height, 8uLL, 4 * Width, v44, 0x2002u, 0, 0), (v46 = v45) != 0))
      {
        Image = CGBitmapContextCreateImage(v45);
        CGContextRelease(v46);
      }

      else
      {
        Image = 0;
      }

      if (([imageCopy isFlipped] & 1) == 0)
      {
        v55.origin.x = srcCopy;
        v55.origin.y = in_ySrcCopy;
        v55.size.width = in_widthSrcCopy;
        v55.size.height = in_heightSrcCopy;
        v48 = 0;
        in_ySrcCopy = in_ySrcCopy + Height + CGRectGetMidY(v55) * -2.0;
        if (!Image)
        {
LABEL_27:
          [getPath drawInRect:1 fromRect:destCopy isFlipped:{in_yDestCopy, in_widthDestCopy, in_heightDestCopy, srcCopy, in_ySrcCopy, in_widthSrcCopy, in_heightSrcCopy}];
LABEL_28:
          v24 = 0;
          goto LABEL_29;
        }

LABEL_20:
        v61.size.width = Width;
        v61.size.height = Height;
        v61.origin.x = 0.0;
        v61.origin.y = 0.0;
        v56.origin.x = srcCopy;
        v56.origin.y = in_ySrcCopy;
        v56.size.width = in_widthSrcCopy;
        v56.size.height = in_heightSrcCopy;
        if (CGRectEqualToRect(v56, v61))
        {
          v49 = CGImageRetain(Image);
        }

        else
        {
          v57.origin.x = srcCopy;
          v57.origin.y = in_ySrcCopy;
          v57.size.width = in_widthSrcCopy;
          v57.size.height = in_heightSrcCopy;
          v49 = CGImageCreateWithImageInRect(Image, v57);
        }

        v50 = v49;
        CGImageRelease(Image);
        if (v50)
        {
          v51 = TCCurrentGraphicsContext();
          CGContextSaveGState(v51);
          if (v48)
          {
            v58.origin.x = destCopy;
            v58.origin.y = in_yDestCopy;
            v58.size.width = in_widthDestCopy;
            v58.size.height = in_heightDestCopy;
            MidY = CGRectGetMidY(v58);
            CGContextTranslateCTM(v51, 0.0, MidY);
            CGContextScaleCTM(v51, 1.0, -1.0);
            v59.origin.x = destCopy;
            v59.origin.y = in_yDestCopy;
            v59.size.width = in_widthDestCopy;
            v59.size.height = in_heightDestCopy;
            v53 = CGRectGetMidY(v59);
            CGContextTranslateCTM(v51, 0.0, -v53);
          }

          CGContextSetAlpha(v51, opacity / 255.0);
          CGContextSetBlendMode(v51, kCGBlendModeNormal);
          v60.origin.x = destCopy;
          v60.origin.y = in_yDestCopy;
          v60.size.width = in_widthDestCopy;
          v60.size.height = in_heightDestCopy;
          CGContextDrawImage(v51, v60, v50);
          CGContextRestoreGState(v51);
          CGImageRelease(v50);
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    else
    {
      Image = CGImageRetain(v40);
    }

    v48 = 1;
    if (!Image)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  v24 = 0;
LABEL_30:

  return v24;
}

- (id)createHatchBrush:(id)brush in_hatchstyle:(int)in_hatchstyle
{
  v4 = [MFPhoneHatchBrush hatchBrushWithColour:brush in_style:*&in_hatchstyle];

  return v4;
}

- (id)createPatternBrush:(id)brush usePaletteForBilevel:(BOOL)bilevel
{
  bilevelCopy = bilevel;
  brushCopy = brush;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MFPhonePatternBrush patternBrushWithBitmap:brushCopy usePaletteForBilevel:bilevelCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)createSolidBrush:(id)brush
{
  v3 = [MFPhoneSolidBrush solidBrushWithColour:brush];

  return v3;
}

- (id)createPen:(int)pen in_width:(int)in_width in_colour:(id)in_colour in_userStyleArray:(double *)array
{
  v6 = *&self->m_combinedTransform.c;
  v9[0] = *&self->m_combinedTransform.a;
  v9[1] = v6;
  v9[2] = *&self->m_combinedTransform.tx;
  v7 = [MFPhonePen penWithStyle:*&pen width:*&in_width colour:in_colour styleArray:array LPToDPTransform:v9];

  return v7;
}

- (id)createFont:(int)font lfWidth:(int)width lfEscapement:(int)escapement lfOrientation:(int)orientation lfWeight:(int)weight lfItalic:(BOOL)italic lfUnderline:(BOOL)underline lfStrikeOut:(BOOL)self0 lfCharSet:(int)self1 lfOutPrecision:(int)self2 lfClipPrecision:(unsigned __int8)self3 lfQuality:(int)self4 pitch:(int)self5 family:(int)self6 lfFaceName:(id)self7
{
  LODWORD(v21) = family;
  BYTE4(v20) = clipPrecision;
  HIDWORD(v19) = set;
  LODWORD(v20) = precision;
  LOWORD(v19) = __PAIR16__(out, underline);
  v17 = [MFFont fontWithFeatures:"fontWithFeatures:lfWidth:lfEscapement:lfOrientation:lfWeight:lfItalic:lfUnderline:lfStrikeOut:lfCharSet:lfOutPrecision:lfClipPrecision:lfQuality:pitch:family:lfFaceName:" lfWidth:*&font lfEscapement:*&width lfOrientation:*&escapement lfWeight:*&orientation lfItalic:*&weight lfUnderline:italic lfStrikeOut:v19 lfCharSet:v20 lfOutPrecision:*&quality lfClipPrecision:v21 lfQuality:name pitch:? family:? lfFaceName:?];

  return v17;
}

- (id)createFontIndirectW:(int)w lfWidth:(int)width lfEscapement:(int)escapement lfOrientation:(int)orientation lfWeight:(int)weight lfItalic:(BOOL)italic lfUnderline:(BOOL)underline lfStrikeOut:(BOOL)self0 lfCharSet:(int)self1 lfOutPrecision:(int)self2 lfClipPrecision:(unsigned __int8)self3 lfQuality:(int)self4 pitch:(int)self5 family:(int)self6 lfFaceName:(id)self7 elfFullName:(id)self8 elfStyle:(id)self9 elfVersion:(unsigned int)version elfStyleSize:(unsigned int)size elfMatch:(unsigned int)match elfVendorId:(unsigned int)id elfCulture:(unsigned int)culture
{
  LODWORD(v29) = culture;
  LODWORD(v28) = family;
  BYTE4(v27) = clipPrecision;
  HIDWORD(v26) = set;
  LODWORD(v27) = precision;
  LOWORD(v26) = __PAIR16__(out, underline);
  v24 = [MFFont fontWithExtendedFeatures:"fontWithExtendedFeatures:lfWidth:lfEscapement:lfOrientation:lfWeight:lfItalic:lfUnderline:lfStrikeOut:lfCharSet:lfOutPrecision:lfClipPrecision:lfQuality:pitch:family:lfFaceName:elfFullName:elfStyle:elfVersion:elfStyleSize:elfMatch:elfVendorId:elfCulture:" lfWidth:*&w lfEscapement:*&width lfOrientation:*&escapement lfWeight:*&orientation lfItalic:*&weight lfUnderline:italic lfStrikeOut:v26 lfCharSet:v27 lfOutPrecision:*&quality lfClipPrecision:v28 lfQuality:name pitch:fullName family:style lfFaceName:*&version elfFullName:*&match elfStyle:v29 elfVersion:? elfStyleSize:? elfMatch:? elfVendorId:? elfCulture:?];

  return v24;
}

- (id)createRegionWithRects:(id)rects in_dc:(id)in_dc
{
  rectsCopy = rects;
  in_dcCopy = in_dc;
  v8 = [[MFPhoneRegion alloc] initWithRects:rectsCopy in_bounds:in_dcCopy in_dc:self->m_viewBox.origin.x, self->m_viewBox.origin.y, self->m_viewBox.size.width, self->m_viewBox.size.height];

  return v8;
}

- (id)createRegionWithPath:(id)path
{
  pathCopy = path;
  v5 = [[MFPhoneRegion alloc] initWithPath:pathCopy in_bounds:self->m_viewBox.origin.x, self->m_viewBox.origin.y, self->m_viewBox.size.width, self->m_viewBox.size.height];

  return v5;
}

- (id)createDIBitmap:(id)bitmap in_dib:(const char *)in_dib in_dibSize:(unsigned int)size in_usage:(int)in_usage
{
  v6 = *&in_usage;
  v7 = *&size;
  bitmapCopy = bitmap;
  v10 = [(MFBitmap *)[MFPhoneBitmap alloc] initWithDIBitmap:bitmapCopy in_dib:in_dib in_dibSize:v7 in_usage:v6];

  return v10;
}

- (id)createDIBitmap:(id)bitmap in_header:(const char *)in_header in_headerSize:(unsigned int)size in_bitmap:(const char *)in_bitmap in_bitmapSize:(unsigned int)in_bitmapSize in_usage:(int)in_usage
{
  v8 = *&in_usage;
  v9 = *&in_bitmapSize;
  v11 = *&size;
  bitmapCopy = bitmap;
  v14 = [(MFBitmap *)[MFPhoneBitmap alloc] initWithDIBitmap:bitmapCopy in_header:in_header in_headerSize:v11 in_bitmap:in_bitmap in_bitmapSize:v9 in_usage:v8];

  return v14;
}

- (id)createBitmap:(id)bitmap in_width:(int)in_width in_height:(int)in_height in_planes:(int)in_planes in_bitsPerPixel:(int)pixel in_bitmap:(const char *)in_bitmap in_bitmapSize:(unsigned int)size
{
  v10 = *&pixel;
  v11 = *&in_planes;
  v12 = *&in_height;
  v13 = *&in_width;
  bitmapCopy = bitmap;
  LODWORD(v17) = size;
  v15 = [(MFBitmap *)[MFPhoneBitmap alloc] initWithBitmap:bitmapCopy in_width:v13 in_height:v12 in_planes:v11 in_bitsPerPixel:v10 in_bitmap:in_bitmap in_bitmapSize:v17];

  return v15;
}

@end