@interface CNFRegEditableTableCell
- (BOOL)_textFieldIsCurrentlyEmpty;
- (void)_handleTextChanged;
- (void)_startListeningForTextChanges;
- (void)_stopListeningForTextChanges;
- (void)_updateTextFieldOffsetWithDict:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)notifyTextFieldDidBeginEditing;
- (void)notifyTextFieldDidEndEditing;
- (void)setShadowImage:(id)a3;
- (void)setTitle:(id)a3;
- (void)setValueChangedTarget:(id)a3 action:(SEL)a4 specifier:(id)a5;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
@end

@implementation CNFRegEditableTableCell

- (void)_updateTextFieldOffsetWithDict:(id)a3
{
  v4 = [a3 propertyForKey:@"cnf-textFieldOffset"];
  if (v4)
  {
    v6 = v4;
    [v4 floatValue];
    [(CNFRegEditableTableCell *)self setTextFieldOffset:v5];
    [(CNFRegEditableTableCell *)self setNeedsLayout];
    v4 = v6;
  }
}

- (void)setTitle:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNFRegEditableTableCell;
  [(PSEditableTableCell *)&v5 setTitle:a3];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FCE0]));
  [(CNFRegEditableTableCell *)self _updateTextFieldOffsetWithDict:WeakRetained];
}

- (void)setValueChangedTarget:(id)a3 action:(SEL)a4 specifier:(id)a5
{
  v8 = a5;
  v27.receiver = self;
  v27.super_class = CNFRegEditableTableCell;
  [(PSEditableTableCell *)&v27 setValueChangedTarget:a3 action:a4 specifier:v8];
  v9 = [v8 propertyForKey:@"cnf-textFieldEmptyStateChangeSelector"];
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

  v15 = [v8 propertyForKey:@"cnf-didBeginEditingSelector"];
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

  v21 = [v8 propertyForKey:@"cnf-didEndEditingSelector"];
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

  [(CNFRegEditableTableCell *)self _updateTextFieldOffsetWithDict:v8];
}

- (BOOL)_textFieldIsCurrentlyEmpty
{
  v3 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v4 = [(CNFRegEditableTableCell *)self editableTextField];
  v5 = [v4 text];
  v6 = [v5 stringByTrimmingCharactersInSet:v3];
  v7 = [v6 length] == 0;

  return v7;
}

- (void)_handleTextChanged
{
  v3 = [(CNFRegEditableTableCell *)self _textFieldIsCurrentlyEmpty];
  if (self->_textFieldIsEmpty != v3)
  {
    self->_textFieldIsEmpty = v3;

    [(CNFRegEditableTableCell *)self notifyTextFieldEmptyStateChanged:v3];
  }
}

- (void)_startListeningForTextChanges
{
  if (!self->_textChangeObserver)
  {
    self->_textFieldIsEmpty = [(CNFRegEditableTableCell *)self _textFieldIsCurrentlyEmpty];
    v3 = *MEMORY[0x277D770B0];
    v4 = [(CNFRegEditableTableCell *)self editableTextField];
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x3032000000;
    v10[3] = __Block_byref_object_copy__3;
    v10[4] = __Block_byref_object_dispose__3;
    v11 = self;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __56__CNFRegEditableTableCell__startListeningForTextChanges__block_invoke;
    v9[3] = &unk_278DE8C80;
    v9[4] = v10;
    v5 = MEMORY[0x245D4D850](v9);
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = [v6 addObserverForName:v3 object:v4 queue:0 usingBlock:v5];

    textChangeObserver = self->_textChangeObserver;
    self->_textChangeObserver = v7;

    _Block_object_dispose(v10, 8);
  }
}

- (void)_stopListeningForTextChanges
{
  if (self->_textChangeObserver)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self->_textChangeObserver];

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
      v9 = [(CNFRegEditableTableCell *)self skipDelegateCallback];

      if (v9)
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
      v9 = [(CNFRegEditableTableCell *)self skipDelegateCallback];

      if (v9)
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

- (void)textFieldDidBeginEditing:(id)a3
{
  v4.receiver = self;
  v4.super_class = CNFRegEditableTableCell;
  [(PSEditableTableCell *)&v4 textFieldDidBeginEditing:a3];
  [(CNFRegEditableTableCell *)self notifyTextFieldDidBeginEditing];
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4.receiver = self;
  v4.super_class = CNFRegEditableTableCell;
  [(PSEditableTableCell *)&v4 textFieldDidEndEditing:a3];
  [(CNFRegEditableTableCell *)self notifyTextFieldDidEndEditing];
}

- (void)setShadowImage:(id)a3
{
  v5 = a3;
  if (self->_shadowImage != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_shadowImage, a3);
    [(CNFRegShadowView *)self->_shadowView removeFromSuperview];
    shadowView = self->_shadowView;
    self->_shadowView = 0;

    [(CNFRegEditableTableCell *)self setNeedsLayout];
    v5 = v7;
  }
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = CNFRegEditableTableCell;
  [(PSEditableTableCell *)&v20 layoutSubviews];
  v3 = [(CNFRegEditableTableCell *)self backgroundView];

  if (v3)
  {
    v4 = [(CNFRegEditableTableCell *)self shadowImage];

    v5 = [(CNFRegEditableTableCell *)self shadowView];
    v6 = v5;
    if (v4)
    {

      if (!v6)
      {
        v7 = [CNFRegShadowView alloc];
        v8 = [(CNFRegEditableTableCell *)self backgroundView];
        [v8 bounds];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v17 = [(CNFRegEditableTableCell *)self shadowImage];
        v18 = [(CNFRegShadowView *)v7 initWithFrame:v17 shadowImage:v10, v12, v14, v16];

        v19 = [(CNFRegEditableTableCell *)self backgroundView];
        [v19 addSubview:v18];

        [(CNFRegEditableTableCell *)self setShadowView:v18];
      }
    }

    else
    {
      [v5 removeFromSuperview];

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