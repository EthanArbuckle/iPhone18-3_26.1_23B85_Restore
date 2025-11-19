@interface CKDRecordPCSData
+ (CKDRecordPCSData)dataWithRecord:(id)a3;
- (BOOL)shouldEncodePCSData;
- (CKDRecordPCSData)initWithCoder:(id)a3;
- (CKDRecordPCSData)initWithPCSData:(id)a3 recordID:(id)a4;
- (CKDRecordPCSData)initWithRecord:(id)a3;
- (id)CKPropertiesDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setParentPCSData:(id)a3;
- (void)setPcs:(_OpaquePCSShareProtection *)a3;
- (void)setSharePCSData:(id)a3;
- (void)setSigningPCS:(_OpaquePCSShareProtection *)a3;
- (void)setZonePCSData:(id)a3;
@end

@implementation CKDRecordPCSData

- (BOOL)shouldEncodePCSData
{
  v3 = objc_msgSend_zoneishPublicKeyID(self, a2, v2);
  v4 = v3 == 0;

  return v4;
}

- (id)CKPropertiesDescription
{
  v3 = objc_autoreleasePoolPush();
  v21.receiver = self;
  v21.super_class = CKDRecordPCSData;
  v4 = [(CKDPCSData *)&v21 CKPropertiesDescription];
  v7 = objc_msgSend_mutableCopy(v4, v5, v6);

  v10 = objc_msgSend_recordType(self, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_recordType(self, v11, v12);
    objc_msgSend_appendFormat_(v7, v14, @", recordType=%@", v13);
  }

  v15 = objc_msgSend_chainPCSData(self, v11, v12);

  if (v15)
  {
    v18 = objc_msgSend_chainPCSData(self, v16, v17);
    objc_msgSend_appendFormat_(v7, v19, @", chainPCSData=%@", v18);
  }

  objc_autoreleasePoolPop(v3);

  return v7;
}

- (void)dealloc
{
  signingPCS = self->_signingPCS;
  if (signingPCS)
  {
    CFRelease(signingPCS);
    self->_signingPCS = 0;
  }

  v4.receiver = self;
  v4.super_class = CKDRecordPCSData;
  [(CKDPCSData *)&v4 dealloc];
}

- (CKDRecordPCSData)initWithPCSData:(id)a3 recordID:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CKDRecordPCSData;
  v8 = [(CKDPCSData *)&v11 initWithPCSData:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_recordID, a4);
  }

  return v9;
}

- (CKDRecordPCSData)initWithRecord:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_protectionData(v4, v5, v6);
  v72.receiver = self;
  v72.super_class = CKDRecordPCSData;
  v8 = [(CKDPCSData *)&v72 initWithPCSData:v7];

  if (v8)
  {
    v11 = objc_msgSend_recordID(v4, v9, v10);
    recordID = v8->_recordID;
    v8->_recordID = v11;

    v15 = objc_msgSend_recordID(v4, v13, v14);
    v18 = objc_msgSend_zoneID(v15, v16, v17);
    zoneID = v8->_zoneID;
    v8->_zoneID = v18;

    v22 = objc_msgSend_share(v4, v20, v21);
    v25 = objc_msgSend_recordID(v22, v23, v24);
    shareID = v8->_shareID;
    v8->_shareID = v25;

    v29 = objc_msgSend_parent(v4, v27, v28);
    v32 = objc_msgSend_recordID(v29, v30, v31);
    parentID = v8->_parentID;
    v8->_parentID = v32;

    v36 = objc_msgSend_chainParentPublicKeyID(v4, v34, v35);
    chainParentPublicKeyID = v8->_chainParentPublicKeyID;
    v8->_chainParentPublicKeyID = v36;

    v40 = objc_msgSend_recordType(v4, v38, v39);
    recordType = v8->_recordType;
    v8->_recordType = v40;

    v44 = objc_msgSend_protectionEtag(v4, v42, v43);
    objc_msgSend_setEtag_(v8, v45, v44);

    v48 = objc_msgSend_chainProtectionInfo(v4, v46, v47);

    if (v48)
    {
      v51 = [CKDChainPCSData alloc];
      v54 = objc_msgSend_chainProtectionInfo(v4, v52, v53);
      v57 = objc_msgSend_chainPrivateKey(v4, v55, v56);
      v59 = objc_msgSend_initWithPCSData_encryptedPrivateKey_(v51, v58, v54, v57);
      chainPCSData = v8->_chainPCSData;
      v8->_chainPCSData = v59;
    }

    v61 = objc_msgSend_zoneishKeyID(v4, v49, v50);
    zoneishPublicKeyID = v8->_zoneishPublicKeyID;
    v8->_zoneishPublicKeyID = v61;

    v65 = objc_msgSend_mutableEncryptedPSK(v4, v63, v64);
    encryptedPublicSharingKey = v8->_encryptedPublicSharingKey;
    v8->_encryptedPublicSharingKey = v65;

    v69 = objc_msgSend_pcsKeysToRemove(v4, v67, v68);
    pcsKeysToRemove = v8->_pcsKeysToRemove;
    v8->_pcsKeysToRemove = v69;
  }

  return v8;
}

