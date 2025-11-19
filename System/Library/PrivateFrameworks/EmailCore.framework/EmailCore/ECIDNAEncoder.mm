@interface ECIDNAEncoder
+ (BOOL)encodingRequiredForDomainName:(id)a3;
+ (id)stringByEncodingDomainName:(id)a3;
@end

@implementation ECIDNAEncoder

+ (BOOL)encodingRequiredForDomainName:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCA900] ef_unsafeDomainNameCharacterSet];
  v5 = [v3 rangeOfCharacterFromSet:v4 options:0 range:{0, objc_msgSend(v3, "length")}] != 0x7FFFFFFFFFFFFFFFLL;

  return v5;
}

+ (id)stringByEncodingDomainName:(id)a3
{
  v4 = a3;
  if ([v4 length] && (objc_msgSend(a1, "encodingRequiredForDomainName:", v4) & 1) != 0)
  {
    v5 = _stringByApplyingIDNATranslationWithRange(v4, MEMORY[0x277D82990]);
  }

  else
  {
    v5 = [v4 copy];
  }

  v6 = v5;

  return v6;
}

@end