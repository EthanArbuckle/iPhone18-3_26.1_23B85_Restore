@interface NADescriptionBuilder(NAUIAdditions)
- (void)appendCGPoint:()NAUIAdditions withName:;
- (void)appendCGRect:()NAUIAdditions withName:;
- (void)appendCGSize:()NAUIAdditions withName:;
@end

@implementation NADescriptionBuilder(NAUIAdditions)

- (void)appendCGPoint:()NAUIAdditions withName:
{
  v8 = a5;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%.*g, %.*g}", 17, *&a2, 17, *&a3];
  v10 = [a1 appendObject:v9 withName:v8];

  return a1;
}

- (void)appendCGSize:()NAUIAdditions withName:
{
  v8 = a5;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%.*g, %.*g}", 17, *&a2, 17, *&a3];
  v10 = [a1 appendObject:v9 withName:v8];

  return a1;
}

- (void)appendCGRect:()NAUIAdditions withName:
{
  v12 = a7;
  v13 = NAStringFromCGRect(a2, a3, a4, a5);
  v14 = [a1 appendObject:v13 withName:v12];

  return a1;
}

@end