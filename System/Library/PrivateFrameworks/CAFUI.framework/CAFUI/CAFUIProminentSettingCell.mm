@interface CAFUIProminentSettingCell
- (BOOL)canBecomeFocused;
- (_TtC5CAFUI25CAFUIProminentSettingCell)initWithCoder:(id)coder;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)buttonClicked;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)prepareForReuse;
@end

@implementation CAFUIProminentSettingCell

- (_TtC5CAFUI25CAFUIProminentSettingCell)initWithCoder:(id)coder
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
  selfCopy = self;
  v3 = CAFUIProminentSettingCell.isCellEnabled.getter();

  return v3 & 1;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v12.receiver = self;
  v12.super_class = type metadata accessor for CAFUIProminentSettingCell();
  contextCopy = context;
  coordinatorCopy = coordinator;
  v8 = v12.receiver;
  [(CAFUIProminentSettingCell *)&v12 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinatorCopy];
  nextFocusedView = [contextCopy nextFocusedView];
  if (nextFocusedView)
  {
    v10 = nextFocusedView;

    v11 = v10 == v8;
  }

  else
  {
    v11 = 0;
  }

  [v8 setHighlighted_];
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  CAFUIProminentSettingCell.updateConfiguration(using:)(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)buttonClicked
{
  selfCopy = self;
  CAFUIProminentSettingCell.buttonClicked()();
}

@end