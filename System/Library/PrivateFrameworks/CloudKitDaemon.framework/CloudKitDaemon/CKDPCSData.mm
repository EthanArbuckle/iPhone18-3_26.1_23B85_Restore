@interface CKDPCSData
- (CKDPCSData)initWithCoder:(id)coder;
- (CKDPCSData)initWithPCSData:(id)data;
- (id)CKPropertiesDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setPcs:(_OpaquePCSShareProtection *)pcs;
@end

@implementation CKDPCSData

- (void)dealloc
{
  pcs = self->_pcs;
  if (pcs)
  {
    CFRelease(pcs);
    self->_pcs = 0;
  }

  v4.receiver = self;
  v4.super_class = CKDPCSData;
  [(CKDPCSData *)&v4 dealloc];
}

- (id)CKPropertiesDescription
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x277CCAB68];
  v7 = objc_msgSend_itemID(self, v5, v6);
  v10 = objc_msgSend_etag(self, v8, v9);
  v12 = objc_msgSend_stringWithFormat_(v4, v11, @"itemID=%@, etag=%@", v7, v10);

  if (objc_msgSend_pcs(self, v13, v14))
  {
    v17 = objc_msgSend_pcs(self, v15, v16);
    objc_msgSend_appendFormat_(v12, v18, @", pcs=%@", v17);
  }

  v19 = objc_msgSend_pcsData(self, v15, v16);

  if (v19)
  {
    v22 = objc_msgSend_pcsData(self, v20, v21);
    objc_msgSend_appendFormat_(v12, v23, @", pcsData=%@", v22);
  }

  objc_autoreleasePoolPop(v3);

  return v12;
}

- (CKDPCSData)initWithPCSData:(id)data
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = CKDPCSData;
  v7 = [(CKDPCSData *)&v11 init];
  if (v7)
  {
    v8 = objc_msgSend_copy(dataCopy, v5, v6);
    pcsData = v7->_pcsData;
    v7->_pcsData = v8;
  }

  return v7;
}

- (void)setPcs:(_OpaquePCSShareProtection *)pcs
{
  obj = self;
  objc_sync_enter(obj);
  pcs = obj->_pcs;
  if (pcs != pcs)
  {
    if (pcs)
    {
      CFRetain(pcs);
      v5 = obj;
      pcs = obj->_pcs;
    }

    else
    {
      v5 = obj;
    }

    v5->_pcs = pcs;
    if (pcs)
    {
      CFRelease(pcs);
      pcs = obj->_pcs;
    }

    if (pcs)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = obj->_pcs;
      v8 = PCSFPCreateUniqueID();
      v11 = objc_msgSend_CKBase64URLSafeString(v8, v9, v10);
      objc_msgSend_setPcsKeyID_(obj, v12, v11);

      objc_autoreleasePoolPop(v6);
    }
  }

  objc_sync_exit(obj);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v7 = objc_msgSend_pcsData(self, v5, v6);
  v10 = objc_msgSend_copy(v7, v8, v9);
  objc_msgSend_setPcsData_(v4, v11, v10);

  v14 = objc_msgSend_etag(self, v12, v13);
  v17 = objc_msgSend_copy(v14, v15, v16);
  objc_msgSend_setEtag_(v4, v18, v17);

  v21 = objc_msgSend_pcsKeyID(self, v19, v20);
  v24 = objc_msgSend_copy(v21, v22, v23);
  objc_msgSend_setPcsKeyID_(v4, v25, v24);

  objc_msgSend_pcs(self, v26, v27);
  v28 = PCSFPCopyObject();
  objc_msgSend_setPcs_(v4, v29, v28);
  if (v28)
  {
    CFRelease(v28);
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  if (objc_msgSend_shouldEncodePCSData(self, v5, v6))
  {
    v9 = objc_msgSend_pcsData(self, v7, v8);
    objc_msgSend_encodeObject_forKey_(coderCopy, v10, v9, @"PCSData");

    v13 = objc_msgSend_etag(self, v11, v12);
    objc_msgSend_encodeObject_forKey_(coderCopy, v14, v13, @"Etag");
  }

  v15 = objc_msgSend_pcsKeyID(self, v7, v8);
  objc_msgSend_encodeObject_forKey_(coderCopy, v16, v15, @"KeyID");

  objc_autoreleasePoolPop(v4);
}

- (CKDPCSData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = CKDPCSData;
  v5 = [(CKDPCSData *)&v20 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v8, v7, @"PCSData");
    pcsData = v5->_pcsData;
    v5->_pcsData = v9;

    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v12, v11, @"Etag");
    etag = v5->_etag;
    v5->_etag = v13;

    v15 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v16, v15, @"KeyID");
    pcsKeyID = v5->_pcsKeyID;
    v5->_pcsKeyID = v17;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end