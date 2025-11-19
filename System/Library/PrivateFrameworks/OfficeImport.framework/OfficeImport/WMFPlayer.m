@interface WMFPlayer
+ (CGRect)boundsInLogicalUnits:(id)a3;
+ (CGRect)boundsInPoints:(id)a3;
+ (CGRect)placeableBounds:(const char *)a3;
+ (CGRect)windowBounds:(id)a3;
- (WMFPlayer)initWithGraphicsDevice:(id)a3;
- (id)parseRegion:(unsigned int)a3 in_pData:(const char *)a4;
- (int)play:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playArc:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playBitBlt:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playChord:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playCreateBrushIndirect:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playCreateDIBPatternBrush:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playCreateFontIndirect:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playCreatePalette:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playCreatePatternBrush:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playCreatePenIndirect:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playCreateRegion:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playDeleteObject:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playDibBitBlt:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playDibStretchBlt:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playEllipse:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playExcludeClipRect:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playExtTextOut:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playFillRegion:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playFrameRegion:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playHeader:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playIntersectClipRect:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playInvertRegion:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playLineTo:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playMoveTo:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playOffsetClipRegion:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playOffsetViewportOrg:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playOffsetWindowOrg:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playPaintRegion:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playPatBlt:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playPie:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playPolyPolygon:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playPolygon:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playPolyline:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playRealizePalette:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playRectangle:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playResizePalette:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playRestoreDC:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playRoundRect:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSaveDC:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playScaleViewportExt:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playScaleWindowExt:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSelectClipRegion:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSelectObject:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSelectPalette:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSetBkColour:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSetBkMode:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSetMapMode:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSetPaletteEntries:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSetPolyFillMode:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSetROP2:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSetStretchBltMode:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSetTextAlign:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSetTextCharExtra:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSetTextColour:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSetTextJustification:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSetViewportExt:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSetViewportOrg:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSetWindowExt:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playSetWindowOrg:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playStretchDib:(unsigned int)a3 in_pRecord:(const char *)a4;
- (int)playTextOut:(unsigned int)a3 in_pRecord:(const char *)a4;
@end

@implementation WMFPlayer

- (WMFPlayer)initWithGraphicsDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = WMFPlayer;
  v6 = [(WMFPlayer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->m_gdi, a3);
    *&v7->m_records = 0xFFFFFFFFLL;
  }

  return v7;
}

