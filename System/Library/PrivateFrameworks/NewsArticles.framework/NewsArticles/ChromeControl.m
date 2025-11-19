@interface ChromeControl
- (_TtC12NewsArticles13ChromeControl)init;
- (void)prefersChromeHidden:(BOOL)a3 fromViewController:(id)a4;
@end

@implementation ChromeControl

- (void)prefersChromeHidden:(BOOL)a3 fromViewController:(id)a4
{
  v5 = a3;
  swift_getObjectType();
  v7 = a4;
  v8 = self;
  sub_1D7D2AAEC();
  v9 = [v7 splitViewController];
  if (!v9)
  {
    v10 = [v7 presentingViewController];
    v11 = [v10 splitViewController];

    v9 = v11;
  }

  v12 = v9;
  [v9 ts:!v5 columnSeparatorsExtendToTitlebar:?];
}

- (_TtC12NewsArticles13ChromeControl)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end