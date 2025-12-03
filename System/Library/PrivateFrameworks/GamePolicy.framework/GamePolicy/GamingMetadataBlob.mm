@interface GamingMetadataBlob
- (_TtC10GamePolicy18GamingMetadataBlob)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GamingMetadataBlob

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_24E5C7218(coderCopy);
}

- (_TtC10GamePolicy18GamingMetadataBlob)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_24E5C7AB0(coderCopy);

  return v4;
}

@end