- (int)play:(unsigned int)a3 in_pRecord:(const char *)a4
{
  v5 = *(a4 + 2);
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
              return [(WMFPlayer *)self playPolygon:*&a3 in_pRecord:a4];
            }

            if (v5 == 805)
            {
              return [(WMFPlayer *)self playPolyline:*&a3 in_pRecord:a4];
            }
          }

          else
          {
            if (v5 == 763)
            {
              return [(WMFPlayer *)self playCreateFontIndirect:*&a3 in_pRecord:a4];
            }

            if (v5 == 764)
            {
              return [(WMFPlayer *)self playCreateBrushIndirect:*&a3 in_pRecord:a4];
            }
          }

          return [(WMFPlayer *)self playUnknown:*&a3 in_recordType:v5 in_pRecord:a4];
        }

        if (v5 > 563)
        {
          if (v5 == 564)
          {
            return [(WMFPlayer *)self playSelectPalette:*&a3 in_pRecord:a4];
          }

          if (v5 == 762)
          {
            return [(WMFPlayer *)self playCreatePenIndirect:*&a3 in_pRecord:a4];
          }

          return [(WMFPlayer *)self playUnknown:*&a3 in_recordType:v5 in_pRecord:a4];
        }

        if (v5 == 552)
        {
          return [(WMFPlayer *)self playFillRegion:*&a3 in_pRecord:a4];
        }

        if (v5 == 561)
        {
          v7 = "META_SETMAPPERFLAGS";
          return [(WMFPlayer *)self playUnsupported:*&a3 in_recordName:v7 in_pRecord:a4];
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
              return [(WMFPlayer *)self playExcludeClipRect:*&a3 in_pRecord:a4];
            }

            if (v5 == 1046)
            {
              return [(WMFPlayer *)self playIntersectClipRect:*&a3 in_pRecord:a4];
            }
          }

          else
          {
            if (v5 == 1040)
            {
              return [(WMFPlayer *)self playScaleWindowExt:*&a3 in_pRecord:a4];
            }

            if (v5 == 1042)
            {
              return [(WMFPlayer *)self playScaleViewportExt:*&a3 in_pRecord:a4];
            }
          }

          return [(WMFPlayer *)self playUnknown:*&a3 in_recordType:v5 in_pRecord:a4];
        }

        if (v5 <= 1050)
        {
          if (v5 == 1048)
          {
            return [(WMFPlayer *)self playEllipse:*&a3 in_pRecord:a4];
          }

          if (v5 != 1049)
          {
            return [(WMFPlayer *)self playUnknown:*&a3 in_recordType:v5 in_pRecord:a4];
          }

          v7 = "META_FLOODFILL";
          return [(WMFPlayer *)self playUnsupported:*&a3 in_recordName:v7 in_pRecord:a4];
        }

        switch(v5)
        {
          case 0x41B:
            return [(WMFPlayer *)self playRectangle:*&a3 in_pRecord:a4];
          case 0x41F:
            v7 = "META_SETPIXEL";
            return [(WMFPlayer *)self playUnsupported:*&a3 in_recordName:v7 in_pRecord:a4];
          case 0x429:
            return [(WMFPlayer *)self playFrameRegion:*&a3 in_pRecord:a4];
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
            return [(WMFPlayer *)self playBitBlt:*&a3 in_pRecord:a4];
          }

          if (v5 == 2368)
          {
            return [(WMFPlayer *)self playDibBitBlt:*&a3 in_pRecord:a4];
          }
        }

        else
        {
          if (v5 == 2074)
          {
            return [(WMFPlayer *)self playPie:*&a3 in_pRecord:a4];
          }

          if (v5 == 2096)
          {
            return [(WMFPlayer *)self playChord:*&a3 in_pRecord:a4];
          }
        }

        return [(WMFPlayer *)self playUnknown:*&a3 in_recordType:v5 in_pRecord:a4];
      }

      if (v5 <= 2880)
      {
        if (v5 == 2610)
        {
          return [(WMFPlayer *)self playExtTextOut:*&a3 in_pRecord:a4];
        }

        if (v5 != 2851)
        {
          return [(WMFPlayer *)self playUnknown:*&a3 in_recordType:v5 in_pRecord:a4];
        }

        v7 = "META_STRETCHBLT";
        return [(WMFPlayer *)self playUnsupported:*&a3 in_recordName:v7 in_pRecord:a4];
      }

      switch(v5)
      {
        case 0xB41:
          return [(WMFPlayer *)self playDibStretchBlt:*&a3 in_pRecord:a4];
        case 0xD33:
          v7 = "META_SETDIBTODEV";
          return [(WMFPlayer *)self playUnsupported:*&a3 in_recordName:v7 in_pRecord:a4];
        case 0xF43:
          return [(WMFPlayer *)self playStretchDib:*&a3 in_pRecord:a4];
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
            return [(WMFPlayer *)self playRoundRect:*&a3 in_pRecord:a4];
          }

          if (v5 == 1565)
          {
            return [(WMFPlayer *)self playPatBlt:*&a3 in_pRecord:a4];
          }

          return [(WMFPlayer *)self playUnknown:*&a3 in_recordType:v5 in_pRecord:a4];
        }

        if (v5 != 1574)
        {
          if (v5 == 1791)
          {
            return [(WMFPlayer *)self playCreateRegion:*&a3 in_pRecord:a4];
          }

          if (v5 == 2071)
          {
            return [(WMFPlayer *)self playArc:*&a3 in_pRecord:a4];
          }

          return [(WMFPlayer *)self playUnknown:*&a3 in_recordType:v5 in_pRecord:a4];
        }

        v7 = "META_ESCAPE";
        return [(WMFPlayer *)self playUnsupported:*&a3 in_recordName:v7 in_pRecord:a4];
      }

      if (v5 > 1335)
      {
        if (v5 == 1336)
        {
          return [(WMFPlayer *)self playPolyPolygon:*&a3 in_pRecord:a4];
        }

        if (v5 != 1352)
        {
          return [(WMFPlayer *)self playUnknown:*&a3 in_recordType:v5 in_pRecord:a4];
        }

        v7 = "META_EXTFLOODFILL";
        return [(WMFPlayer *)self playUnsupported:*&a3 in_recordName:v7 in_pRecord:a4];
      }

      if (v5 == 1078)
      {
        v7 = "META_ANIMATEPALETTE";
        return [(WMFPlayer *)self playUnsupported:*&a3 in_recordName:v7 in_pRecord:a4];
      }

      if (v5 == 1313)
      {
        return [(WMFPlayer *)self playTextOut:*&a3 in_pRecord:a4];
      }
    }

    return [(WMFPlayer *)self playUnknown:*&a3 in_recordType:v5 in_pRecord:a4];
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
            return [(WMFPlayer *)self playCreateDIBPatternBrush:*&a3 in_pRecord:a4];
          }

          if (v5 == 496)
          {
            return [(WMFPlayer *)self playDeleteObject:*&a3 in_pRecord:a4];
          }
        }

        else
        {
          if (v5 == 302)
          {
            return [(WMFPlayer *)self playSetTextAlign:*&a3 in_pRecord:a4];
          }

          if (v5 == 313)
          {
            return [(WMFPlayer *)self playResizePalette:*&a3 in_pRecord:a4];
          }
        }

        return [(WMFPlayer *)self playUnknown:*&a3 in_recordType:v5 in_pRecord:a4];
      }

      if (v5 <= 520)
      {
        if (v5 == 505)
        {
          return [(WMFPlayer *)self playCreatePatternBrush:*&a3 in_pRecord:a4];
        }

        if (v5 == 513)
        {
          return [(WMFPlayer *)self playSetBkColour:*&a3 in_pRecord:a4];
        }

        return [(WMFPlayer *)self playUnknown:*&a3 in_recordType:v5 in_pRecord:a4];
      }

      if (v5 == 521)
      {
        return [(WMFPlayer *)self playSetTextColour:*&a3 in_pRecord:a4];
      }

      else
      {
        return [(WMFPlayer *)self playSetTextJustification:*&a3 in_pRecord:a4];
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
            return [(WMFPlayer *)self playOffsetWindowOrg:*&a3 in_pRecord:a4];
          }

          if (v5 == 529)
          {
            return [(WMFPlayer *)self playOffsetViewportOrg:*&a3 in_pRecord:a4];
          }
        }

        else
        {
          switch(v5)
          {
            case 0x213:
              return [(WMFPlayer *)self playLineTo:*&a3 in_pRecord:a4];
            case 0x214:
              return [(WMFPlayer *)self playMoveTo:*&a3 in_pRecord:a4];
            case 0x220:
              return [(WMFPlayer *)self playOffsetClipRegion:*&a3 in_pRecord:a4];
          }
        }

        return [(WMFPlayer *)self playUnknown:*&a3 in_recordType:v5 in_pRecord:a4];
      }

      if (v5 > 524)
      {
        if (v5 == 525)
        {
          return [(WMFPlayer *)self playSetViewportOrg:*&a3 in_pRecord:a4];
        }

        else
        {
          return [(WMFPlayer *)self playSetViewportExt:*&a3 in_pRecord:a4];
        }
      }

      else if (v5 == 523)
      {
        return [(WMFPlayer *)self playSetWindowOrg:*&a3 in_pRecord:a4];
      }

      else
      {
        return [(WMFPlayer *)self playSetWindowExt:*&a3 in_pRecord:a4];
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
          return [(WMFPlayer *)self playRealizePalette:*&a3 in_pRecord:a4];
        }

        if (v5 == 55)
        {
          return [(WMFPlayer *)self playSetPaletteEntries:*&a3 in_pRecord:a4];
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
          return [(WMFPlayer *)self playSaveDC:*&a3 in_pRecord:a4];
        }
      }

      return [(WMFPlayer *)self playUnknown:*&a3 in_recordType:v5 in_pRecord:a4];
    }

    if (v5 <= 258)
    {
      if (v5 == 247)
      {
        return [(WMFPlayer *)self playCreatePalette:*&a3 in_pRecord:a4];
      }

      if (v5 == 258)
      {
        return [(WMFPlayer *)self playSetBkMode:*&a3 in_pRecord:a4];
      }

      return [(WMFPlayer *)self playUnknown:*&a3 in_recordType:v5 in_pRecord:a4];
    }

    if (v5 == 259)
    {
      return [(WMFPlayer *)self playSetMapMode:*&a3 in_pRecord:a4];
    }

    else
    {
      return [(WMFPlayer *)self playSetROP2:*&a3 in_pRecord:a4];
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
          return [(WMFPlayer *)self playSetStretchBltMode:*&a3 in_pRecord:a4];
        }

        if (v5 == 264)
        {
          return [(WMFPlayer *)self playSetTextCharExtra:*&a3 in_pRecord:a4];
        }

        return [(WMFPlayer *)self playUnknown:*&a3 in_recordType:v5 in_pRecord:a4];
      }

      if (v5 != 261)
      {
        return [(WMFPlayer *)self playSetPolyFillMode:*&a3 in_pRecord:a4];
      }

      v7 = "META_SETRELABS";
      return [(WMFPlayer *)self playUnsupported:*&a3 in_recordName:v7 in_pRecord:a4];
    }

    if (v5 <= 298)
    {
      if (v5 == 295)
      {
        return [(WMFPlayer *)self playRestoreDC:*&a3 in_pRecord:a4];
      }

      if (v5 == 298)
      {
        return [(WMFPlayer *)self playInvertRegion:*&a3 in_pRecord:a4];
      }

      return [(WMFPlayer *)self playUnknown:*&a3 in_recordType:v5 in_pRecord:a4];
    }

    if (v5 == 299)
    {
      return [(WMFPlayer *)self playPaintRegion:*&a3 in_pRecord:a4];
    }

    else if (v5 == 300)
    {
      return [(WMFPlayer *)self playSelectClipRegion:*&a3 in_pRecord:a4];
    }

    else
    {
      return [(WMFPlayer *)self playSelectObject:*&a3 in_pRecord:a4];
    }
  }
}

