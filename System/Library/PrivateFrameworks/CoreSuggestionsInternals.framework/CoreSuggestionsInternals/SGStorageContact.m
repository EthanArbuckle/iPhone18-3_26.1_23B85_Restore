@interface SGStorageContact
+ (id)contactFromContactEntity:(id)a3;
+ (id)contactWithMasterEntityId:(int64_t)a3;
+ (id)mergeAll:(id)a3;
- (BOOL)hasProfileFromInteraction;
- (BOOL)hasProfileFromTextMessage;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToStorageContact:(id)a3;
- (NSString)name;
- (SGStorageContact)init;
- (id)allNames;
- (id)bestProfile;
- (id)convertToContact:(id)a3 sourceEntity:(id)a4 enrichments:(id)a5;
- (id)description;
- (id)loadAddressDetailsFrom:(id)a3;
- (id)loadAllDetailsFrom:(id)a3;
- (id)loadBirthdayDetailsFrom:(id)a3;
- (id)loadEmailAddressDetailsFrom:(id)a3;
- (id)loadPhoneDetailsFrom:(id)a3;
- (void)merge:(id)a3;
@end

@implementation SGStorageContact

- (BOOL)hasProfileFromTextMessage
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D01FA0] fromTextMessage];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_profiles;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) tags];
        v9 = [v8 containsObject:v3];

        if (v9)
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)hasProfileFromInteraction
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D01FA0] fromInteraction];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_profiles;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) tags];
        v9 = [v8 containsObject:v3];

        if (v9)
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)bestProfile
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(SGStorageContact *)self name];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = self->_profiles;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v21;
    v9 = -INFINITY;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 title];
        v13 = [v12 isEqualToString:v3];

        if (v13)
        {
          v17 = v11;

          v7 = v17;
          goto LABEL_14;
        }

        [v11 creationTimestamp];
        if (v14 > v9)
        {
          v15 = v14;
          v16 = v11;

          v9 = v15;
          v7 = v16;
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_14:

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)convertToContact:(id)a3 sourceEntity:(id)a4 enrichments:(id)a5
{
  v96 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v7;
  v10 = v8;
  v11 = a5;
  v82 = [MEMORY[0x277D02070] originWithType:0 sourceKey:0 externalKey:0 fromForwardedMessage:0];
  v85 = objc_opt_new();
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v90 objects:v95 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v91;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v91 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v90 + 1) + 8 * i);
        v18 = [v17 recordId];

        if (v18)
        {
          v19 = MEMORY[0x277D02070];
          v20 = [v17 duplicateKey];
          v21 = [v19 originForDuplicateKey:v20 entity:v17 parent:v10 store:v9];
          v22 = [v17 recordId];
          [v85 setObject:v21 forKeyedSubscript:v22];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v90 objects:v95 count:16];
    }

    while (v14);
  }

  v23 = [v10 recordId];

  if (v23)
  {
    v24 = MEMORY[0x277D02070];
    v25 = [v10 duplicateKey];
    v26 = [v24 originForDuplicateKey:v25 entity:v10 parent:0 store:v9];
    v27 = [v10 recordId];
    [v85 setObject:v26 forKeyedSubscript:v27];
  }

  v28 = [(SGStorageContact *)self loadAllDetailsFrom:v9];
  v29 = [v28 phoneNumbers];
  v81 = sgMapAndFilter();

  v30 = [v28 postalAddresses];
  v80 = sgMapAndFilter();

  v31 = [v28 emailAddresses];
  v79 = sgMapAndFilter();

  v32 = [v28 socialProfiles];
  v78 = sgMapAndFilter();

  v33 = [v28 birthday];

  if (v33)
  {
    v76 = MEMORY[0x277D01F78];
    v74 = [v28 birthday];
    v72 = [v74 value];
    v34 = SGDateComponentsFromNormalizeBirthday(v72);
    v70 = [v28 birthday];
    v35 = [v70 label];
    v36 = [v28 birthday];
    v37 = [v36 extractionInfo];
    v38 = [v28 birthday];
    v39 = [v38 recordId];
    v77 = [v76 dateComponents:v34 label:v35 extractionInfo:v37 withRecordId:v39];
  }

  else
  {
    v77 = 0;
  }

  v40 = [v28 photoPath];

  if (v40)
  {
    v41 = [v28 photoPath];
    v75 = [v41 value];
  }

  else
  {
    v75 = 0;
  }

  v42 = [(SGStorageContact *)self bestProfile];
  v43 = [MEMORY[0x277D020C8] recordIdForContactWithRowId:{objc_msgSend(v42, "masterEntityId")}];
  v44 = [v42 title];
  v45 = [v85 objectForKeyedSubscript:v43];
  v46 = v45;
  if (v45)
  {
    v47 = v45;
  }

  else
  {
    v47 = v82;
  }

  v71 = v42;
  v48 = [v42 extractionInfo];
  v49 = [SGNames sgNameFromString:v44 origin:v47 recordId:v43 extractionInfo:v48];

  v67 = v49;
  v68 = v43;
  v50 = [MEMORY[0x277D01F60] contactWithId:v43 name:v49 emailAddresses:v79 phones:v81 postalAddresses:v80 socialProfiles:v78 birthday:v77 photoPath:v75];
  if ([(SGStorageContact *)self hasProfileFromInteraction])
  {
    [v50 setSignificance:1];
    [v50 setSignificanceOrigin:1];
  }

  v69 = v50;
  v73 = v28;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  obja = v12;
  v51 = [obja countByEnumeratingWithState:&v86 objects:v94 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = 0;
    v54 = *v87;
    do
    {
      for (j = 0; j != v52; ++j)
      {
        if (*v87 != v54)
        {
          objc_enumerationMutation(obja);
        }

        v56 = *(*(&v86 + 1) + 8 * j);
        v57 = [v56 extractionInfo];
        if ([v57 extractionType] == 64)
        {
          v58 = [v56 duplicateKey];
          v59 = v10;
          v60 = v9;
          v61 = [v58 entityType] == 4;

          v53 = v53 | v61;
          v9 = v60;
          v10 = v59;
        }

        else
        {
        }

        v62 = [v56 extractionInfo];
        if ([v62 extractionType] == 64)
        {
          v63 = [v56 duplicateKey];
          v64 = [v63 entityType];

          if (v64 == 23)
          {
            v53 = v53 | 2;
          }

          else
          {
            v53 = v53;
          }
        }

        else
        {
        }
      }

      v52 = [obja countByEnumeratingWithState:&v86 objects:v94 count:16];
    }

    while (v52);
  }

  else
  {
    v53 = 0;
  }

  [v69 setUpdatedFields:v53];
  v65 = *MEMORY[0x277D85DE8];

  return v69;
}

