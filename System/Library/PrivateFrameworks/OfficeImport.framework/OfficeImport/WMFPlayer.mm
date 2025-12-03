@interface WMFPlayer
+ (CGRect)boundsInLogicalUnits:(id)units;
+ (CGRect)boundsInPoints:(id)points;
+ (CGRect)placeableBounds:(const char *)bounds;
+ (CGRect)windowBounds:(id)bounds;
- (WMFPlayer)initWithGraphicsDevice:(id)device;
- (id)parseRegion:(unsigned int)region in_pData:(const char *)data;
- (int)play:(unsigned int)play in_pRecord:(const char *)record;
- (int)playArc:(unsigned int)arc in_pRecord:(const char *)record;
- (int)playBitBlt:(unsigned int)blt in_pRecord:(const char *)record;
- (int)playChord:(unsigned int)chord in_pRecord:(const char *)record;
- (int)playCreateBrushIndirect:(unsigned int)indirect in_pRecord:(const char *)record;
- (int)playCreateDIBPatternBrush:(unsigned int)brush in_pRecord:(const char *)record;
- (int)playCreateFontIndirect:(unsigned int)indirect in_pRecord:(const char *)record;
- (int)playCreatePalette:(unsigned int)palette in_pRecord:(const char *)record;
- (int)playCreatePatternBrush:(unsigned int)brush in_pRecord:(const char *)record;
- (int)playCreatePenIndirect:(unsigned int)indirect in_pRecord:(const char *)record;
- (int)playCreateRegion:(unsigned int)region in_pRecord:(const char *)record;
- (int)playDeleteObject:(unsigned int)object in_pRecord:(const char *)record;
- (int)playDibBitBlt:(unsigned int)blt in_pRecord:(const char *)record;
- (int)playDibStretchBlt:(unsigned int)blt in_pRecord:(const char *)record;
- (int)playEllipse:(unsigned int)ellipse in_pRecord:(const char *)record;
- (int)playExcludeClipRect:(unsigned int)rect in_pRecord:(const char *)record;
- (int)playExtTextOut:(unsigned int)out in_pRecord:(const char *)record;
- (int)playFillRegion:(unsigned int)region in_pRecord:(const char *)record;
- (int)playFrameRegion:(unsigned int)region in_pRecord:(const char *)record;
- (int)playHeader:(unsigned int)header in_pRecord:(const char *)record;
- (int)playIntersectClipRect:(unsigned int)rect in_pRecord:(const char *)record;
- (int)playInvertRegion:(unsigned int)region in_pRecord:(const char *)record;
- (int)playLineTo:(unsigned int)to in_pRecord:(const char *)record;
- (int)playMoveTo:(unsigned int)to in_pRecord:(const char *)record;
- (int)playOffsetClipRegion:(unsigned int)region in_pRecord:(const char *)record;
- (int)playOffsetViewportOrg:(unsigned int)org in_pRecord:(const char *)record;
- (int)playOffsetWindowOrg:(unsigned int)org in_pRecord:(const char *)record;
- (int)playPaintRegion:(unsigned int)region in_pRecord:(const char *)record;
- (int)playPatBlt:(unsigned int)blt in_pRecord:(const char *)record;
- (int)playPie:(unsigned int)pie in_pRecord:(const char *)record;
- (int)playPolyPolygon:(unsigned int)polygon in_pRecord:(const char *)record;
- (int)playPolygon:(unsigned int)polygon in_pRecord:(const char *)record;
- (int)playPolyline:(unsigned int)polyline in_pRecord:(const char *)record;
- (int)playRealizePalette:(unsigned int)palette in_pRecord:(const char *)record;
- (int)playRectangle:(unsigned int)rectangle in_pRecord:(const char *)record;
- (int)playResizePalette:(unsigned int)palette in_pRecord:(const char *)record;
- (int)playRestoreDC:(unsigned int)c in_pRecord:(const char *)record;
- (int)playRoundRect:(unsigned int)rect in_pRecord:(const char *)record;
- (int)playSaveDC:(unsigned int)c in_pRecord:(const char *)record;
- (int)playScaleViewportExt:(unsigned int)ext in_pRecord:(const char *)record;
- (int)playScaleWindowExt:(unsigned int)ext in_pRecord:(const char *)record;
- (int)playSelectClipRegion:(unsigned int)region in_pRecord:(const char *)record;
- (int)playSelectObject:(unsigned int)object in_pRecord:(const char *)record;
- (int)playSelectPalette:(unsigned int)palette in_pRecord:(const char *)record;
- (int)playSetBkColour:(unsigned int)colour in_pRecord:(const char *)record;
- (int)playSetBkMode:(unsigned int)mode in_pRecord:(const char *)record;
- (int)playSetMapMode:(unsigned int)mode in_pRecord:(const char *)record;
- (int)playSetPaletteEntries:(unsigned int)entries in_pRecord:(const char *)record;
- (int)playSetPolyFillMode:(unsigned int)mode in_pRecord:(const char *)record;
- (int)playSetROP2:(unsigned int)p2 in_pRecord:(const char *)record;
- (int)playSetStretchBltMode:(unsigned int)mode in_pRecord:(const char *)record;
- (int)playSetTextAlign:(unsigned int)align in_pRecord:(const char *)record;
- (int)playSetTextCharExtra:(unsigned int)extra in_pRecord:(const char *)record;
- (int)playSetTextColour:(unsigned int)colour in_pRecord:(const char *)record;
- (int)playSetTextJustification:(unsigned int)justification in_pRecord:(const char *)record;
- (int)playSetViewportExt:(unsigned int)ext in_pRecord:(const char *)record;
- (int)playSetViewportOrg:(unsigned int)org in_pRecord:(const char *)record;
- (int)playSetWindowExt:(unsigned int)ext in_pRecord:(const char *)record;
- (int)playSetWindowOrg:(unsigned int)org in_pRecord:(const char *)record;
- (int)playStretchDib:(unsigned int)dib in_pRecord:(const char *)record;
- (int)playTextOut:(unsigned int)out in_pRecord:(const char *)record;
@end

@implementation WMFPlayer

- (WMFPlayer)initWithGraphicsDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = WMFPlayer;
  v6 = [(WMFPlayer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->m_gdi, device);
    *&v7->m_records = 0xFFFFFFFFLL;
  }

  return v7;
}

