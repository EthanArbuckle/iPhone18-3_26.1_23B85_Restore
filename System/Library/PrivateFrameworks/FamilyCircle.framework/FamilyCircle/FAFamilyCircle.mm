@interface FAFamilyCircle
- (BOOL)anyChildHasRemoteGuardians;
- (BOOL)currentUserIsU13;
- (BOOL)familyHasU13Member;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFAFamilyCircle:(id)a3;
- (FAFamilyCircle)init;
- (FAFamilyCircle)initWithCoder:(id)a3;
- (FAFamilyCircle)initWithServerResponse:(id)a3;
- (FAFamilyMember)me;
- (FAFamilyMember)remoteGuardian;
- (NSArray)firstNames;
- (NSArray)invites;
- (NSArray)pendingMembers;
- (NSArray)pendingMembersWithAllStatues;
- (id)memberForAltDSID:(id)a3;
- (id)memberForDSID:(id)a3;
- (id)memberForPhoneNumber:(id)a3;
- (id)pendingInvitesOnly;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FAFamilyCircle

- (FAFamilyCircle)init
{
  v9.receiver = self;
  v9.super_class = FAFamilyCircle;
  v2 = [(FAFamilyCircle *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DEC8] array];
    v4 = *(v2 + 3);
    *(v2 + 3) = v3;

    *(v2 + 11) = -1;
    *(v2 + 4) = 0;
    *(v2 + 9) = 257;
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.family.familyCircle", v5);
    v7 = *(v2 + 19);
    *(v2 + 19) = v6;
  }

  return v2;
}

- (NSArray)pendingMembers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  processingQueue = self->_processingQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__FAFamilyCircle_pendingMembers__block_invoke;
  v5[3] = &unk_1E7CA4A18;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(processingQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __32__FAFamilyCircle_pendingMembers__block_invoke(uint64_t a1)
{
  v1 = a1;
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = [*(v1 + 32) _serverResponse];
    v5 = [v4 objectForKey:@"pending-members"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v5;
      v20 = v1;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v22;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v22 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = [[FAFamilyMember alloc] initWithDictionaryRepresentation:*(*(&v21 + 1) + 8 * i)];
            v12 = [(FAFamilyMember *)v11 inviteEmail];

            if (v12)
            {
              v13 = [(FAFamilyMember *)v11 statusString];
              v14 = [v13 isEqual:@"Pending"];

              if (v14)
              {
                [v3 addObject:v11];
              }
            }

            else
            {
              v15 = _FALogSystem();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v26 = v11;
                _os_log_impl(&dword_1B70B0000, v15, OS_LOG_TYPE_DEFAULT, "No invite email, dropping %@", buf, 0xCu);
              }
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
        }

        while (v8);
      }

      v5 = v19;
      v1 = v20;
    }

    v16 = *(v1 + 32);
    v17 = *(v16 + 48);
    *(v16 + 48) = v3;

    v2 = *(*(v1 + 32) + 48);
  }

  objc_storeStrong((*(*(v1 + 40) + 8) + 40), v2);
  v18 = *MEMORY[0x1E69E9840];
}

- (id)pendingInvitesOnly
{
  v2 = [(FAFamilyCircle *)self invites];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_5];
    v4 = [v2 filteredArrayUsingPredicate:v3];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  }

  return v4;
}

