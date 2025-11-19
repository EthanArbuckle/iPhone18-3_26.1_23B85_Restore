@interface PDOfficeArtClient
- (CGRect)bounds;
- (NSString)description;
- (PDOfficeArtClient)init;
@end

@implementation PDOfficeArtClient

- (PDOfficeArtClient)init
{
  v3.receiver = self;
  v3.super_class = PDOfficeArtClient;
  result = [(PDOfficeArtClient *)&v3 init];
  if (result)
  {
    result->mInheritedTextStylePlaceholderType = -1;
  }

  return result;
}

- (CGRect)bounds
{
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v5 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = PDOfficeArtClient;
  v2 = [(PDOfficeArtClient *)&v4 description];

  return v2;
}

@end