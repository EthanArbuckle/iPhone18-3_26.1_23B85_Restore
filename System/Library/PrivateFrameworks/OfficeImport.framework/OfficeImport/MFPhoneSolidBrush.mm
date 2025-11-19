@interface MFPhoneSolidBrush
+ (id)solidBrushWithColour:(id)a3;
- (MFPhoneSolidBrush)initWithColour:(id)a3;
- (void)fillPath:(id)a3 in_path:(id)a4;
@end

@implementation MFPhoneSolidBrush

+ (id)solidBrushWithColour:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithColour:v4];

  return v5;
}

- (MFPhoneSolidBrush)initWithColour:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MFPhoneSolidBrush;
  v5 = [(MFPhoneSolidBrush *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    m_colour = v5->m_colour;
    v5->m_colour = v6;
  }

  return v5;
}

- (void)fillPath:(id)a3 in_path:(id)a4
{
  v7 = a3;
  v6 = a4;
  [(MFPhoneBrush *)self setPolyFillMode:v7 in_path:v6];
  if (![(MFPhoneBrush *)self fillWithROP:v7 in_path:v6])
  {
    [(OITSUColor *)self->m_colour set];
    [v6 fill];
  }
}

@end