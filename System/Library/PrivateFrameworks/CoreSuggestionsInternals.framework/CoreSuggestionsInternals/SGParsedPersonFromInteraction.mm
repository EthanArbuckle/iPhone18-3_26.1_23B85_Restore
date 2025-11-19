@interface SGParsedPersonFromInteraction
+ (id)_peopleFromInteraction:(id)a3;
+ (id)intentClassWhitelist;
+ (id)parseInteraction:(id)a3 bundleId:(id)a4;
- (SGParsedPersonFromInteraction)initWithPerson:(id)a3 bundleId:(id)a4 interactionIdentifier:(id)a5 groupId:(id)a6 date:(id)a7;
- (id)pipelineEntity;
- (void)_harvestEmail:(id)a3;
- (void)_harvestPerson:(id)a3 handle:(id)a4 suggestionType:(int64_t)a5 bundleId:(id)a6;
- (void)_harvestPhoneNumber:(id)a3;
- (void)_harvestSocialProfile:(id)a3 handle:(id)a4 bundleId:(id)a5;
- (void)grabNameIfNeededFromContactStore:(id)a3;
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
    v9 = [(SGSocialProfileDetails *)self->_socialProfile serialize];
    v10 = [SGIdentityKey keyForSocialProfile:v9];

    v11 = [(SGSocialProfileDetails *)self->_socialProfile userIdentifier];
    v12 = [v11 length];
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
    v11 = [(INPersonHandle *)self->_handle value];
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
  v11 = [(INPersonHandle *)self->_handle value];
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
    v20 = [(SGEntity *)v17 duplicateKey];
    v54 = v18;
    v21 = [(SGDuplicateKey *)v19 initWithEntityKey:v18 entityType:4 parentKey:v20];

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
      v23 = [(SGSocialProfileDetails *)self->_socialProfile uniqueIdentifiers];
      v24 = [v23 countByEnumeratingWithState:&v62 objects:v67 count:16];
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
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v62 + 1) + 8 * i);
            v29 = MEMORY[0x277D01FA0];
            SGNormalizeSocialProfile(v28);
            objc_claimAutoreleasedReturnValue();
            v30 = [v29 contactDetail:v28];
            [(SGEntity *)v22 addTag:v30];
          }

          v25 = [v23 countByEnumeratingWithState:&v62 objects:v67 count:16];
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
    v37 = [(SGPipelineEntity *)v17 enrichments];
    v38 = [v37 countByEnumeratingWithState:&v58 objects:v66 count:16];
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
            objc_enumerationMutation(v37);
          }

          v42 = *(*(&v58 + 1) + 8 * j);
          v43 = [MEMORY[0x277D01FA0] fromInteraction];
          [v42 addTag:v43];

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

        v39 = [v37 countByEnumeratingWithState:&v58 objects:v66 count:16];
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

- (void)grabNameIfNeededFromContactStore:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_displayName && self->_contactIdentifier)
  {
    if (grabNameIfNeededFromContactStore___pasOnceToken3 != -1)
    {
      dispatch_once(&grabNameIfNeededFromContactStore___pasOnceToken3, &__block_literal_global_398);
    }

    v5 = grabNameIfNeededFromContactStore___pasExprOnceResult;
    contactIdentifier = self->_contactIdentifier;
    v14 = 0;
    v7 = [SGContactsInterface unifiedContactWithIdentifier:contactIdentifier keysToFetch:v5 usingContactStore:v4 error:&v14];
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

- (void)_harvestSocialProfile:(id)a3 handle:(id)a4 bundleId:(id)a5
{
  if (!self->_socialProfile)
  {
    v9 = MEMORY[0x277D02070];
    v10 = a5;
    v11 = a4;
    v12 = a3;
    v33 = [v9 originWithType:5 sourceKey:v10 externalKey:&stru_284703F00 bundleId:v10 fromForwardedMessage:0];
    v32 = [SGSocialProfileDetails alloc];
    v13 = [v11 value];

    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = &stru_284703F00;
    }

    v31 = v14;
    v15 = [v12 customIdentifier];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = &stru_284703F00;
    }

    if (v10)
    {
      v18 = v10;
    }

    else
    {
      v18 = &stru_284703F00;
    }

    v29 = v18;
    v30 = v17;
    v19 = [v12 displayName];

    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = &stru_284703F00;
    }

    v21 = [v33 localizedApplicationName];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = &stru_284703F00;
    }

    v24 = [v33 teamId];
    v25 = v24;
    if (v24)
    {
      v26 = v24;
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

- (void)_harvestPhoneNumber:(id)a3
{
  if (!self->_phoneNumber)
  {
    v5 = SGDataDetectorsScanForPhone(a3);
    phoneNumber = self->_phoneNumber;
    self->_phoneNumber = v5;

    MEMORY[0x2821F96F8]();
  }
}

- (void)_harvestEmail:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_email && (CFStringGetCStringPtr(v4, 0x8000100u) || [(__CFString *)v5 UTF8String]))
  {
    SGParseNamedEmailAddress();
  }
}

- (void)_harvestPerson:(id)a3 handle:(id)a4 suggestionType:(int64_t)a5 bundleId:(id)a6
{
  v19 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [v10 value];
  if (![v12 length])
  {

    goto LABEL_15;
  }

  v13 = [v10 value];
  v14 = [v13 length];

  if (v14 > 0x3E8)
  {
    goto LABEL_15;
  }

  v15 = [v10 type];
  if (v15 == 2)
  {
    goto LABEL_11;
  }

  if (v15 == 1)
  {
LABEL_9:
    v18 = [v10 value];
    [(SGParsedPersonFromInteraction *)self _harvestEmail:v18];
LABEL_12:

LABEL_13:
    if ((a5 - 1) > 1)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v15)
  {
    goto LABEL_13;
  }

  if ((a5 - 1) >= 2)
  {
    v16 = [(INPersonHandle *)self->_handle value];
    v17 = heuristicIdentifyHandle(v16);

    if (v17 != 2)
    {
      if (v17 != 1)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }

LABEL_11:
    v18 = [v10 value];
    [(SGParsedPersonFromInteraction *)self _harvestPhoneNumber:v18];
    goto LABEL_12;
  }

LABEL_14:
  [(SGParsedPersonFromInteraction *)self _harvestSocialProfile:v19 handle:v10 bundleId:v11];
LABEL_15:
}

