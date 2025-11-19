@interface ICLabel
- (void)setAttributedString:(id)a3;
- (void)setLineHeight:(double)a3;
- (void)setParagraphSpacing:(double)a3;
- (void)setSpacing:(double)a3;
- (void)setString:(id)a3;
- (void)updateText;
@end

@implementation ICLabel

- (void)setString:(id)a3
{
  v4 = [a3 copy];
  string = self->_string;
  self->_string = v4;

  attributedString = self->_attributedString;
  self->_attributedString = 0;

  [(ICLabel *)self updateText];
}

- (void)setAttributedString:(id)a3
{
  string = self->_string;
  self->_string = 0;
  v5 = a3;

  v6 = [v5 copy];
  attributedString = self->_attributedString;
  self->_attributedString = v6;

  [(ICLabel *)self updateText];
}

- (void)setSpacing:(double)a3
{
  if (self->_spacing != a3)
  {
    self->_spacing = a3;
    [(ICLabel *)self updateText];
  }
}

- (void)setParagraphSpacing:(double)a3
{
  if (self->_paragraphSpacing != a3)
  {
    self->_paragraphSpacing = a3;
    [(ICLabel *)self updateText];
  }
}

- (void)setLineHeight:(double)a3
{
  if (self->_lineHeight != a3)
  {
    self->_lineHeight = a3;
    [(ICLabel *)self updateText];
  }
}

- (void)updateText
{
  v17[1] = *MEMORY[0x1E69E9840];
  p_isa = self->_string;
  v4 = self->_attributedString;
  [(ICLabel *)self spacing];
  if (v5 <= 0.0)
  {
    [(ICLabel *)self lineHeight];
    if (v6 <= 0.0)
    {
      [(ICLabel *)self paragraphSpacing];
      if (v7 == 0.0)
      {
        goto LABEL_16;
      }
    }
  }

  v8 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [(ICLabel *)self spacing];
  if (v9 > 0.0)
  {
    [(ICLabel *)self spacing];
    [v8 setLineSpacing:?];
  }

  [(ICLabel *)self paragraphSpacing];
  if (v10 != 0.0)
  {
    [(ICLabel *)self paragraphSpacing];
    [v8 setParagraphSpacing:?];
  }

  [(ICLabel *)self lineHeight];
  if (v11 > 0.0)
  {
    [(ICLabel *)self lineHeight];
    [v8 setMaximumLineHeight:?];
    [(ICLabel *)self lineHeight];
    [v8 setMinimumLineHeight:?];
  }

  [v8 setLineBreakMode:{-[ICLabel lineBreakMode](self, "lineBreakMode")}];
  v16 = *MEMORY[0x1E69DB688];
  v17[0] = v8;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  if (p_isa)
  {
    v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:p_isa attributes:v12];

LABEL_14:
    v4 = v13;

    goto LABEL_15;
  }

  if (v4)
  {
    v13 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v4];
    [(NSAttributedString *)v13 addAttributes:v12 range:0, [(NSAttributedString *)v13 length]];
    p_isa = &v4->super.isa;
    goto LABEL_14;
  }

LABEL_15:

  p_isa = 0;
LABEL_16:
  if (v4)
  {
    v15.receiver = self;
    v15.super_class = ICLabel;
    [(ICLabel *)&v15 setAttributedText:v4];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = ICLabel;
    [(ICLabel *)&v14 setText:p_isa];
  }
}

@end