@interface CKDDeclineShareMetadata
- (CKRoughlyEquivalentProperties)equivalencyProperties;
@end

@implementation CKDDeclineShareMetadata

- (CKRoughlyEquivalentProperties)equivalencyProperties
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_shareURL(self, v4, v5);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v7, v6, @"shareURL");

  v10 = objc_msgSend_participantID(self, v8, v9);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v11, v10, @"participantID");

  v14 = objc_msgSend_shareRecordID(self, v12, v13);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v15, v14, @"shareRecordID");

  v18 = objc_msgSend_properties(v3, v16, v17);

  return v18;
}

@end