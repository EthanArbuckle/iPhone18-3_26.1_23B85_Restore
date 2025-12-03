@interface CACLanguageViewBridge
- (_TtP19CommandAndControlUI23CACLanguageViewDelegate_)delegate;
- (id)makeLanguageUI;
- (id)makeLanguageUIWithLocales:(id)locales;
- (void)setDelegate:(id)delegate;
- (void)updateDownloadStatusWith:(id)with;
- (void)updateInstallationStatusWith:(id)with;
@end

@implementation CACLanguageViewBridge

- (_TtP19CommandAndControlUI23CACLanguageViewDelegate_)delegate
{
  v3 = OBJC_IVAR____TtC19CommandAndControlUI21CACLanguageViewBridge_delegate;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setDelegate:(id)delegate
{
  v5 = OBJC_IVAR____TtC19CommandAndControlUI21CACLanguageViewBridge_delegate;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = delegate;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (id)makeLanguageUI
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC19CommandAndControlUI21CACLanguageViewBridge_model);
  selfCopy = self;

  sub_243BC7B88(0, v15);
  v12 = v15[4];
  v13 = v15[5];
  v14 = v16;
  v8 = v15[0];
  v9 = v15[1];
  v10 = v15[2];
  v11 = v15[3];
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6640, &qword_243BD1CD0));
  sub_243BC71C8(v15, v7);
  v5 = sub_243BD0A98();

  sub_243BCBF8C(v15);

  return v5;
}

- (id)makeLanguageUIWithLocales:(id)locales
{
  if (locales)
  {
    v4 = sub_243BD0E48();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  v6 = sub_243BC911C(v4);

  return v6;
}

- (void)updateInstallationStatusWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  sub_243BC9460(withCopy);
}

- (void)updateDownloadStatusWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  v5 = sub_243BCB2B0(withCopy);
  if (v6)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    v13 = *(&selfCopy->super.isa + OBJC_IVAR____TtC19CommandAndControlUI21CACLanguageViewBridge_model);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6648, &qword_243BD2240);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_243BD1690;
    *(inited + 32) = v9;
    *(inited + 40) = v10;
    *(inited + 48) = v11;
    *(inited + 56) = v12 & 1;

    sub_243BCF364(inited);

    swift_setDeallocating();
    sub_243BC8994(inited + 32);
  }

  else
  {
  }
}

@end