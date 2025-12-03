@interface OBIconTextView
- (CGSize)iconSize;
- (OBIconTextView)initWithIcon:(id)icon iconSize:(CGSize)size text:(id)text dataDetectorTypes:(unint64_t)types;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
- (void)updateFont;
@end

@implementation OBIconTextView

- (OBIconTextView)initWithIcon:(id)icon iconSize:(CGSize)size text:(id)text dataDetectorTypes:(unint64_t)types
{
  height = size.height;
  width = size.width;
  iconCopy = icon;
  textCopy = text;
  v26.receiver = self;
  v26.super_class = OBIconTextView;
  v13 = [(OBIconTextView *)&v26 init];
  v14 = v13;
  if (v13)
  {
    v13->_iconSize.width = width;
    v13->_iconSize.height = height;
    v15 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:iconCopy];
    iconView = v14->_iconView;
    v14->_iconView = v15;

    [(UIImageView *)v14->_iconView setContentMode:2];
    [(UIImageView *)v14->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(OBIconTextView *)v14 addSubview:v14->_iconView];
    v17 = objc_alloc(MEMORY[0x1E69DD168]);
    v18 = [v17 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    textView = v14->_textView;
    v14->_textView = v18;

    [(UITextView *)v14->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITextView *)v14->_textView setDataDetectorTypes:types];
    [(UITextView *)v14->_textView setEditable:0];
    [(UITextView *)v14->_textView setSelectable:1];
    [(UITextView *)v14->_textView setScrollEnabled:0];
    v20 = v14->_textView;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UITextView *)v20 setBackgroundColor:clearColor];

    v22 = +[OBFeatureFlags isNaturalUIEnabled];
    v23 = v14->_textView;
    if (v22)
    {
      [MEMORY[0x1E69DC888] secondaryLabelColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] labelColor];
    }
    v24 = ;
    [(UITextView *)v23 setTextColor:v24];

    if (textCopy)
    {
      [(UITextView *)v14->_textView setText:textCopy];
    }

    [(OBIconTextView *)v14 updateFont];
    [(OBIconTextView *)v14 addSubview:v14->_textView];
  }

  return v14;
}

- (void)updateConstraints
{
  v32[1] = *MEMORY[0x1E69E9840];
  constraints = [(OBIconTextView *)self constraints];
  [(OBIconTextView *)self removeConstraints:constraints];

  v30.receiver = self;
  v30.super_class = OBIconTextView;
  [(OBIconTextView *)&v30 updateConstraints];
  v4 = MEMORY[0x1E696ACD8];
  v31 = @"padding";
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_padding];
  v32[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  v7 = _NSDictionaryOfVariableBindings(&cfstr_IconviewTextvi.isa, self->_iconView, self->_textView, 0);
  v8 = [v4 constraintsWithVisualFormat:@"|[_iconView]-(padding)-[_textView]|" options:0 metrics:v6 views:v7];
  [v4 activateConstraints:v8];

  heightAnchor = [(UITextView *)self->_textView heightAnchor];
  heightAnchor2 = [(OBIconTextView *)self heightAnchor];
  v11 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  [v11 setActive:1];

  topAnchor = [(UITextView *)self->_textView topAnchor];
  topAnchor2 = [(OBIconTextView *)self topAnchor];
  v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v14 setActive:1];

  centerYAnchor = [(UIImageView *)self->_iconView centerYAnchor];
  firstBaselineAnchor = [(UITextView *)self->_textView firstBaselineAnchor];
  font = [(UITextView *)self->_textView font];
  [font capHeight];
  v19 = [centerYAnchor constraintEqualToAnchor:firstBaselineAnchor constant:v18 * -0.5];
  [v19 setActive:1];

  [(OBIconTextView *)self iconSize];
  if (v21 != *MEMORY[0x1E695F060] || v20 != *(MEMORY[0x1E695F060] + 8))
  {
    heightAnchor3 = [(UIImageView *)self->_iconView heightAnchor];
    [(OBIconTextView *)self iconSize];
    v24 = [heightAnchor3 constraintEqualToConstant:v23];

    LODWORD(v25) = 1148846080;
    [v24 setPriority:v25];
    [v24 setActive:1];
    widthAnchor = [(UIImageView *)self->_iconView widthAnchor];
    [(OBIconTextView *)self iconSize];
    v27 = [widthAnchor constraintEqualToConstant:?];

    LODWORD(v28) = 1148846080;
    [v27 setPriority:v28];
    [v27 setActive:1];
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)updateFont
{
  v3 = +[OBFeatureFlags isNaturalUIEnabled];
  v4 = MEMORY[0x1E69DDDC8];
  if (!v3)
  {
    v4 = MEMORY[0x1E69DDD80];
  }

  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*v4];
  [(UITextView *)self->_textView setFont:v5];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = OBIconTextView;
  [(OBIconTextView *)&v4 traitCollectionDidChange:change];
  [(OBIconTextView *)self updateFont];
}

- (CGSize)iconSize
{
  width = self->_iconSize.width;
  height = self->_iconSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end