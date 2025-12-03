@interface CKDContainerPrivacySettings
- (BOOL)isEqual:(id)equal;
- (CKDContainerPrivacySettings)initWithContainerID:(id)d applicationBundleIDs:(id)ds discoverable:(int64_t)discoverable;
- (id)CKPropertiesDescription;
- (unint64_t)hash;
@end

@implementation CKDContainerPrivacySettings

- (CKDContainerPrivacySettings)initWithContainerID:(id)d applicationBundleIDs:(id)ds discoverable:(int64_t)discoverable
{
  dCopy = d;
  dsCopy = ds;
  v20.receiver = self;
  v20.super_class = CKDContainerPrivacySettings;
  v12 = [(CKDContainerPrivacySettings *)&v20 init];
  if (v12)
  {
    v13 = objc_msgSend_copy(dCopy, v10, v11);
    containerID = v12->_containerID;
    v12->_containerID = v13;

    v17 = objc_msgSend_copy(dsCopy, v15, v16);
    applicationBundleIDs = v12->_applicationBundleIDs;
    v12->_applicationBundleIDs = v17;

    v12->_discoverable = discoverable;
  }

  return v12;
}

- (id)CKPropertiesDescription
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_containerID(self, a2, v2);
  v8 = objc_msgSend_applicationBundleIDs(self, v6, v7);
  v11 = objc_msgSend_discoverable(self, v9, v10);
  v13 = objc_msgSend_stringWithFormat_(v4, v12, @"containerID=%@, applicationBundleIDs=%@, discoverable=%ld", v5, v8, v11);

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v25 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v8 = objc_msgSend_containerID(self, v6, v7);
      v11 = objc_msgSend_containerID(v5, v9, v10);
      v12 = CKObjectsAreBothNilOrEqual();

      if (v12 && (objc_msgSend_applicationBundleIDs(self, v13, v14), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend_applicationBundleIDs(v5, v16, v17), v18 = objc_claimAutoreleasedReturnValue(), v19 = CKObjectsAreBothNilOrEqual(), v18, v15, v19))
      {
        v22 = objc_msgSend_discoverable(self, v20, v21);
        v25 = v22 == objc_msgSend_discoverable(v5, v23, v24);
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  return v25;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_containerID(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_applicationBundleIDs(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12) ^ v7;
  v16 = objc_msgSend_discoverable(self, v14, v15);

  return v13 ^ v16;
}

@end