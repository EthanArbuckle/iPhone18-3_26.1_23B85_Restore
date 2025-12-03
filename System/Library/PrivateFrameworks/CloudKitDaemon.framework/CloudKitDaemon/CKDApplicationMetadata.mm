@interface CKDApplicationMetadata
- (CKDApplicationMetadata)initWithAdopterProcessType:(int64_t)type containingBundleID:(id)d applicationContainerPath:(id)path entitlements:(id)entitlements clientSDKVersion:(unsigned int)version isClientMainBundleAppleExecutable:(BOOL)executable;
@end

@implementation CKDApplicationMetadata

- (CKDApplicationMetadata)initWithAdopterProcessType:(int64_t)type containingBundleID:(id)d applicationContainerPath:(id)path entitlements:(id)entitlements clientSDKVersion:(unsigned int)version isClientMainBundleAppleExecutable:(BOOL)executable
{
  dCopy = d;
  pathCopy = path;
  entitlementsCopy = entitlements;
  v28.receiver = self;
  v28.super_class = CKDApplicationMetadata;
  v17 = [(CKDApplicationMetadata *)&v28 init];
  v20 = v17;
  if (v17)
  {
    v17->_adopterProcessType = type;
    v21 = objc_msgSend_copy(dCopy, v18, v19);
    containingBundleID = v20->_containingBundleID;
    v20->_containingBundleID = v21;

    v25 = objc_msgSend_copy(pathCopy, v23, v24);
    applicationContainerPath = v20->_applicationContainerPath;
    v20->_applicationContainerPath = v25;

    objc_storeStrong(&v20->_entitlements, entitlements);
    v20->_clientSDKVersion = version;
    v20->_isClientMainBundleAppleExecutable = executable;
  }

  return v20;
}

@end