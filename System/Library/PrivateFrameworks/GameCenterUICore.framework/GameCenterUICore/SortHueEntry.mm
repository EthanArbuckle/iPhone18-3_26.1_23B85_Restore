@interface SortHueEntry
- (SortHueEntry)initWithHue:(unsigned int)hue count:(unsigned int)count;
@end

@implementation SortHueEntry

- (SortHueEntry)initWithHue:(unsigned int)hue count:(unsigned int)count
{
  v9.receiver = self;
  v9.super_class = SortHueEntry;
  v6 = [(SortHueEntry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(SortHueEntry *)v6 setHue:hue];
    [(SortHueEntry *)v7 setCount:count];
  }

  return v7;
}

@end