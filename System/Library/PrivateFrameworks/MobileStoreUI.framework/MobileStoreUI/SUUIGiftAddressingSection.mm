@interface SUUIGiftAddressingSection
- (SUUIGiftAddressingSection)initWithGiftConfiguration:(id)configuration;
- (SUUIGiftTextTableViewCell)messageCell;
- (double)heightForCellInTableView:(id)view indexPath:(id)path;
- (id)_attributedPlaceholderWithString:(id)string;
- (id)_footerString;
- (id)_recipientTableViewCell;
- (id)_textFieldTableViewCellForTableView:(id)view indexPath:(id)path;
- (id)tableViewCellForTableView:(id)view indexPath:(id)path;
- (void)beginEditingMessageForTableView:(id)view indexPath:(id)path;
- (void)endEditingMessageForTableView:(id)view indexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forIndexPath:(id)path;
@end

@implementation SUUIGiftAddressingSection

- (SUUIGiftAddressingSection)initWithGiftConfiguration:(id)configuration
{
  v4.receiver = self;
  v4.super_class = SUUIGiftAddressingSection;
  result = [(SUUIGiftTableViewSection *)&v4 initWithGiftConfiguration:configuration];
  if (result)
  {
    result->_textViewCellHeight = 46.0;
  }

  return result;
}

- (void)beginEditingMessageForTableView:(id)view indexPath:(id)path
{
  v9[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  if (([(UITextView *)self->_messagingTextView isFirstResponder]& 1) == 0)
  {
    self->_textViewCellHeight = 137.0;
    v9[0] = pathCopy;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    [viewCopy reloadRowsAtIndexPaths:v8 withRowAnimation:5];

    [(UITextView *)self->_messagingTextView setEditable:1];
    [(UITextView *)self->_messagingTextView setUserInteractionEnabled:1];
    [(UITextView *)self->_messagingTextView becomeFirstResponder];
  }
}

- (void)endEditingMessageForTableView:(id)view indexPath:(id)path
{
  v17[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  messagingTextView = self->_messagingTextView;
  viewCopy = view;
  text = [(UITextView *)messagingTextView text];
  v10 = [text length];

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
  v17[0] = pathCopy;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [viewCopy reloadRowsAtIndexPaths:v16 withRowAnimation:5];

  [(UITextView *)self->_messagingTextView setEditable:0];
  [(UITextView *)self->_messagingTextView setUserInteractionEnabled:0];
}

- (double)heightForCellInTableView:(id)view indexPath:(id)path
{
  v5 = [path row];
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
      _footerString = [(SUUIGiftAddressingSection *)self _footerString];
      [(SUUIGiftFooterLabelTableViewCell *)v12 setFooterLabel:_footerString];

      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      v16 = 320.0;
      if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
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
    _recipientTableViewCell = [(SUUIGiftAddressingSection *)self _recipientTableViewCell];
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

    v9 = 320.0;
    if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v9 = 540.0;
    }

    [_recipientTableViewCell sizeThatFits:{v9, 1.79769313e308}];
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

- (id)tableViewCellForTableView:(id)view indexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [pathCopy row];
  switch(v8)
  {
    case 2:
      messageCell = [(SUUIGiftAddressingSection *)self messageCell];
      goto LABEL_7;
    case 1:
      messageCell = [(SUUIGiftAddressingSection *)self _textFieldTableViewCellForTableView:viewCopy indexPath:pathCopy];
      goto LABEL_7;
    case 0:
      messageCell = [(SUUIGiftAddressingSection *)self _recipientTableViewCell];
LABEL_7:
      v10 = messageCell;
      goto LABEL_11;
  }

  v10 = [viewCopy dequeueReusableCellWithIdentifier:@"GF"];
  if (!v10)
  {
    v10 = [[SUUIGiftFooterLabelTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"GF"];
    [(SUUIGiftFooterLabelTableViewCell *)v10 setSelectionStyle:0];
  }

  _footerString = [(SUUIGiftAddressingSection *)self _footerString];
  [(SUUIGiftFooterLabelTableViewCell *)v10 setFooterLabel:_footerString];

LABEL_11:

  return v10;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  if ([path row] == 3)
  {
    backgroundColor = [viewCopy backgroundColor];
    [cellCopy setBackgroundColor:backgroundColor];
  }
}

- (id)_attributedPlaceholderWithString:(id)string
{
  v3 = MEMORY[0x277CCAB48];
  stringCopy = string;
  v5 = [[v3 alloc] initWithString:stringCopy];
  v6 = [stringCopy length];

  v7 = *MEMORY[0x277D740A8];
  v8 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
  [v5 addAttribute:v7 value:v8 range:{0, v6}];

  v9 = *MEMORY[0x277D740C0];
  placeholderTextColor = [MEMORY[0x277D75348] placeholderTextColor];
  [v5 addAttribute:v9 value:placeholderTextColor range:{0, v6}];

  v11 = *MEMORY[0x277D74068];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v5 addAttribute:v11 value:clearColor range:{0, v6}];

  return v5;
}

- (id)_footerString
{
  footerString = self->_footerString;
  if (!footerString)
  {
    giftConfiguration = [(SUUIGiftTableViewSection *)self giftConfiguration];
    clientContext = [giftConfiguration clientContext];
    v6 = clientContext;
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"GIFTING_STOREFRONT_WARNING" inTable:@"Gifting"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"GIFTING_STOREFRONT_WARNING" inBundles:0 inTable:@"Gifting"];
    }
    v7 = ;

    v8 = MEMORY[0x277CCACA8];
    storeFrontName = [giftConfiguration storeFrontName];
    v10 = [v8 stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@" error:0, storeFrontName];
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
    giftConfiguration = [(SUUIGiftTableViewSection *)self giftConfiguration];
    clientContext = [giftConfiguration clientContext];

    v6 = [[SUUIGiftRecipientTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"GRF"];
    v7 = self->_recipientTableViewCell;
    self->_recipientTableViewCell = v6;

    v8 = self->_recipientTableViewCell;
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"GIFTING_PLACEHOLDER_EMAIL" inTable:@"Gifting"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"GIFTING_PLACEHOLDER_EMAIL" inBundles:0 inTable:@"Gifting"];
    }
    v9 = ;
    v10 = [(SUUIGiftAddressingSection *)self _attributedPlaceholderWithString:v9];
    [(SUUIGiftRecipientTableViewCell *)v8 setAttributedPlaceholder:v10];

    v11 = self->_recipientTableViewCell;
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"GIFTING_FIELD_LABEL_RECIPIENT" inTable:@"Gifting"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"GIFTING_FIELD_LABEL_RECIPIENT" inBundles:0 inTable:@"Gifting"];
    }
    v12 = ;
    [(SUUIGiftRecipientTableViewCell *)v11 setLabel:v12];

    v13 = self->_recipientTableViewCell;
    recipientAddresses = [(SUUIGift *)self->_gift recipientAddresses];
    [(SUUIGiftRecipientTableViewCell *)v13 setRecipientAddresses:recipientAddresses];

    [(SUUIGiftRecipientTableViewCell *)self->_recipientTableViewCell setSelectionStyle:0];
    recipientTableViewCell = self->_recipientTableViewCell;
  }

  return recipientTableViewCell;
}

