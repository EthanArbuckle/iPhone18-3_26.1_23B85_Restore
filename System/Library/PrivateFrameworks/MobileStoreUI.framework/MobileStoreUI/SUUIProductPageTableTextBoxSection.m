@interface SUUIProductPageTableTextBoxSection
- (SUUIProductPageTableTextBoxSection)initWithClientContext:(id)a3;
- (double)heightForCellInTableView:(id)a3 indexPath:(id)a4;
- (id)selectionActionForTableView:(id)a3 indexPath:(id)a4;
- (id)tableViewCellForTableView:(id)a3 indexPath:(id)a4;
@end

@implementation SUUIProductPageTableTextBoxSection

- (SUUIProductPageTableTextBoxSection)initWithClientContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUUIProductPageTableTextBoxSection;
  v6 = [(SUUIProductPageTableTextBoxSection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientContext, a3);
  }

  return v7;
}

- (double)heightForCellInTableView:(id)a3 indexPath:(id)a4
{
  v5 = [(SUUILayoutCache *)self->_textLayoutCache layoutForIndex:self->_stringIndex, a4];
  [(SUUIProductPageTableSection *)self heightForTextLayout:v5 isExpanded:self->_isExpanded];
  v7 = v6;

  return v7;
}

- (id)selectionActionForTableView:(id)a3 indexPath:(id)a4
{
  v5 = [(SUUILayoutCache *)self->_textLayoutCache layoutForIndex:self->_stringIndex, a4];
  v6 = v5;
  if (self->_isExpanded || ![v5 requiresTruncation])
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

- (id)tableViewCellForTableView:(id)a3 indexPath:(id)a4
{
  v5 = [(SUUIProductPageTableSection *)self textBoxTableViewCellForTableView:a3 indexPath:a4];
  v6 = [(SUUIColorScheme *)self->_colorScheme primaryTextColor];

  if (v6)
  {
    v7 = [(SUUIColorScheme *)self->_colorScheme primaryTextColor];
    [v5 setBottomBorderColor:v7];
  }

  v8 = [(SUUILayoutCache *)self->_textLayoutCache layoutForIndex:self->_stringIndex];
  v9 = [v5 textBoxView];
  v10 = v9;
  if (v8)
  {
    [v9 setFixedWidthTextFrame:{objc_msgSend(v8, "textFrame")}];
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
    v14 = [(SUUIProductPageTableTextBoxSection *)self subtitle];
    [v10 setSubtitle:v14];

    v15 = [(SUUIProductPageTableTextBoxSection *)self title];
    [v10 setTitle:v15];

    [v10 setColorScheme:self->_colorScheme];
  }

  else
  {
    [v9 reset];
  }

  return v5;
}

@end