@interface NUSquareExtentPolicy
- ($41299696D20B6C925B74A5D5E4D5CC87)extentForImageExtent:(SEL)a3;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation NUSquareExtentPolicy

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- ($41299696D20B6C925B74A5D5E4D5CC87)extentForImageExtent:(SEL)a3
{
  var0 = a4->var1.var0;
  var1 = a4->var1.var1;
  if (var0 >= var1)
  {
    v6 = a4->var1.var1;
  }

  else
  {
    v6 = a4->var1.var0;
  }

  v7 = a4->var0.var1 + (var1 - v6) / 2;
  retstr->var0.var0 = a4->var0.var0 + (var0 - v6) / 2;
  retstr->var0.var1 = v7;
  retstr->var1.var0 = v6;
  retstr->var1.var1 = v6;
  return self;
}

@end