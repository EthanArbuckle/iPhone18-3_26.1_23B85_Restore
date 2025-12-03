@interface _CDSpotlightItemUtils
+ (BOOL)contentTypeTree:(id)tree conformsToUTIType:(id)type;
+ (BOOL)isLocationBasedItem:(uint64_t)item;
+ (BOOL)uncachedUtType:(void *)type conformsTo:;
+ (_CDContact)_contactForPerson:(uint64_t)person;
+ (id)_contactsForHandles:(void *)handles emailAddresses:(void *)addresses names:;
+ (id)_contactsForPersons:(uint64_t)persons;
+ (id)_locationMetadataForSearchableItem:(id)item userAction:(id)action;
+ (id)_metadataForSearchableItem:(void *)item userAction:;
+ (id)contextDictionaryForSearchableItem:(id)item userAction:(id)action;
+ (id)expectedSupportedUTIs;
+ (id)expectedUTIsForMechanism:(int64_t)mechanism;
+ (id)interactionForSearchableItem:(id)item nsUserName:(id)name;
+ (id)interactionUUIDForSearchableItemWithUID:(id)d bundleID:(id)iD;
+ (id)knowledgeEventsForSearchableItem:(id)item userAction:(id)action;
+ (id)mechanismUtiMap;
+ (id)messageContextDictionaryForSendMessageIntent:(id)intent;
+ (id)policies;
+ (id)querySpotlightItemsWithStartDate:(id)date endDate:(id)endDate getMail:(BOOL)mail getMessages:(BOOL)messages;
+ (id)utiConformCache;
+ (int64_t)getInteractionMechanismForContentUTI:(id)i typeTree:(id)tree;
+ (uint64_t)contentTypeTree:(void *)tree conformsToUTITypes:;
+ (uint64_t)isAllowedSearchableItem:(uint64_t)item;
+ (uint64_t)isSearchableItemInSubscribedCalendar:(uint64_t)calendar;
+ (uint64_t)shouldFilterEmailAddress:(uint64_t)address;
+ (uint64_t)utType:(void *)type conformsTo:;
@end

@implementation _CDSpotlightItemUtils

+ (id)interactionUUIDForSearchableItemWithUID:(id)d bundleID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v7 = objc_autoreleasePoolPush();
  v8 = MEMORY[0x1E696AEC0];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(iDCopy, "hash")}];
  dCopy = [v8 stringWithFormat:@"%@:%@", v9, dCopy];

  objc_autoreleasePoolPop(v7);

  return dCopy;
}

+ (id)_contactsForPersons:(uint64_t)persons
{
  v2 = a2;
  v3 = objc_opt_self();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45___CDSpotlightItemUtils__contactsForPersons___block_invoke;
  v6[3] = &__block_descriptor_40_e30____CDContact_16__0__CSPerson_8l;
  v6[4] = v3;
  v4 = [v2 _pas_mappedArrayWithTransform:v6];

  return v4;
}

+ (_CDContact)_contactForPerson:(uint64_t)person
{
  v2 = a2;
  objc_opt_self();
  handles = [v2 handles];
  firstObject = [handles firstObject];
  v5 = [_CDSpotlightContactResolver resolveContactIfPossibleFromContactIdentifierString:firstObject];

  identifier = [v5 identifier];
  if (identifier && (v7 = identifier, [v5 identifier], v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v8, v7, (isKindOfClass & 1) == 0))
  {
    v11 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      +[_CDSpotlightItemUtils _contactForPerson:];
    }

    identifier2 = 0;
  }

  else
  {
    identifier2 = [v5 identifier];
  }

  if (![identifier2 length])
  {
    contactIdentifier = [v2 contactIdentifier];
    if (contactIdentifier && (v13 = contactIdentifier, [v2 contactIdentifier], v14 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v15 = objc_opt_isKindOfClass(), v14, v13, (v15 & 1) == 0))
    {
      v18 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        +[_CDSpotlightItemUtils _contactForPerson:];
      }
    }

    else
    {
      contactIdentifier2 = [v2 contactIdentifier];
      v17 = [contactIdentifier2 length];

      if (!v17)
      {
        goto LABEL_15;
      }

      [v2 contactIdentifier];
      identifier2 = v18 = identifier2;
    }
  }

LABEL_15:
  if (identifier2)
  {
    v19 = 3;
  }

  else
  {
    v19 = 0;
  }

  handleIdentifier = [v2 handleIdentifier];
  v21 = [_CDContact typeFromString:handleIdentifier];

  handles2 = [v2 handles];
  firstObject2 = [handles2 firstObject];
  v24 = [_CDContactResolver normalizedStringFromContactString:firstObject2];

  v25 = [_CDContact alloc];
  displayName = [v2 displayName];
  v27 = [(_CDContact *)v25 initWithIdentifier:v24 type:v21 customIdentifier:0 displayName:displayName displayType:0 personId:identifier2 personIdType:v19];

  return v27;
}

+ (uint64_t)isSearchableItemInSubscribedCalendar:(uint64_t)calendar
{
  v2 = a2;
  objc_opt_self();
  attributeSet = [v2 attributeSet];
  v4 = [attributeSet attributeForKey:@"com_apple_mobilecal_calendarIsSubscribedCalendar"];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v6 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(_CDSpotlightItemUtils *)v4 isSearchableItemInSubscribedCalendar:v2];
    }

    bOOLValue = 0;
  }

  else
  {
    bOOLValue = [v4 BOOLValue];
  }

  return bOOLValue;
}

+ (uint64_t)isAllowedSearchableItem:(uint64_t)item
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = +[_CDInteractionPolicies disallowedCSSIBundleIds];
  bundleID = [v2 bundleID];
  v6 = [v4 containsObject:bundleID];

  if ((v6 & 1) == 0)
  {
    v8 = +[_CDConstants mobileCalendarBundleId];
    bundleID2 = [v2 bundleID];
    v10 = [v8 isEqual:bundleID2];

    if (v10)
    {
      attributeSet = [v2 attributeSet];
      contentType = [attributeSet contentType];
      attributeSet2 = [v2 attributeSet];
      contentTypeTree = [attributeSet2 contentTypeTree];
      v15 = [_CDSpotlightItemUtils getInteractionMechanismForContentUTI:contentType typeTree:contentTypeTree];

      if (v15 == 5)
      {
        attributeSet3 = [v2 attributeSet];
        calendarDelegateIdentifier = [attributeSet3 calendarDelegateIdentifier];

        if (calendarDelegateIdentifier)
        {
          domainIdentifier = +[_CDLogging interactionChannel];
          if (os_log_type_enabled(domainIdentifier, OS_LOG_TYPE_DEBUG))
          {
            +[_CDSpotlightItemUtils isAllowedSearchableItem:];
          }

          goto LABEL_9;
        }

        v21 = [(_CDSpotlightItemUtils *)v3 isSearchableItemInSubscribedCalendar:v2];
        domainIdentifier = +[_CDLogging interactionChannel];
        v22 = os_log_type_enabled(domainIdentifier, OS_LOG_TYPE_DEBUG);
        if (v21)
        {
          if (v22)
          {
            +[_CDSpotlightItemUtils isAllowedSearchableItem:];
          }

          goto LABEL_9;
        }

        if (v22)
        {
          +[_CDSpotlightItemUtils isAllowedSearchableItem:];
        }
      }
    }

    else
    {
      domainIdentifier = [v2 domainIdentifier];
      if ([domainIdentifier isEqualToString:@"attachmentDomain"])
      {
LABEL_9:

LABEL_11:
        v7 = 0;
LABEL_19:

        goto LABEL_20;
      }

      domainIdentifier2 = [v2 domainIdentifier];
      v20 = [domainIdentifier2 isEqualToString:@"chatDomain"];

      if (v20)
      {
        goto LABEL_11;
      }
    }

    v7 = 1;
    goto LABEL_19;
  }

  v7 = 0;