- (int)play:(unsigned int)play in_pRecord:(const char *)record
{
  v5 = *(record + 2);
  if (v5 > 551)
  {
    if (v5 <= 1077)
    {
      if (v5 <= 1039)
      {
        if (v5 > 762)
        {
          if (v5 > 803)
          {
            if (v5 == 804)
            {
              return [(WMFPlayer *)self playPolygon:*&play in_pRecord:record];
            }

            if (v5 == 805)
            {
              return [(WMFPlayer *)self playPolyline:*&play in_pRecord:record];
            }
          }

          else
          {
            if (v5 == 763)
            {
              return [(WMFPlayer *)self playCreateFontIndirect:*&play in_pRecord:record];
            }

            if (v5 == 764)
            {
              return [(WMFPlayer *)self playCreateBrushIndirect:*&play in_pRecord:record];
            }
          }

          return [(WMFPlayer *)self playUnknown:*&play in_recordType:v5 in_pRecord:record];
        }

        if (v5 > 563)
        {
          if (v5 == 564)
          {
            return [(WMFPlayer *)self playSelectPalette:*&play in_pRecord:record];
          }

          if (v5 == 762)
          {
            return [(WMFPlayer *)self playCreatePenIndirect:*&play in_pRecord:record];
          }

          return [(WMFPlayer *)self playUnknown:*&play in_recordType:v5 in_pRecord:record];
        }

        if (v5 == 552)
        {
          return [(WMFPlayer *)self playFillRegion:*&play in_pRecord:record];
        }

        if (v5 == 561)
        {
          v7 = "META_SETMAPPERFLAGS";
          return [(WMFPlayer *)self playUnsupported:*&play in_recordName:v7 in_pRecord:record];
        }
      }

      else
      {
        if (v5 <= 1047)
        {
          if (v5 > 1044)
          {
            if (v5 == 1045)
            {
              return [(WMFPlayer *)self playExcludeClipRect:*&play in_pRecord:record];
            }

            if (v5 == 1046)
            {
              return [(WMFPlayer *)self playIntersectClipRect:*&play in_pRecord:record];
            }
          }

          else
          {
            if (v5 == 1040)
            {
              return [(WMFPlayer *)self playScaleWindowExt:*&play in_pRecord:record];
            }

            if (v5 == 1042)
            {
              return [(WMFPlayer *)self playScaleViewportExt:*&play in_pRecord:record];
            }
          }

          return [(WMFPlayer *)self playUnknown:*&play in_recordType:v5 in_pRecord:record];
        }

        if (v5 <= 1050)
        {
          if (v5 == 1048)
          {
            return [(WMFPlayer *)self playEllipse:*&play in_pRecord:record];
          }

          if (v5 != 1049)
          {
            return [(WMFPlayer *)self playUnknown:*&play in_recordType:v5 in_pRecord:record];
          }

          v7 = "META_FLOODFILL";
          return [(WMFPlayer *)self playUnsupported:*&play in_recordName:v7 in_pRecord:record];
        }

        switch(v5)
        {
          case 0x41B:
            return [(WMFPlayer *)self playRectangle:*&play in_pRecord:record];
          case 0x41F:
            v7 = "META_SETPIXEL";
            return [(WMFPlayer *)self playUnsupported:*&play in_recordName:v7 in_pRecord:record];
          case 0x429:
            return [(WMFPlayer *)self playFrameRegion:*&play in_pRecord:record];
        }
      }
    }

    else if (v5 > 2073)
    {
      if (v5 <= 2609)
      {
        if (v5 > 2337)
        {
          if (v5 == 2338)
          {
            return [(WMFPlayer *)self playBitBlt:*&play in_pRecord:record];
          }

          if (v5 == 2368)
          {
            return [(WMFPlayer *)self playDibBitBlt:*&play in_pRecord:record];
          }
        }

        else
        {
          if (v5 == 2074)
          {
            return [(WMFPlayer *)self playPie:*&play in_pRecord:record];
          }

          if (v5 == 2096)
          {
            return [(WMFPlayer *)self playChord:*&play in_pRecord:record];
          }
        }

        return [(WMFPlayer *)self playUnknown:*&play in_recordType:v5 in_pRecord:record];
      }

      if (v5 <= 2880)
      {
        if (v5 == 2610)
        {
          return [(WMFPlayer *)self playExtTextOut:*&play in_pRecord:record];
        }

        if (v5 != 2851)
        {
          return [(WMFPlayer *)self playUnknown:*&play in_recordType:v5 in_pRecord:record];
        }

        v7 = "META_STRETCHBLT";
        return [(WMFPlayer *)self playUnsupported:*&play in_recordName:v7 in_pRecord:record];
      }

      switch(v5)
      {
        case 0xB41:
          return [(WMFPlayer *)self playDibStretchBlt:*&play in_pRecord:record];
        case 0xD33:
          v7 = "META_SETDIBTODEV";
          return [(WMFPlayer *)self playUnsupported:*&play in_recordName:v7 in_pRecord:record];
        case 0xF43:
          return [(WMFPlayer *)self playStretchDib:*&play in_pRecord:record];
      }
    }

    else
    {
      if (v5 > 1563)
      {
        if (v5 <= 1573)
        {
          if (v5 == 1564)
          {
            return [(WMFPlayer *)self playRoundRect:*&play in_pRecord:record];
          }

          if (v5 == 1565)
          {
            return [(WMFPlayer *)self playPatBlt:*&play in_pRecord:record];
          }

          return [(WMFPlayer *)self playUnknown:*&play in_recordType:v5 in_pRecord:record];
        }

        if (v5 != 1574)
        {
          if (v5 == 1791)
          {
            return [(WMFPlayer *)self playCreateRegion:*&play in_pRecord:record];
          }

          if (v5 == 2071)
          {
            return [(WMFPlayer *)self playArc:*&play in_pRecord:record];
          }

          return [(WMFPlayer *)self playUnknown:*&play in_recordType:v5 in_pRecord:record];
        }

        v7 = "META_ESCAPE";
        return [(WMFPlayer *)self playUnsupported:*&play in_recordName:v7 in_pRecord:record];
      }

      if (v5 > 1335)
      {
        if (v5 == 1336)
        {
          return [(WMFPlayer *)self playPolyPolygon:*&play in_pRecord:record];
        }

        if (v5 != 1352)
        {
          return [(WMFPlayer *)self playUnknown:*&play in_recordType:v5 in_pRecord:record];
        }

        v7 = "META_EXTFLOODFILL";
        return [(WMFPlayer *)self playUnsupported:*&play in_recordName:v7 in_pRecord:record];
      }

      if (v5 == 1078)
      {
        v7 = "META_ANIMATEPALETTE";
        return [(WMFPlayer *)self playUnsupported:*&play in_recordName:v7 in_pRecord:record];
      }

      if (v5 == 1313)
      {
        return [(WMFPlayer *)self playTextOut:*&play in_pRecord:record];
      }
    }

    return [(WMFPlayer *)self playUnknown:*&play in_recordType:v5 in_pRecord:record];
  }

  if (v5 > 301)
  {
    if (v5 <= 522)
    {
      if (v5 <= 504)
      {
        if (v5 > 321)
        {
          if (v5 == 322)
          {
            return [(WMFPlayer *)self playCreateDIBPatternBrush:*&play in_pRecord:record];
          }

          if (v5 == 496)
          {
            return [(WMFPlayer *)self playDeleteObject:*&play in_pRecord:record];
          }
        }

        else
        {
          if (v5 == 302)
          {
            return [(WMFPlayer *)self playSetTextAlign:*&play in_pRecord:record];
          }

          if (v5 == 313)
          {
            return [(WMFPlayer *)self playResizePalette:*&play in_pRecord:record];
          }
        }

        return [(WMFPlayer *)self playUnknown:*&play in_recordType:v5 in_pRecord:record];
      }

      if (v5 <= 520)
      {
        if (v5 == 505)
        {
          return [(WMFPlayer *)self playCreatePatternBrush:*&play in_pRecord:record];
        }

        if (v5 == 513)
        {
          return [(WMFPlayer *)self playSetBkColour:*&play in_pRecord:record];
        }

        return [(WMFPlayer *)self playUnknown:*&play in_recordType:v5 in_pRecord:record];
      }

      if (v5 == 521)
      {
        return [(WMFPlayer *)self playSetTextColour:*&play in_pRecord:record];
      }

      else
      {
        return [(WMFPlayer *)self playSetTextJustification:*&play in_pRecord:record];
      }
    }

    else
    {
      if (v5 > 526)
      {
        if (v5 <= 530)
        {
          if (v5 == 527)
          {
            return [(WMFPlayer *)self playOffsetWindowOrg:*&play in_pRecord:record];
          }

          if (v5 == 529)
          {
            return [(WMFPlayer *)self playOffsetViewportOrg:*&play in_pRecord:record];
          }
        }

        else
        {
          switch(v5)
          {
            case 0x213:
              return [(WMFPlayer *)self playLineTo:*&play in_pRecord:record];
            case 0x214:
              return [(WMFPlayer *)self playMoveTo:*&play in_pRecord:record];
            case 0x220:
              return [(WMFPlayer *)self playOffsetClipRegion:*&play in_pRecord:record];
          }
        }

        return [(WMFPlayer *)self playUnknown:*&play in_recordType:v5 in_pRecord:record];
      }

      if (v5 > 524)
      {
        if (v5 == 525)
        {
          return [(WMFPlayer *)self playSetViewportOrg:*&play in_pRecord:record];
        }

        else
        {
          return [(WMFPlayer *)self playSetViewportExt:*&play in_pRecord:record];
        }
      }

      else if (v5 == 523)
      {
        return [(WMFPlayer *)self playSetWindowOrg:*&play in_pRecord:record];
      }

      else
      {
        return [(WMFPlayer *)self playSetWindowExt:*&play in_pRecord:record];
      }
    }
  }

  else if (v5 <= 260)
  {
    if (v5 <= 246)
    {
      if (v5 > 52)
      {
        if (v5 == 53)
        {
          return [(WMFPlayer *)self playRealizePalette:*&play in_pRecord:record];
        }

        if (v5 == 55)
        {
          return [(WMFPlayer *)self playSetPaletteEntries:*&play in_pRecord:record];
        }
      }

      else
      {
        if (!v5)
        {
          return -2;
        }

        if (v5 == 30)
        {
          return [(WMFPlayer *)self playSaveDC:*&play in_pRecord:record];
        }
      }

      return [(WMFPlayer *)self playUnknown:*&play in_recordType:v5 in_pRecord:record];
    }

    if (v5 <= 258)
    {
      if (v5 == 247)
      {
        return [(WMFPlayer *)self playCreatePalette:*&play in_pRecord:record];
      }

      if (v5 == 258)
      {
        return [(WMFPlayer *)self playSetBkMode:*&play in_pRecord:record];
      }

      return [(WMFPlayer *)self playUnknown:*&play in_recordType:v5 in_pRecord:record];
    }

    if (v5 == 259)
    {
      return [(WMFPlayer *)self playSetMapMode:*&play in_pRecord:record];
    }

    else
    {
      return [(WMFPlayer *)self playSetROP2:*&play in_pRecord:record];
    }
  }

  else
  {
    if (v5 <= 294)
    {
      if (v5 > 262)
      {
        if (v5 == 263)
        {
          return [(WMFPlayer *)self playSetStretchBltMode:*&play in_pRecord:record];
        }

        if (v5 == 264)
        {
          return [(WMFPlayer *)self playSetTextCharExtra:*&play in_pRecord:record];
        }

        return [(WMFPlayer *)self playUnknown:*&play in_recordType:v5 in_pRecord:record];
      }

      if (v5 != 261)
      {
        return [(WMFPlayer *)self playSetPolyFillMode:*&play in_pRecord:record];
      }

      v7 = "META_SETRELABS";
      return [(WMFPlayer *)self playUnsupported:*&play in_recordName:v7 in_pRecord:record];
    }

    if (v5 <= 298)
    {
      if (v5 == 295)
      {
        return [(WMFPlayer *)self playRestoreDC:*&play in_pRecord:record];
      }

      if (v5 == 298)
      {
        return [(WMFPlayer *)self playInvertRegion:*&play in_pRecord:record];
      }

      return [(WMFPlayer *)self playUnknown:*&play in_recordType:v5 in_pRecord:record];
    }

    if (v5 == 299)
    {
      return [(WMFPlayer *)self playPaintRegion:*&play in_pRecord:record];
    }

    else if (v5 == 300)
    {
      return [(WMFPlayer *)self playSelectClipRegion:*&play in_pRecord:record];
    }

    else
    {
      return [(WMFPlayer *)self playSelectObject:*&play in_pRecord:record];
    }
  }
}

