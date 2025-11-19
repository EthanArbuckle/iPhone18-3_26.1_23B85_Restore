@interface MFPalette
+ (MFPalette)paletteWithColours:(id)a3;
- (BOOL)resize:(int)a3;
- (BOOL)setEntries:(int)a3 in_colours:(id)a4;
- (MFPalette)init;
- (MFPalette)initWithColours:(id)a3;
- (id)getColour:(int)a3;
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

+ (MFPalette)paletteWithColours:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithColours:v4];

  return v5;
}

- (MFPalette)initWithColours:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MFPalette;
  v5 = [(MFPalette *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
    m_colours = v5->m_colours;
    v5->m_colours = v6;

    [(NSMutableArray *)v5->m_colours setArray:v4];
  }

  return v5;
}

- (BOOL)setEntries:(int)a3 in_colours:(id)a4
{
  v6 = a4;
  if (a3 < 0 || [(NSMutableArray *)self->m_colours count]< a3)
  {
    v7 = 0;
  }

  else
  {
    -[NSMutableArray replaceObjectsInRange:withObjectsFromArray:](self->m_colours, "replaceObjectsInRange:withObjectsFromArray:", a3, [v6 count], v6);
    v7 = 1;
  }

  return v7;
}

- (BOOL)resize:(int)a3
{
  v5 = [(NSMutableArray *)self->m_colours count];
  v6 = [(NSMutableArray *)self->m_colours count];
  if (v5 >= a3)
  {
    if (a3 < v6)
    {
      [(NSMutableArray *)self->m_colours removeObjectsInRange:a3, [(NSMutableArray *)self->m_colours count]- a3];
    }
  }

  else
  {
    v7 = a3 - v6;
    if (a3 > v6)
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

- (id)getColour:(int)a3
{
  if (a3 < 0 || [(NSMutableArray *)self->m_colours count]<= a3)
  {
    v5 = [OITSUColor colorWithRGBBytes:0 green:0 blue:0];
  }

  else
  {
    v5 = [(NSMutableArray *)self->m_colours objectAtIndex:a3];
  }

  return v5;
}

@end