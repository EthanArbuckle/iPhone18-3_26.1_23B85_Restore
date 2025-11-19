@interface DOCTag(Color)
- (id)_tagColorWithFallback:()Color;
- (uint64_t)tagBackgroundColor;
@end

@implementation DOCTag(Color)

- (id)_tagColorWithFallback:()Color
{
  v4 = a3;
  v5 = [a1 labelIndex];
  if (v5)
  {
    [MEMORY[0x277D75348] doc_colorForTagColor:v5];
  }

  else
  {
    v4[2](v4);
  }
  v6 = ;

  return v6;
}

- (uint64_t)tagBackgroundColor
{
  v1 = MEMORY[0x277D75348];
  v2 = [a1 labelIndex];

  return [v1 doc_secondaryColorForTagColor:v2];
}

@end