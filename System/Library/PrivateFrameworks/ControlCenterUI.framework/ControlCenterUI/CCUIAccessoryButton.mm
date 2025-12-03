@interface CCUIAccessoryButton
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (CCUIAccessoryButton)initWithCoder:(id)coder;
- (CCUIAccessoryButton)initWithFrame:(CGRect)frame;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation CCUIAccessoryButton

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  if (key)
  {
    v4 = sub_21EAA8E00();
    v6 = v5;
    selfCopy = self;
    v8 = sub_21EAA8DC0();
  }

  else
  {
    selfCopy2 = self;
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

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = type metadata accessor for AccessoryButton();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  isEnabled = [(CCUIAccessoryButton *)&v9 isEnabled];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(CCUIAccessoryButton *)&v8 setEnabled:enabledCopy];
  sub_21EA52F74(isEnabled);
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_21EA53784(highlighted);
}

- (CCUIAccessoryButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AccessoryButton();
  return [(CCUIAccessoryButton *)&v8 initWithFrame:x, y, width, height];
}

- (CCUIAccessoryButton)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AccessoryButton();
  coderCopy = coder;
  v5 = [(CCUIAccessoryButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end