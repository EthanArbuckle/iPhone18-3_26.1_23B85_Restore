@interface MFPalette
+ (MFPalette)paletteWithColours:(id)colours;
- (BOOL)resize:(int)resize;
- (BOOL)setEntries:(int)entries in_colours:(id)in_colours;
- (MFPalette)init;
- (MFPalette)initWithColours:(id)colours;
- (id)getColour:(int)colour;
@end

@implementation MFPalette

- (MFPalette)init
{
  v10.receiver = self;
  v10.super_class = MFPalette;
  v2 = [(MFPalette *)&v10 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:256];
    m_colours = v2->m_colours;
    v2->m_colours = v3;

    v5 = &byte_25D6FD762;
    v6 = 256;
    do
    {
      v7 = v2->m_colours;
      v8 = [OITSUColor colorWithRGBBytes:*(v5 - 2) green:*(v5 - 1) blue:*v5];
      [(NSMutableArray *)v7 addObject:v8];
      v5 += 3;

      --v6;
    }

    while (v6);
  }

  return v2;
}

+ (MFPalette)paletteWithColours:(id)colours
{
  coloursCopy = colours;
  v5 = [[self alloc] initWithColours:coloursCopy];

  return v5;
}

- (MFPalette)initWithColours:(id)colours
{
  coloursCopy = colours;
  v9.receiver = self;
  v9.super_class = MFPalette;
  v5 = [(MFPalette *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(coloursCopy, "count")}];
    m_colours = v5->m_colours;
    v5->m_colours = v6;

    [(NSMutableArray *)v5->m_colours setArray:coloursCopy];
  }

  return v5;
}

- (BOOL)setEntries:(int)entries in_colours:(id)in_colours
{
  in_coloursCopy = in_colours;
  if (entries < 0 || [(NSMutableArray *)self->m_colours count]< entries)
  {
    v7 = 0;
  }

  else
  {
    -[NSMutableArray replaceObjectsInRange:withObjectsFromArray:](self->m_colours, "replaceObjectsInRange:withObjectsFromArray:", entries, [in_coloursCopy count], in_coloursCopy);
    v7 = 1;
  }

  return v7;
}

- (BOOL)resize:(int)resize
{
  v5 = [(NSMutableArray *)self->m_colours count];
  v6 = [(NSMutableArray *)self->m_colours count];
  if (v5 >= resize)
  {
    if (resize < v6)
    {
      [(NSMutableArray *)self->m_colours removeObjectsInRange:resize, [(NSMutableArray *)self->m_colours count]- resize];
    }
  }

  else
  {
    v7 = resize - v6;
    if (resize > v6)
    {
      do
      {
        m_colours = self->m_colours;
        v9 = [OITSUColor colorWithRGBBytes:0 green:0 blue:0];
        [(NSMutableArray *)m_colours addObject:v9];

        --v7;
      }

      while (v7);
    }
  }

  return 1;
}

- (id)getColour:(int)colour
{
  if (colour < 0 || [(NSMutableArray *)self->m_colours count]<= colour)
  {
    v5 = [OITSUColor colorWithRGBBytes:0 green:0 blue:0];
  }

  else
  {
    v5 = [(NSMutableArray *)self->m_colours objectAtIndex:colour];
  }

  return v5;
}

@end