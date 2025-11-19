@interface NSData(FloatArrayInitializer)
+ (id)dataWithArray:()FloatArrayInitializer;
@end

@implementation NSData(FloatArrayInitializer)

+ (id)dataWithArray:()FloatArrayInitializer
{
  v3 = a3;
  v4 = [v3 count];
  if (v4 >> 62)
  {
    v11 = MEMORY[0x277CBEAD8];
    v12 = @"InputDataTooLong";
    goto LABEL_10;
  }

  v5 = v4;
  v6 = [MEMORY[0x277CBEB28] dataWithLength:4 * v4];
  if (v5)
  {
    v7 = 0;
    while (1)
    {
      v8 = [v3 objectAtIndex:v7];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      [v8 floatValue];
      *([v6 bytes] + 4 * v7) = v9;

      if (v5 == ++v7)
      {
        goto LABEL_6;
      }
    }

    v11 = MEMORY[0x277CBEAD8];
    v12 = @"ItemNotNSNumber";
LABEL_10:
    v13 = [v11 exceptionWithName:@"NSDataConstructorWithArray" reason:v12 userInfo:0];
    objc_exception_throw(v13);
  }

LABEL_6:

  return v6;
}

@end