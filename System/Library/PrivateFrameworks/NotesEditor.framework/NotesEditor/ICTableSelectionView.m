@interface ICTableSelectionView
- (BOOL)becomeFirstResponder;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)resignFirstResponder;
- (ICTableSelectionDelegate)delegate;
- (ICTableSelectionView)initWithFrame:(CGRect)a3;
- (id)keyCommands;
- (void)addColumnLeft:(id)a3;
- (void)addColumnRight:(id)a3;
- (void)addRowDown:(id)a3;
- (void)addRowUp:(id)a3;
- (void)deletePressed:(id)a3;
- (void)layoutSubviews;
- (void)strikethrough:(id)a3;
- (void)toggleBoldface:(id)a3;
- (void)toggleItalics:(id)a3;
- (void)toggleUnderline:(id)a3;
@end

@implementation ICTableSelectionView

- (ICTableSelectionView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = ICTableSelectionView;
  v3 = [(ICTableSelectionView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(ICTableSelectionView *)v3 layer];
    [v5 setBorderWidth:2.0];

    v6 = *MEMORY[0x277CDA138];
    v7 = [(ICTableSelectionView *)v4 layer];
    [v7 setCornerCurve:v6];

    v8 = [(ICTableSelectionView *)v4 layer];
    [v8 setCornerRadius:2.0];

    [(ICTableSelectionView *)v4 setUserInteractionEnabled:0];
  }

  return v4;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = ICTableSelectionView;
  [(ICTableSelectionView *)&v6 layoutSubviews];
  v3 = [(ICTableSelectionView *)self tintColor];
  v4 = [v3 CGColor];
  v5 = [(ICTableSelectionView *)self layer];
  [v5 setBorderColor:v4];
}

- (void)toggleBoldface:(id)a3
{
  v4 = a3;
  v6 = [(ICTableSelectionView *)self delegate];
  v5 = [v6 auxiliaryStylingController];
  [v5 toggleBoldface:v4];
}

- (void)toggleItalics:(id)a3
{
  v4 = a3;
  v6 = [(ICTableSelectionView *)self delegate];
  v5 = [v6 auxiliaryStylingController];
  [v5 toggleItalics:v4];
}

- (void)toggleUnderline:(id)a3
{
  v4 = a3;
  v6 = [(ICTableSelectionView *)self delegate];
  v5 = [v6 auxiliaryStylingController];
  [v5 toggleUnderline:v4];
}

- (void)strikethrough:(id)a3
{
  v4 = a3;
  v6 = [(ICTableSelectionView *)self delegate];
  v5 = [v6 auxiliaryStylingController];
  [v5 toggleStrikethrough:v4];
}

- (BOOL)becomeFirstResponder
{
  v3 = [(ICTableSelectionView *)self delegate];
  [v3 selectionWillBecomeFirstResponder:self];

  v5.receiver = self;
  v5.super_class = ICTableSelectionView;
  return [(ICTableSelectionView *)&v5 becomeFirstResponder];
}

- (BOOL)resignFirstResponder
{
  v6.receiver = self;
  v6.super_class = ICTableSelectionView;
  v3 = [(ICTableSelectionView *)&v6 resignFirstResponder];
  if (v3)
  {
    v4 = [(ICTableSelectionView *)self delegate];
    [v4 selectionDidResignFirstResponder:self];
  }

  return v3;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v11.receiver = self;
  v11.super_class = ICTableSelectionView;
  v6 = [(ICTableSelectionView *)&v11 canPerformAction:a3 withSender:a4];
  v7 = [(ICTableSelectionView *)self delegate];
  v8 = [v7 isShowingTextStyleOptions];

  if (v8)
  {
    return sel_toggleBoldface_ == a3 || sel_toggleItalics_ == a3 || sel_toggleUnderline_ == a3;
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

- (void)addRowUp:(id)a3
{
  v4 = [(ICTableSelectionView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICTableSelectionView *)self delegate];
    [v6 addRowAboveSelection:self];
  }
}

- (void)addRowDown:(id)a3
{
  v4 = [(ICTableSelectionView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICTableSelectionView *)self delegate];
    [v6 addRowBelowSelection:self];
  }
}

- (void)addColumnLeft:(id)a3
{
  v4 = [(ICTableSelectionView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICTableSelectionView *)self delegate];
    [v6 addColumnLeftOfSelection:self];
  }
}

- (void)addColumnRight:(id)a3
{
  v4 = [(ICTableSelectionView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICTableSelectionView *)self delegate];
    [v6 addColumnRightOfSelection:self];
  }
}

- (void)deletePressed:(id)a3
{
  v4 = a3;
  v5 = [(ICTableSelectionView *)self delegate];
  [v5 deleteSelection:v4];
}

- (ICTableSelectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end