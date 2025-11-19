@interface DUDebugInfo
- (NSString)debugString;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setDebugString:(id)a3;
@end

@implementation DUDebugInfo

- (NSString)debugString
{
  sub_232B5588C();
  v2 = sub_232CE9D20();

  return v2;
}

- (void)setDebugString:(id)a3
{
  v4 = sub_232CE9D50();
  v6 = v5;
  v7 = self;
  sub_232B55940(v4, v6);
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_232B55AA0(v6);

  sub_232B203C8(v6, v6[3]);
  v4 = sub_232CEA740();
  sub_232B2040C(v6);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232B55BA0(v4);
}

@end