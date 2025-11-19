@interface MessageUpdate
- (NSString)description;
- (_TtC20FaceTimeMessageStore13MessageUpdate)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MessageUpdate

- (_TtC20FaceTimeMessageStore13MessageUpdate)initWithCoder:(id)a3
{
  v3 = a3;
  MessageUpdate.init(coder:)();
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  MessageUpdate.encode(with:)(v4);
}

- (NSString)description
{
  v2 = self;
  MessageUpdate.description.getter();

  v3 = sub_1BC8F7BE4();

  return v3;
}

@end