@interface CPUITableCell
- (CPUITableCellConfigurationProtocol)config;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)applyConfiguration:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)setConfig:(id)a3;
@end

@implementation CPUITableCell

- (CPUITableCellConfigurationProtocol)config
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setConfig:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___CPUITableCell_config) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)applyConfiguration:(id)a3
{
  swift_unknownObjectRetain();
  v6 = self;
  [(CPUITableCell *)v6 setConfig:a3];
  if ([a3 respondsToSelector_])
  {
    v5 = [a3 activePlayback];
  }

  else
  {
    v5 = 0;
  }

  [(CPUITableCell *)v6 setActivePlayback:v5];
  [(CPUITableCell *)v6 setNeedsUpdateConfiguration];
  swift_unknownObjectRelease();
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v9.receiver = self;
  v9.super_class = CPUITableCell;
  v6 = a3;
  v7 = a4;
  v8 = self;
  [(CPUITableCell *)&v9 didUpdateFocusInContext:v6 withAnimationCoordinator:v7];
  [(CPUITableCell *)v8 setNeedsUpdateConfiguration:v9.receiver];
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  CPUITableCell.updateConfiguration(using:)(v7);

  (*(v5 + 8))(v7, v4);
}

@end