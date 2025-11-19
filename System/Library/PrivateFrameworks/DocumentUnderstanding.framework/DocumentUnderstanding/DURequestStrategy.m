@interface DURequestStrategy
- (_TtC21DocumentUnderstanding20DURequestContentType)contentType;
- (void)setContentType:(id)a3;
- (void)setModelIdentifier:(id)a3;
@end

@implementation DURequestStrategy

- (_TtC21DocumentUnderstanding20DURequestContentType)contentType
{
  v2 = sub_232B24488();

  return v2;
}

- (void)setContentType:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232B24528(v4);
}

- (void)setModelIdentifier:(id)a3
{
  v4 = sub_232CE9D50();
  v6 = v5;
  v7 = self;
  sub_232B2470C(v4, v6);
}

@end