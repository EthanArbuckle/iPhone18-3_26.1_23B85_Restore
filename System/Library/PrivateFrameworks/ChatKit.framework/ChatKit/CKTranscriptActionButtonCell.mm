@interface CKTranscriptActionButtonCell
+ (CGSize)sizeThatFits:(CGSize)fits attributedText:(id)text displayScale:(double)scale;
- (CKTranscriptActionButtonCell)initWithFrame:(CGRect)frame;
- (CKTranscriptActionButtonCellDelegate)delegate;
- (id)attributedText;
- (void)buttonPrimaryActionTriggered:(id)triggered;
- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve;
- (void)setAttributedText:(id)text;
@end

@implementation CKTranscriptActionButtonCell

- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve
{
  animatedCopy = animated;
  v14.receiver = self;
  v14.super_class = CKTranscriptActionButtonCell;
  itemCopy = item;
  [(CKTranscriptCell *)&v14 configureForChatItem:itemCopy context:context animated:animatedCopy animationDuration:curve animationCurve:duration];
  transcriptText = [itemCopy transcriptText];

  [(CKTranscriptActionButtonCell *)self setAttributedText:transcriptText];
}

- (CKTranscriptActionButtonCell)initWithFrame:(CGRect)frame
{
  v20.receiver = self;
  v20.super_class = CKTranscriptActionButtonCell;
  v3 = [(CKTranscriptAbstractLabelCell *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

    contentView = [(CKEditableCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_actionButton];
  }

  return v3;
}

+ (CGSize)sizeThatFits:(CGSize)fits attributedText:(id)text displayScale:(double)scale
{
  width = fits.width;
  textCopy = text;
  if ([textCopy length])
  {
    v7 = _CreateActionButton();
    configuration = [v7 configuration];
    [configuration setAttributedTitle:textCopy];
    [v7 setConfiguration:configuration];
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

- (void)setAttributedText:(id)text
{
  actionButton = self->_actionButton;
  textCopy = text;
  configuration = [(CKTranscriptLegibilityButton *)actionButton configuration];
  [configuration setAttributedTitle:textCopy];

  [(CKTranscriptLegibilityButton *)self->_actionButton setConfiguration:configuration];
}

- (id)attributedText
{
  configuration = [(CKTranscriptLegibilityButton *)self->_actionButton configuration];
  attributedTitle = [configuration attributedTitle];

  return attributedTitle;
}

- (void)buttonPrimaryActionTriggered:(id)triggered
{
  delegate = [(CKTranscriptActionButtonCell *)self delegate];
  [delegate didTapTranscriptActionButtonCell:self];
}

- (CKTranscriptActionButtonCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end