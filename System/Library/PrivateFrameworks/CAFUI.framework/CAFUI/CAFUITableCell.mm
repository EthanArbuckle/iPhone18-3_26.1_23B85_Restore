@interface CAFUITableCell
- (BOOL)canBecomeFocused;
- (_TtC5CAFUI14CAFUITableCell)initWithCoder:(id)coder;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation CAFUITableCell

- (_TtC5CAFUI14CAFUITableCell)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (BOOL)canBecomeFocused
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.super.isa) + 0x60);
  selfCopy = self;
  LOBYTE(v2) = v2();

  return v2 & 1;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for CAFUITableCell();
  v2 = v4.receiver;
  [(CAFUITableCell *)&v4 prepareForReuse];
  [v2 setSelectionStyle_];
  [v2 setAccessoryType_];
  accessoryView = [v2 accessoryView];
  [accessoryView removeFromSuperview];

  [v2 setAccessoryView_];
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  CAFUITableCell.updateConfiguration(using:)(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  v6 = *((*MEMORY[0x277D85000] & self->super.super.super.super.isa) + 0x58);
  selfCopy = self;
  v8 = v6() & highlighted;
  v9 = v6() & animated;
  v10.receiver = selfCopy;
  v10.super_class = type metadata accessor for CAFUITableCell();
  [(CAFUITableCell *)&v10 setHighlighted:v8 & 1 animated:v9 & 1];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  v6 = *((*MEMORY[0x277D85000] & self->super.super.super.super.isa) + 0x60);
  selfCopy = self;
  v8 = v6() & selected;
  v9 = v6() & animated;
  v10.receiver = selfCopy;
  v10.super_class = type metadata accessor for CAFUITableCell();
  [(CAFUITableCell *)&v10 setSelected:v8 & 1 animated:v9 & 1];
}

@end