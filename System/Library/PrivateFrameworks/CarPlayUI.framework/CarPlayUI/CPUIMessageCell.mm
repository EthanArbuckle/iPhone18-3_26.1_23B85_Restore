@interface CPUIMessageCell
- (CPUIMessageCell)initWithCoder:(id)coder;
- (CPUIMessageCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (CPUIMessageCellConfigurationProtocol)config;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)applyConfiguration:(id)configuration;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)setConfig:(id)config;
@end

@implementation CPUIMessageCell

- (CPUIMessageCellConfigurationProtocol)config
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setConfig:(id)config
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___CPUIMessageCell_config) = config;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)applyConfiguration:(id)configuration
{
  swift_unknownObjectRetain();
  selfCopy = self;
  [(CPUIMessageCell *)selfCopy setConfig:configuration];
  [(CPUIMessageCell *)selfCopy setNeedsUpdateConfiguration];
  swift_unknownObjectRelease();
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v9.receiver = self;
  v9.super_class = CPUIMessageCell;
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  [(CPUIMessageCell *)&v9 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinatorCopy];
  [(CPUIMessageCell *)selfCopy setNeedsUpdateConfiguration:v9.receiver];
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  CPUIMessageCell.updateConfiguration(using:)(v7);

  (*(v5 + 8))(v7, v4);
}

- (CPUIMessageCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    styleCopy = style;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.super.isa + OBJC_IVAR___CPUIMessageCell_config) = 0;
    v7 = MEMORY[0x245D2BBE0](v6);

    style = styleCopy;
  }

  else
  {
    v7 = 0;
    *(&self->super.super.super.super.super.isa + OBJC_IVAR___CPUIMessageCell_config) = 0;
  }

  v10.receiver = self;
  v10.super_class = CPUIMessageCell;
  v8 = [(CPUIMessageCell *)&v10 initWithStyle:style reuseIdentifier:v7];

  return v8;
}

- (CPUIMessageCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___CPUIMessageCell_config) = 0;
  v6.receiver = self;
  v6.super_class = CPUIMessageCell;
  coderCopy = coder;
  v4 = [(CPUIMessageCell *)&v6 initWithCoder:coderCopy];

  if (v4)
  {
  }

  return v4;
}

@end