+ (CGRect)placeableBounds:(const char *)a3
{
  v3 = (*(a3 + 7) << 8) | *(a3 + 6);
  v4 = (*(a3 + 9) << 8) | *(a3 + 8);
  v5 = (*(a3 + 11) << 8) | *(a3 + 10);
  v6 = (*(a3 + 13) << 8) | *(a3 + 12);
  if (v3 >= v5)
  {
    v7 = (*(a3 + 11) << 8) | *(a3 + 10);
  }

  else
  {
    v7 = (*(a3 + 7) << 8) | *(a3 + 6);
  }

  v8 = v7;
  if (v4 >= v6)
  {
    v9 = (*(a3 + 13) << 8) | *(a3 + 12);
  }

  else
  {
    v9 = (*(a3 + 9) << 8) | *(a3 + 8);
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

- (int)playHeader:(unsigned int)a3 in_pRecord:(const char *)a4
{
  v4 = a4;
  if (a3 == 18)
  {
    v13 = 0;
    v10 = 0;
    v12 = 1280.0;
    v11 = 1024.0;
  }

  else
  {
    if (a3 != 40)
    {
      return -7;
    }

    [WMFPlayer placeableBounds:a4];
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
        v14 = 1000.0 / (11 * *(v4 + 7));
        v15 = v14;
        v12 = v8 * v15;
        v11 = v9 * v15;
        v13 = (v6 * v15);
        v10 = (v7 * v15);
      }
    }

    v4 += 22;
  }

  v17 = *(v4 + 6);
  self->m_windowsVersion = *(v4 + 2);
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

- (int)playPatBlt:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0x12)
  {
    return [(MFGraphicsDevice *)self->m_gdi patBlt:(*(a4 + 17) << 8) | *(a4 + 16) in_y:(*(a4 + 15) << 8) | *(a4 + 14) in_width:(*(a4 + 13) << 8) | *(a4 + 12) in_height:(*(a4 + 11) << 8) | *(a4 + 10) in_rop:*(a4 + 6)];
  }

  else
  {
    return -7;
  }
}