- (NSArray)invites
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  processingQueue = self->_processingQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __25__FAFamilyCircle_invites__block_invoke;
  v5[3] = &unk_1E7CA4A18;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(processingQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __25__FAFamilyCircle_invites__block_invoke(uint64_t a1)
{
  v1 = a1;
  v36 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2[8];
  if (!v3)
  {
    v4 = [v2 _serverResponse];
    v5 = [v4 objectForKey:@"family-invitations"];

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v1;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      obj = v5;
      v7 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v32;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v32 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v31 + 1) + 8 * i);
            v12 = objc_alloc_init(FAFamilyInvite);
            v13 = [v11 objectForKeyedSubscript:@"invitee-last-name"];
            [(FAFamilyInvite *)v12 setOrganizerLastName:v13];

            v14 = [v11 objectForKeyedSubscript:@"invitee-first-name"];
            [(FAFamilyInvite *)v12 setOrganizerFirstName:v14];

            v15 = [v11 objectForKeyedSubscript:@"inviter-email"];
            [(FAFamilyInvite *)v12 setOrganizerEmail:v15];

            v16 = [v11 objectForKeyedSubscript:@"invite-code"];
            [(FAFamilyInvite *)v12 setCode:v16];

            v17 = [v11 objectForKeyedSubscript:@"invitee-dsid"];
            [(FAFamilyInvite *)v12 setOrganizerDSID:v17];

            v18 = [v11 objectForKeyedSubscript:@"invite-status"];
            [(FAFamilyInvite *)v12 setInviteStatus:v18];

            v19 = [v11 objectForKeyedSubscript:@"inviteDateEpoch"];
            if (v19)
            {
              v20 = objc_alloc(MEMORY[0x1E695DF00]);
              [v19 doubleValue];
              v22 = [v20 initWithTimeIntervalSince1970:v21 / 1000.0];
            }

            else
            {
              v22 = [MEMORY[0x1E695DF00] distantPast];
            }

            v23 = v22;
            v24 = [v11 objectForKeyedSubscript:@"badge-after-invite-delay"];
            if (!v24)
            {
              v24 = +[FAFamilyMember defaultInvitationDelay];
            }

            [(FAFamilyInvite *)v12 setInviteDate:v23];
            [(FAFamilyInvite *)v12 setBadgeAfter:v24];
            [v6 addObject:v12];
          }

          v8 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v8);
      }

      v1 = v29;
    }

    v25 = [v6 copy];
    v26 = *(v1 + 32);
    v27 = *(v26 + 64);
    *(v26 + 64) = v25;

    v3 = *(*(v1 + 32) + 64);
  }

  objc_storeStrong((*(*(v1 + 40) + 8) + 40), v3);
  v28 = *MEMORY[0x1E69E9840];
}