+ (CKDRecordPCSData)dataWithRecord:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(objc_opt_class());
  v6 = objc_msgSend_initWithRecord_(v4, v5, v3);

  return v6;
}

- (void)setPcs:(_OpaquePCSShareProtection *)a3
{
  v11.receiver = self;
  v11.super_class = CKDRecordPCSData;
  [(CKDPCSData *)&v11 setPcs:?];
  v7 = objc_msgSend_zoneishPublicKeyID(self, v5, v6);

  if (a3)
  {
    if (v7)
    {
      v9 = objc_msgSend_protectionIdentifierFromShareProtection_(CKDPCSManager, v8, a3);
      objc_msgSend_setZoneishPublicKeyID_(self, v10, v9);
    }
  }
}

- (void)setZonePCSData:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_zoneID(v4, v5, v6);
  objc_msgSend_setZoneID_(self, v8, v7);

  zonePCSData = self->_zonePCSData;
  self->_zonePCSData = v4;
}

- (void)setSharePCSData:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_shareID(v4, v5, v6);
  objc_msgSend_setShareID_(self, v8, v7);

  sharePCSData = self->_sharePCSData;
  self->_sharePCSData = v4;
}

- (void)setParentPCSData:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_recordID(v4, v5, v6);
  objc_msgSend_setParentID_(self, v8, v7);

  parentPCSData = self->_parentPCSData;
  self->_parentPCSData = v4;
  v10 = v4;

  v19 = objc_msgSend_chainPCSData(v10, v11, v12);
  v15 = objc_msgSend_pcs(v19, v13, v14);
  v17 = objc_msgSend_publicKeyIDFromIdentity_(CKDPCSManager, v16, v15);

  objc_msgSend_setChainParentPublicKeyID_(self, v18, v17);
}

