@interface FBKQuestionAnswerCell
- (BOOL)shouldAllowEditing;
- (FBKBugFormEditorDelegate)bugFormEditorDelegate;
- (FBKQuestionAnswerCell)initWithCoder:(id)coder;
- (FBKQuestionAnswerCell)initWithFrame:(CGRect)frame;
- (FBKQuestionAnswerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
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
- (void)sanitizeAnswer:(id)answer;
- (void)saveAnswer;
- (void)setAnswer:(id)answer;
- (void)setQuestion:(id)question;
- (void)showErrorArrow;
- (void)updateErrorArrow;
@end

@implementation FBKQuestionAnswerCell

- (FBKQuestionAnswerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = FBKQuestionAnswerCell;
  v4 = [(FBKQuestionAnswerCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(FBKQuestionAnswerCell *)v4 commonInit];
  }

  return v5;
}

- (FBKQuestionAnswerCell)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = FBKQuestionAnswerCell;
  v3 = [(FBKQuestionAnswerCell *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(FBKQuestionAnswerCell *)v3 commonInit];
  }

  return v4;
}

- (FBKQuestionAnswerCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = FBKQuestionAnswerCell;
  v3 = [(FBKQuestionAnswerCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  textContainer = [WeakRetained textContainer];
  [textContainer setLineBreakMode:0];

  self->_hasPlaceholder = 1;
  self->_hasKeyboardFocus = 0;
  questionLabel = [(FBKQuestionAnswerCell *)self questionLabel];
  [questionLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  answerTextView = [(FBKQuestionAnswerCell *)self answerTextView];
  [answerTextView setTranslatesAutoresizingMaskIntoConstraints:0];

  answerTextView2 = [(FBKQuestionAnswerCell *)self answerTextView];
  [answerTextView2 setEditable:0];

  answerTextView3 = [(FBKQuestionAnswerCell *)self answerTextView];
  [answerTextView3 setSelectable:0];

  answerTextView4 = [(FBKQuestionAnswerCell *)self answerTextView];
  [answerTextView4 setUserInteractionEnabled:0];
}

- (void)awakeFromNib
{
  v19.receiver = self;
  v19.super_class = FBKQuestionAnswerCell;
  [(FBKQuestionAnswerCell *)&v19 awakeFromNib];
  [(FBKQuestionAnswerCell *)self updateErrorArrow];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  questionLabel = [(FBKQuestionAnswerCell *)self questionLabel];
  [questionLabel setTextColor:labelColor];

  questionLabel2 = [(FBKQuestionAnswerCell *)self questionLabel];
  [questionLabel2 setIsAccessibilityElement:0];

  answerTextView = [(FBKQuestionAnswerCell *)self answerTextView];
  [answerTextView setIsAccessibilityElement:0];

  systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
  errorArrow = [(FBKQuestionAnswerCell *)self errorArrow];
  [errorArrow setTintColor:systemRedColor];

  questionLabel3 = [(FBKQuestionAnswerCell *)self questionLabel];
  [questionLabel3 setAdjustsFontForContentSizeCategory:1];

  answerTextView2 = [(FBKQuestionAnswerCell *)self answerTextView];
  [answerTextView2 setAdjustsFontForContentSizeCategory:1];

  [(FBKQuestionAnswerCell *)self setIsAccessibilityElement:1];
  answerTextView3 = [(FBKQuestionAnswerCell *)self answerTextView];
  [answerTextView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  answerTextView4 = [(FBKQuestionAnswerCell *)self answerTextView];
  heightAnchor = [answerTextView4 heightAnchor];
  v14 = [heightAnchor constraintGreaterThanOrEqualToConstant:75.0];
  [(FBKQuestionAnswerCell *)self setAnswerHeightConstraint:v14];

  answerTextView5 = [(FBKQuestionAnswerCell *)self answerTextView];
  topAnchor = [answerTextView5 topAnchor];
  topAnchor2 = [(FBKQuestionAnswerCell *)self topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
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
  errorArrow = [(FBKQuestionAnswerCell *)self errorArrow];
  if (!errorArrow)
  {
LABEL_10:
    v37 = *MEMORY[0x1E69E9840];
    return;
  }

  v38 = errorArrow;
  errorArrow2 = [(FBKQuestionAnswerCell *)self errorArrow];
  superview = [errorArrow2 superview];
  if (!superview)
  {
    questionLabel = [(FBKQuestionAnswerCell *)self questionLabel];

    if (questionLabel)
    {
      contentView = [(FBKQuestionAnswerCell *)self contentView];
      errorArrow3 = [(FBKQuestionAnswerCell *)self errorArrow];
      [contentView addSubview:errorArrow3];

      array = [MEMORY[0x1E695DF70] array];
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
      errorArrow4 = [(FBKQuestionAnswerCell *)self errorArrow];
      v41[1] = @"q";
      v42[0] = errorArrow4;
      questionLabel2 = [(FBKQuestionAnswerCell *)self questionLabel];
      v42[1] = questionLabel2;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
      v21 = [v11 constraintsWithVisualFormat:@"|-margin-[arrow(18)]-8-[q]" options:0 metrics:v17 views:v20];

      [array addObjectsFromArray:v21];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v22 = MEMORY[0x1E696ACD8];
        v39[0] = @"arrow";
        errorArrow5 = [(FBKQuestionAnswerCell *)self errorArrow];
        v39[1] = @"a";
        v40[0] = errorArrow5;
        answerTextView = [(FBKQuestionAnswerCell *)self answerTextView];
        v40[1] = answerTextView;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
        v26 = [v22 constraintsWithVisualFormat:@"[arrow]-8-[a]" options:0 metrics:0 views:v25];

        firstObject = [v26 firstObject];
        LODWORD(v28) = 1148829696;
        [firstObject setPriority:v28];

        [array addObjectsFromArray:v26];
      }

      v29 = MEMORY[0x1E696ACD8];
      errorArrow6 = [(FBKQuestionAnswerCell *)self errorArrow];
      v31 = [v29 constraintWithItem:errorArrow6 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:17.0];
      [array addObject:v31];

      contentView2 = [(FBKQuestionAnswerCell *)self contentView];
      v33 = MEMORY[0x1E696ACD8];
      errorArrow7 = [(FBKQuestionAnswerCell *)self errorArrow];
      v35 = [v33 constraintWithItem:errorArrow7 attribute:10 relatedBy:0 toItem:contentView2 attribute:10 multiplier:1.0 constant:0.0];
      [array addObject:v35];

      contentView3 = [(FBKQuestionAnswerCell *)self contentView];
      [contentView3 addConstraints:array];
    }

    goto LABEL_10;
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)hideErrorArrow
{
  errorArrow = [(FBKQuestionAnswerCell *)self errorArrow];
  if (errorArrow)
  {
    v4 = errorArrow;
    errorArrow2 = [(FBKQuestionAnswerCell *)self errorArrow];
    superview = [errorArrow2 superview];

    if (superview)
    {
      errorArrow3 = [(FBKQuestionAnswerCell *)self errorArrow];
      [errorArrow3 removeFromSuperview];
    }
  }
}

- (void)setQuestion:(id)question
{
  questionCopy = question;
  objc_storeStrong(&self->_question, question);
  answerTextView = [(FBKQuestionAnswerCell *)self answerTextView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if ([(FBKQuestion *)self->_question answerType])
    {
      if ([(FBKQuestion *)self->_question answerType]== 1)
      {
        answerTextView2 = [(FBKQuestionAnswerCell *)self answerTextView];
        [answerTextView2 setCharacterLimit:4096];

        answerHeightConstraint = [(FBKQuestionAnswerCell *)self answerHeightConstraint];
        [answerHeightConstraint setActive:1];

        text = [questionCopy text];
        v10 = [text isEqualToString:&stru_1F5F14EC0];

        answerTopAnchorConstraint = [(FBKQuestionAnswerCell *)self answerTopAnchorConstraint];
        v12 = answerTopAnchorConstraint;
        if (v10)
        {
          v13 = 1;
LABEL_9:
          [answerTopAnchorConstraint setActive:v13];

          goto LABEL_10;
        }

LABEL_8:
        v13 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      answerTextView3 = [(FBKQuestionAnswerCell *)self answerTextView];
      [answerTextView3 setCharacterLimit:255];
    }

    answerHeightConstraint2 = [(FBKQuestionAnswerCell *)self answerHeightConstraint];
    [answerHeightConstraint2 setActive:0];

    answerTopAnchorConstraint = [(FBKQuestionAnswerCell *)self answerTopAnchorConstraint];
    v12 = answerTopAnchorConstraint;
    goto LABEL_8;
  }

LABEL_10:
  [(FBKQuestionAnswerCell *)self setNeedsLayout];
}

- (void)setAnswer:(id)answer
{
  answerCopy = answer;
  objc_storeStrong(&self->_answer, answer);
  self->_hasPlaceholder = 1;
  value = [answerCopy value];
  if (value)
  {
    v6 = value;
    value2 = [answerCopy value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      value3 = [answerCopy value];
      self->_hasPlaceholder = [value3 length] == 0;
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
  answerTextView = [(FBKQuestionAnswerCell *)self answerTextView];
  [answerTextView setTextColor:v10];
}

- (BOOL)shouldAllowEditing
{
  question = [(FBKQuestionAnswerCell *)self question];
  if ([question answerType])
  {
    question2 = [(FBKQuestionAnswerCell *)self question];
    if ([question2 answerType] == 1)
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
    question = [(FBKQuestionAnswerCell *)self question];
    canDisplayChoiceAsACell = [question canDisplayChoiceAsACell];

    if ((canDisplayChoiceAsACell & 1) == 0)
    {
      answerTextView = [(FBKQuestionAnswerCell *)self answerTextView];
      [answerTextView setEditable:1];

      answerTextView2 = [(FBKQuestionAnswerCell *)self answerTextView];
      [answerTextView2 setUserInteractionEnabled:1];

      answerTextView3 = [(FBKQuestionAnswerCell *)self answerTextView];
      [answerTextView3 setIsAccessibilityElement:1];

      [(FBKQuestionAnswerCell *)self setIsAccessibilityElement:0];
      if ([(FBKQuestionAnswerCell *)self hasPlaceholder])
      {
        answerTextView4 = [(FBKQuestionAnswerCell *)self answerTextView];
        [answerTextView4 setText:&stru_1F5F14EC0];

        labelColor = [MEMORY[0x1E69DC888] labelColor];
        answerTextView5 = [(FBKQuestionAnswerCell *)self answerTextView];
        [answerTextView5 setTextColor:labelColor];

        [(FBKQuestionAnswerCell *)self setHasPlaceholder:0];
      }

      [MEMORY[0x1E69DD250] setAnimationsEnabled:0];
      answerTextView6 = [(FBKQuestionAnswerCell *)self answerTextView];
      [answerTextView6 becomeFirstResponder];

      [MEMORY[0x1E69DD250] setAnimationsEnabled:1];
      [(FBKQuestionAnswerCell *)self setHasKeyboardFocus:1];

      [(FBKQuestionAnswerCell *)self setNeedsLayout];
    }
  }
}

- (void)saveAnswer
{
  answerTextView = [(FBKQuestionAnswerCell *)self answerTextView];
  text = [answerTextView text];
  answerTextView2 = [(FBKQuestionAnswerCell *)self answerTextView];
  v10 = [text fbk_truncate:{objc_msgSend(answerTextView2, "characterLimit")}];

  answer = [(FBKQuestionAnswerCell *)self answer];
  [answer setValue:v10];

  answer2 = [(FBKQuestionAnswerCell *)self answer];
  [(FBKQuestionAnswerCell *)self sanitizeAnswer:answer2];

  bugFormEditorDelegate = [(FBKQuestionAnswerCell *)self bugFormEditorDelegate];
  question = [(FBKQuestionAnswerCell *)self question];
  [bugFormEditorDelegate answerDidChangeForQuestion:question];
}

- (void)endEditingQuestion
{
  [(FBKQuestionAnswerCell *)self saveAnswer];
  answer = [(FBKQuestionAnswerCell *)self answer];
  value = [answer value];
  if (value)
  {
    v5 = value;
    answer2 = [(FBKQuestionAnswerCell *)self answer];
    value2 = [answer2 value];
    v8 = [value2 length];

    if (v8)
    {
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      answerTextView = [(FBKQuestionAnswerCell *)self answerTextView];
      [answerTextView setTextColor:labelColor];
      goto LABEL_11;
    }
  }

  else
  {
  }

  [(FBKQuestionAnswerCell *)self setHasPlaceholder:1];
  question = [(FBKQuestionAnswerCell *)self question];
  placeholder = [question placeholder];
  if (!placeholder)
  {

    goto LABEL_9;
  }

  v13 = placeholder;
  question2 = [(FBKQuestionAnswerCell *)self question];
  placeholder2 = [question2 placeholder];
  v16 = [placeholder2 length];

  if (!v16)
  {
LABEL_9:
    question3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    placeholder3 = [question3 localizedStringForKey:@"TEXT_ANSWER_PLACEHOLDER" value:&stru_1F5F14EC0 table:0];
    goto LABEL_10;
  }

  question3 = [(FBKQuestionAnswerCell *)self question];
  placeholder3 = [question3 placeholder];
LABEL_10:
  v19 = placeholder3;
  answerTextView2 = [(FBKQuestionAnswerCell *)self answerTextView];
  [answerTextView2 setText:v19];

  tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  answerTextView3 = [(FBKQuestionAnswerCell *)self answerTextView];
  [answerTextView3 setTextColor:tertiaryLabelColor];

  labelColor = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  answerTextView = [(FBKQuestionAnswerCell *)self answerTextView];
  [answerTextView setFont:labelColor];
LABEL_11:

  answerTextView4 = [(FBKQuestionAnswerCell *)self answerTextView];
  [answerTextView4 resignFirstResponder];

  [(FBKQuestionAnswerCell *)self setHasKeyboardFocus:0];
  answerTextView5 = [(FBKQuestionAnswerCell *)self answerTextView];
  [answerTextView5 setEditable:0];

  answerTextView6 = [(FBKQuestionAnswerCell *)self answerTextView];
  [answerTextView6 setUserInteractionEnabled:0];

  answerTextView7 = [(FBKQuestionAnswerCell *)self answerTextView];
  [answerTextView7 setIsAccessibilityElement:0];

  [(FBKQuestionAnswerCell *)self setIsAccessibilityElement:1];

  [(FBKQuestionAnswerCell *)self setNeedsLayout];
}

- (void)sanitizeAnswer:(id)answer
{
  answerCopy = answer;
  value = [answerCopy value];
  if (value)
  {
    v4 = value;
    value2 = [answerCopy value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      value3 = [answerCopy value];
      whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v9 = [value3 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
      [answerCopy setValue:v9];
    }
  }
}

- (id)accessibilityLabel
{
  v3 = MEMORY[0x1E696AEC0];
  questionLabel = [(FBKQuestionAnswerCell *)self questionLabel];
  text = [questionLabel text];
  answerTextView = [(FBKQuestionAnswerCell *)self answerTextView];
  text2 = [answerTextView text];
  v8 = [v3 stringWithFormat:@"%@, %@", text, text2];

  return v8;
}

- (id)accessibilityIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  questionLabel = [(FBKQuestionAnswerCell *)self questionLabel];
  text = [questionLabel text];
  v5 = [v2 stringWithFormat:@"FBKEditor@%@", text];

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
  shouldAllowEditing = [(FBKQuestionAnswerCell *)self shouldAllowEditing];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (shouldAllowEditing)
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