@interface SGOrigin(Internal)
+ (id)originForDuplicateKey:()Internal entity:parent:store:;
+ (id)originForDuplicateKey:()Internal sourceKey:store:;
+ (uint64_t)originTypeForEntityType:()Internal;
- (uint64_t)addDetailsFromOriginatingContactEntity:()Internal;
- (uint64_t)addDetailsFromOriginatingGenericEntity:()Internal;
- (uint64_t)addDetailsFromParticipantsOfEntity:()Internal;
- (void)addDetailsFromOriginatingCalendarEntity:()Internal;
- (void)addDetailsFromOriginatingInteractionEntity:()Internal;
- (void)addDetailsFromOriginatingMessageEntity:()Internal;
- (void)addRecipientDetailsFromOriginatingMessageEntity:()Internal entity:store:;
- (void)addSnippetIfNotExistsFromContentOfEntity:()Internal;
@end

@implementation SGOrigin(Internal)

- (void)addRecipientDetailsFromOriginatingMessageEntity:()Internal entity:store:
{
  v33[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x277D01FA0];
  v11 = a3;
  isSent = [v10 isSent];
  v13 = [v11 hasTag:isSent];

  isSent2 = [MEMORY[0x277D01FA0] isSent];
  v15 = [v8 hasTag:isSent2];

  *(self + *MEMORY[0x277D02170]) = v13;
  if (v13 && (v15 & 1) == 0)
  {
    v16 = [MEMORY[0x277D020C8] recordIdWithInternalEntityId:{objc_msgSend(v8, "groupId")}];
    v17 = [v9 loadEntityByRecordId:v16];

    title = [v17 title];
    duplicateKey = [v17 duplicateKey];
    pseudoContactKey = [duplicateKey pseudoContactKey];
    identityKey = [pseudoContactKey identityKey];

    if ([identityKey type] == 1)
    {
      emailAddress = [identityKey emailAddress];
      v22 = MEMORY[0x277CBCFC0];
    }

    else if ([identityKey type] == 3)
    {
      emailAddress = [identityKey phone];
      v22 = MEMORY[0x277CBD098];
    }

    else
    {
      if ([identityKey type] != 5)
      {
        emailAddress = &stru_284703F00;
        v23 = &stru_284703F00;
        goto LABEL_10;
      }

      emailAddress = [identityKey socialProfile];
      v22 = MEMORY[0x277CBD138];
    }

    v23 = *v22;
LABEL_10:
    v24 = objc_alloc(MEMORY[0x277CC3450]);
    v33[0] = emailAddress;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    v26 = [v24 initWithDisplayName:title handles:v25 handleIdentifier:v23];

    v32 = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
    v28 = *MEMORY[0x277D02190];
    v29 = *(self + v28);
    *(self + v28) = v27;
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)addSnippetIfNotExistsFromContentOfEntity:()Internal
{
  v24[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = *MEMORY[0x277D02150];
    if (!*(self + v6))
    {
      content = [v4 content];
      v8 = content;
      if (content && [content length] > 0x7D0)
      {
        v10 = objc_autoreleasePoolPush();
        v11 = MEMORY[0x277CCACA8];
        v12 = [v8 substringToIndex:1999];
        v24[0] = v12;
        v24[1] = @"…";
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
        v9 = [v11 _pas_proxyStringByConcatenatingStrings:v13];

        objc_autoreleasePoolPop(v10);
      }

      else
      {
        v9 = v8;
      }

      v14 = *(self + v6);
      *(self + v6) = v9;

      if ([*(self + v6) _pas_retainsConmingledBackingStore])
      {
        v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:*(self + v6)];
        v16 = *(self + v6);
        *(self + v6) = v15;
      }

      v17 = (self + *MEMORY[0x277D02158]);
      *v17 = [v5 contentRangeOfInterest];
      v17[1] = v18;
      operatingSystemVersion = [v5 operatingSystemVersion];
      v20 = *MEMORY[0x277D02178];
      v21 = *(self + v20);
      *(self + v20) = operatingSystemVersion;

      showOperatingSystemVersionInSnippets = [MEMORY[0x277D02098] showOperatingSystemVersionInSnippets];
      *(self + *MEMORY[0x277D02180]) = showOperatingSystemVersionInSnippets;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)addDetailsFromOriginatingInteractionEntity:()Internal
{
  if (a3)
  {
    v4 = a3;
    [self addDetailsFromOriginatingGenericEntity:v4];
    duplicateKey = [v4 duplicateKey];

    interactionKey = [duplicateKey interactionKey];
    bundleId = [interactionKey bundleId];
    v7 = *MEMORY[0x277D02148];
    v8 = *&self[v7];
    *&self[v7] = bundleId;
  }
}

- (void)addDetailsFromOriginatingCalendarEntity:()Internal
{
  if (a3)
  {
    v4 = a3;
    [self addDetailsFromOriginatingGenericEntity:v4];
    [self addDetailsFromParticipantsOfEntity:v4];
  }
}

- (uint64_t)addDetailsFromOriginatingContactEntity:()Internal
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v11 = v4;
    [self addDetailsFromOriginatingGenericEntity:v4];
    v6 = *MEMORY[0x277D02150];
    v7 = *&self[v6];
    if (v7)
    {
      title = v7;
    }

    else
    {
      title = [v11 title];
    }

    v9 = *&self[v6];
    *&self[v6] = title;

    v5 = v11;
  }

  return MEMORY[0x2821F96F8](v4, v5);
}

