@interface CKTranscriptUnknownSenderButtonCell
+ (id)createStampButtonView;
- (CKTranscriptUnknownSenderButtonCell)initWithFrame:(CGRect)a3;
- (id)attributedText;
- (void)buttonTapped:(id)a3;
- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7;
- (void)prepareForReuse;
- (void)setAttributedText:(id)a3;
- (void)setOnButtonTapBlock:(id)a3;
- (void)setPrimaryButtonMenu:(id)a3;
@end

@implementation CKTranscriptUnknownSenderButtonCell

- (CKTranscriptUnknownSenderButtonCell)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = CKTranscriptUnknownSenderButtonCell;
  return [(CKTranscriptStampCell *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

+ (id)createStampButtonView
{
  v2 = [CKTranscriptLegibilityButton buttonWithType:0];
  [v2 setDimsOnHighlight:1];
  [v2 setContentHorizontalAlignment:4];
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 isAccessibilityPreferredContentSizeCategory];

  if (v4)
  {
    [v2 setTitleLabelNumberOfLines:0];
    [v2 setTitleLabelLineBreakMode:0];
  }

  else
  {
    [v2 setTitleLabelNumberOfLines:1];
  }

  return v2;
}

- (void)buttonTapped:(id)a3
{
  if (self->_onButtonTapBlock)
  {
    v4 = [(CKTranscriptUnknownSenderButtonCell *)self button];
    (*(self->_onButtonTapBlock + 2))();
  }
}

- (void)setAttributedText:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptUnknownSenderButtonCell *)self button];
  [v5 setAttributedTitle:v4 forState:0];
}

- (id)attributedText
{
  v2 = [(CKTranscriptUnknownSenderButtonCell *)self button];
  v3 = [v2 attributedTitleForState:0];

  return v3;
}

- (void)setPrimaryButtonMenu:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptUnknownSenderButtonCell *)self button];
  [v5 setMenu:v4];

  v6 = [(CKTranscriptUnknownSenderButtonCell *)self button];
  [v6 setShowsMenuAsPrimaryAction:1];

  v7 = [(CKTranscriptUnknownSenderButtonCell *)self button];
  [v7 setShowsMenuFromSource:0];
}

- (void)setOnButtonTapBlock:(id)a3
{
  v5 = [a3 copy];
  onButtonTapBlock = self->_onButtonTapBlock;
  self->_onButtonTapBlock = v5;

  v7 = [(CKTranscriptUnknownSenderButtonCell *)self button];
  v8 = v7;
  if (a3)
  {
    [v7 addTarget:self action:sel_buttonTapped_ forControlEvents:64];
  }

  else
  {
    [v7 removeTarget:self action:sel_buttonTapped_ forControlEvents:64];
  }
}

- (void)prepareForReuse
{
  v7.receiver = self;
  v7.super_class = CKTranscriptUnknownSenderButtonCell;
  [(CKTranscriptStampCell *)&v7 prepareForReuse];
  v3 = [(CKTranscriptUnknownSenderButtonCell *)self button];
  [v3 setMenu:0];

  v4 = [(CKTranscriptUnknownSenderButtonCell *)self button];
  [v4 setShowsMenuAsPrimaryAction:0];

  v5 = [(CKTranscriptUnknownSenderButtonCell *)self button];
  [v5 removeTarget:self action:sel_buttonTapped_ forControlEvents:64];

  onButtonTapBlock = self->_onButtonTapBlock;
  self->_onButtonTapBlock = 0;
}

- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7
{
  v9 = a5;
  v12 = a4;
  v13 = a3;
  [(CKTranscriptUnknownSenderButtonCell *)self setChatItem:v13];
  v14.receiver = self;
  v14.super_class = CKTranscriptUnknownSenderButtonCell;
  [(CKTranscriptStampCell *)&v14 configureForChatItem:v13 context:v12 animated:v9 animationDuration:a7 animationCurve:a6];
}

@end