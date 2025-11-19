@interface NTKCFaceDetailAlbumChooserViewController
- (NTKCFaceDetailAlbumChooserViewController)initWithPhotosEditor:(id)a3 forFace:(id)a4 inGallery:(BOOL)a5;
- (NTKCFaceDetailAlbumChooserViewControllerDelegate)delegate;
- (void)_albumChooserDidFinish:(id)a3;
@end

@implementation NTKCFaceDetailAlbumChooserViewController

- (NTKCFaceDetailAlbumChooserViewController)initWithPhotosEditor:(id)a3 forFace:(id)a4 inGallery:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[_NTKCFaceDetailAlbumChooserViewController alloc] initWithPhotosEditor:v9 forFace:v8 inGallery:v5];

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

- (void)_albumChooserDidFinish:(id)a3
{
  v4 = [(NTKCFaceDetailAlbumChooserViewController *)self delegate];
  [v4 albumChooserDidFinish:self];
}

- (NTKCFaceDetailAlbumChooserViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end