- (int)playBitBlt:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0x1E)
  {
    return -7;
  }

  v4 = *(a4 + 13);
  if (*(a4 + 14) * v4 + 32 > a3)
  {
    return -7;
  }

  v7 = *(a4 + 10);
  v8 = *(a4 + 11);
  v9 = *(a4 + 12);
  v10 = *(a4 + 13);
  v19 = *(a4 + 7);
  v20 = *(a4 + 6);
  HIDWORD(v18) = *(a4 + 8);
  v11 = *(a4 + 18);
  v12 = *(a4 + 19);
  v13 = *(a4 + 20);
  v14 = *(a4 + 21);
  v15 = [(MFGraphicsDevice *)self->m_gdi createBitmap:*(a4 + 12) in_height:v4 in_planes:*(a4 + 30) in_bitsPerPixel:*(a4 + 31) in_bitmap:a4 + 32 in_bitmapSize:a3 - 32];
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

- (int)playDibBitBlt:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0x18)
  {
    return -7;
  }

  v6 = &a4[2 * (a3 == 24)];
  v7 = v6[7];
  v8 = v6[8];
  v9 = v6[9];
  v10 = v6[10];
  if (a3 == 24)
  {
    [(MFGraphicsDevice *)self->m_gdi fillRectangle:v6[10] y1:v6[9] x2:(v10 + v8) y2:(v9 + v7)];
    return 0;
  }

  else
  {
    v11 = *(a4 + 6);
    v12 = *(a4 + 5);
    v13 = *(a4 + 6);
    v14 = [(MFGraphicsDevice *)self->m_gdi createDIBitmap:a4 + 22 in_dibSize:a3 - 22 in_usage:0];
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

- (int)playStretchDib:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0x28)
  {
    return -7;
  }

  v24 = *(a4 + 7);
  v25 = *(a4 + 6);
  v23 = *(a4 + 8);
  v20 = *(a4 + 13);
  v21 = *(a4 + 12);
  v19 = *(a4 + 14);
  v6 = *(a4 + 15);
  v7 = *(a4 + 16);
  v8 = *(a4 + 17);
  v9 = *(a4 + 19);
  v29 = *(a4 + 20);
  v30 = *(a4 + 18);
  v10 = *(a4 + 21);
  v27 = *(a4 + 9);
  v28 = *(a4 + 22);
  v11 = *(a4 + 23);
  v26 = *(a4 + 24);
  v12 = *(a4 + 25);
  v22 = *(a4 + 26);
  v13 = *(a4 + 27);
  v14 = [(MFGraphicsDevice *)self->m_gdi createDIBitmap:a4 + 28 in_dibSize:a3 - 28 in_usage:*(a4 + 5)];
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

- (int)playDibStretchBlt:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0x26)
  {
    return -7;
  }

  v27 = *(a4 + 7);
  v28 = *(a4 + 6);
  v26 = *(a4 + 8);
  v23 = *(a4 + 11);
  v24 = *(a4 + 10);
  v21 = *(a4 + 13);
  v22 = *(a4 + 12);
  v19 = *(a4 + 15);
  v20 = *(a4 + 14);
  v6 = *(a4 + 16);
  v7 = *(a4 + 17);
  v8 = *(a4 + 18);
  v9 = *(a4 + 19);
  v10 = *(a4 + 20);
  v11 = *(a4 + 21);
  v29 = *(a4 + 9);
  v30 = *(a4 + 22);
  v12 = *(a4 + 23);
  v25 = *(a4 + 24);
  v13 = *(a4 + 25);
  v14 = [(MFGraphicsDevice *)self->m_gdi createDIBitmap:a4 + 26 in_dibSize:a3 - 26 in_usage:0];
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

- (int)playSetTextAlign:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 8)
  {
    return [(MFGraphicsDevice *)self->m_gdi setTextAlign:a4[6] & 1 textHorizontalAlign:a4[6] & 6 textVerticalAlign:a4[6] & 0x18 textDirection:(a4[7] & 1) << 8];
  }

  else
  {
    return -7;
  }
}

- (int)playSetBkColour:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0xA)
  {
    return -7;
  }

  v6 = [OITSUColor colorWithRGBBytes:*(a4 + 6) green:*(a4 + 7) blue:*(a4 + 8)];
  v4 = [(MFGraphicsDevice *)self->m_gdi setBkColour:v6];

  return v4;
}

- (int)playSetMapMode:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 8 || *(a4 + 3) - 1 > 7)
  {
    return -7;
  }

  else
  {
    return [(MFGraphicsDevice *)self->m_gdi setMapMode:?];
  }
}

- (int)playSetBkMode:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 8 || *(a4 + 3) - 1 > 1)
  {
    return -7;
  }

  else
  {
    return [(MFGraphicsDevice *)self->m_gdi setBkMode:?];
  }
}

- (int)playSetStretchBltMode:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 8 || *(a4 + 3) - 1 > 3)
  {
    return -7;
  }

  else
  {
    return [(MFGraphicsDevice *)self->m_gdi setStretchBltMode:?];
  }
}

- (int)playSetTextColour:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0xA)
  {
    return -7;
  }

  v6 = [OITSUColor colorWithRGBBytes:*(a4 + 6) green:*(a4 + 7) blue:*(a4 + 8)];
  v4 = [(MFGraphicsDevice *)self->m_gdi setTextColour:v6];

  return v4;
}