- (FAFamilyCircle)initWithServerResponse:(id)a3
{
  v120 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v111.receiver = self;
  v111.super_class = FAFamilyCircle;
  v6 = [(FAFamilyCircle *)&v111 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 9) = 257;
    objc_storeStrong(v6 + 20, a3);
    v8 = [v5 objectForKeyedSubscript:@"family-id"];

    if (v8)
    {
      v9 = [v5 objectForKeyedSubscript:@"family-id"];
      familyID = v7->_familyID;
      v7->_familyID = v9;
    }

    v98 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"memberSortOrder" ascending:1];
    v11 = [v5 objectForKeyedSubscript:@"family-members"];
    v12 = v11;
    if (v11 && [v11 count])
    {
      v13 = [MEMORY[0x1E695DF70] array];
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      v110 = 0u;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v107 objects:v119 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v108;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v108 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = [[FAFamilyMember alloc] initWithDictionaryRepresentation:*(*(&v107 + 1) + 8 * i)];
            [v13 addObject:v19];
          }

          v16 = [v14 countByEnumeratingWithState:&v107 objects:v119 count:16];
        }

        while (v16);
      }

      v118 = v98;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v118 count:1];
      [v13 sortUsingDescriptors:v20];

      v21 = [v13 copy];
      members = v7->_members;
      v7->_members = v21;
    }

    v97 = v12;
    if (_os_feature_enabled_impl())
    {
      v23 = [v5 objectForKeyedSubscript:@"person-info"];
      v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
      if (v23 && [v23 count])
      {
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v96 = v23;
        v25 = v23;
        v26 = [v25 countByEnumeratingWithState:&v103 objects:v117 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v104;
          do
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v104 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = [[FAFamilyMember alloc] initWithDictionaryRepresentation:*(*(&v103 + 1) + 8 * j)];
              v31 = [(FAFamilyMember *)v30 dsid];
              [v24 setObject:v30 forKeyedSubscript:v31];
            }

            v27 = [v25 countByEnumeratingWithState:&v103 objects:v117 count:16];
          }

          while (v27);
        }

        v23 = v96;
      }

      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v32 = v7->_members;
      v33 = [(NSArray *)v32 countByEnumeratingWithState:&v99 objects:v116 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v100;
        do
        {
          for (k = 0; k != v34; ++k)
          {
            if (*v100 != v35)
            {
              objc_enumerationMutation(v32);
            }

            [*(*(&v99 + 1) + 8 * k) finishWith:v24];
          }

          v34 = [(NSArray *)v32 countByEnumeratingWithState:&v99 objects:v116 count:16];
        }

        while (v34);
      }

      if (![(NSArray *)v7->_members count])
      {
        v37 = [v5 objectForKeyedSubscript:@"member-guardian"];
        if (v37)
        {
          v38 = _FALogSystem();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1B70B0000, v38, OS_LOG_TYPE_DEFAULT, "Remote guardian key found", buf, 2u);
          }

          v39 = [[FAFamilyMember alloc] initWithDictionaryRepresentation:v37];
          remoteGuardianPerson = v7->_remoteGuardianPerson;
          v7->_remoteGuardianPerson = v39;

          [(FAFamilyMember *)v7->_remoteGuardianPerson finishWith:v24];
        }
      }

      v41 = [(FAFamilyCircle *)v7 remoteGuardian];

      if (v23 && !v41)
      {
        v42 = _FALogSystem();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          [FAFamilyCircle initWithServerResponse:v42];
        }
      }
    }

    v43 = [v5 objectForKeyedSubscript:@"ck-handles"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = [v5 objectForKeyedSubscript:@"ck-handles"];
    }

    else
    {
      v44 = 0;
    }

    v45 = [[FAFamilyCloudKitProperties alloc] initWithDictionaryRepresentation:v44];
    cloudKitProperties = v7->_cloudKitProperties;
    v7->_cloudKitProperties = v45;

    v47 = [v5 objectForKeyedSubscript:@"family-recommendation-info"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v48 = [v5 objectForKeyedSubscript:@"family-recommendation-info"];
    }

    else
    {
      v48 = 0;
    }

    v49 = [[FAEligibilityRequirements alloc] initWithDictionaryRepresentation:v48];
    eligibilityRequirements = v7->_eligibilityRequirements;
    v7->_eligibilityRequirements = v49;

    v51 = [v5 objectForKeyedSubscript:@"show-location-splash-screen"];

    if (v51)
    {
      v52 = [v5 objectForKeyedSubscript:@"show-location-splash-screen"];
      v7->_showLocationSplashScreen = [v52 BOOLValue];
    }

    else
    {
      v7->_showLocationSplashScreen = 0;
    }

    v53 = [v5 objectForKeyedSubscript:@"age-category"];
    if ([v53 isEqualToString:@"ADULT"])
    {
      v7->_ageCategory = 0;
    }

    else
    {
      if ([v53 isEqualToString:@"TEEN"])
      {
        v54 = 1;
      }

      else if ([v53 isEqualToString:@"CHILD"])
      {
        v54 = 2;
      }

      else
      {
        v54 = -1;
      }

      v7->_ageCategory = v54;
    }

    v55 = _FALogSystem();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      ageCategory = v7->_ageCategory;
      *buf = 138412546;
      v113 = v53;
      v114 = 2048;
      v115 = ageCategory;
      _os_log_impl(&dword_1B70B0000, v55, OS_LOG_TYPE_DEFAULT, "Current user age category is %@, FAMemberType %ld", buf, 0x16u);
    }

    v57 = [v5 objectForKeyedSubscript:@"age-category-enum"];
    v58 = [v57 intValue];

    v7->_ageCategoryEnum = v58;
    v59 = [v5 objectForKey:@"family-meta-info"];
    if (v59)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v60 = [v59 objectForKeyedSubscript:@"childCutOffAge"];
        childCutOffAge = v7->_childCutOffAge;
        v7->_childCutOffAge = v60;

        v62 = [v59 objectForKeyedSubscript:@"add-member-enabled"];
        v7->_canAddMembers = [v62 BOOLValue];

        v63 = [v59 objectForKeyedSubscript:@"add-member-label"];
        addMemberButtonLabel = v7->_addMemberButtonLabel;
        v7->_addMemberButtonLabel = v63;

        v65 = [v59 objectForKeyedSubscript:@"family-members-footer"];
        familyMembersFooterLabel = v7->_familyMembersFooterLabel;
        v7->_familyMembersFooterLabel = v65;

        v67 = [v59 objectForKeyedSubscript:@"allowed-apple-subscriptions"];

        if (v67)
        {
          v68 = [v59 objectForKeyedSubscript:@"allowed-apple-subscriptions"];
        }

        else
        {
          v68 = 0;
        }

        allowedSubscriptions = v7->_allowedSubscriptions;
        v7->_allowedSubscriptions = v68;

        v70 = [v59 objectForKeyedSubscript:@"show-add-member-button"];

        if (v70)
        {
          v71 = [v59 objectForKeyedSubscript:@"show-add-member-button"];
          v7->_showAddMemberButton = [v71 BOOLValue];
        }

        else
        {
          v7->_showAddMemberButton = 1;
        }

        v72 = [v59 objectForKeyedSubscript:@"should-show-invites"];

        if (v72)
        {
          v73 = [v59 objectForKeyedSubscript:@"should-show-invites"];
          v7->_shouldShowInvites = [v73 BOOLValue];
        }

        else
        {
          v7->_shouldShowInvites = 0;
        }

        v74 = [v59 objectForKeyedSubscript:@"use-rui-pages"];

        if (v74)
        {
          v75 = [v59 objectForKeyedSubscript:@"use-rui-pages"];
          v7->_showRUIPages = [v75 BOOLValue];
        }

        else
        {
          v7->_showRUIPages = 0;
        }

        v76 = [v59 objectForKeyedSubscript:@"family-share-payment-enabled"];

        if (v76)
        {
          v77 = [v59 objectForKeyedSubscript:@"family-share-payment-enabled"];
          v7->_sharedPayementEnabled = [v77 BOOLValue];
        }

        else
        {
          v7->_sharedPayementEnabled = 0;
        }

        v78 = [v59 objectForKeyedSubscript:@"checklist-ranking-bucket-type"];

        if (v78)
        {
          v79 = [v59 objectForKeyedSubscript:@"checklist-ranking-bucket-type"];
          checklistRankingBucketType = v7->_checklistRankingBucketType;
          v7->_checklistRankingBucketType = v79;
        }

        v81 = [v59 objectForKeyedSubscript:@"checklist-ranking-version"];

        if (v81)
        {
          v82 = [v59 objectForKeyedSubscript:@"checklist-ranking-version"];
          checklistRankingVersion = v7->_checklistRankingVersion;
          v7->_checklistRankingVersion = v82;
        }

        v7->_shouldBadgeOrganizer = 1;
        v84 = [v59 objectForKeyedSubscript:@"is-badging-disabled-organizer"];

        if (v84)
        {
          v85 = [v59 objectForKeyedSubscript:@"is-badging-disabled-organizer"];
          v7->_shouldBadgeOrganizer = [v85 BOOLValue] ^ 1;
        }

        v7->_shouldBadgeInvitee = 1;
        v86 = [v59 objectForKeyedSubscript:@"is-badging-disabled-invitee"];

        if (v86)
        {
          v87 = [v59 objectForKeyedSubscript:@"is-badging-disabled-invitee"];
          v7->_shouldBadgeInvitee = [v87 BOOLValue] ^ 1;
        }
      }
    }

    v88 = [v5 objectForKey:@"child-bot-details"];
    if (v88)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v89 = [v88 objectForKey:@"allowListed-parents"];
        if (v89)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_storeStrong(&v7->_childBotAllowlistedParents, v89);
          }
        }

        v90 = [v88 objectForKey:@"allowListed-child"];
        if (v90)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_storeStrong(&v7->_parentAllowlistedChildBots, v90);
          }
        }
      }
    }

    v91 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v92 = dispatch_queue_create("com.apple.family.familyCircle", v91);
    processingQueue = v7->_processingQueue;
    v7->_processingQueue = v92;
  }

  v94 = *MEMORY[0x1E69E9840];
  return v7;
}

