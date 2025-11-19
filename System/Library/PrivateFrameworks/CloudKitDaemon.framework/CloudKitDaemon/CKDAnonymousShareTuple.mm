@interface CKDAnonymousShareTuple
- (CKDAnonymousShareTuple)initWithCoder:(id)a3;
- (CKDAnonymousShareTuple)initWithZoneID:(id)a3 shareID:(id)a4 parentZoneID:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKDAnonymousShareTuple

- (CKDAnonymousShareTuple)initWithZoneID:(id)a3 shareID:(id)a4 parentZoneID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25.receiver = self;
  v25.super_class = CKDAnonymousShareTuple;
  v13 = [(CKDAnonymousShareTuple *)&v25 init];
  if (v13)
  {
    v14 = objc_msgSend_copy(v8, v11, v12);
    zoneID = v13->_zoneID;
    v13->_zoneID = v14;

    v18 = objc_msgSend_copy(v9, v16, v17);
    shareID = v13->_shareID;
    v13->_shareID = v18;

    v22 = objc_msgSend_copy(v10, v20, v21);
    parentZoneID = v13->_parentZoneID;
    v13->_parentZoneID = v22;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_zoneID(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(v4, v8, v7, @"CKDAnonymousShareZoneID");

  v11 = objc_msgSend_shareID(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(v4, v12, v11, @"CKDAnonymousShareShareID");

  v15 = objc_msgSend_ckAnonymousShareHashIdentifier(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(v4, v16, v15, @"CKDAnonymousShareHashIdentifier");

  v20 = objc_msgSend_parentZoneID(self, v17, v18);
  objc_msgSend_encodeObject_forKey_(v4, v19, v20, @"CKDAnonymousShareParentZoneID");
}

- (CKDAnonymousShareTuple)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = CKDAnonymousShareTuple;
  v5 = [(CKDAnonymousShareTuple *)&v23 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"CKDAnonymousShareZoneID");
    zoneID = v5->_zoneID;
    v5->_zoneID = v8;

    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v10, @"CKDAnonymousShareShareID");
    shareID = v5->_shareID;
    v5->_shareID = v12;

    v14 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v15, v14, @"CKDAnonymousShareHashIdentifier");
    ckAnonymousShareHashIdentifier = v5->_ckAnonymousShareHashIdentifier;
    v5->_ckAnonymousShareHashIdentifier = v16;

    v18 = objc_opt_class();
    v20 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v19, v18, @"CKDAnonymousShareParentZoneID");
    parentZoneID = v5->_parentZoneID;
    v5->_parentZoneID = v20;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CKDAnonymousShareTuple);
  v7 = objc_msgSend_zoneID(self, v5, v6);
  v10 = objc_msgSend_copy(v7, v8, v9);
  zoneID = v4->_zoneID;
  v4->_zoneID = v10;

  v14 = objc_msgSend_shareID(self, v12, v13);
  v17 = objc_msgSend_copy(v14, v15, v16);
  shareID = v4->_shareID;
  v4->_shareID = v17;

  v21 = objc_msgSend_ckAnonymousShareHashIdentifier(self, v19, v20);
  v24 = objc_msgSend_copy(v21, v22, v23);
  ckAnonymousShareHashIdentifier = v4->_ckAnonymousShareHashIdentifier;
  v4->_ckAnonymousShareHashIdentifier = v24;

  v28 = objc_msgSend_parentZoneID(self, v26, v27);
  v31 = objc_msgSend_copy(v28, v29, v30);
  parentZoneID = v4->_parentZoneID;
  v4->_parentZoneID = v31;

  return v4;
}

@end