+ (CGRect)placeableBounds:(const char *)bounds
{
  v3 = (*(bounds + 7) << 8) | *(bounds + 6);
  v4 = (*(bounds + 9) << 8) | *(bounds + 8);
  v5 = (*(bounds + 11) << 8) | *(bounds + 10);
  v6 = (*(bounds + 13) << 8) | *(bounds + 12);
  if (v3 >= v5)
  {
    v7 = (*(bounds + 11) << 8) | *(bounds + 10);
  }

  else
  {
    v7 = (*(bounds + 7) << 8) | *(bounds + 6);
  }

  v8 = v7;
  if (v4 >= v6)
  {
    v9 = (*(bounds + 13) << 8) | *(bounds + 12);
  }

  else
  {
    v9 = (*(bounds + 9) << 8) | *(bounds + 8);
  }

  v10 = v9;
  v11 = v5 - v3;
  if (v11 < 0)
  {
    v11 = -v11;
  }

  v12 = v11;
  v13 = v6 - v4;
  if (v6 - v4 < 0)
  {
    v13 = v4 - v6;
  }

  v14 = v13;
  result.size.height = v14;
  result.size.width = v12;
  result.origin.y = v10;
  result.origin.x = v8;
  return result;
}

- (int)playHeader:(unsigned int)header in_pRecord:(const char *)record
{
  recordCopy = record;
  if (header == 18)
  {
    v13 = 0;
    v10 = 0;
    v12 = 1280.0;
    v11 = 1024.0;
  }

  else
  {
    if (header != 40)
    {
      return -7;
    }

    [WMFPlayer placeableBounds:record];
    v10 = 0;
    v11 = 1024.0;
    v12 = 1280.0;
    if (v8 == 0.0)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0;
      if (v9 != 0.0)
      {
        v14 = 1000.0 / (11 * *(recordCopy + 7));
        v15 = v14;
        v12 = v8 * v15;
        v11 = v9 * v15;
        v13 = (v6 * v15);
        v10 = (v7 * v15);
      }
    }

    recordCopy += 22;
  }

  v17 = *(recordCopy + 6);
  self->m_windowsVersion = *(recordCopy + 2);
  self->m_records = (v17 - 9) / 3u;
  result = [(MFGraphicsDevice *)self->m_gdi setMapMode:8];
  if (!result)
  {
    result = [(MFGraphicsDevice *)self->m_gdi setWindowOrg:v13 in_y:v10];
    if (!result)
    {
      result = [(MFGraphicsDevice *)self->m_gdi setWindowExt:v12 in_y:v11];
      if (!result)
      {
        result = [(MFGraphicsDevice *)self->m_gdi setViewportOrg:0 in_y:0];
        if (!result)
        {
          result = [(MFGraphicsDevice *)self->m_gdi setViewportExt:v12 in_y:v11];
          if (!result)
          {
            m_gdi = self->m_gdi;

            return [(MFGraphicsDevice *)m_gdi setViewBox:0.0 top:0.0 width:v12 height:v11];
          }
        }
      }
    }
  }

  return result;
}

- (int)playPatBlt:(unsigned int)blt in_pRecord:(const char *)record
{
  if (blt >= 0x12)
  {
    return [(MFGraphicsDevice *)self->m_gdi patBlt:(*(record + 17) << 8) | *(record + 16) in_y:(*(record + 15) << 8) | *(record + 14) in_width:(*(record + 13) << 8) | *(record + 12) in_height:(*(record + 11) << 8) | *(record + 10) in_rop:*(record + 6)];
  }

  else
  {
    return -7;
  }
}

- (int)playBitBlt:(unsigned int)blt in_pRecord:(const char *)record
{
  if (blt < 0x1E)
  {
    return -7;
  }

  v4 = *(record + 13);
  if (*(record + 14) * v4 + 32 > blt)
  {
    return -7;
  }

  v7 = *(record + 10);
  v8 = *(record + 11);
  v9 = *(record + 12);
  v10 = *(record + 13);
  v19 = *(record + 7);
  v20 = *(record + 6);
  HIDWORD(v18) = *(record + 8);
  v11 = *(record + 18);
  v12 = *(record + 19);
  v13 = *(record + 20);
  v14 = *(record + 21);
  v15 = [(MFGraphicsDevice *)self->m_gdi createBitmap:*(record + 12) in_height:v4 in_planes:*(record + 30) in_bitsPerPixel:*(record + 31) in_bitmap:record + 32 in_bitmapSize:blt - 32];
  if (v15)
  {
    LODWORD(v18) = 0;
    LODWORD(v17) = (v8 << 8) | v7;
    HIDWORD(v17) = v20;
    v5 = [(MFGraphicsDevice *)self->m_gdi bitBlt:(v14 << 8) | v13 in_yDest:(v12 << 8) | v11 in_widthDest:HIDWORD(v18) in_heightDest:v19 in_sourceImage:v15 in_xSrc:(v10 << 8) | v9 in_ySrc:v17 in_rop:0 in_xform:v18 in_colour:?];
  }

  else
  {
    v5 = -7;
  }

  return v5;
}

- (int)playDibBitBlt:(unsigned int)blt in_pRecord:(const char *)record
{
  if (blt < 0x18)
  {
    return -7;
  }

  v6 = &record[2 * (blt == 24)];
  v7 = v6[7];
  v8 = v6[8];
  v9 = v6[9];
  v10 = v6[10];
  if (blt == 24)
  {
    [(MFGraphicsDevice *)self->m_gdi fillRectangle:v6[10] y1:v6[9] x2:(v10 + v8) y2:(v9 + v7)];
    return 0;
  }

  else
  {
    v11 = *(record + 6);
    v12 = *(record + 5);
    v13 = *(record + 6);
    v14 = [(MFGraphicsDevice *)self->m_gdi createDIBitmap:record + 22 in_dibSize:blt - 22 in_usage:0];
    v15 = v14;
    if (v14)
    {
      LODWORD(v17) = 0;
      v4 = [(MFGraphicsDevice *)self->m_gdi bitBlt:v10 in_yDest:v9 in_widthDest:v8 in_heightDest:v7 in_sourceImage:v14 in_xSrc:v13 in_ySrc:__PAIR64__(v11 in_rop:v12) in_xform:0 in_colour:v17];
    }

    else
    {
      v4 = -7;
    }
  }

  return v4;
}

