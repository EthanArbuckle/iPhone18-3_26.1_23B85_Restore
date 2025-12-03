@interface CKTranscriptUnknownSenderButtonCell
+ (id)createStampButtonView;
- (CKTranscriptUnknownSenderButtonCell)initWithFrame:(CGRect)frame;
- (id)attributedText;
- (void)buttonTapped:(id)tapped;
- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve;
- (void)prepareForReuse;
- (void)setAttributedText:(id)text;
- (void)setOnButtonTapBlock:(id)block;
- (void)setPrimaryButtonMenu:(id)menu;
@end

@implementation CKTranscriptUnknownSenderButtonCell

- (CKTranscriptUnknownSenderButtonCell)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = CKTranscriptUnknownSenderButtonCell;
  return [(CKTranscriptStampCell *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

+ (id)createStampButtonView
{
  v2 = [CKTranscriptLegibilityButton buttonWithType:0];
  [v2 setDimsOnHighlight:1];
  [v2 setContentHorizontalAlignment:4];
  v3 = +[CKUIBehavior sharedBehaviors];
  isAccessibilityPreferredContentSizeCategory = [v3 isAccessibilityPreferredContentSizeCategory];

  if (isAccessibilityPreferredContentSizeCategory)
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

- (void)buttonTapped:(id)tapped
{
  if (self->_onButtonTapBlock)
  {
    button = [(CKTranscriptUnknownSenderButtonCell *)self button];
    (*(self->_onButtonTapBlock + 2))();
  }
}

- (void)setAttributedText:(id)text
{
  textCopy = text;
  button = [(CKTranscriptUnknownSenderButtonCell *)self button];
  [button setAttributedTitle:textCopy forState:0];
}

- (id)attributedText
{
  button = [(CKTranscriptUnknownSenderButtonCell *)self button];
  v3 = [button attributedTitleForState:0];

  return v3;
}

- (void)setPrimaryButtonMenu:(id)menu
{
  menuCopy = menu;
  button = [(CKTranscriptUnknownSenderButtonCell *)self button];
  [button setMenu:menuCopy];

  button2 = [(CKTranscriptUnknownSenderButtonCell *)self button];
  [button2 setShowsMenuAsPrimaryAction:1];

  button3 = [(CKTranscriptUnknownSenderButtonCell *)self button];
  [button3 setShowsMenuFromSource:0];
}

- (void)setOnButtonTapBlock:(id)block
{
  v5 = [block copy];
  onButtonTapBlock = self->_onButtonTapBlock;
  self->_onButtonTapBlock = v5;

  button = [(CKTranscriptUnknownSenderButtonCell *)self button];
  v8 = button;
  if (block)
  {
    [button addTarget:self action:sel_buttonTapped_ forControlEvents:64];
  }

  else
  {
    [button removeTarget:self action:sel_buttonTapped_ forControlEvents:64];
  }
}

- (void)prepareForReuse
{
  v7.receiver = self;
  v7.super_class = CKTranscriptUnknownSenderButtonCell;
  [(CKTranscriptStampCell *)&v7 prepareForReuse];
  button = [(CKTranscriptUnknownSenderButtonCell *)self button];
  [button setMenu:0];

  button2 = [(CKTranscriptUnknownSenderButtonCell *)self button];
  [button2 setShowsMenuAsPrimaryAction:0];

  button3 = [(CKTranscriptUnknownSenderButtonCell *)self button];
  [button3 removeTarget:self action:sel_buttonTapped_ forControlEvents:64];

  onButtonTapBlock = self->_onButtonTapBlock;
  self->_onButtonTapBlock = 0;
}

- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve
{
  animatedCopy = animated;
  contextCopy = context;
  itemCopy = item;
  [(CKTranscriptUnknownSenderButtonCell *)self setChatItem:itemCopy];
  v14.receiver = self;
  v14.super_class = CKTranscriptUnknownSenderButtonCell;
  [(CKTranscriptStampCell *)&v14 configureForChatItem:itemCopy context:contextCopy animated:animatedCopy animationDuration:curve animationCurve:duration];
}

@end