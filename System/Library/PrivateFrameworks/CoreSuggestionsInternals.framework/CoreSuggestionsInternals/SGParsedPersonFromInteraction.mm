@interface SGParsedPersonFromInteraction
+ (id)_peopleFromInteraction:(id)interaction;
+ (id)intentClassWhitelist;
+ (id)parseInteraction:(id)interaction bundleId:(id)id;
- (SGParsedPersonFromInteraction)initWithPerson:(id)person bundleId:(id)id interactionIdentifier:(id)identifier groupId:(id)groupId date:(id)date;
- (id)pipelineEntity;
- (void)_harvestEmail:(id)email;
- (void)_harvestPerson:(id)person handle:(id)handle suggestionType:(int64_t)type bundleId:(id)id;
- (void)_harvestPhoneNumber:(id)number;
- (void)_harvestSocialProfile:(id)profile handle:(id)handle bundleId:(id)id;
- (void)grabNameIfNeededFromContactStore:(id)store;
@end

@implementation SGParsedPersonFromInteraction

- (id)pipelineEntity
{
  v72 = *MEMORY[0x277D85DE8];
  displayName = self->_displayName;
  if (displayName && !heuristicIdentifyHandle(displayName))
  {
    v4 = self->_displayName;
  }

  else
  {
    v4 = &stru_284703F00;
  }

  v5 = v4;
  phoneNumber = self->_phoneNumber;
  v7 = SGNormalizePhoneNumber();
  socialProfile = self->_socialProfile;
  if (socialProfile)
  {
    serialize = [(SGSocialProfileDetails *)self->_socialProfile serialize];
    v10 = [SGIdentityKey keyForSocialProfile:serialize];

    userIdentifier = [(SGSocialProfileDetails *)self->_socialProfile userIdentifier];
    v12 = [userIdentifier length];
    v13 = self->_socialProfile;
    if (v12)
    {
      [(SGSocialProfileDetails *)v13 userIdentifier];
    }

    else
    {
      [(SGSocialProfileDetails *)v13 username];
    }
    v14 = ;
    v15 = 1;
    goto LABEL_12;
  }

  if (self->_phoneNumber)
  {
    v10 = [SGIdentityKey keyForNormalizedPhone:v7];
    userIdentifier = [(INPersonHandle *)self->_handle value];
    v14 = SGNormalizePhoneNumber();
    v15 = 0;
LABEL_12:
    v16 = 1;
    goto LABEL_13;
  }

  if (!self->_email)
  {
    v14 = 0;
    v10 = 0;
    goto LABEL_47;
  }

  v10 = [SGIdentityKey keyForEmail:?];
  userIdentifier = [(INPersonHandle *)self->_handle value];
  v14 = SGNormalizeEmailAddress();
  v16 = 0;
  v15 = 1;
LABEL_13:

  if (v10 && [v14 length])
  {
    v51 = v15;
    v52 = v16;
    v56 = v7;
    v17 = [[SGPipelineEntity alloc] initWithIntentPersonAtDate:self->_date bundleId:self->_bundleId handle:v14 displayName:v5];
    v18 = [[SGPseudoContactKey alloc] initWithIdentityKey:v10];
    v19 = [SGDuplicateKey alloc];
    duplicateKey = [(SGEntity *)v17 duplicateKey];
    v54 = v18;
    v21 = [(SGDuplicateKey *)v19 initWithEntityKey:v18 entityType:4 parentKey:duplicateKey];

    v53 = v21;
    v55 = v5;
    v22 = [[SGPipelineEnrichment alloc] initWithDuplicateKey:v21 title:v5 parent:v17];
    v57 = v10;
    if (socialProfile)
    {
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      uniqueIdentifiers = [(SGSocialProfileDetails *)self->_socialProfile uniqueIdentifiers];
      v24 = [uniqueIdentifiers countByEnumeratingWithState:&v62 objects:v67 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v63;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v63 != v26)
            {
              objc_enumerationMutation(uniqueIdentifiers);
            }

            v28 = *(*(&v62 + 1) + 8 * i);
            v29 = MEMORY[0x277D01FA0];
            SGNormalizeSocialProfile(v28);
            objc_claimAutoreleasedReturnValue();
            v30 = [v29 contactDetail:v28];
            [(SGEntity *)v22 addTag:v30];
          }

          v25 = [uniqueIdentifiers countByEnumeratingWithState:&v62 objects:v67 count:16];
        }

        while (v25);
      }

      v10 = v57;
    }

    [(SGPipelineEntity *)v17 addEnrichment:v22];
    v31 = v51 ^ 1;
    if (!self->_phoneNumber)
    {
      v31 = 1;
    }

    if ((v31 & 1) == 0)
    {
      v32 = [[SGLabeledValue alloc] initWithLabel:0 value:v56];
      v33 = [MEMORY[0x277D01FD8] extractionInfoWithExtractionType:16 modelVersion:0 confidence:0];
      [(SGPipelineEntity *)v17 addDetectedPhoneNumber:v32 forIdentity:v10 context:0 contextRangeOfInterest:0x7FFFFFFFFFFFFFFFLL extractionInfo:0, v33];
    }

    v34 = v52 ^ 1;
    if (!self->_email)
    {
      v34 = 1;
    }

    if ((v34 & 1) == 0)
    {
      v35 = [[SGLabeledValue alloc] initWithLabel:0 value:self->_email];
      v36 = [MEMORY[0x277D01FD8] extractionInfoWithExtractionType:16 modelVersion:0 confidence:0];
      [(SGPipelineEntity *)v17 addDetectedEmailAddress:v35 forIdentity:v10 context:0 contextRangeOfInterest:0x7FFFFFFFFFFFFFFFLL extractionInfo:0, v36];
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    enrichments = [(SGPipelineEntity *)v17 enrichments];
    v38 = [enrichments countByEnumeratingWithState:&v58 objects:v66 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v59;
      do
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v59 != v40)
          {
            objc_enumerationMutation(enrichments);
          }

          v42 = *(*(&v58 + 1) + 8 * j);
          fromInteraction = [MEMORY[0x277D01FA0] fromInteraction];
          [v42 addTag:fromInteraction];

          v44 = [MEMORY[0x277D01FA0] interactionId:self->_interactionIdentifier];
          [v42 addTag:v44];

          v45 = [MEMORY[0x277D01FA0] interactionBundleId:self->_bundleId];
          [v42 addTag:v45];

          if (self->_contactIdentifier)
          {
            v46 = [MEMORY[0x277D01FA0] interactionContactIdentifier:?];
            [v42 addTag:v46];
          }

          if (self->_groupId)
          {
            v47 = [MEMORY[0x277D01FA0] interactionGroupId:?];
            [v42 addTag:v47];
          }
        }

        v39 = [enrichments countByEnumeratingWithState:&v58 objects:v66 count:16];
      }

      while (v39);
    }

    v5 = v55;
    v7 = v56;
    v10 = v57;
    p_super = &v54->super;
    goto LABEL_50;
  }

