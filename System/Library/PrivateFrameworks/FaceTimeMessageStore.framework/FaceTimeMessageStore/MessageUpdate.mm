@interface MessageUpdate
- (NSString)description;
- (_TtC20FaceTimeMessageStore13MessageUpdate)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MessageUpdate

- (_TtC20FaceTimeMessageStore13MessageUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  MessageUpdate.init(coder:)();
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  MessageUpdate.encode(with:)(coderCopy);
}

- (NSString)description
{
  selfCopy = self;
  MessageUpdate.description.getter();

  v3 = sub_1BC8F7BE4();

  return v3;
}

@end