- (void)addDetailsFromOriginatingMessageEntity:()Internal
{
  if (a3)
  {
    v4 = a3;
    [self addDetailsFromOriginatingGenericEntity:v4];
    [self addDetailsFromParticipantsOfEntity:v4];
  }
}

- (uint64_t)addDetailsFromParticipantsOfEntity:()Internal
{
  if (a3)
  {
    v3 = result;
    author = [a3 author];
    v5 = *MEMORY[0x277D02168];
    v6 = *(v3 + v5);
    *(v3 + v5) = author;

    return MEMORY[0x2821F96F8](author, v6);
  }

  return result;
}

- (uint64_t)addDetailsFromOriginatingGenericEntity:()Internal
{
  if (a3)
  {
    v3 = result;
    v4 = a3;
    title = [v4 title];
    v6 = *MEMORY[0x277D02188];
    v7 = *(v3 + v6);
    *(v3 + v6) = title;

    v8 = MEMORY[0x277CBEAA8];
    [v4 creationTimestamp];
    v10 = v9;

    v11 = [v8 dateWithTimeIntervalSince1970:v10];
    v12 = *MEMORY[0x277D02160];
    v13 = *(v3 + v12);
    *(v3 + v12) = v11;

    return MEMORY[0x2821F96F8](v11, v13);
  }

  return result;
}

