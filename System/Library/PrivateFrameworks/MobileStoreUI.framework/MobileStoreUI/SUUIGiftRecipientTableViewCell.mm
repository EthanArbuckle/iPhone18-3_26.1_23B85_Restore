@interface SUUIGiftRecipientTableViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSArray)recipientAddresses;
- (NSString)label;
- (SUUIGiftRecipientTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_contactStore;
- (id)composeRecipientView:(id)a3 composeRecipientForAddress:(id)a4;
- (void)_resetSearchController;
- (void)_sendDidChangeRecipients;
- (void)_sendDidUpdateSearchController;
- (void)_sendDismissContactPicker;
- (void)composeHeaderView:(id)a3 didChangeSize:(CGSize)a4;
- (void)composeRecipientView:(id)a3 didAddRecipient:(id)a4;
- (void)composeRecipientView:(id)a3 didFinishEnteringAddress:(id)a4;
- (void)composeRecipientView:(id)a3 textDidChange:(id)a4;
- (void)composeRecipientViewDidBecomeFirstResponder:(id)a3;
- (void)composeRecipientViewDidFinishPickingRecipient:(id)a3;
- (void)composeRecipientViewRequestAddRecipient:(id)a3;
- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)presentPeoplePickerPopover:(id)a3 animated:(BOOL)a4;
- (void)presentSearchResultsPopover:(id)a3 animated:(BOOL)a4;
- (void)recipientViewDidResignFirstResponder:(id)a3;
- (void)searchController:(id)a3 didSelectRecipient:(id)a4;
- (void)setAttributedPlaceholder:(id)a3;
@end

@implementation SUUIGiftRecipientTableViewCell

- (SUUIGiftRecipientTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v41.receiver = self;
  v41.super_class = SUUIGiftRecipientTableViewCell;
  v4 = [(SUUIGiftRecipientTableViewCell *)&v41 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = SUUIContactsAutocompleteUIFramework();
    v6 = objc_alloc_init(SUUIWeakLinkedClassForString(&cfstr_Cncomposerecip.isa, v5));
    recipientView = v4->_recipientView;
    v4->_recipientView = v6;

    v8 = [(CNComposeRecipientTextView *)v4->_recipientView labelView];
    v9 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
    [v8 setFont:v9];

    v10 = [(CNComposeRecipientTextView *)v4->_recipientView labelView];
    v11 = [MEMORY[0x277D75348] labelColor];
    [v10 setTextColor:v11];

    v12 = [(CNComposeRecipientTextView *)v4->_recipientView labelView];
    v13 = [MEMORY[0x277D75348] clearColor];
    [v12 setBackgroundColor:v13];

    v14 = v4->_recipientView;
    v15 = [MEMORY[0x277D75348] clearColor];
    [(CNComposeRecipientTextView *)v14 setBackgroundColor:v15];

    [(CNComposeRecipientTextView *)v4->_recipientView setDelegate:v4];
    v16 = v4->_recipientView;
    v17 = [(CNComposeRecipientTextView *)v16 labelView];
    v18 = [v17 font];
    [(CNComposeRecipientTextView *)v16 setBaseFont:v18];

    v19 = *MEMORY[0x277D76840];
    [(CNComposeRecipientTextView *)v4->_recipientView setMaximumContentSizeCategory:*MEMORY[0x277D76840]];
    [(CNComposeRecipientTextView *)v4->_recipientView setMinimumContentSizeCategory:v19];
    v20 = [(CNComposeRecipientTextView *)v4->_recipientView textView];
    v21 = [v20 textContainer];
    [v21 setLineFragmentPadding:0.0];

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
    v29 = [(SUUIGiftRecipientTableViewCell *)v4 contentView];
    [v29 addSubview:v4->_recipientView];

    v30 = objc_alloc_init(MEMORY[0x277D75D18]);
    topBorderView = v4->_topBorderView;
    v4->_topBorderView = v30;

    v32 = v4->_topBorderView;
    v33 = [MEMORY[0x277D75348] separatorColor];
    [(UIView *)v32 setBackgroundColor:v33];

    v34 = [(SUUIGiftRecipientTableViewCell *)v4 contentView];
    [v34 addSubview:v4->_topBorderView];

    v35 = [MEMORY[0x277D75128] sharedApplication];
    v4->_leftToRight = [v35 userInterfaceLayoutDirection] == 0;

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
  v2 = [(CNComposeRecipientTextView *)self->_recipientView labelView];
  v3 = [v2 text];

  return v3;
}

- (void)presentPeoplePickerPopover:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  [(SUUIGiftRecipientTableViewCell *)self frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(SUUIGiftRecipientTableViewCell *)self superview];
  [v5 presentPopoverFromRect:v14 inView:15 permittedArrowDirections:1 animated:{v7, v9, v11, v13}];
}

