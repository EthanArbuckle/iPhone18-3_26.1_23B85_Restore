@interface NSValue(JUDirectionalRangeExtensions)
+ (id)valueWithJUDirectionalRange:()JUDirectionalRangeExtensions;
+ (id)valueWithRange:()JUDirectionalRangeExtensions direction:hasMixedDirectionality:;
- (uint64_t)juDirectionalRangeValue;
@end

@implementation NSValue(JUDirectionalRangeExtensions)

+ (id)valueWithJUDirectionalRange:()JUDirectionalRangeExtensions
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  v3 = *(a3 + 24);
  v7 = *(a3 + 2);
  v8 = v3;
  v4 = [self value:&v6 withObjCType:"[4q]"];

  return v4;
}

+ (id)valueWithRange:()JUDirectionalRangeExtensions direction:hasMixedDirectionality:
{
  v8[4] = *MEMORY[0x1E69E9840];
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  v6 = [self value:v8 withObjCType:"[4q]"];

  return v6;
}

- (uint64_t)juDirectionalRangeValue
{
  v8 = *MEMORY[0x1E69E9840];
  *(a2 + 24) = 0;
  result = [self getValue:&v5 size:32];
  *a2 = v5;
  v4 = v7;
  *(a2 + 16) = v6;
  *(a2 + 24) = v4 != 0;
  return result;
}

@end