@interface CNFRegEditableTableCell
- (BOOL)_textFieldIsCurrentlyEmpty;
- (void)_handleTextChanged;
- (void)_startListeningForTextChanges;
- (void)_stopListeningForTextChanges;
- (void)_updateTextFieldOffsetWithDict:(id)dict;
- (void)dealloc;
- (void)layoutSubviews;
- (void)notifyTextFieldDidBeginEditing;
- (void)notifyTextFieldDidEndEditing;
- (void)setShadowImage:(id)image;
- (void)setTitle:(id)title;
- (void)setValueChangedTarget:(id)target action:(SEL)action specifier:(id)specifier;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation CNFRegEditableTableCell

- (void)_updateTextFieldOffsetWithDict:(id)dict
{
  v4 = [dict propertyForKey:@"cnf-textFieldOffset"];
  if (v4)
  {
    v6 = v4;
    [v4 floatValue];
    [(CNFRegEditableTableCell *)self setTextFieldOffset:v5];
    [(CNFRegEditableTableCell *)self setNeedsLayout];
    v4 = v6;
  }
}

- (void)setTitle:(id)title
{
  v5.receiver = self;
  v5.super_class = CNFRegEditableTableCell;
  [(PSEditableTableCell *)&v5 setTitle:title];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FCE0]));
  [(CNFRegEditableTableCell *)self _updateTextFieldOffsetWithDict:WeakRetained];
}

- (void)setValueChangedTarget:(id)target action:(SEL)action specifier:(id)specifier
{
  specifierCopy = specifier;
  v27.receiver = self;
  v27.super_class = CNFRegEditableTableCell;
  [(PSEditableTableCell *)&v27 setValueChangedTarget:target action:action specifier:specifierCopy];
  v9 = [specifierCopy propertyForKey:@"cnf-textFieldEmptyStateChangeSelector"];
  v10 = v9;
  if (v9)
  {
    v11 = NSSelectorFromString(v9);
    if (v11)
    {
      v12 = v11;
      WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FBF0]));
      v14 = objc_opt_respondsToSelector();

      if (v14)
      {
        self->_emptyStateSelector = v12;
      }
    }
  }

  v15 = [specifierCopy propertyForKey:@"cnf-didBeginEditingSelector"];
  v16 = v15;
  if (v15)
  {
    v17 = NSSelectorFromString(v15);
    if (v17)
    {
      v18 = v17;
      v19 = objc_loadWeakRetained((&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FBF0]));
      v20 = objc_opt_respondsToSelector();

      if (v20)
      {
        self->_didBeginEditingSelector = v18;
      }
    }
  }

  v21 = [specifierCopy propertyForKey:@"cnf-didEndEditingSelector"];
  v22 = v21;
  if (v21)
  {
    v23 = NSSelectorFromString(v21);
    if (v23)
    {
      v24 = v23;
      v25 = objc_loadWeakRetained((&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FBF0]));
      v26 = objc_opt_respondsToSelector();

      if (v26)
      {
        self->_didEndEditingSelector = v24;
      }
    }
  }

  [(CNFRegEditableTableCell *)self _updateTextFieldOffsetWithDict:specifierCopy];
}

- (BOOL)_textFieldIsCurrentlyEmpty
{
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  editableTextField = [(CNFRegEditableTableCell *)self editableTextField];
  text = [editableTextField text];
  v6 = [text stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  v7 = [v6 length] == 0;

  return v7;
}

- (void)_handleTextChanged
{
  _textFieldIsCurrentlyEmpty = [(CNFRegEditableTableCell *)self _textFieldIsCurrentlyEmpty];
  if (self->_textFieldIsEmpty != _textFieldIsCurrentlyEmpty)
  {
    self->_textFieldIsEmpty = _textFieldIsCurrentlyEmpty;

    [(CNFRegEditableTableCell *)self notifyTextFieldEmptyStateChanged:_textFieldIsCurrentlyEmpty];
  }
}

- (void)_startListeningForTextChanges
{
  if (!self->_textChangeObserver)
  {
    self->_textFieldIsEmpty = [(CNFRegEditableTableCell *)self _textFieldIsCurrentlyEmpty];
    v3 = *MEMORY[0x277D770B0];
    editableTextField = [(CNFRegEditableTableCell *)self editableTextField];
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x3032000000;
    v10[3] = __Block_byref_object_copy__3;
    v10[4] = __Block_byref_object_dispose__3;
    selfCopy = self;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __56__CNFRegEditableTableCell__startListeningForTextChanges__block_invoke;
    v9[3] = &unk_278DE8C80;
    v9[4] = v10;
    v5 = MEMORY[0x245D4D850](v9);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = [defaultCenter addObserverForName:v3 object:editableTextField queue:0 usingBlock:v5];

    textChangeObserver = self->_textChangeObserver;
    self->_textChangeObserver = v7;

    _Block_object_dispose(v10, 8);
  }
}

- (void)_stopListeningForTextChanges
{
  if (self->_textChangeObserver)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self->_textChangeObserver];

    textChangeObserver = self->_textChangeObserver;
    self->_textChangeObserver = 0;
  }
}

