@interface HUSetupCodeField
- (BOOL)isComplete;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldReturn:(id)a3;
- (HUSetupCodeField)initWithCodeDigits:(unint64_t)a3;
- (HUSetupCodeFieldDelegate)delegate;
- (HUSetupCodeFieldItem)activeItem;
- (NSString)setupCode;
- (void)_activateLast;
- (void)_activateNext;
- (void)_setupCodeFieldItems;
- (void)_updateInterfaceForCurrentTraitCollection;
- (void)clear;
- (void)fieldTapped:(id)a3;
- (void)hideKeypad;
- (void)showKeypad;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HUSetupCodeField

- (HUSetupCodeField)initWithCodeDigits:(unint64_t)a3
{
  v17.receiver = self;
  v17.super_class = HUSetupCodeField;
  v4 = [(HUSetupCodeField *)&v17 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:a3];
    if (a3)
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = objc_alloc_init(HUSetupCodeFieldItem);
        [(HUSetupCodeFieldItem *)v8 setItemNumber:v6];
        [v5 setObject:v8 atIndexedSubscript:v6];

        v6 = v7++;
      }

      while (v6 < a3);
    }

    v9 = [MEMORY[0x277CBEA60] arrayWithArray:v5];
    items = v4->_items;
    v4->_items = v9;

    v11 = [(NSArray *)v4->_items firstObject];
    objc_storeWeak(&v4->_activeItem, v11);

    v4->_itemSpacing = 2.0;
    v12 = objc_alloc_init(MEMORY[0x277D75BB8]);
    hiddenInputField = v4->_hiddenInputField;
    v4->_hiddenInputField = v12;

    [(UITextField *)v4->_hiddenInputField setDelegate:v4];
    [(UITextField *)v4->_hiddenInputField setKeyboardType:4];
    [(HUSetupCodeField *)v4 _updateInterfaceForCurrentTraitCollection];
    [(UITextField *)v4->_hiddenInputField setHidden:1];
    [(HUSetupCodeField *)v4 addSubview:v4->_hiddenInputField];
    [(HUSetupCodeField *)v4 _setupCodeFieldItems];
    v14 = [(NSArray *)v4->_items firstObject];
    [v14 activate];

    v15 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v4 action:sel_fieldTapped_];
    [(HUSetupCodeField *)v4 addGestureRecognizer:v15];
  }

  return v4;
}

- (NSString)setupCode
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(HUSetupCodeField *)self items];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v16 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v15 + 1) + 8 * v8);
      v10 = [v9 value];

      if (!v10)
      {
        break;
      }

      v11 = [v9 value];
      v12 = [v11 stringValue];
      [v3 appendString:v12];

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v13 = [v3 copy];

  return v13;
}

- (BOOL)isComplete
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(HUSetupCodeField *)self items];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v10 + 1) + 8 * i) value];

        if (!v7)
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  return v8;
}

- (void)clear
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(HUSetupCodeField *)self items];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v13 + 1) + 8 * v7++) setValue:0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v8 = [(HUSetupCodeField *)self activeItem];

  if (v8)
  {
    v9 = [(HUSetupCodeField *)self activeItem];
    [v9 deactivate];
  }

  v10 = [(HUSetupCodeField *)self items];
  v11 = [v10 objectAtIndexedSubscript:0];
  [(HUSetupCodeField *)self setActiveItem:v11];

  v12 = [(HUSetupCodeField *)self activeItem];
  [v12 activate];
}

- (void)showKeypad
{
  v2 = [(HUSetupCodeField *)self hiddenInputField];
  [v2 becomeFirstResponder];
}

- (void)hideKeypad
{
  v2 = [(HUSetupCodeField *)self hiddenInputField];
  [v2 resignFirstResponder];
}

- (void)fieldTapped:(id)a3
{
  v4 = [(HUSetupCodeField *)self hiddenInputField];
  v5 = [v4 isFirstResponder];

  if ((v5 & 1) == 0)
  {

    [(HUSetupCodeField *)self showKeypad];
  }
}