LABEL_20:

  return v7;
}

+ (id)_contactsForHandles:(void *)handles emailAddresses:(void *)addresses names:
{
  v6 = a2;
  handlesCopy = handles;
  addressesCopy = addresses;
  objc_opt_self();
  v9 = [v6 count];
  v10 = [handlesCopy count];
  v11 = [addressesCopy count];
  if (v10 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  if (v9 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v9;
  }

  if ([handlesCopy count] < v13)
  {
    v14 = [MEMORY[0x1E695DEC8] _pas_proxyArrayWithObject:&stru_1F05B9908 repetitions:v13];

    handlesCopy = v14;
  }

  if ([v6 count] < v13)
  {
    v15 = handlesCopy;

    v6 = v15;
  }

  if ([addressesCopy count] < v13)
  {
    v16 = [MEMORY[0x1E695DEC8] _pas_proxyArrayWithObject:&stru_1F05B9908 repetitions:v13];

    addressesCopy = v16;
  }

  v32 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v13];
  if (v13)
  {
    v17 = 0;
    while (1)
    {
      v18 = v13;
      v19 = [handlesCopy objectAtIndexedSubscript:v17];
      v20 = [v19 length];

      if (v20)
      {
        break;
      }

      v26 = [v31 objectAtIndexedSubscript:v17];
      v22 = [v26 length];

      if (v22)
      {
        v21 = [v31 objectAtIndexedSubscript:v17];
        if ([v21 containsString:@"@"])
        {
          goto LABEL_17;
        }

        v22 = [v21 rangeOfString:@"^\\+[-0-9]+$" options:1024] != 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = 0;
      }

LABEL_18:
      v23 = addressesCopy;
      v24 = [addressesCopy objectAtIndexedSubscript:v17];
      if ([v24 length])
      {
        if (!v21)
        {
          goto LABEL_25;
        }
      }

      else
      {

        v24 = 0;
        if (!v21)
        {
LABEL_25:
          v25 = 0;
          goto LABEL_26;
        }
      }

      v25 = [_CDSpotlightContactResolver resolveContactIfPossibleFromContactIdentifierString:v21];
LABEL_26:
      identifier = [v25 identifier];
      if (identifier)
      {
        v28 = 3;
      }

      else
      {
        v28 = 0;
      }

      v29 = [[_CDContact alloc] initWithIdentifier:v21 type:v22 displayName:v24 personId:identifier personIdType:v28];
      [v32 addObject:v29];

      ++v17;
      v13 = v18;
      addressesCopy = v23;
      if (v18 == v17)
      {
        goto LABEL_32;
      }
    }

    v21 = [handlesCopy objectAtIndexedSubscript:v17];
LABEL_17:
    v22 = 2;
    goto LABEL_18;
  }

LABEL_32:

  return v32;
}

+ (id)policies
{
  objc_opt_self();
  if (policies_onceToken != -1)
  {
    +[_CDSpotlightItemUtils policies];
  }

  v0 = policies_policies;

  return v0;
}

