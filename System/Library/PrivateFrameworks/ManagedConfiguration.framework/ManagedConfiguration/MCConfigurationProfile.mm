@interface MCConfigurationProfile
- (BOOL)isManagedByMDM;
- (__SecCertificate)copyCertificateFromPayloadWithUUID:(id)d;
- (__SecCertificate)copyCertificateWithPersistentID:(id)d;
- (id)_localizedPayloadSummaryByType:(id)type;
- (id)_sortPayloads:(id)payloads;
- (id)_subjectSummaryFromCertificate:(__SecCertificate *)certificate;
- (id)description;
- (id)earliestCertificateExpiryDate;
- (id)localizedManagedPayloadSummaryByType;
- (id)localizedManagedProfileConsentTexts;
- (id)localizedPayloadSummaryByType;
- (id)managedPayloads;
- (id)payloadWithUUID:(id)d;
- (id)serializedDictionary;
- (id)stubDictionary;
- (id)subjectSummaryFromCertificatePayloadWithUUID:(id)d;
- (id)subjectSummaryFromCertificateWithPersistentID:(id)d;
- (id)verboseDescription;
- (void)_addObjectsOfClass:(Class)class fromArray:(id)array toArray:(id)toArray;
- (void)_sortPayloads;
- (void)replacePayloadWithUUID:(id)d withPayload:(id)payload;
@end

@implementation MCConfigurationProfile

- (void)_sortPayloads
{
  v3 = [(MCConfigurationProfile *)self _sortPayloads:self->_payloads];
  payloads = self->_payloads;
  self->_payloads = v3;

  MEMORY[0x1EEE66BB8]();
}

- (void)_addObjectsOfClass:(Class)class fromArray:(id)array toArray:(id)toArray
{
  arrayCopy = array;
  toArrayCopy = toArray;
  if ([arrayCopy count] && objc_msgSend(arrayCopy, "count"))
  {
    v8 = 0;
    do
    {
      if (v8 >= [arrayCopy count])
      {
        break;
      }

      v9 = [arrayCopy objectAtIndex:v8];
      if (objc_opt_isKindOfClass() & 1) == 0 || objc_opt_class() == class && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        ++v8;
      }

      else
      {
        [toArrayCopy addObject:v9];
        [arrayCopy removeObjectAtIndex:v8];
      }
    }

    while ([arrayCopy count]);
  }
}

- (id)_sortPayloads:(id)payloads
{
  v24[9] = *MEMORY[0x1E69E9840];
  payloadsCopy = payloads;
  if ([payloadsCopy count])
  {
    if (!_sortPayloads__classSortOrder)
    {
      v24[0] = objc_opt_class();
      v24[1] = objc_opt_class();
      v24[2] = objc_opt_class();
      v24[3] = objc_opt_class();
      v24[4] = objc_opt_class();
      v24[5] = objc_opt_class();
      v24[6] = objc_opt_class();
      v24[7] = objc_opt_class();
      v24[8] = objc_opt_class();
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:9];
      v6 = _sortPayloads__classSortOrder;
      _sortPayloads__classSortOrder = v5;
    }

    v7 = [payloadsCopy mutableCopy];
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(payloadsCopy, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = _sortPayloads__classSortOrder;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [(MCConfigurationProfile *)self _addObjectsOfClass:*(*(&v19 + 1) + 8 * i) fromArray:v7 toArray:v8, v19];
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    while ([v7 count])
    {
      v14 = [v7 objectAtIndex:0];
      v15 = objc_opt_class();

      [(MCConfigurationProfile *)self _addObjectsOfClass:v15 fromArray:v7 toArray:v8];
    }

    v16 = [v8 copy];
  }

  else
  {
    v16 = payloadsCopy;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)managedPayloads
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithArray:self->_payloads];
  v4 = +[MCDependencyReader sharedReader];
  identifier = [(MCProfile *)self identifier];
  v6 = [v4 dependentsOfParent:identifier inDomain:@"ManagingProfileToManagedProfile"];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [MCManifest installedProfileWithIdentifier:*(*(&v17 + 1) + 8 * i), v17];
        payloads = [v12 payloads];
        [v3 addObjectsFromArray:payloads];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v14 = [(MCConfigurationProfile *)self _sortPayloads:v3];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)payloadWithUUID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_payloads;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        uUID = [v9 UUID];
        v11 = [uUID isEqualToString:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_subjectSummaryFromCertificate:(__SecCertificate *)certificate
{
  if (certificate)
  {
    v4 = SecCertificateCopySubjectSummary(certificate);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (__SecCertificate)copyCertificateFromPayloadWithUUID:(id)d
{
  v3 = [(MCConfigurationProfile *)self payloadWithUUID:d];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    copyCertificate = [v3 copyCertificate];
  }

  else
  {
    copyCertificate = 0;
  }

  return copyCertificate;
}

- (id)subjectSummaryFromCertificatePayloadWithUUID:(id)d
{
  v4 = [(MCConfigurationProfile *)self copyCertificateFromPayloadWithUUID:d];
  if (v4)
  {
    v5 = v4;
    v6 = [(MCConfigurationProfile *)self _subjectSummaryFromCertificate:v4];
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (__SecCertificate)copyCertificateWithPersistentID:(id)d
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_payloads;
  copyCertificate = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (copyCertificate)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != copyCertificate; i = (i + 1))
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          certificatePersistentID = [v10 certificatePersistentID];
          v12 = [certificatePersistentID isEqualToData:dCopy];

          if (v12)
          {
            copyCertificate = [v10 copyCertificate];

            goto LABEL_13;
          }
        }
      }

      copyCertificate = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (copyCertificate)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v13 = *MEMORY[0x1E69E9840];
  return copyCertificate;
}