- (int)playSetTextJustification:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0xA)
  {
    return [(MFGraphicsDevice *)self->m_gdi setTextJustification:*(a4 + 4) in_breakCount:*(a4 + 3)];
  }

  else
  {
    return -7;
  }
}

- (int)playSetTextCharExtra:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 8)
  {
    return [(MFGraphicsDevice *)self->m_gdi setTextCharExtra:*(a4 + 3)];
  }

  else
  {
    return -7;
  }
}

- (int)playOffsetClipRegion:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0xA)
  {
    return [(MFGraphicsDevice *)self->m_gdi offsetClipRegionByX:(*(a4 + 7) << 8) | *(a4 + 6) y:(*(a4 + 9) << 8) | *(a4 + 8)];
  }

  else
  {
    return -7;
  }
}

- (int)playTextOut:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 7)
  {
    return -7;
  }

  v5 = (*(a4 + 3) & 1) + *(a4 + 3);
  if (v5 + 12 > a3)
  {
    return -7;
  }

  v8 = [MEMORY[0x277CBEA90] dataWithBytes:a4 + 8 length:?];
  v6 = [(MFGraphicsDevice *)self->m_gdi textOutEncoded:(a4[v5 + 11] << 8) | a4[v5 + 10] y:(a4[v5 + 9] << 8) | a4[v5 + 8] in_data:v8];

  return v6;
}

- (int)playExtTextOut:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0xE)
  {
    return -7;
  }

  v5 = *(a4 + 10);
  v6 = v5 | (*(a4 + 11) << 8);
  v7 = (v5 & 1) + v6;
  if (v7 + 14 > a3)
  {
    return -7;
  }

  v9 = *(a4 + 7);
  v10 = *(a4 + 9);
  v11 = *(a4 + 12);
  if ((v11 & 6) == 0)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v16 = 0;
    v15 = 14;
LABEL_7:
    v17 = v15 + v7;
    v18 = a3 - v17;
    if (a3 < v17)
    {
      return -7;
    }

    v33 = v16;
    v34 = v14;
    v35 = *(a4 + 13);
    v36 = v13;
    v37 = v12;
    v38 = *(a4 + 8);
    v39 = *(a4 + 6);
    v40 = [MEMORY[0x277CBEA90] dataWithBytes:&a4[v15] length:v6];
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

      v26 = &a4[(v5 & 1) + 1 + v15 + v6];
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

  if (a3 >= 0x16)
  {
    v12 = *(a4 + 7);
    v13 = *(a4 + 8);
    v14 = *(a4 + 9);
    v15 = 22;
    v16 = *(a4 + 10);
    goto LABEL_7;
  }

  return -7;
}

- (int)playRectangle:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0xE)
  {
    return [(MFGraphicsDevice *)self->m_gdi rectangle:(*(a4 + 13) << 8) | *(a4 + 12) y1:(*(a4 + 11) << 8) | *(a4 + 10) x2:(*(a4 + 9) << 8) | *(a4 + 8) y2:(*(a4 + 7) << 8) | *(a4 + 6)];
  }

  else
  {
    return -7;
  }
}

- (int)playEllipse:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0xE)
  {
    return [(MFGraphicsDevice *)self->m_gdi ellipse:(*(a4 + 13) << 8) | *(a4 + 12) y1:(*(a4 + 11) << 8) | *(a4 + 10) x2:(*(a4 + 9) << 8) | *(a4 + 8) y2:(*(a4 + 7) << 8) | *(a4 + 6)];
  }

  else
  {
    return -7;
  }
}

- (int)playSaveDC:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 6)
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
  if (a3 >= 8)
  {
    return [(MFGraphicsDevice *)self->m_gdi restoreDC:(*(a4 + 7) << 8) | *(a4 + 6)];
  }

  else
  {
    return -7;
  }
}

- (int)playMoveTo:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0xA)
  {
    return [(MFGraphicsDevice *)self->m_gdi moveTo:*(a4 + 4) y:*(a4 + 3)];
  }

  else
  {
    return -7;
  }
}

- (int)playLineTo:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0xA)
  {
    return [(MFGraphicsDevice *)self->m_gdi lineTo:*(a4 + 4) y:*(a4 + 3)];
  }

  else
  {
    return -7;
  }
}

- (int)playPolygon:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 8)
  {
    return -7;
  }

  v5 = *(a4 + 3);
  if (4 * v5 + 8 > a3)
  {
    return -7;
  }

  v8 = smalloc_typed(*(a4 + 3), 0x10uLL, 0x1000040451B5BE8uLL);
  if (!v8)
  {
    return -4;
  }

  v9 = v8;
  if (v5)
  {
    v10 = v8 + 1;
    v11 = a4 + 11;
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

- (int)playPolyline:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0xC)
  {
    return -7;
  }

  v5 = *(a4 + 3);
  if (4 * v5 + 8 > a3)
  {
    return -7;
  }

  v8 = smalloc_typed(*(a4 + 3), 0x10uLL, 0x1000040451B5BE8uLL);
  if (!v8)
  {
    return -4;
  }

  v9 = v8;
  if (v5)
  {
    v10 = v8 + 1;
    v11 = a4 + 11;
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

- (int)playArc:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0x16)
  {
    return -7;
  }

  LODWORD(v5) = (*(a4 + 9) << 8) | *(a4 + 8);
  HIDWORD(v5) = (*(a4 + 7) << 8) | *(a4 + 6);
  return [(MFGraphicsDevice *)self->m_gdi arc:(*(a4 + 21) << 8) | *(a4 + 20) nTopRect:(*(a4 + 19) << 8) | *(a4 + 18) nRightRect:(*(a4 + 17) << 8) | *(a4 + 16) nBottomRect:(*(a4 + 15) << 8) | *(a4 + 14) nXStartArc:(*(a4 + 13) << 8) | *(a4 + 12) nYStartArc:(*(a4 + 11) << 8) | *(a4 + 10) nXEndArc:v5 nYEndArc:?];
}

