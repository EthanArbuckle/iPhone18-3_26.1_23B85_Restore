@interface PSSpecifier(CNFRegSettings)
- (uint64_t)setCNFRegAccount:()CNFRegSettings;
@end

@implementation PSSpecifier(CNFRegSettings)

- (uint64_t)setCNFRegAccount:()CNFRegSettings
{
  if (a3)
  {
    return [a1 setProperty:a3 forKey:@"cnfreg-account"];
  }

  else
  {
    return [a1 removePropertyForKey:@"cnfreg-account"];
  }
}

@end