- (FAFamilyMember)remoteGuardian
{
  v19 = *MEMORY[0x1E69E9840];
  remoteGuardianPerson = self->_remoteGuardianPerson;
  if (remoteGuardianPerson)
  {
    v3 = remoteGuardianPerson;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = self->_members;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          if ([v9 isMe])
          {
            v10 = [v9 remoteChildren];
            v11 = [v10 count];

            if (v11)
            {
              v3 = v9;

              goto LABEL_14;
            }
          }
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v3 = 0;
  }

LABEL_14:
  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)anyChildHasRemoteGuardians
{
  v16 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = self->_members;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = *v12;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = [*(*(&v11 + 1) + 8 * i) remoteGuardians];
          v8 = [v7 count];

          if (v8)
          {
            LOBYTE(v4) = 1;
            goto LABEL_13;
          }
        }

        v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)memberForAltDSID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__0;
    v16 = __Block_byref_object_dispose__0;
    v17 = 0;
    members = self->_members;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __35__FAFamilyCircle_memberForAltDSID___block_invoke;
    v9[3] = &unk_1E7CA49D0;
    v10 = v4;
    v11 = &v12;
    [(NSArray *)members enumerateObjectsUsingBlock:v9];
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __35__FAFamilyCircle_memberForAltDSID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 altDSID];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)memberForDSID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 intValue])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__0;
    v16 = __Block_byref_object_dispose__0;
    v17 = 0;
    members = self->_members;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __32__FAFamilyCircle_memberForDSID___block_invoke;
    v9[3] = &unk_1E7CA49D0;
    v10 = v5;
    v11 = &v12;
    [(NSArray *)members enumerateObjectsUsingBlock:v9];
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __32__FAFamilyCircle_memberForDSID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [v10 dsid];
  v8 = [v7 intValue];
  v9 = [*(a1 + 32) intValue];

  if (v8 == v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)memberForPhoneNumber:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695CF50]) initWithStringValue:v4];
  v6 = [v5 fullyQualifiedDigits];

  if (v6)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v7 = [(FAFamilyCircle *)self members];
    v24 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v24)
    {
      v8 = *v31;
      v25 = v7;
      v23 = *v31;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v31 != v8)
          {
            objc_enumerationMutation(v7);
          }

          v10 = *(*(&v30 + 1) + 8 * i);
          v11 = [v10 memberPhoneNumbers];
          v12 = [v11 componentsSeparatedByString:{@", "}];

          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v13 = v12;
          v14 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v27;
            while (2)
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v27 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v26 + 1) + 8 * j);
                if ([v18 length])
                {
                  v19 = [objc_alloc(MEMORY[0x1E695CF50]) initWithStringValue:v18];
                  if ([v5 isLikePhoneNumber:v19])
                  {
                    v20 = v10;

                    v7 = v25;
                    goto LABEL_23;
                  }
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          v7 = v25;
          v8 = v23;
        }

        v20 = 0;
        v24 = [v25 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v24);
    }

    else
    {
      v20 = 0;
    }

