@interface NTKCFaceDetailViewContext
- (id)initInGallery:(BOOL)a3 faceView:(id)a4 requestingViewController:(id)a5 tableViewProvider:(id)a6 collection:(id)a7 externalAssets:(id)a8;
@end

@implementation NTKCFaceDetailViewContext

- (id)initInGallery:(BOOL)a3 faceView:(id)a4 requestingViewController:(id)a5 tableViewProvider:(id)a6 collection:(id)a7 externalAssets:(id)a8
{
  v24 = a4;
  v23 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v25.receiver = self;
  v25.super_class = NTKCFaceDetailViewContext;
  v18 = [(NTKCFaceDetailViewContext *)&v25 init];
  v19 = v18;
  if (v18)
  {
    v18->_inGallery = a3;
    objc_storeStrong(&v18->_faceView, a4);
    objc_storeStrong(&v19->_tableViewProvider, a6);
    objc_storeStrong(&v19->_collection, a7);
    v20 = [v17 copy];
    externalAssets = v19->_externalAssets;
    v19->_externalAssets = v20;

    objc_storeStrong(&v19->_requestingViewController, a5);
  }

  return v19;
}

@end