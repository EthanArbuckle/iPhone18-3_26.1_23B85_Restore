@interface FBKQuestionAnswerCell
- (BOOL)shouldAllowEditing;
- (FBKBugFormEditorDelegate)bugFormEditorDelegate;
- (FBKQuestionAnswerCell)initWithCoder:(id)a3;
- (FBKQuestionAnswerCell)initWithFrame:(CGRect)a3;
- (FBKQuestionAnswerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (FBKQuestionCellTextView)answerTextView;
- (NSLayoutConstraint)answerTextViewLeadingConstraint;
- (NSLayoutConstraint)answerTextViewTopConstraint;
- (NSLayoutConstraint)answerTextViewTrailingConstraint;
- (UIImageView)answerTextViewAccessoryImageView;
- (UILabel)questionLabel;
- (id)accessibilityHint;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)awakeFromNib;
- (void)beginEditingQuestion;
- (void)commonInit;
- (void)endEditingQuestion;
- (void)hideErrorArrow;
- (void)sanitizeAnswer:(id)a3;
- (void)saveAnswer;
- (void)setAnswer:(id)a3;
- (void)setQuestion:(id)a3;
- (void)showErrorArrow;
- (void)updateErrorArrow;
@end

@implementation FBKQuestionAnswerCell

- (FBKQuestionAnswerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = FBKQuestionAnswerCell;
  v4 = [(FBKQuestionAnswerCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(FBKQuestionAnswerCell *)v4 commonInit];
  }

  return v5;
}

- (FBKQuestionAnswerCell)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = FBKQuestionAnswerCell;
  v3 = [(FBKQuestionAnswerCell *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(FBKQuestionAnswerCell *)v3 commonInit];
  }

  return v4;
}

