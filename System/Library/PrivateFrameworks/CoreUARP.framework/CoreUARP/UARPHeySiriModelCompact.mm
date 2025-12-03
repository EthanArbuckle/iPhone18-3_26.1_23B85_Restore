@interface UARPHeySiriModelCompact
+ (id)tag;
- (BOOL)processDynamicAsset:(id *)asset;
- (UARPHeySiriModelCompact)init;
- (void)currentHeySiriModel:(id)model fallbackModel:(id)fallbackModel error:(id)error;
@end

@implementation UARPHeySiriModelCompact

- (UARPHeySiriModelCompact)init
{
  [(UARPHeySiriModelCompact *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (BOOL)processDynamicAsset:(id *)asset
{
  v11.receiver = self;
  v11.super_class = UARPHeySiriModelCompact;
  v4 = [(UARPHeySiriModelBase *)&v11 processDynamicAsset:asset];
  if (v4)
  {
    v10.receiver = self;
    v10.super_class = UARPHeySiriModelCompact;
    [(UARPHeySiriModelBase *)&v10 setDelegate:self];
    if (([(UARPHeySiriModelBase *)self engineType]& 2) != 0)
    {
      v9.receiver = self;
      v5 = &selRef_checkCurrentJustSiriModel;
      v6 = &v9;
    }

    else
    {
      selfCopy = self;
      v5 = &selRef_checkCurrentHeySiriModel;
      v6 = &selfCopy;
    }

    v6->super_class = UARPHeySiriModelCompact;
    objc_msgSendSuper2(v6, *v5, selfCopy);
  }

  return v4;
}

- (void)currentHeySiriModel:(id)model fallbackModel:(id)fallbackModel error:(id)error
{
  errorCopy = error;
  fallbackModelCopy = fallbackModel;
  modelCopy = model;
  v11 = +[UARPHeySiriModelCompact tag];
  v12 = [[UARPAssetVersion alloc] initWithMajorVersion:0 minorVersion:0 releaseVersion:0 buildVersion:0];
  v13.receiver = self;
  v13.super_class = UARPHeySiriModelCompact;
  [(UARPHeySiriModelBase *)&v13 offerDownloadModel:modelCopy fallbackModel:fallbackModelCopy tag:v11 assetVersion:v12 error:errorCopy];
}

+ (id)tag
{
  v2 = uarpAssetTagStructHeySiriModel();
  v3 = [[UARPAssetTag alloc] initWithChar1:*v2 char2:v2[1] char3:v2[2] char4:v2[3]];

  return v3;
}

@end