- (int)playPie:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0x16)
  {
    return -7;
  }

  LODWORD(v5) = (*(a4 + 9) << 8) | *(a4 + 8);
  HIDWORD(v5) = (*(a4 + 7) << 8) | *(a4 + 6);
  return [(MFGraphicsDevice *)self->m_gdi pie:(*(a4 + 21) << 8) | *(a4 + 20) nTopRect:(*(a4 + 19) << 8) | *(a4 + 18) nRightRect:(*(a4 + 17) << 8) | *(a4 + 16) nBottomRect:(*(a4 + 15) << 8) | *(a4 + 14) nXStartArc:(*(a4 + 13) << 8) | *(a4 + 12) nYStartArc:(*(a4 + 11) << 8) | *(a4 + 10) nXEndArc:v5 nYEndArc:?];
}

- (int)playChord:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 != 22)
  {
    return -7;
  }

  LODWORD(v5) = (*(a4 + 9) << 8) | *(a4 + 8);
  HIDWORD(v5) = (*(a4 + 7) << 8) | *(a4 + 6);
  return [(MFGraphicsDevice *)self->m_gdi chord:(*(a4 + 21) << 8) | *(a4 + 20) nTopRect:(*(a4 + 19) << 8) | *(a4 + 18) nRightRect:(*(a4 + 17) << 8) | *(a4 + 16) nBottomRect:(*(a4 + 15) << 8) | *(a4 + 14) nXStartArc:(*(a4 + 13) << 8) | *(a4 + 12) nYStartArc:(*(a4 + 11) << 8) | *(a4 + 10) nXEndArc:v5 nYEndArc:?];
}

- (int)playRoundRect:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 == 18)
  {
    return [(MFGraphicsDevice *)self->m_gdi roundRect:(*(a4 + 17) << 8) | *(a4 + 16) top:(*(a4 + 15) << 8) | *(a4 + 14) right:(*(a4 + 13) << 8) | *(a4 + 12) bottom:(*(a4 + 11) << 8) | *(a4 + 10) rx:vcvtd_n_f64_s32(*(a4 + 4) ry:1uLL), vcvtd_n_f64_s32(*(a4 + 3), 1uLL)];
  }

  else
  {
    return -7;
  }
}

- (int)playPolyPolygon:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 8)
  {
    return -7;
  }

  v6 = *(a4 + 3);
  v7 = 2 * v6 + 8;
  if (v7 > a3)
  {
    return -7;
  }

  v11 = smalloc_typed(*(a4 + 3), 4uLL, 0x100004052888210uLL);
  if (!v11)
  {
    return -4;
  }

  v12 = v11;
  v13 = 0;
  if (v6)
  {
    v14 = a4 + 9;
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

  if (v7 + 4 * v13 <= a3)
  {
    v18 = v13;
    v19 = smalloc_typed(v13, 0x10uLL, 0x1000040451B5BE8uLL);
    if (v19)
    {
      v20 = v19;
      if (v13)
      {
        v21 = &a4[(2 * v6) + 8];
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

- (int)playSetWindowExt:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0xA)
  {
    return -7;
  }

  v6 = (*(a4 + 9) << 8);
  v7 = v6 | *(a4 + 8);
  v8 = (*(a4 + 7) << 8);
  v9 = v8 | *(a4 + 6);
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
    v12 = v6 | *(a4 + 8);
    v13 = v8 | *(a4 + 6);

    return [(MFGraphicsDevice *)m_gdi setWindowExt:v12 in_y:v13];
  }

  else
  {
    if (v7 >= 0)
    {
      v14 = v6 | *(a4 + 8);
    }

    else
    {
      v14 = -v7;
    }

    if (v9 >= 0)
    {
      v15 = v8 | *(a4 + 6);
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

- (int)playSetWindowOrg:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0xA)
  {
    return -7;
  }

  if (self->m_ignoreSetWindowOrg)
  {
    return 0;
  }

  return [(MFGraphicsDevice *)self->m_gdi setWindowOrg:(*(a4 + 9) << 8) | *(a4 + 8) in_y:(*(a4 + 7) << 8) | *(a4 + 6)];
}

- (int)playScaleWindowExt:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0xE)
  {
    return [(MFGraphicsDevice *)self->m_gdi scaleWindowExt:(*(a4 + 13) << 8) | *(a4 + 12) in_xDenom:(*(a4 + 11) << 8) | *(a4 + 10) in_yNum:(*(a4 + 9) << 8) | *(a4 + 8) in_yDenom:(*(a4 + 7) << 8) | *(a4 + 6)];
  }

  else
  {
    return -7;
  }
}

- (int)playOffsetWindowOrg:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0xA)
  {
    return [(MFGraphicsDevice *)self->m_gdi offsetWindowOrg:(*(a4 + 9) << 8) | *(a4 + 8) in_y:(*(a4 + 7) << 8) | *(a4 + 6)];
  }

  else
  {
    return -7;
  }
}

