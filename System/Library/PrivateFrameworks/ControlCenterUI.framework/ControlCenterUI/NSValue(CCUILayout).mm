@interface NSValue(CCUILayout)
+ (id)ccui_valueWithLayoutPoint:()CCUILayout;
+ (id)ccui_valueWithLayoutSize:()CCUILayout;
- (const)ccui_rectValue;
- (uint64_t)ccui_pointValue;
- (uint64_t)ccui_sizeValue;
@end

@implementation NSValue(CCUILayout)

+ (id)ccui_valueWithLayoutPoint:()CCUILayout
{
  v6[0] = a3;
  v6[1] = a4;
  v4 = [MEMORY[0x277CCAE60] value:v6 withObjCType:kCCUILayoutPointObjCType];

  return v4;
}

+ (id)ccui_valueWithLayoutSize:()CCUILayout
{
  v6[0] = a3;
  v6[1] = a4;
  v4 = [MEMORY[0x277CCAE60] value:v6 withObjCType:kCCUILayoutSizeObjCType];

  return v4;
}

- (uint64_t)ccui_pointValue
{
  v5[0] = 0;
  v5[1] = 0;
  objCType = [self objCType];
  v3 = kCCUILayoutPointObjCType;
  v6 = 0;
  sizep = 0;
  NSGetSizeAndAlignment(objCType, &sizep, 0);
  NSGetSizeAndAlignment(v3, &v6, 0);
  if (sizep != v6 || strncmp(objCType, v3, sizep))
  {
    return 0;
  }

  [self getValue:v5];
  return v5[0];
}

- (uint64_t)ccui_sizeValue
{
  v5[0] = 0;
  v5[1] = 0;
  objCType = [self objCType];
  v3 = kCCUILayoutSizeObjCType;
  v6 = 0;
  sizep = 0;
  NSGetSizeAndAlignment(objCType, &sizep, 0);
  NSGetSizeAndAlignment(v3, &v6, 0);
  if (sizep != v6 || strncmp(objCType, v3, sizep))
  {
    return 0;
  }

  [self getValue:v5];
  return v5[0];
}

- (const)ccui_rectValue
{
  *a2 = 0u;
  a2[1] = 0u;
  objCType = [self objCType];
  v5 = kCCUILayoutRectObjCType;
  v7 = 0;
  sizep = 0;
  NSGetSizeAndAlignment(objCType, &sizep, 0);
  result = NSGetSizeAndAlignment(v5, &v7, 0);
  if (sizep == v7)
  {
    result = strncmp(objCType, v5, sizep);
    if (!result)
    {
      return [self getValue:a2];
    }
  }

  return result;
}

@end