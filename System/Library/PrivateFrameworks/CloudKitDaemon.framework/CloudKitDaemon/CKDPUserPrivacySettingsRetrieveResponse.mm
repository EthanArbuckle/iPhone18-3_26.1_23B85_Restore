@interface CKDPUserPrivacySettingsRetrieveResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addApplicationBundle:(id)bundle;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPUserPrivacySettingsRetrieveResponse

- (void)addApplicationBundle:(id)bundle
{
  bundleCopy = bundle;
  applicationBundles = self->_applicationBundles;
  v8 = bundleCopy;
  if (!applicationBundles)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_applicationBundles;
    self->_applicationBundles = v6;

    bundleCopy = v8;
    applicationBundles = self->_applicationBundles;
  }

  objc_msgSend_addObject_(applicationBundles, bundleCopy, bundleCopy);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPUserPrivacySettingsRetrieveResponse;
  v4 = [(CKDPUserPrivacySettingsRetrieveResponse *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  userPrivacySettings = self->_userPrivacySettings;
  if (userPrivacySettings)
  {
    v8 = objc_msgSend_dictionaryRepresentation(userPrivacySettings, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"userPrivacySettings");
  }

  applicationBundles = self->_applicationBundles;
  if (applicationBundles)
  {
    objc_msgSend_setObject_forKey_(v6, v4, applicationBundles, @"applicationBundle");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_userPrivacySettings)
  {
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_applicationBundles;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v14, v18, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v12, &v14, v18, 16);
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  userPrivacySettings = self->_userPrivacySettings;
  if (userPrivacySettings)
  {
    objc_msgSend_setUserPrivacySettings_(toCopy, v4, userPrivacySettings);
  }

  if (objc_msgSend_applicationBundlesCount(self, v4, userPrivacySettings))
  {
    objc_msgSend_clearApplicationBundles(toCopy, v6, v7);
    v10 = objc_msgSend_applicationBundlesCount(self, v8, v9);
    if (v10)
    {
      v12 = v10;
      for (i = 0; i != v12; ++i)
      {
        v14 = objc_msgSend_applicationBundleAtIndex_(self, v11, i);
        objc_msgSend_addApplicationBundle_(toCopy, v15, v14);
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_userPrivacySettings, v11, zone);
  v13 = v10[2];
  v10[2] = v12;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = self->_applicationBundles;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v25, v29, 16);
  if (v16)
  {
    v18 = v16;
    v19 = *v26;
    do
    {
      v20 = 0;
      do
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v21 = objc_msgSend_copyWithZone_(*(*(&v25 + 1) + 8 * v20), v17, zone, v25);
        objc_msgSend_addApplicationBundle_(v10, v22, v21);

        ++v20;
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v25, v29, 16);
    }

    while (v18);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5) && ((userPrivacySettings = self->_userPrivacySettings, v9 = equalCopy[2], !(userPrivacySettings | v9)) || objc_msgSend_isEqual_(userPrivacySettings, v7, v9)))
  {
    applicationBundles = self->_applicationBundles;
    v11 = equalCopy[1];
    if (applicationBundles | v11)
    {
      isEqual = objc_msgSend_isEqual_(applicationBundles, v7, v11);
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

- (void)mergeFrom:(id)from
{
  v21 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  userPrivacySettings = self->_userPrivacySettings;
  v7 = *(fromCopy + 2);
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

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = *(fromCopy + 1);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v16, v20, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_addApplicationBundle_(self, v11, *(*(&v16 + 1) + 8 * i), v16);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v16, v20, 16);
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end