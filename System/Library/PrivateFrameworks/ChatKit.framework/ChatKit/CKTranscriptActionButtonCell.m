@interface CKTranscriptActionButtonCell
+ (CGSize)sizeThatFits:(CGSize)a3 attributedText:(id)a4 displayScale:(double)a5;
- (CKTranscriptActionButtonCell)initWithFrame:(CGRect)a3;
- (CKTranscriptActionButtonCellDelegate)delegate;
- (id)attributedText;
- (void)buttonPrimaryActionTriggered:(id)a3;
- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7;
- (void)setAttributedText:(id)a3;
@end

@implementation CKTranscriptActionButtonCell

- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7
{
  v9 = a5;
  v14.receiver = self;
  v14.super_class = CKTranscriptActionButtonCell;
  v12 = a3;
  [(CKTranscriptCell *)&v14 configureForChatItem:v12 context:a4 animated:v9 animationDuration:a7 animationCurve:a6];
  v13 = [v12 transcriptText];

  [(CKTranscriptActionButtonCell *)self setAttributedText:v13];
}

- (CKTranscriptActionButtonCell)initWithFrame:(CGRect)a3
{
  v20.receiver = self;
  v20.super_class = CKTranscriptActionButtonCell;
  v3 = [(CKTranscriptAbstractLabelCell *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = _CreateActionButton();
    actionButton = v3->_actionButton;
    v3->_actionButton = v4;

    [(CKTranscriptLegibilityButton *)v3->_actionButton addTarget:v3 action:sel_buttonPrimaryActionTriggered_ forControlEvents:0x2000];
    v6 = v3->_actionButton;
    v7 = +[CKUIBehavior sharedBehaviors];
    [v7 smallTranscriptSpace];
    v9 = -v8;
    v10 = +[CKUIBehavior sharedBehaviors];
    [v10 smallTranscriptSpace];
    v12 = -v11;
    v13 = +[CKUIBehavior sharedBehaviors];
    [v13 smallTranscriptSpace];
    v15 = -v14;
    v16 = +[CKUIBehavior sharedBehaviors];
    [v16 smallTranscriptSpace];
    [(CKTranscriptLegibilityButton *)v6 _setTouchInsets:v9, v12, v15, -v17];

    v18 = [(CKEditableCollectionViewCell *)v3 contentView];
    [v18 addSubview:v3->_actionButton];
  }

  return v3;
}

+ (CGSize)sizeThatFits:(CGSize)a3 attributedText:(id)a4 displayScale:(double)a5
{
  width = a3.width;
  v6 = a4;
  if ([v6 length])
  {
    v7 = _CreateActionButton();
    v8 = [v7 configuration];
    [v8 setAttributedTitle:v6];
    [v7 setConfiguration:v8];
    [v7 sizeThatFits:{width, 1.79769313e308}];
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v10 = *MEMORY[0x1E695F060];
    v12 = *(MEMORY[0x1E695F060] + 8);
  }

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)setAttributedText:(id)a3
{
  actionButton = self->_actionButton;
  v5 = a3;
  v6 = [(CKTranscriptLegibilityButton *)actionButton configuration];
  [v6 setAttributedTitle:v5];

  [(CKTranscriptLegibilityButton *)self->_actionButton setConfiguration:v6];
}

- (id)attributedText
{
  v2 = [(CKTranscriptLegibilityButton *)self->_actionButton configuration];
  v3 = [v2 attributedTitle];

  return v3;
}

- (void)buttonPrimaryActionTriggered:(id)a3
{
  v4 = [(CKTranscriptActionButtonCell *)self delegate];
  [v4 didTapTranscriptActionButtonCell:self];
}

- (CKTranscriptActionButtonCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end