- (int)playStretchDib:(unsigned int)dib in_pRecord:(const char *)record
{
  if (dib < 0x28)
  {
    return -7;
  }

  v24 = *(record + 7);
  v25 = *(record + 6);
  v23 = *(record + 8);
  v20 = *(record + 13);
  v21 = *(record + 12);
  v19 = *(record + 14);
  v6 = *(record + 15);
  v7 = *(record + 16);
  v8 = *(record + 17);
  v9 = *(record + 19);
  v29 = *(record + 20);
  v30 = *(record + 18);
  v10 = *(record + 21);
  v27 = *(record + 9);
  v28 = *(record + 22);
  v11 = *(record + 23);
  v26 = *(record + 24);
  v12 = *(record + 25);
  v22 = *(record + 26);
  v13 = *(record + 27);
  v14 = [(MFGraphicsDevice *)self->m_gdi createDIBitmap:record + 28 in_dibSize:dib - 28 in_usage:*(record + 5)];
  if (v14)
  {
    LODWORD(v18) = 0;
    LODWORD(v17) = (v20 << 8) | v21;
    *(&v17 + 4) = v25 | (v24 << 8) | (v23 << 16) | (v27 << 24);
    LODWORD(v16) = (v8 << 8) | v7;
    HIDWORD(v16) = (v6 << 8) | v19;
    v4 = [MFGraphicsDevice stretchBlt:"stretchBlt:in_yDest:in_widthDest:in_heightDest:in_sourceImage:in_xSrc:in_ySrc:in_widthSrc:in_heightSrc:in_rop:in_xform:in_colour:" in_yDest:(v13 << 8) | v22 in_widthDest:(v12 << 8) | v26 in_heightDest:(v11 << 8) | v28 in_sourceImage:(v10 << 8) | v29 in_xSrc:v14 in_ySrc:(v9 << 8) | v30 in_widthSrc:v16 in_heightSrc:v17 in_rop:0 in_xform:v18 in_colour:?];
  }

  else
  {
    v4 = -7;
  }

  return v4;
}

- (int)playDibStretchBlt:(unsigned int)blt in_pRecord:(const char *)record
{
  if (blt < 0x26)
  {
    return -7;
  }

  v27 = *(record + 7);
  v28 = *(record + 6);
  v26 = *(record + 8);
  v23 = *(record + 11);
  v24 = *(record + 10);
  v21 = *(record + 13);
  v22 = *(record + 12);
  v19 = *(record + 15);
  v20 = *(record + 14);
  v6 = *(record + 16);
  v7 = *(record + 17);
  v8 = *(record + 18);
  v9 = *(record + 19);
  v10 = *(record + 20);
  v11 = *(record + 21);
  v29 = *(record + 9);
  v30 = *(record + 22);
  v12 = *(record + 23);
  v25 = *(record + 24);
  v13 = *(record + 25);
  v14 = [(MFGraphicsDevice *)self->m_gdi createDIBitmap:record + 26 in_dibSize:blt - 26 in_usage:0];
  if (v14)
  {
    LODWORD(v18) = 0;
    LODWORD(v17) = v24 | (v23 << 8);
    *(&v17 + 4) = v28 | (v27 << 8) | (v26 << 16) | (v29 << 24);
    LODWORD(v16) = v20 | (v19 << 8);
    HIDWORD(v16) = v22 | (v21 << 8);
    v4 = [MFGraphicsDevice stretchBlt:"stretchBlt:in_yDest:in_widthDest:in_heightDest:in_sourceImage:in_xSrc:in_ySrc:in_widthSrc:in_heightSrc:in_rop:in_xform:in_colour:" in_yDest:(v13 << 8) | v25 in_widthDest:(v12 << 8) | v30 in_heightDest:v10 | (v11 << 8) in_sourceImage:v8 | (v9 << 8) in_xSrc:v14 in_ySrc:v6 | (v7 << 8) in_widthSrc:v16 in_heightSrc:v17 in_rop:0 in_xform:v18 in_colour:?];
  }

  else
  {
    v4 = -7;
  }

  return v4;
}

- (int)playSetTextAlign:(unsigned int)align in_pRecord:(const char *)record
{
  if (align >= 8)
  {
    return [(MFGraphicsDevice *)self->m_gdi setTextAlign:record[6] & 1 textHorizontalAlign:record[6] & 6 textVerticalAlign:record[6] & 0x18 textDirection:(record[7] & 1) << 8];
  }

  else
  {
    return -7;
  }
}

- (int)playSetBkColour:(unsigned int)colour in_pRecord:(const char *)record
{
  if (colour < 0xA)
  {
    return -7;
  }

  v6 = [OITSUColor colorWithRGBBytes:*(record + 6) green:*(record + 7) blue:*(record + 8)];
  v4 = [(MFGraphicsDevice *)self->m_gdi setBkColour:v6];

  return v4;
}

- (int)playSetMapMode:(unsigned int)mode in_pRecord:(const char *)record
{
  if (mode < 8 || *(record + 3) - 1 > 7)
  {
    return -7;
  }

  else
  {
    return [(MFGraphicsDevice *)self->m_gdi setMapMode:?];
  }
}

- (int)playSetBkMode:(unsigned int)mode in_pRecord:(const char *)record
{
  if (mode < 8 || *(record + 3) - 1 > 1)
  {
    return -7;
  }

  else
  {
    return [(MFGraphicsDevice *)self->m_gdi setBkMode:?];
  }
}

- (int)playSetStretchBltMode:(unsigned int)mode in_pRecord:(const char *)record
{
  if (mode < 8 || *(record + 3) - 1 > 3)
  {
    return -7;
  }

  else
  {
    return [(MFGraphicsDevice *)self->m_gdi setStretchBltMode:?];
  }
}

- (int)playSetTextColour:(unsigned int)colour in_pRecord:(const char *)record
{
  if (colour < 0xA)
  {
    return -7;
  }

  v6 = [OITSUColor colorWithRGBBytes:*(record + 6) green:*(record + 7) blue:*(record + 8)];
  v4 = [(MFGraphicsDevice *)self->m_gdi setTextColour:v6];

  return v4;
}

- (int)playSetTextJustification:(unsigned int)justification in_pRecord:(const char *)record
{
  if (justification >= 0xA)
  {
    return [(MFGraphicsDevice *)self->m_gdi setTextJustification:*(record + 4) in_breakCount:*(record + 3)];
  }

  else
  {
    return -7;
  }
}

- (int)playSetTextCharExtra:(unsigned int)extra in_pRecord:(const char *)record
{
  if (extra >= 8)
  {
    return [(MFGraphicsDevice *)self->m_gdi setTextCharExtra:*(record + 3)];
  }

  else
  {
    return -7;
  }
}

- (int)playOffsetClipRegion:(unsigned int)region in_pRecord:(const char *)record
{
  if (region >= 0xA)
  {
    return [(MFGraphicsDevice *)self->m_gdi offsetClipRegionByX:(*(record + 7) << 8) | *(record + 6) y:(*(record + 9) << 8) | *(record + 8)];
  }

  else
  {
    return -7;
  }
}

- (int)playTextOut:(unsigned int)out in_pRecord:(const char *)record
{
  if (out < 7)
  {
    return -7;
  }

  v5 = (*(record + 3) & 1) + *(record + 3);
  if (v5 + 12 > out)
  {
    return -7;
  }

  v8 = [MEMORY[0x277CBEA90] dataWithBytes:record + 8 length:?];
  v6 = [(MFGraphicsDevice *)self->m_gdi textOutEncoded:(record[v5 + 11] << 8) | record[v5 + 10] y:(record[v5 + 9] << 8) | record[v5 + 8] in_data:v8];

  return v6;
}

