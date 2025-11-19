@interface CHCallFingerprint
+ (BOOL)doCallTypesMatch:(id)a3 :(id)a4;
+ (BOOL)doHandlesMatch:(id)a3 with:(id)a4;
+ (BOOL)doesCall:(id)a3 matchWith:(id)a4;
+ (BOOL)shouldCall:(id)a3 updateMatchingCall:(id)a4;
+ (id)matchCallWithFingerprint:(id)a3 usingDatabase:(id)a4;
+ (id)predicateForCall:(id)a3;
+ (id)predicateForHandoffCall:(id)a3;
+ (unsigned)getCallStatusForExistingCall:(id)a3 andRemoteCall:(id)a4 areBothCallsLocal:(BOOL)a5 isExistingCallMissedOrAnsweredElsewhere:(BOOL)a6;
@end

@implementation CHCallFingerprint

+ (BOOL)doCallTypesMatch:(id)a3 :(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 mediaType];
  if (v7 == [v6 mediaType] && (v8 = objc_msgSend(v5, "ttyType"), v8 == objc_msgSend(v6, "ttyType")))
  {
    v9 = [v5 serviceProvider];
    v10 = [v6 serviceProvider];
    v11 = [v9 isEqual:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)doHandlesMatch:(id)a3 with:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 remoteParticipantHandles];
  v8 = [v7 count];
  v9 = [v6 remoteParticipantHandles];
  v10 = [v9 count];

  if (v8 == v10 && ([v5 remoteParticipantHandles], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v12))
  {
    v13 = [v5 notificationThreadIdentifier];
    v14 = [v6 notificationThreadIdentifier];
    v15 = [v13 isEqualToString:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (BOOL)doesCall:(id)a3 matchWith:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 uniqueId];
  v8 = [v6 uniqueId];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v11 = [v5 date];
    v12 = [v6 date];
    [v11 timeIntervalSinceDate:v12];
    v14 = v13;

    if ([CHCallFingerprint doCallTypesMatch:v5])
    {
      v15 = [CHCallFingerprint doHandlesMatch:v5 with:v6];
      v10 = fabs(v14) <= 5.0 && v15;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

+ (BOOL)shouldCall:(id)a3 updateMatchingCall:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (([v5 callStatus] & 3) != 0 && (objc_msgSend(v6, "callStatus") & 4) != 0 || (objc_msgSend(v5, "callStatus") & 3) != 0 && (objc_msgSend(v6, "callStatus") & 8) != 0 || (objc_msgSend(v5, "callStatus") & 4) != 0 && (objc_msgSend(v6, "callStatus") & 3) != 0)
  {
    v7 = 1;
  }

  else
  {
    v8 = [v5 conversationID];
    v9 = [v6 conversationID];
    v7 = (v8 | v9) == 0;
    if (v9)
    {
      v7 = [v8 isEqual:v9];
    }
  }

  return v7;
}

+ (unsigned)getCallStatusForExistingCall:(id)a3 andRemoteCall:(id)a4 areBothCallsLocal:(BOOL)a5 isExistingCallMissedOrAnsweredElsewhere:(BOOL)a6
{
  v9 = a3;
  v10 = a4;
  if (([v10 callStatus] == 1 || objc_msgSend(v10, "callStatus") == 2) && !a5)
  {
    v11 = 4;
    if (a6)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v11 = [v10 callStatus];
  if (!a6)
  {
LABEL_7:
    v11 = [v9 callStatus];
  }

LABEL_8:

  return v11;
}

+ (id)predicateForHandoffCall:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [v3 conversationID];

  if (v5)
  {
    v6 = [v3 conversationID];
    v7 = [CHRecentCall predicateForCallsWithConversationID:v6];
    [v4 addObject:v7];
  }

  v8 = [v3 participantGroupUUID];

  if (v8)
  {
    v9 = [v3 participantGroupUUID];
    v10 = [CHRecentCall predicateForCallsWithGroupUUID:v9];
    [v4 addObject:v10];
  }

  v11 = [v3 uniqueId];
  v12 = [CHRecentCall predicateForCallsWithUniqueID:v11];
  [v4 addObject:v12];

  v13 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v4];

  return v13;
}

+ (id)predicateForCall:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [v3 date];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 dateByAddingTimeInterval:-5.0];
    v8 = [v6 dateByAddingTimeInterval:5.0];
    v9 = [CHRecentCall predicateForCallsBetweenStartDate:v7 endDate:v8];
    [v4 addObject:v9];
  }

  v10 = [v3 mediaType];
  if (v10)
  {
    v11 = [CHRecentCall predicateForCallsWithMediaType:v10];
    [v4 addObject:v11];
  }

  v12 = [v3 serviceProvider];
  if ([v12 length])
  {
    v13 = [CHRecentCall predicateForCallsWithServiceProvider:v12];
    [v4 addObject:v13];
  }

  v14 = [v3 ttyType];
  if (v14)
  {
    v15 = [CHRecentCall predicateForCallsWithTTYType:v14];
    [v4 addObject:v15];
  }

  v16 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v4];

  return v16;
}

+ (id)matchCallWithFingerprint:(id)a3 usingDatabase:(id)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 date];

  if (!v7)
  {
    v19 = +[CHLogServer sharedInstance];
    v20 = [v19 logHandleForDomain:"Fingerprint"];

    v18 = v20;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v5 uniqueId];
      v50 = 138543362;
      v51 = v21;
      v22 = "Ignoring fingerprinted call %{public}@ without a date";
