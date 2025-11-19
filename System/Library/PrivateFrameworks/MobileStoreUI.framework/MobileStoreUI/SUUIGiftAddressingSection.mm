@interface SUUIGiftAddressingSection
- (SUUIGiftAddressingSection)initWithGiftConfiguration:(id)a3;
- (SUUIGiftTextTableViewCell)messageCell;
- (double)heightForCellInTableView:(id)a3 indexPath:(id)a4;
- (id)_attributedPlaceholderWithString:(id)a3;
- (id)_footerString;
- (id)_recipientTableViewCell;
- (id)_textFieldTableViewCellForTableView:(id)a3 indexPath:(id)a4;
- (id)tableViewCellForTableView:(id)a3 indexPath:(id)a4;
- (void)beginEditingMessageForTableView:(id)a3 indexPath:(id)a4;
- (void)endEditingMessageForTableView:(id)a3 indexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forIndexPath:(id)a5;
@end

@implementation SUUIGiftAddressingSection

- (SUUIGiftAddressingSection)initWithGiftConfiguration:(id)a3
{
  v4.receiver = self;
  v4.super_class = SUUIGiftAddressingSection;
  result = [(SUUIGiftTableViewSection *)&v4 initWithGiftConfiguration:a3];
  if (result)
  {
    result->_textViewCellHeight = 46.0;
  }

  return result;
}

