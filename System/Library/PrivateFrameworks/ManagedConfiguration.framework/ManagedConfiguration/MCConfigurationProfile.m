@interface MCConfigurationProfile
- (BOOL)isManagedByMDM;
- (__SecCertificate)copyCertificateFromPayloadWithUUID:(id)a3;
- (__SecCertificate)copyCertificateWithPersistentID:(id)a3;
- (id)_localizedPayloadSummaryByType:(id)a3;
- (id)_sortPayloads:(id)a3;
- (id)_subjectSummaryFromCertificate:(__SecCertificate *)a3;
- (id)description;
- (id)earliestCertificateExpiryDate;
- (id)localizedManagedPayloadSummaryByType;
- (id)localizedManagedProfileConsentTexts;
- (id)localizedPayloadSummaryByType;
- (id)managedPayloads;
- (id)payloadWithUUID:(id)a3;
- (id)serializedDictionary;
- (id)stubDictionary;
- (id)subjectSummaryFromCertificatePayloadWithUUID:(id)a3;
- (id)subjectSummaryFromCertificateWithPersistentID:(id)a3;
- (id)verboseDescription;
- (void)_addObjectsOfClass:(Class)a3 fromArray:(id)a4 toArray:(id)a5;
- (void)_sortPayloads;
- (void)replacePayloadWithUUID:(id)a3 withPayload:(id)a4;
@end

@implementation MCConfigurationProfile

- (void)_sortPayloads
{
  v3 = [(MCConfigurationProfile *)self _sortPayloads:self->_payloads];
  payloads = self->_payloads;
  self->_payloads = v3;

  MEMORY[0x1EEE66BB8]();
}

- (void)_addObjectsOfClass:(Class)a3 fromArray:(id)a4 toArray:(id)a5
{
  v10 = a4;
  v7 = a5;
  if ([v10 count] && objc_msgSend(v10, "count"))
  {
    v8 = 0;
    do
    {
      if (v8 >= [v10 count])
      {
        break;
      }

      v9 = [v10 objectAtIndex:v8];
      if (objc_opt_isKindOfClass() & 1) == 0 || objc_opt_class() == a3 && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        ++v8;
      }

      else
      {
        [v7 addObject:v9];
        [v10 removeObjectAtIndex:v8];
      }
    }

    while ([v10 count]);
  }
}

- (id)_sortPayloads:(id)a3
{
  v24[9] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
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

    v7 = [v4 mutableCopy];
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
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
    v16 = v4;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)managedPayloads
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithArray:self->_payloads];
  v4 = +[MCDependencyReader sharedReader];
  v5 = [(MCProfile *)self identifier];
  v6 = [v4 dependentsOfParent:v5 inDomain:@"ManagingProfileToManagedProfile"];

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
        v13 = [v12 payloads];
        [v3 addObjectsFromArray:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v14 = [(MCConfigurationProfile *)self _sortPayloads:v3];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)payloadWithUUID:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
        v10 = [v9 UUID];
        v11 = [v10 isEqualToString:v4];

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