LABEL_13:
      _os_log_impl(&dword_1C3E90000, v18, OS_LOG_TYPE_DEFAULT, v22, &v50, 0xCu);
    }

LABEL_14:
    v17 = 0;
    v10 = v18;
    goto LABEL_36;
  }

  v8 = [v5 remoteParticipantHandles];
  v9 = [v8 count];

  if (!v9)
  {
    v23 = +[CHLogServer sharedInstance];
    v24 = [v23 logHandleForDomain:"Fingerprint"];

    v18 = v24;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v5 uniqueId];
      v50 = 138543362;
      v51 = v21;
      v22 = "Ignoring fingerprinted call %{public}@ without remote participant handles";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v10 = [CHCallFingerprint predicateForHandoffCall:v5];
  v11 = +[CHLogServer sharedInstance];
  v12 = [v11 logHandleForDomain:"Fingerprint"];

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v50 = 138412290;
    v51 = v10;
    _os_log_impl(&dword_1C3E90000, v12, OS_LOG_TYPE_DEFAULT, "Fetching local call records using predicate %@", &v50, 0xCu);
  }

  v13 = [v6 fetchObjectsWithPredicate:v10];
  if ([v13 count])
  {
    v14 = +[CHLogServer sharedInstance];
    v15 = [v14 logHandleForDomain:"Fingerprint"];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v50 = 138412290;
      v51 = v13;
      _os_log_impl(&dword_1C3E90000, v15, OS_LOG_TYPE_DEFAULT, "Got matching calls: %@", &v50, 0xCu);
    }

    v16 = [v13 sortedArrayUsingComparator:&__block_literal_global_10];
    v17 = [v16 firstObject];
    v18 = v13;
  }

  else
  {
    v25 = [CHCallFingerprint predicateForCall:v5];

    v26 = +[CHLogServer sharedInstance];
    v27 = [v26 logHandleForDomain:"Fingerprint"];

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v50 = 138412290;
      v51 = v25;
      _os_log_impl(&dword_1C3E90000, v27, OS_LOG_TYPE_DEFAULT, "Fetching local call records using predicate %@", &v50, 0xCu);
    }

    v18 = [v6 fetchObjectsWithPredicate:v25];

    v28 = [v18 count];
    v29 = +[CHLogServer sharedInstance];
    v30 = [v29 logHandleForDomain:"Fingerprint"];

    v16 = v30;
    v31 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v28)
    {
      if (v31)
      {
        v32 = [v18 count];
        v33 = [v5 uniqueId];
        v50 = 134218242;
        v51 = v32;
        v52 = 2114;
        v53 = v33;
        _os_log_impl(&dword_1C3E90000, v16, OS_LOG_TYPE_DEFAULT, "Found %lu calls matching %{public}@ in local data store", &v50, 0x16u);
      }

      if ([v18 count]!= 1)
      {
        v38 = [v5 remoteParticipantHandles];
        v39 = [v38 allObjects];
        v10 = [CHRecentCall predicateForCallsWithRemoteParticipantHandles:v39];

        v16 = [v18 filteredArrayUsingPredicate:v10];
        if ([v16 count])
        {
          v17 = [v16 firstObject];
          v40 = +[CHLogServer sharedInstance];
          v41 = [v40 logHandleForDomain:"Fingerprint"];

          v42 = v41;
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v43 = [v17 uniqueId];
            v44 = [v5 uniqueId];
            v50 = 138543618;
            v51 = v43;
            v52 = 2114;
            v53 = v44;
            _os_log_impl(&dword_1C3E90000, v42, OS_LOG_TYPE_DEFAULT, "Fingerprint matched local call %{public}@ with remote call %{public}@", &v50, 0x16u);
          }
        }

        else
        {
          v45 = +[CHLogServer sharedInstance];
          v46 = [v45 logHandleForDomain:"Fingerprint"];

          v42 = v46;
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v47 = [v5 uniqueId];
            v50 = 138543362;
            v51 = v47;
            _os_log_impl(&dword_1C3E90000, v42, OS_LOG_TYPE_DEFAULT, "Did not find filtered caller ID result matching call %{public}@", &v50, 0xCu);
          }

          v17 = 0;
        }

        goto LABEL_35;
      }

      v17 = [v18 firstObject];
      v34 = +[CHLogServer sharedInstance];
      v35 = [v34 logHandleForDomain:"Fingerprint"];

      v16 = v35;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v36 = [v17 uniqueId];
        v50 = 138543362;
        v51 = v36;
        _os_log_impl(&dword_1C3E90000, v16, OS_LOG_TYPE_DEFAULT, "Returning matching call with uniqueID %{public}@", &v50, 0xCu);
      }
    }

    else
    {
      if (v31)
      {
        v37 = [v5 uniqueId];
        v50 = 138543362;
        v51 = v37;
        _os_log_impl(&dword_1C3E90000, v16, OS_LOG_TYPE_DEFAULT, "Could not find fingerprinted call %{public}@ in local data store", &v50, 0xCu);
      }

      v17 = 0;
    }

    v10 = v25;
  }

LABEL_35:

LABEL_36:
  v48 = *MEMORY[0x1E69E9840];

  return v17;
}

uint64_t __60__CHCallFingerprint_matchCallWithFingerprint_usingDatabase___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 date];
  v6 = [v4 date];

  v7 = [v5 compare:v6];
  return v7;
}

@end