- (int)playOffsetViewportOrg:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0xA)
  {
    return [(MFGraphicsDevice *)self->m_gdi offsetViewportOrg:(*(a4 + 9) << 8) | *(a4 + 8) in_y:(*(a4 + 7) << 8) | *(a4 + 6)];
  }

  else
  {
    return -7;
  }
}

- (int)playSetViewportExt:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0xA)
  {
    return [(MFGraphicsDevice *)self->m_gdi setViewportExt:(*(a4 + 9) << 8) | *(a4 + 8) in_y:(*(a4 + 7) << 8) | *(a4 + 6)];
  }

  else
  {
    return -7;
  }
}

- (int)playSetViewportOrg:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0xA)
  {
    return [(MFGraphicsDevice *)self->m_gdi setViewportOrg:(*(a4 + 9) << 8) | *(a4 + 8) in_y:(*(a4 + 7) << 8) | *(a4 + 6)];
  }

  else
  {
    return -7;
  }
}

- (int)playScaleViewportExt:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0xE)
  {
    return [(MFGraphicsDevice *)self->m_gdi scaleViewportExt:(*(a4 + 13) << 8) | *(a4 + 12) in_xDenom:(*(a4 + 11) << 8) | *(a4 + 10) in_yNum:(*(a4 + 9) << 8) | *(a4 + 8) in_yDenom:(*(a4 + 7) << 8) | *(a4 + 6)];
  }

  else
  {
    return -7;
  }
}

- (int)playSelectObject:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 8)
  {
    return [(MFGraphicsDevice *)self->m_gdi selectObject:*(a4 + 3)];
  }

  else
  {
    return -7;
  }
}

- (int)playSelectPalette:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 8)
  {
    return [(MFGraphicsDevice *)self->m_gdi selectObject:*(a4 + 3)];
  }

  else
  {
    return -7;
  }
}

- (int)playDeleteObject:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 8)
  {
    return [(MFGraphicsDevice *)self->m_gdi deleteObject:*(a4 + 3)];
  }

  else
  {
    return -7;
  }
}

- (int)playCreateDIBPatternBrush:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0x16)
  {
    return -7;
  }

  v6 = [(MFGraphicsDevice *)self->m_gdi createDIBitmap:a4 + 10 in_dibSize:a3 - 10 in_usage:*(a4 + 4)];
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

- (int)playRealizePalette:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 6)
  {
    return [(MFGraphicsDevice *)self->m_gdi realizePalette];
  }

  else
  {
    return -7;
  }
}

- (int)playCreatePalette:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0xA)
  {
    return -7;
  }

  v5 = *(a4 + 4);
  if (4 * v5 + 10 > a3)
  {
    return -7;
  }

  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(a4 + 4)];
  if (v5)
  {
    v9 = (a4 + 12);
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

- (int)playSetPaletteEntries:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0xA)
  {
    return -7;
  }

  v5 = *(a4 + 4);
  if (4 * v5 + 10 > a3)
  {
    return -7;
  }

  v8 = *(a4 + 3);
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(a4 + 4)];
  if (v5)
  {
    v10 = (a4 + 12);
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

- (int)playResizePalette:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 8)
  {
    return [(MFGraphicsDevice *)self->m_gdi resizePalette:*(a4 + 3) in_index:0xFFFFFFFFLL];
  }

  else
  {
    return -7;
  }
}

- (int)playCreatePatternBrush:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0x12 || *(a4 + 6) * ((*(a4 + 11) << 8) | *(a4 + 10)) + 38 > a3)
  {
    return -7;
  }

  v6 = [(MFGraphicsDevice *)self->m_gdi createBitmap:(*(a4 + 9) << 8) | *(a4 + 8) in_height:(*(a4 + 11) << 8) | *(a4 + 10) in_planes:*(a4 + 14) in_bitsPerPixel:*(a4 + 15) in_bitmap:a4 + 38 in_bitmapSize:a3 - 38];
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

- (int)playCreatePenIndirect:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0x10)
  {
    return -7;
  }

  if (*(a4 + 3) <= 6u)
  {
    v6 = *(a4 + 3);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a4 + 4);
  v8 = [OITSUColor colorWithRGBBytes:*(a4 + 12) green:*(a4 + 13) blue:*(a4 + 14)];
  v4 = [(MFGraphicsDevice *)self->m_gdi createPen:v6 width:v7 in_colour:v8 in_userStyleArray:0 index:0xFFFFFFFFLL];

  return v4;
}

- (int)playCreateFontIndirect:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0x18)
  {
    return -7;
  }

  v35 = *(a4 + 6);
  v33 = *(a4 + 8);
  v27 = *(a4 + 9);
  v28 = *(a4 + 7);
  v37 = *(a4 + 10);
  v36 = *(a4 + 12);
  v25 = *(a4 + 13);
  v26 = *(a4 + 11);
  v34 = *(a4 + 14);
  v24 = *(a4 + 15);
  v29 = *(a4 + 16);
  v30 = *(a4 + 17);
  v8 = *(a4 + 19);
  v9 = *(a4 + 20);
  v31 = *(a4 + 18);
  v32 = a4[21];
  v10 = *(a4 + 22);
  v11 = *(a4 + 23);
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

  if (a3 == 24)
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

    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a4 + 24 length:32 encoding:v15];
    if (!v14)
    {
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a4 + 24 length:32 encoding:5];
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

