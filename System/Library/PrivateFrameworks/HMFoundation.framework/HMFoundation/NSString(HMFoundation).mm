@interface NSString(HMFoundation)
- (BOOL)hmf_isInteger;
- (id)hmf_stringWithSmallestEncoding;
@end

@implementation NSString(HMFoundation)

- (id)hmf_stringWithSmallestEncoding
{
  v2 = [self cStringUsingEncoding:1];
  if (v2)
  {
    v3 = v2;
    v4 = MEMORY[0x277CCACA8];
    v5 = 1;
LABEL_5:
    selfCopy = [v4 stringWithCString:v3 encoding:v5];
    goto LABEL_6;
  }

  smallestEncoding = [self smallestEncoding];
  v7 = [self cStringUsingEncoding:smallestEncoding];
  if (v7)
  {
    v3 = v7;
    v4 = MEMORY[0x277CCACA8];
    v5 = smallestEncoding;
    goto LABEL_5;
  }

  selfCopy = self;
LABEL_6:

  return selfCopy;
}

- (BOOL)hmf_isInteger
{
  v1 = MEMORY[0x277CCA900];
  selfCopy = self;
  whitespaceCharacterSet = [v1 whitespaceCharacterSet];
  v4 = [selfCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  v5 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"+-"];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  whitespaceCharacterSet2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:whitespaceCharacterSet2];

  decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  invertedSet = [decimalDigitCharacterSet invertedSet];

  v11 = [v8 rangeOfCharacterFromSet:invertedSet] == 0x7FFFFFFFFFFFFFFFLL;
  return v11;
}

@end