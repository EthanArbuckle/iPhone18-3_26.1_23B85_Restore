@interface DUDocumentIdentifier
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DUDocumentIdentifier

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_232B3C0D8(v6);

  sub_232B203C8(v6, v6[3]);
  v4 = sub_232CEA740();
  sub_232B2040C(v6);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232B3C1D0(v4);
}

@end