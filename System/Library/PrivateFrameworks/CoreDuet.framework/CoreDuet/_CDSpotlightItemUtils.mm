@interface _CDSpotlightItemUtils
+ (BOOL)contentTypeTree:(id)a3 conformsToUTIType:(id)a4;
+ (BOOL)isLocationBasedItem:(uint64_t)a1;
+ (BOOL)uncachedUtType:(void *)a3 conformsTo:;
+ (_CDContact)_contactForPerson:(uint64_t)a1;
+ (id)_contactsForHandles:(void *)a3 emailAddresses:(void *)a4 names:;
+ (id)_contactsForPersons:(uint64_t)a1;
+ (id)_locationMetadataForSearchableItem:(id)a3 userAction:(id)a4;
+ (id)_metadataForSearchableItem:(void *)a3 userAction:;
+ (id)contextDictionaryForSearchableItem:(id)a3 userAction:(id)a4;
+ (id)expectedSupportedUTIs;
+ (id)expectedUTIsForMechanism:(int64_t)a3;
+ (id)interactionForSearchableItem:(id)a3 nsUserName:(id)a4;
+ (id)interactionUUIDForSearchableItemWithUID:(id)a3 bundleID:(id)a4;
+ (id)knowledgeEventsForSearchableItem:(id)a3 userAction:(id)a4;
+ (id)mechanismUtiMap;
+ (id)messageContextDictionaryForSendMessageIntent:(id)a3;
+ (id)policies;
+ (id)querySpotlightItemsWithStartDate:(id)a3 endDate:(id)a4 getMail:(BOOL)a5 getMessages:(BOOL)a6;
+ (id)utiConformCache;
+ (int64_t)getInteractionMechanismForContentUTI:(id)a3 typeTree:(id)a4;
+ (uint64_t)contentTypeTree:(void *)a3 conformsToUTITypes:;
+ (uint64_t)isAllowedSearchableItem:(uint64_t)a1;
+ (uint64_t)isSearchableItemInSubscribedCalendar:(uint64_t)a1;
+ (uint64_t)shouldFilterEmailAddress:(uint64_t)a1;
+ (uint64_t)utType:(void *)a3 conformsTo:;
@end

@implementation _CDSpotlightItemUtils

+ (id)interactionUUIDForSearchableItemWithUID:(id)a3 bundleID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = MEMORY[0x1E696AEC0];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "hash")}];
  v10 = [v8 stringWithFormat:@"%@:%@", v9, v5];

  objc_autoreleasePoolPop(v7);

  return v10;
}

+ (id)_contactsForPersons:(uint64_t)a1
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

+ (_CDContact)_contactForPerson:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 handles];
  v4 = [v3 firstObject];
  v5 = [_CDSpotlightContactResolver resolveContactIfPossibleFromContactIdentifierString:v4];

  v6 = [v5 identifier];
  if (v6 && (v7 = v6, [v5 identifier], v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v8, v7, (isKindOfClass & 1) == 0))
  {
    v11 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      +[_CDSpotlightItemUtils _contactForPerson:];
    }

    v10 = 0;
  }

  else
  {
    v10 = [v5 identifier];
  }

  if (![v10 length])
  {
    v12 = [v2 contactIdentifier];
    if (v12 && (v13 = v12, [v2 contactIdentifier], v14 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v15 = objc_opt_isKindOfClass(), v14, v13, (v15 & 1) == 0))
    {
      v18 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        +[_CDSpotlightItemUtils _contactForPerson:];
      }
    }

    else
    {
      v16 = [v2 contactIdentifier];
      v17 = [v16 length];

      if (!v17)
      {
        goto LABEL_15;
      }

      [v2 contactIdentifier];
      v10 = v18 = v10;
    }
  }

LABEL_15:
  if (v10)
  {
    v19 = 3;
  }

  else
  {
    v19 = 0;
  }

  v20 = [v2 handleIdentifier];
  v21 = [_CDContact typeFromString:v20];

  v22 = [v2 handles];
  v23 = [v22 firstObject];
  v24 = [_CDContactResolver normalizedStringFromContactString:v23];

  v25 = [_CDContact alloc];
  v26 = [v2 displayName];
  v27 = [(_CDContact *)v25 initWithIdentifier:v24 type:v21 customIdentifier:0 displayName:v26 displayType:0 personId:v10 personIdType:v19];

  return v27;
}

+ (uint64_t)isSearchableItemInSubscribedCalendar:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 attributeSet];
  v4 = [v3 attributeForKey:@"com_apple_mobilecal_calendarIsSubscribedCalendar"];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v6 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(_CDSpotlightItemUtils *)v4 isSearchableItemInSubscribedCalendar:v2];
    }

    v5 = 0;
  }

  else
  {
    v5 = [v4 BOOLValue];
  }

  return v5;
}

