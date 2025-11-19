@interface GamingMetadataModel
- (GamingMetadataModel)init;
- (GamingMetadataModel)initWithCoder:(id)a3;
- (NSString)debugDescription;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GamingMetadataModel

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E5C57C0(v4);
}

- (GamingMetadataModel)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_24E5C638C(v3);

  return v4;
}

- (NSString)description
{
  v2 = sub_24E5D2CB0();

  return v2;
}

- (NSString)debugDescription
{
  v2 = self;
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