- (void)beginEditingMessageForTableView:(id)a3 indexPath:(id)a4
{
  v9[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (([(UITextView *)self->_messagingTextView isFirstResponder]& 1) == 0)
  {
    self->_textViewCellHeight = 137.0;
    v9[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    [v6 reloadRowsAtIndexPaths:v8 withRowAnimation:5];

    [(UITextView *)self->_messagingTextView setEditable:1];
    [(UITextView *)self->_messagingTextView setUserInteractionEnabled:1];
    [(UITextView *)self->_messagingTextView becomeFirstResponder];
  }
}

- (void)endEditingMessageForTableView:(id)a3 indexPath:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  messagingTextView = self->_messagingTextView;
  v8 = a3;
  v9 = [(UITextView *)messagingTextView text];
  v10 = [v9 length];

  if (v10)
  {
    v11 = self->_messagingTextView;
    [(UITextView *)v11 bounds];
    [(UITextView *)v11 sizeThatFits:v12, v13];
    v15 = v14 + 46.0 + 10.0;
  }

  else
  {
    v15 = 46.0;
  }

  self->_textViewCellHeight = v15;
  v17[0] = v6;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [v8 reloadRowsAtIndexPaths:v16 withRowAnimation:5];

  [(UITextView *)self->_messagingTextView setEditable:0];
  [(UITextView *)self->_messagingTextView setUserInteractionEnabled:0];
}

- (double)heightForCellInTableView:(id)a3 indexPath:(id)a4
{
  v5 = [a4 row];
  if (v5 == 2)
  {
    return self->_textViewCellHeight;
  }

  if (v5 == 1)
  {
    return 46.0;
  }

  if (v5)
  {
    footerHeight = self->_footerHeight;
    if (footerHeight < 0.00000011920929)
    {
      v12 = [[SUUIGiftFooterLabelTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
      v13 = [(SUUIGiftAddressingSection *)self _footerString];
      [(SUUIGiftFooterLabelTableViewCell *)v12 setFooterLabel:v13];

      v14 = [MEMORY[0x277D75418] currentDevice];
      v15 = [v14 userInterfaceIdiom];

      v16 = 320.0;
      if ((v15 & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v16 = 540.0;
      }

      [(SUUIGiftFooterLabelTableViewCell *)v12 sizeThatFits:v16, 1.79769313e308];
      self->_footerHeight = v17;

      return self->_footerHeight;
    }
  }

  else
  {
    v6 = [(SUUIGiftAddressingSection *)self _recipientTableViewCell];
    v7 = [MEMORY[0x277D75418] currentDevice];
    v8 = [v7 userInterfaceIdiom];

    v9 = 320.0;
    if ((v8 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v9 = 540.0;
    }

    [v6 sizeThatFits:{v9, 1.79769313e308}];
    if (v10 >= 46.0)
    {
      footerHeight = v10;
    }

    else
    {
      footerHeight = 46.0;
    }
  }

  return footerHeight;
}

- (id)tableViewCellForTableView:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 row];
  switch(v8)
  {
    case 2:
      v9 = [(SUUIGiftAddressingSection *)self messageCell];
      goto LABEL_7;
    case 1:
      v9 = [(SUUIGiftAddressingSection *)self _textFieldTableViewCellForTableView:v6 indexPath:v7];
      goto LABEL_7;
    case 0:
      v9 = [(SUUIGiftAddressingSection *)self _recipientTableViewCell];
LABEL_7:
      v10 = v9;
      goto LABEL_11;
  }

  v10 = [v6 dequeueReusableCellWithIdentifier:@"GF"];
  if (!v10)
  {
    v10 = [[SUUIGiftFooterLabelTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"GF"];
    [(SUUIGiftFooterLabelTableViewCell *)v10 setSelectionStyle:0];
  }

  v11 = [(SUUIGiftAddressingSection *)self _footerString];
  [(SUUIGiftFooterLabelTableViewCell *)v10 setFooterLabel:v11];

LABEL_11:

  return v10;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forIndexPath:(id)a5
{
  v9 = a3;
  v7 = a4;
  if ([a5 row] == 3)
  {
    v8 = [v9 backgroundColor];
    [v7 setBackgroundColor:v8];
  }
}

- (id)_attributedPlaceholderWithString:(id)a3
{
  v3 = MEMORY[0x277CCAB48];
  v4 = a3;
  v5 = [[v3 alloc] initWithString:v4];
  v6 = [v4 length];

  v7 = *MEMORY[0x277D740A8];
  v8 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
  [v5 addAttribute:v7 value:v8 range:{0, v6}];

  v9 = *MEMORY[0x277D740C0];
  v10 = [MEMORY[0x277D75348] placeholderTextColor];
  [v5 addAttribute:v9 value:v10 range:{0, v6}];

  v11 = *MEMORY[0x277D74068];
  v12 = [MEMORY[0x277D75348] clearColor];
  [v5 addAttribute:v11 value:v12 range:{0, v6}];

  return v5;
}

- (id)_footerString
{
  footerString = self->_footerString;
  if (!footerString)
  {
    v4 = [(SUUIGiftTableViewSection *)self giftConfiguration];
    v5 = [v4 clientContext];
    v6 = v5;
    if (v5)
    {
      [v5 localizedStringForKey:@"GIFTING_STOREFRONT_WARNING" inTable:@"Gifting"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"GIFTING_STOREFRONT_WARNING" inBundles:0 inTable:@"Gifting"];
    }
    v7 = ;

    v8 = MEMORY[0x277CCACA8];
    v9 = [v4 storeFrontName];
    v10 = [v8 stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@" error:0, v9];
    v11 = self->_footerString;
    self->_footerString = v10;

    footerString = self->_footerString;
  }

  return footerString;
}

- (id)_recipientTableViewCell
{
  recipientTableViewCell = self->_recipientTableViewCell;
  if (!recipientTableViewCell)
  {
    v4 = [(SUUIGiftTableViewSection *)self giftConfiguration];
    v5 = [v4 clientContext];

    v6 = [[SUUIGiftRecipientTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"GRF"];
    v7 = self->_recipientTableViewCell;
    self->_recipientTableViewCell = v6;

    v8 = self->_recipientTableViewCell;
    if (v5)
    {
      [v5 localizedStringForKey:@"GIFTING_PLACEHOLDER_EMAIL" inTable:@"Gifting"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"GIFTING_PLACEHOLDER_EMAIL" inBundles:0 inTable:@"Gifting"];
    }
    v9 = ;
    v10 = [(SUUIGiftAddressingSection *)self _attributedPlaceholderWithString:v9];
    [(SUUIGiftRecipientTableViewCell *)v8 setAttributedPlaceholder:v10];

    v11 = self->_recipientTableViewCell;
    if (v5)
    {
      [v5 localizedStringForKey:@"GIFTING_FIELD_LABEL_RECIPIENT" inTable:@"Gifting"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"GIFTING_FIELD_LABEL_RECIPIENT" inBundles:0 inTable:@"Gifting"];
    }
    v12 = ;
    [(SUUIGiftRecipientTableViewCell *)v11 setLabel:v12];

    v13 = self->_recipientTableViewCell;
    v14 = [(SUUIGift *)self->_gift recipientAddresses];
    [(SUUIGiftRecipientTableViewCell *)v13 setRecipientAddresses:v14];

    [(SUUIGiftRecipientTableViewCell *)self->_recipientTableViewCell setSelectionStyle:0];
    recipientTableViewCell = self->_recipientTableViewCell;
  }

  return recipientTableViewCell;
}

- (id)_textFieldTableViewCellForTableView:(id)a3 indexPath:(id)a4
{
  v5 = [a3 dequeueReusableCellWithIdentifier:{@"GTF", a4}];
  if (!v5)
  {
    v5 = [[SUUIGiftTextFieldTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"GTF"];
    [(SUUIGiftTextFieldTableViewCell *)v5 setSelectionStyle:0];
  }

  v6 = [(SUUIGiftTableViewSection *)self giftConfiguration];
  v7 = [v6 clientContext];

  if (v7)
  {
    [v7 localizedStringForKey:@"GIFTING_PLACEHOLDER_NAME" inTable:@"Gifting"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"GIFTING_PLACEHOLDER_NAME" inBundles:0 inTable:@"Gifting"];
  }
  v8 = ;
  v9 = [(SUUIGiftAddressingSection *)self _attributedPlaceholderWithString:v8];
  [(SUUIGiftTextFieldTableViewCell *)v5 setAttributedPlaceholder:v9];

  [(SUUIGiftTextFieldTableViewCell *)v5 setEnabled:1];
  [(SUUIGiftTextFieldTableViewCell *)v5 setKeyboardType:0];
  if (v7)
  {
    [v7 localizedStringForKey:@"GIFTING_FIELD_LABEL_SENDER_NAME" inTable:@"Gifting"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"GIFTING_FIELD_LABEL_SENDER_NAME" inBundles:0 inTable:@"Gifting"];
  }
  v10 = ;
  [(SUUIGiftTextFieldTableViewCell *)v5 setLabel:v10];

  [(SUUIGiftTextFieldTableViewCell *)v5 setTextFieldDelegate:self->_textFieldDelegate];
  v11 = [(SUUIGift *)self->_gift senderName];
  [(SUUIGiftTextFieldTableViewCell *)v5 setValue:v11];

  return v5;
}

- (SUUIGiftTextTableViewCell)messageCell
{
  messageCell = self->_messageCell;
  if (!messageCell)
  {
    v4 = [[SUUIGiftTextTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    v5 = [(SUUIGiftTableViewSection *)self giftConfiguration];
    v6 = [v5 maximumMessageLength];

    [(SUUIGiftTextTableViewCell *)v4 setMaximumCharacterCount:v6];
    [(SUUIGiftTextTableViewCell *)v4 setSelectionStyle:0];
    v7 = [(SUUIGiftTableViewSection *)self giftConfiguration];
    v8 = [v7 clientContext];

    if (v8)
    {
      [v8 localizedStringForKey:@"GIFTING_CONFIRM_MESSAGE_LABEL" inTable:@"Gifting"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"GIFTING_CONFIRM_MESSAGE_LABEL" inBundles:0 inTable:@"Gifting"];
    }
    v9 = ;
    [(SUUIGiftTextTableViewCell *)v4 setLabel:v9];

    if (v8)
    {
      [v8 localizedStringForKey:@"GIFTING_PLACEHOLDER_MESSAGE" inTable:@"Gifting"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"GIFTING_PLACEHOLDER_MESSAGE" inBundles:0 inTable:@"Gifting"];
    }
    v10 = ;
    v11 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v11 setNumberStyle:1];
    v12 = MEMORY[0x277CCACA8];
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
    v14 = [v11 stringFromNumber:v13];
    v15 = [v12 stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:0, v14];
    [(SUUIGiftTextTableViewCell *)v4 setPlaceholder:v15];

    messagingTextView = self->_messagingTextView;
    if (!messagingTextView)
    {
      v17 = +[SUUIGiftTextTableViewCell newTextView];
      v18 = self->_messagingTextView;
      self->_messagingTextView = v17;

      [(UITextView *)self->_messagingTextView setEditable:0];
      [(UITextView *)self->_messagingTextView setUserInteractionEnabled:0];
      messagingTextView = self->_messagingTextView;
    }

    [(SUUIGiftTextTableViewCell *)v4 setTextView:messagingTextView];
    v19 = self->_messageCell;
    self->_messageCell = v4;

    messageCell = self->_messageCell;
  }

  return messageCell;
}

@end