+ (uint64_t)isAllowedSearchableItem:(uint64_t)a1
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = +[_CDInteractionPolicies disallowedCSSIBundleIds];
  v5 = [v2 bundleID];
  v6 = [v4 containsObject:v5];

  if ((v6 & 1) == 0)
  {
    v8 = +[_CDConstants mobileCalendarBundleId];
    v9 = [v2 bundleID];
    v10 = [v8 isEqual:v9];

    if (v10)
    {
      v11 = [v2 attributeSet];
      v12 = [v11 contentType];
      v13 = [v2 attributeSet];
      v14 = [v13 contentTypeTree];
      v15 = [_CDSpotlightItemUtils getInteractionMechanismForContentUTI:v12 typeTree:v14];

      if (v15 == 5)
      {
        v16 = [v2 attributeSet];
        v17 = [v16 calendarDelegateIdentifier];

        if (v17)
        {
          v18 = +[_CDLogging interactionChannel];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            +[_CDSpotlightItemUtils isAllowedSearchableItem:];
          }

          goto LABEL_9;
        }

        v21 = [(_CDSpotlightItemUtils *)v3 isSearchableItemInSubscribedCalendar:v2];
        v18 = +[_CDLogging interactionChannel];
        v22 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
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
      v18 = [v2 domainIdentifier];
      if ([v18 isEqualToString:@"attachmentDomain"])
      {
LABEL_9:

LABEL_11:
        v7 = 0;
LABEL_19:

        goto LABEL_20;
      }

      v19 = [v2 domainIdentifier];
      v20 = [v19 isEqualToString:@"chatDomain"];

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

+ (id)_contactsForHandles:(void *)a3 emailAddresses:(void *)a4 names:
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_self();
  v9 = [v6 count];
  v10 = [v7 count];
  v11 = [v8 count];
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

  if ([v7 count] < v13)
  {
    v14 = [MEMORY[0x1E695DEC8] _pas_proxyArrayWithObject:&stru_1F05B9908 repetitions:v13];

    v7 = v14;
  }

  if ([v6 count] < v13)
  {
    v15 = v7;

    v6 = v15;
  }

  if ([v8 count] < v13)
  {
    v16 = [MEMORY[0x1E695DEC8] _pas_proxyArrayWithObject:&stru_1F05B9908 repetitions:v13];

    v8 = v16;
  }

  v32 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v13];
  if (v13)
  {
    v17 = 0;
    while (1)
    {
      v18 = v13;
      v19 = [v7 objectAtIndexedSubscript:v17];
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
      v23 = v8;
      v24 = [v8 objectAtIndexedSubscript:v17];
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
      v27 = [v25 identifier];
      if (v27)
      {
        v28 = 3;
      }

      else
      {
        v28 = 0;
      }

      v29 = [[_CDContact alloc] initWithIdentifier:v21 type:v22 displayName:v24 personId:v27 personIdType:v28];
      [v32 addObject:v29];

      ++v17;
      v13 = v18;
      v8 = v23;
      if (v18 == v17)
      {
        goto LABEL_32;
      }
    }

    v21 = [v7 objectAtIndexedSubscript:v17];
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

+ (id)interactionForSearchableItem:(id)a3 nsUserName:(id)a4
{
  v194[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  obj = a1;
  v156 = a4;
  v158 = v6;
  if (([(_CDSpotlightItemUtils *)a1 isAllowedSearchableItem:v6]& 1) != 0)
  {
    v7 = objc_alloc_init(_CDInteraction);
    v8 = [v6 attributeSet];
    v153 = [v8 contentType];
    v152 = [v8 contentTypeTree];
    v9 = +[_CDLogging interactionChannel];
    v159 = v8;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      +[_CDSpotlightItemUtils interactionForSearchableItem:nsUserName:];
    }

    v10 = v8;
    -[_CDInteraction setMechanism:](v7, "setMechanism:", [obj getInteractionMechanismForContentUTI:v153 typeTree:v152]);
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
      v157 = [MEMORY[0x1E695DEC8] arrayWithObjects:v194 count:3];

      v186 = 0u;
      v187 = 0u;
      v184 = 0u;
      v185 = 0u;
      v15 = [v159 mailboxIdentifiers];
      v16 = [v15 countByEnumeratingWithState:&v184 objects:v193 count:16];
      if (v16)
      {
        v17 = *v185;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v185 != v17)
            {
              objc_enumerationMutation(v15);
            }

            if ([v157 containsObject:*(*(&v184 + 1) + 8 * i)])
            {

              v10 = v159;
              goto LABEL_17;
            }
          }

          v16 = [v15 countByEnumeratingWithState:&v184 objects:v193 count:16];
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
    v19 = [v10 startDate];
    [(_CDInteraction *)v7 setStartDate:v19];

    v20 = [MEMORY[0x1E695DF00] date];
    [(_CDInteraction *)v7 setUpdateDate:v20];

    v21 = [v159 endDate];
    [(_CDInteraction *)v7 setEndDate:v21];

    v22 = [(_CDInteraction *)v7 startDate];
    LODWORD(v21) = v22 == 0;

    if (v21)
    {
      v23 = [v159 contentCreationDate];
      [(_CDInteraction *)v7 setStartDate:v23];
    }

    v24 = [(_CDInteraction *)v7 endDate];
    if (!v24)
    {
      goto LABEL_21;
    }

    v25 = [(_CDInteraction *)v7 endDate];
    v26 = [(_CDInteraction *)v7 startDate];
    [v25 timeIntervalSinceDate:v26];
    v28 = v27 < 0.0;

    if (v28)
    {
LABEL_21:
      v29 = [(_CDInteraction *)v7 startDate];
      [(_CDInteraction *)v7 setEndDate:v29];
    }

    v157 = [MEMORY[0x1E695E000] standardUserDefaults];
    if (([v157 BOOLForKey:@"com.apple.coreduetd.recordpastevents"] & 1) == 0)
    {
      v30 = +[_CDSpotlightItemUtils policies];
      v31 = [v30 dateOfOldestAllowedInteractionForMechanism:{-[_CDInteraction mechanism](v7, "mechanism")}];
      v32 = [(_CDInteraction *)v7 startDate];
      [v32 timeIntervalSinceReferenceDate];
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

    v37 = [v159 accountIdentifier];
    [(_CDInteraction *)v7 setAccount:v37];

    v38 = [v158 bundleID];
    [(_CDInteraction *)v7 setBundleId:v38];

    v39 = [v158 domainIdentifier];
    [(_CDInteraction *)v7 setDomainIdentifier:v39];

    v40 = [v158 uniqueIdentifier];
    v41 = [v158 bundleID];
    v42 = [obj interactionUUIDForSearchableItemWithUID:v40 bundleID:v41];
    [(_CDInteraction *)v7 setUuid:v42];

    v43 = [(_CDInteraction *)v7 bundleId];
    v44 = +[_CDConstants mobileMessagesBundleId];
    LODWORD(v41) = [v43 isEqualToString:v44];

    if (v41)
    {
      v45 = [(_CDInteraction *)v7 domainIdentifier];
      v46 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
      v47 = [v45 stringByAddingPercentEncodingWithAllowedCharacters:v46];
      [(_CDInteraction *)v7 setDerivedIntentIdentifier:v47];

      v48 = [v159 customAttributeDictionary];
      v49 = [v48 objectForKeyedSubscript:@"com_apple_mobilesms_groupPhotoPath"];

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

      v52 = [v50 customAttributeDictionary];
      v53 = [v52 objectForKeyedSubscript:@"com_apple_mobilesms_chatUniqueIdentifier"];

      if (v53)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(_CDInteraction *)v7 setAccount:v53];
        }
      }
    }

    [(_CDInteraction *)v7 setNsUserName:v156];
    context = objc_autoreleasePoolPush();
    v54 = [v159 accountHandles];
    v55 = objc_opt_new();
    v182 = 0u;
    v183 = 0u;
    v180 = 0u;
    v181 = 0u;
    v56 = v54;
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

    v65 = [v159 authors];
    v66 = [v65 count] == 0;

    if (v66)
    {
      v67 = [v159 authorAddresses];
      v68 = [v159 authorEmailAddresses];
      v69 = [v159 authorNames];
      v150 = [(_CDSpotlightItemUtils *)obj _contactsForHandles:v67 emailAddresses:v68 names:v69];
    }

    else
    {
      v67 = [v159 authors];
      v150 = [(_CDSpotlightItemUtils *)obj _contactsForPersons:v67];
    }

    v70 = [v159 primaryRecipients];
    v178[0] = MEMORY[0x1E69E9820];
    v178[1] = 3221225472;
    v178[2] = __65___CDSpotlightItemUtils_interactionForSearchableItem_nsUserName___block_invoke_2;
    v178[3] = &unk_1E7368658;
    v145 = v64;
    v179 = v145;
    v71 = [v70 _pas_mappedArrayWithIndexedTransform:v178];
    v72 = [v71 mutableCopy];

    v176 = 0u;
    v177 = 0u;
    v174 = 0u;
    v175 = 0u;
    v73 = [v159 additionalRecipients];
    v74 = v73;
    v75 = MEMORY[0x1E695E0F0];
    if (v73)
    {
      v76 = v73;
    }

    else
    {
      v76 = MEMORY[0x1E695E0F0];
    }

    v190[0] = v76;
    v77 = [v159 hiddenAdditionalRecipients];
    v78 = v77;
    if (v77)
    {
      v79 = v77;
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
      v85 = v172;
    }

    else
    {
      v85 = [v159 recipientAddresses];
      v86 = [v159 recipientEmailAddresses];
      v87 = [v159 recipientNames];
      v149 = [(_CDSpotlightItemUtils *)obj _contactsForHandles:v85 emailAddresses:v86 names:v87];
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
          v92 = [v91 identifier];
          v93 = [v55 containsObject:v92];

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
      v97 = [obja firstObject];
      [(_CDInteraction *)v7 setSender:v97];
    }

    [(_CDInteraction *)v7 setRecipients:v151];
    v98 = [v159 displayName];
    [(_CDInteraction *)v7 setGroupName:v98];

    v99 = [(_CDInteraction *)v7 bundleId];
    v100 = +[_CDConstants mobileMessagesBundleId];
    v101 = [v99 isEqual:v100];

    if (v101)
    {
      v102 = [(_CDInteraction *)v7 groupName];
      if (v102)
      {
LABEL_86:

        goto LABEL_87;
      }

      v107 = [(_CDInteraction *)v7 recipients];
      v108 = [v107 count] > 1;

      if (v108)
      {
        v109 = [(_CDInteraction *)v7 domainIdentifier];
        v102 = sIMSPIGetDisplayNameAndParticipantsForChatWithGUID(v109);

        if ([v102 count])
        {
          v110 = [v102 firstObject];
          v111 = objc_opt_respondsToSelector();

          if (v111)
          {
            v112 = [v102 firstObject];
            v113 = [v112 displayName];
            [(_CDInteraction *)v7 setGroupName:v113];
          }

          else
          {
            v112 = +[_CDLogging interactionChannel];
            if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
            {
              [_CDSpotlightItemUtils interactionForSearchableItem:v112 nsUserName:?];
            }
          }

          v139 = [(_CDInteraction *)v7 groupName];
          v140 = v139 == 0;

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
    v103 = [v159 isExistingThread];

    if (v103)
    {
      v104 = [v159 isExistingThread];
      -[_CDInteraction setIsResponse:](v7, "setIsResponse:", [v104 BOOLValue]);
    }

    else
    {
      if ([(_CDInteraction *)v7 mechanism]!= 1)
      {
        goto LABEL_99;
      }

      v105 = [v159 emailHeaders];
      v104 = v105;
      if (v105)
      {
        v106 = [v105 objectForKeyedSubscript:@"references"];
        [(_CDInteraction *)v7 setIsResponse:v106 != 0];
      }

      else
      {
        v106 = [v159 displayName];
        -[_CDInteraction setIsResponse:](v7, "setIsResponse:", [v106 hasPrefix:@"Re:"]);
      }
    }

LABEL_99:
    if ([(_CDInteraction *)v7 mechanism]== 5)
    {
      v114 = objc_autoreleasePoolPush();
      v115 = [v159 title];
      v116 = [_CDStringTokenizer extractNormalizedKeywords:v115];
      v117 = [v116 allObjects];
      [(_CDInteraction *)v7 setKeywords:v117];

      v118 = [(_CDInteraction *)v7 sender];
      if (v118)
      {
        v119 = [(_CDInteraction *)v7 sender];
        v120 = [v119 participantStatus] == 0;

        if (v120)
        {
          v121 = [(_CDInteraction *)v7 sender];
          [v121 setParticipantStatus:2];
        }
      }

      if (v148)
      {
        v122 = [(_CDInteraction *)v7 sender];
        -[_CDInteraction setSelfParticipantStatus:](v7, "setSelfParticipantStatus:", [v122 participantStatus]);
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
      v123 = [(_CDInteraction *)v7 sender];
      v124 = __65___CDSpotlightItemUtils_interactionForSearchableItem_nsUserName___block_invoke_581(v123, v123);

      if (v124)
      {
        [(_CDInteraction *)v7 setSender:0];
      }

      v125 = MEMORY[0x1E695DF70];
      v126 = [(_CDInteraction *)v7 recipients];
      v127 = [v125 arrayWithCapacity:{objc_msgSend(v126, "count")}];

      v162 = 0u;
      v163 = 0u;
      v160 = 0u;
      v161 = 0u;
      v128 = [(_CDInteraction *)v7 recipients];
      v129 = [v128 countByEnumeratingWithState:&v160 objects:v188 count:16];
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
              objc_enumerationMutation(v128);
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
          v129 = [v128 countByEnumeratingWithState:&v160 objects:v188 count:16];
          v130 = v129;
        }

        while (v129);
      }

      [(_CDInteraction *)v7 setRecipients:v127];
    }

    v134 = [(_CDInteraction *)v7 sender];
    if (v134)
    {
      v135 = 0;
    }

    else
    {
      v136 = [(_CDInteraction *)v7 recipients];
      v137 = [v136 count] == 0;

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
      v134 = v7;
      v7 = 0;
    }

    goto LABEL_126;
  }

  v11 = 0;
LABEL_141:

  v142 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (uint64_t)shouldFilterEmailAddress:(uint64_t)a1
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

+ (id)_metadataForSearchableItem:(void *)a3 userAction:
{
  v75 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = objc_opt_new();
  v7 = [v5 uaIdentifier];
  v8 = [v7 UUIDString];
  v9 = +[_DKApplicationActivityMetadataKey userActivityUUID];
  [v6 setObject:v8 forKeyedSubscript:v9];

  v10 = [v4 attributeSet];
  v11 = [v10 contentDescription];

  if (v11)
  {
    v12 = [v4 attributeSet];
    v13 = [v12 contentDescription];
    v14 = +[_DKApplicationActivityMetadataKey contentDescription];
    [v6 setObject:v13 forKeyedSubscript:v14];
  }

  v15 = [v4 attributeSet];
  v16 = [v15 suggestedInvocationPhrase];

  if (v16)
  {
    v17 = [v4 attributeSet];
    v18 = [v17 suggestedInvocationPhrase];
    v19 = +[_DKApplicationActivityMetadataKey suggestedInvocationPhrase];
    [v6 setObject:v18 forKeyedSubscript:v19];
  }

  v20 = [v4 attributeSet];
  v21 = [v20 attributeDictionary];
  v22 = [v21 objectForKeyedSubscript:@"kMDItemRelatedUniqueIdentifier"];

  if (v22)
  {
    v23 = +[_DKApplicationActivityMetadataKey itemRelatedUniqueIdentifier];
    [v6 setObject:v22 forKey:v23];
  }

  v24 = [v4 attributeSet];
  v25 = [v24 attributeDictionary];
  v26 = [v25 objectForKeyedSubscript:@"kMDItemContentURL"];

  if (v26)
  {
    v27 = +[_DKApplicationActivityMetadataKey itemRelatedContentURL];
    [v6 setObject:v26 forKeyedSubscript:v27];
  }

  v69 = v26;
  v28 = [v4 attributeSet];
  v29 = [v28 shortcutAvailability];

  if (v29)
  {
    v30 = [v4 attributeSet];
    v31 = [v30 shortcutAvailability];
    v32 = +[_DKApplicationActivityMetadataKey shortcutAvailability];
    [v6 setObject:v31 forKeyedSubscript:v32];
  }

  v33 = [v5 eligibility];
  v34 = [MEMORY[0x1E696AD98] numberWithBool:(v33 >> 2) & 1];
  v35 = +[_DKApplicationActivityMetadataKey isPubliclyIndexable];
  [v6 setObject:v34 forKey:v35];

  v36 = [v5 eligibility];
  v37 = [MEMORY[0x1E696AD98] numberWithBool:(v36 >> 3) & 1];
  v38 = +[_DKApplicationActivityMetadataKey isEligibleForPrediction];
  [v6 setObject:v37 forKeyedSubscript:v38];

  v39 = [v4 attributeSet];
  v40 = [v39 userActivityType];

  if (v40)
  {
    v41 = [v4 attributeSet];
    v42 = [v41 userActivityType];
    v43 = +[_DKApplicationActivityMetadataKey activityType];
    [v6 setObject:v42 forKey:v43];

    v44 = [v4 attributeSet];
    v45 = [v44 attributeDictionary];
    v46 = [v45 objectForKeyedSubscript:@"_kMDItemUserActivityRequiredString"];

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
        v51 = [v49 userInfo];

        if (v51)
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
                v57 = [v50 userInfo];
                v58 = [v57 objectForKeyedSubscript:v56];

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

  v59 = [v4 expirationDate];

  if (v59)
  {
    v60 = [v4 expirationDate];
    v61 = +[_DKApplicationActivityMetadataKey expirationDate];
    [v6 setObject:v60 forKey:v61];
  }

  v62 = [v5 itemIdentifier];

  if (v62)
  {
    v63 = [v5 itemIdentifier];
    v64 = +[_DKApplicationActivityMetadataKey itemIdentifier];
    [v6 setObject:v63 forKey:v64];
  }

  v65 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)_locationMetadataForSearchableItem:(id)a3 userAction:(id)a4
{
  v5 = a3;
  v6 = [_CDSpotlightItemUtils _metadataForSearchableItem:v5 userAction:a4];
  v7 = [v6 mutableCopy];

  v8 = [v5 attributeSet];
  v9 = [v8 namedLocation];

  if (v9)
  {
    v10 = [v5 attributeSet];
    v11 = [v10 namedLocation];
    v12 = +[_DKLocationApplicationActivityMetadataKey locationName];
    [v7 setObject:v11 forKeyedSubscript:v12];
  }

  v13 = [v5 attributeSet];
  v14 = [v13 latitude];

  if (v14)
  {
    v15 = [v5 attributeSet];
    v16 = [v15 latitude];
    v17 = +[_DKLocationApplicationActivityMetadataKey latitude];
    [v7 setObject:v16 forKeyedSubscript:v17];
  }

  v18 = [v5 attributeSet];
  v19 = [v18 longitude];

  if (v19)
  {
    v20 = [v5 attributeSet];
    v21 = [v20 longitude];
    v22 = +[_DKLocationApplicationActivityMetadataKey longitude];
    [v7 setObject:v21 forKeyedSubscript:v22];
  }

  v23 = [v5 attributeSet];
  v24 = [v23 city];

  if (v24)
  {
    v25 = [v5 attributeSet];
    v26 = [v25 city];
    v27 = +[_DKLocationApplicationActivityMetadataKey city];
    [v7 setObject:v26 forKeyedSubscript:v27];
  }

  v28 = [v5 attributeSet];
  v29 = [v28 stateOrProvince];

  if (v29)
  {
    v30 = [v5 attributeSet];
    v31 = [v30 stateOrProvince];
    v32 = +[_DKLocationApplicationActivityMetadataKey stateOrProvince];
    [v7 setObject:v31 forKeyedSubscript:v32];
  }

  v33 = [v5 attributeSet];
  v34 = [v33 country];

  if (v34)
  {
    v35 = [v5 attributeSet];
    v36 = [v35 country];
    v37 = +[_DKLocationApplicationActivityMetadataKey country];
    [v7 setObject:v36 forKeyedSubscript:v37];
  }

  v38 = [v5 attributeSet];
  v39 = [v38 thoroughfare];

  if (v39)
  {
    v40 = [v5 attributeSet];
    v41 = [v40 thoroughfare];
    v42 = +[_DKLocationApplicationActivityMetadataKey thoroughfare];
    [v7 setObject:v41 forKeyedSubscript:v42];
  }

  v43 = [v5 attributeSet];
  v44 = [v43 fullyFormattedAddress];

  if (v44)
  {
    v45 = [v5 attributeSet];
    v46 = [v45 fullyFormattedAddress];
    v47 = +[_DKLocationApplicationActivityMetadataKey fullyFormattedAddress];
    [v7 setObject:v46 forKeyedSubscript:v47];
  }

  v48 = [v5 attributeSet];
  v49 = [v48 subThoroughfare];

  if (v49)
  {
    v50 = [v5 attributeSet];
    v51 = [v50 subThoroughfare];
    v52 = +[_DKLocationApplicationActivityMetadataKey subThoroughfare];
    [v7 setObject:v51 forKeyedSubscript:v52];
  }

  v53 = [v5 attributeSet];
  v54 = [v53 postalCode];

  if (v54)
  {
    v55 = [v5 attributeSet];
    v56 = [v55 postalCode];
    v57 = +[_DKLocationApplicationActivityMetadataKey postalCode];
    [v7 setObject:v56 forKeyedSubscript:v57];
  }

  v58 = [v5 attributeSet];
  v59 = [v58 phoneNumbers];

  if (v59)
  {
    v60 = [v5 attributeSet];
    v61 = [v60 phoneNumbers];
    v62 = +[_DKLocationApplicationActivityMetadataKey phoneNumbers];
    [v7 setObject:v61 forKeyedSubscript:v62];
  }

  v63 = [v5 attributeSet];
  v64 = [v63 displayName];

  if (v64)
  {
    v65 = [v5 attributeSet];
    v66 = [v65 displayName];
    v67 = +[_DKLocationApplicationActivityMetadataKey displayName];
    [v7 setObject:v66 forKeyedSubscript:v67];
  }

  v68 = [v5 attributeSet];
  v69 = [v68 URL];

  if (v69)
  {
    v70 = [v5 attributeSet];
    v71 = [v70 URL];
    v72 = [v71 absoluteString];
    v73 = +[_DKLocationApplicationActivityMetadataKey URL];
    [v7 setObject:v72 forKeyedSubscript:v73];
  }

  v74 = [v7 copy];

  return v74;
}

+ (BOOL)isLocationBasedItem:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 attributeSet];
  v4 = [v3 namedLocation];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v2 attributeSet];
    v7 = [v6 city];
    if (v7)
    {
      v5 = 1;
    }

    else
    {
      v8 = [v2 attributeSet];
      v9 = [v8 stateOrProvince];
      if (v9)
      {
        v5 = 1;
      }

      else
      {
        v10 = [v2 attributeSet];
        v11 = [v10 country];
        if (v11)
        {
          v5 = 1;
        }

        else
        {
          v24 = [v2 attributeSet];
          v12 = [v24 latitude];
          if (v12)
          {
            v5 = 1;
          }

          else
          {
            v23 = [v2 attributeSet];
            v13 = [v23 longitude];
            if (v13)
            {
              v5 = 1;
            }

            else
            {
              v22 = [v2 attributeSet];
              v14 = [v22 thoroughfare];
              if (v14)
              {
                v5 = 1;
              }

              else
              {
                v21 = [v2 attributeSet];
                v15 = [v21 subThoroughfare];
                if (v15)
                {
                  v5 = 1;
                }

                else
                {
                  v20 = [v2 attributeSet];
                  v16 = [v20 fullyFormattedAddress];
                  if (v16)
                  {
                    v5 = 1;
                  }

                  else
                  {
                    v19 = [v2 attributeSet];
                    v17 = [v19 postalCode];
                    v5 = v17 != 0;

                    v16 = 0;
                  }

                  v15 = 0;
                }

                v14 = 0;
              }

              v13 = 0;
            }

            v12 = 0;
          }
        }
      }
    }
  }

  return v5;
}

