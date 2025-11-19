@interface CAMSmartStyleSettingsResourceLoadResult
- (CAMSmartStyleSettingsResourceLoadResult)initWithCompositionController:(id)a3 fileURL:(id)a4 imageProperties:(id)a5 cropRect:(CGRect)a6 logIdentifier:(id)a7;
- (CAMSmartStyleSettingsResourceLoadResult)initWithResourceLoadResult:(id)a3 logIdentifier:(id)a4;
- (CGRect)cropRect;
@end

@implementation CAMSmartStyleSettingsResourceLoadResult

- (CAMSmartStyleSettingsResourceLoadResult)initWithCompositionController:(id)a3 fileURL:(id)a4 imageProperties:(id)a5 cropRect:(CGRect)a6 logIdentifier:(id)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v24.receiver = self;
  v24.super_class = CAMSmartStyleSettingsResourceLoadResult;
  v20 = [(CAMSmartStyleSettingsResourceLoadResult *)&v24 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_compositionController, a3);
    objc_storeStrong(&v21->_fileURL, a4);
    objc_storeStrong(&v21->_fileURLImageProperties, a5);
    v21->_cropRect.origin.x = x;
    v21->_cropRect.origin.y = y;
    v21->_cropRect.size.width = width;
    v21->_cropRect.size.height = height;
    objc_storeStrong(&v21->_logIdentifier, a7);
    v22 = v21;
  }

  return v21;
}

- (CAMSmartStyleSettingsResourceLoadResult)initWithResourceLoadResult:(id)a3 logIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = CAMSmartStyleSettingsResourceLoadResult;
  v8 = [(CAMSmartStyleSettingsResourceLoadResult *)&v15 init];
  if (v8)
  {
    v9 = [v6 compositionController];
    compositionController = v8->_compositionController;
    v8->_compositionController = v9;

    v11 = [v6 asset];
    asset = v8->_asset;
    v8->_asset = v11;

    objc_storeStrong(&v8->_logIdentifier, a4);
    v13 = v8;
  }

  return v8;
}

- (CGRect)cropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end