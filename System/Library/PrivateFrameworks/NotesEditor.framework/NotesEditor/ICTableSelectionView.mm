@interface ICTableSelectionView
- (BOOL)becomeFirstResponder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)resignFirstResponder;
- (ICTableSelectionDelegate)delegate;
- (ICTableSelectionView)initWithFrame:(CGRect)frame;
- (id)keyCommands;
- (void)addColumnLeft:(id)left;
- (void)addColumnRight:(id)right;
- (void)addRowDown:(id)down;
- (void)addRowUp:(id)up;
- (void)deletePressed:(id)pressed;
- (void)layoutSubviews;
- (void)strikethrough:(id)strikethrough;
- (void)toggleBoldface:(id)boldface;
- (void)toggleItalics:(id)italics;
- (void)toggleUnderline:(id)underline;
@end

@implementation ICTableSelectionView

- (ICTableSelectionView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = ICTableSelectionView;
  v3 = [(ICTableSelectionView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(ICTableSelectionView *)v3 layer];
    [layer setBorderWidth:2.0];

    v6 = *MEMORY[0x277CDA138];
    layer2 = [(ICTableSelectionView *)v4 layer];
    [layer2 setCornerCurve:v6];

    layer3 = [(ICTableSelectionView *)v4 layer];
    [layer3 setCornerRadius:2.0];

    [(ICTableSelectionView *)v4 setUserInteractionEnabled:0];
  }

  return v4;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = ICTableSelectionView;
  [(ICTableSelectionView *)&v6 layoutSubviews];
  tintColor = [(ICTableSelectionView *)self tintColor];
  cGColor = [tintColor CGColor];
  layer = [(ICTableSelectionView *)self layer];
  [layer setBorderColor:cGColor];
}

- (void)toggleBoldface:(id)boldface
{
  boldfaceCopy = boldface;
  delegate = [(ICTableSelectionView *)self delegate];
  auxiliaryStylingController = [delegate auxiliaryStylingController];
  [auxiliaryStylingController toggleBoldface:boldfaceCopy];
}

- (void)toggleItalics:(id)italics
{
  italicsCopy = italics;
  delegate = [(ICTableSelectionView *)self delegate];
  auxiliaryStylingController = [delegate auxiliaryStylingController];
  [auxiliaryStylingController toggleItalics:italicsCopy];
}

- (void)toggleUnderline:(id)underline
{
  underlineCopy = underline;
  delegate = [(ICTableSelectionView *)self delegate];
  auxiliaryStylingController = [delegate auxiliaryStylingController];
  [auxiliaryStylingController toggleUnderline:underlineCopy];
}

- (void)strikethrough:(id)strikethrough
{
  strikethroughCopy = strikethrough;
  delegate = [(ICTableSelectionView *)self delegate];
  auxiliaryStylingController = [delegate auxiliaryStylingController];
  [auxiliaryStylingController toggleStrikethrough:strikethroughCopy];
}

- (BOOL)becomeFirstResponder
{
  delegate = [(ICTableSelectionView *)self delegate];
  [delegate selectionWillBecomeFirstResponder:self];

  v5.receiver = self;
  v5.super_class = ICTableSelectionView;
  return [(ICTableSelectionView *)&v5 becomeFirstResponder];
}

- (BOOL)resignFirstResponder
{
  v6.receiver = self;
  v6.super_class = ICTableSelectionView;
  resignFirstResponder = [(ICTableSelectionView *)&v6 resignFirstResponder];
  if (resignFirstResponder)
  {
    delegate = [(ICTableSelectionView *)self delegate];
    [delegate selectionDidResignFirstResponder:self];
  }

  return resignFirstResponder;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  v11.receiver = self;
  v11.super_class = ICTableSelectionView;
  v6 = [(ICTableSelectionView *)&v11 canPerformAction:action withSender:sender];
  delegate = [(ICTableSelectionView *)self delegate];
  isShowingTextStyleOptions = [delegate isShowingTextStyleOptions];

  if (isShowingTextStyleOptions)
  {
    return sel_toggleBoldface_ == action || sel_toggleItalics_ == action || sel_toggleUnderline_ == action;
  }

  return v6;
}

- (id)keyCommands
{
  v10[6] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D75650] keyCommandWithInput:*MEMORY[0x277D76B68] modifierFlags:1572864 action:sel_addRowUp_];
  v10[0] = v2;
  v3 = [MEMORY[0x277D75650] keyCommandWithInput:*MEMORY[0x277D76AC0] modifierFlags:1572864 action:sel_addRowDown_];
  v10[1] = v3;
  v4 = [MEMORY[0x277D75650] keyCommandWithInput:*MEMORY[0x277D76B48] modifierFlags:1572864 action:sel_addColumnLeft_];
  v10[2] = v4;
  v5 = [MEMORY[0x277D75650] keyCommandWithInput:*MEMORY[0x277D76B60] modifierFlags:1572864 action:sel_addColumnRight_];
  v10[3] = v5;
  v6 = [MEMORY[0x277D75650] keyCommandWithInput:@"c" modifierFlags:0x100000 action:sel_copy_];
  v10[4] = v6;
  v7 = [MEMORY[0x277D75650] keyCommandWithInput:@"\b" modifierFlags:0 action:sel_deletePressed_];
  v10[5] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:6];

  return v8;
}

- (void)addRowUp:(id)up
{
  delegate = [(ICTableSelectionView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(ICTableSelectionView *)self delegate];
    [delegate2 addRowAboveSelection:self];
  }
}

- (void)addRowDown:(id)down
{
  delegate = [(ICTableSelectionView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(ICTableSelectionView *)self delegate];
    [delegate2 addRowBelowSelection:self];
  }
}

- (void)addColumnLeft:(id)left
{
  delegate = [(ICTableSelectionView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(ICTableSelectionView *)self delegate];
    [delegate2 addColumnLeftOfSelection:self];
  }
}

- (void)addColumnRight:(id)right
{
  delegate = [(ICTableSelectionView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(ICTableSelectionView *)self delegate];
    [delegate2 addColumnRightOfSelection:self];
  }
}

- (void)deletePressed:(id)pressed
{
  pressedCopy = pressed;
  delegate = [(ICTableSelectionView *)self delegate];
  [delegate deleteSelection:pressedCopy];
}

- (ICTableSelectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end