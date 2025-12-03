@interface SUUIProductPageTableTextBoxSection
- (SUUIProductPageTableTextBoxSection)initWithClientContext:(id)context;
- (double)heightForCellInTableView:(id)view indexPath:(id)path;
- (id)selectionActionForTableView:(id)view indexPath:(id)path;
- (id)tableViewCellForTableView:(id)view indexPath:(id)path;
@end

@implementation SUUIProductPageTableTextBoxSection

- (SUUIProductPageTableTextBoxSection)initWithClientContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = SUUIProductPageTableTextBoxSection;
  v6 = [(SUUIProductPageTableTextBoxSection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientContext, context);
  }

  return v7;
}

- (double)heightForCellInTableView:(id)view indexPath:(id)path
{
  path = [(SUUILayoutCache *)self->_textLayoutCache layoutForIndex:self->_stringIndex, path];
  [(SUUIProductPageTableSection *)self heightForTextLayout:path isExpanded:self->_isExpanded];
  v7 = v6;

  return v7;
}

- (id)selectionActionForTableView:(id)view indexPath:(id)path
{
  path = [(SUUILayoutCache *)self->_textLayoutCache layoutForIndex:self->_stringIndex, path];
  v6 = path;
  if (self->_isExpanded || ![path requiresTruncation])
  {
    v7 = 0;
  }

  else
  {
    self->_isExpanded = 1;
    v7 = [SUUIProductPageAction actionWithType:0];
  }

  return v7;
}

- (id)tableViewCellForTableView:(id)view indexPath:(id)path
{
  v5 = [(SUUIProductPageTableSection *)self textBoxTableViewCellForTableView:view indexPath:path];
  primaryTextColor = [(SUUIColorScheme *)self->_colorScheme primaryTextColor];

  if (primaryTextColor)
  {
    primaryTextColor2 = [(SUUIColorScheme *)self->_colorScheme primaryTextColor];
    [v5 setBottomBorderColor:primaryTextColor2];
  }

  v8 = [(SUUILayoutCache *)self->_textLayoutCache layoutForIndex:self->_stringIndex];
  textBoxView = [v5 textBoxView];
  v10 = textBoxView;
  if (v8)
  {
    [textBoxView setFixedWidthTextFrame:{objc_msgSend(v8, "textFrame")}];
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SUUIClientContext *)clientContext localizedStringForKey:@"MORE_BUTTON"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"MORE_BUTTON" inBundles:0];
    }
    v12 = ;
    [v10 setMoreButtonTitle:v12];

    if (self->_isExpanded)
    {
      v13 = 0;
    }

    else
    {
      v13 = 5;
    }

    [v10 setNumberOfVisibleLines:v13];
    subtitle = [(SUUIProductPageTableTextBoxSection *)self subtitle];
    [v10 setSubtitle:subtitle];

    title = [(SUUIProductPageTableTextBoxSection *)self title];
    [v10 setTitle:title];

    [v10 setColorScheme:self->_colorScheme];
  }

  else
  {
    [textBoxView reset];
  }

  return v5;
}

@end