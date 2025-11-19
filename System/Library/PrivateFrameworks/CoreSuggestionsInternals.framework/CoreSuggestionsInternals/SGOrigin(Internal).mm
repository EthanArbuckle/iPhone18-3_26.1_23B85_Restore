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
  v12 = [v10 isSent];
  v13 = [v11 hasTag:v12];

  v14 = [MEMORY[0x277D01FA0] isSent];
  v15 = [v8 hasTag:v14];

  *(a1 + *MEMORY[0x277D02170]) = v13;
  if (v13 && (v15 & 1) == 0)
  {
    v16 = [MEMORY[0x277D020C8] recordIdWithInternalEntityId:{objc_msgSend(v8, "groupId")}];
    v17 = [v9 loadEntityByRecordId:v16];

    v31 = [v17 title];
    v18 = [v17 duplicateKey];
    v19 = [v18 pseudoContactKey];
    v20 = [v19 identityKey];

    if ([v20 type] == 1)
    {
      v21 = [v20 emailAddress];
      v22 = MEMORY[0x277CBCFC0];
    }

    else if ([v20 type] == 3)
    {
      v21 = [v20 phone];
      v22 = MEMORY[0x277CBD098];
    }

    else
    {
      if ([v20 type] != 5)
      {
        v21 = &stru_284703F00;
        v23 = &stru_284703F00;
        goto LABEL_10;
      }

      v21 = [v20 socialProfile];
      v22 = MEMORY[0x277CBD138];
    }

    v23 = *v22;
LABEL_10:
    v24 = objc_alloc(MEMORY[0x277CC3450]);
    v33[0] = v21;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    v26 = [v24 initWithDisplayName:v31 handles:v25 handleIdentifier:v23];

    v32 = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
    v28 = *MEMORY[0x277D02190];
    v29 = *(a1 + v28);
    *(a1 + v28) = v27;
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
    if (!*(a1 + v6))
    {
      v7 = [v4 content];
      v8 = v7;
      if (v7 && [v7 length] > 0x7D0)
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

      v14 = *(a1 + v6);
      *(a1 + v6) = v9;

      if ([*(a1 + v6) _pas_retainsConmingledBackingStore])
      {
        v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:*(a1 + v6)];
        v16 = *(a1 + v6);
        *(a1 + v6) = v15;
      }

      v17 = (a1 + *MEMORY[0x277D02158]);
      *v17 = [v5 contentRangeOfInterest];
      v17[1] = v18;
      v19 = [v5 operatingSystemVersion];
      v20 = *MEMORY[0x277D02178];
      v21 = *(a1 + v20);
      *(a1 + v20) = v19;

      v22 = [MEMORY[0x277D02098] showOperatingSystemVersionInSnippets];
      *(a1 + *MEMORY[0x277D02180]) = v22;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)addDetailsFromOriginatingInteractionEntity:()Internal
{
  if (a3)
  {
    v4 = a3;
    [a1 addDetailsFromOriginatingGenericEntity:v4];
    v9 = [v4 duplicateKey];

    v5 = [v9 interactionKey];
    v6 = [v5 bundleId];
    v7 = *MEMORY[0x277D02148];
    v8 = *&a1[v7];
    *&a1[v7] = v6;
  }
}

- (void)addDetailsFromOriginatingCalendarEntity:()Internal
{
  if (a3)
  {
    v4 = a3;
    [a1 addDetailsFromOriginatingGenericEntity:v4];
    [a1 addDetailsFromParticipantsOfEntity:v4];
  }
}

- (uint64_t)addDetailsFromOriginatingContactEntity:()Internal
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v11 = v4;
    [a1 addDetailsFromOriginatingGenericEntity:v4];
    v6 = *MEMORY[0x277D02150];
    v7 = *&a1[v6];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = [v11 title];
    }

    v9 = *&a1[v6];
    *&a1[v6] = v8;

    v5 = v11;
  }

  return MEMORY[0x2821F96F8](v4, v5);
}

- (void)addDetailsFromOriginatingMessageEntity:()Internal
{
  if (a3)
  {
    v4 = a3;
    [a1 addDetailsFromOriginatingGenericEntity:v4];
    [a1 addDetailsFromParticipantsOfEntity:v4];
  }
}

