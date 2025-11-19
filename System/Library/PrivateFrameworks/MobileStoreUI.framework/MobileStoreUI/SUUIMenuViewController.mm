@interface SUUIMenuViewController
- (SUUIMenuViewController)initWithMenuTitles:(id)a3 images:(id)a4;
- (SUUIMenuViewControllerDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)loadView;
- (void)setIndexOfCheckedTitle:(int64_t)a3;
- (void)setMenuStyle:(int64_t)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation SUUIMenuViewController

- (SUUIMenuViewController)initWithMenuTitles:(id)a3 images:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = SUUIMenuViewController;
  v8 = [(SUUIMenuViewController *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_indexOfCheckedTitle = 0x7FFFFFFFFFFFFFFFLL;
    v10 = [v6 copy];
    menuTitles = v9->_menuTitles;
    v9->_menuTitles = v10;

    v12 = [v7 copy];
    menuImages = v9->_menuImages;
    v9->_menuImages = v12;
  }

  return v9;
}

- (void)setIndexOfCheckedTitle:(int64_t)a3
{
  if (self->_indexOfCheckedTitle != a3)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    indexOfCheckedTitle = self->_indexOfCheckedTitle;
    if (indexOfCheckedTitle != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [MEMORY[0x277CCAA70] indexPathForRow:indexOfCheckedTitle inSection:0];
      [v9 addObject:v6];
    }

    self->_indexOfCheckedTitle = a3;
    if (a3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [MEMORY[0x277CCAA70] indexPathForRow:a3 inSection:0];
      [v9 addObject:v7];
    }

    if ([(SUUIMenuViewController *)self isViewLoaded])
    {
      v8 = [(SUUIMenuViewController *)self tableView];
      [v8 reloadRowsAtIndexPaths:v9 withRowAnimation:5];
    }
  }
}

- (void)setMenuStyle:(int64_t)a3
{
  if (self->_menuStyle != a3)
  {
    self->_menuStyle = a3;
    v4 = [(SUUIMenuViewController *)self view];
    [v4 setNeedsDisplay];
  }
}

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = SUUIMenuViewController;
  [(SUUIMenuViewController *)&v7 loadView];
  v3 = [(SUUIMenuViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"a"];
  [v3 setSeparatorStyle:0];
  [v3 setSemanticContentAttribute:storeSemanticContentAttribute()];
  v4 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = [(SUUIMenuViewController *)self view];
  v6 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v5 setBackgroundColor:v6];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"a" forIndexPath:v6];
  if (!v7)
  {
    v7 = [[SUUITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"a"];
  }

  v8 = [v6 row];
  if (v8 == self->_indexOfCheckedTitle)
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  [(SUUITableViewCell *)v7 setAccessoryType:v9];
  v10 = [(SUUITableViewCell *)v7 textLabel];
  v11 = [(NSArray *)self->_menuTitles objectAtIndex:v8];
  [v10 setText:v11];

  v12 = [MEMORY[0x277D75348] labelColor];
  [v10 setTextColor:v12];

  menuImages = self->_menuImages;
  if (menuImages)
  {
    v14 = [(NSArray *)menuImages objectAtIndex:v8];
    v20.width = 35.0;
    v20.height = 35.0;
    UIGraphicsBeginImageContextWithOptions(v20, 0, 0.0);
    [v14 drawInRect:{0.0, 0.0, 35.0, 35.0}];
    v15 = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();
    v16 = [(SUUITableViewCell *)v7 imageView];
    [v16 setImage:v15];
  }

  if (v8 == [(NSArray *)self->_menuTitles count]- 1)
  {
    [(SUUITableViewCell *)v7 setBottomBorderColor:0];
  }

  else
  {
    v17 = [MEMORY[0x277D75348] separatorColor];
    [(SUUITableViewCell *)v7 setBottomBorderColor:v17];
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 menuViewController:self didSelectItemAtIndex:{objc_msgSend(v6, "row")}];
  }

  [v10 deselectRowAtIndexPath:v6 animated:1];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v6 = a4;
  v7 = [a3 backgroundColor];
  [v6 setBackgroundColor:v7];
}

- (SUUIMenuViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end