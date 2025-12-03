@interface ECIDNAEncoder
+ (BOOL)encodingRequiredForDomainName:(id)name;
+ (id)stringByEncodingDomainName:(id)name;
@end

@implementation ECIDNAEncoder

+ (BOOL)encodingRequiredForDomainName:(id)name
{
  nameCopy = name;
  ef_unsafeDomainNameCharacterSet = [MEMORY[0x277CCA900] ef_unsafeDomainNameCharacterSet];
  v5 = [nameCopy rangeOfCharacterFromSet:ef_unsafeDomainNameCharacterSet options:0 range:{0, objc_msgSend(nameCopy, "length")}] != 0x7FFFFFFFFFFFFFFFLL;

  return v5;
}

+ (id)stringByEncodingDomainName:(id)name
{
  nameCopy = name;
  if ([nameCopy length] && (objc_msgSend(self, "encodingRequiredForDomainName:", nameCopy) & 1) != 0)
  {
    v5 = _stringByApplyingIDNATranslationWithRange(nameCopy, MEMORY[0x277D82990]);
  }

  else
  {
    v5 = [nameCopy copy];
  }

  v6 = v5;

  return v6;
}

@end