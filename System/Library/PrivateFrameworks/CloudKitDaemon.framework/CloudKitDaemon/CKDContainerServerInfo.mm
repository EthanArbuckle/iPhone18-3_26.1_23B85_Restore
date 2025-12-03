@interface CKDContainerServerInfo
- (BOOL)isEqual:(id)equal;
- (CKDContainerServerInfo)init;
- (CKDContainerServerInfo)initWithCoder:(id)coder;
- (id)CKPropertiesDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKDContainerServerInfo

- (CKDContainerServerInfo)init
{
  v3.receiver = self;
  v3.super_class = CKDContainerServerInfo;
  result = [(CKDContainerServerInfo *)&v3 init];
  if (result)
  {
    result->_environment = -1;
  }

  return result;
}

- (id)CKPropertiesDescription
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_publicCloudDBURL(self, a2, v2);
  v8 = objc_msgSend_publicShareServiceURL(self, v6, v7);
  v11 = objc_msgSend_publicDeviceServiceURL(self, v9, v10);
  v14 = objc_msgSend_publicCodeServiceURL(self, v12, v13);
  v17 = objc_msgSend_publicMetricsServiceURL(self, v15, v16);
  v20 = objc_msgSend_containerScopedUserID(self, v18, v19);
  v23 = objc_msgSend_orgAdminUserID(self, v21, v22);
  objc_msgSend_environment(self, v24, v25);
  v26 = CKStringFromServerEnvironment();
  v28 = objc_msgSend_stringWithFormat_(v4, v27, @"publicCloudDBURL=%@, publicShareServiceURL=%@, publicDeviceServiceURL=%@, publicCodeServiceURL=%@, publicMetricsServiceURL=%@, containerScopedUserID=%@, orgAdminUserID=%@, environment=%@", v5, v8, v11, v14, v17, v20, v23, v26);

  return v28;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v60 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v8 = objc_msgSend_publicCloudDBURL(self, v6, v7);
      v11 = objc_msgSend_publicCloudDBURL(v5, v9, v10);
      v12 = CKObjectsAreBothNilOrEqual();

      if (!v12)
      {
        goto LABEL_13;
      }

      v15 = objc_msgSend_publicShareServiceURL(self, v13, v14);
      v18 = objc_msgSend_publicShareServiceURL(v5, v16, v17);
      v19 = CKObjectsAreBothNilOrEqual();

      if (!v19)
      {
        goto LABEL_13;
      }

      v22 = objc_msgSend_publicDeviceServiceURL(self, v20, v21);
      v25 = objc_msgSend_publicDeviceServiceURL(v5, v23, v24);
      v26 = CKObjectsAreBothNilOrEqual();

      if (!v26)
      {
        goto LABEL_13;
      }

      v29 = objc_msgSend_publicCodeServiceURL(self, v27, v28);
      v32 = objc_msgSend_publicCodeServiceURL(v5, v30, v31);
      v33 = CKObjectsAreBothNilOrEqual();

      if (!v33)
      {
        goto LABEL_13;
      }

      v36 = objc_msgSend_publicMetricsServiceURL(self, v34, v35);
      v39 = objc_msgSend_publicMetricsServiceURL(v5, v37, v38);
      v40 = CKObjectsAreBothNilOrEqual();

      if (!v40)
      {
        goto LABEL_13;
      }

      v43 = objc_msgSend_containerScopedUserID(self, v41, v42);
      v46 = objc_msgSend_containerScopedUserID(v5, v44, v45);
      v47 = CKObjectsAreBothNilOrEqual();

      if (!v47)
      {
        goto LABEL_13;
      }

      v50 = objc_msgSend_orgAdminUserID(self, v48, v49);
      v53 = objc_msgSend_orgAdminUserID(v5, v51, v52);
      v54 = CKObjectsAreBothNilOrEqual();

      if (v54)
      {
        v57 = objc_msgSend_environment(self, v55, v56);
        v60 = v57 == objc_msgSend_environment(v5, v58, v59);
      }

      else
      {
LABEL_13:
        v60 = 0;
      }
    }

    else
    {
      v60 = 0;
    }
  }

  return v60;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_publicCloudDBURL(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_publicShareServiceURL(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12) ^ v7;
  v16 = objc_msgSend_publicDeviceServiceURL(self, v14, v15);
  v19 = objc_msgSend_hash(v16, v17, v18);
  v22 = objc_msgSend_publicCodeServiceURL(self, v20, v21);
  v25 = v13 ^ v19 ^ objc_msgSend_hash(v22, v23, v24);
  v28 = objc_msgSend_publicMetricsServiceURL(self, v26, v27);
  v31 = objc_msgSend_hash(v28, v29, v30);
  v34 = objc_msgSend_containerScopedUserID(self, v32, v33);
  v37 = v31 ^ objc_msgSend_hash(v34, v35, v36);
  v40 = objc_msgSend_orgAdminUserID(self, v38, v39);
  v43 = v25 ^ v37 ^ objc_msgSend_hash(v40, v41, v42);
  v46 = objc_msgSend_environment(self, v44, v45);

  return v43 ^ v46;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v7 = objc_msgSend_publicCloudDBURL(self, v5, v6);
  v10 = objc_msgSend_copy(v7, v8, v9);
  v11 = v4[1];
  v4[1] = v10;

  v14 = objc_msgSend_publicShareServiceURL(self, v12, v13);
  v17 = objc_msgSend_copy(v14, v15, v16);
  v18 = v4[2];
  v4[2] = v17;

  v21 = objc_msgSend_publicDeviceServiceURL(self, v19, v20);
  v24 = objc_msgSend_copy(v21, v22, v23);
  v25 = v4[3];
  v4[3] = v24;

  v28 = objc_msgSend_publicCodeServiceURL(self, v26, v27);
  v31 = objc_msgSend_copy(v28, v29, v30);
  v32 = v4[4];
  v4[4] = v31;

  v35 = objc_msgSend_publicMetricsServiceURL(self, v33, v34);
  v38 = objc_msgSend_copy(v35, v36, v37);
  v39 = v4[5];
  v4[5] = v38;

  v42 = objc_msgSend_containerScopedUserID(self, v40, v41);
  v45 = objc_msgSend_copy(v42, v43, v44);
  v46 = v4[6];
  v4[6] = v45;

  v49 = objc_msgSend_orgAdminUserID(self, v47, v48);
  v52 = objc_msgSend_copy(v49, v50, v51);
  v53 = v4[7];
  v4[7] = v52;

  v4[8] = objc_msgSend_environment(self, v54, v55);
  return v4;
}

