@interface MFPhonePen
+ (id)penWithStyle:(int)style width:(int)width colour:(id)colour styleArray:(double *)array LPToDPTransform:(CGAffineTransform *)transform;
- (MFPhonePen)initWithStyle:(int)style width:(int)width colour:(id)colour styleArray:(double *)array;
- (void)applyDashedLinesToPath:(id)path;
- (void)applyLineCapStyleToPath:(id)path;
- (void)applyLineJoinStyleToPath:(id)path in_path:(id)in_path;
- (void)strokePath:(id)path in_path:(id)in_path;
@end

@implementation MFPhonePen

+ (id)penWithStyle:(int)style width:(int)width colour:(id)colour styleArray:(double *)array LPToDPTransform:(CGAffineTransform *)transform
{
  v9 = *&width;
  v10 = *&style;
  colourCopy = colour;
  v13 = [self alloc];
  v14 = v13;
  if (v10 > 4 || v9)
  {
    v13[8] = v9;
  }

  else
  {
    v15 = *&transform->c;
    *&v19.a = *&transform->a;
    *&v19.c = v15;
    *&v19.tx = *&transform->tx;
    memset(&v20, 0, sizeof(v20));
    CGAffineTransformInvert(&v20, &v19);
    v16 = v20.a + v20.c;
    v14[8] = v16;
    v9 = 1;
  }

  v17 = [v14 initWithStyle:v10 width:v9 colour:colourCopy styleArray:array];

  return v17;
}

- (MFPhonePen)initWithStyle:(int)style width:(int)width colour:(id)colour styleArray:(double *)array
{
  v7.receiver = self;
  v7.super_class = MFPhonePen;
  return [(MFPen *)&v7 initWithStyle:*&style width:*&width colour:colour styleArray:array];
}

- (void)applyDashedLinesToPath:(id)path
{
  v12[6] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v5 = ([(MFPen *)self getStyle]& 0xF) - 1;
  if (v5 < 4)
  {
    v6 = 0;
    v7 = qword_25D6FDAF8[v5];
    v8 = s_dashArraysSize[v7];
    m_PixelSize = self->m_PixelSize;
    if (v8 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v8;
    }

    v11 = &s_dashArrays + 24 * v7;
    do
    {
      *&v12[v6] = (*&v11[4 * v6] * m_PixelSize);
      ++v6;
    }

    while (v10 != v6);
    [pathCopy setLineDash:v12 count:0.0 phase:?];
  }
}

- (void)applyLineJoinStyleToPath:(id)path in_path:(id)in_path
{
  pathCopy = path;
  in_pathCopy = in_path;
  v7 = [(MFPen *)self getStyle]& 0xF000;
  v8 = 1;
  if (v7 == 4096)
  {
    v8 = 2;
  }

  if (v7 == 0x2000)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  [in_pathCopy setLineJoinStyle:v9];
  if (v7 == 0x2000)
  {
    [pathCopy getMiterLimit];
    v11 = v10;
    if (v10 < 0.0)
    {
      [in_pathCopy setMiterLimit:10.0];
    }

    [in_pathCopy setMiterLimit:v11];
  }
}

- (void)applyLineCapStyleToPath:(id)path
{
  pathCopy = path;
  v4 = [(MFPen *)self getStyle]& 0xF00;
  v5 = 1;
  if (v4 == 256)
  {
    v5 = 2;
  }

  if (v4 == 512)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  [pathCopy setLineCapStyle:v6];
}

- (void)strokePath:(id)path in_path:(id)in_path
{
  pathCopy = path;
  in_pathCopy = in_path;
  v7 = [MFPhoneDeviceDriver getROP:pathCopy];
  v8 = v7;
  if (self->super.m_penStyle != 5 && v7 != 3)
  {
    m_penWidth = self->super.m_penWidth;
    if (m_penWidth)
    {
      [in_pathCopy setLineWidth:m_penWidth];
      if (v8 == 1)
      {
        v11 = +[OITSUColor whiteColor];
        [v11 set];
      }

      else
      {
        if (v8)
        {
          [(MFPen *)self getColor];
        }

        else
        {
          +[OITSUColor blackColor];
        }
        v11 = ;
        [v11 set];
      }

      [(MFPhonePen *)self applyDashedLinesToPath:in_pathCopy];
      m_penStyle = self->super.m_penStyle;
      if ((m_penStyle & 0xF0000) == 0x10000 || self->super.m_penWidth >= 2)
      {
        [(MFPhonePen *)self applyLineCapStyleToPath:in_pathCopy];
        [(MFPhonePen *)self applyLineJoinStyleToPath:pathCopy in_path:in_pathCopy];
        m_penStyle = self->super.m_penStyle;
      }

      if ((~m_penStyle & 0x12000) == 0)
      {
        [pathCopy getMiterLimit];
        if (v13 > 0.0 && v13 != 4.0)
        {
          [in_pathCopy setMiterLimit:?];
        }
      }

      [in_pathCopy stroke];
    }
  }
}

@end