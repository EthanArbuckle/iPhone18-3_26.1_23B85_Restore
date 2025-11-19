@interface NSString(HMFoundation)
- (BOOL)hmf_isInteger;
- (id)hmf_stringWithSmallestEncoding;
@end

@implementation NSString(HMFoundation)

- (id)hmf_stringWithSmallestEncoding
{
  v2 = [a1 cStringUsingEncoding:1];
  if (v2)
  {
    v3 = v2;
    v4 = MEMORY[0x277CCACA8];
    v5 = 1;
LABEL_5:
    v8 = [v4 stringWithCString:v3 encoding:v5];
    goto LABEL_6;
  }

  v6 = [a1 smallestEncoding];
  v7 = [a1 cStringUsingEncoding:v6];
  if (v7)
  {
    v3 = v7;
    v4 = MEMORY[0x277CCACA8];
    v5 = v6;
    goto LABEL_5;
  }

  v8 = a1;
LABEL_6:

  return v8;
}

- (BOOL)hmf_isInteger
{
  v1 = MEMORY[0x277CCA900];
  v2 = a1;
  v3 = [v1 whitespaceCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];

  v5 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"+-"];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  v7 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];

  v9 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v10 = [v9 invertedSet];

  v11 = [v8 rangeOfCharacterFromSet:v10] == 0x7FFFFFFFFFFFFFFFLL;
  return v11;
}

@end