- (id)subjectSummaryFromCertificateWithPersistentID:(id)d
{
  v4 = [(MCConfigurationProfile *)self copyCertificateWithPersistentID:d];
  if (v4)
  {
    v5 = v4;
    v6 = [(MCConfigurationProfile *)self _subjectSummaryFromCertificate:v4];
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isManagedByMDM
{
  if (self->_isMDMProfile)
  {
    return 1;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = MCConfigurationProfile;
  return [(MCProfile *)&v5 isManagedByMDM];
}

- (id)description
{
  v19 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = MCConfigurationProfile;
  v3 = [(MCProfile *)&v17 description];
  v4 = [v3 mutableCopy];

  if ([(NSArray *)self->_payloads count])
  {
    [v4 appendFormat:@"\nPayloads:\n"];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_payloads;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v13 + 1) + 8 * i) description];
          [v4 appendFormat:@"%@\n", v10];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v7);
    }
  }

  if (self->_isCloudProfile)
  {
    [v4 appendFormat:@"Is could profile: Yes"];
  }

  if (self->_isCloudLocked)
  {
    [v4 appendFormat:@"Is cloud locked : Yes"];
  }

  if (self->_OTAProfile)
  {
    [v4 appendFormat:@"OTA profile: %@\n", self->_OTAProfile];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)verboseDescription
{
  v19 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = MCConfigurationProfile;
  verboseDescription = [(MCProfile *)&v17 verboseDescription];
  v4 = [verboseDescription mutableCopy];

  if ([(NSArray *)self->_payloads count])
  {
    [v4 appendFormat:@"\nPayloads:\n"];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_payloads;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          verboseDescription2 = [*(*(&v13 + 1) + 8 * i) verboseDescription];
          [v4 appendFormat:@"%@\n", verboseDescription2];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v7);
    }
  }

  if (self->_isCloudProfile)
  {
    [v4 appendFormat:@"Is could profile: Yes"];
  }

  if (self->_isCloudLocked)
  {
    [v4 appendFormat:@"Is cloud locked : Yes"];
  }

  if (self->_OTAProfile)
  {
    [v4 appendFormat:@"OTA profile: %@\n", self->_OTAProfile];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)serializedDictionary
{
  v22 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = MCConfigurationProfile;
  serializedDictionary = [(MCProfile *)&v20 serializedDictionary];
  v4 = [serializedDictionary mutableCopy];

  if ([(NSArray *)self->_payloads count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_payloads, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = self->_payloads;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          serializedDictionary2 = [*(*(&v16 + 1) + 8 * i) serializedDictionary];
          [v5 addObject:serializedDictionary2];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v8);
    }

    [v4 setObject:v5 forKeyedSubscript:@"Payloads"];
  }

  if (self->_isCloudProfile)
  {
    [v4 setObject:&unk_1F1AA54B8 forKeyedSubscript:@"Cloud Profile"];
  }

  if (self->_isCloudLocked)
  {
    [v4 setObject:&unk_1F1AA54B8 forKeyedSubscript:@"Cloud Locked"];
  }

  OTAProfile = self->_OTAProfile;
  if (OTAProfile)
  {
    serializedDictionary3 = [(MCProfileServiceProfile *)OTAProfile serializedDictionary];
    [v4 setObject:serializedDictionary3 forKeyedSubscript:@"OTA Profile"];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)stubDictionary
{
  v23 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = MCConfigurationProfile;
  stubDictionary = [(MCProfile *)&v21 stubDictionary];
  [stubDictionary setObject:@"Configuration" forKeyedSubscript:@"PayloadType"];
  isCloudProfileNum = [(MCConfigurationProfile *)self isCloudProfileNum];
  [stubDictionary setObject:isCloudProfileNum forKeyedSubscript:@"IsCloudProfile"];

  isCloudLockedNum = [(MCConfigurationProfile *)self isCloudLockedNum];
  [stubDictionary setObject:isCloudLockedNum forKeyedSubscript:@"IsCloudLocked"];

  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_payloads, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = self->_payloads;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        stubDictionary2 = [*(*(&v17 + 1) + 8 * i) stubDictionary];
        [v6 addObject:stubDictionary2];
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v9);
  }

  [stubDictionary setObject:v6 forKey:@"PayloadContent"];
  OTAProfile = self->_OTAProfile;
  if (OTAProfile)
  {
    stubDictionary3 = [(MCProfileServiceProfile *)OTAProfile stubDictionary];
    [stubDictionary setObject:stubDictionary3 forKey:@"OTAProfileStub"];
  }

  v15 = *MEMORY[0x1E69E9840];

  return stubDictionary;
}

