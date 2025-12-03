@interface CKDZonePCSData
+ (CKDZonePCSData)dataWithZone:(id)zone;
- (CKDZonePCSData)initWithCoder:(id)coder;
- (CKDZonePCSData)initWithZone:(id)zone;
- (id)CKPropertiesDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setParentPCSData:(id)data;
- (void)setSharePCSData:(id)data;
- (void)setZoneishPCS:(_OpaquePCSShareProtection *)s;
@end

@implementation CKDZonePCSData

- (void)dealloc
{
  zoneishPCS = self->_zoneishPCS;
  if (zoneishPCS)
  {
    CFRelease(zoneishPCS);
    self->_zoneishPCS = 0;
  }

  v4.receiver = self;
  v4.super_class = CKDZonePCSData;
  [(CKDPCSData *)&v4 dealloc];
}

- (CKDZonePCSData)initWithZone:(id)zone
{
  zoneCopy = zone;
  v7 = objc_msgSend_protectionData(zoneCopy, v5, v6);
  v33.receiver = self;
  v33.super_class = CKDZonePCSData;
  v8 = [(CKDPCSData *)&v33 initWithPCSData:v7];

  if (v8)
  {
    v11 = objc_msgSend_zoneID(zoneCopy, v9, v10);
    zoneID = v8->_zoneID;
    v8->_zoneID = v11;

    v15 = objc_msgSend_zoneishProtectionData(zoneCopy, v13, v14);
    zoneishPCSData = v8->_zoneishPCSData;
    v8->_zoneishPCSData = v15;

    v19 = objc_msgSend_protectionEtag(zoneCopy, v17, v18);
    objc_msgSend_setEtag_(v8, v20, v19);

    v23 = objc_msgSend_share(zoneCopy, v21, v22);
    v26 = objc_msgSend_recordID(v23, v24, v25);
    shareID = v8->_shareID;
    v8->_shareID = v26;

    v30 = objc_msgSend_zonePCSModificationDate(zoneCopy, v28, v29);
    zonePCSModificationDate = v8->_zonePCSModificationDate;
    v8->_zonePCSModificationDate = v30;
  }

  return v8;
}

+ (CKDZonePCSData)dataWithZone:(id)zone
{
  zoneCopy = zone;
  v4 = objc_alloc(objc_opt_class());
  v6 = objc_msgSend_initWithZone_(v4, v5, zoneCopy);

  return v6;
}

- (void)setZoneishPCS:(_OpaquePCSShareProtection *)s
{
  obj = self;
  objc_sync_enter(obj);
  zoneishPCS = obj->_zoneishPCS;
  if (zoneishPCS != s)
  {
    if (s)
    {
      CFRetain(s);
      v5 = obj;
      zoneishPCS = obj->_zoneishPCS;
    }

    else
    {
      v5 = obj;
    }

    v5->_zoneishPCS = s;
    if (zoneishPCS)
    {
      CFRelease(zoneishPCS);
    }

    v6 = objc_autoreleasePoolPush();
    v7 = objc_msgSend_protectionIdentifierFromShareProtection_(CKDPCSManager, obj, obj->_zoneishPCS);
    objc_msgSend_setZoneishPublicKeyID_(obj, v8, v7);

    objc_autoreleasePoolPop(v6);
  }

  objc_sync_exit(obj);
}

