@interface WBProfile(SafariSharedUIExtras)
- (id)symbolImage;
@end

@implementation WBProfile(SafariSharedUIExtras)

- (id)symbolImage
{
  symbolImageName = [self symbolImageName];
  if (![symbolImageName length] || (objc_msgSend(MEMORY[0x1E69DCAB8], "_systemImageNamed:", symbolImageName), (v2 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v2 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.fill"];
  }

  return v2;
}

@end