LABEL_23:
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (NSArray)firstNames
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [(FAFamilyCircle *)self members];
  v4 = [v3 count];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = [(FAFamilyCircle *)self members];
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (!v7)
    {
      goto LABEL_16;
    }

    v8 = v7;
    v9 = *v21;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if (([v11 isMe] & 1) == 0)
        {
          v12 = [v11 contact];
          v13 = [v12 givenName];

          v14 = [v11 firstName];
          if ([v13 length])
          {
            v15 = v5;
            v16 = v13;
            goto LABEL_12;
          }

          if (v14)
          {
            v15 = v5;
            v16 = v14;
LABEL_12:
            [v15 addObject:v16];
          }

          continue;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (!v8)
      {
LABEL_16:

        v17 = [v5 copy];
        goto LABEL_18;
      }
    }
  }

  v17 = 0;
LABEL_18:
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

uint64_t __36__FAFamilyCircle_pendingInvitesOnly__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 inviteStatus];
  v3 = [v2 isEqual:@"Pending"];

  return v3;
}

- (NSArray)pendingMembersWithAllStatues
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  processingQueue = self->_processingQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__FAFamilyCircle_pendingMembersWithAllStatues__block_invoke;
  v5[3] = &unk_1E7CA4A18;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(processingQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __46__FAFamilyCircle_pendingMembersWithAllStatues__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 56);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = [*(a1 + 32) _serverResponse];
    v5 = [v4 objectForKey:@"pending-members"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v18;
        do
        {
          v10 = 0;
          do
          {
            if (*v18 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v17 + 1) + 8 * v10);
            v12 = [FAFamilyMember alloc];
            v13 = [(FAFamilyMember *)v12 initWithDictionaryRepresentation:v11, v17];
            [v3 addObject:v13];

            ++v10;
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v8);
      }
    }

    v14 = *(a1 + 32);
    v15 = *(v14 + 56);
    *(v14 + 56) = v3;

    v2 = *(*(a1 + 32) + 56);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
  v16 = *MEMORY[0x1E69E9840];
}