+ (id)interactionForSearchableItem:(id)item nsUserName:(id)name
{
  v194[3] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  obj = self;
  nameCopy = name;
  v158 = itemCopy;
  if (([(_CDSpotlightItemUtils *)self isAllowedSearchableItem:itemCopy]& 1) != 0)
  {
    v7 = objc_alloc_init(_CDInteraction);
    attributeSet = [itemCopy attributeSet];
    contentType = [attributeSet contentType];
    contentTypeTree = [attributeSet contentTypeTree];
    v9 = +[_CDLogging interactionChannel];
    v159 = attributeSet;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      +[_CDSpotlightItemUtils interactionForSearchableItem:nsUserName:];
    }

    v10 = attributeSet;
    -[_CDInteraction setMechanism:](v7, "setMechanism:", [obj getInteractionMechanismForContentUTI:contentType typeTree:contentTypeTree]);
    if ([(_CDInteraction *)v7 mechanism]== 7)
    {
      v11 = 0;
LABEL_132:

      goto LABEL_141;
    }

    if ([(_CDInteraction *)v7 mechanism]== 1)
    {
      v12 = getCSMailboxInbox();
      v194[0] = v12;
      v13 = getCSMailboxSent();
      v194[1] = v13;
      v14 = getCSMailboxArchive();
      v194[2] = v14;
      standardUserDefaults = [MEMORY[0x1E695DEC8] arrayWithObjects:v194 count:3];

      v186 = 0u;
      v187 = 0u;
      v184 = 0u;
      v185 = 0u;
      mailboxIdentifiers = [v159 mailboxIdentifiers];
      v16 = [mailboxIdentifiers countByEnumeratingWithState:&v184 objects:v193 count:16];
      if (v16)
      {
        v17 = *v185;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v185 != v17)
            {
              objc_enumerationMutation(mailboxIdentifiers);
            }

            if ([standardUserDefaults containsObject:*(*(&v184 + 1) + 8 * i)])
            {

              v10 = v159;
              goto LABEL_17;
            }
          }

          v16 = [mailboxIdentifiers countByEnumeratingWithState:&v184 objects:v193 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_127;
    }

LABEL_17:
    startDate = [v10 startDate];
    [(_CDInteraction *)v7 setStartDate:startDate];

    date = [MEMORY[0x1E695DF00] date];
    [(_CDInteraction *)v7 setUpdateDate:date];

    endDate = [v159 endDate];
    [(_CDInteraction *)v7 setEndDate:endDate];

    startDate2 = [(_CDInteraction *)v7 startDate];
    LODWORD(endDate) = startDate2 == 0;

    if (endDate)
    {
      contentCreationDate = [v159 contentCreationDate];
      [(_CDInteraction *)v7 setStartDate:contentCreationDate];
    }

    endDate2 = [(_CDInteraction *)v7 endDate];
    if (!endDate2)
    {
      goto LABEL_21;
    }

    endDate3 = [(_CDInteraction *)v7 endDate];
    startDate3 = [(_CDInteraction *)v7 startDate];
    [endDate3 timeIntervalSinceDate:startDate3];
    v28 = v27 < 0.0;

    if (v28)
    {
LABEL_21:
      startDate4 = [(_CDInteraction *)v7 startDate];
      [(_CDInteraction *)v7 setEndDate:startDate4];
    }

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    if (([standardUserDefaults BOOLForKey:@"com.apple.coreduetd.recordpastevents"] & 1) == 0)
    {
      v30 = +[_CDSpotlightItemUtils policies];
      v31 = [v30 dateOfOldestAllowedInteractionForMechanism:{-[_CDInteraction mechanism](v7, "mechanism")}];
      startDate5 = [(_CDInteraction *)v7 startDate];
      [startDate5 timeIntervalSinceReferenceDate];
      v34 = v33;
      [v31 timeIntervalSinceReferenceDate];
      v36 = v34 >= v35;

      if (!v36)
      {
LABEL_127:
        v11 = 0;
LABEL_131:

        goto LABEL_132;
      }
    }

    accountIdentifier = [v159 accountIdentifier];
    [(_CDInteraction *)v7 setAccount:accountIdentifier];

    bundleID = [v158 bundleID];
    [(_CDInteraction *)v7 setBundleId:bundleID];

    domainIdentifier = [v158 domainIdentifier];
    [(_CDInteraction *)v7 setDomainIdentifier:domainIdentifier];

    uniqueIdentifier = [v158 uniqueIdentifier];
    bundleID2 = [v158 bundleID];
    v42 = [obj interactionUUIDForSearchableItemWithUID:uniqueIdentifier bundleID:bundleID2];
    [(_CDInteraction *)v7 setUuid:v42];

    bundleId = [(_CDInteraction *)v7 bundleId];
    v44 = +[_CDConstants mobileMessagesBundleId];
    LODWORD(bundleID2) = [bundleId isEqualToString:v44];

    if (bundleID2)
    {
      domainIdentifier2 = [(_CDInteraction *)v7 domainIdentifier];
      alphanumericCharacterSet = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
      v47 = [domainIdentifier2 stringByAddingPercentEncodingWithAllowedCharacters:alphanumericCharacterSet];
      [(_CDInteraction *)v7 setDerivedIntentIdentifier:v47];

      customAttributeDictionary = [v159 customAttributeDictionary];
      v49 = [customAttributeDictionary objectForKeyedSubscript:@"com_apple_mobilesms_groupPhotoPath"];

      v50 = v159;
      if (v49)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v51 = [MEMORY[0x1E695DFF8] fileURLWithPath:v49];
          [(_CDInteraction *)v7 setContentURL:v51];

          v50 = v159;
        }
      }

      customAttributeDictionary2 = [v50 customAttributeDictionary];
      v53 = [customAttributeDictionary2 objectForKeyedSubscript:@"com_apple_mobilesms_chatUniqueIdentifier"];

      if (v53)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(_CDInteraction *)v7 setAccount:v53];
        }
      }
    }

    [(_CDInteraction *)v7 setNsUserName:nameCopy];
    context = objc_autoreleasePoolPush();
    accountHandles = [v159 accountHandles];
    v55 = objc_opt_new();
    v182 = 0u;
    v183 = 0u;
    v180 = 0u;
    v181 = 0u;
    v56 = accountHandles;
    v57 = [v56 countByEnumeratingWithState:&v180 objects:v192 count:16];
    if (v57)
    {
      v58 = *v181;
      do
      {
        for (j = 0; j != v57; ++j)
        {
          if (*v181 != v58)
          {
            objc_enumerationMutation(v56);
          }

          v60 = [_CDContactResolver normalizedStringFromContactString:*(*(&v180 + 1) + 8 * j)];
          [v55 addObject:v60];
        }

        v57 = [v56 countByEnumeratingWithState:&v180 objects:v192 count:16];
      }

      while (v57);
    }

    if ([(_CDInteraction *)v7 mechanism]== 5)
    {
      v61 = [v159 attributeForKey:@"com_apple_mobilecal_recipientParticipationStatuses"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v62 = v61;
        if ([v62 indexOfObjectPassingTest:&__block_literal_global_567] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v63 = v62;
        }

        else
        {
          v63 = 0;
        }
      }

      else
      {
        v63 = 0;
      }
    }

    else
    {
      v63 = 0;
    }

    v64 = v63;

    authors = [v159 authors];
    v66 = [authors count] == 0;

    if (v66)
    {
      authorAddresses = [v159 authorAddresses];
      authorEmailAddresses = [v159 authorEmailAddresses];
      authorNames = [v159 authorNames];
      v150 = [(_CDSpotlightItemUtils *)obj _contactsForHandles:authorAddresses emailAddresses:authorEmailAddresses names:authorNames];
    }

    else
    {
      authorAddresses = [v159 authors];
      v150 = [(_CDSpotlightItemUtils *)obj _contactsForPersons:authorAddresses];
    }

    primaryRecipients = [v159 primaryRecipients];
    v178[0] = MEMORY[0x1E69E9820];
    v178[1] = 3221225472;
    v178[2] = __65___CDSpotlightItemUtils_interactionForSearchableItem_nsUserName___block_invoke_2;
    v178[3] = &unk_1E7368658;
    v145 = v64;
    v179 = v145;
    v71 = [primaryRecipients _pas_mappedArrayWithIndexedTransform:v178];
    v72 = [v71 mutableCopy];

    v176 = 0u;
    v177 = 0u;
    v174 = 0u;
    v175 = 0u;
    additionalRecipients = [v159 additionalRecipients];
    v74 = additionalRecipients;
    v75 = MEMORY[0x1E695E0F0];
    if (additionalRecipients)
    {
      v76 = additionalRecipients;
    }

    else
    {
      v76 = MEMORY[0x1E695E0F0];
    }

    v190[0] = v76;
    hiddenAdditionalRecipients = [v159 hiddenAdditionalRecipients];
    v78 = hiddenAdditionalRecipients;
    if (hiddenAdditionalRecipients)
    {
      v79 = hiddenAdditionalRecipients;
    }

    else
    {
      v79 = v75;
    }

    v190[1] = v79;
    v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v190 count:2];

    v81 = [v80 countByEnumeratingWithState:&v174 objects:v191 count:16];
    if (v81)
    {
      v82 = *v175;
      do
      {
        for (k = 0; k != v81; ++k)
        {
          if (*v175 != v82)
          {
            objc_enumerationMutation(v80);
          }

          v84 = [*(*(&v174 + 1) + 8 * k) _pas_mappedArrayWithTransform:&__block_literal_global_572];
          [v72 addObjectsFromArray:v84];
        }

        v81 = [v80 countByEnumeratingWithState:&v174 objects:v191 count:16];
      }

      while (v81);
    }

    if ([v72 count])
    {
      v171[0] = MEMORY[0x1E69E9820];
      v171[1] = 3221225472;
      v171[2] = __65___CDSpotlightItemUtils_interactionForSearchableItem_nsUserName___block_invoke_4;
      v171[3] = &unk_1E73686A0;
      v173 = obj;
      v172 = v150;
      v149 = [v72 _pas_mappedArrayWithTransform:v171];
      recipientAddresses = v172;
    }

    else
    {
      recipientAddresses = [v159 recipientAddresses];
      recipientEmailAddresses = [v159 recipientEmailAddresses];
      recipientNames = [v159 recipientNames];
      v149 = [(_CDSpotlightItemUtils *)obj _contactsForHandles:recipientAddresses emailAddresses:recipientEmailAddresses names:recipientNames];
    }

    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    obja = v150;
    v88 = [obja countByEnumeratingWithState:&v167 objects:v189 count:16];
    if (v88)
    {
      v89 = *v168;
      while (2)
      {
        for (m = 0; m != v88; ++m)
        {
          if (*v168 != v89)
          {
            objc_enumerationMutation(obja);
          }

          v91 = *(*(&v167 + 1) + 8 * m);
          identifier = [v91 identifier];
          v93 = [v55 containsObject:identifier];

          if (v93)
          {
            v94 = v91;
            v148 = 1;
            goto LABEL_77;
          }
        }

        v88 = [obja countByEnumeratingWithState:&v167 objects:v189 count:16];
        if (v88)
        {
          continue;
        }

        break;
      }
    }

    v94 = 0;
    v148 = 0;
