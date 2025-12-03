@interface SUUIMenuViewController
- (SUUIMenuViewController)initWithMenuTitles:(id)titles images:(id)images;
- (SUUIMenuViewControllerDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)loadView;
- (void)setIndexOfCheckedTitle:(int64_t)title;
- (void)setMenuStyle:(int64_t)style;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation SUUIMenuViewController

- (SUUIMenuViewController)initWithMenuTitles:(id)titles images:(id)images
{
  titlesCopy = titles;
  imagesCopy = images;
  v15.receiver = self;
  v15.super_class = SUUIMenuViewController;
  v8 = [(SUUIMenuViewController *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_indexOfCheckedTitle = 0x7FFFFFFFFFFFFFFFLL;
    v10 = [titlesCopy copy];
    menuTitles = v9->_menuTitles;
    v9->_menuTitles = v10;

    v12 = [imagesCopy copy];
    menuImages = v9->_menuImages;
    v9->_menuImages = v12;
  }

  return v9;
}

- (void)setIndexOfCheckedTitle:(int64_t)title
{
  if (self->_indexOfCheckedTitle != title)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    indexOfCheckedTitle = self->_indexOfCheckedTitle;
    if (indexOfCheckedTitle != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [MEMORY[0x277CCAA70] indexPathForRow:indexOfCheckedTitle inSection:0];
      [v9 addObject:v6];
    }

    self->_indexOfCheckedTitle = title;
    if (title != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [MEMORY[0x277CCAA70] indexPathForRow:title inSection:0];
      [v9 addObject:v7];
    }

    if ([(SUUIMenuViewController *)self isViewLoaded])
    {
      tableView = [(SUUIMenuViewController *)self tableView];
      [tableView reloadRowsAtIndexPaths:v9 withRowAnimation:5];
    }
  }
}

- (void)setMenuStyle:(int64_t)style
{
  if (self->_menuStyle != style)
  {
    self->_menuStyle = style;
    view = [(SUUIMenuViewController *)self view];
    [view setNeedsDisplay];
  }
}

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = SUUIMenuViewController;
  [(SUUIMenuViewController *)&v7 loadView];
  tableView = [(SUUIMenuViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"a"];
  [tableView setSeparatorStyle:0];
  [tableView setSemanticContentAttribute:storeSemanticContentAttribute()];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [tableView setBackgroundColor:systemBackgroundColor];

  view = [(SUUIMenuViewController *)self view];
  systemBackgroundColor2 = [MEMORY[0x277D75348] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor2];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"a" forIndexPath:pathCopy];
  if (!v7)
  {
    v7 = [[SUUITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"a"];
  }

  v8 = [pathCopy row];
  if (v8 == self->_indexOfCheckedTitle)
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  [(SUUITableViewCell *)v7 setAccessoryType:v9];
  textLabel = [(SUUITableViewCell *)v7 textLabel];
  v11 = [(NSArray *)self->_menuTitles objectAtIndex:v8];
  [textLabel setText:v11];

  labelColor = [MEMORY[0x277D75348] labelColor];
  [textLabel setTextColor:labelColor];

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
    imageView = [(SUUITableViewCell *)v7 imageView];
    [imageView setImage:v15];
  }

  if (v8 == [(NSArray *)self->_menuTitles count]- 1)
  {
    [(SUUITableViewCell *)v7 setBottomBorderColor:0];
  }

  else
  {
    separatorColor = [MEMORY[0x277D75348] separatorColor];
    [(SUUITableViewCell *)v7 setBottomBorderColor:separatorColor];
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 menuViewController:self didSelectItemAtIndex:{objc_msgSend(pathCopy, "row")}];
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  backgroundColor = [view backgroundColor];
  [cellCopy setBackgroundColor:backgroundColor];
}

- (SUUIMenuViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end