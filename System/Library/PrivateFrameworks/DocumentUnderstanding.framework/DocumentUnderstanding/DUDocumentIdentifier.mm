@interface DUDocumentIdentifier
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DUDocumentIdentifier

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_232B3C0D8(v6);

  sub_232B203C8(v6, v6[3]);
  v4 = sub_232CEA740();
  sub_232B2040C(v6);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_232B3C1D0(coderCopy);
}

@end