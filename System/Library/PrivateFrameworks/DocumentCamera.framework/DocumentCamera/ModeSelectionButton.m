@interface ModeSelectionButton
- (BOOL)isSelected;
- (_TtC14DocumentCamera19ModeSelectionButton)initWithCoder:(id)a3;
- (_TtC14DocumentCamera19ModeSelectionButton)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)a3;
@end

@implementation ModeSelectionButton

- (_TtC14DocumentCamera19ModeSelectionButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for ModeSelectionButton();
  v7 = [(ModeSelectionButton *)&v9 initWithFrame:x, y, width, height];
  sub_2492E5A68();

  return v7;
}

- (_TtC14DocumentCamera19ModeSelectionButton)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for ModeSelectionButton();
  v4 = a3;
  v5 = [(ModeSelectionButton *)&v9 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_2492E5A68();
  }

  return v6;
}

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ModeSelectionButton();
  return [(ModeSelectionButton *)&v3 isSelected];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ModeSelectionButton();
  v4 = v10.receiver;
  [(ModeSelectionButton *)&v10 setSelected:v3];
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v9[4] = sub_2492E6298;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2492E2830;
  v9[3] = &block_descriptor_1;
  v7 = _Block_copy(v9);
  v8 = v4;

  [v5 transitionWithView:v8 duration:5242882 options:v7 animations:0 completion:0.3];
  _Block_release(v7);
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ModeSelectionButton();
  v2 = v4.receiver;
  [(ModeSelectionButton *)&v4 layoutSubviews];
  v3 = [v2 layer];
  [v2 bounds];
  [v3 setCornerRadius_];
}

@end