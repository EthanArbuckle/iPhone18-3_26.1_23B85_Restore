@interface HideMyEmailSignupBlueprintViewHeaderFooterProvider
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (_TtC16NewsSubscription50HideMyEmailSignupBlueprintViewHeaderFooterProvider)init;
@end

@implementation HideMyEmailSignupBlueprintViewHeaderFooterProvider

- (_TtC16NewsSubscription50HideMyEmailSignupBlueprintViewHeaderFooterProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v8 = sub_1D78B3294();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78B3254();
  if (!interaction && swift_unknownObjectWeakLoadStrong())
  {
    selfCopy = self;
    sub_1D78B259C(v11);

    swift_unknownObjectRelease();
  }

  (*(v9 + 8))(v11, v8);
  return interaction != 0;
}

@end