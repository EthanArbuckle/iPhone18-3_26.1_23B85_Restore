@interface CKDShareTokenMetadata
- (NSData)shortSharingTokenHashData;
- (NSString)shortSharingToken;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CKDShareTokenMetadata

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v7 = objc_msgSend_routingKey(self, v5, v6);
  v10 = objc_msgSend_copy(v7, v8, v9);
  v11 = v4[2];
  v4[2] = v10;

  v14 = objc_msgSend_shortSharingTokenData(self, v12, v13);
  v17 = objc_msgSend_copy(v14, v15, v16);
  v18 = v4[3];
  v4[3] = v17;

  v21 = objc_msgSend_privateTokenData(self, v19, v20);
  v24 = objc_msgSend_copy(v21, v22, v23);
  v25 = v4[5];
  v4[5] = v24;

  v28 = objc_msgSend_publicTokenData(self, v26, v27);
  v31 = objc_msgSend_copy(v28, v29, v30);
  v32 = v4[4];
  v4[4] = v31;

  v35 = objc_msgSend_participantID(self, v33, v34);
  v38 = objc_msgSend_copy(v35, v36, v37);
  v39 = v4[6];
  v4[6] = v38;

  return v4;
}

- (NSString)shortSharingToken
{
  v3 = objc_msgSend_shortSharingTokenData(self, a2, v2);
  v6 = objc_msgSend_CKBase64URLSafeString(v3, v4, v5);

  return v6;
}

- (NSData)shortSharingTokenHashData
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_shortSharingToken(self, a2, v2, 0, 0, 0, 0);
  v6 = objc_msgSend_UTF8String(v3, v4, v5);
  v8 = objc_msgSend_lengthOfBytesUsingEncoding_(v3, v7, 4);
  CC_SHA256(v6, v8, &v13);
  v10 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v9, &v13, 32);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end