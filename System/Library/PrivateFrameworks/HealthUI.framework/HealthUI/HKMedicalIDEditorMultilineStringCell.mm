@interface HKMedicalIDEditorMultilineStringCell
- (CGRect)_cursorRectForTextView:(id)view;
- (CGSize)sizeThatFits:(CGSize)fits;
- (HKMedicalIDEditorCellHeightChangeDelegate)heightChangeDelegate;
- (HKMedicalIDEditorMultilineStringCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UIEdgeInsets)textViewExtraMargins;
- (double)estimatedHeightWithWidth:(double)width;
- (void)_contentSizeCategoryDidChange:(id)change;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setLabel:(id)label;
- (void)setPlaceholder:(id)placeholder;
- (void)setStringValue:(id)value;
- (void)textViewDidBeginEditing:(id)editing;
- (void)textViewDidChange:(id)change;
- (void)textViewDidChangeSelection:(id)selection;
- (void)textViewDidEndEditing:(id)editing;
@end

@implementation HKMedicalIDEditorMultilineStringCell

- (HKMedicalIDEditorMultilineStringCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v20.receiver = self;
  v20.super_class = HKMedicalIDEditorMultilineStringCell;
  v4 = [(HKMedicalIDEditorCell *)&v20 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    labelLabel = v4->_labelLabel;
    v4->_labelLabel = v5;

    v7 = HKHealthKeyColor();
    [(UILabel *)v4->_labelLabel setTextColor:v7];

    [(UILabel *)v4->_labelLabel setTextAlignment:4];
    [(UILabel *)v4->_labelLabel setNumberOfLines:0];
    v8 = objc_alloc_init(MEMORY[0x1E69DD168]);
    textView = v4->_textView;
    v4->_textView = v8;

    [(UITextView *)v4->_textView setDelegate:v4];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UITextView *)v4->_textView setBackgroundColor:clearColor];

    [(UITextView *)v4->_textView setContentInset:-5.0, 0.0, -5.0, 0.0];
    [(UITextView *)v4->_textView setTextAlignment:4];
    [(UITextView *)v4->_textView setScrollEnabled:0];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UITextView *)v4->_textView setTextColor:labelColor];

    v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    placeholderLabel = v4->_placeholderLabel;
    v4->_placeholderLabel = v12;

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v4->_placeholderLabel setTextColor:secondaryLabelColor];

    [(UILabel *)v4->_placeholderLabel setTextAlignment:4];
    contentView = [(HKMedicalIDEditorMultilineStringCell *)v4 contentView];
    [contentView addSubview:v4->_labelLabel];

    contentView2 = [(HKMedicalIDEditorMultilineStringCell *)v4 contentView];
    [contentView2 addSubview:v4->_textView];

    contentView3 = [(HKMedicalIDEditorMultilineStringCell *)v4 contentView];
    [contentView3 addSubview:v4->_placeholderLabel];

    v18 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel__labelTapped_];
    [(UILabel *)v4->_labelLabel addGestureRecognizer:v18];
    [(UILabel *)v4->_labelLabel setUserInteractionEnabled:1];
    [(HKMedicalIDEditorMultilineStringCell *)v4 setAccessoryType:0];
    [(HKMedicalIDEditorMultilineStringCell *)v4 _contentSizeCategoryDidChange:0];
  }

  return v4;
}

- (void)dealloc
{
  [(UITextView *)self->_textView setDelegate:0];
  v3.receiver = self;
  v3.super_class = HKMedicalIDEditorMultilineStringCell;
  [(HKMedicalIDEditorCell *)&v3 dealloc];
}

- (void)_contentSizeCategoryDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = HKMedicalIDEditorMultilineStringCell;
  [(HKMedicalIDEditorCell *)&v7 _contentSizeCategoryDidChange:change];
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  [(UILabel *)self->_labelLabel setFont:v4];

  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UITextView *)self->_textView setFont:v5];

  font = [(UITextView *)self->_textView font];
  [(UILabel *)self->_placeholderLabel setFont:font];
}