LABEL_77:

    v165[0] = MEMORY[0x1E69E9820];
    v165[1] = 3221225472;
    v165[2] = __65___CDSpotlightItemUtils_interactionForSearchableItem_nsUserName___block_invoke_5;
    v165[3] = &unk_1E73686C8;
    v144 = v55;
    v166 = v144;
    v95 = v149;
    v96 = [v149 indexOfObjectPassingTest:v165];
    if (v96 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v147 = 0;
    }

    else
    {
      v147 = [v149 objectAtIndexedSubscript:v96];

      v95 = v149;
    }

    v164[0] = MEMORY[0x1E69E9820];
    v164[1] = 3221225472;
    v164[2] = __65___CDSpotlightItemUtils_interactionForSearchableItem_nsUserName___block_invoke_6;
    v164[3] = &__block_descriptor_40_e23_B24__0___CDContact_8Q16l;
    v164[4] = v96;
    v151 = [v95 _pas_filteredArrayWithIndexedTest:v164];

    if (v94)
    {
      [(_CDInteraction *)v7 setSender:v94];
    }

    else if ([obja count])
    {
      firstObject = [obja firstObject];
      [(_CDInteraction *)v7 setSender:firstObject];
    }

    [(_CDInteraction *)v7 setRecipients:v151];
    displayName = [v159 displayName];
    [(_CDInteraction *)v7 setGroupName:displayName];

    bundleId2 = [(_CDInteraction *)v7 bundleId];
    v100 = +[_CDConstants mobileMessagesBundleId];
    v101 = [bundleId2 isEqual:v100];

    if (v101)
    {
      groupName = [(_CDInteraction *)v7 groupName];
      if (groupName)
      {
LABEL_86:

        goto LABEL_87;
      }

      recipients = [(_CDInteraction *)v7 recipients];
      v108 = [recipients count] > 1;

      if (v108)
      {
        domainIdentifier3 = [(_CDInteraction *)v7 domainIdentifier];
        groupName = sIMSPIGetDisplayNameAndParticipantsForChatWithGUID(domainIdentifier3);

        if ([groupName count])
        {
          firstObject2 = [groupName firstObject];
          v111 = objc_opt_respondsToSelector();

          if (v111)
          {
            firstObject3 = [groupName firstObject];
            displayName2 = [firstObject3 displayName];
            [(_CDInteraction *)v7 setGroupName:displayName2];
          }

          else
          {
            firstObject3 = +[_CDLogging interactionChannel];
            if (os_log_type_enabled(firstObject3, OS_LOG_TYPE_ERROR))
            {
              [_CDSpotlightItemUtils interactionForSearchableItem:firstObject3 nsUserName:?];
            }
          }

          groupName2 = [(_CDInteraction *)v7 groupName];
          v140 = groupName2 == 0;

          if (!v140)
          {
            v141 = +[_CDLogging interactionChannel];
            if (os_log_type_enabled(v141, OS_LOG_TYPE_DEBUG))
            {
              [(_CDInteraction *)v7 groupName];
              objc_claimAutoreleasedReturnValue();
              [v158 uniqueIdentifier];
              objc_claimAutoreleasedReturnValue();
              +[_CDSpotlightItemUtils interactionForSearchableItem:nsUserName:];
            }
          }
        }

        goto LABEL_86;
      }
    }

LABEL_87:
    [(_CDInteraction *)v7 setDirection:v148];
    isExistingThread = [v159 isExistingThread];

    if (isExistingThread)
    {
      isExistingThread2 = [v159 isExistingThread];
      -[_CDInteraction setIsResponse:](v7, "setIsResponse:", [isExistingThread2 BOOLValue]);
    }

    else
    {
      if ([(_CDInteraction *)v7 mechanism]!= 1)
      {
        goto LABEL_99;
      }

      emailHeaders = [v159 emailHeaders];
      isExistingThread2 = emailHeaders;
      if (emailHeaders)
      {
        displayName3 = [emailHeaders objectForKeyedSubscript:@"references"];
        [(_CDInteraction *)v7 setIsResponse:displayName3 != 0];
      }

      else
      {
        displayName3 = [v159 displayName];
        -[_CDInteraction setIsResponse:](v7, "setIsResponse:", [displayName3 hasPrefix:@"Re:"]);
      }
    }

LABEL_99:
    if ([(_CDInteraction *)v7 mechanism]== 5)
    {
      v114 = objc_autoreleasePoolPush();
      title = [v159 title];
      v116 = [_CDStringTokenizer extractNormalizedKeywords:title];
      allObjects = [v116 allObjects];
      [(_CDInteraction *)v7 setKeywords:allObjects];

      sender = [(_CDInteraction *)v7 sender];
      if (sender)
      {
        sender2 = [(_CDInteraction *)v7 sender];
        v120 = [sender2 participantStatus] == 0;

        if (v120)
        {
          sender3 = [(_CDInteraction *)v7 sender];
          [sender3 setParticipantStatus:2];
        }
      }

      if (v148)
      {
        sender4 = [(_CDInteraction *)v7 sender];
        -[_CDInteraction setSelfParticipantStatus:](v7, "setSelfParticipantStatus:", [sender4 participantStatus]);
      }

      else if (v147)
      {
        -[_CDInteraction setSelfParticipantStatus:](v7, "setSelfParticipantStatus:", [v147 participantStatus]);
      }

      [(_CDInteraction *)v7 setDirection:v148];

      objc_autoreleasePoolPop(v114);
    }

    if ([(_CDInteraction *)v7 mechanism]== 1)
    {
      sender5 = [(_CDInteraction *)v7 sender];
      v124 = __65___CDSpotlightItemUtils_interactionForSearchableItem_nsUserName___block_invoke_581(sender5, sender5);

      if (v124)
      {
        [(_CDInteraction *)v7 setSender:0];
      }

      v125 = MEMORY[0x1E695DF70];
      recipients2 = [(_CDInteraction *)v7 recipients];
      v127 = [v125 arrayWithCapacity:{objc_msgSend(recipients2, "count")}];

      v162 = 0u;
      v163 = 0u;
      v160 = 0u;
      v161 = 0u;
      recipients3 = [(_CDInteraction *)v7 recipients];
      v129 = [recipients3 countByEnumeratingWithState:&v160 objects:v188 count:16];
      v130 = v129;
      if (v129)
      {
        v131 = *v161;
        do
        {
          v132 = 0;
          do
          {
            if (*v161 != v131)
            {
              objc_enumerationMutation(recipients3);
            }

            v133 = *(*(&v160 + 1) + 8 * v132);
            v129 = __65___CDSpotlightItemUtils_interactionForSearchableItem_nsUserName___block_invoke_581(v129, v133);
            if ((v129 & 1) == 0)
            {
              v129 = [v127 addObject:v133];
            }

            ++v132;
          }

          while (v130 != v132);
          v129 = [recipients3 countByEnumeratingWithState:&v160 objects:v188 count:16];
          v130 = v129;
        }

        while (v129);
      }

      [(_CDInteraction *)v7 setRecipients:v127];
    }

    sender6 = [(_CDInteraction *)v7 sender];
    if (sender6)
    {
      v135 = 0;
    }

    else
    {
      recipients4 = [(_CDInteraction *)v7 recipients];
      v137 = [recipients4 count] == 0;

      if (!v137)
      {
        v135 = 0;
LABEL_126:

        objc_autoreleasePoolPop(context);
        if ((v135 & 1) == 0)
        {
          v138 = +[_CDLogging interactionChannel];
          if (os_log_type_enabled(v138, OS_LOG_TYPE_DEBUG))
          {
            +[_CDSpotlightItemUtils interactionForSearchableItem:nsUserName:];
          }

          v7 = v7;
          v11 = v7;
          goto LABEL_131;
        }

        goto LABEL_127;
      }

      v135 = 1;
      sender6 = v7;
      v7 = 0;
    }

    goto LABEL_126;
  }

  v11 = 0;
