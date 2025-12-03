@interface NTKCFaceDetailActionSectionController
- (NTKCFaceDetailActionSectionController)initWithTableViewController:(id)controller face:(id)face inGallery:(BOOL)gallery action:(int64_t)action;
- (NTKCFaceDetailActionSectionDelegate)delegate;
- (void)didSelectRow:(int64_t)row;
@end

@implementation NTKCFaceDetailActionSectionController

- (NTKCFaceDetailActionSectionController)initWithTableViewController:(id)controller face:(id)face inGallery:(BOOL)gallery action:(int64_t)action
{
  v12.receiver = self;
  v12.super_class = NTKCFaceDetailActionSectionController;
  v7 = [(NTKCFaceDetailSectionController *)&v12 initWithTableViewController:controller face:face inGallery:gallery];
  v8 = v7;
  if (v7)
  {
    v7->_action = action;
    v9 = [[NTKCFaceDetailActionCell alloc] initWithAction:action];
    actionCell = v8->_actionCell;
    v8->_actionCell = v9;
  }

  return v8;
}

- (void)didSelectRow:(int64_t)row
{
  action = self->_action;
  if (action == 1)
  {
    delegate = [(NTKCFaceDetailActionSectionController *)self delegate];
    [delegate actionSectionDidDelete:self];
  }

  else
  {
    if (action)
    {
      return;
    }

    delegate = [(NTKCFaceDetailActionSectionController *)self delegate];
    [delegate actionSectionDidSelect:self];
  }
}

- (NTKCFaceDetailActionSectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end