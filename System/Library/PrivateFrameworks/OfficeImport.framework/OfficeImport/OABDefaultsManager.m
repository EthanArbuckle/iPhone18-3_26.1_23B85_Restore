@interface OABDefaultsManager
- (id)fillBlipName;
- (id)strokeFillBlipName;
- (id)textPathFontFamily;
- (id)textPathUnicodeString;
@end

@implementation OABDefaultsManager

- (id)fillBlipName
{
  DefaultBlipName = EshFill::getDefaultBlipName(self);
  if (DefaultBlipName)
  {
    DefaultBlipName = [objc_alloc(MEMORY[0x277CCACA8]) initWithCsString:DefaultBlipName];
  }

  return DefaultBlipName;
}

- (id)strokeFillBlipName
{
  DefaultBlipName = EshFill::getDefaultBlipName(self);
  if (DefaultBlipName)
  {
    DefaultBlipName = [objc_alloc(MEMORY[0x277CCACA8]) initWithCsString:DefaultBlipName];
  }

  return DefaultBlipName;
}

- (id)textPathUnicodeString
{
  DefaultBlipName = EshFill::getDefaultBlipName(self);
  if (DefaultBlipName)
  {
    DefaultBlipName = [objc_alloc(MEMORY[0x277CCACA8]) initWithCsString:DefaultBlipName];
  }

  return DefaultBlipName;
}

- (id)textPathFontFamily
{
  DefaultBlipName = EshFill::getDefaultBlipName(self);
  if (DefaultBlipName)
  {
    DefaultBlipName = [objc_alloc(MEMORY[0x277CCACA8]) initWithCsString:DefaultBlipName];
  }

  return DefaultBlipName;
}

@end