LABEL_47:
  p_super = sgLogHandle();
  if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v69 = v10;
    v70 = 2112;
    v71 = v14;
    _os_log_error_impl(&dword_231E60000, p_super, OS_LOG_TYPE_ERROR, "Interaction Person has no identity/handle: %@ / %@", buf, 0x16u);
  }

  v17 = 0;
LABEL_50:

  v49 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)grabNameIfNeededFromContactStore:(id)store
{
  v19 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  if (!self->_displayName && self->_contactIdentifier)
  {
    if (grabNameIfNeededFromContactStore___pasOnceToken3 != -1)
    {
      dispatch_once(&grabNameIfNeededFromContactStore___pasOnceToken3, &__block_literal_global_398);
    }

    v5 = grabNameIfNeededFromContactStore___pasExprOnceResult;
    contactIdentifier = self->_contactIdentifier;
    v14 = 0;
    v7 = [SGContactsInterface unifiedContactWithIdentifier:contactIdentifier keysToFetch:v5 usingContactStore:storeCopy error:&v14];
    v8 = v14;
    v9 = v8;
    if (v7)
    {
      v10 = [MEMORY[0x277CBDA78] stringFromContact:v7 style:0];
      p_super = &self->_displayName->super;
      self->_displayName = v10;
    }

    else
    {
      if (!v8)
      {
LABEL_11:

        goto LABEL_12;
      }

      p_super = sgLogHandle();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        v13 = self->_contactIdentifier;
        *buf = 138412546;
        v16 = v13;
        v17 = 2112;
        v18 = v9;
        _os_log_error_impl(&dword_231E60000, p_super, OS_LOG_TYPE_ERROR, "Error fetching contact for identifier '%@': %@", buf, 0x16u);
      }
    }

    goto LABEL_11;
  }

