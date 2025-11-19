@interface CKDPUserPrivacySettingsUpdateRequest
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPUserPrivacySettingsUpdateRequest

+ (id)options
{
  if (qword_280D550D0 != -1)
  {
    dispatch_once(&qword_280D550D0, &unk_28385E1A0);
  }

  v3 = qword_280D550C8;

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPUserPrivacySettingsUpdateRequest;
  v4 = [(CKDPUserPrivacySettingsUpdateRequest *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    objc_msgSend_setObject_forKey_(v4, v5, bundleIdentifier, @"bundleIdentifier");
  }

  userPrivacySettings = self->_userPrivacySettings;
  if (userPrivacySettings)
  {
    v9 = objc_msgSend_dictionaryRepresentation(userPrivacySettings, v5, bundleIdentifier);
    objc_msgSend_setObject_forKey_(v6, v10, v9, @"userPrivacySettings");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_userPrivacySettings)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  bundleIdentifier = self->_bundleIdentifier;
  v8 = v4;
  if (bundleIdentifier)
  {
    objc_msgSend_setBundleIdentifier_(v4, v5, bundleIdentifier);
    v4 = v8;
  }

  userPrivacySettings = self->_userPrivacySettings;
  if (userPrivacySettings)
  {
    objc_msgSend_setUserPrivacySettings_(v8, v5, userPrivacySettings);
    v4 = v8;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_bundleIdentifier, v11, a3);
  v13 = v10[1];
  v10[1] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_userPrivacySettings, v14, a3);
  v16 = v10[2];
  v10[2] = v15;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5) && ((bundleIdentifier = self->_bundleIdentifier, v9 = v4[1], !(bundleIdentifier | v9)) || objc_msgSend_isEqual_(bundleIdentifier, v7, v9)))
  {
    userPrivacySettings = self->_userPrivacySettings;
    v11 = v4[2];
    if (userPrivacySettings | v11)
    {
      isEqual = objc_msgSend_isEqual_(userPrivacySettings, v7, v11);
    }

    else
    {
      isEqual = 1;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4[1];
  v8 = v4;
  if (v5)
  {
    objc_msgSend_setBundleIdentifier_(self, v4, v5);
    v4 = v8;
  }

  userPrivacySettings = self->_userPrivacySettings;
  v7 = v4[2];
  if (userPrivacySettings)
  {
    if (v7)
    {
      objc_msgSend_mergeFrom_(userPrivacySettings, v4, v7);
    }
  }

  else if (v7)
  {
    objc_msgSend_setUserPrivacySettings_(self, v4, v7);
  }

  MEMORY[0x2821F96F8]();
}

@end