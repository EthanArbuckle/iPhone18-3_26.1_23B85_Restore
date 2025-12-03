@interface MFBitmap
- (BOOL)parseHeader:(const char *)header in_headerSize:(unsigned int)size;
- (BOOL)processDIBHeader:(id)header in_header:(const char *)in_header in_headerSize:(unsigned int)size in_usage:(int)in_usage;
- (MFBitmap)init;
- (MFBitmap)initWithBitmap:(id)bitmap in_width:(int)in_width in_height:(int)in_height in_planes:(int)in_planes in_bitsPerPixel:(int)pixel in_bitmap:(const char *)in_bitmap in_bitmapSize:(unsigned int)size;
- (MFBitmap)initWithDIBitmap:(id)bitmap in_dib:(const char *)in_dib in_dibSize:(unsigned int)size in_usage:(int)in_usage;
- (MFBitmap)initWithDIBitmap:(id)bitmap in_header:(const char *)in_header in_headerSize:(unsigned int)size in_bitmap:(const char *)in_bitmap in_bitmapSize:(unsigned int)in_bitmapSize in_usage:(int)in_usage;
- (unsigned)coloursUsed:(const char *)used in_headerSize:(unsigned int)size in_usage:(int)in_usage;
- (unsigned)pixelDataOffset:(const char *)offset in_headerSize:(unsigned int)size in_usage:(int)in_usage;
- (void)appendDIBPalette:(id)palette in_header:(const char *)in_header in_headerSize:(unsigned int)size in_usage:(int)in_usage;
- (void)setMonoPalette:(id)palette;
- (void)setNull;
- (void)writeFileHeader;
- (void)writeInfoHeader;
- (void)writePaletteEntry:(id)entry in_index:(int)in_index;
@end

@implementation MFBitmap

- (void)writeFileHeader
{
  v3 = [(NSMutableData *)self->m_bmpData length];
  v4 = self->m_infoHeaderSize + self->m_paletteSize;
  mutableBytes = [(NSMutableData *)self->m_bmpData mutableBytes];
  *mutableBytes = 19778;
  MFWriteUInt32ToByteArray(mutableBytes, v3, 2u);
  MFWriteUInt32ToByteArray(mutableBytes, 0, 6u);
  MFWriteUInt32ToByteArray(mutableBytes, 0, 8u);

  MFWriteUInt32ToByteArray(mutableBytes, v4 + 14, 0xAu);
}

- (void)setNull
{
  self->m_infoHeaderSize = 0;
  self->m_paletteSize = 0;
  self->m_bitsPerPixel = 0;
  self->m_isOS2 = 0;
  m_bmpData = self->m_bmpData;
  self->m_bmpData = 0;
}

- (BOOL)parseHeader:(const char *)header in_headerSize:(unsigned int)size
{
  v4 = *header;
  self->m_infoHeaderSize = *header;
  self->m_isOS2 = v4 == 12;
  if (v4 != 12)
  {
    if (v4 >= 0x28 && v4 <= size)
    {
      self->m_width = *(header + 1);
      self->m_height = *(header + 2);
      self->m_bitsPerPixel = *(header + 7);
      v5 = *(header + 4);
      goto LABEL_10;
    }

    return 0;
  }

  if (size < 0xC)
  {
    return 0;
  }

  v5 = 0;
  self->m_width = (*(header + 5) << 8) | *(header + 4);
  self->m_height = (*(header + 7) << 8) | *(header + 6);
  self->m_bitsPerPixel = *(header + 5);
LABEL_10:
  self->m_compression = v5;
  return 1;
}

- (void)writePaletteEntry:(id)entry in_index:(int)in_index
{
  entryCopy = entry;
  v12 = 0;
  v11 = 0;
  if (self->m_isOS2)
  {
    v7 = 3;
  }

  else
  {
    v7 = 4;
  }

  if (v7 + v7 * in_index <= self->m_paletteSize)
  {
    mutableBytes = [(NSMutableData *)self->m_bmpData mutableBytes];
    m_infoHeaderSize = self->m_infoHeaderSize;
    [entryCopy getRGBBytes:&v12 + 1 green:&v12 blue:&v11];
    v10 = &mutableBytes[m_infoHeaderSize + (v7 * in_index)];
    v10[14] = v11;
    *(v10 + 15) = v12;
  }
}

