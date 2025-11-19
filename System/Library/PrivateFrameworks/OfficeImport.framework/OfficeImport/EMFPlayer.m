@interface EMFPlayer
+ (CGRect)boundsInLogicalUnits:(id)a3;
+ (CGRect)boundsInPoints:(id)a3;
- (EMFPlayer)initWithGraphicsDevice:(id)a3;
- (int)play:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playAlphaBlend:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playAngleArc:(unsigned int)a3 in_pRecord:(const char *)a4 in_is16bit:(BOOL)a5;
- (int)playArc:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playArcTo:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playBitBlt:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playChord:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playCreateBrushIndirect:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playCreateDibPatternBrushPT:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playCreateMonoBrush:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playCreatePalette:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playCreatePen:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playDeleteObject:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playEllipse:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playExcludeClipRect:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playExtCreateFontIndirectW:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playExtCreatePen:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playExtTextOut:(unsigned int)a3 in_pRecord:(const char *)a4 wideChars:(BOOL)a5;
- (int)playFillRgn:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playHeader:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playIntersectClipRect:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playInvertRgn:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playLineTo:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playMaskBlt:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playModifyWorldTransform:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playMoveToEx:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playOffsetClipRegion:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playPaintRgn:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playPie:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playPlgBlt:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playPolyBezier:(unsigned int)a3 in_pRecord:(const char *)a4 in_is16bit:(BOOL)a5;
- (int)playPolyBezierTo:(unsigned int)a3 in_pRecord:(const char *)a4 in_is16bit:(BOOL)a5;
- (int)playPolyDraw:(unsigned int)a3 in_pRecord:(const char *)a4 in_is16bit:(BOOL)a5;
- (int)playPolyLine:(unsigned int)a3 in_pRecord:(const char *)a4 in_is16bit:(BOOL)a5;
- (int)playPolyLineTo:(unsigned int)a3 in_pRecord:(const char *)a4 in_is16bit:(BOOL)a5;
- (int)playPolyPolyLine:(unsigned int)a3 in_pRecord:(const char *)a4 in_is16bit:(BOOL)a5;
- (int)playPolyPolygon:(unsigned int)a3 in_pRecord:(const char *)a4 in_is16bit:(BOOL)a5;
- (int)playPolygon:(unsigned int)a3 in_pRecord:(const char *)a4 in_is16bit:(BOOL)a5;
- (int)playRealizePalette:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playRectangle:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playResizePalette:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playRestoreDC:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playRoundRect:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSaveDC:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playScaleViewportExt:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playScaleWindowExt:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSelectClipPath:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSelectClipRegion:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSelectObject:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSelectPalette:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSetArcDirection:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSetBkColour:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSetBkMode:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSetBrushOrg:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSetDIBitsToDevice:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSetMapMode:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSetMiterLimit:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSetPaletteEntries:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSetPolyFillMode:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSetRop2:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSetStretchBltMode:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSetTextAlign:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSetTextColour:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSetTextJustification:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSetViewportExt:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSetViewportOrg:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSetWindowExt:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSetWindowOrg:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSetWorldTransform:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playStretchBlt:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playStretchDIBits:(unsigned int)a3 in_pRecord:(const char *)a4;
- (void)done;
@end

@implementation EMFPlayer

- (void)done
{
  [(MFGraphicsDevice *)self->m_gdi done];
  m_emfPlusPlayer = self->m_emfPlusPlayer;
  self->m_emfPlusPlayer = 0;
}

- (EMFPlayer)initWithGraphicsDevice:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = EMFPlayer;
  v6 = [(EMFPlayer *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->m_gdi, a3);
    v7->m_headerDone = 0;
    v8 = [EMFPlusPlayer alloc];
    [v5 getCanvas];
    v9 = [(EMFPlusPlayer *)v8 initWithOwner:v7 canvas:?];
    m_emfPlusPlayer = v7->m_emfPlusPlayer;
    v7->m_emfPlusPlayer = v9;
  }

  return v7;
}

