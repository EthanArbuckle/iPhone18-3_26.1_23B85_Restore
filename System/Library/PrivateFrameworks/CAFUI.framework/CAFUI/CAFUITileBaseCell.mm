@interface CAFUITileBaseCell
- (BOOL)canBecomeFocused;
- (_TtC5CAFUI17CAFUITileBaseCell)initWithCoder:(id)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)dismissSettingsModal;
- (void)infoButtonClicked:(id)a3;
- (void)prepareForReuse;
@end

@implementation CAFUITileBaseCell

- (_TtC5CAFUI17CAFUITileBaseCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_isParentCell) = 0;
  v4 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_tileCellConfiguration;
  v5 = type metadata accessor for CAFUITileCellConfiguration(0);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)infoButtonClicked:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  CAFUITileBaseCell.infoButtonClicked(_:)(v5);

  __swift_destroy_boxed_opaque_existential_0(v5);
}

- (void)dismissSettingsModal
{
  v2 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_infoButton);
  v3 = self;
  v4 = [v2 nextResponder];
  if (v4)
  {
    while (1)
    {
      v8 = v4;
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        break;
      }

      v6 = [(CAFUITileBaseCell *)v8 nextResponder];

      v4 = v6;
      if (!v6)
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
    v7 = v3;
  }
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  CAFUITileBaseCell.updateConfiguration(using:)();

  (*(v5 + 8))(v7, v4);
}

- (void)prepareForReuse
{
  v2 = self;
  CAFUITileBaseCell.prepareForReuse()();
}

- (BOOL)canBecomeFocused
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.super.isa) + 0xD0);
  v3 = self;
  LOBYTE(v2) = v2();

  return v2 & 1;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v12.receiver = self;
  v12.super_class = type metadata accessor for CAFUITileBaseCell(0);
  v6 = a3;
  v7 = a4;
  v8 = v12.receiver;
  [(CAFUITileBaseCell *)&v12 didUpdateFocusInContext:v6 withAnimationCoordinator:v7];
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

@end