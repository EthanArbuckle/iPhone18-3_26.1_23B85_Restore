@interface SUUIRedeemIdManager
- (SUUIPinnedFooterView)pinnedFooterView;
- (SUUIRedeemIdManager)initWithClientContext:(id)context;
- (SUUIRedeemIdManagerDelegate)delegate;
- (double)_heightForDisclosureFooter;
- (double)_tableViewNonFooterContentHeight;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (id)_disclosureAttributedString;
- (id)_nextIndexPath:(id)path;
- (id)_pcLinkString;
- (id)_placeholderTextForIndexPath:(id)path;
- (id)_regulationsLinkString;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (int64_t)_autoCapitalizationTypeForIndexPath:(id)path;
- (int64_t)_keyboardTypeForIndexPath:(id)path;
- (int64_t)_numberOfRowsInSection:(int64_t)section;
- (int64_t)_returnKeyTypeForIndexPath:(id)path;
- (void)dismissActiveCell;
- (void)redeemIdCell:(id)cell didChangeToText:(id)text;
- (void)redeemIdCell:(id)cell didReturnWithText:(id)text;
- (void)setFooterHidden:(BOOL)hidden;
- (void)setTableView:(id)view;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation SUUIRedeemIdManager

- (SUUIRedeemIdManager)initWithClientContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = SUUIRedeemIdManager;
  v6 = [(SUUIRedeemIdManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientContext, context);
  }

  return v7;
}

- (SUUIPinnedFooterView)pinnedFooterView
{
  pinnedFooterView = self->_pinnedFooterView;
  if (!pinnedFooterView)
  {
    v4 = [SUUIPinnedFooterView alloc];
    v5 = [(SUUIPinnedFooterView *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v6 = self->_pinnedFooterView;
    self->_pinnedFooterView = v5;

    v7 = self->_pinnedFooterView;
    _disclosureAttributedString = [(SUUIRedeemIdManager *)self _disclosureAttributedString];
    [(SUUIPinnedFooterView *)v7 setAttributedText:_disclosureAttributedString];

    v9 = self->_pinnedFooterView;
    tableView = [(SUUIRedeemIdManager *)self tableView];
    [tableView separatorInset];
    [(SUUIPinnedFooterView *)v9 setHorizontalPadding:v11];

    pinnedFooterView = self->_pinnedFooterView;
  }

  return pinnedFooterView;
}

- (void)setTableView:(id)view
{
  viewCopy = view;
  p_tableView = &self->_tableView;
  if (self->_tableView != viewCopy)
  {
    v8 = viewCopy;
    objc_storeStrong(p_tableView, view);
    tableView = [(SUUIRedeemIdManager *)self tableView];
    [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"redeemIdCell"];

    viewCopy = v8;
  }

  MEMORY[0x2821F96F8](p_tableView, viewCopy);
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  activeIndexPath = [(SUUIRedeemIdManager *)self activeIndexPath];
  v8 = pathCopy;
  [(SUUIRedeemIdManager *)self setActiveIndexPath:v8];
  v9 = [viewCopy cellForRowAtIndexPath:v8];
  textField = [v9 textField];
  [textField setAutocapitalizationType:{-[SUUIRedeemIdManager _autoCapitalizationTypeForIndexPath:](self, "_autoCapitalizationTypeForIndexPath:", v8)}];

  [v9 becomeFirstResponder];
  if (activeIndexPath && ([activeIndexPath isEqual:v8] & 1) == 0)
  {
    v11 = [viewCopy cellForRowAtIndexPath:activeIndexPath];
    [v11 resignFirstResponder];
  }

  delegate = [(SUUIRedeemIdManager *)self delegate];
  [delegate redeemIdManager:self movedToRowAtIndexPath:v8];
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 3)
  {
    [(SUUIRedeemIdManager *)self _heightForDisclosureFooter];
    v7 = v8;
  }

  else if (section == 2)
  {
    v7 = 50.0;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  if (section == 3)
  {
    v6 = [(SUUIRedeemIdManager *)self pinnedFooterView:view];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 2)
  {
    clientContext = [(SUUIRedeemIdManager *)self clientContext];
    if (clientContext)
    {
      v8 = @"REDEEM_NATIONAL_ID_SECTION_NATIONAL_ID";
      goto LABEL_10;
    }

    v11 = @"REDEEM_NATIONAL_ID_SECTION_NATIONAL_ID";
    goto LABEL_15;
  }

  if (section == 1)
  {
    clientContext = [(SUUIRedeemIdManager *)self clientContext];
    if (clientContext)
    {
      v8 = @"REDEEM_NATIONAL_ID_SECTION_PHONE";
      goto LABEL_10;
    }

    v11 = @"REDEEM_NATIONAL_ID_SECTION_PHONE";
LABEL_15:
    v9 = [SUUIClientContext localizedStringForKey:v11 inBundles:0 inTable:@"Redeem"];
    goto LABEL_16;
  }

  if (section)
  {
    v10 = &stru_286AECDE0;
    goto LABEL_17;
  }

  clientContext = [(SUUIRedeemIdManager *)self clientContext];
  if (!clientContext)
  {
    v11 = @"REDEEM_NATIONAL_ID_SECTION_NAME";
    goto LABEL_15;
  }

  v8 = @"REDEEM_NATIONAL_ID_SECTION_NAME";
LABEL_10:
  v9 = [clientContext localizedStringForKey:v8 inTable:@"Redeem"];
LABEL_16:
  v10 = v9;

LABEL_17:

  return v10;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if (section == 2)
  {
    clientContext = [(SUUIRedeemIdManager *)self clientContext];
    v5 = clientContext;
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"REDEEM_NATIONAL_ID_DESCRIPTION" inTable:@"Redeem"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"REDEEM_NATIONAL_ID_DESCRIPTION" inBundles:0 inTable:@"Redeem"];
    }
    v6 = ;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"redeemIdCell" forIndexPath:pathCopy];
  textField = [v7 textField];
  text = [textField text];
  v10 = [text length];

  if (!v10)
  {
    v11 = [(SUUIRedeemIdManager *)self _placeholderTextForIndexPath:pathCopy];
    [v7 setPlaceholderText:v11];
  }

  [v7 setKeyboardType:{-[SUUIRedeemIdManager _keyboardTypeForIndexPath:](self, "_keyboardTypeForIndexPath:", pathCopy)}];
  [v7 setReturnKeyType:{-[SUUIRedeemIdManager _returnKeyTypeForIndexPath:](self, "_returnKeyTypeForIndexPath:", pathCopy)}];
  [v7 setAutoCapitalizationType:{-[SUUIRedeemIdManager _autoCapitalizationTypeForIndexPath:](self, "_autoCapitalizationTypeForIndexPath:", pathCopy)}];
  [v7 setDelegate:self];

  return v7;
}

