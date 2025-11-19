@interface MFPhoneDeviceDriver
+ (int)getROP:(id)a3;
- (CGRect)getCanvas;
- (MFPhoneDeviceDriver)initWithCanvas:(CGRect)a3;
- (id)createBitmap:(id)a3 in_width:(int)a4 in_height:(int)a5 in_planes:(int)a6 in_bitsPerPixel:(int)a7 in_bitmap:(const char *)a8 in_bitmapSize:(unsigned int)a9;
- (id)createDIBitmap:(id)a3 in_dib:(const char *)a4 in_dibSize:(unsigned int)a5 in_usage:(int)a6;
- (id)createDIBitmap:(id)a3 in_header:(const char *)a4 in_headerSize:(unsigned int)a5 in_bitmap:(const char *)a6 in_bitmapSize:(unsigned int)a7 in_usage:(int)a8;
- (id)createFont:(int)a3 lfWidth:(int)a4 lfEscapement:(int)a5 lfOrientation:(int)a6 lfWeight:(int)a7 lfItalic:(BOOL)a8 lfUnderline:(BOOL)a9 lfStrikeOut:(BOOL)a10 lfCharSet:(int)a11 lfOutPrecision:(int)a12 lfClipPrecision:(unsigned __int8)a13 lfQuality:(int)a14 pitch:(int)a15 family:(int)a16 lfFaceName:(id)a17;
- (id)createFontIndirectW:(int)a3 lfWidth:(int)a4 lfEscapement:(int)a5 lfOrientation:(int)a6 lfWeight:(int)a7 lfItalic:(BOOL)a8 lfUnderline:(BOOL)a9 lfStrikeOut:(BOOL)a10 lfCharSet:(int)a11 lfOutPrecision:(int)a12 lfClipPrecision:(unsigned __int8)a13 lfQuality:(int)a14 pitch:(int)a15 family:(int)a16 lfFaceName:(id)a17 elfFullName:(id)a18 elfStyle:(id)a19 elfVersion:(unsigned int)a20 elfStyleSize:(unsigned int)a21 elfMatch:(unsigned int)a22 elfVendorId:(unsigned int)a23 elfCulture:(unsigned int)a24;
- (id)createHatchBrush:(id)a3 in_hatchstyle:(int)a4;
- (id)createPath;
- (id)createPatternBrush:(id)a3 usePaletteForBilevel:(BOOL)a4;
- (id)createPen:(int)a3 in_width:(int)a4 in_colour:(id)a5 in_userStyleArray:(double *)a6;
- (id)createRegionWithPath:(id)a3;
- (id)createRegionWithRects:(id)a3 in_dc:(id)a4;
- (id)createSolidBrush:(id)a3;
- (int)activateTransform:(CGAffineTransform *)a3;
- (int)alphaBlend:(id)a3 in_xDest:(int)a4 in_yDest:(int)a5 in_widthDest:(int)a6 in_heightDest:(int)a7 in_sourceImage:(id)a8 in_xSrc:(int)a9 in_ySrc:(int)a10 in_widthSrc:(int)a11 in_heightSrc:(int)a12 in_sourceConstantOpacity:(unsigned __int8)a13 in_useSourceAlphaChannel:(BOOL)a14 in_xform:(CGAffineTransform *)a15 in_colour:(unsigned int)a16;
- (int)angleArc:(id)a3 x:(int)a4 y:(int)a5 radius:(unsigned int)a6 startAngle:(double)a7 sweepAngle:(double)a8;
- (int)arc:(id)a3 nLeftRect:(int)a4 nTopRect:(int)a5 nRightRect:(int)a6 nBottomRect:(int)a7 nXStartArc:(int)a8 nYStartArc:(int)a9 nXEndArc:(int)a10 nYEndArc:(int)a11;
- (int)arcTo:(id)a3 nLeftRect:(int)a4 nTopRect:(int)a5 nRightRect:(int)a6 nBottomRect:(int)a7 nXStartArc:(int)a8 nYStartArc:(int)a9 nXEndArc:(int)a10 nYEndArc:(int)a11;
- (int)bezier:(id)a3 x:(int)a4 y:(int)a5 x2:(int)a6 y2:(int)a7 x3:(int)a8 y3:(int)a9 x4:(int)a10 y4:(int)a11;
- (int)bezierTo:(id)a3 x:(int)a4 y:(int)a5 x2:(int)a6 y2:(int)a7 x3:(int)a8 y3:(int)a9;
- (int)bitBlt:(id)a3 in_xDest:(int)a4 in_yDest:(int)a5 in_widthDest:(int)a6 in_heightDest:(int)a7 in_sourceImage:(id)a8 in_xSrc:(int)a9 in_ySrc:(int)a10 in_rop:(unsigned int)a11 in_xform:(CGAffineTransform *)a12 in_colour:(unsigned int)a13;
- (int)chord:(id)a3 leftRect:(int)a4 topRect:(int)a5 rightRect:(int)a6 bottomRect:(int)a7 xStartArc:(int)a8 yStartArc:(int)a9 xEndArc:(int)a10 yEndArc:(int)a11;
- (int)ellipse:(id)a3 x1:(int)a4 y1:(int)a5 x2:(int)a6 y2:(int)a7;
- (int)excludeClipRect:(CGRect)a3;
- (int)extTextOut:(id)a3 px:(int *)a4 py:(int *)a5 in_text:(id)a6 options:(int)a7 left:(int)a8 top:(int)a9 right:(int)a10 bottom:(int)a11 spacingValues:(int *)a12 numValues:(int)a13;
- (int)fillRectangle:(id)a3 x1:(int)a4 y1:(int)a5 x2:(int)a6 y2:(int)a7;
- (int)intersectClipRect:(CGRect)a3;
- (int)lineTo:(id)a3 x:(double)a4 y:(double)a5;
- (int)patBlt:(id)a3 in_x:(int)a4 in_y:(int)a5 in_width:(int)a6 in_height:(int)a7 in_rop:(unsigned int)a8;
- (int)pie:(id)a3 nLeftRect:(int)a4 nTopRect:(int)a5 nRightRect:(int)a6 nBottomRect:(int)a7 nXStartArc:(int)a8 nYStartArc:(int)a9 nXEndArc:(int)a10 nYEndArc:(int)a11;
- (int)polyPolygon:(id)a3 in_points:(CGPoint *)a4 in_polyCounts:(int *)a5 in_count:(int)a6;
- (int)polyPolyline:(id)a3 in_points:(CGPoint *)a4 in_polyCounts:(int *)a5 in_count:(int)a6;
- (int)polygon:(id)a3 in_points:(CGPoint *)a4 in_count:(int)a5;
- (int)polyline:(id)a3 in_points:(CGPoint *)a4 in_count:(int)a5;
- (int)rectangle:(id)a3 x1:(int)a4 y1:(int)a5 x2:(int)a6 y2:(int)a7;
- (int)roundRect:(id)a3 left:(int)a4 top:(int)a5 right:(int)a6 bottom:(int)a7 rx:(double)a8 ry:(double)a9;
- (int)setViewBox:(double)a3 top:(double)a4 width:(double)a5 height:(double)a6;
- (int)stretchBlt:(id)a3 in_xDest:(int)a4 in_yDest:(int)a5 in_widthDest:(int)a6 in_heightDest:(int)a7 in_sourceImage:(id)a8 in_xSrc:(int)a9 in_ySrc:(int)a10 in_widthSrc:(int)a11 in_heightSrc:(int)a12 in_rop:(unsigned int)a13 in_xform:(CGAffineTransform *)a14 in_colour:(unsigned int)a15;
- (int)textOut:(id)a3 px:(int *)a4 py:(int *)a5 in_text:(id)a6;
- (void)applyTransformsToCurrentContext;
- (void)drawBezierPath:(id)a3 dc:(id)a4 fill:(BOOL)a5 stroke:(BOOL)a6;
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