+ (id)knowledgeEventsForSearchableItem:(id)a3 userAction:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v43 = a3;
  v5 = a4;
  v41 = objc_opt_new();
  v6 = [v5 madeCurrentDates];
  v38 = [v6 sortedArrayUsingSelector:sel_compare_];

  v42 = v5;
  v7 = [v5 sentToIndexerDates];
  v8 = [v7 sortedArrayUsingSelector:sel_compare_];

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
        v12 = [v43 bundleID];
        v13 = [_DKSource sourceForSearchableItem:v43 bundleID:v12];

        v14 = [(_CDSpotlightItemUtils *)a1 _metadataForSearchableItem:v43 userAction:v42];
        v15 = [v14 mutableCopy];

        v16 = v11 != 0x7FFFFFFFFFFFFFFFLL;
        v17 = [MEMORY[0x1E696AD98] numberWithInt:v16];
        v18 = +[_DKApplicationActivityMetadataKey beginningOfActivity];
        [v15 setObject:v17 forKeyedSubscript:v18];

        v19 = +[_DKSystemEventStreams appActivityStream];
        v20 = [v43 bundleID];
        v21 = [_DKBundleIdentifier withBundle:v20];
        v22 = [v15 copy];
        v23 = [_DKEvent eventWithStream:v19 source:v13 startDate:v10 endDate:v10 value:v21 confidence:v22 metadata:1.0];
        [v41 addObject:v23];

        if ([_CDSpotlightItemUtils isLocationBasedItem:v43])
        {
          v24 = [a1 _locationMetadataForSearchableItem:v43 userAction:v42];
          v25 = [v24 mutableCopy];

          v26 = [MEMORY[0x1E696AD98] numberWithInt:v16];
          v27 = +[_DKApplicationActivityMetadataKey beginningOfActivity];
          [v25 setObject:v26 forKeyedSubscript:v27];

          v28 = +[_DKSystemEventStreams appLocationActivityStream];
          v29 = [v43 bundleID];
          v30 = [_DKBundleIdentifier withBundle:v29];
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

+ (id)contextDictionaryForSearchableItem:(id)a3 userAction:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v8 = [v6 uaIdentifier];
  v9 = [v8 UUIDString];
  v10 = [get_CDContextQueriesClass() userActivityUUID];
  [v7 setObject:v9 forKeyedSubscript:v10];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "eligibility")}];
  v12 = [get_CDContextQueriesClass() eligibility];
  [v7 setObject:v11 forKeyedSubscript:v12];

  v13 = [v5 attributeSet];
  v14 = [v13 title];

  if (v14)
  {
    v15 = [v5 attributeSet];
    v16 = [v15 title];
    v17 = [get_CDContextQueriesClass() title];
    [v7 setObject:v16 forKeyedSubscript:v17];
  }

  v18 = [v5 attributeSet];
  v19 = [v18 userActivityType];

  if (v19)
  {
    v20 = [v5 attributeSet];
    v21 = [v20 userActivityType];
    v22 = [get_CDContextQueriesClass() userActivityType];
    [v7 setObject:v21 forKeyedSubscript:v22];
  }

  v23 = [v6 itemIdentifier];

  if (v23)
  {
    v24 = [v6 itemIdentifier];
    v25 = [get_CDContextQueriesClass() itemIdentifier];
    [v7 setObject:v24 forKeyedSubscript:v25];
  }

  v26 = [v5 attributeSet];
  v27 = [v26 attributeDictionary];
  v28 = [v27 objectForKeyedSubscript:@"_kMDItemUserActivityRequiredString"];

  if (v28)
  {
    v29 = [v5 attributeSet];
    v30 = [v29 attributeDictionary];
    v31 = [v30 objectForKeyedSubscript:@"_kMDItemUserActivityRequiredString"];
    v32 = [get_CDContextQueriesClass() userActivityRequiredString];
    [v7 setObject:v31 forKeyedSubscript:v32];
  }

  return v7;
}

