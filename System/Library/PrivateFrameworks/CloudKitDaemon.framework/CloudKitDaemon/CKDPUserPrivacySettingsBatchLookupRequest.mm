@interface CKDPUserPrivacySettingsBatchLookupRequest
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CKDPUserPrivacySettingsBatchLookupRequest

+ (id)options
{
  if (qword_280D58510 != -1)
  {
    dispatch_once(&qword_280D58510, &unk_28385E140);
  }

  v3 = qword_280D58508;

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPUserPrivacySettingsBatchLookupRequest;
  v4 = [(CKDPUserPrivacySettingsBatchLookupRequest *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();
  v6 = objc_msgSend_allocWithZone_(v4, v5, a3);

  return objc_msgSend_init(v6, v7, v8);
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  isMemberOfClass = objc_msgSend_isMemberOfClass_(v3, v5, v4);

  return isMemberOfClass;
}

@end