- (FAFamilyMember)me
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  processingQueue = self->_processingQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __20__FAFamilyCircle_me__block_invoke;
  v5[3] = &unk_1E7CA4A18;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(processingQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __20__FAFamilyCircle_me__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  if (!v3)
  {
    v4 = *(v2 + 24);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __20__FAFamilyCircle_me__block_invoke_2;
    v5[3] = &unk_1E7CA4A40;
    v5[4] = v2;
    [v4 enumerateObjectsUsingBlock:v5];
    v3 = *(*(a1 + 32) + 72);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
}

void __20__FAFamilyCircle_me__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 isMe])
  {
    objc_storeStrong((*(a1 + 32) + 72), a2);
    *a4 = 1;
  }
}

- (BOOL)currentUserIsU13
{
  v3 = [(FAFamilyCircle *)self me];
  if (v3)
  {
    v4 = [(FAFamilyCircle *)self me];
    v5 = [v4 isChildAccount];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)familyHasU13Member
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_members;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) isChildAccount])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  members = self->_members;
  v5 = a3;
  [v5 encodeObject:members forKey:@"_members"];
  [v5 encodeObject:self->_cloudKitProperties forKey:@"_cloudKitProperties"];
  [v5 encodeObject:self->__serverResponse forKey:@"__serverResponse"];
  [v5 encodeObject:self->_childCutOffAge forKey:@"_childCutOffAge"];
  [v5 encodeBool:self->_canAddMembers forKey:@"_canAddMembers"];
  [v5 encodeObject:self->_addMemberButtonLabel forKey:@"_addMemberButtonLabel"];
  [v5 encodeObject:self->_eligibilityRequirements forKey:@"family-recommendation-info"];
  [v5 encodeObject:self->_familyMembersFooterLabel forKey:@"_familyMembersFooterLabel"];
  [v5 encodeObject:self->_allowedSubscriptions forKey:@"_allowedSubscriptions"];
  [v5 encodeBool:self->_showAddMemberButton forKey:@"_showAddMemberButton"];
  [v5 encodeBool:self->_shouldShowInvites forKey:@"_shouldShowInvites"];
  [v5 encodeBool:self->_showLocationSplashScreen forKey:@"_showLocationSplashScreen"];
  [v5 encodeBool:self->_showRUIPages forKey:@"_showRUIPages"];
  [v5 encodeObject:self->_familyID forKey:@"_familyID"];
  [v5 encodeInteger:self->_ageCategory forKey:@"_ageCategory"];
  [v5 encodeBool:self->_sharedPayementEnabled forKey:@"_sharedPayementEnabled"];
  [v5 encodeObject:self->_checklistRankingBucketType forKey:@"_checklistRankingBucketType"];
  [v5 encodeObject:self->_checklistRankingVersion forKey:@"_checklistRankingVersion"];
  [v5 encodeBool:self->_shouldBadgeOrganizer forKey:@"_shouldBadgeOrganizer"];
  [v5 encodeBool:self->_shouldBadgeInvitee forKey:@"_shouldBadgeInvitee"];
  [v5 encodeObject:self->_childBotAllowlistedParents forKey:@"_childBotAllowlistedParents"];
  [v5 encodeObject:self->_parentAllowlistedChildBots forKey:@"_parentAllowlistedChildBots"];
}

