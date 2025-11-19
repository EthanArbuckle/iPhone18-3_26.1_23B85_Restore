@interface SortHueEntry
- (SortHueEntry)initWithHue:(unsigned int)a3 count:(unsigned int)a4;
@end

@implementation SortHueEntry

- (SortHueEntry)initWithHue:(unsigned int)a3 count:(unsigned int)a4
{
  v9.receiver = self;
  v9.super_class = SortHueEntry;
  v6 = [(SortHueEntry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(SortHueEntry *)v6 setHue:a3];
    [(SortHueEntry *)v7 setCount:a4];
  }

  return v7;
}

@end