@interface ECIDNADecoder
+ (id)stringByDecodingDomainName:(id)a3;
@end

@implementation ECIDNADecoder

+ (id)stringByDecodingDomainName:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  if (v4 && ([MEMORY[0x277CBEAF8] ef_posixLocale], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v3, "rangeOfString:options:range:locale:", @"xn--", 1, 0, v4, v5), v5, v6 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v7 = _stringByApplyingIDNATranslationWithRange(v3, MEMORY[0x277D82998]);
  }

  else
  {
    v7 = [v3 copy];
  }

  v8 = v7;

  return v8;
}

@end