- (int)play:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 4)
  {
    return -7;
  }

  v7 = *a4;
  if (self->m_headerDone)
  {
    if (!self->m_ignoreEMFPlusRecords && v7 == 70)
    {
      if (a3 < 0x10)
      {
        return -7;
      }

      if (*(a4 + 3) == 726027589)
      {
        v8 = *(a4 + 2);
        self->m_ignoreEMFRecords = 1;
        if (v8 - 4 <= a3 - 16)
        {
          return [(EMFPlusPlayer *)self->m_emfPlusPlayer play:a4 + 16 in_size:?];
        }

        return -7;
      }
    }

    if (self->m_ignoreEMFRecords)
    {
      return 0;
    }

    v4 = -2;
    switch(v7)
    {
      case 1:
      case 15:
      case 16:
      case 23:
      case 53:
      case 65:
      case 70:
      case 72:
      case 96:
      case 97:
      case 98:
      case 99:
      case 100:
      case 101:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 110:
      case 111:
      case 112:
      case 113:
      case 115:
      case 116:
      case 117:
      case 118:
      case 119:
        result = [EMFPlayer playUnsupported:"playUnsupported:in_recordName:in_pRecord:" in_recordName:? in_pRecord:?];
        break;
      case 2:
      case 85:
        result = [EMFPlayer playPolyBezier:"playPolyBezier:in_pRecord:in_is16bit:" in_pRecord:? in_is16bit:?];
        break;
      case 3:
      case 86:
        result = [EMFPlayer playPolygon:"playPolygon:in_pRecord:in_is16bit:" in_pRecord:? in_is16bit:?];
        break;
      case 4:
      case 87:
        result = [EMFPlayer playPolyLine:"playPolyLine:in_pRecord:in_is16bit:" in_pRecord:? in_is16bit:?];
        break;
      case 5:
      case 88:
        result = [EMFPlayer playPolyBezierTo:"playPolyBezierTo:in_pRecord:in_is16bit:" in_pRecord:? in_is16bit:?];
        break;
      case 6:
      case 89:
        result = [EMFPlayer playPolyLineTo:"playPolyLineTo:in_pRecord:in_is16bit:" in_pRecord:? in_is16bit:?];
        break;
      case 7:
      case 90:
        result = [EMFPlayer playPolyPolyLine:"playPolyPolyLine:in_pRecord:in_is16bit:" in_pRecord:? in_is16bit:?];
        break;
      case 8:
      case 91:
        result = [EMFPlayer playPolyPolygon:"playPolyPolygon:in_pRecord:in_is16bit:" in_pRecord:? in_is16bit:?];
        break;
      case 9:
        result = [EMFPlayer playSetWindowExt:"playSetWindowExt:in_pRecord:" in_pRecord:?];
        break;
      case 10:
        result = [EMFPlayer playSetWindowOrg:"playSetWindowOrg:in_pRecord:" in_pRecord:?];
        break;
      case 11:
        result = [EMFPlayer playSetViewportExt:"playSetViewportExt:in_pRecord:" in_pRecord:?];
        break;
      case 12:
        result = [EMFPlayer playSetViewportOrg:"playSetViewportOrg:in_pRecord:" in_pRecord:?];
        break;
      case 13:
        result = [EMFPlayer playSetBrushOrg:"playSetBrushOrg:in_pRecord:" in_pRecord:?];
        break;
      case 14:
        return v4;
      case 17:
        result = [EMFPlayer playSetMapMode:"playSetMapMode:in_pRecord:" in_pRecord:?];
        break;
      case 18:
        result = [EMFPlayer playSetBkMode:"playSetBkMode:in_pRecord:" in_pRecord:?];
        break;
      case 19:
        result = [EMFPlayer playSetPolyFillMode:"playSetPolyFillMode:in_pRecord:" in_pRecord:?];
        break;
      case 20:
        result = [EMFPlayer playSetRop2:"playSetRop2:in_pRecord:" in_pRecord:?];
        break;
      case 21:
        result = [EMFPlayer playSetStretchBltMode:"playSetStretchBltMode:in_pRecord:" in_pRecord:?];
        break;
      case 22:
        result = [EMFPlayer playSetTextAlign:"playSetTextAlign:in_pRecord:" in_pRecord:?];
        break;
      case 24:
        result = [EMFPlayer playSetTextColour:"playSetTextColour:in_pRecord:" in_pRecord:?];
        break;
      case 25:
        result = [EMFPlayer playSetBkColour:"playSetBkColour:in_pRecord:" in_pRecord:?];
        break;
      case 26:
        result = [EMFPlayer playOffsetClipRegion:"playOffsetClipRegion:in_pRecord:" in_pRecord:?];
        break;
      case 27:
        result = [EMFPlayer playMoveToEx:"playMoveToEx:in_pRecord:" in_pRecord:?];
        break;
      case 28:
        result = [EMFPlayer playSetMetaRgn:"playSetMetaRgn:in_pRecord:" in_pRecord:?];
        break;
      case 29:
        result = [EMFPlayer playExcludeClipRect:"playExcludeClipRect:in_pRecord:" in_pRecord:?];
        break;
      case 30:
        result = [EMFPlayer playIntersectClipRect:"playIntersectClipRect:in_pRecord:" in_pRecord:?];
        break;
      case 31:
        result = [EMFPlayer playScaleViewportExt:"playScaleViewportExt:in_pRecord:" in_pRecord:?];
        break;
      case 32:
        result = [EMFPlayer playScaleWindowExt:"playScaleWindowExt:in_pRecord:" in_pRecord:?];
        break;
      case 33:
        result = [EMFPlayer playSaveDC:"playSaveDC:in_pRecord:" in_pRecord:?];
        break;
      case 34:
        result = [EMFPlayer playRestoreDC:"playRestoreDC:in_pRecord:" in_pRecord:?];
        break;
      case 35:
        result = [EMFPlayer playSetWorldTransform:"playSetWorldTransform:in_pRecord:" in_pRecord:?];
        break;
      case 36:
        result = [EMFPlayer playModifyWorldTransform:"playModifyWorldTransform:in_pRecord:" in_pRecord:?];
        break;
      case 37:
        result = [EMFPlayer playSelectObject:"playSelectObject:in_pRecord:" in_pRecord:?];
        break;
      case 38:
        result = [EMFPlayer playCreatePen:"playCreatePen:in_pRecord:" in_pRecord:?];
        break;
      case 39:
        result = [EMFPlayer playCreateBrushIndirect:"playCreateBrushIndirect:in_pRecord:" in_pRecord:?];
        break;
      case 40:
        result = [EMFPlayer playDeleteObject:"playDeleteObject:in_pRecord:" in_pRecord:?];
        break;
      case 41:
        result = [EMFPlayer playAngleArc:"playAngleArc:in_pRecord:in_is16bit:" in_pRecord:? in_is16bit:?];
        break;
      case 42:
        result = [EMFPlayer playEllipse:"playEllipse:in_pRecord:" in_pRecord:?];
        break;
      case 43:
        result = [EMFPlayer playRectangle:"playRectangle:in_pRecord:" in_pRecord:?];
        break;
      case 44:
        result = [EMFPlayer playRoundRect:"playRoundRect:in_pRecord:" in_pRecord:?];
        break;
      case 45:
        result = [EMFPlayer playArc:"playArc:in_pRecord:" in_pRecord:?];
        break;
      case 46:
        result = [EMFPlayer playChord:"playChord:in_pRecord:" in_pRecord:?];
        break;
      case 47:
        result = [EMFPlayer playPie:"playPie:in_pRecord:" in_pRecord:?];
        break;
      case 48:
        result = [EMFPlayer playSelectPalette:"playSelectPalette:in_pRecord:" in_pRecord:?];
        break;
      case 49:
        result = [EMFPlayer playCreatePalette:"playCreatePalette:in_pRecord:" in_pRecord:?];
        break;
      case 50:
        result = [EMFPlayer playSetPaletteEntries:"playSetPaletteEntries:in_pRecord:" in_pRecord:?];
        break;
      case 51:
        result = [EMFPlayer playResizePalette:"playResizePalette:in_pRecord:" in_pRecord:?];
        break;
      case 52:
        result = [EMFPlayer playRealizePalette:"playRealizePalette:in_pRecord:" in_pRecord:?];
        break;
      case 54:
        result = [EMFPlayer playLineTo:"playLineTo:in_pRecord:" in_pRecord:?];
        break;
      case 55:
        result = [EMFPlayer playArcTo:"playArcTo:in_pRecord:" in_pRecord:?];
        break;
      case 56:
      case 92:
        result = [EMFPlayer playPolyDraw:"playPolyDraw:in_pRecord:in_is16bit:" in_pRecord:? in_is16bit:?];
        break;
      case 57:
        result = [EMFPlayer playSetArcDirection:"playSetArcDirection:in_pRecord:" in_pRecord:?];
        break;
      case 58:
        result = [EMFPlayer playSetMiterLimit:"playSetMiterLimit:in_pRecord:" in_pRecord:?];
        break;
      case 59:
        result = [EMFPlayer playBeginPath:"playBeginPath:in_pRecord:" in_pRecord:?];
        break;
      case 60:
        result = [EMFPlayer playEndPath:"playEndPath:in_pRecord:" in_pRecord:?];
        break;
      case 61:
        result = [EMFPlayer playCloseFigure:"playCloseFigure:in_pRecord:" in_pRecord:?];
        break;
      case 62:
      case 63:
      case 64:
        result = [EMFPlayer playStrokeAndFillPath:"playStrokeAndFillPath:in_pRecord:in_stroke:in_fill:" in_pRecord:? in_stroke:? in_fill:?];
        break;
      case 66:
        result = [EMFPlayer playWidenPath:"playWidenPath:in_pRecord:" in_pRecord:?];
        break;
      case 67:
        result = [EMFPlayer playSelectClipPath:"playSelectClipPath:in_pRecord:" in_pRecord:?];
        break;
      case 68:
        result = [EMFPlayer playAbortPath:"playAbortPath:in_pRecord:" in_pRecord:?];
        break;
      case 71:
        result = [EMFPlayer playFillRgn:"playFillRgn:in_pRecord:" in_pRecord:?];
        break;
      case 73:
        result = [EMFPlayer playInvertRgn:"playInvertRgn:in_pRecord:" in_pRecord:?];
        break;
      case 74:
        result = [EMFPlayer playPaintRgn:"playPaintRgn:in_pRecord:" in_pRecord:?];
        break;
      case 75:
        result = [EMFPlayer playSelectClipRegion:"playSelectClipRegion:in_pRecord:" in_pRecord:?];
        break;
      case 76:
        result = [EMFPlayer playBitBlt:"playBitBlt:in_pRecord:" in_pRecord:?];
        break;
      case 77:
        result = [EMFPlayer playStretchBlt:"playStretchBlt:in_pRecord:" in_pRecord:?];
        break;
      case 78:
        result = [EMFPlayer playMaskBlt:"playMaskBlt:in_pRecord:" in_pRecord:?];
        break;
      case 79:
        result = [EMFPlayer playPlgBlt:"playPlgBlt:in_pRecord:" in_pRecord:?];
        break;
      case 80:
        result = [EMFPlayer playSetDIBitsToDevice:"playSetDIBitsToDevice:in_pRecord:" in_pRecord:?];
        break;
      case 81:
        result = [EMFPlayer playStretchDIBits:"playStretchDIBits:in_pRecord:" in_pRecord:?];
        break;
      case 82:
        result = [EMFPlayer playExtCreateFontIndirectW:"playExtCreateFontIndirectW:in_pRecord:" in_pRecord:?];
        break;
      case 83:
        result = [EMFPlayer playExtTextOutA:"playExtTextOutA:in_pRecord:" in_pRecord:?];
        break;
      case 84:
        result = [EMFPlayer playExtTextOutW:"playExtTextOutW:in_pRecord:" in_pRecord:?];
        break;
      case 93:
        result = [EMFPlayer playCreateMonoBrush:"playCreateMonoBrush:in_pRecord:" in_pRecord:?];
        break;
      case 94:
        result = [EMFPlayer playCreateDibPatternBrushPT:"playCreateDibPatternBrushPT:in_pRecord:" in_pRecord:?];
        break;
      case 95:
        result = [EMFPlayer playExtCreatePen:"playExtCreatePen:in_pRecord:" in_pRecord:?];
        break;
      case 114:
        result = [EMFPlayer playAlphaBlend:"playAlphaBlend:in_pRecord:" in_pRecord:?];
        break;
      case 120:
        result = [EMFPlayer playSetTextJustification:"playSetTextJustification:in_pRecord:" in_pRecord:?];
        break;
      default:
        result = [EMFPlayer playUnknown:"playUnknown:in_recordType:in_pRecord:" in_recordType:? in_pRecord:?];
        break;
    }
  }

  else
  {
    if (v7 != 1)
    {
      return -7;
    }

    return [EMFPlayer playHeader:"playHeader:in_pRecord:" in_pRecord:?];
  }

  return result;
}

- (int)playHeader:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0x58)
  {
    return -7;
  }

  v6 = *(a4 + 20);
  v5 = *(a4 + 21);
  if (!v6 || v5 == 0)
  {
    return -7;
  }

  v11 = *(a4 + 15);
  v12 = *(a4 + 16);
  v13 = *(a4 + 28);
  v14 = *(a4 + 18) / (v6 * 100.0);
  v15 = *(a4 + 19) / (v5 * 100.0);
  [(MFGraphicsDevice *)self->m_gdi setViewBox:v14 * *(a4 + 6) top:v15 * *(a4 + 7) width:v14 * (*(a4 + 8) - *(a4 + 6)) height:v15 * (*(a4 + 9) - *(a4 + 7))];
  if (v13)
  {
    v16 = (v13 + 1);
  }

  else
  {
    v16 = 0xFFFFLL;
  }

  [(MFGraphicsDevice *)self->m_gdi setMaximumObjectTableSize:v16];
  v8 = 0;
  if (v11)
  {
    if (v12)
    {
      v17 = v12 + v11;
      v8 = -7;
      if (!HIDWORD(v17) && v17 <= a3)
      {
        v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&a4[v12] length:v11 encoding:10];
        v8 = [(MFGraphicsDevice *)self->m_gdi description:v18];
      }
    }
  }

  self->m_headerDone = 1;
  return v8;
}

- (int)playSetWindowExt:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0x10)
  {
    return [(MFGraphicsDevice *)self->m_gdi setWindowExt:*(a4 + 2) in_y:*(a4 + 3)];
  }

  else
  {
    return -7;
  }
}

- (int)playSetWindowOrg:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0x10)
  {
    return [(MFGraphicsDevice *)self->m_gdi setWindowOrg:*(a4 + 2) in_y:*(a4 + 3)];
  }

  else
  {
    return -7;
  }
}

- (int)playScaleWindowExt:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0x18)
  {
    return [(MFGraphicsDevice *)self->m_gdi scaleWindowExt:*(a4 + 2) in_xDenom:*(a4 + 3) in_yNum:*(a4 + 4) in_yDenom:*(a4 + 5)];
  }

  else
  {
    return -7;
  }
}

- (int)playSetWorldTransform:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0x20)
  {
    return -7;
  }

  v15[10] = v4;
  v15[11] = v5;
  [MFByteUtils readFloat32FromByteArray:a4 in_offset:8];
  [MFByteUtils readFloat32FromByteArray:a4 in_offset:12, v9];
  *&v15[1] = v10;
  [MFByteUtils readFloat32FromByteArray:a4 in_offset:16];
  *&v15[2] = v11;
  [MFByteUtils readFloat32FromByteArray:a4 in_offset:20];
  *&v15[3] = v12;
  [MFByteUtils readFloat32FromByteArray:a4 in_offset:24];
  *&v15[4] = v13;
  [MFByteUtils readFloat32FromByteArray:a4 in_offset:28];
  *&v15[5] = v14;
  return [(MFGraphicsDevice *)self->m_gdi setWorldTransform:v15];
}

- (int)playModifyWorldTransform:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0x24)
  {
    return -7;
  }

  v15[10] = v4;
  v15[11] = v5;
  [MFByteUtils readFloat32FromByteArray:a4 in_offset:8];
  [MFByteUtils readFloat32FromByteArray:a4 in_offset:12, v9];
  *&v15[1] = v10;
  [MFByteUtils readFloat32FromByteArray:a4 in_offset:16];
  *&v15[2] = v11;
  [MFByteUtils readFloat32FromByteArray:a4 in_offset:20];
  *&v15[3] = v12;
  [MFByteUtils readFloat32FromByteArray:a4 in_offset:24];
  *&v15[4] = v13;
  [MFByteUtils readFloat32FromByteArray:a4 in_offset:28];
  *&v15[5] = v14;
  return [(MFGraphicsDevice *)self->m_gdi modifyWorldTransform:v15 in_command:*(a4 + 8)];
}

