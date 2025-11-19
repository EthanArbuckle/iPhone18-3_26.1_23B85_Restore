@interface PrivacyOnboardingView
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5;
- (_TtC9MomentsUI21PrivacyOnboardingView)initWithFrame:(CGRect)a3;
- (void)okButtonTapped;
@end

@implementation PrivacyOnboardingView

- (void)okButtonTapped
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x130);
  v6 = self;
  if (v2())
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x130);
  v11 = self;
  if (v10())
  {
    v13 = v12;
    ObjectType = swift_getObjectType();
    (*(v13 + 16))(ObjectType, v13);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  (*(v7 + 8))(v9, v6);
  return 0;
}

- (_TtC9MomentsUI21PrivacyOnboardingView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end