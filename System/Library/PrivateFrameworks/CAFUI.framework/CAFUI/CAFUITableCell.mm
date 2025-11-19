@interface CAFUITableCell
- (BOOL)canBecomeFocused;
- (_TtC5CAFUI14CAFUITableCell)initWithCoder:(id)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation CAFUITableCell

- (_TtC5CAFUI14CAFUITableCell)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (BOOL)canBecomeFocused
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.super.isa) + 0x60);
  v3 = self;
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
  v3 = [v2 accessoryView];
  [v3 removeFromSuperview];

  [v2 setAccessoryView_];
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  CAFUITableCell.updateConfiguration(using:)(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v6 = *((*MEMORY[0x277D85000] & self->super.super.super.super.isa) + 0x58);
  v7 = self;
  v8 = v6() & a3;
  v9 = v6() & a4;
  v10.receiver = v7;
  v10.super_class = type metadata accessor for CAFUITableCell();
  [(CAFUITableCell *)&v10 setHighlighted:v8 & 1 animated:v9 & 1];
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v6 = *((*MEMORY[0x277D85000] & self->super.super.super.super.isa) + 0x60);
  v7 = self;
  v8 = v6() & a3;
  v9 = v6() & a4;
  v10.receiver = v7;
  v10.super_class = type metadata accessor for CAFUITableCell();
  [(CAFUITableCell *)&v10 setSelected:v8 & 1 animated:v9 & 1];
}

@end