- (int)playCreateBrushIndirect:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0xE)
  {
    v7 = *(a4 + 3);
    v8 = [(MFGraphicsDevice *)self->m_gdi createColorWithRGBBytes:*(a4 + 8) green:*(a4 + 9) blue:*(a4 + 10) flags:*(a4 + 11)];
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

    if (*(a4 + 6) >= 6u)
    {
      v9 = 0xFFFFFFLL;
    }

    else
    {
      v9 = *(a4 + 6);
    }

    v4 = [(MFGraphicsDevice *)self->m_gdi createBrush:v7 in_colour:v8 hatchstyle:v9 index:0xFFFFFFFFLL];
    goto LABEL_10;
  }

  return -7;
}

- (int)playCreateRegion:(unsigned int)a3 in_pRecord:(const char *)a4
{
  v4 = a3 >= 6;
  v5 = a3 - 6;
  if (!v4)
  {
    return -7;
  }

  v8 = [(WMFPlayer *)self parseRegion:v5 in_pData:a4 + 6];
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

- (int)playSetPolyFillMode:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 8)
  {
    return -7;
  }

  m_gdi = self->m_gdi;
  if (*(a4 + 3) == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  return [(MFGraphicsDevice *)m_gdi setPolyFillMode:v6];
}

- (int)playSetROP2:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 8)
  {
    return [(MFGraphicsDevice *)self->m_gdi setRop2:*(a4 + 3)];
  }

  else
  {
    return -1;
  }
}

- (int)playFillRegion:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0xA)
  {
    return [(MFGraphicsDevice *)self->m_gdi fillRgn:*(a4 + 4) in_brushID:*(a4 + 3)];
  }

  else
  {
    return -7;
  }
}

- (int)playFrameRegion:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 0xE)
  {
    return [(MFGraphicsDevice *)self->m_gdi frameRegion:*(a4 + 6) in_brushID:*(a4 + 5) in_width:*(a4 + 4) in_height:*(a4 + 3)];
  }

  else
  {
    return -7;
  }
}

- (int)playInvertRegion:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 8)
  {
    return [(MFGraphicsDevice *)self->m_gdi invertRgn:*(a4 + 3)];
  }

  else
  {
    return -7;
  }
}

- (int)playPaintRegion:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 8)
  {
    return [(MFGraphicsDevice *)self->m_gdi paintRgn:*(a4 + 3)];
  }

  else
  {
    return -7;
  }
}

- (int)playSelectClipRegion:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 >= 8)
  {
    return [(MFGraphicsDevice *)self->m_gdi setClipRegion:*(a4 + 3)];
  }

  else
  {
    return -7;
  }
}

- (int)playExcludeClipRect:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0xE)
  {
    return -1;
  }

  v5 = (*(a4 + 11) << 8) | *(a4 + 10);
  v6 = (*(a4 + 13) << 8) | *(a4 + 12);
  return [(MFGraphicsDevice *)self->m_gdi excludeClipRect:v6, v5, (((*(a4 + 9) << 8) | *(a4 + 8)) - v6), (((*(a4 + 7) << 8) | *(a4 + 6)) - v5)];
}

- (int)playIntersectClipRect:(unsigned int)a3 in_pRecord:(const char *)a4
{
  if (a3 < 0xE)
  {
    return -1;
  }

  v5 = (*(a4 + 11) << 8) | *(a4 + 10);
  v6 = (*(a4 + 13) << 8) | *(a4 + 12);
  return [(MFGraphicsDevice *)self->m_gdi intersectClipRect:v6, v5, (((*(a4 + 9) << 8) | *(a4 + 8)) - v6), (((*(a4 + 7) << 8) | *(a4 + 6)) - v5)];
}

- (id)parseRegion:(unsigned int)a3 in_pData:(const char *)a4
{
  if (a3 < 0x16)
  {
    if (!a3)
    {
      v7 = [MEMORY[0x277CBEB18] array];
      goto LABEL_16;
    }
  }

  else
  {
    v6 = *(a4 + 5);
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(a4 + 5)];
    if (!v6)
    {
      goto LABEL_16;
    }

    v8 = 0;
    v9 = (a4 + 22);
    v10 = &a4[a3];
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
          [v7 addObject:v20];
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

  v7 = 0;
LABEL_16:

  return v7;
}

+ (CGRect)windowBounds:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  v5 = [v3 bytes];
  if (*v5 == -1698247209)
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
    v8 = v5 + v6;
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

+ (CGRect)boundsInLogicalUnits:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  v6 = [v4 bytes];
  if (v5 <= 0x11)
  {
    goto LABEL_2;
  }

  if (*v6 != -1698247209)
  {
LABEL_8:
    [a1 windowBounds:v4];
    v7 = v15;
    v8 = v16;
    v9 = v17;
    v10 = v18;
    goto LABEL_9;
  }

  if (v5 > 0x27)
  {
    [WMFPlayer placeableBounds:v6];
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

+ (CGRect)boundsInPoints:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  v6 = [v4 bytes];
  if (v5 <= 0x11)
  {
    goto LABEL_2;
  }

  v9 = v6;
  if (*v6 != -1698247209)
  {
LABEL_9:
    [a1 windowBounds:v4];
    v20.f64[1] = v19;
    v22.f64[1] = v21;
    v23 = vdupq_n_s64(0x4052000000000000uLL);
    v28 = vmulq_f64(vdivq_f64(v20, xmmword_25D6FDBD0), v23);
    v29 = vmulq_f64(vdivq_f64(v22, xmmword_25D6FDBD0), v23);
    goto LABEL_10;
  }

  if (v5 > 0x27)
  {
    [WMFPlayer placeableBounds:v6];
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