- (int)playSetViewportExt:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0x10)
  {
    return [(MFGraphicsDevice *)self->m_gdi setViewportExt:*(a4 + 2) in_y:*(a4 + 3)];
  }

  else
  {
    return -7;
  }
}

- (int)playSetViewportOrg:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0x10)
  {
    return [(MFGraphicsDevice *)self->m_gdi setViewportOrg:*(a4 + 2) in_y:*(a4 + 3)];
  }

  else
  {
    return -7;
  }
}

- (int)playScaleViewportExt:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0x18)
  {
    return [(MFGraphicsDevice *)self->m_gdi scaleViewportExt:*(a4 + 2) in_xDenom:*(a4 + 3) in_yNum:*(a4 + 4) in_yDenom:*(a4 + 5)];
  }

  else
  {
    return -7;
  }
}

- (int)playSelectPalette:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0xC)
  {
    return -7;
  }

  v5 = *(a4 + 11);
  m_gdi = self->m_gdi;
  if (v5 << 24 < 0)
  {
    return [(MFGraphicsDevice *)m_gdi getStockObject:(*(a4 + 4) | (*(a4 + 10) << 16)) & 0xFFFFFF | (v5 << 24) & 0x7FFFFFFFu];
  }

  else
  {
    return [(MFGraphicsDevice *)m_gdi selectObject:(*(a4 + 4) | (*(a4 + 10) << 16)) & 0xFFFFFF | (v5 << 24)];
  }
}

- (int)playSelectObject:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0xC)
  {
    return -7;
  }

  v5 = *(a4 + 11);
  m_gdi = self->m_gdi;
  if (v5 << 24 < 0)
  {
    return [(MFGraphicsDevice *)m_gdi getStockObject:(*(a4 + 4) | (*(a4 + 10) << 16)) & 0xFFFFFF | (v5 << 24) & 0x7FFFFFFFu];
  }

  else
  {
    return [(MFGraphicsDevice *)m_gdi selectObject:(*(a4 + 4) | (*(a4 + 10) << 16)) & 0xFFFFFF | (v5 << 24)];
  }
}

- (int)playDeleteObject:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0xC)
  {
    return [(MFGraphicsDevice *)self->m_gdi deleteObject:*(a4 + 2)];
  }

  else
  {
    return -7;
  }
}

- (int)playCreatePen:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0x1C)
  {
    return -7;
  }

  v7 = *(a4 + 3);
  v6 = *(a4 + 4);
  v8 = *(a4 + 2);
  v9 = [OITSUColor colorWithRGBBytes:*(a4 + 24) green:*(a4 + 25) blue:*(a4 + 26)];
  v4 = [(MFGraphicsDevice *)self->m_gdi createPen:v7 width:v6 in_colour:v9 in_userStyleArray:0 index:v8];

  return v4;
}

- (int)playExtCreatePen:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0x34)
  {
    return -7;
  }

  v5 = *(a4 + 51);
  v6 = *(a4 + 24) | (*(a4 + 50) << 16) | (v5 << 24);
  if ((4 * v6) > 0xFFFFFFCB)
  {
    return -7;
  }

  v7 = -7;
  if (v5 <= 0x3F && 4 * v6 + 52 <= a3)
  {
    v9 = *(a4 + 2);
    v11 = *(a4 + 7);
    v10 = *(a4 + 8);
    if (v6)
    {
      v12 = smalloc_typed(v6, 8uLL, 0x100004000313F17uLL);
      if (!v12)
      {
        return -4;
      }
    }

    else
    {
      v12 = 0;
    }

    v14 = [OITSUColor colorWithRGBBytes:*(a4 + 40) green:*(a4 + 41) blue:*(a4 + 42)];
    if (v6)
    {
      v15 = 55;
      v16 = v12;
      do
      {
        *v16++ = (a4[v15 - 3] | (a4[v15 - 2] << 8) | (a4[v15 - 1] << 16) | (a4[v15] << 24));
        v15 += 4;
        --v6;
      }

      while (v6);
    }

    v7 = [(MFGraphicsDevice *)self->m_gdi createPen:v11 width:v10 in_colour:v14 in_userStyleArray:v12 index:v9];
    if (v12)
    {
      free(v12);
    }
  }

  return v7;
}

- (int)playCreatePalette:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0xC)
  {
    return -7;
  }

  v5 = *(a4 + 7);
  if (4 * v5 + 16 > a3)
  {
    return -7;
  }

  v8 = *(a4 + 2);
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(a4 + 7)];
  if (v5)
  {
    v10 = (a4 + 18);
    do
    {
      v11 = [OITSUColor colorWithRGBBytes:*(v10 - 2) green:*(v10 - 1) blue:*v10];
      [v9 addObject:v11];
      v10 += 4;

      --v5;
    }

    while (v5);
  }

  v6 = [(MFGraphicsDevice *)self->m_gdi createPalette:v9 in_index:v8];

  return v6;
}

- (int)playSetPaletteEntries:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0x14)
  {
    return -7;
  }

  v5 = *(a4 + 19);
  v6 = *(a4 + 8) | (*(a4 + 18) << 16) | (v5 << 24);
  if ((4 * v6) > 0xFFFFFFEB)
  {
    return -7;
  }

  v7 = -7;
  if (v5 <= 0x3F && 4 * v6 + 20 <= a3)
  {
    v9 = *(a4 + 2);
    v10 = *(a4 + 3);
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:v6];
    if (v6)
    {
      v12 = 20;
      do
      {
        v13 = [OITSUColor colorWithRGBBytes:a4[v12] green:a4[v12 + 1] blue:a4[v12 + 2]];
        [v11 addObject:v13];

        v12 += 4;
        LODWORD(v6) = v6 - 1;
      }

      while (v6);
    }

    v7 = [(MFGraphicsDevice *)self->m_gdi setPaletteEntries:v10 in_colours:v11 in_index:v9];
  }

  return v7;
}

- (int)playResizePalette:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0x10)
  {
    return [(MFGraphicsDevice *)self->m_gdi resizePalette:*(a4 + 3) in_index:*(a4 + 2)];
  }

  else
  {
    return -7;
  }
}

- (int)playRealizePalette:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 8)
  {
    return [(MFGraphicsDevice *)self->m_gdi realizePalette];
  }

  else
  {
    return -7;
  }
}

- (int)playExtCreateFontIndirectW:(unsigned int)a3 in_pRecord:(const char *)a4
{
  v49 = *MEMORY[0x277D85DE8];
  if (a3 < 0x149)
  {
    return -7;
  }

  v6 = 0;
  v44 = *(a4 + 4);
  v45 = *(a4 + 3);
  v43 = *(a4 + 5);
  v42 = *(a4 + 6);
  v40 = *(a4 + 2);
  v41 = *(a4 + 7);
  v35 = *(a4 + 32);
  v36 = *(a4 + 33);
  v37 = *(a4 + 34);
  v38 = a4[37];
  v34 = *(a4 + 38);
  v7 = a4 + 41;
  v8 = *(a4 + 39);
  v46 = *(a4 + 36);
  v47 = *(a4 + 35);
  do
  {
    v9 = *(v7 - 1);
    v48[v6] = v9;
    if (!v9)
    {
      break;
    }

    v7 += 2;
    ++v6;
  }

  while (v6 != 32);
  v10 = [MEMORY[0x277CCACA8] stringWithCharacters:v48 length:?];
  v11 = 0;
  v12 = v10;
  v13 = a4 + 105;
  do
  {
    v14 = *(v13 - 1);
    v48[v11] = v14;
    if (!v14)
    {
      break;
    }

    v13 += 2;
    ++v11;
  }

  while (v11 != 64);
  v15 = [MEMORY[0x277CCACA8] stringWithCharacters:v48 length:?];
  v16 = 0;
  v17 = v15;
  v18 = a4 + 233;
  do
  {
    v19 = *(v18 - 1);
    v48[v16] = v19;
    if (!v19)
    {
      break;
    }

    v18 += 2;
    ++v16;
  }

  while (v16 != 32);
  v20 = [MEMORY[0x277CCACA8] stringWithCharacters:v48 length:?];
  v21 = *(a4 + 74);
  v22 = *(a4 + 75);
  v23 = *(a4 + 76);
  v24 = *(a4 + 78);
  v25 = *(a4 + 79);
  IsValidCharSet = ChValueIsValidCharSet(v47);
  v28 = v8 < 0x60 && v46 < 0xBu;
  if (v28 & IsValidCharSet)
  {
    v29 = v34;
    if (v34 >= 5)
    {
      v29 = 0;
    }

    LODWORD(v33) = v8 & 0x70;
    BYTE4(v32) = v38;
    HIDWORD(v31) = v47;
    LODWORD(v32) = v46;
    BYTE1(v31) = v37 != 0;
    LOBYTE(v31) = v36 != 0;
    v4 = [MFGraphicsDevice createFontIndirectW:"createFontIndirectW:lfWidth:lfEscapement:lfOrientation:lfWeight:lfItalic:lfUnderline:lfStrikeOut:lfCharSet:lfOutPrecision:lfClipPrecision:lfQuality:pitch:family:lfFaceName:elfFullName:elfStyle:elfVersion:elfStyleSize:elfMatch:elfVendorId:elfCulture:index:" lfWidth:v45 lfEscapement:v44 lfOrientation:v43 lfWeight:v42 lfItalic:v41 lfUnderline:v35 != 0 lfStrikeOut:v31 lfCharSet:v32 lfOutPrecision:__PAIR64__(v8 & 3 lfClipPrecision:v29) lfQuality:v33 pitch:v12 family:v17 lfFaceName:v20 elfFullName:__PAIR64__(v22 elfStyle:v21) elfVersion:__PAIR64__(v24 elfStyleSize:v23) elfMatch:__PAIR64__(v40 elfVendorId:v25) elfCulture:? index:?];
  }

  else
  {
    v4 = -7;
  }

  return v4;
}