+ (id)messageContextDictionaryForSendMessageIntent:(id)a3
{
  v42[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [get_CDContextQueriesClass() incomingKey];
  [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v5];

  v6 = [v3 conversationIdentifier];
  if (v6)
  {
    v7 = [get_CDContextQueriesClass() conversationIdentifierKey];
    [v4 setObject:v6 forKeyedSubscript:v7];
  }

  v8 = [v3 sender];
  v9 = [v8 handle];

  if (v9)
  {
    v42[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  v36 = v6;
  v11 = [get_CDContextQueriesClass() senderHandlesKey];
  [v4 setObject:v10 forKeyedSubscript:v11];

  if (v9)
  {
  }

  v35 = v9;
  v12 = [v3 sender];
  v13 = [v12 contactIdentifier];

  if (v13)
  {
    v14 = [get_CDContextQueriesClass() senderContactIDKey];
    [v4 setObject:v13 forKeyedSubscript:v14];
  }

  v34 = v13;
  v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v17 = [v3 recipients];
  v18 = [v17 countByEnumeratingWithState:&v37 objects:v41 count:16];
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
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v37 + 1) + 8 * i);
        v23 = [v22 handle];
        if (v23)
        {
          [v15 addObject:v23];
        }

        v24 = [v22 contactIdentifier];
        if (v24)
        {
          [v16 addObject:v24];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v19);
  }

  v25 = [v15 allObjects];
  v26 = [get_CDContextQueriesClass() recipientsKey];
  [v4 setObject:v25 forKeyedSubscript:v26];

  v27 = [v16 allObjects];
  v28 = [get_CDContextQueriesClass() recipientContactIDsKey];
  [v4 setObject:v27 forKeyedSubscript:v28];

  v29 = [v3 content];
  if (v29)
  {
    v30 = [get_CDContextQueriesClass() contentKey];
    [v4 setObject:v29 forKeyedSubscript:v30];
  }

  v31 = [v4 copy];

  v32 = *MEMORY[0x1E69E9840];

  return v31;
}