- (void)redeemIdCell:(id)cell didReturnWithText:(id)text
{
  textCopy = text;
  activeIndexPath = [(SUUIRedeemIdManager *)self activeIndexPath];
  v6 = [(SUUIRedeemIdManager *)self _nextIndexPath:activeIndexPath];
  delegate = [(SUUIRedeemIdManager *)self delegate];
  [delegate redeemIdManager:self didReturnText:textCopy forCellAtIndexPath:activeIndexPath];

  [(SUUIRedeemIdManager *)self setActiveIndexPath:v6];
  if (v6)
  {
    tableView = [(SUUIRedeemIdManager *)self tableView];
    v9 = [tableView cellForRowAtIndexPath:v6];

    [v9 becomeFirstResponder];
  }

  tableView2 = [(SUUIRedeemIdManager *)self tableView];
  v11 = [tableView2 cellForRowAtIndexPath:activeIndexPath];

  [v11 resignFirstResponder];
  if ([textCopy length])
  {
    v12 = [(SUUIRedeemIdManager *)self _placeholderTextForIndexPath:activeIndexPath];
    [v11 setPlaceholderText:v12];
  }

  delegate2 = [(SUUIRedeemIdManager *)self delegate];
  [delegate2 redeemIdManager:self movedToRowAtIndexPath:v6];
}

- (void)redeemIdCell:(id)cell didChangeToText:(id)text
{
  textCopy = text;
  cellCopy = cell;
  tableView = [(SUUIRedeemIdManager *)self tableView];
  v10 = [tableView indexPathForCell:cellCopy];

  delegate = [(SUUIRedeemIdManager *)self delegate];
  [delegate redeemIdManager:self didChangeToText:textCopy forCellAtIndexPath:v10];
}