- (void)notifyTextFieldDidBeginEditing
{
  v3 = *MEMORY[0x277D3FBF0];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.super.isa + v3));
  if (WeakRetained && self->_didBeginEditingSelector)
  {
    didBeginEditingSelector = self->_didBeginEditingSelector;
    v12 = WeakRetained;
    v6 = *MEMORY[0x277D3FCE0];
    v7 = objc_loadWeakRetained((&self->super.super.super.super.super.super.isa + v6));
    if (v7)
    {
      v8 = v7;
      skipDelegateCallback = [(CNFRegEditableTableCell *)self skipDelegateCallback];

      if (skipDelegateCallback)
      {
        return;
      }

      v12 = objc_loadWeakRetained((&self->super.super.super.super.super.super.isa + v3));
      if (self->_didBeginEditingSelector)
      {
        v10 = self->_didBeginEditingSelector;
      }

      else
      {
        v10 = 0;
      }

      v11 = objc_loadWeakRetained((&self->super.super.super.super.super.super.isa + v6));
      [v12 performSelector:v10 withObject:v11];
    }

    WeakRetained = v12;
  }
}

- (void)notifyTextFieldDidEndEditing
{
  v3 = *MEMORY[0x277D3FBF0];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.super.isa + v3));
  if (WeakRetained && self->_didEndEditingSelector)
  {
    didEndEditingSelector = self->_didEndEditingSelector;
    v12 = WeakRetained;
    v6 = *MEMORY[0x277D3FCE0];
    v7 = objc_loadWeakRetained((&self->super.super.super.super.super.super.isa + v6));
    if (v7)
    {
      v8 = v7;
      skipDelegateCallback = [(CNFRegEditableTableCell *)self skipDelegateCallback];

      if (skipDelegateCallback)
      {
        return;
      }

      v12 = objc_loadWeakRetained((&self->super.super.super.super.super.super.isa + v3));
      if (self->_didEndEditingSelector)
      {
        v10 = self->_didEndEditingSelector;
      }

      else
      {
        v10 = 0;
      }

      v11 = objc_loadWeakRetained((&self->super.super.super.super.super.super.isa + v6));
      [v12 performSelector:v10 withObject:v11];
    }

    WeakRetained = v12;
  }
}

- (void)textFieldDidBeginEditing:(id)editing
{
  v4.receiver = self;
  v4.super_class = CNFRegEditableTableCell;
  [(PSEditableTableCell *)&v4 textFieldDidBeginEditing:editing];
  [(CNFRegEditableTableCell *)self notifyTextFieldDidBeginEditing];
}

- (void)textFieldDidEndEditing:(id)editing
{
  v4.receiver = self;
  v4.super_class = CNFRegEditableTableCell;
  [(PSEditableTableCell *)&v4 textFieldDidEndEditing:editing];
  [(CNFRegEditableTableCell *)self notifyTextFieldDidEndEditing];
}

- (void)setShadowImage:(id)image
{
  imageCopy = image;
  if (self->_shadowImage != imageCopy)
  {
    v7 = imageCopy;
    objc_storeStrong(&self->_shadowImage, image);
    [(CNFRegShadowView *)self->_shadowView removeFromSuperview];
    shadowView = self->_shadowView;
    self->_shadowView = 0;

    [(CNFRegEditableTableCell *)self setNeedsLayout];
    imageCopy = v7;
  }
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = CNFRegEditableTableCell;
  [(PSEditableTableCell *)&v20 layoutSubviews];
  backgroundView = [(CNFRegEditableTableCell *)self backgroundView];

  if (backgroundView)
  {
    shadowImage = [(CNFRegEditableTableCell *)self shadowImage];

    shadowView = [(CNFRegEditableTableCell *)self shadowView];
    v6 = shadowView;
    if (shadowImage)
    {

      if (!v6)
      {
        v7 = [CNFRegShadowView alloc];
        backgroundView2 = [(CNFRegEditableTableCell *)self backgroundView];
        [backgroundView2 bounds];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
        shadowImage2 = [(CNFRegEditableTableCell *)self shadowImage];
        v18 = [(CNFRegShadowView *)v7 initWithFrame:shadowImage2 shadowImage:v10, v12, v14, v16];

        backgroundView3 = [(CNFRegEditableTableCell *)self backgroundView];
        [backgroundView3 addSubview:v18];

        [(CNFRegEditableTableCell *)self setShadowView:v18];
      }
    }

    else
    {
      [shadowView removeFromSuperview];

      [(CNFRegEditableTableCell *)self setShadowView:0];
    }
  }

  [(CNFRegEditableTableCell *)self _startListeningForTextChanges];
}

- (void)dealloc
{
  [(CNFRegEditableTableCell *)self _stopListeningForTextChanges];
  v3.receiver = self;
  v3.super_class = CNFRegEditableTableCell;
  [(PSEditableTableCell *)&v3 dealloc];
}

@end