- (FAFamilyCircle)initWithCoder:(id)a3
{
  v4 = a3;
  v49.receiver = self;
  v49.super_class = FAFamilyCircle;
  v5 = [(FAFamilyCircle *)&v49 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_members"];
    members = v5->_members;
    v5->_members = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_cloudKitProperties"];
    cloudKitProperties = v5->_cloudKitProperties;
    v5->_cloudKitProperties = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v13 setWithObjects:{v14, v15, v16, v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"__serverResponse"];
    serverResponse = v5->__serverResponse;
    v5->__serverResponse = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"family-recommendation-info"];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = objc_alloc_init(FAEligibilityRequirements);
    }

    eligibilityRequirements = v5->_eligibilityRequirements;
    v5->_eligibilityRequirements = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_childCutOffAge"];
    childCutOffAge = v5->_childCutOffAge;
    v5->_childCutOffAge = v25;

    v5->_canAddMembers = [v4 decodeBoolForKey:@"_canAddMembers"];
    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_addMemberButtonLabel"];
    addMemberButtonLabel = v5->_addMemberButtonLabel;
    v5->_addMemberButtonLabel = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_familyMembersFooterLabel"];
    familyMembersFooterLabel = v5->_familyMembersFooterLabel;
    v5->_familyMembersFooterLabel = v29;

    v31 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_allowedSubscriptions"];
    allowedSubscriptions = v5->_allowedSubscriptions;
    v5->_allowedSubscriptions = v31;

    v5->_showAddMemberButton = [v4 decodeBoolForKey:@"_showAddMemberButton"];
    v5->_shouldShowInvites = [v4 decodeBoolForKey:@"_shouldShowInvites"];
    v5->_showLocationSplashScreen = [v4 decodeBoolForKey:@"_showLocationSplashScreen"];
    v5->_showRUIPages = [v4 decodeBoolForKey:@"_showRUIPages"];
    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_familyID"];
    familyID = v5->_familyID;
    v5->_familyID = v33;

    v5->_ageCategory = [v4 decodeIntegerForKey:@"_ageCategory"];
    v5->_sharedPayementEnabled = [v4 decodeBoolForKey:@"_sharedPayementEnabled"];
    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_checklistRankingBucketType"];
    checklistRankingBucketType = v5->_checklistRankingBucketType;
    v5->_checklistRankingBucketType = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_checklistRankingVersion"];
    checklistRankingVersion = v5->_checklistRankingVersion;
    v5->_checklistRankingVersion = v37;

    if ([v4 containsValueForKey:@"_shouldBadgeOrganizer"])
    {
      v39 = [v4 decodeBoolForKey:@"_shouldBadgeOrganizer"];
    }

    else
    {
      v39 = 1;
    }

    v5->_shouldBadgeOrganizer = v39;
    if ([v4 containsValueForKey:@"_shouldBadgeInvitee"])
    {
      v40 = [v4 decodeBoolForKey:@"_shouldBadgeInvitee"];
    }

    else
    {
      v40 = 1;
    }

    v5->_shouldBadgeInvitee = v40;
    v41 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_childBotAllowlistedParents"];
    childBotAllowlistedParents = v5->_childBotAllowlistedParents;
    v5->_childBotAllowlistedParents = v41;

    v43 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_parentAllowlistedChildBots"];
    parentAllowlistedChildBots = v5->_parentAllowlistedChildBots;
    v5->_parentAllowlistedChildBots = v43;

    v45 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v46 = dispatch_queue_create("com.apple.family.familyCircle", v45);
    processingQueue = v5->_processingQueue;
    v5->_processingQueue = v46;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(FAFamilyCircle *)self isEqualToFAFamilyCircle:v4];
  }

  return v5;
}

- (BOOL)isEqualToFAFamilyCircle:(id)a3
{
  v4 = a3;
  v5 = [(FAFamilyCircle *)self _serverResponse];
  v6 = [v4 _serverResponse];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

@end