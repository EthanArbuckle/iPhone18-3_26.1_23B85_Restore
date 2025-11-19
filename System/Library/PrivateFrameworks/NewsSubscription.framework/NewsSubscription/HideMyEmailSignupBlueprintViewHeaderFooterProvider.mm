@interface HideMyEmailSignupBlueprintViewHeaderFooterProvider
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (_TtC16NewsSubscription50HideMyEmailSignupBlueprintViewHeaderFooterProvider)init;
@end

@implementation HideMyEmailSignupBlueprintViewHeaderFooterProvider

- (_TtC16NewsSubscription50HideMyEmailSignupBlueprintViewHeaderFooterProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v8 = sub_1D78B3294();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78B3254();
  if (!a6 && swift_unknownObjectWeakLoadStrong())
  {
    v12 = self;
    sub_1D78B259C(v11);

    swift_unknownObjectRelease();
  }

  (*(v9 + 8))(v11, v8);
  return a6 != 0;
}

@end