- (id)_localizedPayloadSummaryByType:(id)type
{
  v23 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(typeCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = typeCopy;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  v7 = v5;
  if (!v6)
  {
    goto LABEL_18;
  }

  v8 = v6;
  v9 = 0;
  v10 = 0;
  v11 = *v19;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v19 != v11)
      {
        objc_enumerationMutation(v5);
      }

      v13 = *(*(&v18 + 1) + 8 * i);
      v14 = objc_opt_class();
      if (v14 != objc_opt_class())
      {
        if (v10 == v14)
        {
          ++v9;
        }

        else
        {
          if (v10 && v9)
          {
            v15 = [v10 localizedDescriptionForPayloadCount:{v9, v18}];
            [v4 addObject:v15];
          }

          v9 = 1;
          v10 = v14;
        }
      }
    }

    v8 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v8);

  if (v10 && v9)
  {
    v7 = [v10 localizedDescriptionForPayloadCount:v9];
    [v4 addObject:v7];
LABEL_18:
  }

  v16 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)localizedPayloadSummaryByType
{
  payloads = [(MCConfigurationProfile *)self payloads];
  v4 = [(MCConfigurationProfile *)self _localizedPayloadSummaryByType:payloads];

  return v4;
}

- (id)localizedManagedPayloadSummaryByType
{
  managedPayloads = [(MCConfigurationProfile *)self managedPayloads];
  v4 = [(MCConfigurationProfile *)self _localizedPayloadSummaryByType:managedPayloads];

  return v4;
}

- (id)localizedManagedProfileConsentTexts
{
  v27 = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = MCConfigurationProfile;
  localizedManagedProfileConsentTexts = [(MCProfile *)&v25 localizedManagedProfileConsentTexts];
  v4 = [localizedManagedProfileConsentTexts mutableCopy];

  v5 = +[MCDependencyReader sharedReader];
  identifier = [(MCProfile *)self identifier];
  v7 = [v5 dependentsOfParent:identifier inDomain:@"ManagingProfileToManagedProfile"];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        identifier2 = [(MCProfile *)self identifier];
        v15 = [v13 isEqualToString:identifier2];

        if ((v15 & 1) == 0)
        {
          v16 = [MCManifest installedProfileWithIdentifier:v13];
          localizedManagedProfileConsentTexts2 = [v16 localizedManagedProfileConsentTexts];
          [v4 addEntriesFromDictionary:localizedManagedProfileConsentTexts2];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v10);
  }

  v18 = [v4 copy];
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)earliestCertificateExpiryDate
{
  v33 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__4;
  v26 = __Block_byref_object_dispose__4;
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_payloads;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v18 objects:v32 count:16];
  if (v5)
  {
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          expiry = [v8 expiry];
          sMIMEEmailAddress = [v8 SMIMEEmailAddress];
          if (sMIMEEmailAddress)
          {
            v11 = [v3 objectForKeyedSubscript:sMIMEEmailAddress];
            if (!v11 || ([expiry timeIntervalSinceDate:v11], v12 > 0.0))
            {
              [v3 setObject:expiry forKeyedSubscript:sMIMEEmailAddress];
            }
          }

          else
          {
            [expiry timeIntervalSinceDate:v23[5]];
            if (v13 < 0.0)
            {
              objc_storeStrong(v23 + 5, expiry);
              *(v29 + 24) = 1;
            }
          }
        }
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v18 objects:v32 count:16];
    }

    while (v5);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __55__MCConfigurationProfile_earliestCertificateExpiryDate__block_invoke;
  v17[3] = &unk_1E77D1F48;
  v17[4] = &v22;
  v17[5] = &v28;
  [v3 enumerateKeysAndObjectsUsingBlock:v17];
  if (*(v29 + 24) == 1)
  {
    v14 = v23[5];
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

void __55__MCConfigurationProfile_earliestCertificateExpiryDate__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [v6 timeIntervalSinceDate:*(*(*(a1 + 32) + 8) + 40)];
  if (v5 < 0.0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)replacePayloadWithUUID:(id)d withPayload:(id)payload
{
  dCopy = d;
  payloadCopy = payload;
  v7 = [(NSArray *)self->_payloads mutableCopy];
  if ([v7 count])
  {
    v8 = 0;
    v9 = 1;
    while (1)
    {
      v10 = [v7 objectAtIndexedSubscript:v8];
      uUID = [v10 UUID];
      v12 = [uUID isEqualToString:dCopy];

      if (v12)
      {
        break;
      }

      v8 = v9;
      if ([v7 count] <= v9++)
      {
        goto LABEL_7;
      }
    }

    [v7 setObject:payloadCopy atIndexedSubscript:v8];
  }

LABEL_7:
  v14 = [v7 copy];
  payloads = self->_payloads;
  self->_payloads = v14;
}

@end