- (int)playExtTextOut:(unsigned int)out in_pRecord:(const char *)record
{
  if (out < 0xE)
  {
    return -7;
  }

  v5 = *(record + 10);
  v6 = v5 | (*(record + 11) << 8);
  v7 = (v5 & 1) + v6;
  if (v7 + 14 > out)
  {
    return -7;
  }

  v9 = *(record + 7);
  v10 = *(record + 9);
  v11 = *(record + 12);
  if ((v11 & 6) == 0)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v16 = 0;
    v15 = 14;
LABEL_7:
    v17 = v15 + v7;
    v18 = out - v17;
    if (out < v17)
    {
      return -7;
    }

    v33 = v16;
    v34 = v14;
    v35 = *(record + 13);
    v36 = v13;
    v37 = v12;
    v38 = *(record + 8);
    v39 = *(record + 6);
    v40 = [MEMORY[0x277CBEA90] dataWithBytes:&record[v15] length:v6];
    v21 = v18 >> 1;
    if (v18 >= 2)
    {
      v23 = smalloc_typed(v18 >> 1, 4uLL, 0x100004052888210uLL);
      v22 = v23;
      if (!v23)
      {
        v19 = -4;
        v31 = v40;
        goto LABEL_19;
      }

      v24 = 0;
      if (v21 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v21;
      }

      v26 = &record[(v5 & 1) + 1 + v15 + v6];
      v27 = 4 * v25;
      do
      {
        v28 = *(v26 - 1);
        v29 = *v26;
        v26 += 2;
        *&v23[v24] = (v29 << 8) | v28;
        v24 += 4;
      }

      while (v27 != v24);
    }

    else
    {
      v22 = 0;
    }

    v30 = v11 | (v35 << 8);
    LODWORD(v32) = v21;
    v31 = v40;
    v19 = [(MFGraphicsDevice *)self->m_gdi extTextOutEncoded:(v10 << 8) | v38 y:(v9 << 8) | v39 in_data:v40 options:v30 left:v37 top:v36 right:__PAIR64__(v33 bottom:v34) spacingValues:v22 numValues:v32];
    free(v22);
LABEL_19:

    return v19;
  }

  if (out >= 0x16)
  {
    v12 = *(record + 7);
    v13 = *(record + 8);
    v14 = *(record + 9);
    v15 = 22;
    v16 = *(record + 10);
    goto LABEL_7;
  }

  return -7;
}

- (int)playRectangle:(unsigned int)rectangle in_pRecord:(const char *)record
{
  if (rectangle >= 0xE)
  {
    return [(MFGraphicsDevice *)self->m_gdi rectangle:(*(record + 13) << 8) | *(record + 12) y1:(*(record + 11) << 8) | *(record + 10) x2:(*(record + 9) << 8) | *(record + 8) y2:(*(record + 7) << 8) | *(record + 6)];
  }

  else
  {
    return -7;
  }
}

- (int)playEllipse:(unsigned int)ellipse in_pRecord:(const char *)record
{
  if (ellipse >= 0xE)
  {
    return [(MFGraphicsDevice *)self->m_gdi ellipse:(*(record + 13) << 8) | *(record + 12) y1:(*(record + 11) << 8) | *(record + 10) x2:(*(record + 9) << 8) | *(record + 8) y2:(*(record + 7) << 8) | *(record + 6)];
  }

  else
  {
    return -7;
  }
}

- (int)playSaveDC:(unsigned int)c in_pRecord:(const char *)record
{
  if (c >= 6)
  {
    return [(MFGraphicsDevice *)self->m_gdi saveDC];
  }

  else
  {
    return -7;
  }
}

- (int)playRestoreDC:(unsigned int)c in_pRecord:(const char *)record
{
  if (c >= 8)
  {
    return [(MFGraphicsDevice *)self->m_gdi restoreDC:(*(record + 7) << 8) | *(record + 6)];
  }

  else
  {
    return -7;
  }
}

- (int)playMoveTo:(unsigned int)to in_pRecord:(const char *)record
{
  if (to >= 0xA)
  {
    return [(MFGraphicsDevice *)self->m_gdi moveTo:*(record + 4) y:*(record + 3)];
  }

  else
  {
    return -7;
  }
}

- (int)playLineTo:(unsigned int)to in_pRecord:(const char *)record
{
  if (to >= 0xA)
  {
    return [(MFGraphicsDevice *)self->m_gdi lineTo:*(record + 4) y:*(record + 3)];
  }

  else
  {
    return -7;
  }
}

- (int)playPolygon:(unsigned int)polygon in_pRecord:(const char *)record
{
  if (polygon < 8)
  {
    return -7;
  }

  v5 = *(record + 3);
  if (4 * v5 + 8 > polygon)
  {
    return -7;
  }

  v8 = smalloc_typed(*(record + 3), 0x10uLL, 0x1000040451B5BE8uLL);
  if (!v8)
  {
    return -4;
  }

  v9 = v8;
  if (v5)
  {
    v10 = v8 + 1;
    v11 = record + 11;
    v12 = v5;
    do
    {
      *(v10 - 1) = *(v11 - 3);
      v13 = *(v11 - 1);
      v11 += 4;
      *v10 = v13;
      v10 += 2;
      --v12;
    }

    while (v12);
  }

  v14 = [(MFGraphicsDevice *)self->m_gdi polygon:v8 in_count:v5];
  free(v9);
  return v14;
}

- (int)playPolyline:(unsigned int)polyline in_pRecord:(const char *)record
{
  if (polyline < 0xC)
  {
    return -7;
  }

  v5 = *(record + 3);
  if (4 * v5 + 8 > polyline)
  {
    return -7;
  }

  v8 = smalloc_typed(*(record + 3), 0x10uLL, 0x1000040451B5BE8uLL);
  if (!v8)
  {
    return -4;
  }

  v9 = v8;
  if (v5)
  {
    v10 = v8 + 1;
    v11 = record + 11;
    v12 = v5;
    do
    {
      *(v10 - 1) = *(v11 - 3);
      v13 = *(v11 - 1);
      v11 += 4;
      *v10 = v13;
      v10 += 2;
      --v12;
    }

    while (v12);
  }

  v14 = [(MFGraphicsDevice *)self->m_gdi polyline:v8 in_count:v5];
  free(v9);
  return v14;
}

- (int)playArc:(unsigned int)arc in_pRecord:(const char *)record
{
  if (arc < 0x16)
  {
    return -7;
  }

  LODWORD(v5) = (*(record + 9) << 8) | *(record + 8);
  HIDWORD(v5) = (*(record + 7) << 8) | *(record + 6);
  return [(MFGraphicsDevice *)self->m_gdi arc:(*(record + 21) << 8) | *(record + 20) nTopRect:(*(record + 19) << 8) | *(record + 18) nRightRect:(*(record + 17) << 8) | *(record + 16) nBottomRect:(*(record + 15) << 8) | *(record + 14) nXStartArc:(*(record + 13) << 8) | *(record + 12) nYStartArc:(*(record + 11) << 8) | *(record + 10) nXEndArc:v5 nYEndArc:?];
}

- (int)playPie:(unsigned int)pie in_pRecord:(const char *)record
{
  if (pie < 0x16)
  {
    return -7;
  }

  LODWORD(v5) = (*(record + 9) << 8) | *(record + 8);
  HIDWORD(v5) = (*(record + 7) << 8) | *(record + 6);
  return [(MFGraphicsDevice *)self->m_gdi pie:(*(record + 21) << 8) | *(record + 20) nTopRect:(*(record + 19) << 8) | *(record + 18) nRightRect:(*(record + 17) << 8) | *(record + 16) nBottomRect:(*(record + 15) << 8) | *(record + 14) nXStartArc:(*(record + 13) << 8) | *(record + 12) nYStartArc:(*(record + 11) << 8) | *(record + 10) nXEndArc:v5 nYEndArc:?];
}

- (int)playChord:(unsigned int)chord in_pRecord:(const char *)record
{
  if (chord != 22)
  {
    return -7;
  }

  LODWORD(v5) = (*(record + 9) << 8) | *(record + 8);
  HIDWORD(v5) = (*(record + 7) << 8) | *(record + 6);
  return [(MFGraphicsDevice *)self->m_gdi chord:(*(record + 21) << 8) | *(record + 20) nTopRect:(*(record + 19) << 8) | *(record + 18) nRightRect:(*(record + 17) << 8) | *(record + 16) nBottomRect:(*(record + 15) << 8) | *(record + 14) nXStartArc:(*(record + 13) << 8) | *(record + 12) nYStartArc:(*(record + 11) << 8) | *(record + 10) nXEndArc:v5 nYEndArc:?];
}

- (int)playRoundRect:(unsigned int)rect in_pRecord:(const char *)record
{
  if (rect == 18)
  {
    return [(MFGraphicsDevice *)self->m_gdi roundRect:(*(record + 17) << 8) | *(record + 16) top:(*(record + 15) << 8) | *(record + 14) right:(*(record + 13) << 8) | *(record + 12) bottom:(*(record + 11) << 8) | *(record + 10) rx:vcvtd_n_f64_s32(*(record + 4) ry:1uLL), vcvtd_n_f64_s32(*(record + 3), 1uLL)];
  }

  else
  {
    return -7;
  }
}

