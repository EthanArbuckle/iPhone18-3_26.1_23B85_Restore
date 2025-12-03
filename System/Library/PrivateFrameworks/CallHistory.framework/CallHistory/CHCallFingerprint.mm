@interface CHCallFingerprint
+ (BOOL)doCallTypesMatch:(id)match :(id)a4;
+ (BOOL)doHandlesMatch:(id)match with:(id)with;
+ (BOOL)doesCall:(id)call matchWith:(id)with;
+ (BOOL)shouldCall:(id)call updateMatchingCall:(id)matchingCall;
+ (id)matchCallWithFingerprint:(id)fingerprint usingDatabase:(id)database;
+ (id)predicateForCall:(id)call;
+ (id)predicateForHandoffCall:(id)call;
+ (unsigned)getCallStatusForExistingCall:(id)call andRemoteCall:(id)remoteCall areBothCallsLocal:(BOOL)local isExistingCallMissedOrAnsweredElsewhere:(BOOL)elsewhere;
@end

@implementation CHCallFingerprint

+ (BOOL)doCallTypesMatch:(id)match :(id)a4
{
  matchCopy = match;
  v6 = a4;
  mediaType = [matchCopy mediaType];
  if (mediaType == [v6 mediaType] && (v8 = objc_msgSend(matchCopy, "ttyType"), v8 == objc_msgSend(v6, "ttyType")))
  {
    serviceProvider = [matchCopy serviceProvider];
    serviceProvider2 = [v6 serviceProvider];
    v11 = [serviceProvider isEqual:serviceProvider2];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)doHandlesMatch:(id)match with:(id)with
{
  matchCopy = match;
  withCopy = with;
  remoteParticipantHandles = [matchCopy remoteParticipantHandles];
  v8 = [remoteParticipantHandles count];
  remoteParticipantHandles2 = [withCopy remoteParticipantHandles];
  v10 = [remoteParticipantHandles2 count];

  if (v8 == v10 && ([matchCopy remoteParticipantHandles], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v12))
  {
    notificationThreadIdentifier = [matchCopy notificationThreadIdentifier];
    notificationThreadIdentifier2 = [withCopy notificationThreadIdentifier];
    v15 = [notificationThreadIdentifier isEqualToString:notificationThreadIdentifier2];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (BOOL)doesCall:(id)call matchWith:(id)with
{
  callCopy = call;
  withCopy = with;
  uniqueId = [callCopy uniqueId];
  uniqueId2 = [withCopy uniqueId];
  v9 = [uniqueId isEqualToString:uniqueId2];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    date = [callCopy date];
    date2 = [withCopy date];
    [date timeIntervalSinceDate:date2];
    v14 = v13;

    if ([CHCallFingerprint doCallTypesMatch:callCopy])
    {
      v15 = [CHCallFingerprint doHandlesMatch:callCopy with:withCopy];
      v10 = fabs(v14) <= 5.0 && v15;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

+ (BOOL)shouldCall:(id)call updateMatchingCall:(id)matchingCall
{
  callCopy = call;
  matchingCallCopy = matchingCall;
  if (([callCopy callStatus] & 3) != 0 && (objc_msgSend(matchingCallCopy, "callStatus") & 4) != 0 || (objc_msgSend(callCopy, "callStatus") & 3) != 0 && (objc_msgSend(matchingCallCopy, "callStatus") & 8) != 0 || (objc_msgSend(callCopy, "callStatus") & 4) != 0 && (objc_msgSend(matchingCallCopy, "callStatus") & 3) != 0)
  {
    v7 = 1;
  }

  else
  {
    conversationID = [callCopy conversationID];
    conversationID2 = [matchingCallCopy conversationID];
    v7 = (conversationID | conversationID2) == 0;
    if (conversationID2)
    {
      v7 = [conversationID isEqual:conversationID2];
    }
  }

  return v7;
}

+ (unsigned)getCallStatusForExistingCall:(id)call andRemoteCall:(id)remoteCall areBothCallsLocal:(BOOL)local isExistingCallMissedOrAnsweredElsewhere:(BOOL)elsewhere
{
  callCopy = call;
  remoteCallCopy = remoteCall;
  if (([remoteCallCopy callStatus] == 1 || objc_msgSend(remoteCallCopy, "callStatus") == 2) && !local)
  {
    callStatus = 4;
    if (elsewhere)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  callStatus = [remoteCallCopy callStatus];
  if (!elsewhere)
  {
LABEL_7:
    callStatus = [callCopy callStatus];
  }

LABEL_8:

  return callStatus;
}

+ (id)predicateForHandoffCall:(id)call
{
  callCopy = call;
  array = [MEMORY[0x1E695DF70] array];
  conversationID = [callCopy conversationID];

  if (conversationID)
  {
    conversationID2 = [callCopy conversationID];
    v7 = [CHRecentCall predicateForCallsWithConversationID:conversationID2];
    [array addObject:v7];
  }

  participantGroupUUID = [callCopy participantGroupUUID];

  if (participantGroupUUID)
  {
    participantGroupUUID2 = [callCopy participantGroupUUID];
    v10 = [CHRecentCall predicateForCallsWithGroupUUID:participantGroupUUID2];
    [array addObject:v10];
  }

  uniqueId = [callCopy uniqueId];
  v12 = [CHRecentCall predicateForCallsWithUniqueID:uniqueId];
  [array addObject:v12];

  v13 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:array];

  return v13;
}

+ (id)predicateForCall:(id)call
{
  callCopy = call;
  array = [MEMORY[0x1E695DF70] array];
  date = [callCopy date];
  v6 = date;
  if (date)
  {
    v7 = [date dateByAddingTimeInterval:-5.0];
    v8 = [v6 dateByAddingTimeInterval:5.0];
    v9 = [CHRecentCall predicateForCallsBetweenStartDate:v7 endDate:v8];
    [array addObject:v9];
  }

  mediaType = [callCopy mediaType];
  if (mediaType)
  {
    v11 = [CHRecentCall predicateForCallsWithMediaType:mediaType];
    [array addObject:v11];
  }

  serviceProvider = [callCopy serviceProvider];
  if ([serviceProvider length])
  {
    v13 = [CHRecentCall predicateForCallsWithServiceProvider:serviceProvider];
    [array addObject:v13];
  }

  ttyType = [callCopy ttyType];
  if (ttyType)
  {
    v15 = [CHRecentCall predicateForCallsWithTTYType:ttyType];
    [array addObject:v15];
  }

  v16 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:array];

  return v16;
}

+ (id)matchCallWithFingerprint:(id)fingerprint usingDatabase:(id)database
{
  v54 = *MEMORY[0x1E69E9840];
  fingerprintCopy = fingerprint;
  databaseCopy = database;
  date = [fingerprintCopy date];

  if (!date)
  {
    v19 = +[CHLogServer sharedInstance];
    v20 = [v19 logHandleForDomain:"Fingerprint"];

    v18 = v20;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      uniqueId = [fingerprintCopy uniqueId];
      v50 = 138543362;
      v51 = uniqueId;
      v22 = "Ignoring fingerprinted call %{public}@ without a date";
LABEL_13:
      _os_log_impl(&dword_1C3E90000, v18, OS_LOG_TYPE_DEFAULT, v22, &v50, 0xCu);
    }

LABEL_14:
    firstObject = 0;
    v10 = v18;
    goto LABEL_36;
  }

  remoteParticipantHandles = [fingerprintCopy remoteParticipantHandles];
  v9 = [remoteParticipantHandles count];

  if (!v9)
  {
    v23 = +[CHLogServer sharedInstance];
    v24 = [v23 logHandleForDomain:"Fingerprint"];

    v18 = v24;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      uniqueId = [fingerprintCopy uniqueId];
      v50 = 138543362;
      v51 = uniqueId;
      v22 = "Ignoring fingerprinted call %{public}@ without remote participant handles";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v10 = [CHCallFingerprint predicateForHandoffCall:fingerprintCopy];
  v11 = +[CHLogServer sharedInstance];
  v12 = [v11 logHandleForDomain:"Fingerprint"];

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v50 = 138412290;
    v51 = v10;
    _os_log_impl(&dword_1C3E90000, v12, OS_LOG_TYPE_DEFAULT, "Fetching local call records using predicate %@", &v50, 0xCu);
  }

  v13 = [databaseCopy fetchObjectsWithPredicate:v10];
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
    firstObject = [v16 firstObject];
    v18 = v13;
  }

  else
  {
    v25 = [CHCallFingerprint predicateForCall:fingerprintCopy];

    v26 = +[CHLogServer sharedInstance];
    v27 = [v26 logHandleForDomain:"Fingerprint"];

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v50 = 138412290;
      v51 = v25;
      _os_log_impl(&dword_1C3E90000, v27, OS_LOG_TYPE_DEFAULT, "Fetching local call records using predicate %@", &v50, 0xCu);
    }

    v18 = [databaseCopy fetchObjectsWithPredicate:v25];

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
        uniqueId2 = [fingerprintCopy uniqueId];
        v50 = 134218242;
        v51 = v32;
        v52 = 2114;
        v53 = uniqueId2;
        _os_log_impl(&dword_1C3E90000, v16, OS_LOG_TYPE_DEFAULT, "Found %lu calls matching %{public}@ in local data store", &v50, 0x16u);
      }

      if ([v18 count]!= 1)
      {
        remoteParticipantHandles2 = [fingerprintCopy remoteParticipantHandles];
        allObjects = [remoteParticipantHandles2 allObjects];
        v10 = [CHRecentCall predicateForCallsWithRemoteParticipantHandles:allObjects];

        v16 = [v18 filteredArrayUsingPredicate:v10];
        if ([v16 count])
        {
          firstObject = [v16 firstObject];
          v40 = +[CHLogServer sharedInstance];
          v41 = [v40 logHandleForDomain:"Fingerprint"];

          v42 = v41;
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            uniqueId3 = [firstObject uniqueId];
            uniqueId4 = [fingerprintCopy uniqueId];
            v50 = 138543618;
            v51 = uniqueId3;
            v52 = 2114;
            v53 = uniqueId4;
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
            uniqueId5 = [fingerprintCopy uniqueId];
            v50 = 138543362;
            v51 = uniqueId5;
            _os_log_impl(&dword_1C3E90000, v42, OS_LOG_TYPE_DEFAULT, "Did not find filtered caller ID result matching call %{public}@", &v50, 0xCu);
          }

          firstObject = 0;
        }

        goto LABEL_35;
      }

      firstObject = [v18 firstObject];
      v34 = +[CHLogServer sharedInstance];
      v35 = [v34 logHandleForDomain:"Fingerprint"];

      v16 = v35;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        uniqueId6 = [firstObject uniqueId];
        v50 = 138543362;
        v51 = uniqueId6;
        _os_log_impl(&dword_1C3E90000, v16, OS_LOG_TYPE_DEFAULT, "Returning matching call with uniqueID %{public}@", &v50, 0xCu);
      }
    }

    else
    {
      if (v31)
      {
        uniqueId7 = [fingerprintCopy uniqueId];
        v50 = 138543362;
        v51 = uniqueId7;
        _os_log_impl(&dword_1C3E90000, v16, OS_LOG_TYPE_DEFAULT, "Could not find fingerprinted call %{public}@ in local data store", &v50, 0xCu);
      }

      firstObject = 0;
    }

    v10 = v25;
  }

LABEL_35:

LABEL_36:
  v48 = *MEMORY[0x1E69E9840];

  return firstObject;
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