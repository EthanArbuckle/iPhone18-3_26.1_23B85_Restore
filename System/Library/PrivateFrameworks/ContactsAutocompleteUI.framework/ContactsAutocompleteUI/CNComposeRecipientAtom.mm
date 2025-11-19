@interface CNComposeRecipientAtom
- (CNComposeRecipientAtom)initWithFrame:(CGRect)a3 recipient:(id)a4 presentationOptions:(unint64_t)a5;
- (CNComposeRecipientAtomDelegate)delegate;
- (id)keyCommands;
- (id)menuConfigurationForChevronButton;
- (void)moveLeft:(id)a3;
- (void)moveRight:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation CNComposeRecipientAtom

- (CNComposeRecipientAtom)initWithFrame:(CGRect)a3 recipient:(id)a4 presentationOptions:(unint64_t)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a4;
  v17.receiver = self;
  v17.super_class = CNComposeRecipientAtom;
  v13 = [(CNAtomView *)&v17 initWithFrame:a5 presentationOptions:0 separatorStyle:0 wrappingSupported:x, y, width, height];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_recipient, a4);
    v15 = [v12 compositeName];
    [(CNAtomView *)v14 setTitle:v15];
  }

  return v14;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5 = a4;
  *(self + 576) = *(self + 576) & 0xFE | [(CNAtomView *)self isSelected];
  *(self + 576) &= ~2u;
  v6 = [v5 modifierFlags];

  *(self + 576) = *(self + 576) & 0xFB | (v6 >> 15) & 4;
  if ((*(self + 576) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = WeakRetained;
    if (((v6 >> 15) & 4) != 0)
    {
      [WeakRetained shiftSelectComposeRecipientAtom:self];
    }

    else
    {
      [WeakRetained selectComposeRecipientAtom:self];
    }
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v10 = a3;
  v6 = a4;
  if ((*(self + 576) & 2) == 0 && (*(self + 576) & 4) == 0)
  {
    v7 = [v10 anyObject];
    [v7 locationInView:self];
    v8 = [(CNComposeRecipientAtom *)self hitTest:v6 withEvent:?];

    if (!v8)
    {
      *(self + 576) |= 2u;
      if ((*(self + 576) & 1) == 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained deselectComposeRecipientAtom:self];
      }
    }
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  *(self + 576) |= 2u;
  if ((*(self + 576) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained deselectComposeRecipientAtom:self];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  if ((*(self + 576) & 2) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained composeRecipientAtomDisambiguate:self];
  }
}

- (id)keyCommands
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF10] modifierFlags:0 action:sel_moveLeft_];
  v10[0] = v3;
  v4 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF28] modifierFlags:0 action:sel_moveRight_];
  v10[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];

  v9.receiver = self;
  v9.super_class = CNComposeRecipientAtom;
  v6 = [(CNComposeRecipientAtom *)&v9 keyCommands];
  v7 = [v5 arrayByAddingObjectsFromArray:v6];

  return v7;
}

- (void)moveLeft:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained composeRecipientAtomSelectPrevious:self];
}

- (void)moveRight:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained composeRecipientAtomSelectNext:self];
}

- (id)menuConfigurationForChevronButton
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained menuConfigurationForAtomView:self];

  return v4;
}

- (CNComposeRecipientAtomDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end