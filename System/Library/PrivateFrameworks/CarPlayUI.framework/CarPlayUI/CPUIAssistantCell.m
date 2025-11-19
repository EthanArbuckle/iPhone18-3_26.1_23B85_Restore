@interface CPUIAssistantCell
- (CPUIAssistantCell)initWithCoder:(id)a3;
- (CPUIAssistantCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (CPUIAssistantCellConfigurationProtocol)config;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)applyConfiguration:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)setConfig:(id)a3;
@end

@implementation CPUIAssistantCell

- (CPUIAssistantCellConfigurationProtocol)config
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setConfig:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___CPUIAssistantCell_config) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)applyConfiguration:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  [(CPUIAssistantCell *)v5 setConfig:a3];
  [(CPUIAssistantCell *)v5 setNeedsUpdateConfiguration];
  swift_unknownObjectRelease();
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v9.receiver = self;
  v9.super_class = CPUIAssistantCell;
  v6 = a3;
  v7 = a4;
  v8 = self;
  [(CPUIAssistantCell *)&v9 didUpdateFocusInContext:v6 withAnimationCoordinator:v7];
  [(CPUIAssistantCell *)v8 setNeedsUpdateConfiguration:v9.receiver];
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  CPUIAssistantCell.updateConfiguration(using:)();

  (*(v5 + 8))(v7, v4);
}

- (CPUIAssistantCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    v5 = a3;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.super.isa + OBJC_IVAR___CPUIAssistantCell_config) = 0;
    v7 = MEMORY[0x245D2BBE0](v6);

    a3 = v5;
  }

  else
  {
    v7 = 0;
    *(&self->super.super.super.super.super.isa + OBJC_IVAR___CPUIAssistantCell_config) = 0;
  }

  v10.receiver = self;
  v10.super_class = CPUIAssistantCell;
  v8 = [(CPUIAssistantCell *)&v10 initWithStyle:a3 reuseIdentifier:v7];

  return v8;
}

- (CPUIAssistantCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___CPUIAssistantCell_config) = 0;
  v6.receiver = self;
  v6.super_class = CPUIAssistantCell;
  v3 = a3;
  v4 = [(CPUIAssistantCell *)&v6 initWithCoder:v3];

  if (v4)
  {
  }

  return v4;
}

@end