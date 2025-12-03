@interface CKDSharePCSData
+ (CKDSharePCSData)dataWithShare:(id)share serviceType:(unint64_t)type;
+ (CKDSharePCSData)dataWithShareID:(id)d pcsData:(id)data;
- (CKDSharePCSData)initWithCoder:(id)coder;
- (CKDSharePCSData)initWithShareID:(id)d pcsData:(id)data;
- (id)CKPropertiesDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setMyParticipantPCS:(_OpaquePCSShareProtection *)s;
- (void)setPreKeyRollInvitedPCS:(_OpaquePCSShareProtection *)s;
- (void)setPublicPCS:(_OpaquePCSShareProtection *)s;
@end

@implementation CKDSharePCSData

- (CKDSharePCSData)initWithShareID:(id)d pcsData:(id)data
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = CKDSharePCSData;
  v8 = [(CKDPCSData *)&v11 initWithPCSData:data];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_shareID, d);
  }

  return v9;
}

+ (CKDSharePCSData)dataWithShare:(id)share serviceType:(unint64_t)type
{
  shareCopy = share;
  v6 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_recordID(shareCopy, v7, v8);
  v12 = objc_msgSend_invitedProtectionData(shareCopy, v10, v11);
  v14 = objc_msgSend_initWithShareID_pcsData_(v6, v13, v9, v12);

  if (v14)
  {
    v17 = objc_msgSend_publicProtectionData(shareCopy, v15, v16);
    objc_msgSend_setPublicPCSData_(v14, v18, v17);

    v21 = objc_msgSend_invitedProtectionEtag(shareCopy, v19, v20);
    objc_msgSend_setEtag_(v14, v22, v21);

    objc_msgSend_setServiceType_(v14, v23, type);
    v26 = objc_msgSend_modificationDate(shareCopy, v24, v25);
    objc_msgSend_setShareModificationDate_(v14, v27, v26);

    v30 = objc_msgSend_currentUserParticipant(shareCopy, v28, v29);
    v33 = objc_msgSend_permission(v30, v31, v32);
    objc_msgSend_setMyParticipantPermission_(v14, v34, v33);
    v37 = objc_msgSend_role(v30, v35, v36);
    objc_msgSend_setMyParticipantRole_(v14, v38, v37);
    v41 = objc_msgSend_protectionInfo(v30, v39, v40);
    objc_msgSend_setMyParticipantPCSData_(v14, v42, v41);

    v45 = objc_msgSend_publicPermission(shareCopy, v43, v44);
    objc_msgSend_setPublicPermission_(v14, v46, v45);
    v49 = objc_msgSend_etag(shareCopy, v47, v48);
    objc_msgSend_setShareEtag_(v14, v50, v49);

    v53 = objc_msgSend_publicProtectionEtag(shareCopy, v51, v52);
    objc_msgSend_setPublicPCSEtag_(v14, v54, v53);

    v57 = objc_msgSend_publicProtectionData(shareCopy, v55, v56);
    objc_msgSend_setPublicPCSData_(v14, v58, v57);
  }

  return v14;
}

+ (CKDSharePCSData)dataWithShareID:(id)d pcsData:(id)data
{
  dataCopy = data;
  dCopy = d;
  v7 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithShareID_pcsData_(v7, v8, dCopy, dataCopy);

  return v9;
}

- (void)dealloc
{
  publicPCS = self->_publicPCS;
  if (publicPCS)
  {
    CFRelease(publicPCS);
    self->_publicPCS = 0;
  }

  myParticipantPCS = self->_myParticipantPCS;
  if (myParticipantPCS)
  {
    CFRelease(myParticipantPCS);
    self->_myParticipantPCS = 0;
  }

  preKeyRollInvitedPCS = self->_preKeyRollInvitedPCS;
  if (preKeyRollInvitedPCS)
  {
    CFRelease(preKeyRollInvitedPCS);
    self->_preKeyRollInvitedPCS = 0;
  }

  v6.receiver = self;
  v6.super_class = CKDSharePCSData;
  [(CKDPCSData *)&v6 dealloc];
}

- (void)setPublicPCS:(_OpaquePCSShareProtection *)s
{
  obj = self;
  objc_sync_enter(obj);
  publicPCS = obj->_publicPCS;
  if (publicPCS != s)
  {
    if (s)
    {
      CFRetain(s);
      v5 = obj;
      publicPCS = obj->_publicPCS;
    }

    else
    {
      v5 = obj;
    }

    v5->_publicPCS = s;
    if (publicPCS)
    {
      CFRelease(publicPCS);
    }
  }

  objc_sync_exit(obj);
}

