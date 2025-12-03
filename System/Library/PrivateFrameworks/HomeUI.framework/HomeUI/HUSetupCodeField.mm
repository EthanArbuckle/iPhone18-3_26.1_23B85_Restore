@interface HUSetupCodeField
- (BOOL)isComplete;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (HUSetupCodeField)initWithCodeDigits:(unint64_t)digits;
- (HUSetupCodeFieldDelegate)delegate;
- (HUSetupCodeFieldItem)activeItem;
- (NSString)setupCode;
- (void)_activateLast;
- (void)_activateNext;
- (void)_setupCodeFieldItems;
- (void)_updateInterfaceForCurrentTraitCollection;
- (void)clear;
- (void)fieldTapped:(id)tapped;
- (void)hideKeypad;
- (void)showKeypad;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HUSetupCodeField

- (HUSetupCodeField)initWithCodeDigits:(unint64_t)digits
{
  v17.receiver = self;
  v17.super_class = HUSetupCodeField;
  v4 = [(HUSetupCodeField *)&v17 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:digits];
    if (digits)
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

      while (v6 < digits);
    }

    v9 = [MEMORY[0x277CBEA60] arrayWithArray:v5];
    items = v4->_items;
    v4->_items = v9;

    firstObject = [(NSArray *)v4->_items firstObject];
    objc_storeWeak(&v4->_activeItem, firstObject);

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
    firstObject2 = [(NSArray *)v4->_items firstObject];
    [firstObject2 activate];

    v15 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v4 action:sel_fieldTapped_];
    [(HUSetupCodeField *)v4 addGestureRecognizer:v15];
  }

  return v4;
}