- (void)presentSearchResultsPopover:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  recipientView = self->_recipientView;
  v6 = a3;
  v7 = [(CNComposeRecipientTextView *)recipientView textView];
  [v7 bounds];
  [v6 presentPopoverFromRect:v7 inView:1 permittedArrowDirections:v4 animated:?];
}

- (NSArray)recipientAddresses
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(CNComposeRecipientTextView *)self->_recipientView recipients];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) address];
        if ([v9 length])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)setAttributedPlaceholder:(id)a3
{
  v15 = a3;
  v4 = [(SUUIGiftRecipientTableViewCell *)self attributedPlaceholder];
  if (v4 != v15 && ([v15 isEqual:v4] & 1) == 0)
  {
    placeholderLabel = self->_placeholderLabel;
    if (v15)
    {
      if (!placeholderLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_placeholderLabel;
        self->_placeholderLabel = v6;

        v8 = self->_placeholderLabel;
        v9 = [MEMORY[0x277D75348] clearColor];
        [(UILabel *)v8 setBackgroundColor:v9];

        v10 = self->_placeholderLabel;
        v11 = [(CNComposeRecipientTextView *)self->_recipientView textView];
        if ([v11 isFirstResponder])
        {
          v12 = 1;
        }

        else
        {
          v12 = [(CNComposeRecipientTextView *)self->_recipientView hasContent];
        }

        [(UILabel *)v10 setHidden:v12];

        v14 = [(SUUIGiftRecipientTableViewCell *)self contentView];
        [v14 insertSubview:self->_placeholderLabel belowSubview:self->_recipientView];

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
  v3 = [(SUUIGiftRecipientTableViewCell *)self contentView];
  [v3 bounds];
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
    v12 = [(CNComposeRecipientTextView *)self->_recipientView labelView];
    [v12 frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [v12 superview];
    [(SUUIGiftRecipientTableViewCell *)self convertRect:v21 fromView:v14, v16, v18, v20];
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
  v36 = [MEMORY[0x277D759A0] mainScreen];
  [v36 scale];
  [(UIView *)topBorderView setFrame:0.0, 0.0, v9, 1.0 / v37];

  [(SUUIGiftRecipientTableViewCell *)self setDidLayoutSubviews:1];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(CNComposeRecipientTextView *)self->_recipientView frame:a3.width];
  v5 = v4;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4
{
  v5 = a4;
  v6 = SUUIContactsAutocompleteUIFramework();
  v7 = objc_alloc(SUUIWeakLinkedClassForString(&cfstr_Cncomposerecip_0.isa, v6));
  v8 = [v5 contact];
  v9 = [v5 value];

  v10 = [v7 initWithContact:v8 address:v9 kind:0];
  [(CNComposeRecipientTextView *)self->_recipientView addRecipient:v10];
  [(SUUIGiftRecipientTableViewCell *)self _sendDismissContactPicker];
}

- (void)composeHeaderView:(id)a3 didChangeSize:(CGSize)a4
{
  height = a4.height;
  v11 = a3;
  [v11 frame];
  v6 = v11;
  if (height != v7)
  {
    [v11 setFrame:?];
    v8 = [(SUUIGiftRecipientTableViewCell *)self superview];
    if (v8)
    {
      do
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        v9 = [v8 superview];

        v8 = v9;
      }

      while (v9);
    }

    v10 = [v8 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v10 tableView:v8 giftRecipientCellDidChangeSize:self];
    }

    v6 = v11;
  }
}

- (id)composeRecipientView:(id)a3 composeRecipientForAddress:(id)a4
{
  v4 = a4;
  v5 = SUUIContactsAutocompleteUIFramework();
  v6 = [objc_alloc(SUUIWeakLinkedClassForString(&cfstr_Cncomposerecip_0.isa v5))];

  return v6;
}

- (void)composeRecipientView:(id)a3 didAddRecipient:(id)a4
{
  -[UILabel setHidden:](self->_placeholderLabel, "setHidden:", [a3 hasContent]);

  [(SUUIGiftRecipientTableViewCell *)self setNeedsLayout];
}

- (void)composeRecipientView:(id)a3 didFinishEnteringAddress:(id)a4
{
  v7 = a3;
  v6 = a4;
  [v7 clearText];
  if ([v6 length])
  {
    [v7 addAddress:v6];
  }

  [(SUUIGiftRecipientTableViewCell *)self _resetSearchController];
  [(SUUIGiftRecipientTableViewCell *)self _sendDidChangeRecipients];
}

- (void)composeRecipientView:(id)a3 textDidChange:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (!self->_searchController)
  {
    v7 = objc_alloc_init(SUUIGiftContactSearchController);
    searchController = self->_searchController;
    self->_searchController = v7;

    [(SUUIGiftContactSearchController *)self->_searchController setDelegate:self];
  }

  -[UILabel setHidden:](self->_placeholderLabel, "setHidden:", [v9 hasContent]);
  [(SUUIGiftContactSearchController *)self->_searchController searchForText:v6];
}

- (void)composeRecipientViewDidBecomeFirstResponder:(id)a3
{
  v3 = [(SUUIGiftRecipientTableViewCell *)self _contactStore];
  if (v3)
  {
    v4 = v3;
    [v3 requestAccessForEntityType:0 completionHandler:&__block_literal_global_14];
    v3 = v4;
  }
}

- (void)composeRecipientViewDidFinishPickingRecipient:(id)a3
{
  [(SUUIGiftRecipientTableViewCell *)self _sendDismissContactPicker];

  [(SUUIGiftRecipientTableViewCell *)self _sendDidChangeRecipients];
}

- (void)composeRecipientViewRequestAddRecipient:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = [(SUUIGiftRecipientTableViewCell *)self superview];
  if (v4)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v5 = [v4 superview];

      v4 = v5;
    }

    while (v5);
  }

  v6 = [v4 delegate];
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

    [v6 tableView:v4 giftRecipientCell:self presentContactPicker:{contactPickerController, v17[0]}];
  }
}