- (int)playCreateBrushIndirect:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0x18)
  {
    return -7;
  }

  v7 = *(a4 + 8);
  v8 = *(a4 + 9);
  v9 = *(a4 + 10);
  v10 = *(a4 + 11);
  v11 = *(a4 + 3);
  v12 = [OITSUColor colorWithRGBBytes:*(a4 + 16) green:*(a4 + 17) blue:*(a4 + 18)];
  if (v11 > 9)
  {
    v4 = -7;
  }

  else
  {
    v13 = *(a4 + 5);
    if (v13 >= 6)
    {
      v14 = 0xFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    v4 = [(MFGraphicsDevice *)self->m_gdi createBrush:dword_25D6FD6E8[v11] in_colour:v12 hatchstyle:v14 index:v7 | (v8 << 8) | (v9 << 16) | (v10 << 24)];
  }

  return v4;
}

- (int)playCreateMonoBrush:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0x20)
  {
    return -7;
  }

  v5 = *(a4 + 4);
  v4 = *(a4 + 5);
  if (v5 + v4 > a3)
  {
    return -7;
  }

  v6 = *(a4 + 6);
  v7 = v6 + *(a4 + 7);
  v8 = !HIDWORD(v7) && (v5 + v4) >> 32 == 0;
  if (!v8 || v7 > a3)
  {
    return -7;
  }

  v13 = *(a4 + 2);
  v14 = [MFGraphicsDevice createDIBitmap:"createDIBitmap:in_headerSize:in_bitmap:in_bitmapSize:in_usage:" in_headerSize:&a4[v5] in_bitmap:*(a4 + 5) in_bitmapSize:&a4[v6] in_usage:?];
  v15 = v14;
  if (v14)
  {
    v10 = [(MFGraphicsDevice *)self->m_gdi createPatternBrush:v14 index:v13 usePaletteForBilevel:0];
  }

  else
  {
    v10 = -7;
  }

  return v10;
}

- (int)playCreateDibPatternBrushPT:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0x20)
  {
    return -7;
  }

  v5 = *(a4 + 4);
  v4 = *(a4 + 5);
  if (v5 + v4 > a3)
  {
    return -7;
  }

  v6 = *(a4 + 6);
  v7 = v6 + *(a4 + 7);
  v8 = !HIDWORD(v7) && (v5 + v4) >> 32 == 0;
  if (!v8 || v7 > a3)
  {
    return -7;
  }

  v13 = *(a4 + 2);
  v14 = [MFGraphicsDevice createDIBitmap:"createDIBitmap:in_headerSize:in_bitmap:in_bitmapSize:in_usage:" in_headerSize:&a4[v5] in_bitmap:*(a4 + 5) in_bitmapSize:&a4[v6] in_usage:?];
  v15 = v14;
  if (v14)
  {
    v10 = [(MFGraphicsDevice *)self->m_gdi createPatternBrush:v14 index:v13 usePaletteForBilevel:1];
  }

  else
  {
    v10 = -7;
  }

  return v10;
}

- (int)playExtTextOut:(unsigned int)a3 in_pRecord:(const char *)a4 wideChars:(BOOL)a5
{
  v64 = *MEMORY[0x277D85DE8];
  if (a3 < 0x38)
  {
    return -7;
  }

  if (a5)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = *(a4 + 44) | (*(a4 + 45) << 8) | (*(a4 + 46) << 16) & 0xFFFFFF | (*(a4 + 47) << 24);
  v11 = *(a4 + 50);
  v12 = *(a4 + 48) | (*(a4 + 49) << 8) | (*(a4 + 50) << 16) & 0xFFFFFF | (*(a4 + 51) << 24);
  v13 = *(a4 + 52);
  if ((v13 & 6) != 0)
  {
    v14 = *(a4 + 14);
    v15 = *(a4 + 15);
    v17 = *(a4 + 16);
    v16 = *(a4 + 17);
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v17 = 0;
    v16 = 0;
  }

  v18 = v10 * v9;
  v19 = (v18 & 0xFFFFFFFF00000000) != 0;
  v20 = v12 + v18;
  v5 = -7;
  if (HIDWORD(v20))
  {
    v21 = 1;
  }

  else
  {
    v21 = v20 > a3;
  }

  if (!v21 && !v19)
  {
    v22 = *(a4 + 53);
    v54 = *(a4 + 54);
    v55 = v22;
    v23 = *(a4 + 9);
    v56 = *(a4 + 10);
    v57 = v23;
    v53 = *(a4 + 55);
    v24 = *(a4 + 72);
    v25 = *(a4 + 73);
    v62 = *(a4 + 74);
    v63 = v24;
    v60 = *(a4 + 75);
    v61 = v25;
    v58 = v16;
    v59 = v17;
    if (a5)
    {
      v26 = MEMORY[0x28223BE20](v11);
      v35 = &v52 - v34;
      if (v10)
      {
        v36 = (v33 << 24) | (v31 << 16) | (v32 << 8) | v29;
        v37 = (v27 << 24) + (v26 << 16) + (v28 << 8) + v30;
        v38 = v35;
        do
        {
          *v38++ = a4[v37] | (a4[v37 + 1] << 8);
          v37 += 2;
          --v36;
        }

        while (v36);
      }

      if ((v13 & 0x10) != 0)
      {
        [MEMORY[0x277CBEA90] dataWithBytes:? length:?];
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithCharacters:? length:?];
      }
      v40 = ;
    }

    else
    {
      v39 = [(MFGraphicsDevice *)self->m_gdi getCurrentFont];
      v40 = [v39 stringWithBytes:&a4[v12] length:v10];
    }

    v41 = 0;
    LODWORD(v42) = 0;
    v43 = v63 | (v61 << 8) | (v62 << 16) & 0xFFFFFF | (v60 << 24);
    if (v43)
    {
      v44 = a3 >= v43;
      v45 = a3 - v43;
      if (v45 != 0 && v44)
      {
        v46 = v45 >> 2;
        if (v46 >= v10)
        {
          v42 = v10;
        }

        else
        {
          v42 = v46;
        }

        v47 = smalloc_typed(v42, 4uLL, 0x100004052888210uLL);
        v41 = v47;
        if (!v47)
        {
          v5 = -4;
          goto LABEL_34;
        }

        if (v42)
        {
          v48 = 0;
          v49 = (v60 << 24) + (v62 << 16) + (v61 << 8) + v63;
          do
          {
            *&v47[v48] = a4[(v49 + v48)] | (a4[(v49 + v48 + 1)] << 8) | (a4[(v49 + v48 + 2)] << 16) | (a4[(v49 + v48 + 3)] << 24);
            v48 += 4;
          }

          while (4 * v42 != v48);
        }
      }
    }

    LODWORD(v51) = v42;
    v5 = [(MFGraphicsDevice *)self->m_gdi extTextOut:v57 y:v56 in_text:v40 options:(v54 << 16) | (v55 << 8) | (v53 << 24) | v13 left:v14 top:v15 right:__PAIR64__(v58 bottom:v59) spacingValues:v41 numValues:v51];
    free(v41);
LABEL_34:
  }

  return v5;
}

- (int)playSetTextAlign:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0xC)
  {
    return [(MFGraphicsDevice *)self->m_gdi setTextAlign:a4[8] & 1 textHorizontalAlign:a4[8] & 6 textVerticalAlign:a4[8] & 0x18 textDirection:(a4[9] & 1) << 8];
  }

  else
  {
    return -7;
  }
}

- (int)playSetTextColour:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0xC)
  {
    return -7;
  }

  v6 = [OITSUColor colorWithRGBBytes:*(a4 + 8) green:*(a4 + 9) blue:*(a4 + 10)];
  v4 = [(MFGraphicsDevice *)self->m_gdi setTextColour:v6];

  return v4;
}

- (int)playSetTextJustification:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0x10)
  {
    return [(MFGraphicsDevice *)self->m_gdi setTextJustification:*(a4 + 3) in_breakCount:*(a4 + 2)];
  }

  else
  {
    return -7;
  }
}

- (int)playSetBkColour:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0xC)
  {
    return -7;
  }

  v6 = [OITSUColor colorWithRGBBytes:*(a4 + 8) green:*(a4 + 9) blue:*(a4 + 10)];
  v4 = [(MFGraphicsDevice *)self->m_gdi setBkColour:v6];

  return v4;
}

- (int)playOffsetClipRegion:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0x10)
  {
    return [(MFGraphicsDevice *)self->m_gdi offsetClipRegionByX:*(a4 + 2) y:*(a4 + 3)];
  }

  else
  {
    return -7;
  }
}

- (int)playSetBkMode:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0xC || (*(a4 + 2) - 1) > 1)
  {
    return -7;
  }

  else
  {
    return [(MFGraphicsDevice *)self->m_gdi setBkMode:?];
  }
}

- (int)playSetBrushOrg:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0x10)
  {
    return [(MFGraphicsDevice *)self->m_gdi setBrushOrg:*(a4 + 2) y:*(a4 + 3)];
  }

  else
  {
    return -7;
  }
}

- (int)playSetMapMode:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0xC || (*(a4 + 2) - 1) > 7)
  {
    return -7;
  }

  else
  {
    return [(MFGraphicsDevice *)self->m_gdi setMapMode:?];
  }
}