- (NSString)setupCode
{
  v20 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  items = [(HUSetupCodeField *)self items];
  v5 = [items countByEnumeratingWithState:&v15 objects:v19 count:16];
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
        objc_enumerationMutation(items);
      }

      v9 = *(*(&v15 + 1) + 8 * v8);
      value = [v9 value];

      if (!value)
      {
        break;
      }

      value2 = [v9 value];
      stringValue = [value2 stringValue];
      [string appendString:stringValue];

      if (v6 == ++v8)
      {
        v6 = [items countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v13 = [string copy];

  return v13;
}

- (BOOL)isComplete
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  items = [(HUSetupCodeField *)self items];
  v3 = [items countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(items);
        }

        value = [*(*(&v10 + 1) + 8 * i) value];

        if (!value)
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v4 = [items countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  items = [(HUSetupCodeField *)self items];
  v4 = [items countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(items);
        }

        [*(*(&v13 + 1) + 8 * v7++) setValue:0];
      }

      while (v5 != v7);
      v5 = [items countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  activeItem = [(HUSetupCodeField *)self activeItem];

  if (activeItem)
  {
    activeItem2 = [(HUSetupCodeField *)self activeItem];
    [activeItem2 deactivate];
  }

  items2 = [(HUSetupCodeField *)self items];
  v11 = [items2 objectAtIndexedSubscript:0];
  [(HUSetupCodeField *)self setActiveItem:v11];

  activeItem3 = [(HUSetupCodeField *)self activeItem];
  [activeItem3 activate];
}

- (void)showKeypad
{
  hiddenInputField = [(HUSetupCodeField *)self hiddenInputField];
  [hiddenInputField becomeFirstResponder];
}

- (void)hideKeypad
{
  hiddenInputField = [(HUSetupCodeField *)self hiddenInputField];
  [hiddenInputField resignFirstResponder];
}

- (void)fieldTapped:(id)tapped
{
  hiddenInputField = [(HUSetupCodeField *)self hiddenInputField];
  isFirstResponder = [hiddenInputField isFirstResponder];

  if ((isFirstResponder & 1) == 0)
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
    leftAnchor = [(UIStackView *)self->_codeFieldItemsView leftAnchor];
    leftAnchor2 = [(HUSetupCodeField *)self leftAnchor];
    v7 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    [v7 setActive:1];

    rightAnchor = [(UIStackView *)self->_codeFieldItemsView rightAnchor];
    rightAnchor2 = [(HUSetupCodeField *)self rightAnchor];
    v10 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    [v10 setActive:1];

    topAnchor = [(UIStackView *)self->_codeFieldItemsView topAnchor];
    topAnchor2 = [(HUSetupCodeField *)self topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v13 setActive:1];

    bottomAnchor = [(UIStackView *)self->_codeFieldItemsView bottomAnchor];
    bottomAnchor2 = [(HUSetupCodeField *)self bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v16 setActive:1];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  items = [(HUSetupCodeField *)self items];
  v18 = [items countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(items);
        }

        v22 = *(*(&v28 + 1) + 8 * v21);
        codeFieldItemsView = [(HUSetupCodeField *)self codeFieldItemsView];
        [codeFieldItemsView addArrangedSubview:v22];

        widthAnchor = [v22 widthAnchor];
        v25 = [widthAnchor constraintEqualToConstant:36.0];
        [v25 setActive:1];

        heightAnchor = [v22 heightAnchor];
        v27 = [heightAnchor constraintEqualToConstant:56.0];
        [v27 setActive:1];

        ++v21;
      }

      while (v19 != v21);
      v19 = [items countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v19);
  }
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  stringCopy = string;
  decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v8 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:stringCopy];
  v9 = [decimalDigitCharacterSet isSupersetOfSet:v8];
  if (v9)
  {
    if ([stringCopy length])
    {
      activeItem = [(HUSetupCodeField *)self activeItem];

      if (activeItem)
      {
        v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(stringCopy, "integerValue")}];
        activeItem2 = [(HUSetupCodeField *)self activeItem];
        [activeItem2 setValue:v11];
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

- (BOOL)textFieldShouldReturn:(id)return
{
  if ([(HUSetupCodeField *)self isComplete])
  {
    delegate = [(HUSetupCodeField *)self delegate];
    if (![delegate conformsToProtocol:&unk_2825BDA20])
    {
LABEL_5:

      return 1;
    }

    delegate2 = [(HUSetupCodeField *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate = [(HUSetupCodeField *)self delegate];
      [delegate setupCodeFieldDidReturn:self];
      goto LABEL_5;
    }
  }

  return 1;
}

- (void)_activateNext
{
  activeItem = [(HUSetupCodeField *)self activeItem];

  if (activeItem)
  {
    activeItem2 = [(HUSetupCodeField *)self activeItem];
    v5 = [activeItem2 itemNumber] + 1;

    items = [(HUSetupCodeField *)self items];
    v7 = [items count];

    if (v5 <= v7)
    {
      activeItem3 = [(HUSetupCodeField *)self activeItem];
      [activeItem3 deactivate];

      items2 = [(HUSetupCodeField *)self items];
      v10 = [items2 count];

      if (v5 == v10)
      {
        [(HUSetupCodeField *)self setActiveItem:0];
      }

      else
      {
        items3 = [(HUSetupCodeField *)self items];
        v12 = [items3 objectAtIndexedSubscript:v5];
        [(HUSetupCodeField *)self setActiveItem:v12];

        activeItem4 = [(HUSetupCodeField *)self activeItem];
        [activeItem4 activate];
      }
    }

    activeItem5 = [(HUSetupCodeField *)self activeItem];
    if (!activeItem5)
    {
      delegate = [(HUSetupCodeField *)self delegate];
      if ([delegate conformsToProtocol:&unk_2825BDA20])
      {
        delegate2 = [(HUSetupCodeField *)self delegate];
        v16 = objc_opt_respondsToSelector();

        if ((v16 & 1) == 0)
        {
          return;
        }

        delegate = [(HUSetupCodeField *)self delegate];
        [delegate setupCodeFieldDidBecomeComplete:self];
      }

      activeItem5 = delegate;
    }
  }
}

- (void)_activateLast
{
  isComplete = [(HUSetupCodeField *)self isComplete];
  activeItem = [(HUSetupCodeField *)self activeItem];
  if (activeItem && (v5 = activeItem, -[HUSetupCodeField activeItem](self, "activeItem"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 itemNumber], v6, v5, v7))
  {
    if (!isComplete)
    {
      activeItem2 = [(HUSetupCodeField *)self activeItem];

      if (activeItem2)
      {
        activeItem3 = [(HUSetupCodeField *)self activeItem];
        itemNumber = [activeItem3 itemNumber];

        activeItem4 = [(HUSetupCodeField *)self activeItem];
        [activeItem4 deactivate];
        goto LABEL_8;
      }
    }
  }

  else if (!isComplete)
  {
    return;
  }

  activeItem4 = [(HUSetupCodeField *)self items];
  itemNumber = [activeItem4 count];
LABEL_8:

  items = [(HUSetupCodeField *)self items];
  v13 = [items objectAtIndexedSubscript:itemNumber - 1];
  [(HUSetupCodeField *)self setActiveItem:v13];

  activeItem5 = [(HUSetupCodeField *)self activeItem];
  [activeItem5 clear];

  activeItem6 = [(HUSetupCodeField *)self activeItem];
  [activeItem6 activate];

  if (!isComplete)
  {
    return;
  }

  delegate = [(HUSetupCodeField *)self delegate];
  if ([delegate conformsToProtocol:&unk_2825BDA20])
  {
    delegate2 = [(HUSetupCodeField *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if ((v17 & 1) == 0)
    {
      return;
    }

    delegate = [(HUSetupCodeField *)self delegate];
    [delegate setupCodeFieldDidBecomeIncomplete:self];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = HUSetupCodeField;
  [(HUSetupCodeField *)&v4 traitCollectionDidChange:change];
  [(HUSetupCodeField *)self _updateInterfaceForCurrentTraitCollection];
}

- (void)_updateInterfaceForCurrentTraitCollection
{
  traitCollection = [(HUSetupCodeField *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  hiddenInputField = [(HUSetupCodeField *)self hiddenInputField];
  v7 = hiddenInputField;
  if (userInterfaceStyle == 2)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  [hiddenInputField setKeyboardAppearance:v6];
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