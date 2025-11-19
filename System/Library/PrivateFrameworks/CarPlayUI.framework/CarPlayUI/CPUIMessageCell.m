@interface CPUIMessageCell
- (CPUIMessageCell)initWithCoder:(id)a3;
- (CPUIMessageCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (CPUIMessageCellConfigurationProtocol)config;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)applyConfiguration:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)setConfig:(id)a3;
@end

@implementation CPUIMessageCell

- (CPUIMessageCellConfigurationProtocol)config
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setConfig:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___CPUIMessageCell_config) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)applyConfiguration:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  [(CPUIMessageCell *)v5 setConfig:a3];
  [(CPUIMessageCell *)v5 setNeedsUpdateConfiguration];
  swift_unknownObjectRelease();
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v9.receiver = self;
  v9.super_class = CPUIMessageCell;
  v6 = a3;
  v7 = a4;
  v8 = self;
  [(CPUIMessageCell *)&v9 didUpdateFocusInContext:v6 withAnimationCoordinator:v7];
  [(CPUIMessageCell *)v8 setNeedsUpdateConfiguration:v9.receiver];
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  CPUIMessageCell.updateConfiguration(using:)(v7);

  (*(v5 + 8))(v7, v4);
}

- (CPUIMessageCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    v5 = a3;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.super.isa + OBJC_IVAR___CPUIMessageCell_config) = 0;
    v7 = MEMORY[0x245D2BBE0](v6);

    a3 = v5;
  }

  else
  {
    v7 = 0;
    *(&self->super.super.super.super.super.isa + OBJC_IVAR___CPUIMessageCell_config) = 0;
  }

  v10.receiver = self;
  v10.super_class = CPUIMessageCell;
  v8 = [(CPUIMessageCell *)&v10 initWithStyle:a3 reuseIdentifier:v7];

  return v8;
}

- (CPUIMessageCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___CPUIMessageCell_config) = 0;
  v6.receiver = self;
  v6.super_class = CPUIMessageCell;
  v3 = a3;
  v4 = [(CPUIMessageCell *)&v6 initWithCoder:v3];

  if (v4)
  {
  }

  return v4;
}

@end