id __62__SGStorageContact_convertToContact_sourceEntity_enrichments___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SGSocialProfileDetails alloc];
  v4 = [v2 value];
  v5 = [(SGSocialProfileDetails *)v3 initWithSerialized:v4];

  if (v5)
  {
    v17 = objc_alloc(MEMORY[0x277D020F0]);
    v18 = [(SGSocialProfileDetails *)v5 username];
    v16 = [(SGSocialProfileDetails *)v5 userIdentifier];
    v6 = [(SGSocialProfileDetails *)v5 bundleIdentifier];
    v7 = [(SGSocialProfileDetails *)v5 displayName];
    v8 = [(SGSocialProfileDetails *)v5 service];
    v9 = [(SGSocialProfileDetails *)v5 teamIdentifier];
    v10 = [v2 label];
    v11 = [v2 extractionInfo];
    v12 = [v2 recordId];
    v13 = v8;
    v14 = [v17 initWithUsername:v18 userIdentifier:v16 bundleIdentifier:v6 displayName:v7 service:v8 teamIdentifier:v9 label:v10 extractionInfo:v11 recordId:v12];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id __62__SGStorageContact_convertToContact_sourceEntity_enrichments___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D01F90];
  v3 = a2;
  v4 = [v3 value];
  v5 = [v3 label];
  v6 = [v3 extractionInfo];
  v7 = [v3 recordId];

  v8 = [v2 emailAddress:v4 label:v5 extractionInfo:v6 withRecordId:v7];

  return v8;
}

id __62__SGStorageContact_convertToContact_sourceEntity_enrichments___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 value];
  v4 = SGPostalAddressParse(v3);

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __62__SGStorageContact_convertToContact_sourceEntity_enrichments___block_invoke_3;
  v19[3] = &unk_27894C3D8;
  v19[4] = &v20;
  [v4 enumerateKeysAndObjectsUsingBlock:v19];
  if (*(v21 + 24) == 1)
  {
    [v4 objectForKeyedSubscript:@"Street"];
  }

  else
  {
    [v2 value];
  }
  v5 = ;
  v6 = MEMORY[0x277D02090];
  v7 = [v4 objectForKeyedSubscript:@"City"];
  v8 = [v4 objectForKeyedSubscript:@"State"];
  v9 = [v4 objectForKeyedSubscript:@"ZIP"];
  v10 = [v4 objectForKeyedSubscript:@"Country"];
  v11 = [v6 components:v5 city:v7 state:v8 postalCode:v9 country:v10];

  v12 = MEMORY[0x277D02088];
  v13 = [v2 value];
  v14 = [v2 label];
  v15 = [v2 extractionInfo];
  v16 = [v2 recordId];
  v17 = [v12 postalAddress:v13 components:v11 label:v14 extractionInfo:v15 recordId:v16];

  _Block_object_dispose(&v20, 8);

  return v17;
}

uint64_t __62__SGStorageContact_convertToContact_sourceEntity_enrichments___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, BOOL *a4)
{
  result = [a3 length];
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  *a4 = result != 0;
  return result;
}

