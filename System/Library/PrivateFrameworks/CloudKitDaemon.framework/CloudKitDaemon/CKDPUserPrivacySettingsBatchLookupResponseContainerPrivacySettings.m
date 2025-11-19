@interface CKDPUserPrivacySettingsBatchLookupResponseContainerPrivacySettings
- (BOOL)isEqual:(id)a3;
- (id)applicationContainerEnvironmentAsString:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsApplicationContainerEnvironment:(id)a3;
- (int)applicationContainerEnvironment;
- (unint64_t)hash;
- (void)addApplicationBundle:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPUserPrivacySettingsBatchLookupResponseContainerPrivacySettings

- (int)applicationContainerEnvironment
{
  if (*&self->_has)
  {
    return self->_applicationContainerEnvironment;
  }

  else
  {
    return 2;
  }
}

- (id)applicationContainerEnvironmentAsString:(int)a3
{
  if (a3 == 1)
  {
    v4 = @"production";
  }

  else if (a3 == 2)
  {
    v4 = @"sandbox";
  }

  else
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);
  }

  return v4;
}

- (int)StringAsApplicationContainerEnvironment:(id)a3
{
  v3 = a3;
  v6 = 1;
  if ((objc_msgSend_isEqualToString_(v3, v4, @"production") & 1) == 0)
  {
    if (objc_msgSend_isEqualToString_(v3, v5, @"sandbox"))
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

- (void)addApplicationBundle:(id)a3
{
  v4 = a3;
  applicationBundles = self->_applicationBundles;
  v8 = v4;
  if (!applicationBundles)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_applicationBundles;
    self->_applicationBundles = v6;

    v4 = v8;
    applicationBundles = self->_applicationBundles;
  }

  objc_msgSend_addObject_(applicationBundles, v4, v4);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPUserPrivacySettingsBatchLookupResponseContainerPrivacySettings;
  v4 = [(CKDPUserPrivacySettingsBatchLookupResponseContainerPrivacySettings *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  applicationContainer = self->_applicationContainer;
  if (applicationContainer)
  {
    objc_msgSend_setObject_forKey_(v4, v5, applicationContainer, @"applicationContainer");
  }

  if (*&self->_has)
  {
    applicationContainerEnvironment = self->_applicationContainerEnvironment;
    if (applicationContainerEnvironment == 1)
    {
      v9 = @"production";
      objc_msgSend_setObject_forKey_(v6, v5, @"production", @"applicationContainerEnvironment");
    }

    else if (applicationContainerEnvironment == 2)
    {
      v9 = @"sandbox";
      objc_msgSend_setObject_forKey_(v6, v5, @"sandbox", @"applicationContainerEnvironment");
    }

    else
    {
      v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"(unknown: %i)", self->_applicationContainerEnvironment);
      objc_msgSend_setObject_forKey_(v6, v10, v9, @"applicationContainerEnvironment");
    }
  }

  applicationBundles = self->_applicationBundles;
  if (applicationBundles)
  {
    objc_msgSend_setObject_forKey_(v6, v5, applicationBundles, @"applicationBundle");
  }

  userPrivacySettings = self->_userPrivacySettings;
  if (userPrivacySettings)
  {
    v13 = objc_msgSend_dictionaryRepresentation(userPrivacySettings, v5, applicationBundles);
    objc_msgSend_setObject_forKey_(v6, v14, v13, @"userPrivacySettings");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_applicationContainer)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    applicationContainerEnvironment = self->_applicationContainerEnvironment;
    PBDataWriterWriteInt32Field();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_applicationBundles;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v15, v19, 16);
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        PBDataWriterWriteStringField();
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v13, &v15, v19, 16);
    }

    while (v9);
  }

  if (self->_userPrivacySettings)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  applicationContainer = self->_applicationContainer;
  v17 = v4;
  if (applicationContainer)
  {
    objc_msgSend_setApplicationContainer_(v4, v5, applicationContainer);
    v4 = v17;
  }

  if (*&self->_has)
  {
    *(v4 + 6) = self->_applicationContainerEnvironment;
    *(v4 + 40) |= 1u;
  }

  if (objc_msgSend_applicationBundlesCount(self, v5, applicationContainer))
  {
    objc_msgSend_clearApplicationBundles(v17, v7, v8);
    v11 = objc_msgSend_applicationBundlesCount(self, v9, v10);
    if (v11)
    {
      v12 = v11;
      for (i = 0; i != v12; ++i)
      {
        v14 = objc_msgSend_applicationBundleAtIndex_(self, v7, i);
        objc_msgSend_addApplicationBundle_(v17, v15, v14);
      }
    }
  }

  userPrivacySettings = self->_userPrivacySettings;
  if (userPrivacySettings)
  {
    objc_msgSend_setUserPrivacySettings_(v17, v7, userPrivacySettings);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_applicationContainer, v11, a3);
  v13 = *(v10 + 16);
  *(v10 + 16) = v12;

  if (*&self->_has)
  {
    *(v10 + 24) = self->_applicationContainerEnvironment;
    *(v10 + 40) |= 1u;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = self->_applicationBundles;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v28, v32, 16);
  if (v16)
  {
    v18 = v16;
    v19 = *v29;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v21 = objc_msgSend_copyWithZone_(*(*(&v28 + 1) + 8 * i), v17, a3, v28);
        objc_msgSend_addApplicationBundle_(v10, v22, v21);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v28, v32, 16);
    }

    while (v18);
  }

  v24 = objc_msgSend_copyWithZone_(self->_userPrivacySettings, v23, a3);
  v25 = *(v10 + 32);
  *(v10 + 32) = v24;

  v26 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_13;
  }

  applicationContainer = self->_applicationContainer;
  v9 = v4[2];
  if (applicationContainer | v9)
  {
    if (!objc_msgSend_isEqual_(applicationContainer, v7, v9))
    {
      goto LABEL_13;
    }
  }

  v10 = *(v4 + 40);
  if (*&self->_has)
  {
    if ((v4[5] & 1) == 0 || self->_applicationContainerEnvironment != *(v4 + 6))
    {
      goto LABEL_13;
    }
  }

  else if (v4[5])
  {
LABEL_13:
    isEqual = 0;
    goto LABEL_14;
  }

  applicationBundles = self->_applicationBundles;
  v12 = v4[1];
  if (applicationBundles | v12 && !objc_msgSend_isEqual_(applicationBundles, v7, v12))
  {
    goto LABEL_13;
  }

  userPrivacySettings = self->_userPrivacySettings;
  v14 = v4[4];
  if (userPrivacySettings | v14)
  {
    isEqual = objc_msgSend_isEqual_(userPrivacySettings, v7, v14);
  }

  else
  {
    isEqual = 1;
  }