- (void)setMyParticipantPCS:(_OpaquePCSShareProtection *)s
{
  obj = self;
  objc_sync_enter(obj);
  myParticipantPCS = obj->_myParticipantPCS;
  if (myParticipantPCS != s)
  {
    if (s)
    {
      CFRetain(s);
      v5 = obj;
      myParticipantPCS = obj->_myParticipantPCS;
    }

    else
    {
      v5 = obj;
    }

    v5->_myParticipantPCS = s;
    if (myParticipantPCS)
    {
      CFRelease(myParticipantPCS);
    }
  }

  objc_sync_exit(obj);
}

- (void)setPreKeyRollInvitedPCS:(_OpaquePCSShareProtection *)s
{
  obj = self;
  objc_sync_enter(obj);
  preKeyRollInvitedPCS = obj->_preKeyRollInvitedPCS;
  if (preKeyRollInvitedPCS != s)
  {
    if (s)
    {
      CFRetain(s);
      v5 = obj;
      preKeyRollInvitedPCS = obj->_preKeyRollInvitedPCS;
    }

    else
    {
      v5 = obj;
    }

    v5->_preKeyRollInvitedPCS = s;
    if (preKeyRollInvitedPCS)
    {
      CFRelease(preKeyRollInvitedPCS);
    }
  }

  objc_sync_exit(obj);
}

- (id)CKPropertiesDescription
{
  v3 = objc_autoreleasePoolPush();
  v30.receiver = self;
  v30.super_class = CKDSharePCSData;
  cKPropertiesDescription = [(CKDPCSData *)&v30 CKPropertiesDescription];
  v7 = objc_msgSend_mutableCopy(cKPropertiesDescription, v5, v6);

  if (objc_msgSend_publicPCS(self, v8, v9))
  {
    v12 = objc_msgSend_publicPCS(self, v10, v11);
    objc_msgSend_appendFormat_(v7, v13, @", publicPCS=%@", v12);
  }

  v14 = objc_msgSend_publicPCSData(self, v10, v11);

  if (v14)
  {
    v17 = objc_msgSend_publicPCSData(self, v15, v16);
    objc_msgSend_appendFormat_(v7, v18, @", publicPCSData=%@", v17);
  }

  v19 = objc_msgSend_publicPCSEtag(self, v15, v16);

  if (v19)
  {
    v22 = objc_msgSend_publicPCSEtag(self, v20, v21);
    objc_msgSend_appendFormat_(v7, v23, @", publicPCSEtag=%@", v22);
  }

  v24 = objc_msgSend_shareEtag(self, v20, v21);

  if (v24)
  {
    v27 = objc_msgSend_shareEtag(self, v25, v26);
    objc_msgSend_appendFormat_(v7, v28, @", shareEtag=%@", v27);
  }

  objc_autoreleasePoolPop(v3);

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v46.receiver = self;
  v46.super_class = CKDSharePCSData;
  [(CKDPCSData *)&v46 encodeWithCoder:coderCopy];
  v8 = objc_msgSend_shareID(self, v6, v7);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, v8, @"ShareID");

  v12 = objc_msgSend_publicPCSData(self, v10, v11);
  objc_msgSend_encodeObject_forKey_(coderCopy, v13, v12, @"PublicPCSData");

  v16 = objc_msgSend_publicPCSEtag(self, v14, v15);
  objc_msgSend_encodeObject_forKey_(coderCopy, v17, v16, @"PublicPCSEtag");

  v20 = objc_msgSend_myParticipantPCSData(self, v18, v19);
  objc_msgSend_encodeObject_forKey_(coderCopy, v21, v20, @"MyParticipantPCS");

  v24 = objc_msgSend_myParticipantPermission(self, v22, v23);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v25, v24, @"MyParticipantPermission");
  v28 = objc_msgSend_myParticipantRole(self, v26, v27);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v29, v28, @"MyParticipantType");
  v32 = objc_msgSend_publicPermission(self, v30, v31);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v33, v32, @"PublicPermission");
  v36 = objc_msgSend_serviceType(self, v34, v35);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v37, v36, @"ServiceType");
  v40 = objc_msgSend_shareEtag(self, v38, v39);
  objc_msgSend_encodeObject_forKey_(coderCopy, v41, v40, @"ShareEtag");

  v44 = objc_msgSend_shareModificationDate(self, v42, v43);
  objc_msgSend_encodeObject_forKey_(coderCopy, v45, v44, @"shareModificationDate");

  objc_autoreleasePoolPop(v5);
}

