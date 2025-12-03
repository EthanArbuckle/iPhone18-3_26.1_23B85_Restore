@interface CNComposeRecipientAtom
- (CNComposeRecipientAtom)initWithFrame:(CGRect)frame recipient:(id)recipient presentationOptions:(unint64_t)options;
- (CNComposeRecipientAtomDelegate)delegate;
- (id)keyCommands;
- (id)menuConfigurationForChevronButton;
- (void)moveLeft:(id)left;
- (void)moveRight:(id)right;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation CNComposeRecipientAtom

- (CNComposeRecipientAtom)initWithFrame:(CGRect)frame recipient:(id)recipient presentationOptions:(unint64_t)options
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  recipientCopy = recipient;
  v17.receiver = self;
  v17.super_class = CNComposeRecipientAtom;
  height = [(CNAtomView *)&v17 initWithFrame:options presentationOptions:0 separatorStyle:0 wrappingSupported:x, y, width, height];
  v14 = height;
  if (height)
  {
    objc_storeStrong(&height->_recipient, recipient);
    compositeName = [recipientCopy compositeName];
    [(CNAtomView *)v14 setTitle:compositeName];
  }

  return v14;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  *(self + 576) = *(self + 576) & 0xFE | [(CNAtomView *)self isSelected];
  *(self + 576) &= ~2u;
  modifierFlags = [eventCopy modifierFlags];

  *(self + 576) = *(self + 576) & 0xFB | (modifierFlags >> 15) & 4;
  if ((*(self + 576) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = WeakRetained;
    if (((modifierFlags >> 15) & 4) != 0)
    {
      [WeakRetained shiftSelectComposeRecipientAtom:self];
    }

    else
    {
      [WeakRetained selectComposeRecipientAtom:self];
    }
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  eventCopy = event;
  if ((*(self + 576) & 2) == 0 && (*(self + 576) & 4) == 0)
  {
    anyObject = [movedCopy anyObject];
    [anyObject locationInView:self];
    v8 = [(CNComposeRecipientAtom *)self hitTest:eventCopy withEvent:?];

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

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  *(self + 576) |= 2u;
  if ((*(self + 576) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained deselectComposeRecipientAtom:self];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
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
  keyCommands = [(CNComposeRecipientAtom *)&v9 keyCommands];
  v7 = [v5 arrayByAddingObjectsFromArray:keyCommands];

  return v7;
}

- (void)moveLeft:(id)left
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained composeRecipientAtomSelectPrevious:self];
}

- (void)moveRight:(id)right
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