- (MFPhoneDeviceDriver)initWithCanvas:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)drawBezierPath:(id)a3 dc:(id)a4 fill:(BOOL)a5 stroke:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v13 = a3;
  v9 = a4;
  v10 = [v9 getPath];
  if ([v10 isOpen])
  {
    [v10 appendBezierPath:v13 dc:v9];
  }

  else
  {
    if (v7)
    {
      v11 = [v9 getBrush];
      [v11 fillPath:v9 in_path:v13];
    }

    if (v6)
    {
      v12 = [v9 getPen];
      [v12 strokePath:v9 in_path:v13];
    }
  }
}

+ (int)getROP:(id)a3
{
  v3 = a3;
  v4 = [v3 getPath];
  if ([v4 isOpen])
  {
    v5 = 3;
  }

  else
  {
    v6 = [v3 getRop2];
    if (v6 == 16)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    if (v6 == 1)
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

- (int)textOut:(id)a3 px:(int *)a4 py:(int *)a5 in_text:(id)a6
{
  LODWORD(v8) = 0;
  LODWORD(v7) = 0;
  return [(MFPhoneDeviceDriver *)self extTextOut:a3 px:a4 py:a5 in_text:a6 options:0 left:0 top:0 right:v7 bottom:0 spacingValues:v8 numValues:?];
}

- (int)extTextOut:(id)a3 px:(int *)a4 py:(int *)a5 in_text:(id)a6 options:(int)a7 left:(int)a8 top:(int)a9 right:(int)a10 bottom:(int)a11 spacingValues:(int *)a12 numValues:(int)a13
{
  v13 = a7;
  v113 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v109 = a6;
  v111 = v17;
  v18 = [v17 getFont];
  v104 = v13;
  v108 = v18;
  v19 = [v18 createCTFontEquivalent];
  v20 = *a4;
  v21 = *a5;
  v22 = [v111 getPath];
  if ([(__CFString *)v109 length])
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

    v28 = v109;
    if (!v109)
    {
      v28 = &stru_286EE1130;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [v18 faceName];
      v30 = [v18 faceName];
      v31 = [TCFontUtils stringByFixingString:v28 latinFontFamilyName:v29 symbolFontFamilyName:v30];

      v32 = [(__CFString *)v31 length];
      v28 = v31;
      if (!v32)
      {
LABEL_19:
        CFRelease(v19);
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
    font = v19;
    v101 = a4;
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
      v102 = v22;
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

      v47 = [v111 getTextCharExtra];
      v48 = a13;
      v49 = a12;
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

      v54 = v47;
      tx = v24;
      if (a12 && a13)
      {
        v55 = 0.0;
        if (a13 >= 1)
        {
          v56 = a13;
          v57 = a12;
          do
          {
            v58 = *v57++;
            v55 = v55 + v58;
            --v56;
          }

          while (v56);
        }

        if ((v40 & 1) != 0 || (v59 = CTFontCopyFamilyName(font), [v108 faceName], v60 = objc_claimAutoreleasedReturnValue(), v61 = objc_msgSend(v60, "isEqualToString:", v59), v60, CFRelease(v59), (v61 & 1) == 0))
        {
          v48 = 0;
          v49 = 0;
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
      v64 = [v111 getTextVerticalAlign];
      v65 = Ascent;
      v66 = Descent;
      v67 = fabsf(v66);
      v68 = v65;
      if (v64)
      {
        if (v64 == 8)
        {
          v68 = -v67;
        }

        else
        {
          v68 = 0.0;
        }
      }

      v69 = [v111 getTextHorizontalAlign];
      v70 = v55;
      if (v69 != 2)
      {
        if (v69 == 6)
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
        v76 = [v111 getBkColour];
        [v76 set];

        v116.origin.y = -v67;
        v116.size.width = v55;
        v116.size.height = v75;
        v116.origin.x = 0.0;
        CGContextFillRect(v71, v116);
      }

      if (([v102 isOpen] & 1) == 0)
      {
        v77 = [v111 getTextColour];
        [v77 set];
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
        v83 = v48;
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

        if (v49)
        {
          v84 = v84 + v49[v80];
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
        v90 = [v111 getTextColour];
        [v90 set];

        [v108 fontHeight];
        CGContextSetLineWidth(v71, fabs(v91) / 20.0);
        v92 = [v108 strikeout];
        v93 = Leading;
        v94 = v75 + v93;
        if (v92)
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
      *v101 = (tx + v70 + v55);
      CFRelease(font);
      free(v105);
      free(characters);
      free(advances);
      free(v36);
      v27 = 0;
      v22 = v102;
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
    CFRelease(v19);
    v27 = 0;
    v28 = v109;
  }

LABEL_101:

  return v27;
}

- (int)arc:(id)a3 nLeftRect:(int)a4 nTopRect:(int)a5 nRightRect:(int)a6 nBottomRect:(int)a7 nXStartArc:(int)a8 nYStartArc:(int)a9 nXEndArc:(int)a10 nYEndArc:(int)a11
{
  v17 = a3;
  v18 = [v17 getArcDirection];
  v19 = objc_alloc_init(OITSUBezierPath);
  [(OITSUBezierPath *)v19 appendBezierPathWithArcWithEllipseBounds:v18 == 1 startRadialVector:1 endRadialVector:a4 angleSign:a5 startNewPath:(a6 - a4), (a7 - a5), a8, a9, a10, a11];
  [(MFPhoneDeviceDriver *)self drawBezierPath:v19 dc:v17 fill:0 stroke:1];

  return 0;
}

- (int)arcTo:(id)a3 nLeftRect:(int)a4 nTopRect:(int)a5 nRightRect:(int)a6 nBottomRect:(int)a7 nXStartArc:(int)a8 nYStartArc:(int)a9 nXEndArc:(int)a10 nYEndArc:(int)a11
{
  v17 = a3;
  v18 = [v17 getArcDirection];
  v19 = objc_alloc_init(OITSUBezierPath);
  [v17 getPenPosition];
  [(OITSUBezierPath *)v19 moveToPoint:?];
  [(OITSUBezierPath *)v19 appendBezierPathWithArcWithEllipseBounds:v18 == 1 startRadialVector:0 endRadialVector:a4 angleSign:a5 startNewPath:(a6 - a4), (a7 - a5), a8, a9, a10, a11];
  [(MFPhoneDeviceDriver *)self drawBezierPath:v19 dc:v17 fill:0 stroke:1];
  [(OITSUBezierPath *)v19 currentPoint];
  [v17 setPenPosition:?];

  return 0;
}

- (int)angleArc:(id)a3 x:(int)a4 y:(int)a5 radius:(unsigned int)a6 startAngle:(double)a7 sweepAngle:(double)a8
{
  v14 = a3;
  v15 = 360.0 - a7;
  v16 = fmod(360.0 - a7, 360.0);
  v17 = fmod(v15 - a8, 360.0);
  v18 = objc_alloc_init(OITSUBezierPath);
  [v14 getPenPosition];
  [(OITSUBezierPath *)v18 moveToPoint:?];
  [(OITSUBezierPath *)v18 appendBezierPathWithArcWithCenter:a8 > 0.0 radius:a4 startAngle:a5 endAngle:a6 clockwise:v16, v17];
  [(MFPhoneDeviceDriver *)self drawBezierPath:v18 dc:v14 fill:0 stroke:1];
  [(OITSUBezierPath *)v18 currentPoint];
  [v14 setPenPosition:?];

  return 0;
}

- (int)pie:(id)a3 nLeftRect:(int)a4 nTopRect:(int)a5 nRightRect:(int)a6 nBottomRect:(int)a7 nXStartArc:(int)a8 nYStartArc:(int)a9 nXEndArc:(int)a10 nYEndArc:(int)a11
{
  v17 = a3;
  v18 = [v17 getArcDirection];
  v19 = objc_alloc_init(OITSUBezierPath);
  v20 = a6 - a4;
  v21 = a7 - a5;
  [(OITSUBezierPath *)v19 moveToPoint:vcvtd_n_f64_s32(v20, 1uLL) + a4, vcvtd_n_f64_s32(v21, 1uLL) + a5];
  [(OITSUBezierPath *)v19 appendBezierPathWithArcWithEllipseBounds:v18 == 1 startRadialVector:0 endRadialVector:a4 angleSign:a5 startNewPath:v20, v21, a8, a9, a10, a11];
  [(OITSUBezierPath *)v19 closePath];
  [(MFPhoneDeviceDriver *)self drawBezierPath:v19 dc:v17 fill:1 stroke:1];

  return 0;
}

- (int)chord:(id)a3 leftRect:(int)a4 topRect:(int)a5 rightRect:(int)a6 bottomRect:(int)a7 xStartArc:(int)a8 yStartArc:(int)a9 xEndArc:(int)a10 yEndArc:(int)a11
{
  v17 = a3;
  v18 = [v17 getArcDirection];
  v19 = objc_alloc_init(OITSUBezierPath);
  [(OITSUBezierPath *)v19 appendBezierPathWithArcWithEllipseBounds:v18 == 1 startRadialVector:1 endRadialVector:a4 angleSign:a5 startNewPath:(a6 - a4), (a7 - a5), a8, a9, a10, a11];
  [(OITSUBezierPath *)v19 closePath];
  [(MFPhoneDeviceDriver *)self drawBezierPath:v19 dc:v17 fill:1 stroke:1];

  return 0;
}

- (int)polyline:(id)a3 in_points:(CGPoint *)a4 in_count:(int)a5
{
  v8 = a3;
  if (a5 >= 2)
  {
    v9 = objc_alloc_init(OITSUBezierPath);
    [(OITSUBezierPath *)v9 appendBezierPathWithPoints:a4 count:a5];
    [(MFPhoneDeviceDriver *)self drawBezierPath:v9 dc:v8 fill:0 stroke:1];
  }

  return 0;
}

- (int)polyPolyline:(id)a3 in_points:(CGPoint *)a4 in_polyCounts:(int *)a5 in_count:(int)a6
{
  v10 = a3;
  if (a6 < 1)
  {
    v15 = 0;
  }

  else
  {
    v11 = 0;
    v12 = a6;
    v13 = 1;
    do
    {
      v14 = [(MFPhoneDeviceDriver *)self polyline:v10 in_points:&a4[v11] in_count:*a5];
      v15 = v14;
      if (v13 >= v12)
      {
        break;
      }

      v16 = *a5++;
      v11 += v16;
      ++v13;
    }

    while (!v14);
  }

  return v15;
}

- (int)polygon:(id)a3 in_points:(CGPoint *)a4 in_count:(int)a5
{
  v8 = a3;
  if (a5 >= 2)
  {
    v9 = objc_alloc_init(OITSUBezierPath);
    [(OITSUBezierPath *)v9 appendBezierPathWithPoints:a4 count:a5];
    [(OITSUBezierPath *)v9 closePath];
    [(MFPhoneDeviceDriver *)self drawBezierPath:v9 dc:v8 fill:1 stroke:1];
  }

  return 0;
}

- (int)polyPolygon:(id)a3 in_points:(CGPoint *)a4 in_polyCounts:(int *)a5 in_count:(int)a6
{
  LODWORD(v6) = a6;
  v10 = a3;
  v11 = objc_alloc_init(OITSUBezierPath);
  if (v6 >= 1)
  {
    v12 = 0;
    v6 = v6;
    do
    {
      [(OITSUBezierPath *)v11 appendBezierPathWithPoints:&a4[v12] count:*a5];
      [(OITSUBezierPath *)v11 closePath];
      v13 = *a5++;
      v12 += v13;
      --v6;
    }

    while (v6);
  }

  [(MFPhoneDeviceDriver *)self drawBezierPath:v11 dc:v10 fill:1 stroke:1];

  return 0;
}

- (int)lineTo:(id)a3 x:(double)a4 y:(double)a5
{
  v8 = a3;
  v9 = objc_alloc_init(OITSUBezierPath);
  [v8 getPenPosition];
  [(OITSUBezierPath *)v9 moveToPoint:?];
  v10 = [v8 getPath];
  v11 = [v10 isOpen];

  if (v11)
  {
    [(OITSUBezierPath *)v9 lineToPoint:a4, a5];
  }

  else
  {
    v15 = *MEMORY[0x277CBF348];
    [v8 getPenPosition];
    v17.x = v12;
    v17.y = v13;
    v16.x = a4;
    v16.y = a5;
    calculatePreviousPointOnLine(v16, v17, &v15);
    [(OITSUBezierPath *)v9 lineToPoint:v15];
  }

  [(MFPhoneDeviceDriver *)self drawBezierPath:v9 dc:v8 fill:0 stroke:1];
  [v8 setPenPosition:{a4, a5}];

  return 0;
}

- (int)rectangle:(id)a3 x1:(int)a4 y1:(int)a5 x2:(int)a6 y2:(int)a7
{
  v12 = a3;
  v13 = objc_alloc_init(OITSUBezierPath);
  v14 = v13;
  if (a5 <= a7)
  {
    v15 = a7;
  }

  else
  {
    v15 = a5;
  }

  v16 = v15;
  if (a5 >= a7)
  {
    v17 = a7;
  }

  else
  {
    v17 = a5;
  }

  v18 = v17;
  if (a4 <= a6)
  {
    v19 = a6;
  }

  else
  {
    v19 = a4;
  }

  v20 = v19;
  if (a4 >= a6)
  {
    v21 = a6;
  }

  else
  {
    v21 = a4;
  }

  [(OITSUBezierPath *)v13 appendBezierPathWithRect:v21, v18, (v20 - v21), (v16 - v18)];
  [(MFPhoneDeviceDriver *)self drawBezierPath:v14 dc:v12 fill:1 stroke:1];

  return 0;
}

- (int)fillRectangle:(id)a3 x1:(int)a4 y1:(int)a5 x2:(int)a6 y2:(int)a7
{
  v12 = a3;
  v13 = objc_alloc_init(OITSUBezierPath);
  v14 = v13;
  if (a5 <= a7)
  {
    v15 = a7;
  }

  else
  {
    v15 = a5;
  }

  v16 = v15;
  if (a5 >= a7)
  {
    v17 = a7;
  }

  else
  {
    v17 = a5;
  }

  v18 = v17;
  if (a4 <= a6)
  {
    v19 = a6;
  }

  else
  {
    v19 = a4;
  }

  v20 = v19;
  if (a4 >= a6)
  {
    v21 = a6;
  }

  else
  {
    v21 = a4;
  }

  [(OITSUBezierPath *)v13 appendBezierPathWithRect:v21, v18, (v20 - v21), (v16 - v18)];
  [(MFPhoneDeviceDriver *)self drawBezierPath:v14 dc:v12 fill:1 stroke:0];

  return 0;
}

- (int)roundRect:(id)a3 left:(int)a4 top:(int)a5 right:(int)a6 bottom:(int)a7 rx:(double)a8 ry:(double)a9
{
  v11 = *&a7;
  v12 = *&a6;
  v13 = *&a5;
  v14 = *&a4;
  v16 = a3;
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

  if (v21 * 0.001 <= a8 && (v23 = v20, v24 = v22 - v20, v24 * 0.001 <= a9))
  {
    if ((v21 * 0.5) >= a8)
    {
      v26 = a8;
    }

    else
    {
      v26 = (v21 * 0.5);
    }

    if ((v24 * 0.5) >= a9)
    {
      v27 = a9;
    }

    else
    {
      v27 = (v24 * 0.5);
    }

    v28 = objc_alloc_init(OITSUBezierPath);
    v33 = v27;
    v29 = v27 + v27;
    v32 = v18;
    [OITSUBezierPath appendBezierPathWithArcWithEllipseBounds:v28 startAngle:"appendBezierPathWithArcWithEllipseBounds:startAngle:swingAngle:angleType:startNewPath:" swingAngle:0 angleType:1 startNewPath:?];
    v30 = (v21 + v18) + v26 * -2.0;
    [(OITSUBezierPath *)v28 appendBezierPathWithArcWithEllipseBounds:0 startAngle:0 swingAngle:v30 angleType:v23 startNewPath:v26 + v26, v29, 270.0, 90.0];
    [(OITSUBezierPath *)v28 appendBezierPathWithArcWithEllipseBounds:0 startAngle:0 swingAngle:v30 angleType:(v24 + v23) + v33 * -2.0 startNewPath:v26 + v26, v29, 0.0, 90.0];
    [(OITSUBezierPath *)v28 appendBezierPathWithArcWithEllipseBounds:0 startAngle:0 swingAngle:v32 angleType:(v24 + v23) + v33 * -2.0 startNewPath:v26 + v26, v29, 90.0, 90.0];
    [(OITSUBezierPath *)v28 closePath];
    [(MFPhoneDeviceDriver *)self drawBezierPath:v28 dc:v16 fill:1 stroke:1];

    v25 = 0;
  }

  else
  {
    v25 = [(MFPhoneDeviceDriver *)self rectangle:v16 x1:v14 y1:v13 x2:v12 y2:v11];
  }

  return v25;
}

- (int)ellipse:(id)a3 x1:(int)a4 y1:(int)a5 x2:(int)a6 y2:(int)a7
{
  v12 = a3;
  v13 = objc_alloc_init(OITSUBezierPath);
  v14 = v13;
  if (a5 <= a7)
  {
    v15 = a7;
  }

  else
  {
    v15 = a5;
  }

  v16 = v15;
  if (a5 >= a7)
  {
    v17 = a7;
  }

  else
  {
    v17 = a5;
  }

  v18 = v17;
  v19 = v16 - v17;
  if (a4 <= a6)
  {
    v20 = a6;
  }

  else
  {
    v20 = a4;
  }

  v21 = v20;
  if (a4 >= a6)
  {
    v22 = a6;
  }

  else
  {
    v22 = a4;
  }

  [(OITSUBezierPath *)v13 appendBezierPathWithOvalInRect:v22, v18, v21 - v22, v19];
  [(MFPhoneDeviceDriver *)self drawBezierPath:v14 dc:v12 fill:1 stroke:1];

  return 0;
}

- (int)bezierTo:(id)a3 x:(int)a4 y:(int)a5 x2:(int)a6 y2:(int)a7 x3:(int)a8 y3:(int)a9
{
  v15 = a3;
  v16 = objc_alloc_init(OITSUBezierPath);
  [v15 getPenPosition];
  [(OITSUBezierPath *)v16 moveToPoint:?];
  [(OITSUBezierPath *)v16 curveToPoint:a8 controlPoint1:a9 controlPoint2:a4, a5, a6, a7];
  [(MFPhoneDeviceDriver *)self drawBezierPath:v16 dc:v15 fill:0 stroke:1];
  [v15 setPenPosition:{a8, a9}];

  return 0;
}

- (int)bezier:(id)a3 x:(int)a4 y:(int)a5 x2:(int)a6 y2:(int)a7 x3:(int)a8 y3:(int)a9 x4:(int)a10 y4:(int)a11
{
  v17 = a3;
  v18 = objc_alloc_init(OITSUBezierPath);
  [(OITSUBezierPath *)v18 moveToPoint:a4, a5];
  [(OITSUBezierPath *)v18 curveToPoint:a10 controlPoint1:a11 controlPoint2:a6, a7, a8, a9];
  [(MFPhoneDeviceDriver *)self drawBezierPath:v18 dc:v17 fill:0 stroke:1];

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

- (int)setViewBox:(double)a3 top:(double)a4 width:(double)a5 height:(double)a6
{
  self->m_viewBox.origin.x = a3;
  self->m_viewBox.origin.y = a4;
  self->m_viewBox.size.width = a5;
  self->m_viewBox.size.height = a6;
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

- (int)activateTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->c;
  *&self->m_worldToDeviceTransform.tx = *&a3->tx;
  *&self->m_worldToDeviceTransform.c = v4;
  *&self->m_worldToDeviceTransform.a = v3;
  [(MFPhoneDeviceDriver *)self applyTransformsToCurrentContext];
  return 0;
}

- (int)excludeClipRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectIntersectsRect(a3, self->m_canvas))
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

- (int)intersectClipRect:(CGRect)a3
{
  if (a3.size.width > 0.0 && a3.size.height > 0.0)
  {
    [OITSUBezierPath clipRect:a3.origin.x, a3.origin.y, v3, v4];
  }

  return 0;
}

- (int)patBlt:(id)a3 in_x:(int)a4 in_y:(int)a5 in_width:(int)a6 in_height:(int)a7 in_rop:(unsigned int)a8
{
  v14 = a3;
  v15 = [v14 getPath];
  v16 = [v15 isOpen];

  if (a8 == 11141161)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16;
  }

  if ((v17 & 1) == 0)
  {
    v18 = [v14 getRop2];
    if (a8 == 16711778)
    {
      v19 = 16;
    }

    else
    {
      v19 = 13;
    }

    if (a8 == 66)
    {
      v20 = 1;
    }

    else
    {
      v20 = v19;
    }

    [v14 setRop2:v20];
    v21 = objc_alloc_init(OITSUBezierPath);
    [(OITSUBezierPath *)v21 appendBezierPathWithRect:a4, a5, a6, a7];
    [(MFPhoneDeviceDriver *)self drawBezierPath:v21 dc:v14 fill:1 stroke:0];
    [v14 setRop2:v18];
  }

  return 0;
}

- (int)bitBlt:(id)a3 in_xDest:(int)a4 in_yDest:(int)a5 in_widthDest:(int)a6 in_heightDest:(int)a7 in_sourceImage:(id)a8 in_xSrc:(int)a9 in_ySrc:(int)a10 in_rop:(unsigned int)a11 in_xform:(CGAffineTransform *)a12 in_colour:(unsigned int)a13
{
  LODWORD(v15) = a13;
  LODWORD(v14) = a11;
  return [(MFPhoneDeviceDriver *)self stretchBlt:a3 in_xDest:*&a4 in_yDest:*&a5 in_widthDest:*&a6 in_heightDest:*&a7 in_sourceImage:a8 in_xSrc:__PAIR64__(a10 in_ySrc:a9) in_widthSrc:__PAIR64__(a7 in_heightSrc:a6) in_rop:v14 in_xform:a12 in_colour:v15];
}

- (int)stretchBlt:(id)a3 in_xDest:(int)a4 in_yDest:(int)a5 in_widthDest:(int)a6 in_heightDest:(int)a7 in_sourceImage:(id)a8 in_xSrc:(int)a9 in_ySrc:(int)a10 in_widthSrc:(int)a11 in_heightSrc:(int)a12 in_rop:(unsigned int)a13 in_xform:(CGAffineTransform *)a14 in_colour:(unsigned int)a15
{
  v16 = *&a7;
  v17 = *&a6;
  v18 = *&a5;
  v19 = *&a4;
  v21 = a3;
  v22 = a8;
  v23 = [v21 getPath];
  v24 = [v23 isOpen];

  if (a13 == 11141161)
  {
    v25 = 1;
  }

  else
  {
    v25 = v24;
  }

  if ((v25 & 1) == 0)
  {
    if (([v22 isEmpty] & 1) != 0 || a13 == 16711778 || a13 == 66)
    {
      v26 = [(MFPhoneDeviceDriver *)self patBlt:v21 in_x:v19 in_y:v18 in_width:v17 in_height:v16 in_rop:a13];
      goto LABEL_10;
    }

    v28 = a9;
    v29 = a10;
    v30 = a11;
    v31 = a12;
    if (a14)
    {
      b = a14->b;
      c = a14->c;
      d = a14->d;
      v35 = d * v29 + b * v28;
      v28 = a14->tx + c * v29 + a14->a * v28;
      v29 = a14->ty + v35;
      v36 = c * v31;
      v31 = d * v31 + b * v30;
      v30 = v36 + a14->a * v30;
    }

    v37 = [v22 getImage];
    [v37 drawInRect:1 fromRect:v19 isFlipped:{v18, v17, v16, v28, v29, v30, v31}];
  }

  v26 = 0;
LABEL_10:

  return v26;
}

- (int)alphaBlend:(id)a3 in_xDest:(int)a4 in_yDest:(int)a5 in_widthDest:(int)a6 in_heightDest:(int)a7 in_sourceImage:(id)a8 in_xSrc:(int)a9 in_ySrc:(int)a10 in_widthSrc:(int)a11 in_heightSrc:(int)a12 in_sourceConstantOpacity:(unsigned __int8)a13 in_useSourceAlphaChannel:(BOOL)a14 in_xform:(CGAffineTransform *)a15 in_colour:(unsigned int)a16
{
  v21 = a8;
  v22 = [a3 getPath];
  if ([v22 isOpen])
  {
    goto LABEL_28;
  }

  v23 = [v21 isEmpty];

  if ((v23 & 1) == 0)
  {
    v25 = a9;
    v26 = a10;
    v27 = a11;
    v28 = a12;
    if (a15)
    {
      b = a15->b;
      c = a15->c;
      d = a15->d;
      v32 = d * v26 + b * v25;
      v25 = a15->tx + c * v26 + a15->a * v25;
      v26 = a15->ty + v32;
      v33 = c * v28;
      v28 = d * v28 + b * v27;
      v27 = v33 + a15->a * v27;
    }

    v34 = [v21 getImage];
    v22 = v34;
    if (!v34)
    {
      v24 = -1;
LABEL_29:

      goto LABEL_30;
    }

    v35 = a4;
    v36 = a5;
    v37 = a6;
    v38 = a7;
    if (__PAIR64__(a14, a13) == 255)
    {
      goto LABEL_27;
    }

    v39 = [v34 CGImage];
    v40 = v39;
    if (!v39)
    {
      goto LABEL_27;
    }

    Width = CGImageGetWidth(v39);
    Height = CGImageGetHeight(v40);
    if (a14)
    {
      v43 = [v21 pixelData];
      if ([v21 pixelDataLength] == Height * 4 * Width && (v44 = TSUDeviceRGBColorSpace(), v45 = CGBitmapContextCreateWithData(v43, Width, Height, 8uLL, 4 * Width, v44, 0x2002u, 0, 0), (v46 = v45) != 0))
      {
        Image = CGBitmapContextCreateImage(v45);
        CGContextRelease(v46);
      }

      else
      {
        Image = 0;
      }

      if (([v21 isFlipped] & 1) == 0)
      {
        v55.origin.x = v25;
        v55.origin.y = v26;
        v55.size.width = v27;
        v55.size.height = v28;
        v48 = 0;
        v26 = v26 + Height + CGRectGetMidY(v55) * -2.0;
        if (!Image)
        {
LABEL_27:
          [v22 drawInRect:1 fromRect:v35 isFlipped:{v36, v37, v38, v25, v26, v27, v28}];
LABEL_28:
          v24 = 0;
          goto LABEL_29;
        }

LABEL_20:
        v61.size.width = Width;
        v61.size.height = Height;
        v61.origin.x = 0.0;
        v61.origin.y = 0.0;
        v56.origin.x = v25;
        v56.origin.y = v26;
        v56.size.width = v27;
        v56.size.height = v28;
        if (CGRectEqualToRect(v56, v61))
        {
          v49 = CGImageRetain(Image);
        }

        else
        {
          v57.origin.x = v25;
          v57.origin.y = v26;
          v57.size.width = v27;
          v57.size.height = v28;
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
            v58.origin.x = v35;
            v58.origin.y = v36;
            v58.size.width = v37;
            v58.size.height = v38;
            MidY = CGRectGetMidY(v58);
            CGContextTranslateCTM(v51, 0.0, MidY);
            CGContextScaleCTM(v51, 1.0, -1.0);
            v59.origin.x = v35;
            v59.origin.y = v36;
            v59.size.width = v37;
            v59.size.height = v38;
            v53 = CGRectGetMidY(v59);
            CGContextTranslateCTM(v51, 0.0, -v53);
          }

          CGContextSetAlpha(v51, a13 / 255.0);
          CGContextSetBlendMode(v51, kCGBlendModeNormal);
          v60.origin.x = v35;
          v60.origin.y = v36;
          v60.size.width = v37;
          v60.size.height = v38;
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

- (id)createHatchBrush:(id)a3 in_hatchstyle:(int)a4
{
  v4 = [MFPhoneHatchBrush hatchBrushWithColour:a3 in_style:*&a4];

  return v4;
}

- (id)createPatternBrush:(id)a3 usePaletteForBilevel:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MFPhonePatternBrush patternBrushWithBitmap:v5 usePaletteForBilevel:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)createSolidBrush:(id)a3
{
  v3 = [MFPhoneSolidBrush solidBrushWithColour:a3];

  return v3;
}

- (id)createPen:(int)a3 in_width:(int)a4 in_colour:(id)a5 in_userStyleArray:(double *)a6
{
  v6 = *&self->m_combinedTransform.c;
  v9[0] = *&self->m_combinedTransform.a;
  v9[1] = v6;
  v9[2] = *&self->m_combinedTransform.tx;
  v7 = [MFPhonePen penWithStyle:*&a3 width:*&a4 colour:a5 styleArray:a6 LPToDPTransform:v9];

  return v7;
}

- (id)createFont:(int)a3 lfWidth:(int)a4 lfEscapement:(int)a5 lfOrientation:(int)a6 lfWeight:(int)a7 lfItalic:(BOOL)a8 lfUnderline:(BOOL)a9 lfStrikeOut:(BOOL)a10 lfCharSet:(int)a11 lfOutPrecision:(int)a12 lfClipPrecision:(unsigned __int8)a13 lfQuality:(int)a14 pitch:(int)a15 family:(int)a16 lfFaceName:(id)a17
{
  LODWORD(v21) = a16;
  BYTE4(v20) = a13;
  HIDWORD(v19) = a11;
  LODWORD(v20) = a12;
  LOWORD(v19) = __PAIR16__(a10, a9);
  v17 = [MFFont fontWithFeatures:"fontWithFeatures:lfWidth:lfEscapement:lfOrientation:lfWeight:lfItalic:lfUnderline:lfStrikeOut:lfCharSet:lfOutPrecision:lfClipPrecision:lfQuality:pitch:family:lfFaceName:" lfWidth:*&a3 lfEscapement:*&a4 lfOrientation:*&a5 lfWeight:*&a6 lfItalic:*&a7 lfUnderline:a8 lfStrikeOut:v19 lfCharSet:v20 lfOutPrecision:*&a14 lfClipPrecision:v21 lfQuality:a17 pitch:? family:? lfFaceName:?];

  return v17;
}

- (id)createFontIndirectW:(int)a3 lfWidth:(int)a4 lfEscapement:(int)a5 lfOrientation:(int)a6 lfWeight:(int)a7 lfItalic:(BOOL)a8 lfUnderline:(BOOL)a9 lfStrikeOut:(BOOL)a10 lfCharSet:(int)a11 lfOutPrecision:(int)a12 lfClipPrecision:(unsigned __int8)a13 lfQuality:(int)a14 pitch:(int)a15 family:(int)a16 lfFaceName:(id)a17 elfFullName:(id)a18 elfStyle:(id)a19 elfVersion:(unsigned int)a20 elfStyleSize:(unsigned int)a21 elfMatch:(unsigned int)a22 elfVendorId:(unsigned int)a23 elfCulture:(unsigned int)a24
{
  LODWORD(v29) = a24;
  LODWORD(v28) = a16;
  BYTE4(v27) = a13;
  HIDWORD(v26) = a11;
  LODWORD(v27) = a12;
  LOWORD(v26) = __PAIR16__(a10, a9);
  v24 = [MFFont fontWithExtendedFeatures:"fontWithExtendedFeatures:lfWidth:lfEscapement:lfOrientation:lfWeight:lfItalic:lfUnderline:lfStrikeOut:lfCharSet:lfOutPrecision:lfClipPrecision:lfQuality:pitch:family:lfFaceName:elfFullName:elfStyle:elfVersion:elfStyleSize:elfMatch:elfVendorId:elfCulture:" lfWidth:*&a3 lfEscapement:*&a4 lfOrientation:*&a5 lfWeight:*&a6 lfItalic:*&a7 lfUnderline:a8 lfStrikeOut:v26 lfCharSet:v27 lfOutPrecision:*&a14 lfClipPrecision:v28 lfQuality:a17 pitch:a18 family:a19 lfFaceName:*&a20 elfFullName:*&a22 elfStyle:v29 elfVersion:? elfStyleSize:? elfMatch:? elfVendorId:? elfCulture:?];

  return v24;
}

- (id)createRegionWithRects:(id)a3 in_dc:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[MFPhoneRegion alloc] initWithRects:v6 in_bounds:v7 in_dc:self->m_viewBox.origin.x, self->m_viewBox.origin.y, self->m_viewBox.size.width, self->m_viewBox.size.height];

  return v8;
}

- (id)createRegionWithPath:(id)a3
{
  v4 = a3;
  v5 = [[MFPhoneRegion alloc] initWithPath:v4 in_bounds:self->m_viewBox.origin.x, self->m_viewBox.origin.y, self->m_viewBox.size.width, self->m_viewBox.size.height];

  return v5;
}

- (id)createDIBitmap:(id)a3 in_dib:(const char *)a4 in_dibSize:(unsigned int)a5 in_usage:(int)a6
{
  v6 = *&a6;
  v7 = *&a5;
  v9 = a3;
  v10 = [(MFBitmap *)[MFPhoneBitmap alloc] initWithDIBitmap:v9 in_dib:a4 in_dibSize:v7 in_usage:v6];

  return v10;
}

- (id)createDIBitmap:(id)a3 in_header:(const char *)a4 in_headerSize:(unsigned int)a5 in_bitmap:(const char *)a6 in_bitmapSize:(unsigned int)a7 in_usage:(int)a8
{
  v8 = *&a8;
  v9 = *&a7;
  v11 = *&a5;
  v13 = a3;
  v14 = [(MFBitmap *)[MFPhoneBitmap alloc] initWithDIBitmap:v13 in_header:a4 in_headerSize:v11 in_bitmap:a6 in_bitmapSize:v9 in_usage:v8];

  return v14;
}

- (id)createBitmap:(id)a3 in_width:(int)a4 in_height:(int)a5 in_planes:(int)a6 in_bitsPerPixel:(int)a7 in_bitmap:(const char *)a8 in_bitmapSize:(unsigned int)a9
{
  v10 = *&a7;
  v11 = *&a6;
  v12 = *&a5;
  v13 = *&a4;
  v14 = a3;
  LODWORD(v17) = a9;
  v15 = [(MFBitmap *)[MFPhoneBitmap alloc] initWithBitmap:v14 in_width:v13 in_height:v12 in_planes:v11 in_bitsPerPixel:v10 in_bitmap:a8 in_bitmapSize:v17];

  return v15;
}

@end