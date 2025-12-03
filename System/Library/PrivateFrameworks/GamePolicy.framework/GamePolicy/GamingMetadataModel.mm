@interface GamingMetadataModel
- (GamingMetadataModel)init;
- (GamingMetadataModel)initWithCoder:(id)coder;
- (NSString)debugDescription;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GamingMetadataModel

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_24E5C57C0(coderCopy);
}

- (GamingMetadataModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_24E5C638C(coderCopy);

  return v4;
}

- (NSString)description
{
  v2 = sub_24E5D2CB0();

  return v2;
}

- (NSString)debugDescription
{
  selfCopy = self;
  sub_24E5C5E5C();

  v3 = sub_24E5D2CB0();

  return v3;
}

- (GamingMetadataModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end