LABEL_12:

  v12 = *MEMORY[0x277D85DE8];
}

void __66__SGParsedPersonFromInteraction_grabNameIfNeededFromContactStore___block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = grabNameIfNeededFromContactStore___pasExprOnceResult;
  grabNameIfNeededFromContactStore___pasExprOnceResult = v2;

  objc_autoreleasePoolPop(v0);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_harvestSocialProfile:(id)profile handle:(id)handle bundleId:(id)id
{
  if (!self->_socialProfile)
  {
    v9 = MEMORY[0x277D02070];
    idCopy = id;
    handleCopy = handle;
    profileCopy = profile;
    v33 = [v9 originWithType:5 sourceKey:idCopy externalKey:&stru_284703F00 bundleId:idCopy fromForwardedMessage:0];
    v32 = [SGSocialProfileDetails alloc];
    value = [handleCopy value];

    if (value)
    {
      v14 = value;
    }

    else
    {
      v14 = &stru_284703F00;
    }

    v31 = v14;
    customIdentifier = [profileCopy customIdentifier];
    v16 = customIdentifier;
    if (customIdentifier)
    {
      v17 = customIdentifier;
    }

    else
    {
      v17 = &stru_284703F00;
    }

    if (idCopy)
    {
      v18 = idCopy;
    }

    else
    {
      v18 = &stru_284703F00;
    }

    v29 = v18;
    v30 = v17;
    displayName = [profileCopy displayName];

    if (displayName)
    {
      v20 = displayName;
    }

    else
    {
      v20 = &stru_284703F00;
    }

    localizedApplicationName = [v33 localizedApplicationName];
    v22 = localizedApplicationName;
    if (localizedApplicationName)
    {
      v23 = localizedApplicationName;
    }

    else
    {
      v23 = &stru_284703F00;
    }

    teamId = [v33 teamId];
    v25 = teamId;
    if (teamId)
    {
      v26 = teamId;
    }

    else
    {
      v26 = &stru_284703F00;
    }

    v27 = [(SGSocialProfileDetails *)v32 initWithUsername:v31 userIdentifier:v30 bundleIdentifier:v29 displayName:v20 service:v23 teamIdentifier:v26];

    socialProfile = self->_socialProfile;
    self->_socialProfile = v27;
  }
}

- (void)_harvestPhoneNumber:(id)number
{
  if (!self->_phoneNumber)
  {
    v5 = SGDataDetectorsScanForPhone(number);
    phoneNumber = self->_phoneNumber;
    self->_phoneNumber = v5;

    MEMORY[0x2821F96F8]();
  }
}

- (void)_harvestEmail:(id)email
{
  emailCopy = email;
  v5 = emailCopy;
  if (!self->_email && (CFStringGetCStringPtr(emailCopy, 0x8000100u) || [(__CFString *)v5 UTF8String]))
  {
    SGParseNamedEmailAddress();
  }
}

