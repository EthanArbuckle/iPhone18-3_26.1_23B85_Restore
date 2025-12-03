@interface DURequestStrategy
- (_TtC21DocumentUnderstanding20DURequestContentType)contentType;
- (void)setContentType:(id)type;
- (void)setModelIdentifier:(id)identifier;
@end

@implementation DURequestStrategy

- (_TtC21DocumentUnderstanding20DURequestContentType)contentType
{
  v2 = sub_232B24488();

  return v2;
}

- (void)setContentType:(id)type
{
  typeCopy = type;
  selfCopy = self;
  sub_232B24528(typeCopy);
}

- (void)setModelIdentifier:(id)identifier
{
  v4 = sub_232CE9D50();
  v6 = v5;
  selfCopy = self;
  sub_232B2470C(v4, v6);
}

@end