- (int)playPolyDraw:(unsigned int)a3 in_pRecord:(const char *)a4 in_is16bit:(BOOL)a5
{
  if (a3 < 0x1C)
  {
    return -7;
  }

  v23 = v5;
  v24 = v6;
  v8 = a5;
  v10 = *(a4 + 6);
  if (a5)
  {
    v11 = 5;
  }

  else
  {
    v11 = 9;
  }

  v12 = v10 * v11;
  if (v12 > 0xFFFFFFE3)
  {
    return -7;
  }

  result = -7;
  if (v12 + 28 <= a3 && (v12 & 0xFFFFFFFF00000000) == 0)
  {
    if (a5)
    {
      v14 = 2;
    }

    else
    {
      v14 = 3;
    }

    if (v10)
    {
      v15 = 0;
      v16 = (v10 << v14) + 28;
      while (1)
      {
        *v22 = 0;
        v17 = v15 + v16;
        v18 = a4[v15 + v16];
        parsePoint((a4 + 28), v15, &v22[1], v22, v8);
        v19 = v18 & 0xFE;
        switch(v19)
        {
          case 6:
            result = [(MFGraphicsDevice *)self->m_gdi moveTo:v22[1] y:v22[0]];
            if (result)
            {
              return result;
            }

            break;
          case 4:
            *v20 = 0;
            *v21 = 0;
            if (v10 - v15 > 2 || (a4[v17 + 1] & 0xFE) != 6 || (a4[v17 + 2] & 0xFE) != 6)
            {
              return -7;
            }

            parsePoint((a4 + 28), v15 + 1, &v21[1], v21, v8);
            v15 += 2;
            parsePoint((a4 + 28), v15, &v20[1], v20, v8);
            result = [(MFGraphicsDevice *)self->m_gdi bezierTo:v22[1] y:v22[0] x2:v21[1] y2:v21[0] x3:v20[1] y3:v20[0]];
            v18 = a4[v15 + v16];
            if (result)
            {
              return result;
            }

            break;
          case 2:
            result = [(MFGraphicsDevice *)self->m_gdi lineTo:v22[1] y:v22[0]];
            if (result)
            {
              return result;
            }

            break;
          default:
            return -7;
        }

        if ((v18 & 1) == 0 || (result = [(MFGraphicsDevice *)self->m_gdi closeCurrentPath:1]) == 0)
        {
          result = 0;
          if (++v15 < v10)
          {
            continue;
          }
        }

        return result;
      }
    }

    return 0;
  }

  return result;
}

- (int)playPolyBezier:(unsigned int)a3 in_pRecord:(const char *)a4 in_is16bit:(BOOL)a5
{
  if (a3 < 0x1C)
  {
    return -7;
  }

  v24 = v5;
  v25 = v6;
  v8 = a5;
  if (a5)
  {
    v10 = 4;
  }

  else
  {
    v10 = 8;
  }

  v11 = *(a4 + 6);
  v12 = v11 * v10;
  if (v12 > 0xFFFFFFE3)
  {
    return -7;
  }

  result = -7;
  if (v11 && v12 + 28 <= a3 && (v12 & 0xFFFFFFFF00000000) == 0 && -1431655765 * v11 + 1431655765 <= 0x55555555)
  {
    *v22 = 0;
    *v23 = 0;
    *v20 = 0;
    *v21 = 0;
    parsePoint((a4 + 28), 0, &v23[1], v23, a5);
    if (v11 < 2)
    {
      return 0;
    }

    else
    {
      v14 = v23[0];
      v15 = v23[1];
      v16 = 1;
      while (1)
      {
        parsePoint((a4 + 28), v16, &v22[1], v22, v8);
        parsePoint((a4 + 28), v16 + 1, &v21[1], v21, v8);
        v17 = v16 + 2;
        parsePoint((a4 + 28), v17, &v20[1], v20, v8);
        v19 = v20[0];
        v18 = v20[1];
        result = [(MFGraphicsDevice *)self->m_gdi bezier:v15 y:v14 x2:v22[1] y2:v22[0] x3:v21[1] y3:v21[0] x4:__PAIR64__(v20[0] y4:v20[1])];
        if (result)
        {
          break;
        }

        v16 = v17 + 1;
        v15 = v18;
        v14 = v19;
        if (v16 >= v11)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

- (int)playPolyBezierTo:(unsigned int)a3 in_pRecord:(const char *)a4 in_is16bit:(BOOL)a5
{
  if (a3 < 0x1C)
  {
    return -7;
  }

  v20 = v5;
  v21 = v6;
  v8 = a5;
  if (a5)
  {
    v11 = 4;
  }

  else
  {
    v11 = 8;
  }

  v12 = *(a4 + 6);
  v13 = v12 * v11;
  result = -7;
  v15 = -1431655765 * v12 > 0x55555555 || v12 == 0 || v13 + 28 > a3;
  if (!v15 && (v13 & 0xFFFFFFFF00000000) == 0 && v13 <= 0xFFFFFFE3)
  {
    v16 = 0;
    *v18 = 0;
    *v19 = 0;
    *v17 = 0;
    while (v16 < v12)
    {
      parsePoint((a4 + 28), v16, &v19[1], v19, v8);
      parsePoint((a4 + 28), v16 + 1, &v18[1], v18, v8);
      parsePoint((a4 + 28), v16 + 2, &v17[1], v17, v8);
      result = [(MFGraphicsDevice *)self->m_gdi bezierTo:v19[1] y:v19[0] x2:v18[1] y2:v18[0] x3:v17[1] y3:v17[0]];
      v16 += 3;
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

- (int)playPolygon:(unsigned int)a3 in_pRecord:(const char *)a4 in_is16bit:(BOOL)a5
{
  result = -7;
  if (a3 >= 0x1C && a4)
  {
    v8 = a5;
    if (a5)
    {
      v9 = 4;
    }

    else
    {
      v9 = 8;
    }

    v10 = *(a4 + 24);
    v11 = *(a4 + 25);
    v12 = *(a4 + 26);
    v13 = *(a4 + 27);
    v14 = v10 | (*(a4 + 25) << 8) | (v12 << 16) & 0xFFFFFF | (v13 << 24);
    v15 = v14 * v9;
    if (v15 <= 0xFFFFFFE3 && v15 + 28 <= a3 && (v15 & 0xFFFFFFFF00000000) == 0)
    {
      if (v14 < 2)
      {
        return 0;
      }

      else
      {
        v16 = smalloc_typed(*(a4 + 24) | (*(a4 + 25) << 8) | (*(a4 + 26) << 16) & 0xFFFFFF | (v13 << 24), 0x10uLL, 0x1000040451B5BE8uLL);
        if (v16)
        {
          v17 = v16;
          v18 = 0;
          *v23 = 0;
          v19 = (v13 << 24) | (v12 << 16) | (v11 << 8) | v10;
          v20 = v16 + 1;
          do
          {
            parsePoint((a4 + 28), v18, &v23[1], v23, v8);
            v21 = v23[0];
            *(v20 - 1) = v23[1];
            *v20 = v21;
            ++v18;
            v20 += 2;
          }

          while (v19 != v18);
          v22 = [(MFGraphicsDevice *)self->m_gdi polygon:v17 in_count:v14];
          free(v17);
          return v22;
        }

        else
        {
          return -4;
        }
      }
    }
  }

  return result;
}

- (int)playPolyLine:(unsigned int)a3 in_pRecord:(const char *)a4 in_is16bit:(BOOL)a5
{
  if (a5)
  {
    v6 = 4;
  }

  else
  {
    v6 = 8;
  }

  result = -7;
  if (a3 >= 0x1C)
  {
    if (a4)
    {
      v9 = *(a4 + 6);
      if (v9 >= 2)
      {
        v10 = v9 * v6;
        if (v10 <= 0xFFFFFFE3 && (v10 & 0xFFFFFFFF00000000) == 0 && v10 + 28 <= a3)
        {
          v11 = a5;
          v12 = smalloc_typed(*(a4 + 6), 0x10uLL, 0x1000040451B5BE8uLL);
          if (v12)
          {
            v13 = v12;
            v14 = 0;
            *v18 = 0;
            v15 = v12 + 1;
            do
            {
              parsePoint((a4 + 28), v14, &v18[1], v18, v11);
              v16 = v18[0];
              *(v15 - 1) = v18[1];
              *v15 = v16;
              ++v14;
              v15 += 2;
            }

            while (v9 != v14);
            v17 = [(MFGraphicsDevice *)self->m_gdi polyline:v13 in_count:v9];
            free(v13);
            return v17;
          }

          else
          {
            return -4;
          }
        }
      }
    }
  }

  return result;
}

- (int)playPolyLineTo:(unsigned int)a3 in_pRecord:(const char *)a4 in_is16bit:(BOOL)a5
{
  if (a3 < 2)
  {
    return -7;
  }

  v21 = v5;
  v22 = v6;
  v8 = a5;
  if (a5)
  {
    v10 = 4;
  }

  else
  {
    v10 = 8;
  }

  v11 = *(a4 + 24);
  v12 = *(a4 + 25);
  v13 = *(a4 + 26);
  v14 = *(a4 + 27);
  v15 = v11 | (*(a4 + 25) << 8) | (v13 << 16) & 0xFFFFFF | (v14 << 24);
  v16 = v15 * v10;
  if (v16 > 0xFFFFFFE3)
  {
    return -7;
  }

  result = -7;
  if (v16 + 28 <= a3 && (v16 & 0xFFFFFFFF00000000) == 0)
  {
    if (v15)
    {
      v18 = 0;
      *v20 = 0;
      v19 = (v14 << 24) + (v13 << 16) + (v12 << 8) + v11;
      while (1)
      {
        parsePoint((a4 + 28), v18, &v20[1], v20, v8);
        result = [(MFGraphicsDevice *)self->m_gdi lineTo:v20[1] y:v20[0]];
        if (result)
        {
          break;
        }

        if (v19 == ++v18)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (int)playRoundRect:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0x20)
  {
    return [(MFGraphicsDevice *)self->m_gdi roundRect:*(a4 + 2) top:*(a4 + 3) right:*(a4 + 4) bottom:*(a4 + 5) rx:vcvtd_n_f64_s32(*(a4 + 6) ry:1uLL), vcvtd_n_f64_s32(*(a4 + 7), 1uLL)];
  }

  else
  {
    return -7;
  }
}

- (int)playSetStretchBltMode:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0xC || (*(a4 + 2) - 1) > 3)
  {
    return -7;
  }

  else
  {
    return [(MFGraphicsDevice *)self->m_gdi setStretchBltMode:?];
  }
}

- (int)playSaveDC:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 8)
  {
    return [(MFGraphicsDevice *)self->m_gdi saveDC];
  }

  else
  {
    return -7;
  }
}

- (int)playRestoreDC:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0xC)
  {
    return [(MFGraphicsDevice *)self->m_gdi restoreDC:*(a4 + 2)];
  }

  else
  {
    return -7;
  }
}

- (int)playLineTo:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0x10)
  {
    return [(MFGraphicsDevice *)self->m_gdi lineTo:*(a4 + 2) y:*(a4 + 3)];
  }

  else
  {
    return -7;
  }
}

- (int)playMoveToEx:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0x10)
  {
    return [(MFGraphicsDevice *)self->m_gdi moveTo:*(a4 + 2) y:*(a4 + 3)];
  }

  else
  {
    return -7;
  }
}

