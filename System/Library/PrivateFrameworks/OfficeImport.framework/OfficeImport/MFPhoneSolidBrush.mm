@interface MFPhoneSolidBrush
+ (id)solidBrushWithColour:(id)colour;
- (MFPhoneSolidBrush)initWithColour:(id)colour;
- (void)fillPath:(id)path in_path:(id)in_path;
@end

@implementation MFPhoneSolidBrush

+ (id)solidBrushWithColour:(id)colour
{
  colourCopy = colour;
  v5 = [[self alloc] initWithColour:colourCopy];

  return v5;
}

- (MFPhoneSolidBrush)initWithColour:(id)colour
{
  colourCopy = colour;
  v9.receiver = self;
  v9.super_class = MFPhoneSolidBrush;
  v5 = [(MFPhoneSolidBrush *)&v9 init];
  if (v5)
  {
    v6 = [colourCopy copy];
    m_colour = v5->m_colour;
    v5->m_colour = v6;
  }

  return v5;
}

- (void)fillPath:(id)path in_path:(id)in_path
{
  pathCopy = path;
  in_pathCopy = in_path;
  [(MFPhoneBrush *)self setPolyFillMode:pathCopy in_path:in_pathCopy];
  if (![(MFPhoneBrush *)self fillWithROP:pathCopy in_path:in_pathCopy])
  {
    [(OITSUColor *)self->m_colour set];
    [in_pathCopy fill];
  }
}

@end