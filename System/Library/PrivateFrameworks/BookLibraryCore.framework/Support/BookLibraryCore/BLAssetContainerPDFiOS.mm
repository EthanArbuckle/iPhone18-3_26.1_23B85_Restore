@interface BLAssetContainerPDFiOS
- (BLAssetContainerPDFiOS)initWithMetadataStoreManager:(id)manager;
- (id)installOperationForInstallInfo:(id)info;
@end

@implementation BLAssetContainerPDFiOS

- (BLAssetContainerPDFiOS)initWithMetadataStoreManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = BLAssetContainerPDFiOS;
  v6 = [(BLAssetContainerPDFiOS *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metadataStoreManager, manager);
  }

  return v7;
}

- (id)installOperationForInstallInfo:(id)info
{
  infoCopy = info;
  v5 = [BLPDFInstallOperation alloc];
  metadataStoreManager = [(BLAssetContainerPDFiOS *)self metadataStoreManager];
  v7 = [(BLPDFInstallOperation *)v5 initWithInfo:infoCopy metadataStoreManager:metadataStoreManager];

  return v7;
}

@end