- (void)setSigningPCS:(_OpaquePCSShareProtection *)a3
{
  obj = self;
  objc_sync_enter(obj);
  signingPCS = obj->_signingPCS;
  if (signingPCS != a3)
  {
    if (a3)
    {
      CFRetain(a3);
      v5 = obj;
      signingPCS = obj->_signingPCS;
    }

    else
    {
      v5 = obj;
    }

    v5->_signingPCS = a3;
    if (signingPCS)
    {
      CFRelease(signingPCS);
    }
  }

  objc_sync_exit(obj);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v58.receiver = self;
  v58.super_class = CKDRecordPCSData;
  [(CKDPCSData *)&v58 encodeWithCoder:v4];
  v8 = objc_msgSend_recordID(self, v6, v7);
  objc_msgSend_encodeObject_forKey_(v4, v9, v8, @"RecordID");

  v12 = objc_msgSend_recordType(self, v10, v11);
  objc_msgSend_encodeObject_forKey_(v4, v13, v12, @"RecordType");

  v16 = objc_msgSend_zoneID(self, v14, v15);
  objc_msgSend_encodeObject_forKey_(v4, v17, v16, @"RecordZoneID");

  v20 = objc_msgSend_shareID(self, v18, v19);
  objc_msgSend_encodeObject_forKey_(v4, v21, v20, @"RecordShareID");

  v24 = objc_msgSend_parentID(self, v22, v23);
  objc_msgSend_encodeObject_forKey_(v4, v25, v24, @"ParentID");

  v28 = objc_msgSend_chainPCSData(self, v26, v27);
  objc_msgSend_encodeObject_forKey_(v4, v29, v28, @"ChainPCS");

  v32 = objc_msgSend_zonePCSData(self, v30, v31);
  objc_msgSend_encodeObject_forKey_(v4, v33, v32, @"ZonePCS");

  v36 = objc_msgSend_sharePCSData(self, v34, v35);
  objc_msgSend_encodeObject_forKey_(v4, v37, v36, @"SharePCS");

  v40 = objc_msgSend_parentPCSData(self, v38, v39);
  objc_msgSend_encodeObject_forKey_(v4, v41, v40, @"ParentPCS");

  v44 = objc_msgSend_encryptedPublicSharingKey(self, v42, v43);
  objc_msgSend_encodeObject_forKey_(v4, v45, v44, @"PublicSharingKey");

  v48 = objc_msgSend_chainParentPublicKeyID(self, v46, v47);
  objc_msgSend_encodeObject_forKey_(v4, v49, v48, @"ChainParentPublicKeyID");

  v52 = objc_msgSend_zoneishPublicKeyID(self, v50, v51);
  objc_msgSend_encodeObject_forKey_(v4, v53, v52, @"ZoneishPublicKeyID");

  v56 = objc_msgSend_pcsKeysToRemove(self, v54, v55);
  objc_msgSend_encodeObject_forKey_(v4, v57, v56, @"PCSKeysToRemove");

  objc_autoreleasePoolPop(v5);
}