id __62__SGStorageContact_convertToContact_sourceEntity_enrichments___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D02080];
  v3 = a2;
  v4 = [v3 value];
  v5 = [v3 label];
  v6 = [v3 extractionInfo];
  v7 = [v3 recordId];

  v8 = [v2 phoneNumber:v4 label:v5 extractionInfo:v6 recordId:v7];

  return v8;
}

- (id)loadBirthdayDetailsFrom:(id)a3
{
  v3 = [(SGStorageContact *)self loadAllDetailsFrom:a3];
  v4 = [v3 birthday];

  return v4;
}

- (id)loadEmailAddressDetailsFrom:(id)a3
{
  v3 = [(SGStorageContact *)self loadAllDetailsFrom:a3];
  v4 = [v3 emailAddresses];

  return v4;
}

- (id)loadAddressDetailsFrom:(id)a3
{
  v3 = [(SGStorageContact *)self loadAllDetailsFrom:a3];
  v4 = [v3 postalAddresses];

  return v4;
}

- (id)loadPhoneDetailsFrom:(id)a3
{
  v3 = [(SGStorageContact *)self loadAllDetailsFrom:a3];
  v4 = [v3 phoneNumbers];

  return v4;
}

- (id)loadAllDetailsFrom:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SGStorageContact *)self internalDetectedDetails];
  if (!v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableSet count](self->_profiles, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v7 = self->_profiles;
    v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v30;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v29 + 1) + 8 * i) recordId];
          v13 = [v4 loadAllContactDetailsForRecordId:v12];
          [v6 addObjectsFromArray:v13];
        }

        v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v9);
    }

    v14 = [SGDeduper splitContactDetailsByType:v6];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __39__SGStorageContact_loadAllDetailsFrom___block_invoke;
    v27[3] = &unk_27894C370;
    v28 = v14;
    v15 = v14;
    v16 = MEMORY[0x2383809F0](v27);
    v5 = objc_opt_new();
    v17 = v16[2](v16, 2);
    [v5 setEmailAddresses:v17];

    v18 = v16[2](v16, 1);
    [v5 setPostalAddresses:v18];

    v19 = v16[2](v16, 0);
    [v5 setPhoneNumbers:v19];

    v20 = v16[2](v16, 4);
    [v5 setSocialProfiles:v20];

    v21 = v16[2](v16, 6);
    v22 = [v21 firstObject];
    [v5 setBirthday:v22];

    v23 = v16[2](v16, 5);
    v24 = [v23 firstObject];
    [v5 setPhotoPath:v24];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v5;
}

id __39__SGStorageContact_loadAllDetailsFrom___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = [SGDeduper dedupeContactDetails:v4];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (void)merge:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![(SGStorageContact *)self canMerge:v5])
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"SGStorageContact.m" lineNumber:149 description:@"Merging with a contact that isn't mergable"];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5[1];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(SGStorageContact *)self addProfile:*(*(&v13 + 1) + 8 * v10++), v13];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (NSString)name
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableSet count](self->_profiles, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_profiles;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 title];

        if (v10)
        {
          v11 = [v9 title];
          v12 = normalizeName(v11);
          [v3 addObject:v12];
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v13 = [SGNames bestName:v3];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)allNames
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{-[NSMutableSet count](self->_profiles, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_profiles;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 title];

        if (v10)
        {
          v11 = [v9 title];
          v12 = normalizeName(v11);
          [v3 addObject:v12];
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(SGStorageContact *)self name];
  v5 = [v3 initWithFormat:@"<SGStorageContact: %@ - %lu profile(s)>", v4, -[NSMutableSet count](self->_profiles, "count")];

  return v5;
}

- (BOOL)isEqualToStorageContact:(id)a3
{
  v4 = a3;
  masterEntityId = self->_masterEntityId;
  if (masterEntityId == [v4 masterEntityId])
  {
    v6 = self->_profiles;
    v7 = v6;
    if (v6 == v4[1])
    {
      v8 = 1;
    }

    else
    {
      v8 = [(NSMutableSet *)v6 isEqual:?];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGStorageContact *)self isEqualToStorageContact:v5];
  }

  return v6;
}

- (SGStorageContact)init
{
  v6.receiver = self;
  v6.super_class = SGStorageContact;
  v2 = [(SGStorageContact *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    profiles = v2->_profiles;
    v2->_profiles = v3;
  }

  return v2;
}

+ (id)mergeAll:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v10 = v4;
        v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v20;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v20 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v19 + 1) + 8 * j);
              if ([v15 canMerge:v9])
              {
                [v15 merge:v9];

                goto LABEL_16;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        [v10 addObject:v9];
LABEL_16:
        ;
      }

      v6 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)contactWithMasterEntityId:(int64_t)a3
{
  v4 = objc_opt_new();
  v4[2] = a3;

  return v4;
}

+ (id)contactFromContactEntity:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v4[2] = [v3 masterEntityId];
  v5 = [MEMORY[0x277D020C8] recordIdForContactWithRowId:{objc_msgSend(v3, "masterEntityId")}];
  v6 = v4[3];
  v4[3] = v5;

  [v4 addProfile:v3];

  return v4;
}

@end