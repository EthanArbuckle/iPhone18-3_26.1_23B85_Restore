@interface MiniMastheadViewProvider
- (_TtC7NewsUI224MiniMastheadViewProvider)init;
- (id)styleTitleText:(id)text styleType:(unint64_t)type boundingSize:(CGSize)size;
- (void)bundleSubscriptionDidSubscribe:(void *)subscribe;
- (void)feedTitleViewDidTapOnTitleView:(id)view;
@end

@implementation MiniMastheadViewProvider

- (void)bundleSubscriptionDidSubscribe:(void *)subscribe
{
  subscribeCopy = subscribe;
  selfCopy = self;
  sub_21926E848(subscribeCopy);
}

- (_TtC7NewsUI224MiniMastheadViewProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)styleTitleText:(id)text styleType:(unint64_t)type boundingSize:(CGSize)size
{
  v6 = sub_219BF5414();
  v8 = v7;
  v9 = *(&self->super.isa + OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_compactMiniMastheadView);
  selfCopy = self;
  traitCollection = [v9 traitCollection];
  v12 = sub_219AFCDDC(v6, v8, traitCollection);

  return v12;
}

- (void)feedTitleViewDidTapOnTitleView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_21926E69C(viewCopy);
}

@end