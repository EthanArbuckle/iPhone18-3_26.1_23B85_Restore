@interface NSString(HAPTLVHelpers)
+ (id)parsedFromData:()HAPTLVHelpers error:;
- (id)serializeWithError:()HAPTLVHelpers;
@end

@implementation NSString(HAPTLVHelpers)

- (id)serializeWithError:()HAPTLVHelpers
{
  v4 = [self dataUsingEncoding:4 allowLossyConversion:0];
  v5 = v4;
  if (a3 && !v4)
  {
    *a3 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:3 reason:@"TLV data cannot be UTF8 encoded" underlyingError:0];
  }

  return v5;
}

+ (id)parsedFromData:()HAPTLVHelpers error:
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = [v5 alloc];
  bytes = [v6 bytes];
  v9 = [v6 length];

  v10 = [v7 initWithBytes:bytes length:v9 encoding:4];
  v11 = v10;
  if (a4 && !v10)
  {
    *a4 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:3 reason:@"TLV data is not UTF8 encoded" underlyingError:0];
  }

  return v11;
}

@end