- (int)playSetArcDirection:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0xC)
  {
    return [(MFGraphicsDevice *)self->m_gdi setArcDirection:*(a4 + 2)];
  }

  else
  {
    return -7;
  }
}

- (int)playArc:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0x28)
  {
    return [(MFGraphicsDevice *)self->m_gdi arc:*(a4 + 2) nTopRect:*(a4 + 3) nRightRect:*(a4 + 4) nBottomRect:*(a4 + 5) nXStartArc:*(a4 + 6) nYStartArc:*(a4 + 7) nXEndArc:*(a4 + 4) nYEndArc:?];
  }

  else
  {
    return -7;
  }
}

- (int)playArcTo:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0x28)
  {
    return [(MFGraphicsDevice *)self->m_gdi arcTo:*(a4 + 2) nTopRect:*(a4 + 3) nRightRect:*(a4 + 4) nBottomRect:*(a4 + 5) nXStartArc:*(a4 + 6) nYStartArc:*(a4 + 7) nXEndArc:*(a4 + 4) nYEndArc:?];
  }

  else
  {
    return -7;
  }
}

- (int)playChord:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0x28)
  {
    return [(MFGraphicsDevice *)self->m_gdi chord:*(a4 + 2) nTopRect:*(a4 + 3) nRightRect:*(a4 + 4) nBottomRect:*(a4 + 5) nXStartArc:*(a4 + 6) nYStartArc:*(a4 + 7) nXEndArc:*(a4 + 4) nYEndArc:?];
  }

  else
  {
    return -7;
  }
}

- (int)playPie:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0x28)
  {
    return [(MFGraphicsDevice *)self->m_gdi pie:*(a4 + 2) nTopRect:*(a4 + 3) nRightRect:*(a4 + 4) nBottomRect:*(a4 + 5) nXStartArc:*(a4 + 6) nYStartArc:*(a4 + 7) nXEndArc:*(a4 + 4) nYEndArc:?];
  }

  else
  {
    return -7;
  }
}

- (int)playEllipse:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0x18)
  {
    return [(MFGraphicsDevice *)self->m_gdi ellipse:*(a4 + 4) y1:*(a4 + 5) x2:*(a4 + 2) y2:*(a4 + 3)];
  }

  else
  {
    return -7;
  }
}

- (int)playRectangle:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0x18)
  {
    return [(MFGraphicsDevice *)self->m_gdi rectangle:*(a4 + 2) y1:*(a4 + 3) x2:*(a4 + 4) y2:*(a4 + 5)];
  }

  else
  {
    return -7;
  }
}

- (int)playPolyPolygon:(unsigned int)a3 in_pRecord:(const char *)a4 in_is16bit:(BOOL)a5
{
  if (a3 < 0x20)
  {
    return -7;
  }

  v5 = a5;
  v7 = a5 ? 4 : 8;
  v8 = *(a4 + 27);
  v9 = *(a4 + 12) | (*(a4 + 26) << 16) | (v8 << 24);
  v10 = *(a4 + 28);
  v11 = *(a4 + 29);
  v12 = *(a4 + 30);
  v13 = *(a4 + 31);
  v14 = v10 | (*(a4 + 29) << 8) | (v12 << 16) & 0xFFFFFF | (v13 << 24);
  v15 = 4 * v9;
  v16 = v14 * v7;
  v17 = (v16 & 0xFFFFFFFF00000000) != 0;
  v18 = v16 + (4 * v9 + 32);
  if (HIDWORD(v18))
  {
    return -7;
  }

  v19 = -7;
  if (v15 <= 0xFFFFFFDF && !v17 && v8 <= 0x3F && v18 <= a3)
  {
    v20 = smalloc_typed(v14, 0x10uLL, 0x1000040451B5BE8uLL);
    v21 = smalloc_typed(v9, 4uLL, 0x100004052888210uLL);
    if (v20 && v21)
    {
      v35 = v21;
      v36 = v20;
      if (v9)
      {
        v22 = 0;
        v23 = 35;
        v24 = v9;
        v25 = v21;
        while (1)
        {
          v26 = a4[v23 - 3] | (a4[v23 - 2] << 8) | (a4[v23 - 1] << 16) | (a4[v23] << 24);
          *v25 = v26;
          v22 += v26;
          if (v26 <= 1)
          {
            break;
          }

          ++v25;
          v23 += 4;
          if (!--v24)
          {
            v27 = 0;
            goto LABEL_26;
          }
        }

        v27 = -7;
      }

      else
      {
        v27 = 0;
        v22 = 0;
      }

LABEL_26:
      if (v22 <= v14)
      {
        v19 = v27;
      }

      else
      {
        v19 = -7;
      }

      if (!v19)
      {
        if (v14)
        {
          v30 = 0;
          v31 = &a4[v15];
          v32 = (v13 << 24) | (v12 << 16) | (v11 << 8) | v10;
          v33 = v36 + 1;
          do
          {
            *v38 = 0;
            parsePoint((v31 + 32), v30, &v38[1], v38, v5);
            v34 = v38[0];
            *(v33 - 1) = v38[1];
            *v33 = v34;
            ++v30;
            v33 += 2;
          }

          while (v32 != v30);
        }

        v19 = [(MFGraphicsDevice *)self->m_gdi polyPolygon:v36 in_polyCounts:v35 in_count:v9, v35];
      }

      free(v36);
      free(v35);
    }

    else
    {
      if (v20)
      {
        v29 = v21;
        free(v20);
        v21 = v29;
      }

      if (v21)
      {
        free(v21);
      }

      return -4;
    }
  }

  return v19;
}

- (int)playPolyPolyLine:(unsigned int)a3 in_pRecord:(const char *)a4 in_is16bit:(BOOL)a5
{
  if (a3 < 0x20)
  {
    return -7;
  }

  v5 = a5;
  v7 = a5 ? 4 : 8;
  v8 = *(a4 + 27);
  v9 = *(a4 + 12) | (*(a4 + 26) << 16) | (v8 << 24);
  v10 = *(a4 + 28);
  v11 = *(a4 + 29);
  v12 = *(a4 + 30);
  v13 = *(a4 + 31);
  v14 = v10 | (*(a4 + 29) << 8) | (v12 << 16) & 0xFFFFFF | (v13 << 24);
  v15 = 4 * v9;
  v16 = v14 * v7;
  v17 = (v16 & 0xFFFFFFFF00000000) != 0;
  v18 = v16 + (4 * v9 + 32);
  if (HIDWORD(v18))
  {
    return -7;
  }

  v19 = -7;
  if (v15 <= 0xFFFFFFDF && !v17 && v8 <= 0x3F && v18 <= a3)
  {
    v20 = smalloc_typed(v14, 0x10uLL, 0x1000040451B5BE8uLL);
    v21 = smalloc_typed(v9, 4uLL, 0x100004052888210uLL);
    if (v20 && v21)
    {
      v35 = v21;
      v36 = v20;
      if (v9)
      {
        v22 = 0;
        v23 = 35;
        v24 = v9;
        v25 = v21;
        while (1)
        {
          v26 = a4[v23 - 3] | (a4[v23 - 2] << 8) | (a4[v23 - 1] << 16) | (a4[v23] << 24);
          *v25 = v26;
          v22 += v26;
          if (v26 <= 1)
          {
            break;
          }

          ++v25;
          v23 += 4;
          if (!--v24)
          {
            v27 = 0;
            goto LABEL_26;
          }
        }

        v27 = -7;
      }

      else
      {
        v27 = 0;
        v22 = 0;
      }

LABEL_26:
      if (v22 <= v14)
      {
        v19 = v27;
      }

      else
      {
        v19 = -7;
      }

      if (!v19)
      {
        if (v14)
        {
          v30 = 0;
          v31 = &a4[v15];
          v32 = (v13 << 24) | (v12 << 16) | (v11 << 8) | v10;
          v33 = v36 + 1;
          do
          {
            *v38 = 0;
            parsePoint((v31 + 32), v30, &v38[1], v38, v5);
            v34 = v38[0];
            *(v33 - 1) = v38[1];
            *v33 = v34;
            ++v30;
            v33 += 2;
          }

          while (v32 != v30);
        }

        v19 = [(MFGraphicsDevice *)self->m_gdi polyPolyline:v36 in_polyCounts:v35 in_count:v9, v35];
      }

      free(v36);
      free(v35);
    }

    else
    {
      if (v20)
      {
        v29 = v21;
        free(v20);
        v21 = v29;
      }

      if (v21)
      {
        free(v21);
      }

      return -4;
    }
  }

  return v19;
}

- (int)playAngleArc:(unsigned int)a3 in_pRecord:(const char *)a4 in_is16bit:(BOOL)a5
{
  if (a3 < 0x1C)
  {
    return -7;
  }

  v9 = *(a4 + 2);
  v10 = *(a4 + 3);
  v11 = *(a4 + 4);
  [MFByteUtils readFloat32FromByteArray:a4 in_offset:20, a5];
  v13 = v12;
  [MFByteUtils readFloat32FromByteArray:a4 in_offset:24];
  m_gdi = self->m_gdi;

  return [(MFGraphicsDevice *)m_gdi angleArc:v9 y:v10 radius:v11 startAngle:v13 sweepAngle:v14];
}

- (int)playBitBlt:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0x64)
  {
    return -7;
  }

  v6 = *(a4 + 21);
  v5 = *(a4 + 22);
  if (v6 + v5 > a3)
  {
    return -7;
  }

  v8 = *(a4 + 23);
  v7 = *(a4 + 24);
  v9 = v8 + v7;
  v10 = !HIDWORD(v9) && (v6 + v5) >> 32 == 0;
  if (!v10 || v9 > a3)
  {
    return -7;
  }

  v32 = *(a4 + 20);
  [MFByteUtils readFloat32FromByteArray:a4 in_offset:52];
  v33[0] = v15;
  [MFByteUtils readFloat32FromByteArray:a4 in_offset:56];
  v33[1] = v16;
  [MFByteUtils readFloat32FromByteArray:a4 in_offset:60];
  v33[2] = v17;
  [MFByteUtils readFloat32FromByteArray:a4 in_offset:64];
  v33[3] = v18;
  [MFByteUtils readFloat32FromByteArray:a4 in_offset:68];
  v33[4] = v19;
  [MFByteUtils readFloat32FromByteArray:a4 in_offset:72];
  v33[5] = v20;
  v30 = *(a4 + 7);
  v31 = *(a4 + 6);
  v28 = *(a4 + 9);
  v29 = *(a4 + 8);
  v21 = *(a4 + 12);
  v27 = *(a4 + 11);
  v22 = *(a4 + 10);
  v23 = *(a4 + 19);
  v24 = [(MFGraphicsDevice *)self->m_gdi createDIBitmap:&a4[v6] in_headerSize:v5 in_bitmap:&a4[v8] in_bitmapSize:v7 in_usage:v32];
  v25 = v24;
  if (v24)
  {
    LODWORD(v26) = v23;
    v12 = [(MFGraphicsDevice *)self->m_gdi bitBlt:v31 in_yDest:v30 in_widthDest:v29 in_heightDest:v28 in_sourceImage:v24 in_xSrc:v27 in_ySrc:__PAIR64__(v22 in_rop:v21) in_xform:v33 in_colour:v26];
  }

  else
  {
    v12 = -7;
  }

  return v12;
}