+ (id)originForDuplicateKey:()Internal entity:parent:store:
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  switch([v11 entityType])
  {
    case 1:
      v30 = MEMORY[0x277D02070];
      sourceKey = [v12 sourceKey];
      curatedEventKey = [v11 curatedEventKey];
      externalId = [curatedEventKey externalId];
      v26 = [v30 originWithType:3 sourceKey:sourceKey externalKey:externalId fromForwardedMessage:0];

      [v26 addDetailsFromOriginatingCalendarEntity:v12];
      goto LABEL_27;
    case 2:
    case 6:
    case 7:
    case 8:
    case 15:
    case 19:
    case 20:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
      v83 = v12;
      v15 = v14;
      parentKey = [v11 parentKey];
      if (!parentKey)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"SGOrigin+Internal.m" lineNumber:143 description:@"Extracted data must have a parent."];
      }

      v17 = MEMORY[0x277D02070];
      v18 = [self originTypeForEntityType:{objc_msgSend(parentKey, "entityType")}];
      messageKey = [parentKey messageKey];
      source = [messageKey source];
      messageKey2 = [parentKey messageKey];
      uniqueIdentifier = [messageKey2 uniqueIdentifier];
      v23 = [v17 originWithType:v18 sourceKey:source externalKey:uniqueIdentifier fromForwardedMessage:{objc_msgSend(v13, "isFromForwardedMessage")}];

      [v23 addDetailsFromOriginatingMessageEntity:v13];
      [v11 entityType];
      v14 = v15;
      v12 = v83;
      if (SGEntityTypeIsContactDetail())
      {
        [v23 addRecipientDetailsFromOriginatingMessageEntity:v13 entity:v83 store:v15];
      }

      duplicateKey = [v83 duplicateKey];
      entityType = [duplicateKey entityType];

      [v23 addSnippetIfNotExistsFromContentOfEntity:v83];
      if (entityType == 2)
      {
        [v23 addSnippetIfNotExistsFromContentOfEntity:v13];
      }

      v26 = v23;

      goto LABEL_28;
    case 3:
    case 9:
    case 10:
    case 11:
    case 12:
    case 14:
    case 21:
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      duplicateKey2 = [v12 duplicateKey];
      [duplicateKey2 entityType];
      v29 = SGEntityTypeDescription();
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGOrigin+Internal.m" lineNumber:241 description:{@"Unsupported type: %@", v29}];

      goto LABEL_10;
    case 4:
      parentKey2 = [v11 parentKey];
      if (!parentKey2)
      {
        currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler3 handleFailureInMethod:a2 object:self file:@"SGOrigin+Internal.m" lineNumber:167 description:@"Pseudo contacts must be derived from at least one parent entity"];
      }

      v82 = v11;
      if ([parentKey2 entityType] == 5 || objc_msgSend(parentKey2, "entityType") == 13)
      {
        v43 = MEMORY[0x277D02070];
        v44 = [self originTypeForEntityType:{objc_msgSend(parentKey2, "entityType")}];
        messageKey3 = [parentKey2 messageKey];
        source2 = [messageKey3 source];
        [parentKey2 messageKey];
        v47 = parentKey2;
        v49 = v48 = v13;
        [v49 uniqueIdentifier];
        v51 = v50 = v14;
        v52 = [v43 originWithType:v44 sourceKey:source2 externalKey:v51 fromForwardedMessage:{objc_msgSend(v48, "isFromForwardedMessage")}];

        v14 = v50;
        v13 = v48;
        parentKey2 = v47;

        [v52 addDetailsFromOriginatingMessageEntity:v13];
        [v52 addSnippetIfNotExistsFromContentOfEntity:v12];
        v53 = v52;
        v54 = v13;
LABEL_19:
        [v53 addSnippetIfNotExistsFromContentOfEntity:v54];
LABEL_20:
        v26 = v52;

        v11 = v82;
        goto LABEL_28;
      }

      if ([parentKey2 entityType] == 1)
      {
        v55 = MEMORY[0x277D02070];
        sourceKey2 = [v12 sourceKey];
        curatedEventKey2 = [parentKey2 curatedEventKey];
        [curatedEventKey2 externalId];
        v58 = v12;
        v60 = v59 = v13;
        v52 = [v55 originWithType:3 sourceKey:sourceKey2 externalKey:v60 fromForwardedMessage:0];

        v13 = v59;
        v12 = v58;

        [v52 addDetailsFromOriginatingCalendarEntity:v13];
        v53 = v52;
        v54 = v58;
        goto LABEL_19;
      }

      if ([parentKey2 entityType] == 16)
      {
        v61 = MEMORY[0x277D02070];
        interactionKey = [parentKey2 interactionKey];
        bundleId = [interactionKey bundleId];
        [parentKey2 interactionKey];
        v64 = parentKey2;
        v65 = v12;
        v67 = v66 = v13;
        [v67 personHandle];
        v69 = v68 = v14;
        v52 = [v61 originWithType:5 sourceKey:bundleId externalKey:v69 fromForwardedMessage:0];

        v14 = v68;
        v13 = v66;
        v12 = v65;
        parentKey2 = v64;

        [v52 addDetailsFromOriginatingInteractionEntity:v13];
        goto LABEL_20;
      }

      currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
      [parentKey2 entityType];
      v71 = SGEntityTypeDescription();
      [currentHandler4 handleFailureInMethod:a2 object:self file:@"SGOrigin+Internal.m" lineNumber:195 description:{@"Dunno how to handle a pseudo contact with a parent entity type: %@", v71}];

LABEL_26:
      v84 = MEMORY[0x277D02070];
      v72 = [self originTypeForEntityType:{objc_msgSend(v11, "entityType")}];
      messageKey4 = [v11 messageKey];
      source3 = [messageKey4 source];
      [v11 messageKey];
      v76 = v75 = v13;
      [v76 uniqueIdentifier];
      v78 = v77 = v14;
      v26 = [v84 originWithType:v72 sourceKey:source3 externalKey:v78 fromForwardedMessage:{objc_msgSend(v12, "isFromForwardedMessage")}];

      v14 = v77;
      v13 = v75;

      [v26 addDetailsFromOriginatingMessageEntity:v12];