- (void)recipientViewDidResignFirstResponder:(id)a3
{
  [(UILabel *)self->_placeholderLabel setHidden:[(CNComposeRecipientTextView *)self->_recipientView hasContent]];

  [(SUUIGiftRecipientTableViewCell *)self _resetSearchController];
}

- (void)searchController:(id)a3 didSelectRecipient:(id)a4
{
  [(CNComposeRecipientTextView *)self->_recipientView addRecipient:a4];
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
  v3 = [(SUUIGiftRecipientTableViewCell *)self superview];
  if (v3)
  {
    while (1)
    {
      v6 = v3;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v4 = [v6 superview];

      v3 = v4;
      if (!v4)
      {
        goto LABEL_6;
      }
    }

    v3 = v6;
  }

LABEL_6:
  v7 = v3;
  v5 = [v3 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 tableView:v7 giftRecipientCellDidChangeRecipients:self];
  }
}

- (void)_sendDidUpdateSearchController
{
  v3 = [(SUUIGiftRecipientTableViewCell *)self superview];
  if (v3)
  {
    while (1)
    {
      v6 = v3;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v4 = [v6 superview];

      v3 = v4;
      if (!v4)
      {
        goto LABEL_6;
      }
    }

    v3 = v6;
  }

LABEL_6:
  v7 = v3;
  v5 = [v3 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 tableView:v7 giftRecipientCell:self didUpdateSearchController:self->_searchController];
  }
}

- (void)_sendDismissContactPicker
{
  v3 = [(SUUIGiftRecipientTableViewCell *)self superview];
  if (v3)
  {
    while (1)
    {
      v6 = v3;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v4 = [v6 superview];

      v3 = v4;
      if (!v4)
      {
        goto LABEL_6;
      }
    }

    v3 = v6;
  }

LABEL_6:
  v7 = v3;
  v5 = [v3 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 tableView:v7 giftRecipientCell:self dismissContactPicker:self->_contactPickerController];
  }
}

@end