- (CKDSharePCSData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v36.receiver = self;
  v36.super_class = CKDSharePCSData;
  v5 = [(CKDPCSData *)&v36 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v8, v7, @"ShareID");
    shareID = v5->_shareID;
    v5->_shareID = v9;

    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v12, v11, @"PublicPCSData");
    publicPCSData = v5->_publicPCSData;
    v5->_publicPCSData = v13;

    v15 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v16, v15, @"PublicPCSEtag");
    publicPCSEtag = v5->_publicPCSEtag;
    v5->_publicPCSEtag = v17;

    v19 = objc_opt_class();
    v21 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v20, v19, @"MyParticipantPCS");
    myParticipantPCSData = v5->_myParticipantPCSData;
    v5->_myParticipantPCSData = v21;

    v5->_myParticipantPermission = objc_msgSend_decodeIntegerForKey_(coderCopy, v23, @"MyParticipantPermission");
    v5->_myParticipantRole = objc_msgSend_decodeIntegerForKey_(coderCopy, v24, @"MyParticipantType");
    v5->_publicPermission = objc_msgSend_decodeIntegerForKey_(coderCopy, v25, @"PublicPermission");
    v5->_serviceType = objc_msgSend_decodeIntegerForKey_(coderCopy, v26, @"ServiceType");
    v27 = objc_opt_class();
    v29 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v28, v27, @"ShareEtag");
    shareEtag = v5->_shareEtag;
    v5->_shareEtag = v29;

    v31 = objc_opt_class();
    v33 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v32, v31, @"shareModificationDate");
    shareModificationDate = v5->_shareModificationDate;
    v5->_shareModificationDate = v33;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v78.receiver = self;
  v78.super_class = CKDSharePCSData;
  v4 = [(CKDPCSData *)&v78 copyWithZone:zone];
  v7 = objc_msgSend_shareID(self, v5, v6);
  v10 = objc_msgSend_copy(v7, v8, v9);
  objc_msgSend_setShareID_(v4, v11, v10);

  v14 = objc_msgSend_serviceType(self, v12, v13);
  objc_msgSend_setServiceType_(v4, v15, v14);
  v18 = objc_msgSend_shareEtag(self, v16, v17);
  v21 = objc_msgSend_copy(v18, v19, v20);
  objc_msgSend_setShareEtag_(v4, v22, v21);

  v25 = objc_msgSend_publicPermission(self, v23, v24);
  objc_msgSend_setPublicPermission_(v4, v26, v25);
  v29 = objc_msgSend_myParticipantRole(self, v27, v28);
  objc_msgSend_setMyParticipantRole_(v4, v30, v29);
  v33 = objc_msgSend_myParticipantPermission(self, v31, v32);
  objc_msgSend_setMyParticipantPermission_(v4, v34, v33);
  v37 = objc_msgSend_myParticipantPCSData(self, v35, v36);
  v40 = objc_msgSend_copy(v37, v38, v39);
  objc_msgSend_setMyParticipantPCSData_(v4, v41, v40);

  v44 = objc_msgSend_publicPCSEtag(self, v42, v43);
  v47 = objc_msgSend_copy(v44, v45, v46);
  objc_msgSend_setPublicPCSEtag_(v4, v48, v47);

  v51 = objc_msgSend_publicPCSData(self, v49, v50);
  v54 = objc_msgSend_copy(v51, v52, v53);
  objc_msgSend_setPublicPCSData_(v4, v55, v54);

  v58 = objc_msgSend_shareModificationDate(self, v56, v57);
  v61 = objc_msgSend_copy(v58, v59, v60);
  objc_msgSend_setShareModificationDate_(v4, v62, v61);

  if (objc_msgSend_myParticipantPCS(self, v63, v64))
  {
    objc_msgSend_myParticipantPCS(self, v65, v66);
    v67 = PCSFPCopyObject();
    objc_msgSend_setMyParticipantPCS_(v4, v68, v67);
    if (v67)
    {
      CFRelease(v67);
    }
  }

  if (objc_msgSend_publicPCS(self, v65, v66))
  {
    objc_msgSend_publicPCS(self, v69, v70);
    v71 = PCSFPCopyObject();
    objc_msgSend_setPublicPCS_(v4, v72, v71);
    if (v71)
    {
      CFRelease(v71);
    }
  }

  if (objc_msgSend_preKeyRollInvitedPCS(self, v69, v70))
  {
    objc_msgSend_preKeyRollInvitedPCS(self, v73, v74);
    v75 = PCSFPCopyObject();
    objc_msgSend_setPreKeyRollInvitedPCS_(v4, v76, v75);
    if (v75)
    {
      CFRelease(v75);
    }
  }

  return v4;
}

@end