LABEL_141:

  v142 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (uint64_t)shouldFilterEmailAddress:(uint64_t)address
{
  v2 = a2;
  objc_opt_self();
  if (shouldFilterEmailAddress__onceToken != -1)
  {
    +[_CDSpotlightItemUtils shouldFilterEmailAddress:];
  }

  v3 = [v2 componentsSeparatedByString:@"@"];

  if ([v3 count] < 2)
  {
    v5 = 0;
  }

  else
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [shouldFilterEmailAddress___localPartBlackList containsObject:v4];
  }

  return v5;
}

+ (id)_metadataForSearchableItem:(void *)item userAction:
{
  v75 = *MEMORY[0x1E69E9840];
  v4 = a2;
  itemCopy = item;
  objc_opt_self();
  v6 = objc_opt_new();
  uaIdentifier = [itemCopy uaIdentifier];
  uUIDString = [uaIdentifier UUIDString];
  v9 = +[_DKApplicationActivityMetadataKey userActivityUUID];
  [v6 setObject:uUIDString forKeyedSubscript:v9];

  attributeSet = [v4 attributeSet];
  contentDescription = [attributeSet contentDescription];

  if (contentDescription)
  {
    attributeSet2 = [v4 attributeSet];
    contentDescription2 = [attributeSet2 contentDescription];
    v14 = +[_DKApplicationActivityMetadataKey contentDescription];
    [v6 setObject:contentDescription2 forKeyedSubscript:v14];
  }

  attributeSet3 = [v4 attributeSet];
  suggestedInvocationPhrase = [attributeSet3 suggestedInvocationPhrase];

  if (suggestedInvocationPhrase)
  {
    attributeSet4 = [v4 attributeSet];
    suggestedInvocationPhrase2 = [attributeSet4 suggestedInvocationPhrase];
    v19 = +[_DKApplicationActivityMetadataKey suggestedInvocationPhrase];
    [v6 setObject:suggestedInvocationPhrase2 forKeyedSubscript:v19];
  }

  attributeSet5 = [v4 attributeSet];
  attributeDictionary = [attributeSet5 attributeDictionary];
  v22 = [attributeDictionary objectForKeyedSubscript:@"kMDItemRelatedUniqueIdentifier"];

  if (v22)
  {
    v23 = +[_DKApplicationActivityMetadataKey itemRelatedUniqueIdentifier];
    [v6 setObject:v22 forKey:v23];
  }

  attributeSet6 = [v4 attributeSet];
  attributeDictionary2 = [attributeSet6 attributeDictionary];
  v26 = [attributeDictionary2 objectForKeyedSubscript:@"kMDItemContentURL"];

  if (v26)
  {
    v27 = +[_DKApplicationActivityMetadataKey itemRelatedContentURL];
    [v6 setObject:v26 forKeyedSubscript:v27];
  }

  v69 = v26;
  attributeSet7 = [v4 attributeSet];
  shortcutAvailability = [attributeSet7 shortcutAvailability];

  if (shortcutAvailability)
  {
    attributeSet8 = [v4 attributeSet];
    shortcutAvailability2 = [attributeSet8 shortcutAvailability];
    v32 = +[_DKApplicationActivityMetadataKey shortcutAvailability];
    [v6 setObject:shortcutAvailability2 forKeyedSubscript:v32];
  }

  eligibility = [itemCopy eligibility];
  v34 = [MEMORY[0x1E696AD98] numberWithBool:(eligibility >> 2) & 1];
  v35 = +[_DKApplicationActivityMetadataKey isPubliclyIndexable];
  [v6 setObject:v34 forKey:v35];

  eligibility2 = [itemCopy eligibility];
  v37 = [MEMORY[0x1E696AD98] numberWithBool:(eligibility2 >> 3) & 1];
  v38 = +[_DKApplicationActivityMetadataKey isEligibleForPrediction];
  [v6 setObject:v37 forKeyedSubscript:v38];

  attributeSet9 = [v4 attributeSet];
  userActivityType = [attributeSet9 userActivityType];

  if (userActivityType)
  {
    attributeSet10 = [v4 attributeSet];
    userActivityType2 = [attributeSet10 userActivityType];
    v43 = +[_DKApplicationActivityMetadataKey activityType];
    [v6 setObject:userActivityType2 forKey:v43];

    attributeSet11 = [v4 attributeSet];
    attributeDictionary3 = [attributeSet11 attributeDictionary];
    v46 = [attributeDictionary3 objectForKeyedSubscript:@"_kMDItemUserActivityRequiredString"];

    if (v46)
    {
      v68 = v22;
      v47 = [v46 copy];
      v48 = +[_DKApplicationActivityMetadataKey userActivityRequiredString];
      [v6 setObject:v47 forKeyedSubscript:v48];

      v67 = v46;
      v49 = [objc_alloc(MEMORY[0x1E69636A8]) _initWithUserActivityStrings:v46 secondaryString:0 optionalData:0];
      v50 = v49;
      if (v49)
      {
        userInfo = [v49 userInfo];

        if (userInfo)
        {
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v52 = [&unk_1F05EF248 countByEnumeratingWithState:&v70 objects:v74 count:16];
          if (v52)
          {
            v53 = v52;
            v54 = *v71;
            do
            {
              for (i = 0; i != v53; ++i)
              {
                if (*v71 != v54)
                {
                  objc_enumerationMutation(&unk_1F05EF248);
                }

                v56 = *(*(&v70 + 1) + 8 * i);
                userInfo2 = [v50 userInfo];
                v58 = [userInfo2 objectForKeyedSubscript:v56];

                if (v58)
                {
                  [v6 setObject:v58 forKeyedSubscript:v56];
                }
              }

              v53 = [&unk_1F05EF248 countByEnumeratingWithState:&v70 objects:v74 count:16];
            }

            while (v53);
          }
        }
      }

      v22 = v68;
      v46 = v67;
    }
  }

  expirationDate = [v4 expirationDate];

  if (expirationDate)
  {
    expirationDate2 = [v4 expirationDate];
    v61 = +[_DKApplicationActivityMetadataKey expirationDate];
    [v6 setObject:expirationDate2 forKey:v61];
  }

  itemIdentifier = [itemCopy itemIdentifier];

  if (itemIdentifier)
  {
    itemIdentifier2 = [itemCopy itemIdentifier];
    v64 = +[_DKApplicationActivityMetadataKey itemIdentifier];
    [v6 setObject:itemIdentifier2 forKey:v64];
  }

  v65 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)_locationMetadataForSearchableItem:(id)item userAction:(id)action
{
  itemCopy = item;
  v6 = [_CDSpotlightItemUtils _metadataForSearchableItem:itemCopy userAction:action];
  v7 = [v6 mutableCopy];

  attributeSet = [itemCopy attributeSet];
  namedLocation = [attributeSet namedLocation];

  if (namedLocation)
  {
    attributeSet2 = [itemCopy attributeSet];
    namedLocation2 = [attributeSet2 namedLocation];
    v12 = +[_DKLocationApplicationActivityMetadataKey locationName];
    [v7 setObject:namedLocation2 forKeyedSubscript:v12];
  }

  attributeSet3 = [itemCopy attributeSet];
  latitude = [attributeSet3 latitude];

  if (latitude)
  {
    attributeSet4 = [itemCopy attributeSet];
    latitude2 = [attributeSet4 latitude];
    v17 = +[_DKLocationApplicationActivityMetadataKey latitude];
    [v7 setObject:latitude2 forKeyedSubscript:v17];
  }

  attributeSet5 = [itemCopy attributeSet];
  longitude = [attributeSet5 longitude];

  if (longitude)
  {
    attributeSet6 = [itemCopy attributeSet];
    longitude2 = [attributeSet6 longitude];
    v22 = +[_DKLocationApplicationActivityMetadataKey longitude];
    [v7 setObject:longitude2 forKeyedSubscript:v22];
  }

  attributeSet7 = [itemCopy attributeSet];
  city = [attributeSet7 city];

  if (city)
  {
    attributeSet8 = [itemCopy attributeSet];
    city2 = [attributeSet8 city];
    v27 = +[_DKLocationApplicationActivityMetadataKey city];
    [v7 setObject:city2 forKeyedSubscript:v27];
  }

  attributeSet9 = [itemCopy attributeSet];
  stateOrProvince = [attributeSet9 stateOrProvince];

  if (stateOrProvince)
  {
    attributeSet10 = [itemCopy attributeSet];
    stateOrProvince2 = [attributeSet10 stateOrProvince];
    v32 = +[_DKLocationApplicationActivityMetadataKey stateOrProvince];
    [v7 setObject:stateOrProvince2 forKeyedSubscript:v32];
  }

  attributeSet11 = [itemCopy attributeSet];
  country = [attributeSet11 country];

  if (country)
  {
    attributeSet12 = [itemCopy attributeSet];
    country2 = [attributeSet12 country];
    v37 = +[_DKLocationApplicationActivityMetadataKey country];
    [v7 setObject:country2 forKeyedSubscript:v37];
  }

  attributeSet13 = [itemCopy attributeSet];
  thoroughfare = [attributeSet13 thoroughfare];

  if (thoroughfare)
  {
    attributeSet14 = [itemCopy attributeSet];
    thoroughfare2 = [attributeSet14 thoroughfare];
    v42 = +[_DKLocationApplicationActivityMetadataKey thoroughfare];
    [v7 setObject:thoroughfare2 forKeyedSubscript:v42];
  }

  attributeSet15 = [itemCopy attributeSet];
  fullyFormattedAddress = [attributeSet15 fullyFormattedAddress];

  if (fullyFormattedAddress)
  {
    attributeSet16 = [itemCopy attributeSet];
    fullyFormattedAddress2 = [attributeSet16 fullyFormattedAddress];
    v47 = +[_DKLocationApplicationActivityMetadataKey fullyFormattedAddress];
    [v7 setObject:fullyFormattedAddress2 forKeyedSubscript:v47];
  }

  attributeSet17 = [itemCopy attributeSet];
  subThoroughfare = [attributeSet17 subThoroughfare];

  if (subThoroughfare)
  {
    attributeSet18 = [itemCopy attributeSet];
    subThoroughfare2 = [attributeSet18 subThoroughfare];
    v52 = +[_DKLocationApplicationActivityMetadataKey subThoroughfare];
    [v7 setObject:subThoroughfare2 forKeyedSubscript:v52];
  }

  attributeSet19 = [itemCopy attributeSet];
  postalCode = [attributeSet19 postalCode];

  if (postalCode)
  {
    attributeSet20 = [itemCopy attributeSet];
    postalCode2 = [attributeSet20 postalCode];
    v57 = +[_DKLocationApplicationActivityMetadataKey postalCode];
    [v7 setObject:postalCode2 forKeyedSubscript:v57];
  }

  attributeSet21 = [itemCopy attributeSet];
  phoneNumbers = [attributeSet21 phoneNumbers];

  if (phoneNumbers)
  {
    attributeSet22 = [itemCopy attributeSet];
    phoneNumbers2 = [attributeSet22 phoneNumbers];
    v62 = +[_DKLocationApplicationActivityMetadataKey phoneNumbers];
    [v7 setObject:phoneNumbers2 forKeyedSubscript:v62];
  }

  attributeSet23 = [itemCopy attributeSet];
  displayName = [attributeSet23 displayName];

  if (displayName)
  {
    attributeSet24 = [itemCopy attributeSet];
    displayName2 = [attributeSet24 displayName];
    v67 = +[_DKLocationApplicationActivityMetadataKey displayName];
    [v7 setObject:displayName2 forKeyedSubscript:v67];
  }

  attributeSet25 = [itemCopy attributeSet];
  v69 = [attributeSet25 URL];

  if (v69)
  {
    attributeSet26 = [itemCopy attributeSet];
    v71 = [attributeSet26 URL];
    absoluteString = [v71 absoluteString];
    v73 = +[_DKLocationApplicationActivityMetadataKey URL];
    [v7 setObject:absoluteString forKeyedSubscript:v73];
  }

  v74 = [v7 copy];

  return v74;
}

