@interface CKEditableSearchResultCell
- (void)_ck_setEditing:(BOOL)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setSelected:(BOOL)a3;
@end

@implementation CKEditableSearchResultCell

- (void)_ck_setEditing:(BOOL)a3
{
  if (self->__ck_editing != a3)
  {
    self->__ck_editing = a3;
    if (a3)
    {
      v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      v7 = [(CKEditableSearchResultCell *)self contentView];
      [v7 addSubview:v6];

      [(CKEditableSearchResultCell *)self setCheckmarkView:v6];
      [(CKEditableSearchResultCell *)self setSelected:0];
    }

    else
    {
      v8 = [(CKEditableSearchResultCell *)self checkmarkView];
      [v8 removeFromSuperview];

      [(CKEditableSearchResultCell *)self setCheckmarkView:0];
    }

    [(CKEditableSearchResultCell *)self setNeedsLayout];
  }
}

- (void)setSelected:(BOOL)a3
{
  v17[3] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = CKEditableSearchResultCell;
  [(CKEditableSearchResultCell *)&v16 setSelected:?];
  v5 = MEMORY[0x1E69DCAD8];
  v6 = [MEMORY[0x1E69DC888] systemWhiteColor];
  v17[0] = v6;
  v7 = [MEMORY[0x1E69DC888] systemWhiteColor];
  v17[1] = v7;
  v8 = [MEMORY[0x1E69DC888] systemBlueColor];
  v17[2] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
  v10 = [v5 _configurationWithHierarchicalColors:v9];

  if (a3)
  {
    v11 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"checkmark.circle.fill"];
    v12 = [v11 imageWithSymbolConfiguration:v10];
  }

  else
  {
    v11 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"circle"];
    v13 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    v14 = [v11 imageWithTintColor:v13];
    v12 = [v14 imageWithRenderingMode:1];
  }

  v15 = [(CKEditableSearchResultCell *)self checkmarkView];
  [v15 setImage:v12];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CKEditableSearchResultCell;
  [(CKEditableSearchResultCell *)&v4 layoutSubviews];
  v3 = [(CKEditableSearchResultCell *)self checkmarkView];
  [v3 setHighlighted:{-[CKEditableSearchResultCell isSelected](self, "isSelected")}];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKEditableSearchResultCell;
  [(CKEditableSearchResultCell *)&v3 prepareForReuse];
  [(CKEditableSearchResultCell *)self _ck_setEditing:0];
}

@end