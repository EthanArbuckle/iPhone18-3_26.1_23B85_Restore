@interface NSArray(PrimitiveArrayConstructible)
+ (void)newArrayFromDoubles:()PrimitiveArrayConstructible size:;
+ (void)newArrayFromFloats:()PrimitiveArrayConstructible size:;
+ (void)newArrayFromIntegers:()PrimitiveArrayConstructible size:;
@end

@implementation NSArray(PrimitiveArrayConstructible)

+ (void)newArrayFromDoubles:()PrimitiveArrayConstructible size:
{
  v7 = 0;
  if (a3 && a4)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a4];
    for (i = 0; i < a4; ++i)
    {
      v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:*(a3 + 8 * i)];
      [v7 addObject:v5];
      MEMORY[0x1E69E5920](v5);
    }
  }

  return v7;
}

+ (void)newArrayFromIntegers:()PrimitiveArrayConstructible size:
{
  v7 = 0;
  if (a3 && a4)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a4];
    for (i = 0; i < a4; ++i)
    {
      v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:*(a3 + 4 * i)];
      [v7 addObject:v5];
      MEMORY[0x1E69E5920](v5);
    }
  }

  return v7;
}

+ (void)newArrayFromFloats:()PrimitiveArrayConstructible size:
{
  v10 = 0;
  if (a3 && a4)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a4];
    for (i = 0; i < a4; ++i)
    {
      v8 = *(a3 + 4 * i);
      v4 = objc_alloc(MEMORY[0x1E696AD98]);
      LODWORD(v5) = v8;
      v7 = [v4 initWithFloat:v5];
      [v10 addObject:v7];
      MEMORY[0x1E69E5920](v7);
    }
  }

  return v10;
}

@end