- (void)writeInfoHeader
{
  mutableBytes = [(NSMutableData *)self->m_bmpData mutableBytes];
  MFWriteUInt32ToByteArray(mutableBytes + 14, 40, 0);
  MFWriteUInt32ToByteArray(mutableBytes + 14, self->m_width, 4u);
  MFWriteUInt32ToByteArray(mutableBytes + 14, self->m_height, 8u);
  MFWriteUInt16ToByteArray(mutableBytes + 14, 1, 0xCu);
  MFWriteUInt16ToByteArray(mutableBytes + 14, self->m_bitsPerPixel, 0xEu);
  MFWriteUInt32ToByteArray(mutableBytes + 14, 0, 0x10u);
  MFWriteUInt32ToByteArray(mutableBytes + 14, 0, 0x14u);
  MFWriteUInt32ToByteArray(mutableBytes + 14, 0, 0x18u);
  MFWriteUInt32ToByteArray(mutableBytes + 14, 0, 0x1Cu);
  MFWriteUInt32ToByteArray(mutableBytes + 14, 0, 0x20u);

  MFWriteUInt32ToByteArray(mutableBytes + 14, 0, 0x24u);
}

- (unsigned)coloursUsed:(const char *)used in_headerSize:(unsigned int)size in_usage:(int)in_usage
{
  m_bitsPerPixel = self->m_bitsPerPixel;
  if (m_bitsPerPixel > 8)
  {
    return 0;
  }

  if (self->m_isOS2)
  {
    return 1 << m_bitsPerPixel;
  }

  result = *(used + 8);
  if (!result)
  {
    return 1 << m_bitsPerPixel;
  }

  return result;
}

- (unsigned)pixelDataOffset:(const char *)offset in_headerSize:(unsigned int)size in_usage:(int)in_usage
{
  m_paletteSize = self->m_paletteSize;
  if (in_usage && self->m_bitsPerPixel <= 8)
  {
    m_paletteSize = 2 * [(MFBitmap *)self coloursUsed:offset in_headerSize:*&size in_usage:?];
  }

  return self->m_infoHeaderSize + m_paletteSize;
}

- (void)appendDIBPalette:(id)palette in_header:(const char *)in_header in_headerSize:(unsigned int)size in_usage:(int)in_usage
{
  v6 = *&in_usage;
  v7 = *&size;
  paletteCopy = palette;
  if (self->m_bitsPerPixel > 8)
  {
    if (self->m_compression == 3 && (self->m_paletteSize = 12, m_infoHeaderSize = self->m_infoHeaderSize, m_infoHeaderSize + 12 <= v7))
    {
      [(NSMutableData *)self->m_bmpData appendBytes:&in_header[m_infoHeaderSize] length:12];
    }

    else
    {
      self->m_paletteSize = 0;
    }
  }

  else
  {
    v10 = [(MFBitmap *)self coloursUsed:in_header in_headerSize:v7 in_usage:v6];
    v11 = v10;
    if (self->m_isOS2)
    {
      v12 = 3;
    }

    else
    {
      v12 = 4;
    }

    v13 = v12 * v10;
    self->m_paletteSize = v13;
    if (v6)
    {
      getSelectedPalette = [paletteCopy getSelectedPalette];
      [(NSMutableData *)self->m_bmpData increaseLengthBy:self->m_paletteSize];
      if (v11)
      {
        v15 = self->m_infoHeaderSize;
        v16 = &in_header[v7];
        if (&in_header[v15 + 2] <= v16)
        {
          v17 = &in_header[v15 + 4];
          v18 = 1;
          do
          {
            v19 = [getSelectedPalette getColour:*(v17 - 2)];
            [(MFBitmap *)self writePaletteEntry:v19 in_index:v18 - 1];

            if (v18 >= v11)
            {
              break;
            }

            ++v18;
            v20 = v17 > v16;
            v17 += 2;
          }

          while (!v20);
        }
      }
    }

    else
    {
      v22 = self->m_infoHeaderSize;
      if (v13 >= v7 - v22)
      {
        v23 = (v7 - v22);
      }

      else
      {
        v23 = v13;
      }

      [(NSMutableData *)self->m_bmpData appendBytes:&in_header[v22] length:v23];
      m_paletteSize = self->m_paletteSize;
      if (m_paletteSize > v23)
      {
        [(NSMutableData *)self->m_bmpData increaseLengthBy:m_paletteSize - v23];
      }
    }
  }
}