- (void)setFooterHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  pinnedFooterView = [(SUUIRedeemIdManager *)self pinnedFooterView];
  [pinnedFooterView setHidden:hiddenCopy];
}

- (void)dismissActiveCell
{
  activeIndexPath = [(SUUIRedeemIdManager *)self activeIndexPath];

  if (activeIndexPath)
  {
    tableView = [(SUUIRedeemIdManager *)self tableView];
    activeIndexPath2 = [(SUUIRedeemIdManager *)self activeIndexPath];
    v6 = [tableView cellForRowAtIndexPath:activeIndexPath2];

    [v6 resignFirstResponder];
  }
}

- (id)_regulationsLinkString
{
  clientContext = [(SUUIRedeemIdManager *)self clientContext];
  v3 = clientContext;
  if (clientContext)
  {
    [clientContext localizedStringForKey:@"REDEEM_NATIONAL_ID_DISCLOSURE_LINK_REGULATIONS" inTable:@"Redeem"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"REDEEM_NATIONAL_ID_DISCLOSURE_LINK_REGULATIONS" inBundles:0 inTable:@"Redeem"];
  }
  v4 = ;

  return v4;
}

- (id)_pcLinkString
{
  clientContext = [(SUUIRedeemIdManager *)self clientContext];
  v3 = clientContext;
  if (clientContext)
  {
    [clientContext localizedStringForKey:@"REDEEM_NATIONAL_ID_DISCLOSURE_LINK_PC" inTable:@"Redeem"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"REDEEM_NATIONAL_ID_DISCLOSURE_LINK_PC" inBundles:0 inTable:@"Redeem"];
  }
  v4 = ;

  return v4;
}

- (id)_placeholderTextForIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (section == 2 || section == 1)
  {
    clientContext = [(SUUIRedeemIdManager *)self clientContext];
    if (clientContext)
    {
      v8 = @"REDEEM_NATIONAL_ID_PLACEHOLDER_REQUIRED";
      goto LABEL_10;
    }

    v11 = @"REDEEM_NATIONAL_ID_PLACEHOLDER_REQUIRED";
LABEL_13:
    v9 = [SUUIClientContext localizedStringForKey:v11 inBundles:0 inTable:@"Redeem"];
    goto LABEL_14;
  }

  if (section)
  {
LABEL_11:
    v10 = &stru_286AECDE0;
    goto LABEL_15;
  }

  v6 = [pathCopy row];
  if (v6 == 1)
  {
    clientContext = [(SUUIRedeemIdManager *)self clientContext];
    if (clientContext)
    {
      v8 = @"REDEEM_NATIONAL_ID_PLACEHOLDER_FIRST_NAME";
      goto LABEL_10;
    }

    v11 = @"REDEEM_NATIONAL_ID_PLACEHOLDER_FIRST_NAME";
    goto LABEL_13;
  }

  if (v6)
  {
    goto LABEL_11;
  }

  clientContext = [(SUUIRedeemIdManager *)self clientContext];
  if (!clientContext)
  {
    v11 = @"REDEEM_NATIONAL_ID_PLACEHOLDER_LAST_NAME";
    goto LABEL_13;
  }

  v8 = @"REDEEM_NATIONAL_ID_PLACEHOLDER_LAST_NAME";
LABEL_10:
  v9 = [clientContext localizedStringForKey:v8 inTable:@"Redeem"];
LABEL_14:
  v10 = v9;

LABEL_15:

  return v10;
}