- (int)playPolyPolygon:(unsigned int)polygon in_pRecord:(const char *)record
{
  if (polygon < 8)
  {
    return -7;
  }

  v6 = *(record + 3);
  v7 = 2 * v6 + 8;
  if (v7 > polygon)
  {
    return -7;
  }

  v11 = smalloc_typed(*(record + 3), 4uLL, 0x100004052888210uLL);
  if (!v11)
  {
    return -4;
  }

  v12 = v11;
  v13 = 0;
  if (v6)
  {
    v14 = record + 9;
    v15 = v6;
    v16 = v11;
    do
    {
      v17 = *(v14 - 1);
      v13 += v17;
      *v16++ = v17;
      v14 += 2;
      --v15;
    }

    while (v15);
  }

  if (v7 + 4 * v13 <= polygon)
  {
    v18 = v13;
    v19 = smalloc_typed(v13, 0x10uLL, 0x1000040451B5BE8uLL);
    if (v19)
    {
      v20 = v19;
      if (v13)
      {
        v21 = &record[(2 * v6) + 8];
        v22 = v19 + 1;
        do
        {
          *(v22 - 1) = *v21;
          v23 = *(v21 + 1);
          v21 += 4;
          *v22 = v23;
          v22 += 2;
          --v18;
        }

        while (v18);
      }

      v8 = [(MFGraphicsDevice *)self->m_gdi polyPolygon:v19 in_polyCounts:v12 in_count:v6];
      free(v20);
    }

    else
    {
      v8 = -4;
    }
  }

  else
  {
    v8 = -7;
  }

  free(v12);
  return v8;
}

- (int)playSetWindowExt:(unsigned int)ext in_pRecord:(const char *)record
{
  if (ext < 0xA)
  {
    return -7;
  }

  v6 = (*(record + 9) << 8);
  v7 = v6 | *(record + 8);
  v8 = (*(record + 7) << 8);
  v9 = v8 | *(record + 6);
  if (v7)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    result = 0;
    self->m_ignoreSetWindowOrg = 1;
  }

  else if (self->m_boundsSet)
  {
    m_gdi = self->m_gdi;
    v12 = v6 | *(record + 8);
    v13 = v8 | *(record + 6);

    return [(MFGraphicsDevice *)m_gdi setWindowExt:v12 in_y:v13];
  }

  else
  {
    if (v7 >= 0)
    {
      v14 = v6 | *(record + 8);
    }

    else
    {
      v14 = -v7;
    }

    if (v9 >= 0)
    {
      v15 = v8 | *(record + 6);
    }

    else
    {
      v15 = -v9;
    }

    result = [(MFGraphicsDevice *)self->m_gdi setMapMode:8];
    if (!result)
    {
      result = [(MFGraphicsDevice *)self->m_gdi setWindowExt:v7 in_y:v9];
      if (!result)
      {
        v16 = (v8 & 0x8000u) == 0 || v6 <= -1;
        v17 = v16 ? v9 : v15;
        result = [(MFGraphicsDevice *)self->m_gdi setViewportExt:v7 in_y:v17];
        if (!result)
        {
          result = [(MFGraphicsDevice *)self->m_gdi setViewBox:0.0 top:0.0 width:v14 height:v15];
        }
      }
    }

    self->m_boundsSet = 1;
  }

  return result;
}

- (int)playSetWindowOrg:(unsigned int)org in_pRecord:(const char *)record
{
  if (org < 0xA)
  {
    return -7;
  }

  if (self->m_ignoreSetWindowOrg)
  {
    return 0;
  }

  return [(MFGraphicsDevice *)self->m_gdi setWindowOrg:(*(record + 9) << 8) | *(record + 8) in_y:(*(record + 7) << 8) | *(record + 6)];
}

- (int)playScaleWindowExt:(unsigned int)ext in_pRecord:(const char *)record
{
  if (ext >= 0xE)
  {
    return [(MFGraphicsDevice *)self->m_gdi scaleWindowExt:(*(record + 13) << 8) | *(record + 12) in_xDenom:(*(record + 11) << 8) | *(record + 10) in_yNum:(*(record + 9) << 8) | *(record + 8) in_yDenom:(*(record + 7) << 8) | *(record + 6)];
  }

  else
  {
    return -7;
  }
}

- (int)playOffsetWindowOrg:(unsigned int)org in_pRecord:(const char *)record
{
  if (org >= 0xA)
  {
    return [(MFGraphicsDevice *)self->m_gdi offsetWindowOrg:(*(record + 9) << 8) | *(record + 8) in_y:(*(record + 7) << 8) | *(record + 6)];
  }

  else
  {
    return -7;
  }
}

- (int)playOffsetViewportOrg:(unsigned int)org in_pRecord:(const char *)record
{
  if (org >= 0xA)
  {
    return [(MFGraphicsDevice *)self->m_gdi offsetViewportOrg:(*(record + 9) << 8) | *(record + 8) in_y:(*(record + 7) << 8) | *(record + 6)];
  }

  else
  {
    return -7;
  }
}

- (int)playSetViewportExt:(unsigned int)ext in_pRecord:(const char *)record
{
  if (ext >= 0xA)
  {
    return [(MFGraphicsDevice *)self->m_gdi setViewportExt:(*(record + 9) << 8) | *(record + 8) in_y:(*(record + 7) << 8) | *(record + 6)];
  }

  else
  {
    return -7;
  }
}

- (int)playSetViewportOrg:(unsigned int)org in_pRecord:(const char *)record
{
  if (org >= 0xA)
  {
    return [(MFGraphicsDevice *)self->m_gdi setViewportOrg:(*(record + 9) << 8) | *(record + 8) in_y:(*(record + 7) << 8) | *(record + 6)];
  }

  else
  {
    return -7;
  }
}

- (int)playScaleViewportExt:(unsigned int)ext in_pRecord:(const char *)record
{
  if (ext >= 0xE)
  {
    return [(MFGraphicsDevice *)self->m_gdi scaleViewportExt:(*(record + 13) << 8) | *(record + 12) in_xDenom:(*(record + 11) << 8) | *(record + 10) in_yNum:(*(record + 9) << 8) | *(record + 8) in_yDenom:(*(record + 7) << 8) | *(record + 6)];
  }

  else
  {
    return -7;
  }
}

- (int)playSelectObject:(unsigned int)object in_pRecord:(const char *)record
{
  if (object >= 8)
  {
    return [(MFGraphicsDevice *)self->m_gdi selectObject:*(record + 3)];
  }

  else
  {
    return -7;
  }
}

- (int)playSelectPalette:(unsigned int)palette in_pRecord:(const char *)record
{
  if (palette >= 8)
  {
    return [(MFGraphicsDevice *)self->m_gdi selectObject:*(record + 3)];
  }

  else
  {
    return -7;
  }
}

- (int)playDeleteObject:(unsigned int)object in_pRecord:(const char *)record
{
  if (object >= 8)
  {
    return [(MFGraphicsDevice *)self->m_gdi deleteObject:*(record + 3)];
  }

  else
  {
    return -7;
  }
}

- (int)playCreateDIBPatternBrush:(unsigned int)brush in_pRecord:(const char *)record
{
  if (brush < 0x16)
  {
    return -7;
  }

  v6 = [(MFGraphicsDevice *)self->m_gdi createDIBitmap:record + 10 in_dibSize:brush - 10 in_usage:*(record + 4)];
  if (v6)
  {
    v4 = [(MFGraphicsDevice *)self->m_gdi createPatternBrush:v6 index:0xFFFFFFFFLL usePaletteForBilevel:0];
  }

  else
  {
    v4 = -7;
  }

  return v4;
}

- (int)playRealizePalette:(unsigned int)palette in_pRecord:(const char *)record
{
  if (palette >= 6)
  {
    return [(MFGraphicsDevice *)self->m_gdi realizePalette];
  }

  else
  {
    return -7;
  }
}

