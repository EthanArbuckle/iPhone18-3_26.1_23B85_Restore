@interface CCUIAccessoryButton
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (CCUIAccessoryButton)initWithCoder:(id)a3;
- (CCUIAccessoryButton)initWithFrame:(CGRect)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation CCUIAccessoryButton

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  if (a3)
  {
    v4 = sub_21EAA8E00();
    v6 = v5;
    v7 = self;
    v8 = sub_21EAA8DC0();
  }

  else
  {
    v9 = self;
    v8 = 0;
    v4 = 0;
    v6 = 0;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for AccessoryButton();
  v10 = [(CCUIAccessoryButton *)&v13 _shouldAnimatePropertyWithKey:v8];

  if (v10)
  {

    v11 = 1;
    return v11 & 1;
  }

  if (qword_28125B868 != -1)
  {
    swift_once();
    if (v6)
    {
      goto LABEL_8;
    }

LABEL_13:

    v11 = 0;
    return v11 & 1;
  }

  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (v4 == qword_28125B870 && v6 == *algn_28125B878)
  {

    v11 = 1;
  }

  else
  {
    v11 = sub_21EAA9530();
  }

  return v11 & 1;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for AccessoryButton();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(CCUIAccessoryButton *)&v9 isEnabled];
  v8.receiver = v6;
  v8.super_class = v5;
  [(CCUIAccessoryButton *)&v8 setEnabled:v3];
  sub_21EA52F74(v7);
}

- (void)setHighlighted:(BOOL)a3
{
  v4 = self;
  sub_21EA53784(a3);
}

- (CCUIAccessoryButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AccessoryButton();
  return [(CCUIAccessoryButton *)&v8 initWithFrame:x, y, width, height];
}

- (CCUIAccessoryButton)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AccessoryButton();
  v4 = a3;
  v5 = [(CCUIAccessoryButton *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end