- (id)_subjectSummaryFromCertificate:(__SecCertificate *)a3
{
  if (a3)
  {
    v4 = SecCertificateCopySubjectSummary(a3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (__SecCertificate)copyCertificateFromPayloadWithUUID:(id)a3
{
  v3 = [(MCConfigurationProfile *)self payloadWithUUID:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 copyCertificate];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)subjectSummaryFromCertificatePayloadWithUUID:(id)a3
{
  v4 = [(MCConfigurationProfile *)self copyCertificateFromPayloadWithUUID:a3];
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

- (__SecCertificate)copyCertificateWithPersistentID:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_payloads;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = (i + 1))
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
          v11 = [v10 certificatePersistentID];
          v12 = [v11 isEqualToData:v4];

          if (v12)
          {
            v6 = [v10 copyCertificate];

            goto LABEL_13;
          }
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)subjectSummaryFromCertificateWithPersistentID:(id)a3
{
  v4 = [(MCConfigurationProfile *)self copyCertificateWithPersistentID:a3];
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
  v3 = [(MCProfile *)&v17 verboseDescription];
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

          v10 = [*(*(&v13 + 1) + 8 * i) verboseDescription];
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

- (id)serializedDictionary
{
  v22 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = MCConfigurationProfile;
  v3 = [(MCProfile *)&v20 serializedDictionary];
  v4 = [v3 mutableCopy];

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

          v11 = [*(*(&v16 + 1) + 8 * i) serializedDictionary];
          [v5 addObject:v11];
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
    v13 = [(MCProfileServiceProfile *)OTAProfile serializedDictionary];
    [v4 setObject:v13 forKeyedSubscript:@"OTA Profile"];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)stubDictionary
{
  v23 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = MCConfigurationProfile;
  v3 = [(MCProfile *)&v21 stubDictionary];
  [v3 setObject:@"Configuration" forKeyedSubscript:@"PayloadType"];
  v4 = [(MCConfigurationProfile *)self isCloudProfileNum];
  [v3 setObject:v4 forKeyedSubscript:@"IsCloudProfile"];

  v5 = [(MCConfigurationProfile *)self isCloudLockedNum];
  [v3 setObject:v5 forKeyedSubscript:@"IsCloudLocked"];

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

        v12 = [*(*(&v17 + 1) + 8 * i) stubDictionary];
        [v6 addObject:v12];
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v9);
  }

  [v3 setObject:v6 forKey:@"PayloadContent"];
  OTAProfile = self->_OTAProfile;
  if (OTAProfile)
  {
    v14 = [(MCProfileServiceProfile *)OTAProfile stubDictionary];
    [v3 setObject:v14 forKey:@"OTAProfileStub"];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_localizedPayloadSummaryByType:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
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
  v3 = [(MCConfigurationProfile *)self payloads];
  v4 = [(MCConfigurationProfile *)self _localizedPayloadSummaryByType:v3];

  return v4;
}

- (id)localizedManagedPayloadSummaryByType
{
  v3 = [(MCConfigurationProfile *)self managedPayloads];
  v4 = [(MCConfigurationProfile *)self _localizedPayloadSummaryByType:v3];

  return v4;
}

- (id)localizedManagedProfileConsentTexts
{
  v27 = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = MCConfigurationProfile;
  v3 = [(MCProfile *)&v25 localizedManagedProfileConsentTexts];
  v4 = [v3 mutableCopy];

  v5 = +[MCDependencyReader sharedReader];
  v6 = [(MCProfile *)self identifier];
  v7 = [v5 dependentsOfParent:v6 inDomain:@"ManagingProfileToManagedProfile"];

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
        v14 = [(MCProfile *)self identifier];
        v15 = [v13 isEqualToString:v14];

        if ((v15 & 1) == 0)
        {
          v16 = [MCManifest installedProfileWithIdentifier:v13];
          v17 = [v16 localizedManagedProfileConsentTexts];
          [v4 addEntriesFromDictionary:v17];
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
  v27 = [MEMORY[0x1E695DF00] distantFuture];
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
          v9 = [v8 expiry];
          v10 = [v8 SMIMEEmailAddress];
          if (v10)
          {
            v11 = [v3 objectForKeyedSubscript:v10];
            if (!v11 || ([v9 timeIntervalSinceDate:v11], v12 > 0.0))
            {
              [v3 setObject:v9 forKeyedSubscript:v10];
            }
          }

          else
          {
            [v9 timeIntervalSinceDate:v23[5]];
            if (v13 < 0.0)
            {
              objc_storeStrong(v23 + 5, v9);
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

- (void)replacePayloadWithUUID:(id)a3 withPayload:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [(NSArray *)self->_payloads mutableCopy];
  if ([v7 count])
  {
    v8 = 0;
    v9 = 1;
    while (1)
    {
      v10 = [v7 objectAtIndexedSubscript:v8];
      v11 = [v10 UUID];
      v12 = [v11 isEqualToString:v16];

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

    [v7 setObject:v6 atIndexedSubscript:v8];
  }

LABEL_7:
  v14 = [v7 copy];
  payloads = self->_payloads;
  self->_payloads = v14;
}

@end