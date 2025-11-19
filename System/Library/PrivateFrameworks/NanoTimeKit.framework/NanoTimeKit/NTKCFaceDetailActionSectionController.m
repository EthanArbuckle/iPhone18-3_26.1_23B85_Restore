@interface NTKCFaceDetailActionSectionController
- (NTKCFaceDetailActionSectionController)initWithTableViewController:(id)a3 face:(id)a4 inGallery:(BOOL)a5 action:(int64_t)a6;
- (NTKCFaceDetailActionSectionDelegate)delegate;
- (void)didSelectRow:(int64_t)a3;
@end

@implementation NTKCFaceDetailActionSectionController

- (NTKCFaceDetailActionSectionController)initWithTableViewController:(id)a3 face:(id)a4 inGallery:(BOOL)a5 action:(int64_t)a6
{
  v12.receiver = self;
  v12.super_class = NTKCFaceDetailActionSectionController;
  v7 = [(NTKCFaceDetailSectionController *)&v12 initWithTableViewController:a3 face:a4 inGallery:a5];
  v8 = v7;
  if (v7)
  {
    v7->_action = a6;
    v9 = [[NTKCFaceDetailActionCell alloc] initWithAction:a6];
    actionCell = v8->_actionCell;
    v8->_actionCell = v9;
  }

  return v8;
}

- (void)didSelectRow:(int64_t)a3
{
  action = self->_action;
  if (action == 1)
  {
    v5 = [(NTKCFaceDetailActionSectionController *)self delegate];
    [v5 actionSectionDidDelete:self];
  }

  else
  {
    if (action)
    {
      return;
    }

    v5 = [(NTKCFaceDetailActionSectionController *)self delegate];
    [v5 actionSectionDidSelect:self];
  }
}

- (NTKCFaceDetailActionSectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end