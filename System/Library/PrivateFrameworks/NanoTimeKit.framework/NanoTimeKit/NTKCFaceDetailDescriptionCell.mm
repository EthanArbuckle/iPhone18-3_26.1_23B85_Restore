@interface NTKCFaceDetailDescriptionCell
+ (id)reuseIdentifier;
- (NTKCFaceDetailDescriptionCell)init;
- (double)rowHeight;
- (id)_fontDescriptor;
- (void)_fontSizeDidChange;
- (void)layoutSubviews;
- (void)setAttributedText:(id)text;
- (void)setText:(id)text;
@end

@implementation NTKCFaceDetailDescriptionCell

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NTKCFaceDetailDescriptionCell)init
{
  v10.receiver = self;
  v10.super_class = NTKCFaceDetailDescriptionCell;
  v2 = [(NTKCDetailTableViewCell *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(NTKCFaceDetailDescriptionCell *)v2 setTextView:v3];

    v4 = BPSDetailTextColor();
    [(UITextView *)v2->_textView setTextColor:v4];

    [(UITextView *)v2->_textView setBackgroundColor:0];
    [(UITextView *)v2->_textView setScrollEnabled:0];
    [(UITextView *)v2->_textView setEditable:0];
    [(UITextView *)v2->_textView _setInteractiveTextSelectionDisabled:1];
    [(UITextView *)v2->_textView setSelectable:1];
    textContainer = [(UITextView *)v2->_textView textContainer];
    [textContainer setLineBreakMode:4];

    textContainer2 = [(UITextView *)v2->_textView textContainer];
    [textContainer2 setLineFragmentPadding:0.0];

    [(UITextView *)v2->_textView setTextContainerInset:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    v7 = NTKCActionColor();
    [(UITextView *)v2->_textView setTintColor:v7];

    [(UITextView *)v2->_textView setDelegate:v2];
    [(UITextView *)v2->_textView setClipsToBounds:0];
    contentView = [(NTKCFaceDetailDescriptionCell *)v2 contentView];
    [contentView addSubview:v2->_textView];

    [(NTKCFaceDetailDescriptionCell *)v2 _fontSizeDidChange];
  }

  return v2;
}

- (void)setText:(id)text
{
  [(UITextView *)self->_textView setText:text];

  [(NTKCFaceDetailDescriptionCell *)self setNeedsLayout];
}

- (void)setAttributedText:(id)text
{
  [(UITextView *)self->_textView setAttributedText:text];

  [(NTKCFaceDetailDescriptionCell *)self setNeedsLayout];
}

- (double)rowHeight
{
  [(NTKCFaceDetailDescriptionCell *)self layoutIfNeeded];
  font = [(UITextView *)self->_textView font];
  [font _scaledValueForValue:13.5];
  v5 = v4;
  [(UITextView *)self->_textView bounds];
  v6 = v5 + CGRectGetHeight(v10);
  [font _scaledValueForValue:21.5];
  v8 = v6 + v7;

  return v8;
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = NTKCFaceDetailDescriptionCell;
  [(NTKCDetailTableViewCell *)&v22 layoutSubviews];
  contentView = [(NTKCFaceDetailDescriptionCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.width = v9;
  v23.size.height = v11;
  Width = CGRectGetWidth(v23);
  [(NTKCFaceDetailDescriptionCell *)self separatorInset];
  v14 = Width + v13 * -2.0;
  [(UITextView *)self->_textView frame];
  [(UITextView *)self->_textView sizeThatFits:v14, 1.79769313e308];
  v16 = v15;
  [(NTKCFaceDetailDescriptionCell *)self separatorInset];
  v18 = v17;
  font = [(UITextView *)self->_textView font];
  [font _scaledValueForValue:13.5];
  v21 = v20;

  [(UITextView *)self->_textView setFrame:v18, v21, v14, v16];
}

- (id)_fontDescriptor
{
  v2 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769C0]];
  v3 = [v2 fontDescriptorWithSymbolicTraits:0x8000];

  return v3;
}

- (void)_fontSizeDidChange
{
  _fontDescriptor = [(NTKCFaceDetailDescriptionCell *)self _fontDescriptor];
  v3 = [MEMORY[0x277D74300] fontWithDescriptor:_fontDescriptor size:0.0];
  [(UITextView *)self->_textView setFont:v3];
  [(NTKCFaceDetailDescriptionCell *)self setNeedsLayout];
}

@end