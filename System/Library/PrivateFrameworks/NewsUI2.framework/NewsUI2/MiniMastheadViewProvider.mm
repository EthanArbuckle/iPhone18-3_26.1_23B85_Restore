@interface MiniMastheadViewProvider
- (_TtC7NewsUI224MiniMastheadViewProvider)init;
- (id)styleTitleText:(id)a3 styleType:(unint64_t)a4 boundingSize:(CGSize)a5;
- (void)bundleSubscriptionDidSubscribe:(void *)a3;
- (void)feedTitleViewDidTapOnTitleView:(id)a3;
@end

@implementation MiniMastheadViewProvider

- (void)bundleSubscriptionDidSubscribe:(void *)a3
{
  v4 = a3;
  v5 = a1;
  sub_21926E848(v4);
}

- (_TtC7NewsUI224MiniMastheadViewProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)styleTitleText:(id)a3 styleType:(unint64_t)a4 boundingSize:(CGSize)a5
{
  v6 = sub_219BF5414();
  v8 = v7;
  v9 = *(&self->super.isa + OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_compactMiniMastheadView);
  v10 = self;
  v11 = [v9 traitCollection];
  v12 = sub_219AFCDDC(v6, v8, v11);

  return v12;
}

- (void)feedTitleViewDidTapOnTitleView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21926E69C(v4);
}

@end