- (uint64_t)addDetailsFromParticipantsOfEntity:()Internal
{
  if (a3)
  {
    v3 = result;
    v4 = [a3 author];
    v5 = *MEMORY[0x277D02168];
    v6 = *(v3 + v5);
    *(v3 + v5) = v4;

    return MEMORY[0x2821F96F8](v4, v6);
  }

  return result;
}

- (uint64_t)addDetailsFromOriginatingGenericEntity:()Internal
{
  if (a3)
  {
    v3 = result;
    v4 = a3;
    v5 = [v4 title];
    v6 = *MEMORY[0x277D02188];
    v7 = *(v3 + v6);
    *(v3 + v6) = v5;

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
      v31 = [v12 sourceKey];
      v32 = [v11 curatedEventKey];
      v33 = [v32 externalId];
      v26 = [v30 originWithType:3 sourceKey:v31 externalKey:v33 fromForwardedMessage:0];

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
      v16 = [v11 parentKey];
      if (!v16)
      {
        v80 = [MEMORY[0x277CCA890] currentHandler];
        [v80 handleFailureInMethod:a2 object:a1 file:@"SGOrigin+Internal.m" lineNumber:143 description:@"Extracted data must have a parent."];
      }

      v17 = MEMORY[0x277D02070];
      v18 = [a1 originTypeForEntityType:{objc_msgSend(v16, "entityType")}];
      v19 = [v16 messageKey];
      v20 = [v19 source];
      v21 = [v16 messageKey];
      v22 = [v21 uniqueIdentifier];
      v23 = [v17 originWithType:v18 sourceKey:v20 externalKey:v22 fromForwardedMessage:{objc_msgSend(v13, "isFromForwardedMessage")}];

      [v23 addDetailsFromOriginatingMessageEntity:v13];
      [v11 entityType];
      v14 = v15;
      v12 = v83;
      if (SGEntityTypeIsContactDetail())
      {
        [v23 addRecipientDetailsFromOriginatingMessageEntity:v13 entity:v83 store:v15];
      }

      v24 = [v83 duplicateKey];
      v25 = [v24 entityType];

      [v23 addSnippetIfNotExistsFromContentOfEntity:v83];
      if (v25 == 2)
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
      v27 = [MEMORY[0x277CCA890] currentHandler];
      v28 = [v12 duplicateKey];
      [v28 entityType];
      v29 = SGEntityTypeDescription();
      [v27 handleFailureInMethod:a2 object:a1 file:@"SGOrigin+Internal.m" lineNumber:241 description:{@"Unsupported type: %@", v29}];

      goto LABEL_10;
    case 4:
      v42 = [v11 parentKey];
      if (!v42)
      {
        v81 = [MEMORY[0x277CCA890] currentHandler];
        [v81 handleFailureInMethod:a2 object:a1 file:@"SGOrigin+Internal.m" lineNumber:167 description:@"Pseudo contacts must be derived from at least one parent entity"];
      }

      v82 = v11;
      if ([v42 entityType] == 5 || objc_msgSend(v42, "entityType") == 13)
      {
        v43 = MEMORY[0x277D02070];
        v44 = [a1 originTypeForEntityType:{objc_msgSend(v42, "entityType")}];
        v45 = [v42 messageKey];
        v46 = [v45 source];
        [v42 messageKey];
        v47 = v42;
        v49 = v48 = v13;
        [v49 uniqueIdentifier];
        v51 = v50 = v14;
        v52 = [v43 originWithType:v44 sourceKey:v46 externalKey:v51 fromForwardedMessage:{objc_msgSend(v48, "isFromForwardedMessage")}];

        v14 = v50;
        v13 = v48;
        v42 = v47;

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

      if ([v42 entityType] == 1)
      {
        v55 = MEMORY[0x277D02070];
        v56 = [v12 sourceKey];
        v57 = [v42 curatedEventKey];
        [v57 externalId];
        v58 = v12;
        v60 = v59 = v13;
        v52 = [v55 originWithType:3 sourceKey:v56 externalKey:v60 fromForwardedMessage:0];

        v13 = v59;
        v12 = v58;

        [v52 addDetailsFromOriginatingCalendarEntity:v13];
        v53 = v52;
        v54 = v58;
        goto LABEL_19;
      }

      if ([v42 entityType] == 16)
      {
        v61 = MEMORY[0x277D02070];
        v62 = [v42 interactionKey];
        v63 = [v62 bundleId];
        [v42 interactionKey];
        v64 = v42;
        v65 = v12;
        v67 = v66 = v13;
        [v67 personHandle];
        v69 = v68 = v14;
        v52 = [v61 originWithType:5 sourceKey:v63 externalKey:v69 fromForwardedMessage:0];

        v14 = v68;
        v13 = v66;
        v12 = v65;
        v42 = v64;

        [v52 addDetailsFromOriginatingInteractionEntity:v13];
        goto LABEL_20;
      }

      v70 = [MEMORY[0x277CCA890] currentHandler];
      [v42 entityType];
      v71 = SGEntityTypeDescription();
      [v70 handleFailureInMethod:a2 object:a1 file:@"SGOrigin+Internal.m" lineNumber:195 description:{@"Dunno how to handle a pseudo contact with a parent entity type: %@", v71}];

LABEL_26:
      v84 = MEMORY[0x277D02070];
      v72 = [a1 originTypeForEntityType:{objc_msgSend(v11, "entityType")}];
      v73 = [v11 messageKey];
      v74 = [v73 source];
      [v11 messageKey];
      v76 = v75 = v13;
      [v76 uniqueIdentifier];
      v78 = v77 = v14;
      v26 = [v84 originWithType:v72 sourceKey:v74 externalKey:v78 fromForwardedMessage:{objc_msgSend(v12, "isFromForwardedMessage")}];

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
      v35 = [v11 interactionKey];
      v36 = [v35 bundleId];
      [v11 interactionKey];
      v38 = v37 = v11;
      [v38 personHandle];
      v39 = v12;
      v41 = v40 = v13;
      v26 = [v34 originWithType:5 sourceKey:v36 externalKey:v41 fromForwardedMessage:0];

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
      v14 = [a1 originForDuplicateKey:v8 entity:v11 parent:0 store:v9];
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
      v10 = [v8 parentKey];

      if (!v10)
      {
        v21 = [MEMORY[0x277CCA890] currentHandler];
        [v21 handleFailureInMethod:a2 object:a1 file:@"SGOrigin+Internal.m" lineNumber:71 description:@"Extracted data must have a parent."];
      }

      v11 = [v9 loadEntityByKey:v8];
      v12 = [v8 parentKey];
      v13 = [v9 loadEntityByKey:v12];

      v14 = [a1 originForDuplicateKey:v8 entity:v11 parent:v13 store:v9];
      goto LABEL_5;
    case 3:
    case 9:
    case 10:
    case 11:
    case 12:
    case 14:
    case 21:
      v15 = [MEMORY[0x277CCA890] currentHandler];
      v16 = [0 duplicateKey];
      [v16 entityType];
      v17 = SGEntityTypeDescription();
      [v15 handleFailureInMethod:a2 object:a1 file:@"SGOrigin+Internal.m" lineNumber:102 description:{@"Unsupported type: %@", v17}];

      goto LABEL_7;
    case 4:
      v19 = [v8 parentKey];
      if (v19 || ([v9 mostRecentParentKeyForDuplicateKey:v8], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v20 = v19;
      }

      else
      {
        v22 = [MEMORY[0x277CCA890] currentHandler];
        [v22 handleFailureInMethod:a2 object:a1 file:@"SGOrigin+Internal.m" lineNumber:78 description:@"Pseudo contacts must be derived from at least one parent entity"];

        v20 = 0;
      }

      v11 = [v9 loadEntityByKey:v8];
      v13 = [v9 loadEntityByKey:v20];
      v14 = [a1 originForDuplicateKey:v8 entity:v11 parent:v13 store:v9];

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
      v7 = [MEMORY[0x277CCA890] currentHandler];
      [v7 handleFailureInMethod:a2 object:a1 file:@"SGOrigin+Internal.m" lineNumber:44 description:{@"Unknown entity type %u", a3}];

      return 0;
    }

    return 1;
  }
}

@end