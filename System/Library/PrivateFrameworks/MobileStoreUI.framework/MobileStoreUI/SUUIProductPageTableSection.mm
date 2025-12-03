@interface SUUIProductPageTableSection
- (double)heightForTextLayout:(id)layout isExpanded:(BOOL)expanded;
- (id)textBoxTableViewCellForTableView:(id)view indexPath:(id)path;
@end

@implementation SUUIProductPageTableSection

- (double)heightForTextLayout:(id)layout isExpanded:(BOOL)expanded
{
  layoutCopy = layout;
  v6 = layoutCopy;
  if (layoutCopy)
  {
    if (expanded || ![layoutCopy requiresTruncation])
    {
      [v6 textSize];
    }

    else
    {
      [v6 truncatedSize];
    }

    v8 = v7 + 10.0 + 22.0 + 2.0 + 12.0;
  }

  else
  {
    v8 = 80.0;
  }

  return v8;
}

- (id)textBoxTableViewCellForTableView:(id)view indexPath:(id)path
{
  v4 = [view dequeueReusableCellWithIdentifier:{@"TB", path}];
  if (!v4)
  {
    v4 = [[SUUITextBoxTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"TB"];
    v5 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(SUUITableViewCell *)v4 setBottomBorderColor:v5];

    [(SUUITextBoxTableViewCell *)v4 setSelectionStyle:0];
  }

  return v4;
}

@end