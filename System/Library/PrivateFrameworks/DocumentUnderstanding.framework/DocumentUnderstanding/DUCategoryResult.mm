@interface DUCategoryResult
- (NSString)categoryIdentifier;
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setCategoryIdentifier:(id)identifier;
@end

@implementation DUCategoryResult

- (NSString)categoryIdentifier
{
  sub_232B51734();
  v2 = sub_232CE9D20();

  return v2;
}

- (void)setCategoryIdentifier:(id)identifier
{
  v4 = sub_232CE9D50();
  v6 = v5;
  selfCopy = self;
  sub_232B517F4(v4, v6);
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_232B51A9C(v6);

  sub_232B203C8(v6, v6[3]);
  v4 = sub_232CEA740();
  sub_232B2040C(v6);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_232B51B8C(coderCopy);
}

@end