- (BOOL)processDIBHeader:(id)header in_header:(const char *)in_header in_headerSize:(unsigned int)size in_usage:(int)in_usage
{
  v6 = *&in_usage;
  v7 = *&size;
  headerCopy = header;
  if (!in_header || !v7)
  {
    goto LABEL_12;
  }

  if ([(MFBitmap *)self parseHeader:in_header in_headerSize:v7])
  {
    if (self->m_width && self->m_height && self->m_bitsPerPixel)
    {
      v11 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:14];
      m_bmpData = self->m_bmpData;
      self->m_bmpData = v11;

      [(NSMutableData *)self->m_bmpData appendBytes:in_header length:self->m_infoHeaderSize];
      if (self->m_infoHeaderSize == 40)
      {
        mutableBytes = [(NSMutableData *)self->m_bmpData mutableBytes];
        v14 = llround(2834.64567);
        MFWriteUInt32ToByteArray(mutableBytes, v14, 0x26u);
        MFWriteUInt32ToByteArray(mutableBytes, v14, 0x2Au);
      }

      [(MFBitmap *)self appendDIBPalette:headerCopy in_header:in_header in_headerSize:v7 in_usage:v6];
      goto LABEL_13;
    }

LABEL_12:
    [(MFBitmap *)self setNull];
LABEL_13:
    v15 = 1;
    goto LABEL_14;
  }

  v15 = 0;
LABEL_14:

  return v15;
}

- (MFBitmap)init
{
  v5.receiver = self;
  v5.super_class = MFBitmap;
  v2 = [(MFBitmap *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MFBitmap *)v2 setNull];
  }

  return v3;
}