LABEL_27:
      [v26 addSnippetIfNotExistsFromContentOfEntity:v12];
LABEL_28:

      return v26;
    case 5:
    case 13:
    case 18:
      goto LABEL_26;
    case 16:
      v34 = MEMORY[0x277D02070];
      interactionKey2 = [v11 interactionKey];
      bundleId2 = [interactionKey2 bundleId];
      [v11 interactionKey];
      v38 = v37 = v11;
      [v38 personHandle];
      v39 = v12;
      v41 = v40 = v13;
      v26 = [v34 originWithType:5 sourceKey:bundleId2 externalKey:v41 fromForwardedMessage:0];

      v13 = v40;
      v12 = v39;

      v11 = v37;
      [v26 addDetailsFromOriginatingInteractionEntity:v12];
      goto LABEL_28;
    case 17:
      v26 = [MEMORY[0x277D02070] originWithType:6 sourceKey:&stru_284703F00 externalKey:&stru_284703F00 fromForwardedMessage:0];
      goto LABEL_28;
    default:
LABEL_10:
      v26 = 0;
      goto LABEL_28;
  }
}

+ (id)originForDuplicateKey:()Internal sourceKey:store:
{
  v8 = a3;
  v9 = a5;
  switch([v8 entityType])
  {
    case 1:
    case 5:
    case 13:
    case 16:
    case 18:
      v11 = [v9 loadEntityByKey:v8];
      v14 = [self originForDuplicateKey:v8 entity:v11 parent:0 store:v9];
      goto LABEL_9;
    case 2:
    case 6:
    case 7:
    case 8:
    case 15:
    case 19:
    case 20:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
      parentKey = [v8 parentKey];

      if (!parentKey)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"SGOrigin+Internal.m" lineNumber:71 description:@"Extracted data must have a parent."];
      }

      v11 = [v9 loadEntityByKey:v8];
      parentKey2 = [v8 parentKey];
      v13 = [v9 loadEntityByKey:parentKey2];

      v14 = [self originForDuplicateKey:v8 entity:v11 parent:v13 store:v9];
      goto LABEL_5;
    case 3:
    case 9:
    case 10:
    case 11:
    case 12:
    case 14:
    case 21:
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      duplicateKey = [0 duplicateKey];
      [duplicateKey entityType];
      v17 = SGEntityTypeDescription();
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGOrigin+Internal.m" lineNumber:102 description:{@"Unsupported type: %@", v17}];

      goto LABEL_7;
    case 4:
      parentKey3 = [v8 parentKey];
      if (parentKey3 || ([v9 mostRecentParentKeyForDuplicateKey:v8], (parentKey3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v20 = parentKey3;
      }

      else
      {
        currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler3 handleFailureInMethod:a2 object:self file:@"SGOrigin+Internal.m" lineNumber:78 description:@"Pseudo contacts must be derived from at least one parent entity"];

        v20 = 0;
      }

      v11 = [v9 loadEntityByKey:v8];
      v13 = [v9 loadEntityByKey:v20];
      v14 = [self originForDuplicateKey:v8 entity:v11 parent:v13 store:v9];

LABEL_5:
LABEL_9:

      break;
    case 17:
      v14 = [MEMORY[0x277D02070] originWithType:6 sourceKey:&stru_284703F00 externalKey:&stru_284703F00 fromForwardedMessage:0];
      break;
    default:
LABEL_7:
      v14 = 0;
      break;
  }

  return v14;
}

+ (uint64_t)originTypeForEntityType:()Internal
{
  if (a3 > 15)
  {
    if (a3 == 16)
    {
      return 5;
    }

    if (a3 != 17)
    {
      if (a3 == 18)
      {
        return 7;
      }

      goto LABEL_12;
    }

    return 6;
  }

  else
  {
    if (a3 == 1)
    {
      return 3;
    }

    if (a3 != 5)
    {
      if (a3 == 13)
      {
        return 4;
      }

LABEL_12:
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SGOrigin+Internal.m" lineNumber:44 description:{@"Unknown entity type %u", a3}];

      return 0;
    }

    return 1;
  }
}

@end