- (int)playStretchBlt:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0x6C)
  {
    return -7;
  }

  v6 = *(a4 + 21);
  v5 = *(a4 + 22);
  if (v6 + v5 > a3)
  {
    return -7;
  }

  v8 = *(a4 + 23);
  v7 = *(a4 + 24);
  v9 = v8 + v7;
  v10 = !HIDWORD(v9) && (v6 + v5) >> 32 == 0;
  if (!v10 || v9 > a3)
  {
    return -7;
  }

  v34 = *(a4 + 20);
  [MFByteUtils readFloat32FromByteArray:a4 in_offset:52];
  v35[0] = v15;
  [MFByteUtils readFloat32FromByteArray:a4 in_offset:56];
  v35[1] = v16;
  [MFByteUtils readFloat32FromByteArray:a4 in_offset:60];
  v35[2] = v17;
  [MFByteUtils readFloat32FromByteArray:a4 in_offset:64];
  v35[3] = v18;
  [MFByteUtils readFloat32FromByteArray:a4 in_offset:68];
  v35[4] = v19;
  [MFByteUtils readFloat32FromByteArray:a4 in_offset:72];
  v35[5] = v20;
  v32 = *(a4 + 7);
  v33 = *(a4 + 6);
  v30 = *(a4 + 9);
  v31 = *(a4 + 8);
  v21 = *(a4 + 26);
  v27 = *(a4 + 25);
  v28 = *(a4 + 12);
  v22 = *(a4 + 10);
  v29 = *(a4 + 11);
  v23 = *(a4 + 19);
  v24 = [(MFGraphicsDevice *)self->m_gdi createDIBitmap:&a4[v6] in_headerSize:v5 in_bitmap:&a4[v8] in_bitmapSize:v7 in_usage:v34];
  v25 = v24;
  if (v24)
  {
    LODWORD(v26) = v23;
    v12 = [(MFGraphicsDevice *)self->m_gdi stretchBlt:v33 in_yDest:v32 in_widthDest:v31 in_heightDest:v30 in_sourceImage:v24 in_xSrc:v29 in_ySrc:__PAIR64__(v27 in_widthSrc:v28) in_heightSrc:__PAIR64__(v22 in_rop:v21) in_xform:v35 in_colour:v26];
  }

  else
  {
    v12 = -7;
  }

  return v12;
}

- (int)playAlphaBlend:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0x6C)
  {
    return -7;
  }

  v6 = *(a4 + 21);
  v5 = *(a4 + 22);
  if (v6 + v5 > a3)
  {
    return -7;
  }

  v8 = *(a4 + 23);
  v7 = *(a4 + 24);
  v9 = v8 + v7;
  v10 = !HIDWORD(v9) && (v6 + v5) >> 32 == 0;
  if (!v10 || v9 > a3)
  {
    return -7;
  }

  v35 = *(a4 + 20);
  [MFByteUtils readFloat32FromByteArray:a4 in_offset:52];
  v36[0] = v15;
  [MFByteUtils readFloat32FromByteArray:a4 in_offset:56];
  v36[1] = v16;
  [MFByteUtils readFloat32FromByteArray:a4 in_offset:60];
  v36[2] = v17;
  [MFByteUtils readFloat32FromByteArray:a4 in_offset:64];
  v36[3] = v18;
  [MFByteUtils readFloat32FromByteArray:a4 in_offset:68];
  v36[4] = v19;
  [MFByteUtils readFloat32FromByteArray:a4 in_offset:72];
  v36[5] = v20;
  v32 = *(a4 + 7);
  v33 = *(a4 + 6);
  v30 = *(a4 + 9);
  v31 = *(a4 + 8);
  v34 = *(a4 + 11);
  v28 = *(a4 + 25);
  v29 = *(a4 + 12);
  HIDWORD(v27) = *(a4 + 26);
  v21 = a4[42];
  v22 = *(a4 + 43);
  v23 = *(a4 + 19);
  v24 = [(MFGraphicsDevice *)self->m_gdi createDIBitmap:&a4[v6] in_headerSize:v5 in_bitmap:&a4[v8] in_bitmapSize:v7 in_usage:v35];
  v25 = v24;
  if (v24)
  {
    LODWORD(v27) = v23;
    BYTE5(v26) = v22 == 1;
    BYTE4(v26) = v21;
    LODWORD(v26) = HIDWORD(v27);
    v12 = [MFGraphicsDevice alphaBlend:"alphaBlend:in_yDest:in_widthDest:in_heightDest:in_sourceImage:in_xSrc:in_ySrc:in_widthSrc:in_heightSrc:in_sourceConstantOpacity:in_useSourceAlphaChannel:in_xform:in_colour:" in_yDest:v33 in_widthDest:v32 in_heightDest:v31 in_sourceImage:v30 in_xSrc:v24 in_ySrc:v34 in_widthSrc:__PAIR64__(v28 in_heightSrc:v29) in_sourceConstantOpacity:v26 in_useSourceAlphaChannel:v36 in_xform:v27 in_colour:?];
  }

  else
  {
    v12 = -7;
  }

  return v12;
}

- (int)playMaskBlt:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0x80)
  {
    return -7;
  }

  v6 = *(a4 + 21);
  v5 = *(a4 + 22);
  if (v6 + v5 > a3)
  {
    return -7;
  }

  v7 = *(a4 + 23);
  v8 = *(a4 + 24);
  v9 = v7 + v8;
  if (v9 > a3)
  {
    return -7;
  }

  v10 = *(a4 + 28);
  v11 = v10 + *(a4 + 29);
  if (v11 > a3)
  {
    return -7;
  }

  v14 = *(a4 + 30) + *(a4 + 31);
  v12 = -7;
  if (!HIDWORD(v14) && v14 <= a3 && !((v11 | (v6 + v5) | v9) >> 32))
  {
    v38 = *(a4 + 30);
    v39 = *(a4 + 31);
    v40 = *(a4 + 29);
    v41 = *(a4 + 20);
    [MFByteUtils readFloat32FromByteArray:a4 in_offset:52];
    v42[0] = v16;
    [MFByteUtils readFloat32FromByteArray:a4 in_offset:56];
    v42[1] = v17;
    [MFByteUtils readFloat32FromByteArray:a4 in_offset:60];
    v42[2] = v18;
    [MFByteUtils readFloat32FromByteArray:a4 in_offset:64];
    v42[3] = v19;
    [MFByteUtils readFloat32FromByteArray:a4 in_offset:68];
    v42[4] = v20;
    [MFByteUtils readFloat32FromByteArray:a4 in_offset:72];
    v42[5] = v21;
    v36 = *(a4 + 7);
    v37 = *(a4 + 6);
    v34 = *(a4 + 9);
    v35 = *(a4 + 8);
    v31 = *(a4 + 25);
    v32 = *(a4 + 12);
    v33 = *(a4 + 11);
    v29 = *(a4 + 10);
    v30 = *(a4 + 26);
    v28 = *(a4 + 19);
    v22 = [(MFGraphicsDevice *)self->m_gdi createDIBitmap:&a4[v6] in_headerSize:v5 in_bitmap:&a4[v7] in_bitmapSize:v8 in_usage:v41];
    v23 = [(MFGraphicsDevice *)self->m_gdi createDIBitmap:&a4[v10] in_headerSize:v40 in_bitmap:&a4[v38] in_bitmapSize:v39 in_usage:0];
    v24 = v23;
    v12 = -7;
    if (v22 && v23)
    {
      LODWORD(v27) = v28;
      LODWORD(v26) = v29;
      LODWORD(v25) = v32;
      v12 = [(MFGraphicsDevice *)self->m_gdi maskBlt:v37 in_yDest:v36 in_widthDest:v35 in_heightDest:v34 in_sourceImage:v22 in_xSrc:v33 in_ySrc:v25 in_maskImage:v23 in_xMask:__PAIR64__(v30 in_yMask:v31) in_rop:v26 in_xform:v42 in_colour:v27];
    }
  }

  return v12;
}

