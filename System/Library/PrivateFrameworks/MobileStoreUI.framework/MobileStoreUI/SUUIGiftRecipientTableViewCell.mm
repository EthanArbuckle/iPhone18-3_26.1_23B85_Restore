@interface SUUIGiftRecipientTableViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSArray)recipientAddresses;
- (NSString)label;
- (SUUIGiftRecipientTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_contactStore;
- (id)composeRecipientView:(id)view composeRecipientForAddress:(id)address;
- (void)_resetSearchController;
- (void)_sendDidChangeRecipients;
- (void)_sendDidUpdateSearchController;
- (void)_sendDismissContactPicker;
- (void)composeHeaderView:(id)view didChangeSize:(CGSize)size;
- (void)composeRecipientView:(id)view didAddRecipient:(id)recipient;
- (void)composeRecipientView:(id)view didFinishEnteringAddress:(id)address;
- (void)composeRecipientView:(id)view textDidChange:(id)change;
- (void)composeRecipientViewDidBecomeFirstResponder:(id)responder;
- (void)composeRecipientViewDidFinishPickingRecipient:(id)recipient;
- (void)composeRecipientViewRequestAddRecipient:(id)recipient;
- (void)contactPicker:(id)picker didSelectContactProperty:(id)property;
- (void)dealloc;
- (void)layoutSubviews;
- (void)presentPeoplePickerPopover:(id)popover animated:(BOOL)animated;
- (void)presentSearchResultsPopover:(id)popover animated:(BOOL)animated;
- (void)recipientViewDidResignFirstResponder:(id)responder;
- (void)searchController:(id)controller didSelectRecipient:(id)recipient;
- (void)setAttributedPlaceholder:(id)placeholder;
@end

@implementation SUUIGiftRecipientTableViewCell

- (SUUIGiftRecipientTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v43 = *MEMORY[0x277D85DE8];
  v41.receiver = self;
  v41.super_class = SUUIGiftRecipientTableViewCell;
  v4 = [(SUUIGiftRecipientTableViewCell *)&v41 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = SUUIContactsAutocompleteUIFramework();
    v6 = objc_alloc_init(SUUIWeakLinkedClassForString(&cfstr_Cncomposerecip.isa, v5));
    recipientView = v4->_recipientView;
    v4->_recipientView = v6;

    labelView = [(CNComposeRecipientTextView *)v4->_recipientView labelView];
    v9 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
    [labelView setFont:v9];

    labelView2 = [(CNComposeRecipientTextView *)v4->_recipientView labelView];
    labelColor = [MEMORY[0x277D75348] labelColor];
    [labelView2 setTextColor:labelColor];

    labelView3 = [(CNComposeRecipientTextView *)v4->_recipientView labelView];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [labelView3 setBackgroundColor:clearColor];

    v14 = v4->_recipientView;
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(CNComposeRecipientTextView *)v14 setBackgroundColor:clearColor2];

    [(CNComposeRecipientTextView *)v4->_recipientView setDelegate:v4];
    v16 = v4->_recipientView;
    labelView4 = [(CNComposeRecipientTextView *)v16 labelView];
    font = [labelView4 font];
    [(CNComposeRecipientTextView *)v16 setBaseFont:font];

    v19 = *MEMORY[0x277D76840];
    [(CNComposeRecipientTextView *)v4->_recipientView setMaximumContentSizeCategory:*MEMORY[0x277D76840]];
    [(CNComposeRecipientTextView *)v4->_recipientView setMinimumContentSizeCategory:v19];
    textView = [(CNComposeRecipientTextView *)v4->_recipientView textView];
    textContainer = [textView textContainer];
    [textContainer setLineFragmentPadding:0.0];

    [(CNComposeRecipientTextView *)v4->_recipientView subviews];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v22 = v40 = 0u;
    v23 = [v22 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v38;
      while (2)
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v38 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v37 + 1) + 8 * i);
          [v27 frame];
          if (v28 <= 1.0)
          {
            [v27 setHidden:1];
            goto LABEL_12;
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v37 objects:v42 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    [(CNComposeRecipientTextView *)v4->_recipientView sizeToFit];
    contentView = [(SUUIGiftRecipientTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_recipientView];

    v30 = objc_alloc_init(MEMORY[0x277D75D18]);
    topBorderView = v4->_topBorderView;
    v4->_topBorderView = v30;

    v32 = v4->_topBorderView;
    separatorColor = [MEMORY[0x277D75348] separatorColor];
    [(UIView *)v32 setBackgroundColor:separatorColor];

    contentView2 = [(SUUIGiftRecipientTableViewCell *)v4 contentView];
    [contentView2 addSubview:v4->_topBorderView];

    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v4->_leftToRight = [mEMORY[0x277D75128] userInterfaceLayoutDirection] == 0;

    [(SUUIGiftRecipientTableViewCell *)v4 setDidLayoutSubviews:0];
  }

  return v4;
}

- (void)dealloc
{
  [(CNContactPickerViewController *)self->_contactPickerController setDelegate:0];
  [(CNComposeRecipientTextView *)self->_recipientView setDelegate:0];
  [(SUUIGiftContactSearchController *)self->_searchController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUIGiftRecipientTableViewCell;
  [(SUUIGiftRecipientTableViewCell *)&v3 dealloc];
}

- (NSString)label
{
  labelView = [(CNComposeRecipientTextView *)self->_recipientView labelView];
  text = [labelView text];

  return text;
}

- (void)presentPeoplePickerPopover:(id)popover animated:(BOOL)animated
{
  popoverCopy = popover;
  [(SUUIGiftRecipientTableViewCell *)self frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  superview = [(SUUIGiftRecipientTableViewCell *)self superview];
  [popoverCopy presentPopoverFromRect:superview inView:15 permittedArrowDirections:1 animated:{v7, v9, v11, v13}];
}

- (void)presentSearchResultsPopover:(id)popover animated:(BOOL)animated
{
  animatedCopy = animated;
  recipientView = self->_recipientView;
  popoverCopy = popover;
  textView = [(CNComposeRecipientTextView *)recipientView textView];
  [textView bounds];
  [popoverCopy presentPopoverFromRect:textView inView:1 permittedArrowDirections:animatedCopy animated:?];
}

- (NSArray)recipientAddresses
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  recipients = [(CNComposeRecipientTextView *)self->_recipientView recipients];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [recipients countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(recipients);
        }

        address = [*(*(&v11 + 1) + 8 * i) address];
        if ([address length])
        {
          [array addObject:address];
        }
      }

      v6 = [recipients countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (void)setAttributedPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  attributedPlaceholder = [(SUUIGiftRecipientTableViewCell *)self attributedPlaceholder];
  if (attributedPlaceholder != placeholderCopy && ([placeholderCopy isEqual:attributedPlaceholder] & 1) == 0)
  {
    placeholderLabel = self->_placeholderLabel;
    if (placeholderCopy)
    {
      if (!placeholderLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_placeholderLabel;
        self->_placeholderLabel = v6;

        v8 = self->_placeholderLabel;
        clearColor = [MEMORY[0x277D75348] clearColor];
        [(UILabel *)v8 setBackgroundColor:clearColor];

        v10 = self->_placeholderLabel;
        textView = [(CNComposeRecipientTextView *)self->_recipientView textView];
        if ([textView isFirstResponder])
        {
          hasContent = 1;
        }

        else
        {
          hasContent = [(CNComposeRecipientTextView *)self->_recipientView hasContent];
        }

        [(UILabel *)v10 setHidden:hasContent];

        contentView = [(SUUIGiftRecipientTableViewCell *)self contentView];
        [contentView insertSubview:self->_placeholderLabel belowSubview:self->_recipientView];

        placeholderLabel = self->_placeholderLabel;
      }

      [(UILabel *)placeholderLabel setAttributedText:?];
      [(UILabel *)self->_placeholderLabel sizeToFit];
    }

    else
    {
      [(UILabel *)placeholderLabel removeFromSuperview];
      v13 = self->_placeholderLabel;
      self->_placeholderLabel = 0;
    }

    [(SUUIGiftRecipientTableViewCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v38.receiver = self;
  v38.super_class = SUUIGiftRecipientTableViewCell;
  [(SUUIGiftRecipientTableViewCell *)&v38 layoutSubviews];
  contentView = [(SUUIGiftRecipientTableViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(CNComposeRecipientTextView *)self->_recipientView setFrame:v5, v7, v9, v11];
  if ([(SUUIGiftRecipientTableViewCell *)self didLayoutSubviews])
  {
    [(CNComposeRecipientTextView *)self->_recipientView reflow];
  }

  [(CNComposeRecipientTextView *)self->_recipientView layoutIfNeeded];
  if (self->_placeholderLabel)
  {
    labelView = [(CNComposeRecipientTextView *)self->_recipientView labelView];
    [labelView frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    superview = [labelView superview];
    [(SUUIGiftRecipientTableViewCell *)self convertRect:superview fromView:v14, v16, v18, v20];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    [(UILabel *)self->_placeholderLabel frame];
    v31 = v30;
    if ([(SUUIGiftRecipientTableViewCell *)self leftToRight])
    {
      v39.origin.x = v23;
      v39.origin.y = v25;
      v39.size.width = v27;
      v39.size.height = v29;
      v32 = CGRectGetMaxX(v39) + 4.0;
      v33 = v9 + -15.0 - v32;
    }

    else
    {
      v33 = v9 + -15.0 + -4.0 + v23 - v9;
      v32 = 15.0;
    }

    v34 = (v29 - v31) * 0.5;
    [(UILabel *)self->_placeholderLabel setFrame:v32, v25 + floorf(v34), v33, v31];
  }

  topBorderView = self->_topBorderView;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  [(UIView *)topBorderView setFrame:0.0, 0.0, v9, 1.0 / v37];

  [(SUUIGiftRecipientTableViewCell *)self setDidLayoutSubviews:1];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(CNComposeRecipientTextView *)self->_recipientView frame:fits.width];
  v5 = v4;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)contactPicker:(id)picker didSelectContactProperty:(id)property
{
  propertyCopy = property;
  v6 = SUUIContactsAutocompleteUIFramework();
  v7 = objc_alloc(SUUIWeakLinkedClassForString(&cfstr_Cncomposerecip_0.isa, v6));
  contact = [propertyCopy contact];
  value = [propertyCopy value];

  v10 = [v7 initWithContact:contact address:value kind:0];
  [(CNComposeRecipientTextView *)self->_recipientView addRecipient:v10];
  [(SUUIGiftRecipientTableViewCell *)self _sendDismissContactPicker];
}

- (void)composeHeaderView:(id)view didChangeSize:(CGSize)size
{
  height = size.height;
  viewCopy = view;
  [viewCopy frame];
  v6 = viewCopy;
  if (height != v7)
  {
    [viewCopy setFrame:?];
    superview = [(SUUIGiftRecipientTableViewCell *)self superview];
    if (superview)
    {
      do
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        v8Superview = [superview superview];

        superview = v8Superview;
      }

      while (v8Superview);
    }

    delegate = [superview delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate tableView:superview giftRecipientCellDidChangeSize:self];
    }

    v6 = viewCopy;
  }
}

- (id)composeRecipientView:(id)view composeRecipientForAddress:(id)address
{
  addressCopy = address;
  v5 = SUUIContactsAutocompleteUIFramework();
  v6 = [objc_alloc(SUUIWeakLinkedClassForString(&cfstr_Cncomposerecip_0.isa v5))];

  return v6;
}

- (void)composeRecipientView:(id)view didAddRecipient:(id)recipient
{
  -[UILabel setHidden:](self->_placeholderLabel, "setHidden:", [view hasContent]);

  [(SUUIGiftRecipientTableViewCell *)self setNeedsLayout];
}

- (void)composeRecipientView:(id)view didFinishEnteringAddress:(id)address
{
  viewCopy = view;
  addressCopy = address;
  [viewCopy clearText];
  if ([addressCopy length])
  {
    [viewCopy addAddress:addressCopy];
  }

  [(SUUIGiftRecipientTableViewCell *)self _resetSearchController];
  [(SUUIGiftRecipientTableViewCell *)self _sendDidChangeRecipients];
}

- (void)composeRecipientView:(id)view textDidChange:(id)change
{
  viewCopy = view;
  changeCopy = change;
  if (!self->_searchController)
  {
    v7 = objc_alloc_init(SUUIGiftContactSearchController);
    searchController = self->_searchController;
    self->_searchController = v7;

    [(SUUIGiftContactSearchController *)self->_searchController setDelegate:self];
  }

  -[UILabel setHidden:](self->_placeholderLabel, "setHidden:", [viewCopy hasContent]);
  [(SUUIGiftContactSearchController *)self->_searchController searchForText:changeCopy];
}

- (void)composeRecipientViewDidBecomeFirstResponder:(id)responder
{
  _contactStore = [(SUUIGiftRecipientTableViewCell *)self _contactStore];
  if (_contactStore)
  {
    v4 = _contactStore;
    [_contactStore requestAccessForEntityType:0 completionHandler:&__block_literal_global_14];
    _contactStore = v4;
  }
}

- (void)composeRecipientViewDidFinishPickingRecipient:(id)recipient
{
  [(SUUIGiftRecipientTableViewCell *)self _sendDismissContactPicker];

  [(SUUIGiftRecipientTableViewCell *)self _sendDidChangeRecipients];
}

- (void)composeRecipientViewRequestAddRecipient:(id)recipient
{
  v17[1] = *MEMORY[0x277D85DE8];
  superview = [(SUUIGiftRecipientTableViewCell *)self superview];
  if (superview)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v4Superview = [superview superview];

      superview = v4Superview;
    }

    while (v4Superview);
  }

  delegate = [superview delegate];
  if (objc_opt_respondsToSelector())
  {
    contactPickerController = self->_contactPickerController;
    if (!contactPickerController)
    {
      v8 = SUUIContactsUIFramework();
      v9 = objc_alloc_init(SUUIWeakLinkedClassForString(&cfstr_Cncontactpicke.isa, v8));
      v10 = self->_contactPickerController;
      self->_contactPickerController = v9;

      [(CNContactPickerViewController *)self->_contactPickerController setDelegate:self];
      v11 = SUUIContactsFramework();
      v12 = SUUIWeakLinkedSymbolForString("CNContactEmailAddressesKey", v11);
      v13 = self->_contactPickerController;
      v17[0] = *v12;
      v14 = MEMORY[0x277CBEA60];
      v15 = v17[0];
      v16 = [v14 arrayWithObjects:v17 count:1];
      [(CNContactPickerViewController *)v13 setDisplayedPropertyKeys:v16];

      contactPickerController = self->_contactPickerController;
    }

    [delegate tableView:superview giftRecipientCell:self presentContactPicker:{contactPickerController, v17[0]}];
  }
}

- (void)recipientViewDidResignFirstResponder:(id)responder
{
  [(UILabel *)self->_placeholderLabel setHidden:[(CNComposeRecipientTextView *)self->_recipientView hasContent]];

  [(SUUIGiftRecipientTableViewCell *)self _resetSearchController];
}

- (void)searchController:(id)controller didSelectRecipient:(id)recipient
{
  [(CNComposeRecipientTextView *)self->_recipientView addRecipient:recipient];
  [(CNComposeRecipientTextView *)self->_recipientView clearText];
  [(SUUIGiftRecipientTableViewCell *)self _resetSearchController];

  [(SUUIGiftRecipientTableViewCell *)self _sendDidChangeRecipients];
}

- (id)_contactStore
{
  contactStore = self->_contactStore;
  if (!contactStore)
  {
    v4 = SUUIContactsFramework();
    v5 = objc_alloc_init(SUUIWeakLinkedClassForString(&cfstr_Cncontactstore.isa, v4));
    v6 = self->_contactStore;
    self->_contactStore = v5;

    contactStore = self->_contactStore;
  }

  return contactStore;
}

- (void)_resetSearchController
{
  searchController = self->_searchController;
  if (searchController)
  {
    [(SUUIGiftContactSearchController *)searchController resetSearch];

    [(SUUIGiftRecipientTableViewCell *)self _sendDidUpdateSearchController];
  }
}

- (void)_sendDidChangeRecipients
{
  superview = [(SUUIGiftRecipientTableViewCell *)self superview];
  if (superview)
  {
    while (1)
    {
      v6 = superview;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      superview2 = [v6 superview];

      superview = superview2;
      if (!superview2)
      {
        goto LABEL_6;
      }
    }

    superview = v6;
  }

LABEL_6:
  v7 = superview;
  delegate = [superview delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate tableView:v7 giftRecipientCellDidChangeRecipients:self];
  }
}

- (void)_sendDidUpdateSearchController
{
  superview = [(SUUIGiftRecipientTableViewCell *)self superview];
  if (superview)
  {
    while (1)
    {
      v6 = superview;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      superview2 = [v6 superview];

      superview = superview2;
      if (!superview2)
      {
        goto LABEL_6;
      }
    }

    superview = v6;
  }

LABEL_6:
  v7 = superview;
  delegate = [superview delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate tableView:v7 giftRecipientCell:self didUpdateSearchController:self->_searchController];
  }
}

- (void)_sendDismissContactPicker
{
  superview = [(SUUIGiftRecipientTableViewCell *)self superview];
  if (superview)
  {
    while (1)
    {
      v6 = superview;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      superview2 = [v6 superview];

      superview = superview2;
      if (!superview2)
      {
        goto LABEL_6;
      }
    }

    superview = v6;
  }

LABEL_6:
  v7 = superview;
  delegate = [superview delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate tableView:v7 giftRecipientCell:self dismissContactPicker:self->_contactPickerController];
  }
}

@end