+ (BOOL)isLocationBasedItem:(uint64_t)item
{
  v2 = a2;
  objc_opt_self();
  attributeSet = [v2 attributeSet];
  namedLocation = [attributeSet namedLocation];
  if (namedLocation)
  {
    v5 = 1;
  }

  else
  {
    attributeSet2 = [v2 attributeSet];
    city = [attributeSet2 city];
    if (city)
    {
      v5 = 1;
    }

    else
    {
      attributeSet3 = [v2 attributeSet];
      stateOrProvince = [attributeSet3 stateOrProvince];
      if (stateOrProvince)
      {
        v5 = 1;
      }

      else
      {
        attributeSet4 = [v2 attributeSet];
        country = [attributeSet4 country];
        if (country)
        {
          v5 = 1;
        }

        else
        {
          attributeSet5 = [v2 attributeSet];
          latitude = [attributeSet5 latitude];
          if (latitude)
          {
            v5 = 1;
          }

          else
          {
            attributeSet6 = [v2 attributeSet];
            longitude = [attributeSet6 longitude];
            if (longitude)
            {
              v5 = 1;
            }

            else
            {
              attributeSet7 = [v2 attributeSet];
              thoroughfare = [attributeSet7 thoroughfare];
              if (thoroughfare)
              {
                v5 = 1;
              }

              else
              {
                attributeSet8 = [v2 attributeSet];
                subThoroughfare = [attributeSet8 subThoroughfare];
                if (subThoroughfare)
                {
                  v5 = 1;
                }

                else
                {
                  attributeSet9 = [v2 attributeSet];
                  fullyFormattedAddress = [attributeSet9 fullyFormattedAddress];
                  if (fullyFormattedAddress)
                  {
                    v5 = 1;
                  }

                  else
                  {
                    attributeSet10 = [v2 attributeSet];
                    postalCode = [attributeSet10 postalCode];
                    v5 = postalCode != 0;

                    fullyFormattedAddress = 0;
                  }

                  subThoroughfare = 0;
                }

                thoroughfare = 0;
              }

              longitude = 0;
            }

            latitude = 0;
          }
        }
      }
    }
  }

  return v5;
}