- (CKDRecordPCSData)initWithCoder:(id)a3
{
  v4 = a3;
  v60.receiver = self;
  v60.super_class = CKDRecordPCSData;
  v5 = [(CKDPCSData *)&v60 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v8, v7, @"RecordID");
    recordID = v5->_recordID;
    v5->_recordID = v9;

    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v12, v11, @"RecordType");
    recordType = v5->_recordType;
    v5->_recordType = v13;

    v15 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v16, v15, @"RecordZoneID");
    zoneID = v5->_zoneID;
    v5->_zoneID = v17;

    v19 = objc_opt_class();
    v21 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v20, v19, @"RecordShareID");
    shareID = v5->_shareID;
    v5->_shareID = v21;

    v23 = objc_opt_class();
    v25 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v24, v23, @"ParentID");
    parentID = v5->_parentID;
    v5->_parentID = v25;

    v27 = objc_opt_class();
    v29 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v28, v27, @"ChainPCS");
    chainPCSData = v5->_chainPCSData;
    v5->_chainPCSData = v29;

    v31 = objc_opt_class();
    v33 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v32, v31, @"ZonePCS");
    zonePCSData = v5->_zonePCSData;
    v5->_zonePCSData = v33;

    v35 = objc_opt_class();
    v37 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v36, v35, @"SharePCS");
    sharePCSData = v5->_sharePCSData;
    v5->_sharePCSData = v37;

    v39 = objc_opt_class();
    v41 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v40, v39, @"ParentPCS");
    parentPCSData = v5->_parentPCSData;
    v5->_parentPCSData = v41;

    v43 = objc_opt_class();
    v45 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v44, v43, @"PublicSharingKey");
    encryptedPublicSharingKey = v5->_encryptedPublicSharingKey;
    v5->_encryptedPublicSharingKey = v45;

    v47 = objc_opt_class();
    v49 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v48, v47, @"ChainParentPublicKeyID");
    chainParentPublicKeyID = v5->_chainParentPublicKeyID;
    v5->_chainParentPublicKeyID = v49;

    v51 = objc_opt_class();
    v53 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v52, v51, @"ZoneishPublicKeyID");
    zoneishPublicKeyID = v5->_zoneishPublicKeyID;
    v5->_zoneishPublicKeyID = v53;

    v55 = objc_opt_class();
    v57 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v56, v55, @"PCSKeysToRemove");
    pcsKeysToRemove = v5->_pcsKeysToRemove;
    v5->_pcsKeysToRemove = v57;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v107.receiver = self;
  v107.super_class = CKDRecordPCSData;
  v4 = [(CKDPCSData *)&v107 copyWithZone:a3];
  v7 = objc_msgSend_recordID(self, v5, v6);
  v10 = objc_msgSend_copy(v7, v8, v9);
  objc_msgSend_setRecordID_(v4, v11, v10);

  v14 = objc_msgSend_recordType(self, v12, v13);
  v17 = objc_msgSend_copy(v14, v15, v16);
  objc_msgSend_setRecordType_(v4, v18, v17);

  v21 = objc_msgSend_etag(self, v19, v20);
  v24 = objc_msgSend_copy(v21, v22, v23);
  objc_msgSend_setEtag_(v4, v25, v24);

  v28 = objc_msgSend_zoneID(self, v26, v27);
  v31 = objc_msgSend_copy(v28, v29, v30);
  objc_msgSend_setZoneID_(v4, v32, v31);

  v35 = objc_msgSend_shareID(self, v33, v34);
  v38 = objc_msgSend_copy(v35, v36, v37);
  objc_msgSend_setShareID_(v4, v39, v38);

  v42 = objc_msgSend_parentID(self, v40, v41);
  v45 = objc_msgSend_copy(v42, v43, v44);
  objc_msgSend_setParentID_(v4, v46, v45);

  v49 = objc_msgSend_chainParentPublicKeyID(self, v47, v48);
  v52 = objc_msgSend_copy(v49, v50, v51);
  objc_msgSend_setChainParentPublicKeyID_(v4, v53, v52);

  v56 = objc_msgSend_zoneishPublicKeyID(self, v54, v55);
  v59 = objc_msgSend_copy(v56, v57, v58);
  objc_msgSend_setZoneishPublicKeyID_(v4, v60, v59);

  v63 = objc_msgSend_encryptedPublicSharingKey(self, v61, v62);
  v66 = objc_msgSend_copy(v63, v64, v65);
  objc_msgSend_setEncryptedPublicSharingKey_(v4, v67, v66);

  v70 = objc_msgSend_chainPCSData(self, v68, v69);
  v73 = objc_msgSend_copy(v70, v71, v72);
  objc_msgSend_setChainPCSData_(v4, v74, v73);

  v77 = objc_msgSend_zonePCSData(self, v75, v76);
  v80 = objc_msgSend_copy(v77, v78, v79);
  objc_msgSend_setZonePCSData_(v4, v81, v80);

  v84 = objc_msgSend_sharePCSData(self, v82, v83);
  v87 = objc_msgSend_copy(v84, v85, v86);
  objc_msgSend_setSharePCSData_(v4, v88, v87);

  v91 = objc_msgSend_parentPCSData(self, v89, v90);
  v94 = objc_msgSend_copy(v91, v92, v93);
  objc_msgSend_setParentPCSData_(v4, v95, v94);

  v98 = objc_msgSend_pcsKeysToRemove(self, v96, v97);
  objc_msgSend_setPcsKeysToRemove_(v4, v99, v98);

  if (objc_msgSend_signingPCS(self, v100, v101))
  {
    objc_msgSend_signingPCS(self, v102, v103);
    v104 = PCSFPCopyObject();
    objc_msgSend_setSigningPCS_(v4, v105, v104);
    if (v104)
    {
      CFRelease(v104);
    }
  }

  return v4;
}

@end