@interface CKEditableSearchResultCell
- (void)_ck_setEditing:(BOOL)editing;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setSelected:(BOOL)selected;
@end

@implementation CKEditableSearchResultCell

- (void)_ck_setEditing:(BOOL)editing
{
  if (self->__ck_editing != editing)
  {
    self->__ck_editing = editing;
    if (editing)
    {
      v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      contentView = [(CKEditableSearchResultCell *)self contentView];
      [contentView addSubview:v6];

      [(CKEditableSearchResultCell *)self setCheckmarkView:v6];
      [(CKEditableSearchResultCell *)self setSelected:0];
    }

    else
    {
      checkmarkView = [(CKEditableSearchResultCell *)self checkmarkView];
      [checkmarkView removeFromSuperview];

      [(CKEditableSearchResultCell *)self setCheckmarkView:0];
    }

    [(CKEditableSearchResultCell *)self setNeedsLayout];
  }
}

- (void)setSelected:(BOOL)selected
{
  v17[3] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = CKEditableSearchResultCell;
  [(CKEditableSearchResultCell *)&v16 setSelected:?];
  v5 = MEMORY[0x1E69DCAD8];
  systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
  v17[0] = systemWhiteColor;
  systemWhiteColor2 = [MEMORY[0x1E69DC888] systemWhiteColor];
  v17[1] = systemWhiteColor2;
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  v17[2] = systemBlueColor;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
  v10 = [v5 _configurationWithHierarchicalColors:v9];

  if (selected)
  {
    v11 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"checkmark.circle.fill"];
    v12 = [v11 imageWithSymbolConfiguration:v10];
  }

  else
  {
    v11 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"circle"];
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    v14 = [v11 imageWithTintColor:tertiaryLabelColor];
    v12 = [v14 imageWithRenderingMode:1];
  }

  checkmarkView = [(CKEditableSearchResultCell *)self checkmarkView];
  [checkmarkView setImage:v12];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CKEditableSearchResultCell;
  [(CKEditableSearchResultCell *)&v4 layoutSubviews];
  checkmarkView = [(CKEditableSearchResultCell *)self checkmarkView];
  [checkmarkView setHighlighted:{-[CKEditableSearchResultCell isSelected](self, "isSelected")}];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKEditableSearchResultCell;
  [(CKEditableSearchResultCell *)&v3 prepareForReuse];
  [(CKEditableSearchResultCell *)self _ck_setEditing:0];
}

@end