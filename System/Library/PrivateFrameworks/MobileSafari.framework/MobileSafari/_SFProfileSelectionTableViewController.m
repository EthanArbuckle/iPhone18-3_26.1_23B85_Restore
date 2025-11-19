@interface _SFProfileSelectionTableViewController
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)setProfiles:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation _SFProfileSelectionTableViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = _SFProfileSelectionTableViewController;
  [(_SFProfileSelectionTableViewController *)&v4 viewDidLoad];
  v3 = [(_SFProfileSelectionTableViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"CellIdentifier"];
}

- (void)setProfiles:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_profiles != v4)
  {
    v10 = v4;
    v6 = [(NSArray *)v4 copy];
    profiles = self->_profiles;
    self->_profiles = v6;

    self->_selectedRow = 0;
    v8 = [(_SFProfileSelectionTableViewController *)self isViewLoaded];
    v5 = v10;
    if (v8)
    {
      v9 = [(_SFProfileSelectionTableViewController *)self tableView];
      [v9 reloadData];

      v5 = v10;
    }
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"CellIdentifier"];
  v8 = -[NSArray objectAtIndexedSubscript:](self->_profiles, "objectAtIndexedSubscript:", [v6 row]);
  v9 = [v8 title];
  v10 = [v7 textLabel];
  [v10 setText:v9];

  v11 = [v8 symbolImage];
  v12 = [v7 imageView];
  [v12 setImage:v11];

  v13 = [v6 row];
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 deselectRowAtIndexPath:v6 animated:1];
  v8 = [MEMORY[0x1E696AC88] indexPathForRow:self->_selectedRow inSection:0];
  v9 = [v7 cellForRowAtIndexPath:v8];
  [v9 setAccessoryType:0];

  v10 = [v7 cellForRowAtIndexPath:v6];

  [v10 setAccessoryType:3];
  v11 = [v6 row];

  self->_selectedRow = v11;
}

@end