- (id)_textFieldTableViewCellForTableView:(id)view indexPath:(id)path
{
  v5 = [view dequeueReusableCellWithIdentifier:{@"GTF", path}];
  if (!v5)
  {
    v5 = [[SUUIGiftTextFieldTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"GTF"];
    [(SUUIGiftTextFieldTableViewCell *)v5 setSelectionStyle:0];
  }

  giftConfiguration = [(SUUIGiftTableViewSection *)self giftConfiguration];
  clientContext = [giftConfiguration clientContext];

  if (clientContext)
  {
    [clientContext localizedStringForKey:@"GIFTING_PLACEHOLDER_NAME" inTable:@"Gifting"];
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
  if (clientContext)
  {
    [clientContext localizedStringForKey:@"GIFTING_FIELD_LABEL_SENDER_NAME" inTable:@"Gifting"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"GIFTING_FIELD_LABEL_SENDER_NAME" inBundles:0 inTable:@"Gifting"];
  }
  v10 = ;
  [(SUUIGiftTextFieldTableViewCell *)v5 setLabel:v10];

  [(SUUIGiftTextFieldTableViewCell *)v5 setTextFieldDelegate:self->_textFieldDelegate];
  senderName = [(SUUIGift *)self->_gift senderName];
  [(SUUIGiftTextFieldTableViewCell *)v5 setValue:senderName];

  return v5;
}

- (SUUIGiftTextTableViewCell)messageCell
{
  messageCell = self->_messageCell;
  if (!messageCell)
  {
    v4 = [[SUUIGiftTextTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    giftConfiguration = [(SUUIGiftTableViewSection *)self giftConfiguration];
    maximumMessageLength = [giftConfiguration maximumMessageLength];

    [(SUUIGiftTextTableViewCell *)v4 setMaximumCharacterCount:maximumMessageLength];
    [(SUUIGiftTextTableViewCell *)v4 setSelectionStyle:0];
    giftConfiguration2 = [(SUUIGiftTableViewSection *)self giftConfiguration];
    clientContext = [giftConfiguration2 clientContext];

    if (clientContext)
    {
      [clientContext localizedStringForKey:@"GIFTING_CONFIRM_MESSAGE_LABEL" inTable:@"Gifting"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"GIFTING_CONFIRM_MESSAGE_LABEL" inBundles:0 inTable:@"Gifting"];
    }
    v9 = ;
    [(SUUIGiftTextTableViewCell *)v4 setLabel:v9];

    if (clientContext)
    {
      [clientContext localizedStringForKey:@"GIFTING_PLACEHOLDER_MESSAGE" inTable:@"Gifting"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"GIFTING_PLACEHOLDER_MESSAGE" inBundles:0 inTable:@"Gifting"];
    }
    v10 = ;
    v11 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v11 setNumberStyle:1];
    v12 = MEMORY[0x277CCACA8];
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:maximumMessageLength];
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