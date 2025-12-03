@interface CAFUITileBaseCell
- (BOOL)canBecomeFocused;
- (_TtC5CAFUI17CAFUITileBaseCell)initWithCoder:(id)coder;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)dismissSettingsModal;
- (void)infoButtonClicked:(id)clicked;
- (void)prepareForReuse;
@end

@implementation CAFUITileBaseCell

- (_TtC5CAFUI17CAFUITileBaseCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_isParentCell) = 0;
  v4 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_tileCellConfiguration;
  v5 = type metadata accessor for CAFUITileCellConfiguration(0);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)infoButtonClicked:(id)clicked
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  CAFUITileBaseCell.infoButtonClicked(_:)(v5);

  __swift_destroy_boxed_opaque_existential_0(v5);
}

- (void)dismissSettingsModal
{
  v2 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_infoButton);
  selfCopy = self;
  nextResponder = [v2 nextResponder];
  if (nextResponder)
  {
    while (1)
    {
      v8 = nextResponder;
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        break;
      }

      nextResponder2 = [(CAFUITileBaseCell *)v8 nextResponder];

      nextResponder = nextResponder2;
      if (!nextResponder2)
      {
        goto LABEL_4;
      }
    }

    [v5 dismissViewControllerAnimated:1 completion:0];

    v7 = v8;
  }

  else
  {
LABEL_4:
    v7 = selfCopy;
  }
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  CAFUITileBaseCell.updateConfiguration(using:)();

  (*(v5 + 8))(v7, v4);
}

- (void)prepareForReuse
{
  selfCopy = self;
  CAFUITileBaseCell.prepareForReuse()();
}

- (BOOL)canBecomeFocused
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.super.isa) + 0xD0);
  selfCopy = self;
  LOBYTE(v2) = v2();

  return v2 & 1;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v12.receiver = self;
  v12.super_class = type metadata accessor for CAFUITileBaseCell(0);
  contextCopy = context;
  coordinatorCopy = coordinator;
  v8 = v12.receiver;
  [(CAFUITileBaseCell *)&v12 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinatorCopy];
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

@end