@interface GamingMetadataBlob
- (_TtC10GamePolicy18GamingMetadataBlob)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GamingMetadataBlob

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E5C7218(v4);
}

- (_TtC10GamePolicy18GamingMetadataBlob)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_24E5C7AB0(v3);

  return v4;
}

@end