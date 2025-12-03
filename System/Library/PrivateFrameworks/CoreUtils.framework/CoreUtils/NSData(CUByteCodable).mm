@interface NSData(CUByteCodable)
+ (id)createWithBytesNoCopy:()CUByteCodable length:error:;
- (const)encodedBytesAndReturnLength:()CUByteCodable error:;
@end

@implementation NSData(CUByteCodable)

- (const)encodedBytesAndReturnLength:()CUByteCodable error:
{
  *a3 = [self length];
  result = [self bytes];
  if (!result)
  {
    return "";
  }

  return result;
}

+ (id)createWithBytesNoCopy:()CUByteCodable length:error:
{
  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:a3 length:a4 freeWhenDone:1];

  return v4;
}

@end