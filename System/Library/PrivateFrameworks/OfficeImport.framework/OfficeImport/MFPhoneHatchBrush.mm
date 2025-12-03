@interface MFPhoneHatchBrush
+ (id)hatchBrushWithColour:(id)colour in_style:(int)in_style;
+ (id)patternNameForHatchStyle:(int)style;
- (MFPhoneHatchBrush)initWithColour:(id)colour in_style:(int)in_style;
- (void)fillPath:(id)path in_path:(id)in_path;
@end

@implementation MFPhoneHatchBrush

+ (id)hatchBrushWithColour:(id)colour in_style:(int)in_style
{
  v4 = *&in_style;
  colourCopy = colour;
  v7 = [[self alloc] initWithColour:colourCopy in_style:v4];

  return v7;
}

- (MFPhoneHatchBrush)initWithColour:(id)colour in_style:(int)in_style
{
  colourCopy = colour;
  v11.receiver = self;
  v11.super_class = MFPhoneHatchBrush;
  v7 = [(MFPhoneHatchBrush *)&v11 init];
  if (v7)
  {
    v8 = [colourCopy copy];
    m_colour = v7->m_colour;
    v7->m_colour = v8;

    v7->m_style = in_style;
  }

  return v7;
}

+ (id)patternNameForHatchStyle:(int)style
{
  if (style > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_2799CC990 + style);
  }
}

- (void)fillPath:(id)path in_path:(id)in_path
{
  pathCopy = path;
  in_pathCopy = in_path;
  [(MFPhoneBrush *)self setPolyFillMode:pathCopy in_path:in_pathCopy];
  if (![(MFPhoneBrush *)self fillWithROP:pathCopy in_path:in_pathCopy])
  {
    v7 = [MFPhoneHatchBrush patternNameForHatchStyle:self->m_style];
    if (v7)
    {
      v8 = [OCPattern blackAndWhiteImageDataWithPatternName:v7];
      m_colour = self->m_colour;
      getBkColour = [pathCopy getBkColour];
      v11 = [OCPattern colorizedImageDataWithBlackAndWhiteImageData:v8 foregroundColor:m_colour backgroundColor:getBkColour];

      v12 = [[OITSUImage alloc] initWithData:v11];
      v13 = [OITSUColor colorWithPatternImage:v12];
      [v13 set];
      [in_pathCopy fill];
    }
  }
}

@end