LABEL_14:

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_applicationContainer, a2, v2);
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_applicationContainerEnvironment;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 ^ v4;
  v9 = objc_msgSend_hash(self->_applicationBundles, v5, v6);
  return v8 ^ v9 ^ objc_msgSend_hash(self->_userPrivacySettings, v10, v11);
}

- (void)mergeFrom:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *(v5 + 2);
  if (v6)
  {
    objc_msgSend_setApplicationContainer_(self, v4, v6);
  }

  if (*(v5 + 40))
  {
    self->_applicationContainerEnvironment = *(v5 + 6);
    *&self->_has |= 1u;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = *(v5 + 1);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v18, v22, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v7);
        }

        objc_msgSend_addApplicationBundle_(self, v10, *(*(&v18 + 1) + 8 * i), v18);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v18, v22, 16);
    }

    while (v11);
  }

  userPrivacySettings = self->_userPrivacySettings;
  v16 = *(v5 + 4);
  if (userPrivacySettings)
  {
    if (v16)
    {
      objc_msgSend_mergeFrom_(userPrivacySettings, v14, v16);
    }
  }

  else if (v16)
  {
    objc_msgSend_setUserPrivacySettings_(self, v14, v16);
  }

  v17 = *MEMORY[0x277D85DE8];
}

@end