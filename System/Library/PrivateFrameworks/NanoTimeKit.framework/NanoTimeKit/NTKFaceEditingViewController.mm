@interface NTKFaceEditingViewController
- (NTKFaceEditingViewController)initWithFace:(id)face;
- (void)dealloc;
- (void)loadView;
@end

@implementation NTKFaceEditingViewController

- (NTKFaceEditingViewController)initWithFace:(id)face
{
  faceCopy = face;
  v10.receiver = self;
  v10.super_class = NTKFaceEditingViewController;
  v6 = [(NTKFaceEditingViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_face, face);
    [(NTKFaceEditingViewController *)v7 setModalPresentationCapturesStatusBarAppearance:1];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_faceColorEditOptionsChanged name:@"NTKColorEditOptionsChangedNotificationName" object:v7->_face];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"NTKColorEditOptionsChangedNotificationName" object:self->_face];

  v4.receiver = self;
  v4.super_class = NTKFaceEditingViewController;
  [(NTKFaceEditingViewController *)&v4 dealloc];
}

- (void)loadView
{
  v3 = [NTKFaceEditView alloc];
  face = [(NTKFaceEditingViewController *)self face];
  v5 = [(NTKFaceEditView *)v3 initWithFace:face];

  [(NTKFaceEditingViewController *)self setView:v5];
  editView = self->_editView;
  self->_editView = v5;
}

@end