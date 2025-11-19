@interface MFPhoneHatchBrush
+ (id)hatchBrushWithColour:(id)a3 in_style:(int)a4;
+ (id)patternNameForHatchStyle:(int)a3;
- (MFPhoneHatchBrush)initWithColour:(id)a3 in_style:(int)a4;
- (void)fillPath:(id)a3 in_path:(id)a4;
@end

@implementation MFPhoneHatchBrush

+ (id)hatchBrushWithColour:(id)a3 in_style:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [[a1 alloc] initWithColour:v6 in_style:v4];

  return v7;
}

- (MFPhoneHatchBrush)initWithColour:(id)a3 in_style:(int)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = MFPhoneHatchBrush;
  v7 = [(MFPhoneHatchBrush *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    m_colour = v7->m_colour;
    v7->m_colour = v8;

    v7->m_style = a4;
  }

  return v7;
}

+ (id)patternNameForHatchStyle:(int)a3
{
  if (a3 > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_2799CC990 + a3);
  }
}

- (void)fillPath:(id)a3 in_path:(id)a4
{
  v14 = a3;
  v6 = a4;
  [(MFPhoneBrush *)self setPolyFillMode:v14 in_path:v6];
  if (![(MFPhoneBrush *)self fillWithROP:v14 in_path:v6])
  {
    v7 = [MFPhoneHatchBrush patternNameForHatchStyle:self->m_style];
    if (v7)
    {
      v8 = [OCPattern blackAndWhiteImageDataWithPatternName:v7];
      m_colour = self->m_colour;
      v10 = [v14 getBkColour];
      v11 = [OCPattern colorizedImageDataWithBlackAndWhiteImageData:v8 foregroundColor:m_colour backgroundColor:v10];

      v12 = [[OITSUImage alloc] initWithData:v11];
      v13 = [OITSUColor colorWithPatternImage:v12];
      [v13 set];
      [v6 fill];
    }
  }
}

@end