- (CKDContainerServerInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v37.receiver = self;
  v37.super_class = CKDContainerServerInfo;
  v5 = [(CKDContainerServerInfo *)&v37 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v8, v7, @"PublicCloudDBURL");
    publicCloudDBURL = v5->_publicCloudDBURL;
    v5->_publicCloudDBURL = v9;

    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v12, v11, @"PublicShareServiceURL");
    publicShareServiceURL = v5->_publicShareServiceURL;
    v5->_publicShareServiceURL = v13;

    v15 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v16, v15, @"PublicDeviceServiceURL");
    publicDeviceServiceURL = v5->_publicDeviceServiceURL;
    v5->_publicDeviceServiceURL = v17;

    v19 = objc_opt_class();
    v21 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v20, v19, @"PublicCodeServiceURL");
    publicCodeServiceURL = v5->_publicCodeServiceURL;
    v5->_publicCodeServiceURL = v21;

    v23 = objc_opt_class();
    v25 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v24, v23, @"PublicMetricsServiceURL");
    publicMetricsServiceURL = v5->_publicMetricsServiceURL;
    v5->_publicMetricsServiceURL = v25;

    v27 = objc_opt_class();
    v29 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v28, v27, @"ContainerScopedUserID");
    containerScopedUserID = v5->_containerScopedUserID;
    v5->_containerScopedUserID = v29;

    v31 = objc_opt_class();
    v33 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v32, v31, @"OrgAdminUserID");
    orgAdminUserID = v5->_orgAdminUserID;
    v5->_orgAdminUserID = v33;

    v5->_environment = objc_msgSend_decodeIntegerForKey_(coderCopy, v35, @"Environment");
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_publicCloudDBURL(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v7, @"PublicCloudDBURL");

  v11 = objc_msgSend_publicShareServiceURL(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, v11, @"PublicShareServiceURL");

  v15 = objc_msgSend_publicDeviceServiceURL(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(coderCopy, v16, v15, @"PublicDeviceServiceURL");

  v19 = objc_msgSend_publicCodeServiceURL(self, v17, v18);
  objc_msgSend_encodeObject_forKey_(coderCopy, v20, v19, @"PublicCodeServiceURL");

  v23 = objc_msgSend_publicMetricsServiceURL(self, v21, v22);
  objc_msgSend_encodeObject_forKey_(coderCopy, v24, v23, @"PublicMetricsServiceURL");

  v27 = objc_msgSend_containerScopedUserID(self, v25, v26);
  objc_msgSend_encodeObject_forKey_(coderCopy, v28, v27, @"ContainerScopedUserID");

  v31 = objc_msgSend_orgAdminUserID(self, v29, v30);
  objc_msgSend_encodeObject_forKey_(coderCopy, v32, v31, @"OrgAdminUserID");

  v35 = objc_msgSend_environment(self, v33, v34);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v36, v35, @"Environment");
  objc_autoreleasePoolPop(v4);
}

@end