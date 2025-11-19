@interface DBAppDockButton
- (NSString)bundleIdentifier;
- (_TtC9DashBoard15DBAppDockButton)initWithCoder:(id)a3;
- (_TtC9DashBoard15DBAppDockButton)initWithFrame:(CGRect)a3;
- (_TtC9DashBoard15DBAppDockButton)initWithIconProvider:(id)a3 iconImageInfo:(SBIconImageInfo *)a4;
- (id)copy;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)iconAccessoriesDidUpdate:(id)a3;
- (void)iconImageDidUpdate:(id)a3;
- (void)setBundleIdentifier:(id)a3;
- (void)setBundleIdentifier:(id)a3 animated:(BOOL)a4;
@end

@implementation DBAppDockButton

- (NSString)bundleIdentifier
{
  if (*(&self->super.super.super.super.super._responderFlags + OBJC_IVAR____TtC9DashBoard15DBAppDockButton__bundleIdentifier))
  {

    v2 = sub_248383930();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setBundleIdentifier:(id)a3
{
  if (a3)
  {
    v4 = sub_248383960();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8.value._countAndFlagsBits = v4;
  v8.value._object = v6;
  DBAppDockButton.setBundleIdentifier(_:animated:)(v8, 0);
}

- (_TtC9DashBoard15DBAppDockButton)initWithIconProvider:(id)a3 iconImageInfo:(SBIconImageInfo *)a4
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  swift_unknownObjectRetain();
  return DBAppDockButton.init(iconProvider:iconImageInfo:)(v11, v10, v9, v8);
}

- (_TtC9DashBoard15DBAppDockButton)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard15DBAppDockButton__bundleIdentifier);
  *v4 = 0;
  v4[1] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard15DBAppDockButton_icon) = 0;
  result = sub_248384580();
  __break(1u);
  return result;
}

- (void)setBundleIdentifier:(id)a3 animated:(BOOL)a4
{
  if (a3)
  {
    v6 = sub_248383960();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = self;
  v10.value._countAndFlagsBits = v6;
  v10.value._object = v8;
  DBAppDockButton.setBundleIdentifier(_:animated:)(v10, a4);
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v5 = OBJC_IVAR____TtC9DashBoard15DBAppDockButton_focusEffectView;
  v6 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard15DBAppDockButton_focusEffectView);
  v7 = self;
  [v6 setHidden_];
  [*(&self->super.super.super.super.super.super.isa + v5) setPressed_];
}

- (id)copy
{
  v2 = self;
  DBAppDockButton.copy()(v5);

  __swift_project_boxed_opaque_existential_0(v5, v5[3]);
  v3 = sub_248384670();
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

- (_TtC9DashBoard15DBAppDockButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)iconImageDidUpdate:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90480);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_248383BE0();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_248383BB0();
  v8 = self;
  v9 = sub_248383BA0();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  sub_2482D8C74(0, 0, v6, &unk_2483A1810, v10);
}

- (void)iconAccessoriesDidUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  DBAppDockButton.iconAccessoriesDidUpdate(_:)(v4);
}

@end