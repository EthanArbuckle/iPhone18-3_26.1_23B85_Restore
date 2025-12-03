@interface NSValue(NFAdditions)
+ (id)nf_valueWithCGPoint:()NFAdditions;
+ (id)nf_valueWithCGRect:()NFAdditions;
- (double)nf_CGPointValue;
- (double)nf_CGRectValue;
@end

@implementation NSValue(NFAdditions)

+ (id)nf_valueWithCGRect:()NFAdditions
{
  *v6 = self;
  *&v6[1] = a2;
  *&v6[2] = a3;
  *&v6[3] = a4;
  v4 = [MEMORY[0x277CCAE60] valueWithBytes:v6 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];

  return v4;
}

- (double)nf_CGRectValue
{
  memset(v2, 0, sizeof(v2));
  _getNSValueBytes(self, v2, 0x20uLL);
  return *v2;
}

+ (id)nf_valueWithCGPoint:()NFAdditions
{
  *v4 = self;
  *&v4[1] = a2;
  v2 = [MEMORY[0x277CCAE60] valueWithBytes:v4 objCType:"{CGPoint=dd}"];

  return v2;
}

- (double)nf_CGPointValue
{
  v2[0] = 0;
  v2[1] = 0;
  _getNSValueBytes(self, v2, 0x10uLL);
  return *v2;
}

@end