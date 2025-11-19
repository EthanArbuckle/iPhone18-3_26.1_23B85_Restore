@interface MFPhonePen
+ (id)penWithStyle:(int)a3 width:(int)a4 colour:(id)a5 styleArray:(double *)a6 LPToDPTransform:(CGAffineTransform *)a7;
- (MFPhonePen)initWithStyle:(int)a3 width:(int)a4 colour:(id)a5 styleArray:(double *)a6;
- (void)applyDashedLinesToPath:(id)a3;
- (void)applyLineCapStyleToPath:(id)a3;
- (void)applyLineJoinStyleToPath:(id)a3 in_path:(id)a4;
- (void)strokePath:(id)a3 in_path:(id)a4;
@end

@implementation MFPhonePen

+ (id)penWithStyle:(int)a3 width:(int)a4 colour:(id)a5 styleArray:(double *)a6 LPToDPTransform:(CGAffineTransform *)a7
{
  v9 = *&a4;
  v10 = *&a3;
  v12 = a5;
  v13 = [a1 alloc];
  v14 = v13;
  if (v10 > 4 || v9)
  {
    v13[8] = v9;
  }

  else
  {
    v15 = *&a7->c;
    *&v19.a = *&a7->a;
    *&v19.c = v15;
    *&v19.tx = *&a7->tx;
    memset(&v20, 0, sizeof(v20));
    CGAffineTransformInvert(&v20, &v19);
    v16 = v20.a + v20.c;
    v14[8] = v16;
    v9 = 1;
  }

  v17 = [v14 initWithStyle:v10 width:v9 colour:v12 styleArray:a6];

  return v17;
}

- (MFPhonePen)initWithStyle:(int)a3 width:(int)a4 colour:(id)a5 styleArray:(double *)a6
{
  v7.receiver = self;
  v7.super_class = MFPhonePen;
  return [(MFPen *)&v7 initWithStyle:*&a3 width:*&a4 colour:a5 styleArray:a6];
}

- (void)applyDashedLinesToPath:(id)a3
{
  v12[6] = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    [v4 setLineDash:v12 count:0.0 phase:?];
  }
}

- (void)applyLineJoinStyleToPath:(id)a3 in_path:(id)a4
{
  v12 = a3;
  v6 = a4;
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

  [v6 setLineJoinStyle:v9];
  if (v7 == 0x2000)
  {
    [v12 getMiterLimit];
    v11 = v10;
    if (v10 < 0.0)
    {
      [v6 setMiterLimit:10.0];
    }

    [v6 setMiterLimit:v11];
  }
}

- (void)applyLineCapStyleToPath:(id)a3
{
  v7 = a3;
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

  [v7 setLineCapStyle:v6];
}

- (void)strokePath:(id)a3 in_path:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [MFPhoneDeviceDriver getROP:v14];
  v8 = v7;
  if (self->super.m_penStyle != 5 && v7 != 3)
  {
    m_penWidth = self->super.m_penWidth;
    if (m_penWidth)
    {
      [v6 setLineWidth:m_penWidth];
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

      [(MFPhonePen *)self applyDashedLinesToPath:v6];
      m_penStyle = self->super.m_penStyle;
      if ((m_penStyle & 0xF0000) == 0x10000 || self->super.m_penWidth >= 2)
      {
        [(MFPhonePen *)self applyLineCapStyleToPath:v6];
        [(MFPhonePen *)self applyLineJoinStyleToPath:v14 in_path:v6];
        m_penStyle = self->super.m_penStyle;
      }

      if ((~m_penStyle & 0x12000) == 0)
      {
        [v14 getMiterLimit];
        if (v13 > 0.0 && v13 != 4.0)
        {
          [v6 setMiterLimit:?];
        }
      }

      [v6 stroke];
    }
  }
}

@end