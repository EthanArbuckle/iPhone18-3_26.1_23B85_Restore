@interface NTKCFaceDetailViewContext
- (id)initInGallery:(BOOL)gallery faceView:(id)view requestingViewController:(id)controller tableViewProvider:(id)provider collection:(id)collection externalAssets:(id)assets;
@end

@implementation NTKCFaceDetailViewContext

- (id)initInGallery:(BOOL)gallery faceView:(id)view requestingViewController:(id)controller tableViewProvider:(id)provider collection:(id)collection externalAssets:(id)assets
{
  viewCopy = view;
  controllerCopy = controller;
  providerCopy = provider;
  collectionCopy = collection;
  assetsCopy = assets;
  v25.receiver = self;
  v25.super_class = NTKCFaceDetailViewContext;
  v18 = [(NTKCFaceDetailViewContext *)&v25 init];
  v19 = v18;
  if (v18)
  {
    v18->_inGallery = gallery;
    objc_storeStrong(&v18->_faceView, view);
    objc_storeStrong(&v19->_tableViewProvider, provider);
    objc_storeStrong(&v19->_collection, collection);
    v20 = [assetsCopy copy];
    externalAssets = v19->_externalAssets;
    v19->_externalAssets = v20;

    objc_storeStrong(&v19->_requestingViewController, controller);
  }

  return v19;
}

@end