@interface CKDApplicationMetadata
- (CKDApplicationMetadata)initWithAdopterProcessType:(int64_t)a3 containingBundleID:(id)a4 applicationContainerPath:(id)a5 entitlements:(id)a6 clientSDKVersion:(unsigned int)a7 isClientMainBundleAppleExecutable:(BOOL)a8;
@end

@implementation CKDApplicationMetadata

- (CKDApplicationMetadata)initWithAdopterProcessType:(int64_t)a3 containingBundleID:(id)a4 applicationContainerPath:(id)a5 entitlements:(id)a6 clientSDKVersion:(unsigned int)a7 isClientMainBundleAppleExecutable:(BOOL)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v28.receiver = self;
  v28.super_class = CKDApplicationMetadata;
  v17 = [(CKDApplicationMetadata *)&v28 init];
  v20 = v17;
  if (v17)
  {
    v17->_adopterProcessType = a3;
    v21 = objc_msgSend_copy(v14, v18, v19);
    containingBundleID = v20->_containingBundleID;
    v20->_containingBundleID = v21;

    v25 = objc_msgSend_copy(v15, v23, v24);
    applicationContainerPath = v20->_applicationContainerPath;
    v20->_applicationContainerPath = v25;

    objc_storeStrong(&v20->_entitlements, a6);
    v20->_clientSDKVersion = a7;
    v20->_isClientMainBundleAppleExecutable = a8;
  }

  return v20;
}

@end