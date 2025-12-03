@interface CAMSmartStyleSettingsResourceLoadResult
- (CAMSmartStyleSettingsResourceLoadResult)initWithCompositionController:(id)controller fileURL:(id)l imageProperties:(id)properties cropRect:(CGRect)rect logIdentifier:(id)identifier;
- (CAMSmartStyleSettingsResourceLoadResult)initWithResourceLoadResult:(id)result logIdentifier:(id)identifier;
- (CGRect)cropRect;
@end

@implementation CAMSmartStyleSettingsResourceLoadResult

- (CAMSmartStyleSettingsResourceLoadResult)initWithCompositionController:(id)controller fileURL:(id)l imageProperties:(id)properties cropRect:(CGRect)rect logIdentifier:(id)identifier
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  controllerCopy = controller;
  lCopy = l;
  propertiesCopy = properties;
  identifierCopy = identifier;
  v24.receiver = self;
  v24.super_class = CAMSmartStyleSettingsResourceLoadResult;
  v20 = [(CAMSmartStyleSettingsResourceLoadResult *)&v24 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_compositionController, controller);
    objc_storeStrong(&v21->_fileURL, l);
    objc_storeStrong(&v21->_fileURLImageProperties, properties);
    v21->_cropRect.origin.x = x;
    v21->_cropRect.origin.y = y;
    v21->_cropRect.size.width = width;
    v21->_cropRect.size.height = height;
    objc_storeStrong(&v21->_logIdentifier, identifier);
    v22 = v21;
  }

  return v21;
}

- (CAMSmartStyleSettingsResourceLoadResult)initWithResourceLoadResult:(id)result logIdentifier:(id)identifier
{
  resultCopy = result;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = CAMSmartStyleSettingsResourceLoadResult;
  v8 = [(CAMSmartStyleSettingsResourceLoadResult *)&v15 init];
  if (v8)
  {
    compositionController = [resultCopy compositionController];
    compositionController = v8->_compositionController;
    v8->_compositionController = compositionController;

    asset = [resultCopy asset];
    asset = v8->_asset;
    v8->_asset = asset;

    objc_storeStrong(&v8->_logIdentifier, identifier);
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