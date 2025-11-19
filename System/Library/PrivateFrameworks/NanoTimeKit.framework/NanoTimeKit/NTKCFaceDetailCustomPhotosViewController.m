@interface NTKCFaceDetailCustomPhotosViewController
- (NTKCFaceDetailCustomPhotosViewController)initWithPhotosEditor:(id)a3 forFace:(id)a4 inGallery:(BOOL)a5 faceView:(id)a6 externalImagesSet:(BOOL)a7;
- (void)customPhotosControllerDidFinish:(id)a3;
@end

@implementation NTKCFaceDetailCustomPhotosViewController

- (NTKCFaceDetailCustomPhotosViewController)initWithPhotosEditor:(id)a3 forFace:(id)a4 inGallery:(BOOL)a5 faceView:(id)a6 externalImagesSet:(BOOL)a7
{
  v7 = a7;
  v8 = a5;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [[_NTKCFaceDetailCustomPhotosViewController alloc] initWithPhotosEditor:v14 forFace:v13 inGallery:v8 faceView:v12 externalImagesSet:v7];

  v19.receiver = self;
  v19.super_class = NTKCFaceDetailCustomPhotosViewController;
  v16 = [(NTKCNavigationController *)&v19 initWithRootViewController:v15];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_implementationVC, v15);
    [(_NTKCFaceDetailCustomPhotosViewController *)v17->_implementationVC setDelegate:v17];
  }

  return v17;
}

- (void)customPhotosControllerDidFinish:(id)a3
{
  v4 = [(NTKCFaceDetailCustomPhotosViewController *)self delegate];
  [v4 customPhotosControllerDidFinish:self];
}

void __83___NTKCFaceDetailCustomPhotosViewController_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1, void *a2, double x, double y, double width, double height)
{
  v11 = a2;
  v12 = [*(a1 + 32) collectionView];
  v13 = [v12 indexPathForCell:*(a1 + 40)];
  v14 = [v13 item];
  v15 = *(a1 + 48);

  if (v14 == v15)
  {
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    if (!CGRectIsEmpty(v20))
    {
      [v11 scale];
      v17 = 1.0 / v16;
      [v11 scale];
      CGAffineTransformMakeScale(&v19, v17, 1.0 / v18);
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      v22 = CGRectApplyAffineTransform(v21, &v19);
      x = v22.origin.x;
      y = v22.origin.y;
      width = v22.size.width;
      height = v22.size.height;
    }

    [*(a1 + 40) setPhoto:v11];
    [*(a1 + 40) setCrop:{x, y, width, height}];
  }
}

void __88___NTKCFaceDetailCustomPhotosViewController_collectionView_shouldSelectItemAtIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _updateButtons];
    v2 = [v3 collectionView];
    [v2 reloadData];

    WeakRetained = v3;
  }
}

void __57___NTKCFaceDetailCustomPhotosViewController__savePressed__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 customPhotosControllerDidFinish:v3];
}

void __57___NTKCFaceDetailCustomPhotosViewController__savePressed__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained face];
    [v5 setResourceDirectory:v8];

    v6 = v4[129];
    v7 = [v4 navigationItem];
    [v7 setLeftBarButtonItem:v6];

    (*(*(a1 + 32) + 16))();
  }
}

uint64_t __56___NTKCFaceDetailCustomPhotosViewController__addPressed__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1128) addPhotosFromUIImagePicker:?];
  [*(a1 + 32) _updateButtons];
  v2 = [*(a1 + 32) collectionView];
  [v2 reloadData];

  return 0;
}

uint64_t __59___NTKCFaceDetailCustomPhotosViewController__deletePressed__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCAA70] indexPathForItem:a2 inSection:0];
  [v4 addObject:v5];

  v6 = *(*(a1 + 40) + 1128);

  return [v6 deletePhotoAtIndex:a2];
}

@end