+ (id)querySpotlightItemsWithStartDate:(id)a3 endDate:(id)a4 getMail:(BOOL)a5 getMessages:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v19[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (v7 && v6)
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
    v16 = [_CDSpotlightQuerier querySpotlightForPredicateString:v14 startDate:v9 endDate:v10];

    goto LABEL_12;
  }

  if (v7)
  {
    v15 = +[_CDSpotlightQuerier queryStringForMail];
  }

  else
  {
    if (!v6)
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
  block[4] = a1;
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

+ (id)expectedUTIsForMechanism:(int64_t)a3
{
  v4 = +[_CDSpotlightItemUtils mechanismUtiMap];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
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

+ (BOOL)uncachedUtType:(void *)a3 conformsTo:
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  if (v5)
  {
    v6 = ([v4 isEqualToString:v5] & 1) != 0 || cd_UTTypeConformsTo(v4, v5) != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)contentTypeTree:(id)a3 conformsToUTIType:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
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

        if (([(_CDSpotlightItemUtils *)a1 utType:v7 conformsTo:?]& 1) != 0)
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

+ (uint64_t)utType:(void *)a3 conformsTo:
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  if (v5)
  {
    v7 = v6;
    v8 = +[_CDSpotlightItemUtils utiConformCache];
    v17[0] = v4;
    v17[1] = v5;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v10 = v8;
    objc_sync_enter(v10);
    v11 = [v10 objectForKeyedSubscript:v9];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 BOOLValue];
    }

    else
    {
      v13 = [(_CDSpotlightItemUtils *)v7 uncachedUtType:v4 conformsTo:v5];
      v14 = [MEMORY[0x1E696AD98] numberWithBool:v13];
      [v10 setObject:v14 forKeyedSubscript:v9];
    }

    objc_sync_exit(v10);
  }

  else
  {
    v13 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (uint64_t)contentTypeTree:(void *)a3 conformsToUTITypes:
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
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

+ (int64_t)getInteractionMechanismForContentUTI:(id)a3 typeTree:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695E0F0] mutableCopy];
  v9 = v8;
  if (v6)
  {
    [v8 addObject:v6];
    if (v7)
    {
      [v9 addObjectsFromArray:v7];
    }

    v23 = v7;
    v10 = +[_CDSpotlightItemUtils mechanismUtiMap];
    v11 = [v10 allKeys];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = v11;
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

          v17 = [*(*(&v24 + 1) + 8 * v16) integerValue];
          v18 = [a1 expectedUTIsForMechanism:v17];
          v19 = [(_CDSpotlightItemUtils *)a1 contentTypeTree:v9 conformsToUTITypes:v18];

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
      [_CDSpotlightItemUtils(UTI) getInteractionMechanismForContentUTI:v6 typeTree:v20];
    }

    v17 = 7;
LABEL_16:
    v7 = v23;
  }

  else
  {
    v12 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_CDSpotlightItemUtils(UTI) getInteractionMechanismForContentUTI:v12 typeTree:?];
    }

    v17 = 7;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v17;
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