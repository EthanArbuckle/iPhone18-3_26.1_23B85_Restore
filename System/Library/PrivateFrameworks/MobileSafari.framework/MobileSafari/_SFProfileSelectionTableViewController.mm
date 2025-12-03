@interface _SFProfileSelectionTableViewController
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)setProfiles:(id)profiles;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation _SFProfileSelectionTableViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = _SFProfileSelectionTableViewController;
  [(_SFProfileSelectionTableViewController *)&v4 viewDidLoad];
  tableView = [(_SFProfileSelectionTableViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"CellIdentifier"];
}

- (void)setProfiles:(id)profiles
{
  profilesCopy = profiles;
  v5 = profilesCopy;
  if (self->_profiles != profilesCopy)
  {
    v10 = profilesCopy;
    v6 = [(NSArray *)profilesCopy copy];
    profiles = self->_profiles;
    self->_profiles = v6;

    self->_selectedRow = 0;
    isViewLoaded = [(_SFProfileSelectionTableViewController *)self isViewLoaded];
    v5 = v10;
    if (isViewLoaded)
    {
      tableView = [(_SFProfileSelectionTableViewController *)self tableView];
      [tableView reloadData];

      v5 = v10;
    }
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"CellIdentifier"];
  v8 = -[NSArray objectAtIndexedSubscript:](self->_profiles, "objectAtIndexedSubscript:", [pathCopy row]);
  title = [v8 title];
  textLabel = [v7 textLabel];
  [textLabel setText:title];

  symbolImage = [v8 symbolImage];
  imageView = [v7 imageView];
  [imageView setImage:symbolImage];

  v13 = [pathCopy row];
  if (v13 == self->_selectedRow)
  {
    v14 = 3;
  }

  else
  {
    v14 = 0;
  }

  [v7 setAccessoryType:v14];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  v8 = [MEMORY[0x1E696AC88] indexPathForRow:self->_selectedRow inSection:0];
  v9 = [viewCopy cellForRowAtIndexPath:v8];
  [v9 setAccessoryType:0];

  v10 = [viewCopy cellForRowAtIndexPath:pathCopy];

  [v10 setAccessoryType:3];
  v11 = [pathCopy row];

  self->_selectedRow = v11;
}

@end