+ (id)knowledgeEventsForSearchableItem:(id)item userAction:(id)action
{
  v51 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  actionCopy = action;
  v41 = objc_opt_new();
  madeCurrentDates = [actionCopy madeCurrentDates];
  v38 = [madeCurrentDates sortedArrayUsingSelector:sel_compare_];

  v42 = actionCopy;
  sentToIndexerDates = [actionCopy sentToIndexerDates];
  v8 = [sentToIndexerDates sortedArrayUsingSelector:sel_compare_];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v8;
  v39 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v39)
  {
    v37 = *v47;
    do
    {
      v9 = 0;
      do
      {
        if (*v47 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v46 + 1) + 8 * v9);
        v44 = v9;
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __69___CDSpotlightItemUtils_knowledgeEventsForSearchableItem_userAction___block_invoke;
        v45[3] = &unk_1E7368710;
        v45[4] = v10;
        v45[5] = 0x4000000000000000;
        v11 = [v38 indexOfObjectPassingTest:v45];
        bundleID = [itemCopy bundleID];
        v13 = [_DKSource sourceForSearchableItem:itemCopy bundleID:bundleID];

        v14 = [(_CDSpotlightItemUtils *)self _metadataForSearchableItem:itemCopy userAction:v42];
        v15 = [v14 mutableCopy];

        v16 = v11 != 0x7FFFFFFFFFFFFFFFLL;
        v17 = [MEMORY[0x1E696AD98] numberWithInt:v16];
        v18 = +[_DKApplicationActivityMetadataKey beginningOfActivity];
        [v15 setObject:v17 forKeyedSubscript:v18];

        v19 = +[_DKSystemEventStreams appActivityStream];
        bundleID2 = [itemCopy bundleID];
        v21 = [_DKBundleIdentifier withBundle:bundleID2];
        v22 = [v15 copy];
        v23 = [_DKEvent eventWithStream:v19 source:v13 startDate:v10 endDate:v10 value:v21 confidence:v22 metadata:1.0];
        [v41 addObject:v23];

        if ([_CDSpotlightItemUtils isLocationBasedItem:itemCopy])
        {
          v24 = [self _locationMetadataForSearchableItem:itemCopy userAction:v42];
          v25 = [v24 mutableCopy];

          v26 = [MEMORY[0x1E696AD98] numberWithInt:v16];
          v27 = +[_DKApplicationActivityMetadataKey beginningOfActivity];
          [v25 setObject:v26 forKeyedSubscript:v27];

          v28 = +[_DKSystemEventStreams appLocationActivityStream];
          bundleID3 = [itemCopy bundleID];
          v30 = [_DKBundleIdentifier withBundle:bundleID3];
          v31 = [v25 copy];
          v32 = [_DKEvent eventWithStream:v28 source:v13 startDate:v10 endDate:v10 value:v30 confidence:v31 metadata:1.0];
          [v41 addObject:v32];
        }

        ++v9;
      }

      while (v39 != v44 + 1);
      v39 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v39);
  }

  v33 = [v41 copy];
  v34 = *MEMORY[0x1E69E9840];

  return v33;
}

+ (id)contextDictionaryForSearchableItem:(id)item userAction:(id)action
{
  itemCopy = item;
  actionCopy = action;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  uaIdentifier = [actionCopy uaIdentifier];
  uUIDString = [uaIdentifier UUIDString];
  userActivityUUID = [get_CDContextQueriesClass() userActivityUUID];
  [dictionary setObject:uUIDString forKeyedSubscript:userActivityUUID];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(actionCopy, "eligibility")}];
  eligibility = [get_CDContextQueriesClass() eligibility];
  [dictionary setObject:v11 forKeyedSubscript:eligibility];

  attributeSet = [itemCopy attributeSet];
  title = [attributeSet title];

  if (title)
  {
    attributeSet2 = [itemCopy attributeSet];
    title2 = [attributeSet2 title];
    title3 = [get_CDContextQueriesClass() title];
    [dictionary setObject:title2 forKeyedSubscript:title3];
  }

  attributeSet3 = [itemCopy attributeSet];
  userActivityType = [attributeSet3 userActivityType];

  if (userActivityType)
  {
    attributeSet4 = [itemCopy attributeSet];
    userActivityType2 = [attributeSet4 userActivityType];
    userActivityType3 = [get_CDContextQueriesClass() userActivityType];
    [dictionary setObject:userActivityType2 forKeyedSubscript:userActivityType3];
  }

  itemIdentifier = [actionCopy itemIdentifier];

  if (itemIdentifier)
  {
    itemIdentifier2 = [actionCopy itemIdentifier];
    itemIdentifier3 = [get_CDContextQueriesClass() itemIdentifier];
    [dictionary setObject:itemIdentifier2 forKeyedSubscript:itemIdentifier3];
  }

  attributeSet5 = [itemCopy attributeSet];
  attributeDictionary = [attributeSet5 attributeDictionary];
  v28 = [attributeDictionary objectForKeyedSubscript:@"_kMDItemUserActivityRequiredString"];

  if (v28)
  {
    attributeSet6 = [itemCopy attributeSet];
    attributeDictionary2 = [attributeSet6 attributeDictionary];
    v31 = [attributeDictionary2 objectForKeyedSubscript:@"_kMDItemUserActivityRequiredString"];
    userActivityRequiredString = [get_CDContextQueriesClass() userActivityRequiredString];
    [dictionary setObject:v31 forKeyedSubscript:userActivityRequiredString];
  }

  return dictionary;
}

+ (id)messageContextDictionaryForSendMessageIntent:(id)intent
{
  v42[1] = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  incomingKey = [get_CDContextQueriesClass() incomingKey];
  [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:incomingKey];

  conversationIdentifier = [intentCopy conversationIdentifier];
  if (conversationIdentifier)
  {
    conversationIdentifierKey = [get_CDContextQueriesClass() conversationIdentifierKey];
    [v4 setObject:conversationIdentifier forKeyedSubscript:conversationIdentifierKey];
  }

  sender = [intentCopy sender];
  handle = [sender handle];

  if (handle)
  {
    v42[0] = handle;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  v36 = conversationIdentifier;
  senderHandlesKey = [get_CDContextQueriesClass() senderHandlesKey];
  [v4 setObject:v10 forKeyedSubscript:senderHandlesKey];

  if (handle)
  {
  }

  v35 = handle;
  sender2 = [intentCopy sender];
  contactIdentifier = [sender2 contactIdentifier];

  if (contactIdentifier)
  {
    senderContactIDKey = [get_CDContextQueriesClass() senderContactIDKey];
    [v4 setObject:contactIdentifier forKeyedSubscript:senderContactIDKey];
  }

  v34 = contactIdentifier;
  v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  recipients = [intentCopy recipients];
  v18 = [recipients countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v38;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v38 != v20)
        {
          objc_enumerationMutation(recipients);
        }

        v22 = *(*(&v37 + 1) + 8 * i);
        handle2 = [v22 handle];
        if (handle2)
        {
          [v15 addObject:handle2];
        }

        contactIdentifier2 = [v22 contactIdentifier];
        if (contactIdentifier2)
        {
          [v16 addObject:contactIdentifier2];
        }
      }

      v19 = [recipients countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v19);
  }

  allObjects = [v15 allObjects];
  recipientsKey = [get_CDContextQueriesClass() recipientsKey];
  [v4 setObject:allObjects forKeyedSubscript:recipientsKey];

  allObjects2 = [v16 allObjects];
  recipientContactIDsKey = [get_CDContextQueriesClass() recipientContactIDsKey];
  [v4 setObject:allObjects2 forKeyedSubscript:recipientContactIDsKey];

  content = [intentCopy content];
  if (content)
  {
    contentKey = [get_CDContextQueriesClass() contentKey];
    [v4 setObject:content forKeyedSubscript:contentKey];
  }

  v31 = [v4 copy];

  v32 = *MEMORY[0x1E69E9840];

  return v31;
}