- (void)layoutSubviews
{
  v49.receiver = self;
  v49.super_class = HKMedicalIDEditorMultilineStringCell;
  [(HKMedicalIDEditorMultilineStringCell *)&v49 layoutSubviews];
  hk_isLeftToRight = [(UIView *)self hk_isLeftToRight];
  [(HKMedicalIDEditorMultilineStringCell *)self textViewExtraMargins];
  v5 = v4;
  [(HKMedicalIDEditorMultilineStringCell *)self textViewExtraMargins];
  v6 = 0.0;
  if (v7 > 0.0)
  {
    [(HKMedicalIDEditorMultilineStringCell *)self textViewExtraMargins];
    v9 = v8;
    [(HKMedicalIDEditorMultilineStringCell *)self separatorInset];
    v6 = v9 + v10 + -16.0;
  }

  v11 = v5 + 9.0;
  if (hk_isLeftToRight)
  {
    v12 = v6 + 16.0;
    contentView = [(HKMedicalIDEditorMultilineStringCell *)self contentView];
    [contentView bounds];
    v15 = v14 - (v6 + 16.0) - 14.0;
  }

  else
  {
    contentView2 = [(HKMedicalIDEditorMultilineStringCell *)self contentView];
    [contentView2 bounds];
    v15 = v17 - (v6 + 16.0) - 14.0;

    contentView = [(HKMedicalIDEditorMultilineStringCell *)self contentView];
    [contentView bounds];
    v12 = v18 - v15 + -16.0 - v6;
  }

  [(UILabel *)self->_labelLabel sizeThatFits:v15, 100000.0];
  v20 = v19;
  v50.origin.x = v12;
  v50.origin.y = v11;
  v50.size.width = v15;
  v50.size.height = v20;
  MaxY = CGRectGetMaxY(v50);
  if (hk_isLeftToRight)
  {
    v22 = v12 + -5.0;
  }

  else
  {
    v51.origin.x = v12;
    v51.origin.y = v11;
    v51.size.width = v15;
    v51.size.height = v20;
    v22 = CGRectGetMaxX(v51) - (v15 + 10.0) + 5.0;
  }

  v48 = *&v22;
  v23 = MaxY + -4.0;
  [(UITextView *)self->_textView sizeThatFits:v15 + 10.0, 100000.0, *&v11];
  v25 = v24;
  font = [(UITextView *)self->_textView font];
  [font lineHeight];
  v28 = v27 + 20.0;

  if (v25 < v28)
  {
    v25 = v28;
  }

  font2 = [(UILabel *)self->_placeholderLabel font];
  [font2 lineHeight];
  v31 = v30;

  v32.n128_f64[0] = v12;
  v33.n128_u64[0] = v47;
  v34.n128_f64[0] = v15;
  v35.n128_f64[0] = v20;
  HKUIRectIntegralToScreenScale(v32, v33, v34, v35, v36);
  [(UILabel *)self->_labelLabel setFrame:?];
  v37.n128_u64[0] = v48;
  v38.n128_f64[0] = v23;
  v39.n128_f64[0] = v15 + 10.0;
  v40.n128_f64[0] = v25;
  HKUIRectIntegralToScreenScale(v37, v38, v39, v40, v41);
  [(UITextView *)self->_textView setFrame:?];
  v42.n128_f64[0] = v12;
  v43.n128_f64[0] = v23 + 8.0;
  v44.n128_f64[0] = v15;
  v45.n128_u64[0] = v31;
  HKUIRectIntegralToScreenScale(v42, v43, v44, v45, v46);
  [(UILabel *)self->_placeholderLabel setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(UITextView *)self->_textView frame:fits.width];
  v6 = v5;
  textView = self->_textView;
  [(UITextView *)textView bounds];
  [(UITextView *)textView sizeThatFits:CGRectGetWidth(v17), 100000.0];
  v9 = v8;
  font = [(UITextView *)self->_textView font];
  [font lineHeight];
  v12 = v11 + 20.0;

  if (v9 >= v12)
  {
    v13 = v9;
  }

  else
  {
    v13 = v12;
  }

  v14 = v6 + v13 + 23.0;
  v15 = width;
  result.height = v14;
  result.width = v15;
  return result;
}

- (double)estimatedHeightWithWidth:(double)width
{
  [(HKMedicalIDEditorMultilineStringCell *)self textViewExtraMargins];
  v5 = 16.0;
  if (v6 > 0.0)
  {
    [(HKMedicalIDEditorMultilineStringCell *)self textViewExtraMargins];
    v8 = v7;
    [(HKMedicalIDEditorMultilineStringCell *)self separatorInset];
    v5 = v8 + v9 + -16.0 + 16.0;
  }

  [(HKMedicalIDEditorMultilineStringCell *)self textViewExtraMargins];
  v11 = v10 + 9.0;
  v12 = width - v5 - 14.0;
  [(UILabel *)self->_labelLabel sizeThatFits:v12, 100000.0];
  v27.size.height = v13;
  v14 = v5 + -5.0;
  v27.origin.x = v5;
  v27.origin.y = v11;
  v27.size.width = v12;
  v15 = CGRectGetMaxY(v27) + -4.0;
  v16 = v12 + 10.0;
  [(UITextView *)self->_textView sizeThatFits:v16, 100000.0];
  v18 = v17;
  font = [(UITextView *)self->_textView font];
  [font lineHeight];
  v21 = v20 + 20.0;

  if (v18 >= v21)
  {
    v22 = v18;
  }

  else
  {
    v22 = v21;
  }

  v23 = v14;
  v24 = v15;
  v25 = v16;
  return CGRectGetMaxY(*(&v22 - 3)) + 23.0;
}

