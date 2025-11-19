@interface NTKCFaceDetailSectionController
+ (void)registerForTableView:(id)a3;
- (BOOL)canSelectRow:(int64_t)a3;
- (NTKCFaceDetailSectionController)initWithTableViewController:(id)a3 face:(id)a4 inGallery:(BOOL)a5;
- (NTKCFaceDetailSectionHeaderView)headerView;
- (NTKCTableViewProviding)tableViewController;
- (NTKFace)face;
- (UITableView)tableView;
- (double)heightForHeaderView;
- (double)heightForRow:(int64_t)a3;
- (id)_groupName;
- (id)_newSectionHeader;
- (id)_spacerRow;
- (id)cellForRow:(int64_t)a3;
- (int64_t)numberOfRows;
@end

@implementation NTKCFaceDetailSectionController

+ (void)registerForTableView:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = +[NTKCFaceDetailSpacerCell reuseIdentifier];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];
}

- (NTKCFaceDetailSectionController)initWithTableViewController:(id)a3 face:(id)a4 inGallery:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = NTKCFaceDetailSectionController;
  v10 = [(NTKCFaceDetailSectionController *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(NTKCFaceDetailSectionController *)v10 setTableViewController:v8];
    [(NTKCFaceDetailSectionController *)v11 setFace:v9];
    [(NTKCFaceDetailSectionController *)v11 setInGallery:v5];
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

- (double)heightForRow:(int64_t)a3
{
  rows = self->_rows;
  if (rows && [(NSMutableArray *)rows count]> a3)
  {
    v6 = [(NSMutableArray *)self->_rows objectAtIndexedSubscript:a3];
    [v6 rowHeight];
    v8 = v7;

    return v8;
  }

  else if (a3 || (cell = self->_cell) == 0)
  {
    if (self->_hasSpacerRow && [(NTKCFaceDetailSectionController *)self numberOfRows]- 1 == a3)
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

- (id)cellForRow:(int64_t)a3
{
  rows = self->_rows;
  if (rows && [(NSMutableArray *)rows count]> a3)
  {
    v6 = [(NSMutableArray *)self->_rows objectAtIndexedSubscript:a3];
  }

  else if (a3 || (cell = self->_cell) == 0)
  {
    if (self->_hasSpacerRow && [(NTKCFaceDetailSectionController *)self numberOfRows]- 1 == a3)
    {
      v6 = [(NTKCFaceDetailSectionController *)self _spacerRow];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = cell;
  }

  return v6;
}

- (id)_spacerRow
{
  v2 = [(NTKCFaceDetailSectionController *)self tableView];
  v3 = +[NTKCFaceDetailSpacerCell reuseIdentifier];
  v4 = [v2 dequeueReusableCellWithIdentifier:v3];

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

  v5 = [(NTKCFaceDetailSectionController *)self titleForHeader];
  if (![v5 length])
  {

    headerView = self->_headerView;
LABEL_2:
    v3 = headerView;
    goto LABEL_5;
  }

  v3 = [(NTKCFaceDetailSectionController *)self _newSectionHeader];
  [(NTKCFaceDetailSectionHeaderView *)v3 setTitle:v5];

LABEL_5:

  return v3;
}

- (BOOL)canSelectRow:(int64_t)a3
{
  rows = self->_rows;
  if (!rows)
  {
    goto LABEL_12;
  }

  if ([(NSMutableArray *)rows count]<= a3)
  {
    return 0;
  }

  if (!self->_rows)
  {
LABEL_12:
    if (a3 && self->_cell)
    {
      return 0;
    }
  }

  return [(NTKCFaceDetailSectionController *)self _canSelectRow:a3];
}

- (id)_newSectionHeader
{
  v3 = [[NTKCFaceDetailSectionHeaderView alloc] initWithReuseIdentifier:0];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v4 = [(NTKCFaceDetailSectionController *)self _groupName];
    [(NTKCFaceDetailSectionHeaderView *)v3 setGroupName:v4];
  }

  return v3;
}

- (UITableView)tableView
{
  v2 = [(NTKCFaceDetailSectionController *)self tableViewController];
  v3 = [v2 ntk_tableView];

  return v3;
}

- (id)_groupName
{
  if (_os_feature_enabled_impl())
  {
    v3 = 0;
  }

  else
  {
    v4 = [(NTKCFaceDetailSectionController *)self tableViewController];
    v5 = [v4 navigationController];
    v6 = [v5 navigationBar];
    v3 = [v6 _backdropViewLayerGroupName];
  }

  return v3;
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