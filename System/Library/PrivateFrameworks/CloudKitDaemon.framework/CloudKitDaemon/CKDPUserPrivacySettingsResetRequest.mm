@interface CKDPUserPrivacySettingsResetRequest
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CKDPUserPrivacySettingsResetRequest

+ (id)options
{
  if (qword_280D58520 != -1)
  {
    dispatch_once(&qword_280D58520, &unk_28385E160);
  }

  v3 = qword_280D58518;

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPUserPrivacySettingsResetRequest;
  v4 = [(CKDPUserPrivacySettingsResetRequest *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();
  v6 = objc_msgSend_allocWithZone_(v4, v5, zone);

  return objc_msgSend_init(v6, v7, v8);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = objc_opt_class();
  isMemberOfClass = objc_msgSend_isMemberOfClass_(equalCopy, v5, v4);

  return isMemberOfClass;
}

@end