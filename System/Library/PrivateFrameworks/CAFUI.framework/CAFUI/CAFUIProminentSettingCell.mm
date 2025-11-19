@interface CAFUIProminentSettingCell
- (BOOL)canBecomeFocused;
- (_TtC5CAFUI25CAFUIProminentSettingCell)initWithCoder:(id)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)buttonClicked;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)prepareForReuse;
@end

@implementation CAFUIProminentSettingCell

- (_TtC5CAFUI25CAFUIProminentSettingCell)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_isDisabledByAncestor) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_customPlatterView) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for CAFUIProminentSettingCell();
  v2 = v4.receiver;
  [(CAFUIProminentSettingCell *)&v4 prepareForReuse];
  v3 = &v2[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_representable];
  *v3 = 0;
  v3[1] = 0;
  swift_unknownObjectRelease();
  v2[OBJC_IVAR____TtC5CAFUI25CAFUIProminentSettingCell_isDisabledByAncestor] = 0;
  CAFUIProminentSettingCell.setupDefaultBackground()();
}

- (BOOL)canBecomeFocused
{
  v2 = self;
  v3 = CAFUIProminentSettingCell.isCellEnabled.getter();

  return v3 & 1;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v12.receiver = self;
  v12.super_class = type metadata accessor for CAFUIProminentSettingCell();
  v6 = a3;
  v7 = a4;
  v8 = v12.receiver;
  [(CAFUIProminentSettingCell *)&v12 didUpdateFocusInContext:v6 withAnimationCoordinator:v7];
  v9 = [v6 nextFocusedView];
  if (v9)
  {
    v10 = v9;

    v11 = v10 == v8;
  }

  else
  {
    v11 = 0;
  }

  [v8 setHighlighted_];
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  CAFUIProminentSettingCell.updateConfiguration(using:)(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)buttonClicked
{
  v2 = self;
  CAFUIProminentSettingCell.buttonClicked()();
}

@end