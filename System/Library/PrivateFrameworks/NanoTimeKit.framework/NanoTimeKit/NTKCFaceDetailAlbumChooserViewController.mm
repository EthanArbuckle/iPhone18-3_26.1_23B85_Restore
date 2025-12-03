@interface NTKCFaceDetailAlbumChooserViewController
- (NTKCFaceDetailAlbumChooserViewController)initWithPhotosEditor:(id)editor forFace:(id)face inGallery:(BOOL)gallery;
- (NTKCFaceDetailAlbumChooserViewControllerDelegate)delegate;
- (void)_albumChooserDidFinish:(id)finish;
@end

@implementation NTKCFaceDetailAlbumChooserViewController

- (NTKCFaceDetailAlbumChooserViewController)initWithPhotosEditor:(id)editor forFace:(id)face inGallery:(BOOL)gallery
{
  galleryCopy = gallery;
  faceCopy = face;
  editorCopy = editor;
  v10 = [[_NTKCFaceDetailAlbumChooserViewController alloc] initWithPhotosEditor:editorCopy forFace:faceCopy inGallery:galleryCopy];

  v14.receiver = self;
  v14.super_class = NTKCFaceDetailAlbumChooserViewController;
  v11 = [(NTKCNavigationController *)&v14 initWithRootViewController:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_implementationVC, v10);
    [(_NTKCFaceDetailAlbumChooserViewController *)v12->_implementationVC setDelegate:v12];
  }

  return v12;
}

- (void)_albumChooserDidFinish:(id)finish
{
  delegate = [(NTKCFaceDetailAlbumChooserViewController *)self delegate];
  [delegate albumChooserDidFinish:self];
}

- (NTKCFaceDetailAlbumChooserViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end