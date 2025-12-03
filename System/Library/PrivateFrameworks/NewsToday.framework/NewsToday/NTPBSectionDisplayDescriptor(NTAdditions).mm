@interface NTPBSectionDisplayDescriptor(NTAdditions)
- (id)actionURL;
- (id)nameActionURL;
- (void)setActionURL:()NTAdditions;
- (void)setNameActionURL:()NTAdditions;
@end

@implementation NTPBSectionDisplayDescriptor(NTAdditions)

- (id)actionURL
{
  actionURLString = [self actionURLString];
  if (actionURLString)
  {
    v2 = [MEMORY[0x277CBEBC0] URLWithString:actionURLString];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setActionURL:()NTAdditions
{
  absoluteString = [a3 absoluteString];
  [self setActionURLString:absoluteString];
}

- (id)nameActionURL
{
  nameActionURLString = [self nameActionURLString];
  if (nameActionURLString)
  {
    v2 = [MEMORY[0x277CBEBC0] URLWithString:nameActionURLString];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setNameActionURL:()NTAdditions
{
  absoluteString = [a3 absoluteString];
  [self setNameActionURLString:absoluteString];
}

@end