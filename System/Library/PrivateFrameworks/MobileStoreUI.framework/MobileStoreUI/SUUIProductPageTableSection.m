@interface SUUIProductPageTableSection
- (double)heightForTextLayout:(id)a3 isExpanded:(BOOL)a4;
- (id)textBoxTableViewCellForTableView:(id)a3 indexPath:(id)a4;
@end

@implementation SUUIProductPageTableSection

- (double)heightForTextLayout:(id)a3 isExpanded:(BOOL)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if (a4 || ![v5 requiresTruncation])
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

- (id)textBoxTableViewCellForTableView:(id)a3 indexPath:(id)a4
{
  v4 = [a3 dequeueReusableCellWithIdentifier:{@"TB", a4}];
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