- (void)_setupCodeFieldItems
{
  v33 = *MEMORY[0x277D85DE8];
  if (!self->_codeFieldItemsView)
  {
    v3 = objc_opt_new();
    codeFieldItemsView = self->_codeFieldItemsView;
    self->_codeFieldItemsView = v3;

    [(UIStackView *)self->_codeFieldItemsView setDistribution:1];
    [(UIStackView *)self->_codeFieldItemsView setAxis:0];
    [(UIStackView *)self->_codeFieldItemsView setSpacing:2.0];
    [(UIStackView *)self->_codeFieldItemsView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_codeFieldItemsView setSemanticContentAttribute:3];
    [(HUSetupCodeField *)self addSubview:self->_codeFieldItemsView];
    v5 = [(UIStackView *)self->_codeFieldItemsView leftAnchor];
    v6 = [(HUSetupCodeField *)self leftAnchor];
    v7 = [v5 constraintEqualToAnchor:v6];
    [v7 setActive:1];

    v8 = [(UIStackView *)self->_codeFieldItemsView rightAnchor];
    v9 = [(HUSetupCodeField *)self rightAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    [v10 setActive:1];

    v11 = [(UIStackView *)self->_codeFieldItemsView topAnchor];
    v12 = [(HUSetupCodeField *)self topAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    [v13 setActive:1];

    v14 = [(UIStackView *)self->_codeFieldItemsView bottomAnchor];
    v15 = [(HUSetupCodeField *)self bottomAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    [v16 setActive:1];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = [(HUSetupCodeField *)self items];
  v18 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v29;
    do
    {
      v21 = 0;
      do
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v28 + 1) + 8 * v21);
        v23 = [(HUSetupCodeField *)self codeFieldItemsView];
        [v23 addArrangedSubview:v22];

        v24 = [v22 widthAnchor];
        v25 = [v24 constraintEqualToConstant:36.0];
        [v25 setActive:1];

        v26 = [v22 heightAnchor];
        v27 = [v26 constraintEqualToConstant:56.0];
        [v27 setActive:1];

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v19);
  }
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  v6 = a5;
  v7 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v8 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:v6];
  v9 = [v7 isSupersetOfSet:v8];
  if (v9)
  {
    if ([v6 length])
    {
      v10 = [(HUSetupCodeField *)self activeItem];

      if (v10)
      {
        v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "integerValue")}];
        v12 = [(HUSetupCodeField *)self activeItem];
        [v12 setValue:v11];
      }

      [(HUSetupCodeField *)self _activateNext];
    }

    else
    {
      [(HUSetupCodeField *)self _activateLast];
    }
  }

  return v9;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  if ([(HUSetupCodeField *)self isComplete])
  {
    v4 = [(HUSetupCodeField *)self delegate];
    if (![v4 conformsToProtocol:&unk_2825BDA20])
    {
LABEL_5:

      return 1;
    }

    v5 = [(HUSetupCodeField *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v4 = [(HUSetupCodeField *)self delegate];
      [v4 setupCodeFieldDidReturn:self];
      goto LABEL_5;
    }
  }

  return 1;
}

- (void)_activateNext
{
  v3 = [(HUSetupCodeField *)self activeItem];

  if (v3)
  {
    v4 = [(HUSetupCodeField *)self activeItem];
    v5 = [v4 itemNumber] + 1;

    v6 = [(HUSetupCodeField *)self items];
    v7 = [v6 count];

    if (v5 <= v7)
    {
      v8 = [(HUSetupCodeField *)self activeItem];
      [v8 deactivate];

      v9 = [(HUSetupCodeField *)self items];
      v10 = [v9 count];

      if (v5 == v10)
      {
        [(HUSetupCodeField *)self setActiveItem:0];
      }

      else
      {
        v11 = [(HUSetupCodeField *)self items];
        v12 = [v11 objectAtIndexedSubscript:v5];
        [(HUSetupCodeField *)self setActiveItem:v12];

        v13 = [(HUSetupCodeField *)self activeItem];
        [v13 activate];
      }
    }

    v14 = [(HUSetupCodeField *)self activeItem];
    if (!v14)
    {
      v17 = [(HUSetupCodeField *)self delegate];
      if ([v17 conformsToProtocol:&unk_2825BDA20])
      {
        v15 = [(HUSetupCodeField *)self delegate];
        v16 = objc_opt_respondsToSelector();

        if ((v16 & 1) == 0)
        {
          return;
        }

        v17 = [(HUSetupCodeField *)self delegate];
        [v17 setupCodeFieldDidBecomeComplete:self];
      }

      v14 = v17;
    }
  }
}

- (void)_activateLast
{
  v3 = [(HUSetupCodeField *)self isComplete];
  v4 = [(HUSetupCodeField *)self activeItem];
  if (v4 && (v5 = v4, -[HUSetupCodeField activeItem](self, "activeItem"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 itemNumber], v6, v5, v7))
  {
    if (!v3)
    {
      v8 = [(HUSetupCodeField *)self activeItem];

      if (v8)
      {
        v9 = [(HUSetupCodeField *)self activeItem];
        v10 = [v9 itemNumber];

        v11 = [(HUSetupCodeField *)self activeItem];
        [v11 deactivate];
        goto LABEL_8;
      }
    }
  }

  else if (!v3)
  {
    return;
  }

  v11 = [(HUSetupCodeField *)self items];
  v10 = [v11 count];
LABEL_8:

  v12 = [(HUSetupCodeField *)self items];
  v13 = [v12 objectAtIndexedSubscript:v10 - 1];
  [(HUSetupCodeField *)self setActiveItem:v13];

  v14 = [(HUSetupCodeField *)self activeItem];
  [v14 clear];

  v15 = [(HUSetupCodeField *)self activeItem];
  [v15 activate];

  if (!v3)
  {
    return;
  }

  v18 = [(HUSetupCodeField *)self delegate];
  if ([v18 conformsToProtocol:&unk_2825BDA20])
  {
    v16 = [(HUSetupCodeField *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if ((v17 & 1) == 0)
    {
      return;
    }

    v18 = [(HUSetupCodeField *)self delegate];
    [v18 setupCodeFieldDidBecomeIncomplete:self];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = HUSetupCodeField;
  [(HUSetupCodeField *)&v4 traitCollectionDidChange:a3];
  [(HUSetupCodeField *)self _updateInterfaceForCurrentTraitCollection];
}

- (void)_updateInterfaceForCurrentTraitCollection
{
  v3 = [(HUSetupCodeField *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  v5 = [(HUSetupCodeField *)self hiddenInputField];
  v7 = v5;
  if (v4 == 2)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  [v5 setKeyboardAppearance:v6];
}

- (HUSetupCodeFieldDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HUSetupCodeFieldItem)activeItem
{
  WeakRetained = objc_loadWeakRetained(&self->_activeItem);

  return WeakRetained;
}

@end