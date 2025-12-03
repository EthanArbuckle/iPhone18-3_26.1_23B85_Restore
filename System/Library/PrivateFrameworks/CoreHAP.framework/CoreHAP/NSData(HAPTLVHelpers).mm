@interface NSData(HAPTLVHelpers)
+ (id)parsedFromData:()HAPTLVHelpers error:;
- (id)serializeWithError:()HAPTLVHelpers;
@end

@implementation NSData(HAPTLVHelpers)

- (id)serializeWithError:()HAPTLVHelpers
{
  v1 = [self copy];

  return v1;
}

+ (id)parsedFromData:()HAPTLVHelpers error:
{
  v3 = [a3 copy];

  return v3;
}

@end