- (FBKQuestionAnswerCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = FBKQuestionAnswerCell;
  v3 = [(FBKQuestionAnswerCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(FBKQuestionAnswerCell *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  self->_showError = 0;
  v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v4 = MEMORY[0x1E69DCAB8];
  v5 = [MEMORY[0x1E69DCAD8] configurationWithWeight:7];
  v6 = [v4 systemImageNamed:@"arrow.forward.circle.fill" withConfiguration:v5];
  v7 = [v3 initWithImage:v6];
  errorArrow = self->_errorArrow;
  self->_errorArrow = v7;

  [(UIImageView *)self->_errorArrow setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_errorArrow setContentMode:1];
  WeakRetained = objc_loadWeakRetained(&self->_answerTextView);
  v10 = [WeakRetained textContainer];
  [v10 setLineBreakMode:0];

  self->_hasPlaceholder = 1;
  self->_hasKeyboardFocus = 0;
  v11 = [(FBKQuestionAnswerCell *)self questionLabel];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(FBKQuestionAnswerCell *)self answerTextView];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  v13 = [(FBKQuestionAnswerCell *)self answerTextView];
  [v13 setEditable:0];

  v14 = [(FBKQuestionAnswerCell *)self answerTextView];
  [v14 setSelectable:0];

  v15 = [(FBKQuestionAnswerCell *)self answerTextView];
  [v15 setUserInteractionEnabled:0];
}

- (void)awakeFromNib
{
  v19.receiver = self;
  v19.super_class = FBKQuestionAnswerCell;
  [(FBKQuestionAnswerCell *)&v19 awakeFromNib];
  [(FBKQuestionAnswerCell *)self updateErrorArrow];
  v3 = [MEMORY[0x1E69DC888] labelColor];
  v4 = [(FBKQuestionAnswerCell *)self questionLabel];
  [v4 setTextColor:v3];

  v5 = [(FBKQuestionAnswerCell *)self questionLabel];
  [v5 setIsAccessibilityElement:0];

  v6 = [(FBKQuestionAnswerCell *)self answerTextView];
  [v6 setIsAccessibilityElement:0];

  v7 = [MEMORY[0x1E69DC888] systemRedColor];
  v8 = [(FBKQuestionAnswerCell *)self errorArrow];
  [v8 setTintColor:v7];

  v9 = [(FBKQuestionAnswerCell *)self questionLabel];
  [v9 setAdjustsFontForContentSizeCategory:1];

  v10 = [(FBKQuestionAnswerCell *)self answerTextView];
  [v10 setAdjustsFontForContentSizeCategory:1];

  [(FBKQuestionAnswerCell *)self setIsAccessibilityElement:1];
  v11 = [(FBKQuestionAnswerCell *)self answerTextView];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(FBKQuestionAnswerCell *)self answerTextView];
  v13 = [v12 heightAnchor];
  v14 = [v13 constraintGreaterThanOrEqualToConstant:75.0];
  [(FBKQuestionAnswerCell *)self setAnswerHeightConstraint:v14];

  v15 = [(FBKQuestionAnswerCell *)self answerTextView];
  v16 = [v15 topAnchor];
  v17 = [(FBKQuestionAnswerCell *)self topAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  [(FBKQuestionAnswerCell *)self setAnswerTopAnchorConstraint:v18];
}

- (void)updateErrorArrow
{
  if (self->_showError)
  {
    [(FBKQuestionAnswerCell *)self showErrorArrow];
  }

  else
  {
    [(FBKQuestionAnswerCell *)self hideErrorArrow];
  }
}

- (void)showErrorArrow
{
  v44[1] = *MEMORY[0x1E69E9840];
  v3 = [(FBKQuestionAnswerCell *)self errorArrow];
  if (!v3)
  {
LABEL_10:
    v37 = *MEMORY[0x1E69E9840];
    return;
  }

  v38 = v3;
  v4 = [(FBKQuestionAnswerCell *)self errorArrow];
  v5 = [v4 superview];
  if (!v5)
  {
    v7 = [(FBKQuestionAnswerCell *)self questionLabel];

    if (v7)
    {
      v8 = [(FBKQuestionAnswerCell *)self contentView];
      v9 = [(FBKQuestionAnswerCell *)self errorArrow];
      [v8 addSubview:v9];

      v10 = [MEMORY[0x1E695DF70] array];
      v11 = MEMORY[0x1E696ACD8];
      v43 = @"margin";
      v12 = MEMORY[0x1E696AD98];
      [(FBKQuestionAnswerCell *)self separatorInset];
      v14 = v13;
      [(FBKQuestionAnswerCell *)self safeAreaInsets];
      v16 = [v12 numberWithDouble:v14 - v15];
      v44[0] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
      v41[0] = @"arrow";
      v18 = [(FBKQuestionAnswerCell *)self errorArrow];
      v41[1] = @"q";
      v42[0] = v18;
      v19 = [(FBKQuestionAnswerCell *)self questionLabel];
      v42[1] = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
      v21 = [v11 constraintsWithVisualFormat:@"|-margin-[arrow(18)]-8-[q]" options:0 metrics:v17 views:v20];

      [v10 addObjectsFromArray:v21];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v22 = MEMORY[0x1E696ACD8];
        v39[0] = @"arrow";
        v23 = [(FBKQuestionAnswerCell *)self errorArrow];
        v39[1] = @"a";
        v40[0] = v23;
        v24 = [(FBKQuestionAnswerCell *)self answerTextView];
        v40[1] = v24;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
        v26 = [v22 constraintsWithVisualFormat:@"[arrow]-8-[a]" options:0 metrics:0 views:v25];

        v27 = [v26 firstObject];
        LODWORD(v28) = 1148829696;
        [v27 setPriority:v28];

        [v10 addObjectsFromArray:v26];
      }

      v29 = MEMORY[0x1E696ACD8];
      v30 = [(FBKQuestionAnswerCell *)self errorArrow];
      v31 = [v29 constraintWithItem:v30 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:17.0];
      [v10 addObject:v31];

      v32 = [(FBKQuestionAnswerCell *)self contentView];
      v33 = MEMORY[0x1E696ACD8];
      v34 = [(FBKQuestionAnswerCell *)self errorArrow];
      v35 = [v33 constraintWithItem:v34 attribute:10 relatedBy:0 toItem:v32 attribute:10 multiplier:1.0 constant:0.0];
      [v10 addObject:v35];

      v36 = [(FBKQuestionAnswerCell *)self contentView];
      [v36 addConstraints:v10];
    }

    goto LABEL_10;
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)hideErrorArrow
{
  v3 = [(FBKQuestionAnswerCell *)self errorArrow];
  if (v3)
  {
    v4 = v3;
    v5 = [(FBKQuestionAnswerCell *)self errorArrow];
    v6 = [v5 superview];

    if (v6)
    {
      v7 = [(FBKQuestionAnswerCell *)self errorArrow];
      [v7 removeFromSuperview];
    }
  }
}

- (void)setQuestion:(id)a3
{
  v16 = a3;
  objc_storeStrong(&self->_question, a3);
  v5 = [(FBKQuestionAnswerCell *)self answerTextView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if ([(FBKQuestion *)self->_question answerType])
    {
      if ([(FBKQuestion *)self->_question answerType]== 1)
      {
        v7 = [(FBKQuestionAnswerCell *)self answerTextView];
        [v7 setCharacterLimit:4096];

        v8 = [(FBKQuestionAnswerCell *)self answerHeightConstraint];
        [v8 setActive:1];

        v9 = [v16 text];
        v10 = [v9 isEqualToString:&stru_1F5F14EC0];

        v11 = [(FBKQuestionAnswerCell *)self answerTopAnchorConstraint];
        v12 = v11;
        if (v10)
        {
          v13 = 1;
LABEL_9:
          [v11 setActive:v13];

          goto LABEL_10;
        }

LABEL_8:
        v13 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      v14 = [(FBKQuestionAnswerCell *)self answerTextView];
      [v14 setCharacterLimit:255];
    }

    v15 = [(FBKQuestionAnswerCell *)self answerHeightConstraint];
    [v15 setActive:0];

    v11 = [(FBKQuestionAnswerCell *)self answerTopAnchorConstraint];
    v12 = v11;
    goto LABEL_8;
  }

LABEL_10:
  [(FBKQuestionAnswerCell *)self setNeedsLayout];
}

- (void)setAnswer:(id)a3
{
  v12 = a3;
  objc_storeStrong(&self->_answer, a3);
  self->_hasPlaceholder = 1;
  v5 = [v12 value];
  if (v5)
  {
    v6 = v5;
    v7 = [v12 value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [v12 value];
      self->_hasPlaceholder = [v9 length] == 0;
    }
  }

  if (self->_hasPlaceholder)
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v10 = ;
  v11 = [(FBKQuestionAnswerCell *)self answerTextView];
  [v11 setTextColor:v10];
}

- (BOOL)shouldAllowEditing
{
  v3 = [(FBKQuestionAnswerCell *)self question];
  if ([v3 answerType])
  {
    v4 = [(FBKQuestionAnswerCell *)self question];
    if ([v4 answerType] == 1)
    {
      v5 = ![(FBKQuestionAnswerCell *)self hasKeyboardFocus];
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    v5 = ![(FBKQuestionAnswerCell *)self hasKeyboardFocus];
  }

  return v5;
}

- (void)beginEditingQuestion
{
  if ([(FBKQuestionAnswerCell *)self shouldAllowEditing])
  {
    v3 = [(FBKQuestionAnswerCell *)self question];
    v4 = [v3 canDisplayChoiceAsACell];

    if ((v4 & 1) == 0)
    {
      v5 = [(FBKQuestionAnswerCell *)self answerTextView];
      [v5 setEditable:1];

      v6 = [(FBKQuestionAnswerCell *)self answerTextView];
      [v6 setUserInteractionEnabled:1];

      v7 = [(FBKQuestionAnswerCell *)self answerTextView];
      [v7 setIsAccessibilityElement:1];

      [(FBKQuestionAnswerCell *)self setIsAccessibilityElement:0];
      if ([(FBKQuestionAnswerCell *)self hasPlaceholder])
      {
        v8 = [(FBKQuestionAnswerCell *)self answerTextView];
        [v8 setText:&stru_1F5F14EC0];

        v9 = [MEMORY[0x1E69DC888] labelColor];
        v10 = [(FBKQuestionAnswerCell *)self answerTextView];
        [v10 setTextColor:v9];

        [(FBKQuestionAnswerCell *)self setHasPlaceholder:0];
      }

      [MEMORY[0x1E69DD250] setAnimationsEnabled:0];
      v11 = [(FBKQuestionAnswerCell *)self answerTextView];
      [v11 becomeFirstResponder];

      [MEMORY[0x1E69DD250] setAnimationsEnabled:1];
      [(FBKQuestionAnswerCell *)self setHasKeyboardFocus:1];

      [(FBKQuestionAnswerCell *)self setNeedsLayout];
    }
  }
}

- (void)saveAnswer
{
  v3 = [(FBKQuestionAnswerCell *)self answerTextView];
  v4 = [v3 text];
  v5 = [(FBKQuestionAnswerCell *)self answerTextView];
  v10 = [v4 fbk_truncate:{objc_msgSend(v5, "characterLimit")}];

  v6 = [(FBKQuestionAnswerCell *)self answer];
  [v6 setValue:v10];

  v7 = [(FBKQuestionAnswerCell *)self answer];
  [(FBKQuestionAnswerCell *)self sanitizeAnswer:v7];

  v8 = [(FBKQuestionAnswerCell *)self bugFormEditorDelegate];
  v9 = [(FBKQuestionAnswerCell *)self question];
  [v8 answerDidChangeForQuestion:v9];
}

- (void)endEditingQuestion
{
  [(FBKQuestionAnswerCell *)self saveAnswer];
  v3 = [(FBKQuestionAnswerCell *)self answer];
  v4 = [v3 value];
  if (v4)
  {
    v5 = v4;
    v6 = [(FBKQuestionAnswerCell *)self answer];
    v7 = [v6 value];
    v8 = [v7 length];

    if (v8)
    {
      v9 = [MEMORY[0x1E69DC888] labelColor];
      v10 = [(FBKQuestionAnswerCell *)self answerTextView];
      [v10 setTextColor:v9];
      goto LABEL_11;
    }
  }

  else
  {
  }

  [(FBKQuestionAnswerCell *)self setHasPlaceholder:1];
  v11 = [(FBKQuestionAnswerCell *)self question];
  v12 = [v11 placeholder];
  if (!v12)
  {

    goto LABEL_9;
  }

  v13 = v12;
  v14 = [(FBKQuestionAnswerCell *)self question];
  v15 = [v14 placeholder];
  v16 = [v15 length];

  if (!v16)
  {
LABEL_9:
    v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"TEXT_ANSWER_PLACEHOLDER" value:&stru_1F5F14EC0 table:0];
    goto LABEL_10;
  }

  v17 = [(FBKQuestionAnswerCell *)self question];
  v18 = [v17 placeholder];
LABEL_10:
  v19 = v18;
  v20 = [(FBKQuestionAnswerCell *)self answerTextView];
  [v20 setText:v19];

  v21 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  v22 = [(FBKQuestionAnswerCell *)self answerTextView];
  [v22 setTextColor:v21];

  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v10 = [(FBKQuestionAnswerCell *)self answerTextView];
  [v10 setFont:v9];
LABEL_11:

  v23 = [(FBKQuestionAnswerCell *)self answerTextView];
  [v23 resignFirstResponder];

  [(FBKQuestionAnswerCell *)self setHasKeyboardFocus:0];
  v24 = [(FBKQuestionAnswerCell *)self answerTextView];
  [v24 setEditable:0];

  v25 = [(FBKQuestionAnswerCell *)self answerTextView];
  [v25 setUserInteractionEnabled:0];

  v26 = [(FBKQuestionAnswerCell *)self answerTextView];
  [v26 setIsAccessibilityElement:0];

  [(FBKQuestionAnswerCell *)self setIsAccessibilityElement:1];

  [(FBKQuestionAnswerCell *)self setNeedsLayout];
}

- (void)sanitizeAnswer:(id)a3
{
  v10 = a3;
  v3 = [v10 value];
  if (v3)
  {
    v4 = v3;
    v5 = [v10 value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [v10 value];
      v8 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v9 = [v7 stringByTrimmingCharactersInSet:v8];
      [v10 setValue:v9];
    }
  }
}

- (id)accessibilityLabel
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(FBKQuestionAnswerCell *)self questionLabel];
  v5 = [v4 text];
  v6 = [(FBKQuestionAnswerCell *)self answerTextView];
  v7 = [v6 text];
  v8 = [v3 stringWithFormat:@"%@, %@", v5, v7];

  return v8;
}

- (id)accessibilityIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(FBKQuestionAnswerCell *)self questionLabel];
  v4 = [v3 text];
  v5 = [v2 stringWithFormat:@"FBKEditor@%@", v4];

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = FBKQuestionAnswerCell;
  return *MEMORY[0x1E69DD9B8] | [(FBKQuestionAnswerCell *)&v3 accessibilityTraits];
}

- (id)accessibilityHint
{
  v2 = [(FBKQuestionAnswerCell *)self shouldAllowEditing];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (v2)
  {
    v5 = @"ANSWER_CELL_HINT_EDIT";
  }

  else
  {
    v5 = @"ANSWER_CELL_HINT_CHOOSE";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_1F5F14EC0 table:0];

  return v6;
}

- (UILabel)questionLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_questionLabel);

  return WeakRetained;
}

- (FBKQuestionCellTextView)answerTextView
{
  WeakRetained = objc_loadWeakRetained(&self->_answerTextView);

  return WeakRetained;
}

- (UIImageView)answerTextViewAccessoryImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_answerTextViewAccessoryImageView);

  return WeakRetained;
}

- (NSLayoutConstraint)answerTextViewTopConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_answerTextViewTopConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)answerTextViewLeadingConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_answerTextViewLeadingConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)answerTextViewTrailingConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_answerTextViewTrailingConstraint);

  return WeakRetained;
}

- (FBKBugFormEditorDelegate)bugFormEditorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_bugFormEditorDelegate);

  return WeakRetained;
}

@end