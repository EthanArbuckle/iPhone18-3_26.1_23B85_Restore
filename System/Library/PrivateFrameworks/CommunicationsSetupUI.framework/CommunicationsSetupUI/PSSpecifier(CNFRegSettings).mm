@interface PSSpecifier(CNFRegSettings)
- (uint64_t)setCNFRegAccount:()CNFRegSettings;
@end

@implementation PSSpecifier(CNFRegSettings)

- (uint64_t)setCNFRegAccount:()CNFRegSettings
{
  if (a3)
  {
    return [self setProperty:a3 forKey:@"cnfreg-account"];
  }

  else
  {
    return [self removePropertyForKey:@"cnfreg-account"];
  }
}

@end