- (MFBitmap)initWithDIBitmap:(id)bitmap in_dib:(const char *)in_dib in_dibSize:(unsigned int)size in_usage:(int)in_usage
{
  v6 = *&in_usage;
  v7 = *&size;
  bitmapCopy = bitmap;
  v16.receiver = self;
  v16.super_class = MFBitmap;
  v11 = [(MFBitmap *)&v16 init];
  p_isa = &v11->super.isa;
  if (!v11)
  {
LABEL_8:
    v14 = p_isa;
    goto LABEL_9;
  }

  if ([(MFBitmap *)v11 processDIBHeader:bitmapCopy in_header:in_dib in_headerSize:v7 in_usage:v6])
  {
    if (([p_isa isEmpty] & 1) == 0)
    {
      v13 = [p_isa pixelDataOffset:in_dib in_headerSize:v7 in_usage:v6];
      if (v7 <= v13)
      {
        [p_isa setNull];
      }

      else
      {
        [p_isa[5] appendBytes:&in_dib[v13] length:v7 - v13];
        [p_isa writeFileHeader];
      }
    }

    goto LABEL_8;
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (MFBitmap)initWithDIBitmap:(id)bitmap in_header:(const char *)in_header in_headerSize:(unsigned int)size in_bitmap:(const char *)in_bitmap in_bitmapSize:(unsigned int)in_bitmapSize in_usage:(int)in_usage
{
  v8 = *&in_usage;
  v11 = *&size;
  bitmapCopy = bitmap;
  v19.receiver = self;
  v19.super_class = MFBitmap;
  v15 = [(MFBitmap *)&v19 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    if (in_bitmap && in_bitmapSize)
    {
      if (![(MFBitmap *)v15 processDIBHeader:bitmapCopy in_header:in_header in_headerSize:v11 in_usage:v8])
      {
        v17 = 0;
        goto LABEL_9;
      }

      if (([p_isa isEmpty] & 1) == 0)
      {
        [p_isa[5] appendBytes:in_bitmap length:in_bitmapSize];
        [p_isa writeFileHeader];
      }
    }

    else
    {
      [(MFBitmap *)v15 setNull];
    }
  }

  v17 = p_isa;
LABEL_9:

  return v17;
}

- (MFBitmap)initWithBitmap:(id)bitmap in_width:(int)in_width in_height:(int)in_height in_planes:(int)in_planes in_bitsPerPixel:(int)pixel in_bitmap:(const char *)in_bitmap in_bitmapSize:(unsigned int)size
{
  bitmapCopy = bitmap;
  v46.receiver = self;
  v46.super_class = MFBitmap;
  v16 = [(MFBitmap *)&v46 init];
  v17 = v16;
  if (v16)
  {
    if (in_planes > 1 || !in_width || !in_height || !pixel || !in_bitmap || !size)
    {
      [(MFBitmap *)v16 setNull];
LABEL_28:
      v44 = v17;
      goto LABEL_29;
    }

    v16->m_width = in_width;
    v16->m_height = in_height;
    v16->m_infoHeaderSize = 40;
    v16->m_bitsPerPixel = pixel;
    v16->m_compression = 0;
    v16->m_isOS2 = 0;
    v18 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v16->m_infoHeaderSize + 14];
    m_bmpData = v17->m_bmpData;
    v17->m_bmpData = v18;

    [(MFBitmap *)v17 writeInfoHeader];
    m_bitsPerPixel = v17->m_bitsPerPixel;
    if (m_bitsPerPixel == 8 || m_bitsPerPixel == 4)
    {
      getSelectedPalette = [bitmapCopy getSelectedPalette];
      v24 = v17->m_bitsPerPixel;
      v17->m_paletteSize = 4 << v24;
      [(NSMutableData *)v17->m_bmpData increaseLengthBy:?];
      v25 = 1;
      do
      {
        v26 = [getSelectedPalette getColour:v25 - 1];
        [(MFBitmap *)v17 writePaletteEntry:v26 in_index:v25 - 1];
      }

      while (!(v25++ >> v24));
      sizeCopy3 = size;
    }

    else
    {
      if (m_bitsPerPixel != 1)
      {
        sizeCopy3 = size;
        v17->m_paletteSize = 0;
        goto LABEL_18;
      }

      v17->m_paletteSize = 8;
      [(NSMutableData *)v17->m_bmpData increaseLengthBy:8];
      v21 = [OITSUColor colorWithRGBBytes:0 green:0 blue:0];
      [(MFBitmap *)v17 writePaletteEntry:v21 in_index:0];

      getSelectedPalette = [OITSUColor colorWithRGBBytes:255 green:255 blue:255];
      sizeCopy3 = size;
      [(MFBitmap *)v17 writePaletteEntry:getSelectedPalette in_index:1];
    }

LABEL_18:
    m_width = v17->m_width;
    m_height = v17->m_height;
    v30 = m_width * v17->m_bitsPerPixel;
    v31 = ((v30 + 15) >> 3) & 0x1FFFFFFE;
    v32 = m_height * v31;
    v33 = (v32 & 0xFFFFFFFF00000000) != 0;
    TCVerifyInputMeetsCondition(v32 <= sizeCopy3);
    v34 = v17->m_bitsPerPixel * m_width;
    v35 = v34 + 31;
    v37 = (v34 & 0xFFFFFFFF00000000) != 0 || v34 > 0xFFFFFFE0;
    v38 = (v35 >> 3) & 0x1FFFFFFC;
    v39 = m_height * v38;
    TCVerifyInputMeetsCondition((v39 & 0xFFFFFFFF00000000) == 0 && !v37 && !v33 && (v30 & 0xFFFFFFFF00000000) == 0 && v30 <= 0xFFFFFFF0);
    v40 = v39;
    [(NSMutableData *)v17->m_bmpData increaseLengthBy:v39];
    v41 = ([(NSMutableData *)v17->m_bmpData mutableBytes]+ v17->m_infoHeaderSize + v17->m_paletteSize + 14);
    bzero(v41, v40);
    if (m_height)
    {
      v42 = 0;
      v43 = 2 * ((v30 + 15) >> 4) * (m_height - 1);
      do
      {
        memcpy(&v41[v42], &in_bitmap[v43], ((v30 + 15) >> 3) & 0x1FFFFFFE);
        v42 += v38;
        v43 -= v31;
        --m_height;
      }

      while (m_height);
    }

    [(MFBitmap *)v17 writeFileHeader];
    goto LABEL_28;
  }

LABEL_29:

  return v17;
}

- (void)setMonoPalette:(id)palette
{
  paletteCopy = palette;
  if (self->m_bitsPerPixel == 1)
  {
    v7 = paletteCopy;
    getTextColour = [paletteCopy getTextColour];
    [(MFBitmap *)self writePaletteEntry:getTextColour in_index:0];

    getBkColour = [v7 getBkColour];
    [(MFBitmap *)self writePaletteEntry:getBkColour in_index:1];

    paletteCopy = v7;
  }
}

@end