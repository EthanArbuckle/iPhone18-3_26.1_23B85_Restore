@interface SecureBackupBeginPasscodeRequestResults
- (SecureBackupBeginPasscodeRequestResults)initWithCoder:(id)a3;
- (SecureBackupBeginPasscodeRequestResults)initWithStoredCertificate:(id)a3 uuid:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SecureBackupBeginPasscodeRequestResults

- (SecureBackupBeginPasscodeRequestResults)initWithStoredCertificate:(id)a3 uuid:(id)a4
{
  v6 = a3;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = SecureBackupBeginPasscodeRequestResults;
  v10 = [(SecureBackupBeginPasscodeRequestResults *)&v26 init];
  if (v10)
  {
    v11 = objc_msgSend_iCloudEnvironment(v6, v8, v9);
    iCloudEnvironment = v10->_iCloudEnvironment;
    v10->_iCloudEnvironment = v11;

    v15 = objc_msgSend_escrowBaseURL(v6, v13, v14);
    escrowFederation = v10->_escrowFederation;
    v10->_escrowFederation = v15;

    v19 = objc_msgSend_escrowCertificate(v6, v17, v18);
    cert = v10->_cert;
    v10->_cert = v19;

    v23 = objc_msgSend_dsid(v6, v21, v22);
    dsid = v10->_dsid;
    v10->_dsid = v23;

    objc_storeStrong(&v10->_uuid, a4);
  }

  return v10;
}

- (id)description
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_uuid(self, a2, v2);
  v8 = objc_msgSend_iCloudEnvironment(self, v6, v7);
  v11 = objc_msgSend_escrowFederation(self, v9, v10);
  v14 = objc_msgSend_cert(self, v12, v13);
  v16 = objc_msgSend_base64EncodedStringWithOptions_(v14, v15, 0);
  v19 = objc_msgSend_dsid(self, v17, v18);
  v21 = objc_msgSend_stringWithFormat_(v4, v20, @"<SBBPRR: %@ %@ %@ %@ %@>", v5, v8, v11, v16, v19);

  return v21;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_iCloudEnvironment(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(v4, v8, v7, @"iCloudEnvironment");

  v11 = objc_msgSend_escrowFederation(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(v4, v12, v11, @"escrowFederation");

  v15 = objc_msgSend_cert(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(v4, v16, v15, @"cert");

  v20 = objc_msgSend_dsid(self, v17, v18);
  objc_msgSend_encodeObject_forKey_(v4, v19, v20, @"dsid");
}

- (SecureBackupBeginPasscodeRequestResults)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = SecureBackupBeginPasscodeRequestResults;
  v5 = [(SecureBackupBeginPasscodeRequestResults *)&v23 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"iCloudEnvironment");
    iCloudEnvironment = v5->_iCloudEnvironment;
    v5->_iCloudEnvironment = v8;

    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v10, @"escrowFederation");
    escrowFederation = v5->_escrowFederation;
    v5->_escrowFederation = v12;

    v14 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v15, v14, @"cert");
    cert = v5->_cert;
    v5->_cert = v16;

    v18 = objc_opt_class();
    v20 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v19, v18, @"dsid");
    dsid = v5->_dsid;
    v5->_dsid = v20;
  }

  return v5;
}

@end