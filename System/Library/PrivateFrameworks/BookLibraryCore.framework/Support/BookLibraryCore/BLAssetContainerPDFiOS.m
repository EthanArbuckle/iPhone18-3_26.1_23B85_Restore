@interface BLAssetContainerPDFiOS
- (BLAssetContainerPDFiOS)initWithMetadataStoreManager:(id)a3;
- (id)installOperationForInstallInfo:(id)a3;
@end

@implementation BLAssetContainerPDFiOS

- (BLAssetContainerPDFiOS)initWithMetadataStoreManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BLAssetContainerPDFiOS;
  v6 = [(BLAssetContainerPDFiOS *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metadataStoreManager, a3);
  }

  return v7;
}

- (id)installOperationForInstallInfo:(id)a3
{
  v4 = a3;
  v5 = [BLPDFInstallOperation alloc];
  v6 = [(BLAssetContainerPDFiOS *)self metadataStoreManager];
  v7 = [(BLPDFInstallOperation *)v5 initWithInfo:v4 metadataStoreManager:v6];

  return v7;
}

@end