- (id)_disclosureAttributedString
{
  clientContext = [(SUUIRedeemIdManager *)self clientContext];
  v4 = clientContext;
  if (clientContext)
  {
    [clientContext localizedStringForKey:@"REDEEM_NATIONAL_ID_DISCLOSURE" inTable:@"Redeem"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"REDEEM_NATIONAL_ID_DISCLOSURE" inBundles:0 inTable:@"Redeem"];
  }
  v5 = ;

  _pcLinkString = [(SUUIRedeemIdManager *)self _pcLinkString];
  _regulationsLinkString = [(SUUIRedeemIdManager *)self _regulationsLinkString];
  v8 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v5 validFormatSpecifiers:@"%@%@" error:0, _pcLinkString, _regulationsLinkString];
  v9 = [v8 rangeOfString:_pcLinkString options:4];
  v23 = v10;
  v24 = v9;
  v11 = [v8 rangeOfString:_regulationsLinkString options:4];
  v13 = v12;
  v14 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v8];
  v15 = objc_alloc_init(MEMORY[0x277D69C88]);
  v26 = 0;
  v16 = [v15 valueForKey:@"redeemPartnerTerms" error:&v26];
  v17 = v26;
  v18 = v17;
  if (v17 || !v16)
  {
    NSLog(&cfstr_UnableToLoadNa.isa, v17);
  }

  else
  {
    [v14 addAttribute:*MEMORY[0x277D740E8] value:v16 range:{v11, v13}];
  }

  v25 = v18;
  v19 = [v15 valueForKey:@"redeemPartnerInfo" error:&v25];
  v20 = v25;

  if (v20 || !v19)
  {
    NSLog(&cfstr_UnableToLoadNa_0.isa, v20);
  }

  else
  {
    [v14 addAttribute:*MEMORY[0x277D740E8] value:v19 range:{v24, v23}];
  }

  v21 = [v14 copy];

  return v21;
}

- (id)_nextIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(SUUIRedeemIdManager *)self tableView];
  v6 = [tableView numberOfRowsInSection:{objc_msgSend(pathCopy, "section")}];

  tableView2 = [(SUUIRedeemIdManager *)self tableView];
  numberOfSections = [tableView2 numberOfSections];

  if ([pathCopy row] < (v6 - 1))
  {
    v9 = MEMORY[0x277CCAA70];
    v10 = [pathCopy row];
    section = [pathCopy section];
    v12 = v10 + 1;
    v13 = v9;
LABEL_5:
    v17 = [v13 indexPathForRow:v12 inSection:section];
    goto LABEL_7;
  }

  activeIndexPath = [(SUUIRedeemIdManager *)self activeIndexPath];
  v15 = [activeIndexPath section] + 1;

  if (v15 < numberOfSections - 1)
  {
    v16 = MEMORY[0x277CCAA70];
    section = [pathCopy section] + 1;
    v13 = v16;
    v12 = 0;
    goto LABEL_5;
  }

  v17 = 0;
LABEL_7:

  return v17;
}

- (double)_heightForDisclosureFooter
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] statusBarFrame];
  v5 = v4;

  tableView = [(SUUIRedeemIdManager *)self tableView];
  [tableView bounds];
  v8 = v7 - v5;

  [(SUUIRedeemIdManager *)self _tableViewNonFooterContentHeight];
  v10 = v9 + 150.0;
  v11 = v8 - v9;
  if (v10 <= v8)
  {
    v12 = v11;
  }

  else
  {
    v12 = 150.0;
  }

  tableView2 = [(SUUIRedeemIdManager *)self tableView];
  [tableView2 contentInset];
  v15 = v12 - v14;

  return v15;
}

- (double)_tableViewNonFooterContentHeight
{
  tableView = [(SUUIRedeemIdManager *)self tableView];
  numberOfSections = [tableView numberOfSections];

  if (!numberOfSections)
  {
    return 0.0;
  }

  v5 = 0;
  v6 = 0.0;
  do
  {
    if (v5 != 3)
    {
      tableView2 = [(SUUIRedeemIdManager *)self tableView];
      [tableView2 rectForSection:v5];
      v9 = v8;

      v6 = v6 + v9;
    }

    ++v5;
  }

  while (numberOfSections != v5);
  return v6;
}

- (int64_t)_numberOfRowsInSection:(int64_t)section
{
  if (section > 3)
  {
    return 0;
  }

  else
  {
    return qword_259FCC170[section];
  }
}

- (int64_t)_keyboardTypeForIndexPath:(id)path
{
  section = [path section];
  if (section > 2)
  {
    return 0;
  }

  else
  {
    return qword_259FCC190[section];
  }
}

- (int64_t)_returnKeyTypeForIndexPath:(id)path
{
  section = [path section];
  if (section > 2)
  {
    return 0;
  }

  else
  {
    return qword_259FCC1A8[section];
  }
}

- (int64_t)_autoCapitalizationTypeForIndexPath:(id)path
{
  section = [path section];
  if (section > 2)
  {
    return 0;
  }

  else
  {
    return qword_259FCC1C0[section];
  }
}

- (SUUIRedeemIdManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end