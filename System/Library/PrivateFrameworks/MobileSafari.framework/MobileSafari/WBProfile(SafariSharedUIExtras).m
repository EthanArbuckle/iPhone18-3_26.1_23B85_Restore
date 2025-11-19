@interface WBProfile(SafariSharedUIExtras)
- (id)symbolImage;
@end

@implementation WBProfile(SafariSharedUIExtras)

- (id)symbolImage
{
  v1 = [a1 symbolImageName];
  if (![v1 length] || (objc_msgSend(MEMORY[0x1E69DCAB8], "_systemImageNamed:", v1), (v2 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v2 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.fill"];
  }

  return v2;
}

@end