- (int)playPlgBlt:(unsigned int)a3 in_pRecord:(const char *)a4
{
  v43[5] = *MEMORY[0x277D85DE8];
  if (a3 < 0x8C)
  {
    return -7;
  }

  v6 = *(a4 + 24);
  v5 = *(a4 + 25);
  if (v6 + v5 > a3)
  {
    return -7;
  }

  v7 = *(a4 + 26);
  v8 = *(a4 + 27);
  v9 = v7 + v8;
  if (v9 > a3)
  {
    return -7;
  }

  v10 = *(a4 + 31);
  v11 = v10 + *(a4 + 32);
  if (v11 > a3)
  {
    return -7;
  }

  v14 = *(a4 + 33) + *(a4 + 34);
  v12 = -7;
  if (!HIDWORD(v14) && v14 <= a3 && !((v11 | (v6 + v5) | v9) >> 32))
  {
    v36 = *(a4 + 33);
    v37 = *(a4 + 34);
    v38 = *(a4 + 32);
    v39 = *(a4 + 23);
    *v41 = 0;
    [MFByteUtils readFloat32FromByteArray:a4 in_offset:64];
    v40[0] = v16;
    [MFByteUtils readFloat32FromByteArray:a4 in_offset:68];
    v40[1] = v17;
    [MFByteUtils readFloat32FromByteArray:a4 in_offset:72];
    v40[2] = v18;
    [MFByteUtils readFloat32FromByteArray:a4 in_offset:76];
    v40[3] = v19;
    [MFByteUtils readFloat32FromByteArray:a4 in_offset:80];
    v40[4] = v20;
    [MFByteUtils readFloat32FromByteArray:a4 in_offset:82];
    v21 = 0;
    v40[5] = v22;
    v23 = v43;
    do
    {
      parsePoint32((a4 + 24), v21, &v41[1], v41);
      v24 = v41[0];
      *(v23 - 1) = v41[1];
      *v23 = v24;
      ++v21;
      v23 += 2;
    }

    while (v21 != 3);
    v30 = *(a4 + 29);
    v31 = *(a4 + 28);
    v29 = *(a4 + 22);
    v34 = *(a4 + 13);
    v35 = *(a4 + 12);
    v32 = *(a4 + 15);
    v33 = *(a4 + 14);
    v25 = [(MFGraphicsDevice *)self->m_gdi createDIBitmap:&a4[v6] in_headerSize:v5 in_bitmap:&a4[v7] in_bitmapSize:v8 in_usage:v39];
    v26 = [(MFGraphicsDevice *)self->m_gdi createDIBitmap:&a4[v10] in_headerSize:v38 in_bitmap:&a4[v36] in_bitmapSize:v37 in_usage:0];
    v27 = v26;
    v12 = -7;
    if (v25 && v26)
    {
      LODWORD(v28) = v29;
      v12 = [(MFGraphicsDevice *)self->m_gdi plgBlt:v42 in_sourceImage:v25 in_xSrc:v35 in_ySrc:v34 in_widthSrc:v33 in_heightSrc:v32 in_maskImage:v26 in_xMask:__PAIR64__(v30 in_yMask:v31) in_xform:v40 in_colour:v28];
    }
  }

  return v12;
}

- (int)playSetDIBitsToDevice:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0x4C)
  {
    return -7;
  }

  v6 = *(a4 + 12);
  v5 = *(a4 + 13);
  if (v6 + v5 > a3)
  {
    return -1;
  }

  v7 = *(a4 + 14);
  v8 = v7 + *(a4 + 15);
  v9 = !HIDWORD(v8) && (v6 + v5) >> 32 == 0;
  if (!v9 || v8 > a3)
  {
    return -1;
  }

  v12 = *(a4 + 9);
  v13 = *(a4 + 11);
  v14 = *(a4 + 17);
  if (v12 >= v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12 - v14;
  }

  v16 = v13 - v15;
  v17 = *(a4 + 18) + v14;
  v18 = v13 + v12;
  v19 = __OFSUB__(v17, v18);
  v20 = v17 - v18;
  if (v20 < 0 == v19)
  {
    v20 = 0;
  }

  v21 = (v20 + v16);
  if (v21 < 1)
  {
    return 0;
  }

  v23 = *(a4 + 6);
  v24 = *(a4 + 7);
  v25 = *(a4 + 8);
  v26 = *(a4 + 10);
  v27 = [MFGraphicsDevice createDIBitmap:"createDIBitmap:in_headerSize:in_bitmap:in_bitmapSize:in_usage:" in_headerSize:&a4[v6] in_bitmap:*(a4 + 13) in_bitmapSize:&a4[v7] in_usage:?];
  if (v27)
  {
    LODWORD(v29) = 0;
    LODWORD(v28) = v15 + v12;
    HIDWORD(v28) = 13369344;
    v4 = [(MFGraphicsDevice *)self->m_gdi bitBlt:v23 in_yDest:(v15 + v24) in_widthDest:v26 in_heightDest:v21 in_sourceImage:v27 in_xSrc:v25 in_ySrc:v28 in_rop:0 in_xform:v29 in_colour:?];
  }

  else
  {
    v4 = -7;
  }

  return v4;
}

- (int)playStretchDIBits:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0x50)
  {
    return -7;
  }

  v5 = *(a4 + 12);
  v4 = *(a4 + 13);
  if (v5 + v4 > a3)
  {
    return -7;
  }

  v6 = *(a4 + 14);
  v7 = v6 + *(a4 + 15);
  v8 = !HIDWORD(v7) && (v5 + v4) >> 32 == 0;
  if (!v8 || v7 > a3)
  {
    return -7;
  }

  v13 = *(a4 + 7);
  v23 = *(a4 + 6);
  v14 = *(a4 + 18);
  v15 = *(a4 + 19);
  v16 = *(a4 + 9);
  v24 = *(a4 + 8);
  v17 = *(a4 + 10);
  v18 = *(a4 + 11);
  v19 = *(a4 + 17);
  v20 = [MFGraphicsDevice createDIBitmap:"createDIBitmap:in_headerSize:in_bitmap:in_bitmapSize:in_usage:" in_headerSize:&a4[v5] in_bitmap:v4 in_bitmapSize:&a4[v6] in_usage:?];
  v21 = v20;
  if (v20)
  {
    BYTE4(v22) = 1;
    LODWORD(v22) = 0;
    v10 = [(MFGraphicsDevice *)self->m_gdi stretchBlt:v23 in_yDest:v13 in_widthDest:v14 in_heightDest:v15 in_sourceImage:v20 in_xSrc:v24 in_ySrc:__PAIR64__(v17 in_widthSrc:v16) in_heightSrc:__PAIR64__(v19 in_rop:v18) in_xform:0 in_colour:v22 usePaletteForBilevel:?];
  }

  else
  {
    v10 = -7;
  }

  return v10;
}

- (int)playSetPolyFillMode:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0xC)
  {
    return -7;
  }

  m_gdi = self->m_gdi;
  if (*(a4 + 2) == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  return [(MFGraphicsDevice *)m_gdi setPolyFillMode:v6];
}

- (int)playSetMiterLimit:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0xC)
  {
    return -7;
  }

  [MFByteUtils readFloat32FromByteArray:a4 in_offset:8];
  v8 = v7;
  m_gdi = self->m_gdi;

  return [(MFGraphicsDevice *)m_gdi setMiterLimit:v8];
}

- (int)playSetRop2:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0xC)
  {
    return [(MFGraphicsDevice *)self->m_gdi setRop2:*(a4 + 2)];
  }

  else
  {
    return -7;
  }
}

- (int)playSelectClipPath:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0xC)
  {
    return [(MFGraphicsDevice *)self->m_gdi selectClipPath:*(a4 + 2)];
  }

  else
  {
    return -7;
  }
}

- (int)playSelectClipRegion:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0x10)
  {
    return -7;
  }

  v5 = *(a4 + 2);
  if (v5 > 0xFFFFFFEF || v5 + 16 > a3)
  {
    return -7;
  }

  v8 = *(a4 + 3);
  v9 = parseRegion(v5, a4 + 16);
  v10 = v9;
  if (v9)
  {
    v7 = [(MFGraphicsDevice *)self->m_gdi selectClipRegionWithRects:v9 in_mode:v8];
  }

  else
  {
    v7 = -7;
  }

  return v7;
}

- (int)playFillRgn:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0x20)
  {
    return -7;
  }

  v5 = *(a4 + 6);
  if (v5 > 0xFFFFFFDF || v5 + 32 > a3)
  {
    return -7;
  }

  v8 = *(a4 + 7);
  v9 = parseRegion(v5, a4 + 32);
  v10 = v9;
  if (v9)
  {
    v7 = [(MFGraphicsDevice *)self->m_gdi fillRgnWithRects:v9 in_brushID:v8];
  }

  else
  {
    v7 = -7;
  }

  return v7;
}

- (int)playPaintRgn:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0x1C)
  {
    return -7;
  }

  v5 = *(a4 + 6);
  if (v5 > 0xFFFFFFE3 || v5 + 28 > a3)
  {
    return -7;
  }

  v8 = parseRegion(v5, a4 + 28);
  v9 = v8;
  if (v8)
  {
    v7 = [(MFGraphicsDevice *)self->m_gdi paintRgnWithRects:v8];
  }

  else
  {
    v7 = -7;
  }

  return v7;
}

- (int)playInvertRgn:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0x1C)
  {
    return -7;
  }

  v5 = *(a4 + 6);
  if (v5 > 0xFFFFFFE3 || v5 + 28 > a3)
  {
    return -7;
  }

  v8 = parseRegion(v5, a4 + 28);
  v9 = v8;
  if (v8)
  {
    v7 = [(MFGraphicsDevice *)self->m_gdi invertRgnWithRects:v8];
  }

  else
  {
    v7 = -7;
  }

  return v7;
}

- (int)playExcludeClipRect:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0x18)
  {
    return [(MFGraphicsDevice *)self->m_gdi excludeClipRect:*(a4 + 2), *(a4 + 3), *(a4 + 4), *(a4 + 5)];
  }

  else
  {
    return -7;
  }
}

- (int)playIntersectClipRect:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0x18)
  {
    return [(MFGraphicsDevice *)self->m_gdi intersectClipRect:*(a4 + 2), *(a4 + 3), (*(a4 + 4) - *(a4 + 2)), (*(a4 + 5) - *(a4 + 3))];
  }

  else
  {
    return -7;
  }
}

+ (CGRect)boundsInLogicalUnits:(id)a3
{
  v3 = a3;
  v4 = [v3 bytes];
  if ([v3 length] > 0x4F)
  {
    v9 = v4[18] / (v4[20] * 100.0);
    v10 = v4[19] / (v4[21] * 100.0);
    v5 = v9 * v4[6];
    v6 = v10 * v4[7];
    v7 = v9 * v4[8] - v5;
    v8 = v10 * v4[9] - v6;
  }

  else
  {
    v5 = *MEMORY[0x277CBF3A0];
    v6 = *(MEMORY[0x277CBF3A0] + 8);
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    v8 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v11 = v5;
  v12 = v6;
  v13 = v7;
  v14 = v8;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

+ (CGRect)boundsInPoints:(id)a3
{
  v3 = a3;
  v4 = [v3 bytes];
  if ([v3 length] > 0x4F)
  {
    v5 = v4[6] * 0.0283464569;
    v6 = v4[7] * 0.0283464569;
    v7 = v4[8] * 0.0283464569 - v5;
    v8 = v4[9] * 0.0283464569 - v6;
  }

  else
  {
    v5 = *MEMORY[0x277CBF3A0];
    v6 = *(MEMORY[0x277CBF3A0] + 8);
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    v8 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

@end