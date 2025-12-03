@interface ECIDNADecoder
+ (id)stringByDecodingDomainName:(id)name;
@end

@implementation ECIDNADecoder

+ (id)stringByDecodingDomainName:(id)name
{
  nameCopy = name;
  v4 = [nameCopy length];
  if (v4 && ([MEMORY[0x277CBEAF8] ef_posixLocale], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(nameCopy, "rangeOfString:options:range:locale:", @"xn--", 1, 0, v4, v5), v5, v6 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v7 = _stringByApplyingIDNATranslationWithRange(nameCopy, MEMORY[0x277D82998]);
  }

  else
  {
    v7 = [nameCopy copy];
  }

  v8 = v7;

  return v8;
}

@end