+ (id)querySpotlightItemsWithStartDate:(id)date endDate:(id)endDate getMail:(BOOL)mail getMessages:(BOOL)messages
{
  messagesCopy = messages;
  mailCopy = mail;
  v19[2] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  if (mailCopy && messagesCopy)
  {
    v11 = +[_CDSpotlightQuerier queryStringForMail];
    v19[0] = v11;
    v12 = +[_CDSpotlightQuerier queryStringForMessages];
    v19[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v14 = [_CDSpotlightQuerier orQueryStrings:v13];

    if (!v14)
    {
      goto LABEL_11;
    }

LABEL_10:
    v16 = [_CDSpotlightQuerier querySpotlightForPredicateString:v14 startDate:dateCopy endDate:endDateCopy];

    goto LABEL_12;
  }

  if (mailCopy)
  {
    v15 = +[_CDSpotlightQuerier queryStringForMail];
  }

  else
  {
    if (!messagesCopy)
    {
      goto LABEL_11;
    }

    v15 = +[_CDSpotlightQuerier queryStringForMessages];
  }

  v14 = v15;
  if (v15)
  {
    goto LABEL_10;
  }

LABEL_11:
  v16 = MEMORY[0x1E695E0F0];
LABEL_12:

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)expectedSupportedUTIs
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51___CDSpotlightItemUtils_UTI__expectedSupportedUTIs__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (expectedSupportedUTIs_token != -1)
  {
    dispatch_once(&expectedSupportedUTIs_token, block);
  }

  v2 = expectedSupportedUTIs_hardCodedUTIs;

  return v2;
}

+ (id)mechanismUtiMap
{
  objc_opt_self();
  if (mechanismUtiMap_onceToken != -1)
  {
    +[_CDSpotlightItemUtils mechanismUtiMap];
  }

  v0 = mechanismUtiMap_mechanismUtiMap;

  return v0;
}

+ (id)expectedUTIsForMechanism:(int64_t)mechanism
{
  v4 = +[_CDSpotlightItemUtils mechanismUtiMap];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:mechanism];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = v7;

  return v7;
}

+ (BOOL)uncachedUtType:(void *)type conformsTo:
{
  v4 = a2;
  typeCopy = type;
  objc_opt_self();
  if (typeCopy)
  {
    v6 = ([v4 isEqualToString:typeCopy] & 1) != 0 || cd_UTTypeConformsTo(v4, typeCopy) != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)contentTypeTree:(id)tree conformsToUTIType:(id)type
{
  v21 = *MEMORY[0x1E69E9840];
  treeCopy = tree;
  typeCopy = type;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = treeCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if (([(_CDSpotlightItemUtils *)self utType:typeCopy conformsTo:?]& 1) != 0)
        {
          v13 = 1;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (uint64_t)utType:(void *)type conformsTo:
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4 = a2;
  typeCopy = type;
  v6 = objc_opt_self();
  if (typeCopy)
  {
    v7 = v6;
    v8 = +[_CDSpotlightItemUtils utiConformCache];
    v17[0] = v4;
    v17[1] = typeCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v10 = v8;
    objc_sync_enter(v10);
    v11 = [v10 objectForKeyedSubscript:v9];
    v12 = v11;
    if (v11)
    {
      bOOLValue = [v11 BOOLValue];
    }

    else
    {
      bOOLValue = [(_CDSpotlightItemUtils *)v7 uncachedUtType:v4 conformsTo:typeCopy];
      v14 = [MEMORY[0x1E696AD98] numberWithBool:bOOLValue];
      [v10 setObject:v14 forKeyedSubscript:v9];
    }

    objc_sync_exit(v10);
  }

  else
  {
    bOOLValue = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

+ (uint64_t)contentTypeTree:(void *)tree conformsToUTITypes:
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a2;
  treeCopy = tree;
  v6 = objc_opt_self();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = treeCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if ([v6 contentTypeTree:v4 conformsToUTIType:{*(*(&v15 + 1) + 8 * v11), v15}])
        {
          v12 = 1;
          goto LABEL_11;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (id)utiConformCache
{
  objc_opt_self();
  if (utiConformCache_onceToken != -1)
  {
    +[_CDSpotlightItemUtils utiConformCache];
  }

  v0 = utiConformCache_utiConformCache;

  return v0;
}

+ (int64_t)getInteractionMechanismForContentUTI:(id)i typeTree:(id)tree
{
  v29 = *MEMORY[0x1E69E9840];
  iCopy = i;
  treeCopy = tree;
  v8 = [MEMORY[0x1E695E0F0] mutableCopy];
  v9 = v8;
  if (iCopy)
  {
    [v8 addObject:iCopy];
    if (treeCopy)
    {
      [v9 addObjectsFromArray:treeCopy];
    }

    v23 = treeCopy;
    v10 = +[_CDSpotlightItemUtils mechanismUtiMap];
    allKeys = [v10 allKeys];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = allKeys;
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      while (2)
      {
        v16 = 0;
        do
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          integerValue = [*(*(&v24 + 1) + 8 * v16) integerValue];
          v18 = [self expectedUTIsForMechanism:integerValue];
          v19 = [(_CDSpotlightItemUtils *)self contentTypeTree:v9 conformsToUTITypes:v18];

          if (v19)
          {
            v20 = v12;
            goto LABEL_16;
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v20 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [_CDSpotlightItemUtils(UTI) getInteractionMechanismForContentUTI:iCopy typeTree:v20];
    }

    integerValue = 7;
LABEL_16:
    treeCopy = v23;
  }

  else
  {
    v12 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_CDSpotlightItemUtils(UTI) getInteractionMechanismForContentUTI:v12 typeTree:?];
    }

    integerValue = 7;
  }

  v21 = *MEMORY[0x1E69E9840];
  return integerValue;
}

+ (void)_contactForPerson:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v7 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_15();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_contactForPerson:.cold.2()
{
  OUTLINED_FUNCTION_6();
  v9 = *MEMORY[0x1E69E9840];
  v1 = [v0 contactIdentifier];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_15();
  _os_log_fault_impl(v4, v5, OS_LOG_TYPE_FAULT, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)isSearchableItemInSubscribedCalendar:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v9 = [a2 uniqueIdentifier];
  OUTLINED_FUNCTION_15();
  _os_log_fault_impl(v4, v5, OS_LOG_TYPE_FAULT, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)isAllowedSearchableItem:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v10 = *MEMORY[0x1E69E9840];
  v2 = [v1 uniqueIdentifier];
  v3 = [v0 attributeSet];
  v4 = [v3 calendarDelegateIdentifier];
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_15();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)isAllowedSearchableItem:.cold.2()
{
  OUTLINED_FUNCTION_6();
  v7 = *MEMORY[0x1E69E9840];
  v1 = [v0 uniqueIdentifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_15();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)isAllowedSearchableItem:.cold.3()
{
  OUTLINED_FUNCTION_6();
  v10 = *MEMORY[0x1E69E9840];
  v2 = [v1 uniqueIdentifier];
  v3 = [v0 attributeSet];
  v4 = [v3 containerDisplayName];
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_15();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)interactionForSearchableItem:nsUserName:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_191750000, v0, OS_LOG_TYPE_DEBUG, "Converting searchable item: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

+ (void)interactionForSearchableItem:nsUserName:.cold.3()
{
  OUTLINED_FUNCTION_6();
  *v2 = 138412546;
  *(v2 + 4) = v3;
  *(v2 + 12) = 2112;
  *(v2 + 14) = v4;
  _os_log_debug_impl(&dword_191750000, v6, OS_LOG_TYPE_DEBUG, "Group name %@ not found on CSSi Id %@", v5, 0x16u);
}

+ (void)interactionForSearchableItem:nsUserName:.cold.4()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_191750000, v0, OS_LOG_TYPE_FAULT, "While converting CSSearchableItem into _CDInteraction: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

+ (void)interactionForSearchableItem:nsUserName:.cold.5()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_191750000, v0, OS_LOG_TYPE_DEBUG, "Recording interaction: %{sensitive}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end