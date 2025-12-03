@interface NTKCFaceDetailSectionController
+ (void)registerForTableView:(id)view;
- (BOOL)canSelectRow:(int64_t)row;
- (NTKCFaceDetailSectionController)initWithTableViewController:(id)controller face:(id)face inGallery:(BOOL)gallery;
- (NTKCFaceDetailSectionHeaderView)headerView;
- (NTKCTableViewProviding)tableViewController;
- (NTKFace)face;
- (UITableView)tableView;
- (double)heightForHeaderView;
- (double)heightForRow:(int64_t)row;
- (id)_groupName;
- (id)_newSectionHeader;
- (id)_spacerRow;
- (id)cellForRow:(int64_t)row;
- (int64_t)numberOfRows;
@end

@implementation NTKCFaceDetailSectionController

+ (void)registerForTableView:(id)view
{
  viewCopy = view;
  v4 = objc_opt_class();
  v5 = +[NTKCFaceDetailSpacerCell reuseIdentifier];
  [viewCopy registerClass:v4 forCellReuseIdentifier:v5];
}

- (NTKCFaceDetailSectionController)initWithTableViewController:(id)controller face:(id)face inGallery:(BOOL)gallery
{
  galleryCopy = gallery;
  controllerCopy = controller;
  faceCopy = face;
  v13.receiver = self;
  v13.super_class = NTKCFaceDetailSectionController;
  v10 = [(NTKCFaceDetailSectionController *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(NTKCFaceDetailSectionController *)v10 setTableViewController:controllerCopy];
    [(NTKCFaceDetailSectionController *)v11 setFace:faceCopy];
    [(NTKCFaceDetailSectionController *)v11 setInGallery:galleryCopy];
    [(NTKCFaceDetailSectionController *)v11 _commonInit];
  }

  return v11;
}

- (int64_t)numberOfRows
{
  rows = self->_rows;
  if (rows)
  {
    v4 = [(NSMutableArray *)rows count];
  }

  else
  {
    v4 = self->_cell != 0;
  }

  return v4 + self->_hasSpacerRow;
}

- (double)heightForRow:(int64_t)row
{
  rows = self->_rows;
  if (rows && [(NSMutableArray *)rows count]> row)
  {
    v6 = [(NSMutableArray *)self->_rows objectAtIndexedSubscript:row];
    [v6 rowHeight];
    v8 = v7;

    return v8;
  }

  else if (row || (cell = self->_cell) == 0)
  {
    if (self->_hasSpacerRow && [(NTKCFaceDetailSectionController *)self numberOfRows]- 1 == row)
    {

      [(NTKCFaceDetailSectionController *)self _heightForSpacerRow];
    }

    else
    {
      return 0.0;
    }
  }

  else
  {

    [(NTKCDetailTableViewCell *)cell rowHeight];
  }

  return result;
}

- (id)cellForRow:(int64_t)row
{
  rows = self->_rows;
  if (rows && [(NSMutableArray *)rows count]> row)
  {
    _spacerRow = [(NSMutableArray *)self->_rows objectAtIndexedSubscript:row];
  }

  else if (row || (cell = self->_cell) == 0)
  {
    if (self->_hasSpacerRow && [(NTKCFaceDetailSectionController *)self numberOfRows]- 1 == row)
    {
      _spacerRow = [(NTKCFaceDetailSectionController *)self _spacerRow];
    }

    else
    {
      _spacerRow = 0;
    }
  }

  else
  {
    _spacerRow = cell;
  }

  return _spacerRow;
}

- (id)_spacerRow
{
  tableView = [(NTKCFaceDetailSectionController *)self tableView];
  v3 = +[NTKCFaceDetailSpacerCell reuseIdentifier];
  v4 = [tableView dequeueReusableCellWithIdentifier:v3];

  return v4;
}

- (double)heightForHeaderView
{
  if (self->_headerView || (-[NTKCFaceDetailSectionController titleForHeader](self, "titleForHeader"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 length], v3, v4))
  {

    +[NTKCFaceDetailSectionHeaderView headerHeight];
  }

  else
  {
    [(NTKCFaceDetailSectionHeaderView *)self->_headerView bounds];

    return CGRectGetHeight(*&v6);
  }

  return result;
}

- (NTKCFaceDetailSectionHeaderView)headerView
{
  headerView = self->_headerView;
  if (headerView)
  {
    goto LABEL_2;
  }

  titleForHeader = [(NTKCFaceDetailSectionController *)self titleForHeader];
  if (![titleForHeader length])
  {

    headerView = self->_headerView;
LABEL_2:
    _newSectionHeader = headerView;
    goto LABEL_5;
  }

  _newSectionHeader = [(NTKCFaceDetailSectionController *)self _newSectionHeader];
  [(NTKCFaceDetailSectionHeaderView *)_newSectionHeader setTitle:titleForHeader];

LABEL_5:

  return _newSectionHeader;
}

- (BOOL)canSelectRow:(int64_t)row
{
  rows = self->_rows;
  if (!rows)
  {
    goto LABEL_12;
  }

  if ([(NSMutableArray *)rows count]<= row)
  {
    return 0;
  }

  if (!self->_rows)
  {
LABEL_12:
    if (row && self->_cell)
    {
      return 0;
    }
  }

  return [(NTKCFaceDetailSectionController *)self _canSelectRow:row];
}

- (id)_newSectionHeader
{
  v3 = [[NTKCFaceDetailSectionHeaderView alloc] initWithReuseIdentifier:0];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    _groupName = [(NTKCFaceDetailSectionController *)self _groupName];
    [(NTKCFaceDetailSectionHeaderView *)v3 setGroupName:_groupName];
  }

  return v3;
}

- (UITableView)tableView
{
  tableViewController = [(NTKCFaceDetailSectionController *)self tableViewController];
  ntk_tableView = [tableViewController ntk_tableView];

  return ntk_tableView;
}

- (id)_groupName
{
  if (_os_feature_enabled_impl())
  {
    _backdropViewLayerGroupName = 0;
  }

  else
  {
    tableViewController = [(NTKCFaceDetailSectionController *)self tableViewController];
    navigationController = [tableViewController navigationController];
    navigationBar = [navigationController navigationBar];
    _backdropViewLayerGroupName = [navigationBar _backdropViewLayerGroupName];
  }

  return _backdropViewLayerGroupName;
}

- (NTKFace)face
{
  WeakRetained = objc_loadWeakRetained(&self->_face);

  return WeakRetained;
}

- (NTKCTableViewProviding)tableViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_tableViewController);

  return WeakRetained;
}

@end