@interface DOCTag(Color)
- (id)_tagColorWithFallback:()Color;
- (uint64_t)tagBackgroundColor;
@end

@implementation DOCTag(Color)

- (id)_tagColorWithFallback:()Color
{
  v4 = a3;
  labelIndex = [self labelIndex];
  if (labelIndex)
  {
    [MEMORY[0x277D75348] doc_colorForTagColor:labelIndex];
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
  labelIndex = [self labelIndex];

  return [v1 doc_secondaryColorForTagColor:labelIndex];
}

@end