- (int)playCreatePalette:(unsigned int)palette in_pRecord:(const char *)record
{
  if (palette < 0xA)
  {
    return -7;
  }

  v5 = *(record + 4);
  if (4 * v5 + 10 > palette)
  {
    return -7;
  }

  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(record + 4)];
  if (v5)
  {
    v9 = (record + 12);
    do
    {
      v10 = [OITSUColor colorWithRGBBytes:*(v9 - 2) green:*(v9 - 1) blue:*v9];
      [v8 addObject:v10];
      v9 += 4;

      --v5;
    }

    while (v5);
  }

  v6 = [(MFGraphicsDevice *)self->m_gdi createPalette:v8 in_index:0xFFFFFFFFLL];

  return v6;
}

- (int)playSetPaletteEntries:(unsigned int)entries in_pRecord:(const char *)record
{
  if (entries < 0xA)
  {
    return -7;
  }

  v5 = *(record + 4);
  if (4 * v5 + 10 > entries)
  {
    return -7;
  }

  v8 = *(record + 3);
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(record + 4)];
  if (v5)
  {
    v10 = (record + 12);
    do
    {
      v11 = [OITSUColor colorWithRGBBytes:*(v10 - 2) green:*(v10 - 1) blue:*v10];
      [v9 addObject:v11];
      v10 += 4;

      --v5;
    }

    while (v5);
  }

  v6 = [(MFGraphicsDevice *)self->m_gdi setPaletteEntries:v8 in_colours:v9 in_index:0xFFFFFFFFLL];

  return v6;
}

- (int)playResizePalette:(unsigned int)palette in_pRecord:(const char *)record
{
  if (palette >= 8)
  {
    return [(MFGraphicsDevice *)self->m_gdi resizePalette:*(record + 3) in_index:0xFFFFFFFFLL];
  }

  else
  {
    return -7;
  }
}

- (int)playCreatePatternBrush:(unsigned int)brush in_pRecord:(const char *)record
{
  if (brush < 0x12 || *(record + 6) * ((*(record + 11) << 8) | *(record + 10)) + 38 > brush)
  {
    return -7;
  }

  v6 = [(MFGraphicsDevice *)self->m_gdi createBitmap:(*(record + 9) << 8) | *(record + 8) in_height:(*(record + 11) << 8) | *(record + 10) in_planes:*(record + 14) in_bitsPerPixel:*(record + 15) in_bitmap:record + 38 in_bitmapSize:brush - 38];
  if (v6)
  {
    v4 = [(MFGraphicsDevice *)self->m_gdi createPatternBrush:v6 index:0xFFFFFFFFLL usePaletteForBilevel:0];
  }

  else
  {
    v4 = -7;
  }

  return v4;
}

- (int)playCreatePenIndirect:(unsigned int)indirect in_pRecord:(const char *)record
{
  if (indirect < 0x10)
  {
    return -7;
  }

  if (*(record + 3) <= 6u)
  {
    v6 = *(record + 3);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(record + 4);
  v8 = [OITSUColor colorWithRGBBytes:*(record + 12) green:*(record + 13) blue:*(record + 14)];
  v4 = [(MFGraphicsDevice *)self->m_gdi createPen:v6 width:v7 in_colour:v8 in_userStyleArray:0 index:0xFFFFFFFFLL];

  return v4;
}

- (int)playCreateFontIndirect:(unsigned int)indirect in_pRecord:(const char *)record
{
  if (indirect < 0x18)
  {
    return -7;
  }

  v35 = *(record + 6);
  v33 = *(record + 8);
  v27 = *(record + 9);
  v28 = *(record + 7);
  v37 = *(record + 10);
  v36 = *(record + 12);
  v25 = *(record + 13);
  v26 = *(record + 11);
  v34 = *(record + 14);
  v24 = *(record + 15);
  v29 = *(record + 16);
  v30 = *(record + 17);
  v8 = *(record + 19);
  v9 = *(record + 20);
  v31 = *(record + 18);
  v32 = record[21];
  v10 = *(record + 22);
  v11 = *(record + 23);
  IsValidCharSet = ChValueIsValidCharSet(v8);
  if (IsValidCharSet)
  {
    v13 = 0;
  }

  else
  {
    v13 = -7;
  }

  if (!IsValidCharSet)
  {
    v8 = 0;
  }

  if (indirect == 24)
  {
    v14 = 0;
  }

  else
  {
    if (v8 == 128)
    {
      v15 = OCNsStringEncodingForWindowsCharSet(128);
    }

    else
    {
      v15 = 5;
    }

    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:record + 24 length:32 encoding:v15];
    if (!v14)
    {
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:record + 24 length:32 encoding:5];
    }

    if (!v14)
    {
      v13 = -7;
    }
  }

  if (v9 >= 0xB || v11 >= 0x60)
  {
    v4 = -7;
  }

  else
  {
    v4 = v13;
  }

  if (!v4)
  {
    v17 = v11 & 0xF0;
    if (v11 >= 0x60)
    {
      v17 = 0;
    }

    v18 = v10 & 3;
    if (v10 < 5)
    {
      v18 = v10;
    }

    if (v9 >= 0xB)
    {
      v19 = 0;
    }

    else
    {
      v19 = v9;
    }

    LODWORD(v23) = v17;
    BYTE4(v22) = v32;
    HIDWORD(v21) = v8;
    LODWORD(v22) = v19;
    BYTE1(v21) = v31 != 0;
    LOBYTE(v21) = v30 != 0;
    v4 = [MFGraphicsDevice createFontIndirect:"createFontIndirect:lfWidth:lfEscapement:lfOrientation:lfWeight:lfItalic:lfUnderline:lfStrikeOut:lfCharSet:lfOutPrecision:lfClipPrecision:lfQuality:pitch:family:lfFaceName:" lfWidth:(v28 << 8) | v35 lfEscapement:(v27 << 8) | v33 lfOrientation:(v26 << 8) | v37 lfWeight:(v25 << 8) | v36 lfItalic:(v24 << 8) | v34 lfUnderline:v29 != 0 lfStrikeOut:v21 lfCharSet:v22 lfOutPrecision:__PAIR64__(v11 & 3 lfClipPrecision:v18) lfQuality:v23 pitch:v14 family:? lfFaceName:?];
  }

  return v4;
}

- (int)playCreateBrushIndirect:(unsigned int)indirect in_pRecord:(const char *)record
{
  if (indirect >= 0xE)
  {
    v7 = *(record + 3);
    v8 = [(MFGraphicsDevice *)self->m_gdi createColorWithRGBBytes:*(record + 8) green:*(record + 9) blue:*(record + 10) flags:*(record + 11)];
    if ((v7 - 3) >= 7)
    {
      if (v7 >= 3)
      {
        v4 = -7;
LABEL_10:

        return v4;
      }
    }

    else
    {
      v7 = 1;
    }

    if (*(record + 6) >= 6u)
    {
      v9 = 0xFFFFFFLL;
    }

    else
    {
      v9 = *(record + 6);
    }

    v4 = [(MFGraphicsDevice *)self->m_gdi createBrush:v7 in_colour:v8 hatchstyle:v9 index:0xFFFFFFFFLL];
    goto LABEL_10;
  }

  return -7;
}

- (int)playCreateRegion:(unsigned int)region in_pRecord:(const char *)record
{
  v4 = region >= 6;
  v5 = region - 6;
  if (!v4)
  {
    return -7;
  }

  v8 = [(WMFPlayer *)self parseRegion:v5 in_pData:record + 6];
  if (v8)
  {
    v6 = [(MFGraphicsDevice *)self->m_gdi createRegion:v8];
  }

  else
  {
    v6 = -7;
  }

  return v6;
}