- (void)setSharePCSData:(id)data
{
  dataCopy = data;
  v9 = objc_msgSend_shareID(self, v5, v6);
  if (v9)
  {
    objc_msgSend_shareID(dataCopy, v7, v8);
  }

  v12 = objc_msgSend_shareID(dataCopy, v10, v11);
  objc_msgSend_setShareID_(self, v13, v12);

  sharePCSData = self->_sharePCSData;
  self->_sharePCSData = dataCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v55.receiver = self;
  v55.super_class = CKDZonePCSData;
  v4 = [(CKDPCSData *)&v55 copyWithZone:zone];
  v7 = objc_msgSend_zoneID(self, v5, v6);
  v10 = objc_msgSend_copy(v7, v8, v9);
  objc_msgSend_setZoneID_(v4, v11, v10);

  v14 = objc_msgSend_zoneishPCSData(self, v12, v13);
  v17 = objc_msgSend_copy(v14, v15, v16);
  objc_msgSend_setZoneishPCSData_(v4, v18, v17);

  v21 = objc_msgSend_zoneishPublicKeyID(self, v19, v20);
  v24 = objc_msgSend_copy(v21, v22, v23);
  objc_msgSend_setZoneishPublicKeyID_(v4, v25, v24);

  v28 = objc_msgSend_sharePCSData(self, v26, v27);
  v31 = objc_msgSend_copy(v28, v29, v30);
  objc_msgSend_setSharePCSData_(v4, v32, v31);

  v35 = objc_msgSend_shareID(self, v33, v34);
  v38 = objc_msgSend_copy(v35, v36, v37);
  objc_msgSend_setShareID_(v4, v39, v38);

  if (objc_msgSend_zoneishPCS(self, v40, v41))
  {
    objc_msgSend_zoneishPCS(self, v42, v43);
    v44 = PCSFPCopyObject();
    objc_msgSend_setZoneishPCS_(v4, v45, v44);
    if (v44)
    {
      CFRelease(v44);
    }
  }

  v46 = objc_msgSend_zonePCSModificationDate(self, v42, v43);

  if (v46)
  {
    v49 = objc_msgSend_zonePCSModificationDate(self, v47, v48);
    v52 = objc_msgSend_copy(v49, v50, v51);
    objc_msgSend_setZonePCSModificationDate_(v4, v53, v52);
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v25.receiver = self;
  v25.super_class = CKDZonePCSData;
  coderCopy = coder;
  [(CKDPCSData *)&v25 encodeWithCoder:coderCopy];
  v7 = objc_msgSend_zoneID(self, v5, v6, v25.receiver, v25.super_class);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v7, @"ZoneID");

  v11 = objc_msgSend_zoneishPCSData(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, v11, @"ZoneishPCSData");

  v15 = objc_msgSend_zoneishPublicKeyID(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(coderCopy, v16, v15, @"ZoneishPublicKeyID");

  v19 = objc_msgSend_shareID(self, v17, v18);
  objc_msgSend_encodeObject_forKey_(coderCopy, v20, v19, @"RecordShareID");

  v23 = objc_msgSend_zonePCSModificationDate(self, v21, v22);
  objc_msgSend_encodeObject_forKey_(coderCopy, v24, v23, @"ZonePCSModificationDate");
}

- (CKDZonePCSData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = CKDZonePCSData;
  v5 = [(CKDPCSData *)&v27 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"ZoneID");
    zoneID = v5->_zoneID;
    v5->_zoneID = v8;

    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v11, v10, @"ZoneishPCSData");
    zoneishPCSData = v5->_zoneishPCSData;
    v5->_zoneishPCSData = v12;

    v14 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v15, v14, @"ZoneishPublicKeyID");
    zoneishPublicKeyID = v5->_zoneishPublicKeyID;
    v5->_zoneishPublicKeyID = v16;

    v18 = objc_opt_class();
    v20 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v19, v18, @"RecordShareID");
    shareID = v5->_shareID;
    v5->_shareID = v20;

    v22 = objc_opt_class();
    v24 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v23, v22, @"ZonePCSModificationDate");
    zonePCSModificationDate = v5->_zonePCSModificationDate;
    v5->_zonePCSModificationDate = v24;
  }

  return v5;
}

- (id)CKPropertiesDescription
{
  v3 = objc_autoreleasePoolPush();
  v16.receiver = self;
  v16.super_class = CKDZonePCSData;
  cKPropertiesDescription = [(CKDPCSData *)&v16 CKPropertiesDescription];
  v7 = objc_msgSend_mutableCopy(cKPropertiesDescription, v5, v6);

  v10 = objc_msgSend_shareID(self, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_shareID(self, v11, v12);
    objc_msgSend_appendFormat_(v7, v14, @", shareID=%@", v13);
  }

  objc_autoreleasePoolPop(v3);

  return v7;
}

- (void)setParentPCSData:(id)data
{
  dataCopy = data;
  v7 = objc_msgSend_zoneID(dataCopy, v5, v6);
  objc_msgSend_setParentID_(self, v8, v7);

  parentPCSData = self->_parentPCSData;
  self->_parentPCSData = dataCopy;
}

@end