- (void)setLabel:(id)label
{
  v4 = [label copy];
  [(UILabel *)self->_labelLabel setText:v4];
}

- (void)setStringValue:(id)value
{
  textView = self->_textView;
  valueCopy = value;
  [(UITextView *)textView setText:valueCopy];
  v6 = [valueCopy length];

  placeholderLabel = self->_placeholderLabel;

  [(UILabel *)placeholderLabel setHidden:v6 != 0];
}

- (void)setPlaceholder:(id)placeholder
{
  v4 = [placeholder copy];
  [(UILabel *)self->_placeholderLabel setText:v4];
}

- (CGRect)_cursorRectForTextView:(id)view
{
  viewCopy = view;
  selectedTextRange = [viewCopy selectedTextRange];
  v6 = [selectedTextRange end];
  [viewCopy caretRectForPosition:v6];
  v8 = v7;
  v10 = v9;

  [viewCopy bounds];
  MaxX = CGRectGetMaxX(v29);
  if (MaxX < v8)
  {
    v8 = MaxX;
  }

  [viewCopy bounds];
  MaxY = CGRectGetMaxY(v30);
  if (MaxY < v10)
  {
    v10 = MaxY;
  }

  [viewCopy frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v31.origin.x = v14;
  v31.origin.y = v16;
  v31.size.width = v18;
  v31.size.height = v20;
  Width = CGRectGetWidth(v31);
  font = [(UITextView *)self->_textView font];
  [font pointSize];
  v24 = v23;

  v25 = v8;
  v26 = v10;
  v27 = Width;
  v28 = v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (void)textViewDidChangeSelection:(id)selection
{
  selectionCopy = selection;
  selectedTextRange = [selectionCopy selectedTextRange];
  isEmpty = [selectedTextRange isEmpty];

  if (isEmpty)
  {
    [(HKMedicalIDEditorMultilineStringCell *)self _cursorRectForTextView:selectionCopy];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    WeakRetained = objc_loadWeakRetained(&self->_heightChangeDelegate);
    [WeakRetained medicalIDEditorCellDidChangeSelection:self keepRectVisible:selectionCopy inView:{v7, v9, v11, v13}];
  }
}

- (void)textViewDidBeginEditing:(id)editing
{
  editingCopy = editing;
  v8.receiver = self;
  v8.super_class = HKMedicalIDEditorMultilineStringCell;
  [(HKMedicalIDEditorCell *)&v8 beginEditing];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__HKMedicalIDEditorMultilineStringCell_textViewDidBeginEditing___block_invoke;
  v6[3] = &unk_1E81B5AD0;
  v6[4] = self;
  v7 = editingCopy;
  v5 = editingCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __64__HKMedicalIDEditorMultilineStringCell_textViewDidBeginEditing___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cursorRectForTextView:*(a1 + 40)];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1104));
  [WeakRetained medicalIDEditorCellDidBeginEditing:*(a1 + 32) keepRectVisible:*(a1 + 40) inView:{v3, v5, v7, v9}];
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  [(HKMedicalIDEditorMultilineStringCell *)self setNeedsLayout];
  text = [changeCopy text];
  -[UILabel setHidden:](self->_placeholderLabel, "setHidden:", [text length] != 0);

  [changeCopy bounds];
  [changeCopy sizeThatFits:{CGRectGetWidth(v17), 100000.0}];
  if (self->_lastSeenTextViewContentHeight != v5)
  {
    self->_lastSeenTextViewContentHeight = v5;
    [(HKMedicalIDEditorMultilineStringCell *)self _cursorRectForTextView:changeCopy];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    WeakRetained = objc_loadWeakRetained(&self->_heightChangeDelegate);
    [WeakRetained medicalIDEditorCell:self didChangeHeight:changeCopy keepRectVisible:self->_lastSeenTextViewContentHeight inView:{v7, v9, v11, v13}];
  }
}

- (void)textViewDidEndEditing:(id)editing
{
  text = [editing text];
  [(HKMedicalIDEditorMultilineStringCell *)self setStringValue:text];

  [(HKMedicalIDEditorCell *)self valueDidChange];
}

- (HKMedicalIDEditorCellHeightChangeDelegate)heightChangeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_heightChangeDelegate);

  return WeakRetained;
}

- (UIEdgeInsets)textViewExtraMargins
{
  top = self->_textViewExtraMargins.top;
  left = self->_textViewExtraMargins.left;
  bottom = self->_textViewExtraMargins.bottom;
  right = self->_textViewExtraMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end