- (int)playSetPolyFillMode:(unsigned int)mode in_pRecord:(const char *)record
{
  if (mode < 8)
  {
    return -7;
  }

  m_gdi = self->m_gdi;
  if (*(record + 3) == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  return [(MFGraphicsDevice *)m_gdi setPolyFillMode:v6];
}

- (int)playSetROP2:(unsigned int)p2 in_pRecord:(const char *)record
{
  if (p2 >= 8)
  {
    return [(MFGraphicsDevice *)self->m_gdi setRop2:*(record + 3)];
  }

  else
  {
    return -1;
  }
}

- (int)playFillRegion:(unsigned int)region in_pRecord:(const char *)record
{
  if (region >= 0xA)
  {
    return [(MFGraphicsDevice *)self->m_gdi fillRgn:*(record + 4) in_brushID:*(record + 3)];
  }

  else
  {
    return -7;
  }
}

- (int)playFrameRegion:(unsigned int)region in_pRecord:(const char *)record
{
  if (region >= 0xE)
  {
    return [(MFGraphicsDevice *)self->m_gdi frameRegion:*(record + 6) in_brushID:*(record + 5) in_width:*(record + 4) in_height:*(record + 3)];
  }

  else
  {
    return -7;
  }
}

- (int)playInvertRegion:(unsigned int)region in_pRecord:(const char *)record
{
  if (region >= 8)
  {
    return [(MFGraphicsDevice *)self->m_gdi invertRgn:*(record + 3)];
  }

  else
  {
    return -7;
  }
}

- (int)playPaintRegion:(unsigned int)region in_pRecord:(const char *)record
{
  if (region >= 8)
  {
    return [(MFGraphicsDevice *)self->m_gdi paintRgn:*(record + 3)];
  }

  else
  {
    return -7;
  }
}

- (int)playSelectClipRegion:(unsigned int)region in_pRecord:(const char *)record
{
  if (region >= 8)
  {
    return [(MFGraphicsDevice *)self->m_gdi setClipRegion:*(record + 3)];
  }

  else
  {
    return -7;
  }
}

- (int)playExcludeClipRect:(unsigned int)rect in_pRecord:(const char *)record
{
  if (rect < 0xE)
  {
    return -1;
  }

  v5 = (*(record + 11) << 8) | *(record + 10);
  v6 = (*(record + 13) << 8) | *(record + 12);
  return [(MFGraphicsDevice *)self->m_gdi excludeClipRect:v6, v5, (((*(record + 9) << 8) | *(record + 8)) - v6), (((*(record + 7) << 8) | *(record + 6)) - v5)];
}

- (int)playIntersectClipRect:(unsigned int)rect in_pRecord:(const char *)record
{
  if (rect < 0xE)
  {
    return -1;
  }

  v5 = (*(record + 11) << 8) | *(record + 10);
  v6 = (*(record + 13) << 8) | *(record + 12);
  return [(MFGraphicsDevice *)self->m_gdi intersectClipRect:v6, v5, (((*(record + 9) << 8) | *(record + 8)) - v6), (((*(record + 7) << 8) | *(record + 6)) - v5)];
}

- (id)parseRegion:(unsigned int)region in_pData:(const char *)data
{
  if (region < 0x16)
  {
    if (!region)
    {
      array = [MEMORY[0x277CBEB18] array];
      goto LABEL_16;
    }
  }

  else
  {
    v6 = *(data + 5);
    array = [MEMORY[0x277CBEB18] arrayWithCapacity:*(data + 5)];
    if (!v6)
    {
      goto LABEL_16;
    }

    v8 = 0;
    v9 = (data + 22);
    v10 = &data[region];
    while (1)
    {
      v11 = v9 + 6;
      if (v9 + 6 > v10)
      {
        break;
      }

      v12 = *v9;
      if (v12)
      {
        break;
      }

      v13 = (2 * v12) | (v9[1] << 9);
      if (&v11[v13] > v10)
      {
        break;
      }

      if (v13)
      {
        v14 = 0;
        v15 = (v9[3] << 8) | v9[2];
        v16 = v15;
        v17 = (((v9[5] << 8) | v9[4]) - v15);
        v18 = v9 + 9;
        do
        {
          v19 = (*(v18 - 2) << 8) | *(v18 - 3);
          v20 = [MEMORY[0x277CCAE60] valueWithCGRect:{v19, v16, (((*v18 << 8) | *(v18 - 1)) - v19), v17}];
          [array addObject:v20];
          v18 += 4;

          v14 += 4;
        }

        while (v14 < v13);
      }

      v9 = &v11[v13 | 2];
      if (++v8 == v6)
      {
        goto LABEL_16;
      }
    }
  }

  array = 0;
LABEL_16:

  return array;
}

+ (CGRect)windowBounds:(id)bounds
{
  boundsCopy = bounds;
  v4 = [boundsCopy length];
  bytes = [boundsCopy bytes];
  if (*bytes == -1698247209)
  {
    v6 = 40;
  }

  else
  {
    v6 = 18;
  }

  if (v4 - v6 < 6)
  {
    v12 = 0.0;
    v11 = 1024.0;
    v10 = 1280.0;
    v9 = 0.0;
  }

  else
  {
    v7 = (v4 - v6) >> 1;
    v8 = bytes + v6;
    v9 = 0.0;
    v10 = 1280.0;
    v11 = 1024.0;
    v12 = 0.0;
    do
    {
      v13 = *v8;
      v14 = *(v8 + 2);
      if (*(v8 + 2))
      {
        v15 = v13 >= 3;
      }

      else
      {
        v15 = 0;
      }

      if (!v15 || v7 < v13)
      {
        break;
      }

      if (v14 == 524)
      {
        v11 = *(v8 + 3);
        v10 = *(v8 + 4);
      }

      else if (v14 == 523)
      {
        v9 = *(v8 + 3);
        v12 = *(v8 + 4);
      }

      v8 += 2 * v13;
      v7 -= v13;
    }

    while (v7 > 2);
  }

  v21.origin.x = v12;
  v21.origin.y = v9;
  v21.size.width = v10;
  v21.size.height = v11;
  if (CGRectGetWidth(v21) == 0.0 || (v22.origin.x = v12, v22.origin.y = v9, v22.size.width = v10, v22.size.height = v11, CGRectGetHeight(v22) == 0.0))
  {
    v12 = 0.0;
    v11 = 1024.0;
    v10 = 1280.0;
    v9 = 0.0;
  }

  v17 = v12;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

+ (CGRect)boundsInLogicalUnits:(id)units
{
  unitsCopy = units;
  v5 = [unitsCopy length];
  bytes = [unitsCopy bytes];
  if (v5 <= 0x11)
  {
    goto LABEL_2;
  }

  if (*bytes != -1698247209)
  {
LABEL_8:
    [self windowBounds:unitsCopy];
    v7 = v15;
    v8 = v16;
    v9 = v17;
    v10 = v18;
    goto LABEL_9;
  }

  if (v5 > 0x27)
  {
    [WMFPlayer placeableBounds:bytes];
    v9 = v14;
    if (v14 != 0.0)
    {
      v10 = v13;
      if (v13 != 0.0)
      {
        v7 = v11;
        v8 = v12;
        goto LABEL_9;
      }
    }

    goto LABEL_8;
  }

LABEL_2:
  v7 = *MEMORY[0x277CBF3A0];
  v8 = *(MEMORY[0x277CBF3A0] + 8);
  v9 = *(MEMORY[0x277CBF3A0] + 16);
  v10 = *(MEMORY[0x277CBF3A0] + 24);
LABEL_9:

  v19 = v7;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

+ (CGRect)boundsInPoints:(id)points
{
  pointsCopy = points;
  v5 = [pointsCopy length];
  bytes = [pointsCopy bytes];
  if (v5 <= 0x11)
  {
    goto LABEL_2;
  }

  v9 = bytes;
  if (*bytes != -1698247209)
  {
LABEL_9:
    [self windowBounds:pointsCopy];
    v20.f64[1] = v19;
    v22.f64[1] = v21;
    v23 = vdupq_n_s64(0x4052000000000000uLL);
    v28 = vmulq_f64(vdivq_f64(v20, xmmword_25D6FDBD0), v23);
    v29 = vmulq_f64(vdivq_f64(v22, xmmword_25D6FDBD0), v23);
    goto LABEL_10;
  }

  if (v5 > 0x27)
  {
    [WMFPlayer placeableBounds:bytes];
    if (v12.f64[0] != 0.0 && v13 != 0.0)
    {
      LOWORD(v14) = *(v9 + 7);
      v12.f64[1] = v13;
      v10.f64[1] = v11;
      v15 = vdupq_lane_s64(COERCE__INT64(v14), 0);
      v16 = vdivq_f64(v10, v15);
      v17 = vdivq_f64(v12, v15);
      v18 = vdupq_n_s64(0x4052000000000000uLL);
      v8 = vmulq_f64(v17, v18);
      v7 = vmulq_f64(v16, v18);
      goto LABEL_3;
    }

    goto LABEL_9;
  }

LABEL_2:
  v7 = *MEMORY[0x277CBF3A0];
  v8 = *(MEMORY[0x277CBF3A0] + 16);
LABEL_3:
  v28 = v7;
  v29 = v8;
LABEL_10:

  v24 = v28.f64[0];
  v25 = v29.f64[0];
  v26 = v28.f64[1];
  v27 = v29.f64[1];
  result.size.height = v27;
  result.size.width = v25;
  result.origin.y = v26;
  result.origin.x = v24;
  return result;
}

@end