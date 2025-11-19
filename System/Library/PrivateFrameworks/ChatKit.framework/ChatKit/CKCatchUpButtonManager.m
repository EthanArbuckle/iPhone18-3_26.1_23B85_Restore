@interface CKCatchUpButtonManager
- (_TtC7ChatKit22CKCatchUpButtonManager)init;
- (_TtC7ChatKit22CKCatchUpButtonManager)initWithDidTapButton:(id)a3;
- (void)animateInResumingFromBackground:(BOOL)a3;
- (void)animateOutWithCompletion:(id)a3;
@end

@implementation CKCatchUpButtonManager

- (_TtC7ChatKit22CKCatchUpButtonManager)initWithDidTapButton:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = sub_190CD5824(sub_190CD5D54, v4);

  return v5;
}

- (void)animateInResumingFromBackground:(BOOL)a3
{
  v4 = self;
  sub_190CD4450(a3);
}

- (void)animateOutWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = sub_190CD5CBC;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  sub_190CD4854(v5);
  sub_19022123C(v5);
}

- (_TtC7ChatKit22CKCatchUpButtonManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end