- (void)_harvestPerson:(id)person handle:(id)handle suggestionType:(int64_t)type bundleId:(id)id
{
  personCopy = person;
  handleCopy = handle;
  idCopy = id;
  value = [handleCopy value];
  if (![value length])
  {

    goto LABEL_15;
  }

  value2 = [handleCopy value];
  v14 = [value2 length];

  if (v14 > 0x3E8)
  {
    goto LABEL_15;
  }

  type = [handleCopy type];
  if (type == 2)
  {
    goto LABEL_11;
  }

  if (type == 1)
  {
LABEL_9:
    value3 = [handleCopy value];
    [(SGParsedPersonFromInteraction *)self _harvestEmail:value3];
LABEL_12:

LABEL_13:
    if ((type - 1) > 1)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (type)
  {
    goto LABEL_13;
  }

  if ((type - 1) >= 2)
  {
    value4 = [(INPersonHandle *)self->_handle value];
    v17 = heuristicIdentifyHandle(value4);

    if (v17 != 2)
    {
      if (v17 != 1)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }

LABEL_11:
    value3 = [handleCopy value];
    [(SGParsedPersonFromInteraction *)self _harvestPhoneNumber:value3];
    goto LABEL_12;
  }

LABEL_14:
  [(SGParsedPersonFromInteraction *)self _harvestSocialProfile:personCopy handle:handleCopy bundleId:idCopy];
LABEL_15:
}

- (SGParsedPersonFromInteraction)initWithPerson:(id)person bundleId:(id)id interactionIdentifier:(id)identifier groupId:(id)groupId date:(id)date
{
  v61 = *MEMORY[0x277D85DE8];
  personCopy = person;
  idCopy = id;
  identifierCopy = identifier;
  obj = groupId;
  groupIdCopy = groupId;
  dateCopy = date;
  if (personCopy)
  {
    if (idCopy)
    {
      goto LABEL_3;
    }

LABEL_36:
    [MEMORY[0x277CCA890] currentHandler];
    v45 = v51 = date;
    [v45 handleFailureInMethod:a2 object:self file:@"SGInteractionParser.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"bundleId"}];

    date = v51;
    if (identifierCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_37;
  }

  [MEMORY[0x277CCA890] currentHandler];
  v44 = v50 = date;
  [v44 handleFailureInMethod:a2 object:self file:@"SGInteractionParser.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"person"}];

  date = v50;
  if (!idCopy)
  {
    goto LABEL_36;
  }

LABEL_3:
  if (identifierCopy)
  {
    goto LABEL_4;
  }

LABEL_37:
  [MEMORY[0x277CCA890] currentHandler];
  v46 = v52 = date;
  [v46 handleFailureInMethod:a2 object:self file:@"SGInteractionParser.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"interactionIdentifier"}];

  date = v52;
LABEL_4:
  v59.receiver = self;
  v59.super_class = SGParsedPersonFromInteraction;
  v18 = [(SGParsedPersonFromInteraction *)&v59 init];
  if (!v18)
  {
LABEL_32:
    v24 = v18;
    goto LABEL_33;
  }

  personHandle = [personCopy personHandle];
  handle = v18->_handle;
  v18->_handle = personHandle;

  value = [(INPersonHandle *)v18->_handle value];
  if (![value length])
  {

    goto LABEL_10;
  }

  dateCopy2 = date;
  v53 = dateCopy;
  value2 = [(INPersonHandle *)v18->_handle value];
  v23 = [value2 length];

  if (v23 <= 0x3E8)
  {
    v47 = groupIdCopy;
    v48 = identifierCopy;
    personHandle2 = [personCopy personHandle];
    -[SGParsedPersonFromInteraction _harvestPerson:handle:suggestionType:bundleId:](v18, "_harvestPerson:handle:suggestionType:bundleId:", personCopy, personHandle2, [personCopy suggestionType], idCopy);

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    aliases = [personCopy aliases];
    v27 = [aliases countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v56;
      do
      {
        v30 = 0;
        do
        {
          if (*v56 != v29)
          {
            objc_enumerationMutation(aliases);
          }

          -[SGParsedPersonFromInteraction _harvestPerson:handle:suggestionType:bundleId:](v18, "_harvestPerson:handle:suggestionType:bundleId:", personCopy, *(*(&v55 + 1) + 8 * v30++), [personCopy suggestionType], idCopy);
        }

        while (v28 != v30);
        v28 = [aliases countByEnumeratingWithState:&v55 objects:v60 count:16];
      }

      while (v28);
    }

    if (!v18->_email && !v18->_phoneNumber && !v18->_socialProfile)
    {
      v24 = 0;
      groupIdCopy = v47;
      identifierCopy = v48;
      goto LABEL_8;
    }

    objc_storeStrong(&v18->_bundleId, id);
    objc_storeStrong(&v18->_interactionIdentifier, identifier);
    objc_storeStrong(&v18->_groupId, obj);
    objc_storeStrong(&v18->_date, dateCopy2);
    displayName = [personCopy displayName];
    controlCharacterSet = [MEMORY[0x277CCA900] controlCharacterSet];
    v33 = [displayName stringByTrimmingCharactersInSet:controlCharacterSet];
    displayName = v18->_displayName;
    v18->_displayName = v33;

    nameComponents = [personCopy nameComponents];
    nameComponents = v18->_nameComponents;
    v18->_nameComponents = nameComponents;

    contactIdentifier = [personCopy contactIdentifier];
    contactIdentifier = v18->_contactIdentifier;
    v18->_contactIdentifier = contactIdentifier;

    groupIdCopy = v47;
    identifierCopy = v48;
    if (!v18->_nameComponents && !v18->_socialProfile && (v18->_email || v18->_phoneNumber || v18->_contactIdentifier))
    {
      value3 = [(INPersonHandle *)v18->_handle value];
      if ([value3 isEqualToString:v18->_displayName])
      {

LABEL_29:
        v41 = v18->_displayName;
        v18->_displayName = 0;

        goto LABEL_30;
      }

      v40 = heuristicIdentifyHandle(v18->_displayName);

      if (v40)
      {
        goto LABEL_29;
      }
    }

LABEL_30:
    dateCopy = v53;
    if (v18->_displayName || v18->_contactIdentifier)
    {
      goto LABEL_32;
    }

LABEL_10:
    v24 = 0;
    goto LABEL_33;
  }

  v24 = 0;
LABEL_8:
  dateCopy = v53;
LABEL_33:

  v42 = *MEMORY[0x277D85DE8];
  return v24;
}

+ (id)intentClassWhitelist
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)parseInteraction:(id)interaction bundleId:(id)id
{
  v34 = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  idCopy = id;
  v9 = idCopy;
  if (interactionCopy)
  {
    if (idCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGInteractionParser.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"interaction"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGInteractionParser.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"bundleId"}];

LABEL_3:
  dateInterval = [interactionCopy dateInterval];
  startDate = [dateInterval startDate];

  v28 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [self _peopleFromInteraction:interactionCopy];
  v12 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        v16 = v9;
        if (*v30 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v29 + 1) + 8 * i);
        v18 = [SGParsedPersonFromInteraction alloc];
        identifier = [interactionCopy identifier];
        groupIdentifier = [interactionCopy groupIdentifier];
        v21 = v18;
        v9 = v16;
        v22 = [(SGParsedPersonFromInteraction *)v21 initWithPerson:v17 bundleId:v16 interactionIdentifier:identifier groupId:groupIdentifier date:startDate];

        if (v22)
        {
          [v28 addObject:v22];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v13);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (id)_peopleFromInteraction:(id)interaction
{
  interactionCopy = interaction;
  if ([interactionCopy direction] == 2)
  {
    v4 = 0;
    goto LABEL_11;
  }

  intent = [interactionCopy intent];
  if (!intent)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      recipients = [intent recipients];
      goto LABEL_8;
    }

LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  recipients = [intent contacts];
LABEL_8:
  v4 = recipients;
LABEL_10:

LABEL_11:

  return v4;
}

@end