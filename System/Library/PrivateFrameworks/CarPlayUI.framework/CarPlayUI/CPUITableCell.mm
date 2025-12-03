@interface CPUITableCell
- (CPUITableCellConfigurationProtocol)config;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)applyConfiguration:(id)configuration;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)setConfig:(id)config;
@end

@implementation CPUITableCell

- (CPUITableCellConfigurationProtocol)config
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setConfig:(id)config
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___CPUITableCell_config) = config;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)applyConfiguration:(id)configuration
{
  swift_unknownObjectRetain();
  selfCopy = self;
  [(CPUITableCell *)selfCopy setConfig:configuration];
  if ([configuration respondsToSelector_])
  {
    activePlayback = [configuration activePlayback];
  }

  else
  {
    activePlayback = 0;
  }

  [(CPUITableCell *)selfCopy setActivePlayback:activePlayback];
  [(CPUITableCell *)selfCopy setNeedsUpdateConfiguration];
  swift_unknownObjectRelease();
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v9.receiver = self;
  v9.super_class = CPUITableCell;
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  [(CPUITableCell *)&v9 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinatorCopy];
  [(CPUITableCell *)selfCopy setNeedsUpdateConfiguration:v9.receiver];
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  CPUITableCell.updateConfiguration(using:)(v7);

  (*(v5 + 8))(v7, v4);
}

@end