- (SGParsedPersonFromInteraction)initWithPerson:(id)a3 bundleId:(id)a4 interactionIdentifier:(id)a5 groupId:(id)a6 date:(id)a7
{
  v61 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  obj = a6;
  v16 = a6;
  v17 = a7;
  if (v13)
  {
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_36:
    [MEMORY[0x277CCA890] currentHandler];
    v45 = v51 = a7;
    [v45 handleFailureInMethod:a2 object:self file:@"SGInteractionParser.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"bundleId"}];

    a7 = v51;
    if (v15)
    {
      goto LABEL_4;
    }

    goto LABEL_37;
  }

  [MEMORY[0x277CCA890] currentHandler];
  v44 = v50 = a7;
  [v44 handleFailureInMethod:a2 object:self file:@"SGInteractionParser.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"person"}];

  a7 = v50;
  if (!v14)
  {
    goto LABEL_36;
  }

LABEL_3:
  if (v15)
  {
    goto LABEL_4;
  }

LABEL_37:
  [MEMORY[0x277CCA890] currentHandler];
  v46 = v52 = a7;
  [v46 handleFailureInMethod:a2 object:self file:@"SGInteractionParser.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"interactionIdentifier"}];

  a7 = v52;
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

  v19 = [v13 personHandle];
  handle = v18->_handle;
  v18->_handle = v19;

  v21 = [(INPersonHandle *)v18->_handle value];
  if (![v21 length])
  {

    goto LABEL_10;
  }

  v49 = a7;
  v53 = v17;
  v22 = [(INPersonHandle *)v18->_handle value];
  v23 = [v22 length];

  if (v23 <= 0x3E8)
  {
    v47 = v16;
    v48 = v15;
    v25 = [v13 personHandle];
    -[SGParsedPersonFromInteraction _harvestPerson:handle:suggestionType:bundleId:](v18, "_harvestPerson:handle:suggestionType:bundleId:", v13, v25, [v13 suggestionType], v14);

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v26 = [v13 aliases];
    v27 = [v26 countByEnumeratingWithState:&v55 objects:v60 count:16];
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
            objc_enumerationMutation(v26);
          }

          -[SGParsedPersonFromInteraction _harvestPerson:handle:suggestionType:bundleId:](v18, "_harvestPerson:handle:suggestionType:bundleId:", v13, *(*(&v55 + 1) + 8 * v30++), [v13 suggestionType], v14);
        }

        while (v28 != v30);
        v28 = [v26 countByEnumeratingWithState:&v55 objects:v60 count:16];
      }

      while (v28);
    }

    if (!v18->_email && !v18->_phoneNumber && !v18->_socialProfile)
    {
      v24 = 0;
      v16 = v47;
      v15 = v48;
      goto LABEL_8;
    }

    objc_storeStrong(&v18->_bundleId, a4);
    objc_storeStrong(&v18->_interactionIdentifier, a5);
    objc_storeStrong(&v18->_groupId, obj);
    objc_storeStrong(&v18->_date, v49);
    v31 = [v13 displayName];
    v32 = [MEMORY[0x277CCA900] controlCharacterSet];
    v33 = [v31 stringByTrimmingCharactersInSet:v32];
    displayName = v18->_displayName;
    v18->_displayName = v33;

    v35 = [v13 nameComponents];
    nameComponents = v18->_nameComponents;
    v18->_nameComponents = v35;

    v37 = [v13 contactIdentifier];
    contactIdentifier = v18->_contactIdentifier;
    v18->_contactIdentifier = v37;

    v16 = v47;
    v15 = v48;
    if (!v18->_nameComponents && !v18->_socialProfile && (v18->_email || v18->_phoneNumber || v18->_contactIdentifier))
    {
      v39 = [(INPersonHandle *)v18->_handle value];
      if ([v39 isEqualToString:v18->_displayName])
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
    v17 = v53;
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
  v17 = v53;
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

+ (id)parseInteraction:(id)a3 bundleId:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a2 object:a1 file:@"SGInteractionParser.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"interaction"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v26 = [MEMORY[0x277CCA890] currentHandler];
  [v26 handleFailureInMethod:a2 object:a1 file:@"SGInteractionParser.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"bundleId"}];

LABEL_3:
  v10 = [v7 dateInterval];
  v11 = [v10 startDate];

  v28 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [a1 _peopleFromInteraction:v7];
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
        v19 = [v7 identifier];
        v20 = [v7 groupIdentifier];
        v21 = v18;
        v9 = v16;
        v22 = [(SGParsedPersonFromInteraction *)v21 initWithPerson:v17 bundleId:v16 interactionIdentifier:v19 groupId:v20 date:v11];

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

+ (id)_peopleFromInteraction:(id)a3
{
  v3 = a3;
  if ([v3 direction] == 2)
  {
    v4 = 0;
    goto LABEL_11;
  }

  v5 = [v3 intent];
  if (!v5)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 recipients];
      goto LABEL_8;
    }

LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  v6 = [v5 contacts];
LABEL_8:
  v4 = v6;
LABEL_10:

LABEL_11:

  return v4;
}

@end