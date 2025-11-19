@interface CHRecentCall
+ (id)callCategoryAsString:(unsigned int)a3;
+ (id)callDirectoryIdentificationTypeAsString:(int64_t)a3;
+ (id)callHandleTypeAsString:(int64_t)a3;
+ (id)callMediaTypeAsString:(int64_t)a3;
+ (id)callStatusAsString:(unsigned int)a3;
+ (id)callTTYTypeAsString:(int64_t)a3;
+ (id)callTypeAsString:(unsigned int)a3;
+ (id)getLocationForCall:(id)a3;
+ (id)getLocationForCallerId:(id)a3 andIsoCountryCode:(id)a4;
+ (id)predicateForCallsBetweenStartDate:(id)a3 endDate:(id)a4;
+ (id)predicateForCallsWithAnyMediaTypes:(id)a3;
+ (id)predicateForCallsWithAnyRemoteParticipantHandleNormalizedValues:(id)a3;
+ (id)predicateForCallsWithAnyRemoteParticipantHandleTypes:(id)a3;
+ (id)predicateForCallsWithAnyRemoteParticipantHandleValues:(id)a3;
+ (id)predicateForCallsWithAnyRemoteParticipantHandles:(id)a3;
+ (id)predicateForCallsWithAnyServiceProviders:(id)a3;
+ (id)predicateForCallsWithAnyTTYTypes:(id)a3;
+ (id)predicateForCallsWithAnyUniqueIDs:(id)a3;
+ (id)predicateForCallsWithConversationID:(id)a3;
+ (id)predicateForCallsWithGroupUUID:(id)a3;
+ (id)predicateForCallsWithMediaType:(int64_t)a3;
+ (id)predicateForCallsWithRemoteParticipantHandle:(id)a3;
+ (id)predicateForCallsWithRemoteParticipantHandles:(id)a3;
+ (id)predicateForCallsWithStatus:(unsigned int)a3;
+ (id)predicateForCallsWithStatusJunk:(BOOL)a3;
+ (id)predicateForCallsWithTTYType:(int64_t)a3;
+ (id)serviceProviderForCallType:(unsigned int)a3;
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4;
+ (int64_t)mediaTypeForCallCategory:(unsigned int)a3;
+ (int64_t)ttyTypeForCallCategory:(unsigned int)a3;
+ (unsigned)categoryForCallType:(unsigned int)a3;
+ (unsigned)categoryForMediaType:(int64_t)a3 andTTYType:(int64_t)a4;
+ (unsigned)getCallTypeForCategory:(unsigned int)a3 andServiceProvider:(id)a4;
- (BOOL)canCoalesceRemoteParticipantHandlesFromCall:(id)a3 usingNewStrategy:(BOOL)a4;
- (BOOL)canCoalesceSyncWithRecentsStrategyWithCall:(id)a3;
- (BOOL)canCoalesceWithCall:(id)a3 withStrategy:(id)a4;
- (BOOL)coalesceWithCall:(id)a3 withStrategy:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRecentCall:(id)a3;
- (BOOL)isEquivalentToRecentCall:(id)a3;
- (CHHandle)initiator;
- (CHRecentCall)init;
- (CHRecentCall)initWithCoder:(id)a3;
- (CNContact)contactRef;
- (INInteraction)interaction;
- (NSDateInterval)interactionDateInterval;
- (NSDictionary)dictionaryRepresentation;
- (NSSet)remoteParticipantHandles;
- (NSString)addressBookRecordId;
- (NSString)callerIdForDisplay;
- (NSString)callerIdLabel;
- (NSString)callerIdLocation;
- (NSString)callerName;
- (NSString)callerNetworkFirstName;
- (NSString)callerNetworkSecondName;
- (NSString)contactIdentifier;
- (NSString)localizedBlockedByExtensionName;
- (NSString)notificationThreadIdentifier;
- (NSUUID)outgoingLocalParticipantUUID;
- (id)callOccurrencesArrayByAddingCallOccurrencesFromArray:(id)a3;
- (id)callOccurrencesAsString;
- (id)callerIdSubStringForDisplay;
- (id)callerNameForDisplay;
- (id)coalescedCallWithCall:(id)a3 usingStrategy:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)getLocalizedString:(id)a3;
- (id)validRemoteParticipantHandles;
- (int64_t)countOfExcludedHandles;
- (int64_t)handleType;
- (unint64_t)hash;
- (unint64_t)numberOfOccurrences;
- (void)addressBookRecordId;
- (void)callerName;
- (void)callerNameForDisplay;
- (void)encodeWithCoder:(id)a3;
- (void)fetchAndSetContactIdentifier;
- (void)fetchAndSetFullContact;
- (void)fixCallTypeInfo;
- (void)setBlockedByExtension:(id)a3;
- (void)setCallerIdAvailability:(unsigned int)a3;
- (void)setDuration:(double)a3;
- (void)setLocation;
- (void)setMediaType:(int64_t)a3;
- (void)setName:(id)a3;
- (void)setRead:(BOOL)a3;
- (void)setServiceProvider:(id)a3;
- (void)setTimeToEstablish:(id)a3;
- (void)setTtyType:(int64_t)a3;
- (void)updateTTYAndMediaType;
@end

@implementation CHRecentCall

- (CHRecentCall)init
{
  v11.receiver = self;
  v11.super_class = CHRecentCall;
  v2 = [(CHRecentCall *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v3 UUIDString];
    v5 = [v4 copy];
    uniqueId = v2->_uniqueId;
    v2->_uniqueId = v5;

    v2->_callType = 0x80000000;
    *&v2->_read = 1;
    v2->_duration = 0.0;
    v2->_callStatus = 0;
    v2->_callerIdAvailability = 0;
    v2->_verificationStatus = 0;
    v2->_mediaType = 0;
    v2->_ttyType = 0;
    conversationID = v2->_conversationID;
    v2->_handleType = 0;
    v2->_conversationID = 0;

    v2->_autoAnsweredReason = 0;
    emergencyMediaItems = v2->_emergencyMediaItems;
    v2->_emergencyMediaItems = 0;

    *&v2->_usedEmergencyVideoStreaming = 0;
    v2->_callDirectoryIdentityType = 0;
    reminderUUID = v2->_reminderUUID;
    v2->_screenSharingType = 0;
    v2->_reminderUUID = 0;

    v2->_communicationTrustScore = 4;
  }

  return v2;
}

- (void)updateTTYAndMediaType
{
  if (!self->_mediaType)
  {
    self->_mediaType = [CHRecentCall mediaTypeForCallCategory:self->_callCategory];
  }

  self->_ttyType = [CHRecentCall ttyTypeForCallCategory:self->_callCategory];
}

- (NSDictionary)dictionaryRepresentation
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CHRecentCall callStatus](self, "callStatus")}];
  [v3 setObject:v4 forKeyedSubscript:@"kCHCallOccurrenceCallStatusKey"];

  v5 = MEMORY[0x1E696AD98];
  [(CHRecentCall *)self duration];
  v6 = [v5 numberWithDouble:?];
  [v3 setObject:v6 forKeyedSubscript:@"kCHCallOccurrenceDurationKey"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CHRecentCall mediaType](self, "mediaType")}];
  [v3 setObject:v7 forKeyedSubscript:@"kCHCallOccurrenceMediaTypeKey"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CHRecentCall ttyType](self, "ttyType")}];
  [v3 setObject:v8 forKeyedSubscript:@"kCHCallOccurrenceTTYTypeKey"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CHRecentCall verificationStatus](self, "verificationStatus")}];
  [v3 setObject:v9 forKeyedSubscript:@"kCHCallOccurrenceVerificationStatusKey"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CHRecentCall callType](self, "callType")}];
  [v3 setObject:v10 forKeyedSubscript:@"kCHCallOccurrenceCallTypeKey"];

  v11 = [(CHRecentCall *)self bytesOfDataUsed];
  if (v11)
  {
    [v3 setObject:v11 forKeyedSubscript:@"kCHCallOccurrenceDataUsageKey"];
  }

  v12 = [(CHRecentCall *)self date];
  if (v12)
  {
    [v3 setObject:v12 forKeyedSubscript:@"kCHCallOccurrenceDateKey"];
  }

  v13 = [(CHRecentCall *)self serviceProvider];
  if (v13)
  {
    [v3 setObject:v13 forKeyedSubscript:@"kCHCallOccurrenceServiceProviderKey"];
  }

  v14 = [(CHRecentCall *)self uniqueId];
  if (v14)
  {
    [v3 setObject:v14 forKeyedSubscript:@"kCHCallOccurrenceUniqueIdKey"];
  }

  if ([(CHRecentCall *)self wasEmergencyCall])
  {
    v29 = v12;
    v30 = v11;
    v31 = 0u;
    v32 = 0u;
    v15 = [(CHRecentCall *)self usedEmergencyVideoStreaming];
    v33 = 0u;
    v34 = 0u;
    v16 = [(CHRecentCall *)self emergencyMediaItems];
    v17 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      v20 = *v32;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v32 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v22 = [*(*(&v31 + 1) + 8 * i) emergencyMediaType];
          if (v22 == 1)
          {
            ++v15;
          }

          else if (!v22)
          {
            ++v19;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v18);
    }

    else
    {
      v19 = 0;
    }

    v23 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
    [v3 setObject:v23 forKeyedSubscript:@"kCHCallOccurrenceEmergencyVideosCountKey"];

    v24 = [MEMORY[0x1E696AD98] numberWithInteger:v19];
    [v3 setObject:v24 forKeyedSubscript:@"kCHCallOccurrenceEmergencyImagesCountKey"];

    v12 = v29;
    v11 = v30;
  }

  v25 = [(CHRecentCall *)self reminderUUID];
  if (v25)
  {
    [v3 setObject:v25 forKeyedSubscript:@"kCHCallOccurrenceReminderUUIDKey"];
  }

  v26 = [v3 copy];

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

- (NSSet)remoteParticipantHandles
{
  if (![(NSSet *)self->_remoteParticipantHandles count]&& [(NSString *)self->_callerId length])
  {
    v3 = self->_callerId;
    if ([(NSString *)v3 length])
    {
      v4 = [CHHandle handleTypeForValue:v3];
      if (v4)
      {
        v5 = v4;
        if ([(NSString *)v3 length])
        {
          v6 = [[CHHandle alloc] initWithType:v5 value:v3];
          v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v6, 0}];
          remoteParticipantHandles = self->_remoteParticipantHandles;
          self->_remoteParticipantHandles = v7;
        }
      }
    }
  }

  v9 = self->_remoteParticipantHandles;

  return v9;
}

- (id)validRemoteParticipantHandles
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [(CHRecentCall *)self remoteParticipantHandles];
  v3 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:v2];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (([v9 isTemporary] & 1) != 0 || objc_msgSend(v9, "isPseudonym"))
        {
          [v3 removeObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (unint64_t)numberOfOccurrences
{
  v2 = [(CHRecentCall *)self callOccurrences];
  v3 = [v2 count];

  if (v3 <= 1)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

- (int64_t)countOfExcludedHandles
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(CHRecentCall *)self remoteParticipantHandles];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (([v8 isTemporary] & 1) != 0 || objc_msgSend(v8, "isPseudonym"))
        {
          ++v5;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

- (NSString)notificationThreadIdentifier
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [(CHRecentCall *)self remoteParticipantHandles];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 ^= [*(*(&v12 + 1) + 8 * i) hash];
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
  v9 = [v8 stringValue];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (NSUUID)outgoingLocalParticipantUUID
{
  outgoingLocalParticipantUUID = self->_outgoingLocalParticipantUUID;
  p_outgoingLocalParticipantUUID = &self->_outgoingLocalParticipantUUID;
  v4 = outgoingLocalParticipantUUID;
  if (!outgoingLocalParticipantUUID)
  {
    objc_storeStrong(p_outgoingLocalParticipantUUID, self->_localParticipantUUID);
    v4 = self->_outgoingLocalParticipantUUID;
  }

  return v4;
}

- (NSString)callerIdForDisplay
{
  v4 = +[CHLogServer sharedInstance];
  v5 = [v4 logHandleForDomain:"CHRecentCall"];

  v6 = v5;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(CHRecentCall *)a2 addressBookRecordId];
  }

  v7 = [(CHRecentCall *)self validRemoteParticipantHandles];
  v8 = [v7 anyObject];

  if (![(NSString *)self->_callerIdFormatted length])
  {
    v9 = [v8 value];

    if (v9)
    {
      if ([v8 type] == 2)
      {
        v10 = [CHPhoneNumber alloc];
        v11 = [v8 value];
        v12 = [(CHRecentCall *)self isoCountryCode];
        v13 = [(CHPhoneNumber *)v10 initWithDigits:v11 isoCountryCode:v12];

        v14 = [(NSString *)v13 formattedRepresentation];
        callerIdFormatted = self->_callerIdFormatted;
        self->_callerIdFormatted = v14;

        if (!self->_callerIdFormatted)
        {
          v16 = [v8 value];
          v17 = self->_callerIdFormatted;
          self->_callerIdFormatted = v16;
        }
      }

      else
      {
        v18 = [v8 value];
        v13 = self->_callerIdFormatted;
        self->_callerIdFormatted = v18;
      }
    }
  }

  v19 = self->_callerIdFormatted;
  v20 = v19;

  return v19;
}

+ (id)unarchivedObjectClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  return [v2 setWithObjects:{v3, objc_opt_class(), 0}];
}

+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E696ACD0];
  v7 = a3;
  v8 = [a1 unarchivedObjectClasses];
  v9 = [v6 unarchivedObjectOfClasses:v8 fromData:v7 error:a4];

  return v9;
}

- (id)callOccurrencesArrayByAddingCallOccurrencesFromArray:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CHRecentCall *)self callOccurrences];
  if (![v5 count])
  {
    v6 = [(CHRecentCall *)self dictionaryRepresentation];
    v12[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

    v5 = v7;
  }

  v8 = [v5 arrayByAddingObjectsFromArray:v4];

  v9 = [v8 sortedArrayUsingComparator:&__block_literal_global_11];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t __69__CHRecentCall_callOccurrencesArrayByAddingCallOccurrencesFromArray___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"kCHCallOccurrenceDateKey"];
  v6 = [v4 objectForKeyedSubscript:@"kCHCallOccurrenceDateKey"];

  if (v6)
  {
    v7 = [v5 compare:v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)canCoalesceSyncWithRecentsStrategyWithCall:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CHRecentCall *)self callStatus]!= 8;
  if (((v5 ^ ([v4 callStatus] == 8)) & 1) == 0)
  {
    v24 = +[CHLogServer sharedInstance];
    v25 = [v24 logHandleForDomain:"CHRecentCall"];

    v26 = v25;
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v27 = [(CHRecentCall *)self uniqueId];
    v28 = [v4 uniqueId];
    v29 = [CHRecentCall callStatusAsString:[(CHRecentCall *)self callStatus]];
    v30 = +[CHRecentCall callStatusAsString:](CHRecentCall, "callStatusAsString:", [v4 callStatus]);
    v54 = 138544130;
    v55 = v27;
    v56 = 2114;
    v57 = v28;
    v58 = 2114;
    v59 = v29;
    v60 = 2114;
    v61 = v30;
    v31 = "%{public}@ cannot coalesce with %{public}@: Call status doesn't match. MyStatus: %{public}@, OtherStatus: %{public}@";
    goto LABEL_24;
  }

  v6 = [(CHRecentCall *)self mediaType];
  if (v6 != [v4 mediaType])
  {
    v32 = +[CHLogServer sharedInstance];
    v33 = [v32 logHandleForDomain:"CHRecentCall"];

    v26 = v33;
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v27 = [(CHRecentCall *)self uniqueId];
    v28 = [v4 uniqueId];
    v29 = [CHRecentCall callMediaTypeAsString:[(CHRecentCall *)self mediaType]];
    v30 = +[CHRecentCall callMediaTypeAsString:](CHRecentCall, "callMediaTypeAsString:", [v4 mediaType]);
    v54 = 138544130;
    v55 = v27;
    v56 = 2114;
    v57 = v28;
    v58 = 2114;
    v59 = v29;
    v60 = 2114;
    v61 = v30;
    v31 = "%{public}@ cannot coalesce with %{public}@: Call media type does not match. MyMediaType: %{public}@, OtherMediaType: %{public}@";
    goto LABEL_24;
  }

  v7 = [(CHRecentCall *)self ttyType];
  if (v7 != [v4 ttyType])
  {
    v34 = +[CHLogServer sharedInstance];
    v35 = [v34 logHandleForDomain:"CHRecentCall"];

    v26 = v35;
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v27 = [(CHRecentCall *)self uniqueId];
    v28 = [v4 uniqueId];
    v29 = [CHRecentCall callTTYTypeAsString:[(CHRecentCall *)self ttyType]];
    v30 = +[CHRecentCall callTTYTypeAsString:](CHRecentCall, "callTTYTypeAsString:", [v4 ttyType]);
    v54 = 138544130;
    v55 = v27;
    v56 = 2114;
    v57 = v28;
    v58 = 2114;
    v59 = v29;
    v60 = 2114;
    v61 = v30;
    v31 = "%{public}@ cannot coalesce with %{public}@: Call TTY type does not match. MyTTYType: %{public}@, OtherTTYType: %{public}@";
LABEL_24:
    _os_log_impl(&dword_1C3E90000, v26, OS_LOG_TYPE_DEFAULT, v31, &v54, 0x2Au);

LABEL_25:
    goto LABEL_26;
  }

  v8 = [(CHRecentCall *)self date];
  v9 = [v4 date];
  v10 = [v8 isSameDayAsDate:v9];

  if ((v10 & 1) == 0)
  {
    v38 = +[CHLogServer sharedInstance];
    v39 = [v38 logHandleForDomain:"CHRecentCall"];

    v26 = v39;
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v29 = [(CHRecentCall *)self uniqueId];
    v40 = [v4 uniqueId];
    v54 = 138543618;
    v55 = v29;
    v56 = 2114;
    v57 = v40;
    _os_log_impl(&dword_1C3E90000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ cannot coalesce with %{public}@: Calls happened on different dates.", &v54, 0x16u);

    goto LABEL_25;
  }

  v11 = [(CHRecentCall *)self serviceProvider];
  v12 = [v4 serviceProvider];
  v13 = (v11 | v12) == 0;
  if (v12)
  {
    v13 = [v11 isEqualToString:v12];
  }

  if ((v13 & 1) == 0)
  {
    v41 = +[CHLogServer sharedInstance];
    v42 = [v41 logHandleForDomain:"CHRecentCall"];

    v26 = v42;
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v43 = [(CHRecentCall *)self uniqueId];
    v44 = [v4 uniqueId];
    v45 = [(CHRecentCall *)self serviceProvider];
    v46 = [v4 serviceProvider];
    v54 = 138544130;
    v55 = v43;
    v56 = 2114;
    v57 = v44;
    v58 = 2114;
    v59 = v45;
    v60 = 2114;
    v61 = v46;
    v47 = "%{public}@ cannot coalesce with %{public}@: Call service provider does not match. MyServiceProvider: %{public}@, OtherServiceProvider: %{public}@";
LABEL_38:
    _os_log_impl(&dword_1C3E90000, v26, OS_LOG_TYPE_DEFAULT, v47, &v54, 0x2Au);

    goto LABEL_26;
  }

  v14 = [(CHRecentCall *)self localParticipantUUID];
  v15 = [v4 localParticipantUUID];
  v16 = (v14 | v15) == 0;
  if (v15)
  {
    v16 = [v14 isEqual:v15];
  }

  if ((v16 & 1) == 0)
  {
    v48 = +[CHLogServer sharedInstance];
    v49 = [v48 logHandleForDomain:"CHRecentCall"];

    v26 = v49;
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v43 = [(CHRecentCall *)self uniqueId];
    v44 = [v4 uniqueId];
    v45 = [(CHRecentCall *)self localParticipantUUID];
    v46 = [v4 localParticipantUUID];
    v54 = 138544130;
    v55 = v43;
    v56 = 2114;
    v57 = v44;
    v58 = 2114;
    v59 = v45;
    v60 = 2114;
    v61 = v46;
    v47 = "%{public}@ cannot coalesce with %{public}@: Call UUIDs are not the same. MyLocalParticipantUUID: %{public}@, OtherLocalParticipantUUID: %{public}@";
    goto LABEL_38;
  }

  v17 = [(CHRecentCall *)self blockedByExtension];
  v18 = [v4 blockedByExtension];
  v19 = (v17 | v18) == 0;
  if (v18)
  {
    v19 = [v17 isEqual:v18];
  }

  if ((v19 & 1) == 0)
  {
    v50 = +[CHLogServer sharedInstance];
    v51 = [v50 logHandleForDomain:"CHRecentCall"];

    v26 = v51;
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v43 = [(CHRecentCall *)self uniqueId];
    v44 = [v4 uniqueId];
    v45 = [(CHRecentCall *)self blockedByExtension];
    v46 = [v4 blockedByExtension];
    v54 = 138544130;
    v55 = v43;
    v56 = 2114;
    v57 = v44;
    v58 = 2114;
    v59 = v45;
    v60 = 2114;
    v61 = v46;
    v47 = "%{public}@ cannot coalesce with %{public}@: Call blockedByExtensions are not the same. MyBlockedByExtension: %{public}@, OtherBlockedByExtension: %{public}@";
    goto LABEL_38;
  }

  v20 = [(CHRecentCall *)self identityExtension];
  v21 = [v4 identityExtension];
  v22 = (v20 | v21) == 0;
  if (v21)
  {
    v22 = [v20 isEqual:v21];
  }

  if ((v22 & 1) == 0)
  {
    v52 = +[CHLogServer sharedInstance];
    v53 = [v52 logHandleForDomain:"CHRecentCall"];

    v26 = v53;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v43 = [(CHRecentCall *)self uniqueId];
      v44 = [v4 uniqueId];
      v45 = [(CHRecentCall *)self identityExtension];
      v46 = [v4 identityExtension];
      v54 = 138544130;
      v55 = v43;
      v56 = 2114;
      v57 = v44;
      v58 = 2114;
      v59 = v45;
      v60 = 2114;
      v61 = v46;
      v47 = "%{public}@ cannot coalesce with %{public}@: Call identityExtensions are not the same. MyIdentityExtension: %{public}@, OtherIdentityExtension: %{public}@";
      goto LABEL_38;
    }

LABEL_26:

    v23 = 0;
    goto LABEL_27;
  }

  v23 = [(CHRecentCall *)self canCoalesceRemoteParticipantHandlesFromCall:v4 usingNewStrategy:0];
LABEL_27:

  v36 = *MEMORY[0x1E69E9840];
  return v23;
}

- (BOOL)canCoalesceRemoteParticipantHandlesFromCall:(id)a3 usingNewStrategy:(BOOL)a4
{
  v77 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!-[CHRecentCall hasMessage](self, "hasMessage") && ![v6 hasMessage] || a4)
  {
    v15 = [(CHRecentCall *)self isoCountryCode];
    v16 = [v6 isoCountryCode];
    v17 = (v15 | v16) == 0;
    if (v16)
    {
      v17 = [v15 isEqualToString:v16];
    }

    if (v17)
    {
      v18 = [(CHRecentCall *)self callerIdIsBlocked];
      if (v18 != [v6 callerIdIsBlocked])
      {
        v19 = +[CHLogServer sharedInstance];
        v20 = [v19 logHandleForDomain:"CHRecentCall"];

        v9 = v20;
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        v21 = [(CHRecentCall *)self uniqueId];
        v22 = [v6 uniqueId];
        v70 = 138544130;
        v71 = v21;
        v72 = 2114;
        v73 = v22;
        v74 = 1026;
        *v75 = [(CHRecentCall *)self callerIdIsBlocked];
        *&v75[4] = 1026;
        *&v75[6] = [v6 callerIdIsBlocked];
        _os_log_impl(&dword_1C3E90000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ cannot coalesce with %{public}@: callerID block statuses are not the same. self.callerIdIsBlocked: %{public}d, otherCall.callerIdIsBlocked: %{public}d", &v70, 0x22u);
LABEL_17:

        goto LABEL_18;
      }

      v30 = [(CHRecentCall *)self remoteParticipantHandles];
      v31 = [v30 count];

      v32 = [v6 remoteParticipantHandles];
      v33 = [v32 count];

      if (v31 == v33)
      {
        if (v31 != 1)
        {
          if (!v31)
          {
            v34 = +[CHLogServer sharedInstance];
            v35 = [v34 logHandleForDomain:"CHRecentCall"];

            v9 = v35;
            if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_18;
            }

            v10 = [(CHRecentCall *)self uniqueId];
            v11 = [v6 uniqueId];
            v70 = 138544130;
            v71 = v10;
            v72 = 2114;
            v73 = v11;
            v74 = 2048;
            *v75 = 0;
            *&v75[8] = 2048;
            v76 = 0;
            v12 = "%{public}@ cannot coalesce with %{public}@: calls don't have any remote participants. self.remoteParticipantHandles.count: %lu, otherCall.remoteParticipantHandles.count: %lu";
            v13 = v9;
            v14 = 42;
            goto LABEL_7;
          }

          v52 = [(CHRecentCall *)self remoteParticipantHandles];
          v53 = [v52 count];

          if (v53 < 2)
          {
            goto LABEL_46;
          }

          v54 = [(CHRecentCall *)self notificationThreadIdentifier];
          v55 = [v6 notificationThreadIdentifier];
          v56 = [v54 isEqualToString:v55];

          if ((v56 & 1) == 0)
          {
            goto LABEL_46;
          }

LABEL_44:
          v27 = 1;
          goto LABEL_20;
        }

        v40 = [(CHRecentCall *)self remoteParticipantHandles];
        v9 = [v40 anyObject];

        v41 = [v6 remoteParticipantHandles];
        v42 = [v41 anyObject];

        v43 = [v9 value];
        if ([v43 length])
        {
          v44 = [v42 value];
          v45 = [v44 length];

          if (v45)
          {
            v46 = [v42 normalizedValue];
            if (v46)
            {
              v47 = v46;
              v48 = [v42 normalizedValue];
              if ([v48 length])
              {
                v49 = [v9 normalizedValue];
                v50 = [v42 normalizedValue];
                v51 = [v49 isEqualToString:v50];

                if (v51)
                {

                  goto LABEL_44;
                }
              }

              else
              {
              }
            }

            v64 = [v42 value];
            if ([v64 length])
            {
              v65 = [v9 value];
              v66 = [v42 value];
              v67 = [v65 isEqualToString:v66];

              if (v67)
              {
                goto LABEL_44;
              }
            }

            else
            {
            }

LABEL_46:
            v68 = +[CHLogServer sharedInstance];
            v69 = [v68 logHandleForDomain:"CHRecentCall"];

            v9 = v69;
            if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_18;
            }

            v10 = [(CHRecentCall *)self notificationThreadIdentifier];
            v11 = [v6 notificationThreadIdentifier];
            v70 = 138543618;
            v71 = v10;
            v72 = 2114;
            v73 = v11;
            v12 = "%{public}@ cannot coalesce with %{public}@: Handle hashes are not the same";
            goto LABEL_6;
          }
        }

        else
        {
        }

        v57 = +[CHLogServer sharedInstance];
        v58 = [v57 logHandleForDomain:"CHRecentCall"];

        v59 = v58;
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          v60 = [(CHRecentCall *)self uniqueId];
          v61 = [v6 uniqueId];
          v62 = [(CHRecentCall *)self remoteParticipantHandles];
          v63 = [v6 remoteParticipantHandles];
          v70 = 138544130;
          v71 = v60;
          v72 = 2114;
          v73 = v61;
          v74 = 2112;
          *v75 = v62;
          *&v75[8] = 2112;
          v76 = v63;
          _os_log_impl(&dword_1C3E90000, v59, OS_LOG_TYPE_DEFAULT, "%{public}@ cannot coalesce with %{public}@: One or both calls have a remoteParticipantHandle with length 0. self.remoteParticipantHandles: %@, otherCall.remoteParticipantHandles: %@", &v70, 0x2Au);
        }

        goto LABEL_19;
      }

      v36 = +[CHLogServer sharedInstance];
      v37 = [v36 logHandleForDomain:"CHRecentCall"];

      v9 = v37;
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v21 = [(CHRecentCall *)self uniqueId];
      v22 = [v6 uniqueId];
      v25 = [(CHRecentCall *)self remoteParticipantHandles];
      v38 = [v25 count];
      v39 = [v6 remoteParticipantHandles];
      v70 = 138544130;
      v71 = v21;
      v72 = 2114;
      v73 = v22;
      v74 = 2048;
      *v75 = v38;
      *&v75[8] = 2048;
      v76 = [v39 count];
      _os_log_impl(&dword_1C3E90000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ cannot coalesce with %{public}@: remote participant counts are different. self.remoteParticipantHandles.count: %lu, otherCall.remoteParticipantHandles.count: %lu", &v70, 0x2Au);
    }

    else
    {
      v23 = +[CHLogServer sharedInstance];
      v24 = [v23 logHandleForDomain:"CHRecentCall"];

      v9 = v24;
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v21 = [(CHRecentCall *)self uniqueId];
      v22 = [v6 uniqueId];
      v25 = [(CHRecentCall *)self isoCountryCode];
      v26 = [v6 isoCountryCode];
      v70 = 138544130;
      v71 = v21;
      v72 = 2114;
      v73 = v22;
      v74 = 2114;
      *v75 = v25;
      *&v75[8] = 2114;
      v76 = v26;
      _os_log_impl(&dword_1C3E90000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ cannot coalesce with %{public}@: ISO codes are not the same. self.isoCountryCode: %{public}@, otherCall.isoCountryCode: %{public}@", &v70, 0x2Au);
    }

    goto LABEL_17;
  }

  v7 = +[CHLogServer sharedInstance];
  v8 = [v7 logHandleForDomain:"CHRecentCall"];

  v9 = v8;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(CHRecentCall *)self uniqueId];
    v11 = [v6 uniqueId];
    v70 = 138543618;
    v71 = v10;
    v72 = 2114;
    v73 = v11;
    v12 = "%{public}@ cannot coalesce with %{public}@: Both calls have messages";
LABEL_6:
    v13 = v9;
    v14 = 22;
LABEL_7:
    _os_log_impl(&dword_1C3E90000, v13, OS_LOG_TYPE_DEFAULT, v12, &v70, v14);
  }

LABEL_18:

LABEL_19:
  v27 = 0;
LABEL_20:

  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

- (BOOL)canCoalesceWithCall:(id)a3 withStrategy:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToString:@"kCHCoalescingStrategyRecents"])
  {
    if (![(CHRecentCall *)self canCoalesceSyncWithRecentsStrategyWithCall:v6])
    {
LABEL_12:
      v13 = 0;
      goto LABEL_13;
    }
  }

  else if ([v7 isEqualToString:@"kCHCoalescingStrategyCollapseIfEqual"])
  {
    if (![(CHRecentCall *)self canCoalesceRemoteParticipantHandlesFromCall:v6 usingNewStrategy:0])
    {
      goto LABEL_12;
    }
  }

  else if (![v7 isEqualToString:@"kCHCoalescingStrategyFaceTimeRecents"] || !-[CHRecentCall canCoalesceRemoteParticipantHandlesFromCall:usingNewStrategy:](self, "canCoalesceRemoteParticipantHandlesFromCall:usingNewStrategy:", v6, 1))
  {
    goto LABEL_12;
  }

  v8 = +[CHLogServer sharedInstance];
  v9 = [v8 logHandleForDomain:"CHRecentCall"];

  v10 = v9;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(CHRecentCall *)self uniqueId];
    v12 = [v6 uniqueId];
    v16 = 138412802;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_1C3E90000, v10, OS_LOG_TYPE_DEFAULT, "%@ can coalesce with %@ using %@", &v16, 0x20u);
  }

  v13 = 1;
LABEL_13:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)coalesceWithCall:(id)a3 withStrategy:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = +[CHLogServer sharedInstance];
  v10 = [v9 logHandleForDomain:"CHRecentCall"];

  v11 = v10;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(CHRecentCall *)self uniqueId];
    v13 = NSStringFromSelector(a2);
    v14 = [v7 uniqueId];
    v29 = 138544130;
    v30 = v12;
    v31 = 2114;
    v32 = v13;
    v33 = 2114;
    v34 = v14;
    v35 = 2112;
    v36 = v8;
    _os_log_impl(&dword_1C3E90000, v11, OS_LOG_TYPE_DEFAULT, "==> %{public}@ %{public}@ %{public}@ with %@", &v29, 0x2Au);
  }

  v15 = [(CHRecentCall *)self canCoalesceWithCall:v7 withStrategy:v8];
  if (v15)
  {
    v16 = [v7 callOccurrences];
    v17 = [(CHRecentCall *)self callOccurrencesArrayByAddingCallOccurrencesFromArray:v16];
    [(CHRecentCall *)self setCallOccurrences:v17];

    -[CHRecentCall setUnreadCount:](self, "setUnreadCount:", -[CHRecentCall unreadCount](self, "unreadCount") + [v7 unreadCount]);
    v18 = 1;
    [(CHRecentCall *)self setMultiCall:1];
    if (![(CHRecentCall *)self hasMessage])
    {
      v18 = [v7 hasMessage];
    }

    [(CHRecentCall *)self setHasMessage:v18];
  }

  v19 = +[CHLogServer sharedInstance];
  v20 = [v19 logHandleForDomain:"CHRecentCall"];

  v21 = v20;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [(CHRecentCall *)self uniqueId];
    v23 = NSStringFromSelector(a2);
    v24 = [v7 uniqueId];
    v25 = v24;
    v29 = 138544386;
    v26 = @"NO";
    v30 = v22;
    if (v15)
    {
      v26 = @"YES";
    }

    v31 = 2114;
    v32 = v23;
    v33 = 2114;
    v34 = v24;
    v35 = 2114;
    v36 = v8;
    v37 = 2114;
    v38 = v26;
    _os_log_impl(&dword_1C3E90000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ %{public}@ with %{public}@ = %{public}@", &v29, 0x34u);
  }

  v27 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)coalescedCallWithCall:(id)a3 usingStrategy:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([(CHRecentCall *)self canCoalesceWithCall:v6 withStrategy:a4])
  {
    v7 = [v6 callOccurrences];
    if (![v7 count])
    {
      v8 = [v6 dictionaryRepresentation];
      v15[0] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

      v7 = v9;
    }

    v10 = [(CHRecentCall *)self copy];
    v11 = [(CHRecentCall *)self callOccurrencesArrayByAddingCallOccurrencesFromArray:v7];
    [v10 setCallOccurrences:v11];

    v12 = 1;
    [v10 setMultiCall:1];
    [v10 setUnreadCount:{objc_msgSend(v10, "unreadCount") + objc_msgSend(v6, "unreadCount")}];
    if (([v10 hasMessage] & 1) == 0)
    {
      v12 = [v6 hasMessage];
    }

    [v10 setHasMessage:v12];
  }

  else
  {
    v10 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)setDuration:(double)a3
{
  v3 = fmax(a3, 0.0);
  if (self->_duration != v3)
  {
    self->_duration = v3;
  }
}

- (void)setName:(id)a3
{
  v4 = a3;
  v13 = v4;
  if (self->_blockedByExtension)
  {
    name = self->_name;
    self->_name = 0;
    goto LABEL_12;
  }

  if ([v4 length])
  {
    v6 = v13;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v9 = self->_name;
  p_name = &self->_name;
  v10 = v9;
  v11 = v7;
  name = v11;
  if (!(v10 | v11))
  {
    goto LABEL_12;
  }

  if (!v11)
  {

    goto LABEL_11;
  }

  v12 = [v10 isEqualToString:v11];

  if ((v12 & 1) == 0)
  {
LABEL_11:
    objc_storeStrong(p_name, v6);
  }

LABEL_12:
}

- (void)setBlockedByExtension:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_blockedByExtension, a3);
    name = self->_name;
    self->_name = 0;

    v5 = v7;
  }
}

- (CHHandle)initiator
{
  if ((self->_callStatus & 0xD) != 0 && !self->_initiator)
  {
    v3 = [(CHRecentCall *)self validRemoteParticipantHandles];
    v4 = [v3 count];

    if (v4 == 1)
    {
      v5 = [(CHRecentCall *)self validRemoteParticipantHandles];
      v6 = [v5 anyObject];
      initiator = self->_initiator;
      self->_initiator = v6;
    }
  }

  v8 = self->_initiator;

  return v8;
}

- (void)setTimeToEstablish:(id)a3
{
  v12 = a3;
  [v12 doubleValue];
  if (v4 <= 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = v12;
  }

  timeToEstablish = self->_timeToEstablish;
  p_timeToEstablish = &self->_timeToEstablish;
  v8 = timeToEstablish;
  v9 = v5;
  v10 = v9;
  if (v9 | v8)
  {
    if (v9)
    {
      v11 = [v8 isEqual:v9];

      if (v11)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    objc_storeStrong(p_timeToEstablish, v5);
  }

LABEL_10:
}

- (void)setRead:(BOOL)a3
{
  if (self->_read != a3)
  {
    v4 = a3;
    self->_read = a3;
    v6 = [(CHRecentCall *)self unreadCount];
    if (v4)
    {
      v7 = v6 - 1;
    }

    else
    {
      v7 = v6 + 1;
    }

    [(CHRecentCall *)self setUnreadCount:v7];
  }
}

- (void)fetchAndSetContactIdentifier
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = [(CHRecentCall *)self callerId];
  v4 = [v3 length];

  if (v4)
  {
    v5 = +[CHSharedAddressBook get];
    v6 = [(CHRecentCall *)self callerId];
    v7 = [v5 fetchAddressBookInfoFromCacheForKey:v6];

    v8 = +[CHLogServer sharedInstance];
    v9 = [v8 logHandleForDomain:"CHRecentCall"];

    v10 = v9;
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v11)
      {
        v12 = [(CHRecentCall *)self callerId];
        v33 = 138412290;
        v34 = v12;
        _os_log_impl(&dword_1C3E90000, v10, OS_LOG_TYPE_DEFAULT, "Address book information for %@ found in our cache, using it", &v33, 0xCu);
      }

      v13 = [v7 valueForKey:@"kCHABCacheCNContactIdKey"];
      contactIdentifier = self->_contactIdentifier;
      self->_contactIdentifier = v13;

      v15 = [v7 valueForKey:@"kCHABCacheCNContactRefKey"];
      contactRef = self->_contactRef;
      self->_contactRef = v15;

      v17 = +[CHLogServer sharedInstance];
      v18 = [v17 logHandleForDomain:"CHRecentCall"];

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = self->_contactIdentifier;
        v20 = self->_contactRef;
        v33 = 138412546;
        v34 = v19;
        v35 = 2048;
        v36 = v20;
        _os_log_impl(&dword_1C3E90000, v18, OS_LOG_TYPE_DEFAULT, "Got CNContact Id: %@, CNContact Pointer: %p from the cache.", &v33, 0x16u);
      }
    }

    else
    {
      if (v11)
      {
        v21 = [(CHRecentCall *)self callerId];
        v33 = 138412290;
        v34 = v21;
        _os_log_impl(&dword_1C3E90000, v10, OS_LOG_TYPE_DEFAULT, "Address book information for %@ not found in our cache, looking it up", &v33, 0xCu);
      }

      v22 = [(CHRecentCall *)self callerIdIsEmailAddress];
      v23 = [(CHRecentCall *)self phoneBookManager];
      v24 = [(CHRecentCall *)self callerId];
      v25 = [(CHRecentCall *)self isoCountryCode];
      v18 = [v23 getRecordId:v24 countryCode:v25 isEmail:v22];

      v26 = [v18 valueForKey:@"kCHABCacheCNContactIdKey"];
      v27 = self->_contactIdentifier;
      self->_contactIdentifier = v26;

      v28 = [(CHRecentCall *)self callerId];
      [v5 insertAddressBookInfoIntoCache:v18 forKey:v28];
    }
  }

  v29 = +[CHLogServer sharedInstance];
  v30 = [v29 logHandleForDomain:"CHRecentCall"];

  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = self->_contactIdentifier;
    v33 = 138412290;
    v34 = v31;
    _os_log_impl(&dword_1C3E90000, v30, OS_LOG_TYPE_DEFAULT, "Fetched addressbook record id and multi value id. CNContact Id: %@.", &v33, 0xCu);
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)fetchAndSetFullContact
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [(CHRecentCall *)self callerId];
  v4 = [v3 length];

  if (v4)
  {
    v5 = +[CHSharedAddressBook get];
    v6 = [(CHRecentCall *)self callerId];
    v7 = [v5 fetchAddressBookInfoFromCacheForKey:v6];

    v8 = [v7 valueForKey:@"kCHABCacheCNContactRefKey"];
    v9 = [(CHRecentCall *)self callerIdIsEmailAddress];
    v10 = +[CHLogServer sharedInstance];
    v11 = [v10 logHandleForDomain:"CHRecentCall"];

    v12 = v11;
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v13)
      {
        v14 = [(CHRecentCall *)self callerId];
        v28 = 138412290;
        v29 = v14;
        _os_log_impl(&dword_1C3E90000, v12, OS_LOG_TYPE_DEFAULT, "Full contact information for %@ found in our cache, using it", &v28, 0xCu);
      }

      objc_storeStrong(&self->_contactRef, v8);
      v15 = +[CHLogServer sharedInstance];
      v16 = [v15 logHandleForDomain:"CHRecentCall"];

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        contactIdentifier = self->_contactIdentifier;
        contactRef = self->_contactRef;
        v28 = 138412546;
        v29 = contactIdentifier;
        v30 = 2048;
        v31 = contactRef;
        _os_log_impl(&dword_1C3E90000, v16, OS_LOG_TYPE_DEFAULT, "Got CNContact Id: %@, CNContact Pointer: %p from the cache.", &v28, 0x16u);
      }
    }

    else
    {
      if (v13)
      {
        v19 = [(CHRecentCall *)self callerId];
        v28 = 138412290;
        v29 = v19;
        _os_log_impl(&dword_1C3E90000, v12, OS_LOG_TYPE_DEFAULT, "Full contact information for %@ not found in our cache, looking it up", &v28, 0xCu);
      }

      v16 = [(CHRecentCall *)self contactIdentifier];
      if ([v16 length])
      {
        v20 = [(CHRecentCall *)self phoneBookManager];
        v21 = [v20 fetchFullCNContactForContactIdentifier:v16 isEmail:v9];
        v22 = self->_contactRef;
        self->_contactRef = v21;
      }

      if (!self->_contactRef || (v23 = [v7 mutableCopy], objc_msgSend(v23, "setObject:forKey:", self->_contactRef, @"kCHABCacheCNContactRefKey"), -[CHRecentCall callerId](self, "callerId"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "insertAddressBookInfoIntoCache:forKey:", v23, v24), v24, v23, !self->_contactRef))
      {
        v25 = objc_alloc_init(MEMORY[0x1E695CD58]);
        v26 = self->_contactRef;
        self->_contactRef = v25;
      }
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (NSString)contactIdentifier
{
  contactIdentifier = self->_contactIdentifier;
  if (!contactIdentifier)
  {
    [(CHRecentCall *)self fetchAndSetContactIdentifier];
    contactIdentifier = self->_contactIdentifier;
  }

  if ([(NSString *)contactIdentifier isEqualToString:@"kCNContactInfoNotFound"])
  {
    v4 = +[CHLogServer sharedInstance];
    v5 = [v4 logHandleForDomain:"CHRecentCall"];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C3E90000, v5, OS_LOG_TYPE_DEFAULT, "CNContact was searched before and not found. Don't need to look agian. Return nil.", v8, 2u);
    }

    v6 = 0;
  }

  else
  {
    v6 = self->_contactIdentifier;
  }

  return v6;
}

- (CNContact)contactRef
{
  contactRef = self->_contactRef;
  if (!contactRef)
  {
    [(CHRecentCall *)self fetchAndSetFullContact];
    contactRef = self->_contactRef;
  }

  return contactRef;
}

- (NSString)addressBookRecordId
{
  v4 = +[CHLogServer sharedInstance];
  v5 = [v4 logHandleForDomain:"CHRecentCall"];

  v6 = v5;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(CHRecentCall *)a2 addressBookRecordId];
  }

  if (self->_addressBookRecordId)
  {
    v7 = 0;
  }

  else
  {
    [(CHRecentCall *)self fetchAndSetContactIdentifier];
    v7 = [(CHRecentCall *)self contactRef];
    if (!v7)
    {
      objc_storeStrong(&self->_addressBookRecordId, @"kCNContactInfoNotFound");
    }
  }

  if ([(NSString *)self->_addressBookRecordId isEqualToString:@"kCNContactInfoNotFound"])
  {
    v8 = +[CHLogServer sharedInstance];
    v9 = [v8 logHandleForDomain:"CHRecentCall"];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(CHRecentCall *)v9 addressBookRecordId];
    }

    v10 = 0;
  }

  else
  {
    if (v7)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v7, "iOSLegacyIdentifier")];
      addressBookRecordId = self->_addressBookRecordId;
      self->_addressBookRecordId = v11;

      v13 = +[CHLogServer sharedInstance];
      v14 = [v13 logHandleForDomain:"CHRecentCall"];

      v15 = v14;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [CHRecentCall addressBookRecordId];
      }
    }

    v10 = self->_addressBookRecordId;
  }

  v16 = +[CHLogServer sharedInstance];
  v17 = [v16 logHandleForDomain:"CHRecentCall"];

  v18 = v17;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [CHRecentCall addressBookRecordId];
  }

  return v10;
}

- (void)setCallerIdAvailability:(unsigned int)a3
{
  if (self->_callerIdAvailability != a3)
  {
    self->_callerIdAvailability = a3;
    [(CHRecentCall *)self setCallerIdIsBlocked:a3 == 1];
  }
}

- (NSString)callerNetworkFirstName
{
  v2 = [(CHRecentCall *)self name];
  v3 = [v2 rangeOfString:@" "];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = v2;
  }

  else
  {
    v4 = [v2 substringToIndex:v3];
  }

  v5 = v4;
  if (![v4 length])
  {

    v5 = 0;
  }

  return v5;
}

- (NSString)callerNetworkSecondName
{
  v2 = [(CHRecentCall *)self name];
  v3 = [v2 rangeOfString:@" "];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL || (v5 = v3 + v4, v3 + v4 >= [v2 length]))
  {
    v6 = 0;
  }

  else
  {
    v6 = [v2 substringFromIndex:v5];
  }

  if (![v6 length])
  {

    v6 = 0;
  }

  return v6;
}

- (int64_t)handleType
{
  if (self->_handleType)
  {
    return self->_handleType;
  }

  v3 = [(CHRecentCall *)self callerId];
  v4 = [CHHandle handleTypeForValue:v3];

  return v4;
}

- (NSString)callerName
{
  v3 = +[CHLogServer sharedInstance];
  v4 = [v3 logHandleForDomain:"CHRecentCall"];

  v5 = v4;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CHRecentCall callerName];
  }

  if (!self->_callerName)
  {
    v6 = +[CHLogServer sharedInstance];
    v7 = [v6 logHandleForDomain:"CHRecentCall"];

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C3E90000, v7, OS_LOG_TYPE_DEFAULT, "Caller name is null. Look in AddressBook for a name", buf, 2u);
    }

    v8 = [(CHRecentCall *)self phoneBookManager];
    v9 = [(CHRecentCall *)self contactRef];
    v10 = [v8 getPersonsNameForContact:v9];
    callerName = self->_callerName;
    self->_callerName = v10;

    if (!self->_callerName)
    {
      v12 = +[CHLogServer sharedInstance];
      v13 = [v12 logHandleForDomain:"CHRecentCall"];

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_1C3E90000, v13, OS_LOG_TYPE_DEFAULT, "AddressBook did not have a caller name for this caller id. Setting it to network sent name.", v21, 2u);
      }

      v14 = [(CHRecentCall *)self name];
      v15 = self->_callerName;
      self->_callerName = v14;
    }
  }

  v16 = +[CHLogServer sharedInstance];
  v17 = [v16 logHandleForDomain:"CHRecentCall"];

  v18 = v17;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [CHRecentCall callerName];
  }

  v19 = self->_callerName;

  return v19;
}

- (id)getLocalizedString:(id)a3
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = +[CHLogServer sharedInstance];
  v7 = [v6 logHandleForDomain:"CHRecentCall"];

  v8 = v7;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CHRecentCall getLocalizedString:];
  }

  v9 = +[CHLogServer sharedInstance];
  v10 = [v9 logHandleForDomain:"CHRecentCall"];

  v11 = v10;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [CHRecentCall getLocalizedString:v5];
  }

  v12 = [v5 localizedStringForKey:v4 value:@"Default Value" table:@"CallHistory"];

  return v12;
}

- (id)callerNameForDisplay
{
  v3 = [(CHRecentCall *)self callerName];
  if (!v3)
  {
    v4 = +[CHLogServer sharedInstance];
    v5 = [v4 logHandleForDomain:"CHRecentCall"];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C3E90000, v5, OS_LOG_TYPE_DEFAULT, "Caller name is nil, let's use caller id formatted", buf, 2u);
    }

    v3 = [(CHRecentCall *)self callerIdForDisplay];
  }

  if (![v3 length])
  {
    v6 = +[CHLogServer sharedInstance];
    v7 = [v6 logHandleForDomain:"CHRecentCall"];

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1C3E90000, v7, OS_LOG_TYPE_DEFAULT, "Caller id and caller name are nil, call is blocked or unknown", v14, 2u);
    }

    if ([(CHRecentCall *)self callerIdIsBlocked])
    {
      v8 = @"BLOCKED_CALLER";
    }

    else
    {
      v8 = @"UNKNOWN_CALLER";
    }

    v9 = [(CHRecentCall *)self getLocalizedString:v8];

    v3 = v9;
  }

  v10 = +[CHLogServer sharedInstance];
  v11 = [v10 logHandleForDomain:"CHRecentCall"];

  v12 = v11;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [CHRecentCall callerNameForDisplay];
  }

  return v3;
}

- (NSString)callerIdLabel
{
  v4 = +[CHLogServer sharedInstance];
  v5 = [v4 logHandleForDomain:"CHRecentCall"];

  v6 = v5;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(CHRecentCall *)a2 addressBookRecordId];
  }

  p_callerIdLabel = &self->_callerIdLabel;
  if (!self->_callerIdLabel)
  {
    v8 = [(CHRecentCall *)self phoneBookManager];
    v9 = [(CHRecentCall *)self contactRef];
    v10 = [(CHRecentCall *)self callerId];
    v11 = [v8 getLocalizedCallerIdLabelForContact:v9 forCallerId:v10 withCallerIdIsEmail:{-[CHRecentCall callerIdIsEmailAddress](self, "callerIdIsEmailAddress")}];
    callerIdLabel = self->_callerIdLabel;
    self->_callerIdLabel = v11;
  }

  v13 = +[CHLogServer sharedInstance];
  v14 = [v13 logHandleForDomain:"CHRecentCall"];

  v15 = v14;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [CHRecentCall callerName];
  }

  v16 = *p_callerIdLabel;

  return v16;
}

- (NSString)localizedBlockedByExtensionName
{
  v3 = [(CHRecentCall *)self blockedByExtension];

  if (!v3)
  {
    goto LABEL_3;
  }

  v4 = MEMORY[0x1E696ABD0];
  v5 = [(CHRecentCall *)self blockedByExtension];
  v6 = [v4 extensionWithIdentifier:v5 error:0];

  v7 = [v6 _plugIn];
  v8 = [v7 localizedContainingName];

  if (!v8)
  {
LABEL_3:
    v8 = [(CHRecentCall *)self blockedByExtensionName];
  }

  return v8;
}

+ (id)getLocationForCallerId:(id)a3 andIsoCountryCode:(id)a4
{
  v37[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    v7 = getSharedGEOPhoneNumberResolver();
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    if ([v6 length])
    {
      v9 = *MEMORY[0x1E69A27D8];
      v36[0] = *MEMORY[0x1E69A27E0];
      v36[1] = v9;
      v37[0] = v5;
      v37[1] = v6;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
    }

    else
    {
      v34 = *MEMORY[0x1E69A27E0];
      v35 = v5;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    }

    v12 = v10;
    [v8 addObject:v10];
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__6;
    v32 = __Block_byref_object_dispose__6;
    v33 = 0;
    v13 = dispatch_semaphore_create(0);
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __57__CHRecentCall_getLocationForCallerId_andIsoCountryCode___block_invoke;
    v24 = &unk_1E81DCE18;
    v25 = v5;
    v27 = &v28;
    v14 = v13;
    v26 = v14;
    v15 = dispatch_get_global_queue(0, 0);
    [v7 resolvePhoneNumbers:v8 handler:&v21 queue:v15];

    v16 = dispatch_time(0, 1000000000);
    if (dispatch_semaphore_wait(v14, v16))
    {
      v17 = [CHLogServer sharedInstance:v21];
      v18 = [v17 logHandleForDomain:"CHRecentCall"];

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [CHRecentCall getLocationForCallerId:v18 andIsoCountryCode:?];
      }
    }

    v11 = v29[5];

    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v11 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v11;
}

void __57__CHRecentCall_getLocationForCallerId_andIsoCountryCode___block_invoke(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__CHRecentCall_getLocationForCallerId_andIsoCountryCode___block_invoke_2;
  v6[3] = &unk_1E81DCDF0;
  v7 = *(a1 + 32);
  v5 = *(a1 + 40);
  v4 = v5;
  v8 = v5;
  [a2 enumerateResolutionsUsingBlock:v6];
}

void __57__CHRecentCall_getLocationForCallerId_andIsoCountryCode___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, _BYTE *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if ([*(a1 + 32) isEqualToString:v9])
  {
    if (v11)
    {
      v12 = +[CHLogServer sharedInstance];
      v13 = [v12 logHandleForDomain:"CHRecentCall"];

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __57__CHRecentCall_getLocationForCallerId_andIsoCountryCode___block_invoke_2_cold_1();
      }

      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = @"<<RecentsNumberLocationNotFound>>";
    }

    else
    {
      v16 = [v10 locationName];
      v17 = *(*(a1 + 48) + 8);
      v15 = *(v17 + 40);
      *(v17 + 40) = v16;
    }

    *a5 = 1;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

+ (id)getLocationForCall:(id)a3
{
  v42[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 validRemoteParticipantHandles];
  v5 = [v4 count];

  if (v5 == 1)
  {
    v6 = [v3 validRemoteParticipantHandles];
    v7 = [v6 anyObject];

    v8 = [v7 normalizedValue];
    if (!v8)
    {
      v8 = [v7 value];
    }

    if ([v8 length])
    {
      v9 = getSharedGEOPhoneNumberResolver();
      v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
      v11 = [v3 isoCountryCode];
      v12 = [v11 length];

      v13 = *MEMORY[0x1E69A27E0];
      if (v12)
      {
        v42[0] = v8;
        v14 = *MEMORY[0x1E69A27D8];
        v41[0] = v13;
        v41[1] = v14;
        v15 = [v3 isoCountryCode];
        v42[1] = v15;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
      }

      else
      {
        v39 = *MEMORY[0x1E69A27E0];
        v40 = v8;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      }

      [v10 addObject:v16];
      v33 = 0;
      v34 = &v33;
      v35 = 0x3032000000;
      v36 = __Block_byref_object_copy__6;
      v37 = __Block_byref_object_dispose__6;
      v38 = 0;
      v18 = dispatch_semaphore_create(0);
      v26 = MEMORY[0x1E69E9820];
      v27 = 3221225472;
      v28 = __35__CHRecentCall_getLocationForCall___block_invoke;
      v29 = &unk_1E81DCE18;
      v30 = v8;
      v32 = &v33;
      v19 = v18;
      v31 = v19;
      v20 = dispatch_get_global_queue(0, 0);
      [v9 resolvePhoneNumbers:v10 handler:&v26 queue:v20];

      v21 = dispatch_time(0, 1000000000);
      if (dispatch_semaphore_wait(v19, v21))
      {
        v22 = [CHLogServer sharedInstance:v26];
        v23 = [v22 logHandleForDomain:"CHRecentCall"];

        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [CHRecentCall getLocationForCallerId:v23 andIsoCountryCode:?];
        }
      }

      v17 = v34[5];

      _Block_object_dispose(&v33, 8);
    }

    else
    {
      v17 = @"<<RecentsNumberLocationNotFound>>";
    }
  }

  else
  {
    v17 = @"<<RecentsNumberLocationNotFound>>";
  }

  v24 = *MEMORY[0x1E69E9840];

  return v17;
}

void __35__CHRecentCall_getLocationForCall___block_invoke(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__CHRecentCall_getLocationForCall___block_invoke_2;
  v6[3] = &unk_1E81DCDF0;
  v7 = *(a1 + 32);
  v5 = *(a1 + 40);
  v4 = v5;
  v8 = v5;
  [a2 enumerateResolutionsUsingBlock:v6];
}

void __35__CHRecentCall_getLocationForCall___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, _BYTE *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if ([*(a1 + 32) isEqualToString:v9])
  {
    if (v11)
    {
      v12 = +[CHLogServer sharedInstance];
      v13 = [v12 logHandleForDomain:"CHRecentCall"];

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __57__CHRecentCall_getLocationForCallerId_andIsoCountryCode___block_invoke_2_cold_1();
      }

      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = @"<<RecentsNumberLocationNotFound>>";
    }

    else
    {
      v16 = [v10 locationName];
      v17 = *(*(a1 + 48) + 8);
      v15 = *(v17 + 40);
      *(v17 + 40) = v16;
    }

    *a5 = 1;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)setLocation
{
  v3 = [CHRecentCall getLocationForCall:self];
  callerIdLocation = self->_callerIdLocation;
  self->_callerIdLocation = v3;

  MEMORY[0x1EEE66BB8]();
}

- (NSString)callerIdLocation
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = +[CHLogServer sharedInstance];
  v5 = [v4 logHandleForDomain:"CHRecentCall"];

  v6 = v5;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [(CHRecentCall *)self callerId];
    callerIdLocation = self->_callerIdLocation;
    v18 = 138543874;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    v22 = 2112;
    v23 = callerIdLocation;
    _os_log_impl(&dword_1C3E90000, v6, OS_LOG_TYPE_DEFAULT, "==> %{public}@. Current location info for %@ is %@", &v18, 0x20u);
  }

  v10 = self->_callerIdLocation;
  if (!v10)
  {
    v11 = [(CHRecentCall *)self callerId];
    v12 = [(CHRecentCall *)self isoCountryCode];
    v13 = [CHRecentCall getLocationForCallerId:v11 andIsoCountryCode:v12];
    v14 = self->_callerIdLocation;
    self->_callerIdLocation = v13;

    v10 = self->_callerIdLocation;
  }

  if ([(NSString *)v10 isEqualToString:@"<<RecentsNumberLocationNotFound>>"])
  {
    v15 = 0;
  }

  else
  {
    v15 = self->_callerIdLocation;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)callerIdSubStringForDisplay
{
  v3 = [(CHRecentCall *)self callerIdLabel];
  if (!v3)
  {
    v4 = [(CHRecentCall *)self callerIdLocation];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [(CHRecentCall *)self getLocalizedString:@"UNKNOWN_LABEL"];
    }

    v3 = v6;
  }

  return v3;
}

- (id)callOccurrencesAsString
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = [(CHRecentCall *)self callOccurrences];
  if ([v4 count])
  {
    v5 = 0;
    do
    {
      [v3 appendFormat:@"\n\tMerged Call %lu:\n", v5];
      v6 = [v4 objectAtIndexedSubscript:v5];
      v7 = [v6 objectForKeyedSubscript:@"kCHCallOccurrenceUniqueIdKey"];
      [v3 appendFormat:@"\t{%@, %@}\n", @"kCHCallOccurrenceUniqueIdKey", v7];

      v8 = [v6 objectForKeyedSubscript:@"kCHCallOccurrenceCallTypeKey"];
      v9 = +[CHRecentCall callTypeAsString:](CHRecentCall, "callTypeAsString:", [v8 unsignedIntegerValue]);
      [v3 appendFormat:@"\t{%@, %@}\n", @"kCHCallOccurrenceCallTypeKey", v9];

      v10 = [v6 objectForKeyedSubscript:@"kCHCallOccurrenceCallStatusKey"];
      v11 = +[CHRecentCall callStatusAsString:](CHRecentCall, "callStatusAsString:", [v10 unsignedIntegerValue]);
      [v3 appendFormat:@"\t{%@, %@}\n", @"kCHCallOccurrenceCallStatusKey", v11];

      v12 = [v6 objectForKeyedSubscript:@"kCHCallOccurrenceDurationKey"];
      [v3 appendFormat:@"\t{%@, %@}\n", @"kCHCallOccurrenceDurationKey", v12];

      v13 = [v6 objectForKeyedSubscript:@"kCHCallOccurrenceDateKey"];
      [v3 appendFormat:@"\t{%@, %@}\n", @"kCHCallOccurrenceDateKey", v13];

      v14 = [v6 objectForKeyedSubscript:@"kCHCallOccurrenceDataUsageKey"];
      [v3 appendFormat:@"\t{%@, %@}\n", @"kCHCallOccurrenceDataUsageKey", v14];

      v15 = [v6 objectForKeyedSubscript:@"kCHCallOccurrenceServiceProviderKey"];
      [v3 appendFormat:@"\t{%@, %@}\n", @"kCHCallOccurrenceServiceProviderKey", v15];

      v16 = [v6 objectForKeyedSubscript:@"kCHCallOccurrenceMediaTypeKey"];
      v17 = +[CHRecentCall callMediaTypeAsString:](CHRecentCall, "callMediaTypeAsString:", [v16 unsignedIntegerValue]);

      [v3 appendFormat:@"\t{%@, %@}\n", @"kCHCallOccurrenceMediaTypeKey", v17];
      v18 = [v6 objectForKeyedSubscript:@"kCHCallOccurrenceTTYTypeKey"];
      v19 = +[CHRecentCall callTTYTypeAsString:](CHRecentCall, "callTTYTypeAsString:", [v18 unsignedIntegerValue]);

      [v3 appendFormat:@"\t{%@, %@}\n", @"kCHCallOccurrenceTTYTypeKey", v19];
      v20 = MEMORY[0x1E696AEC0];
      v21 = [v6 objectForKeyedSubscript:@"kCHCallOccurrenceVerificationStatusKey"];
      v22 = [v20 ch_stringWithCHRecentCallVerificationStatus:{objc_msgSend(v21, "unsignedIntegerValue")}];

      [v3 appendFormat:@"\t{%@, %@}\n", @"kCHCallOccurrenceVerificationStatusKey", v22];
      ++v5;
    }

    while (v5 < [v4 count]);
  }

  return v3;
}

+ (id)callMediaTypeAsString:(int64_t)a3
{
  if (a3 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E81DCE38 + a3);
  }
}

+ (id)callTTYTypeAsString:(int64_t)a3
{
  if (a3 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E81DCE50 + a3);
  }
}

+ (id)callHandleTypeAsString:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E81DCE68 + a3 - 1);
  }
}

+ (id)callTypeAsString:(unsigned int)a3
{
  switch(a3)
  {
    case 1u:
      return @"kCallTypeNormal";
    case 2u:
      return @"kCallTypeVoicemail";
    case 4u:
      return @"kCallTypeVOIP";
    case 8u:
      return @"kCallTypeFaceTimeVideo";
    case 0x10u:
      return @"kCallTypeFaceTimeAudio";
    case 0xFFFFFFFF:
      return @"kCallTypeAll";
    case 7u:
      return @"kCallTypeTelephony";
    case 0x18u:
      return @"kCallTypeFaceTime";
  }

  return @"Unknown";
}

+ (id)callStatusAsString:(unsigned int)a3
{
  switch(a3)
  {
    case 1u:
      return @"kCallStatusConnectedIncoming";
    case 2u:
      return @"kCallStatusConnectedOutgoing";
    case 4u:
      return @"kCallStatusAnsweredElsewhere";
    case 8u:
      return @"kCallStatusMissed";
    case 0x10u:
      return @"kCallStatusCancelled";
    case 7u:
      return @"kCallStatusConnected";
    case 0x1Fu:
      return @"kCallStatusAll";
    case 0xFFFFFFF7:
      return @"kCallStatusAllButMissed";
  }

  return @"Unknown";
}

+ (id)callCategoryAsString:(unsigned int)a3
{
  v3 = a3;
  if ((a3 & 2) != 0)
  {
    v4 = maybeAppendStringWithSeparator(&stru_1F438BFD8, @"kCHCallCategoryVideo");
  }

  else
  {
    v4 = &stru_1F438BFD8;
  }

  if (v3)
  {
    v5 = maybeAppendStringWithSeparator(v4, @"kCHCallCategoryAudio");

    v4 = v5;
  }

  if ((v3 & 4) != 0)
  {
    v6 = maybeAppendStringWithSeparator(v4, @"kCHCallCategoryTTYDirect");

    v4 = v6;
  }

  if ((v3 & 8) != 0)
  {
    v7 = maybeAppendStringWithSeparator(v4, @"kCHCallCategoryTTYRelay");

    v4 = v7;
  }

  if (![(__CFString *)v4 length])
  {

    v4 = @"Unknown";
  }

  return v4;
}

+ (id)callDirectoryIdentificationTypeAsString:(int64_t)a3
{
  v3 = @"Unknown";
  if (a3 == 2)
  {
    v3 = @"CHCallDirectoryIdentityTypeBusiness";
  }

  if (a3 == 1)
  {
    return @"CHCallDirectoryIdentityTypePerson";
  }

  else
  {
    return v3;
  }
}

- (void)setServiceProvider:(id)a3
{
  v4 = a3;
  v5 = self->_serviceProvider;
  v6 = v4;
  if (v6 | v5)
  {
    v11 = v6;
    if (v6)
    {
      v7 = [v5 isEqualToString:v6];

      v8 = v11;
      if (v7)
      {
        goto LABEL_7;
      }
    }

    else
    {

      v8 = 0;
    }

    v9 = [v8 copy];
    serviceProvider = self->_serviceProvider;
    self->_serviceProvider = v9;

    self->_callCategory = [CHRecentCall categoryForMediaType:[(CHRecentCall *)self mediaType] andTTYType:[(CHRecentCall *)self ttyType]];
    self->_callType = [CHRecentCall getCallTypeForCategory:[(CHRecentCall *)self callCategory] andServiceProvider:v11];
  }

LABEL_7:

  MEMORY[0x1EEE66BE0]();
}

- (void)setMediaType:(int64_t)a3
{
  if (self->_mediaType != a3)
  {
    self->_mediaType = a3;
    self->_callCategory = [CHRecentCall categoryForMediaType:[(CHRecentCall *)self mediaType] andTTYType:[(CHRecentCall *)self ttyType]];
    v5 = [(CHRecentCall *)self callCategory];
    v6 = [(CHRecentCall *)self serviceProvider];
    self->_callType = [CHRecentCall getCallTypeForCategory:v5 andServiceProvider:v6];
  }
}

- (void)setTtyType:(int64_t)a3
{
  if (self->_ttyType != a3)
  {
    self->_ttyType = a3;
    self->_callCategory = [CHRecentCall categoryForMediaType:[(CHRecentCall *)self mediaType] andTTYType:[(CHRecentCall *)self ttyType]];
    v5 = [(CHRecentCall *)self callCategory];
    v6 = [(CHRecentCall *)self serviceProvider];
    self->_callType = [CHRecentCall getCallTypeForCategory:v5 andServiceProvider:v6];
  }
}

+ (int64_t)mediaTypeForCallCategory:(unsigned int)a3
{
  if ((a3 & 2) != 0)
  {
    return 2;
  }

  else
  {
    return (a3 & 1) != 0;
  }
}

+ (int64_t)ttyTypeForCallCategory:(unsigned int)a3
{
  if ((a3 & 8) != 0)
  {
    return 2;
  }

  else
  {
    return (a3 & 4) != 0;
  }
}

+ (unsigned)categoryForMediaType:(int64_t)a3 andTTYType:(int64_t)a4
{
  if (a3 == 2)
  {
    v4 = &kCHCallCategoryVideo;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v4 = &kCHCallCategoryAudio;
LABEL_5:
    result = *v4;
    goto LABEL_7;
  }

  result = 0;
LABEL_7:
  if (a4 == 1)
  {
    v6 = &kCHCallCategoryTTYDirect;
  }

  else
  {
    if (a4 != 2)
    {
      return result;
    }

    v6 = &kCHCallCategoryTTYRelay;
  }

  result |= *v6;
  return result;
}

+ (unsigned)categoryForCallType:(unsigned int)a3
{
  if (a3 == 8)
  {
    return 2;
  }

  return a3 == 16 || a3 == 1;
}

+ (id)serviceProviderForCallType:(unsigned int)a3
{
  if (a3 == 16 || a3 == 8)
  {
    v5 = kCHServiceProviderFaceTime;
    goto LABEL_9;
  }

  if (a3 == 1)
  {
    v5 = kCHServiceProviderTelephony;
LABEL_9:
    v6 = *v5;

    return v6;
  }

  v6 = 0;

  return v6;
}

+ (unsigned)getCallTypeForCategory:(unsigned int)a3 andServiceProvider:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = v5;
  if (v4)
  {
    if ([v5 isEqualToString:@"com.apple.Telephony"])
    {
      v7 = &kCHCallTypeNormal;
      goto LABEL_10;
    }

    if ([v6 isEqualToString:@"com.apple.FaceTime"])
    {
      v7 = &kCHCallTypeFaceTimeAudio;
      goto LABEL_10;
    }
  }

  if (v4 & 2) != 0 && ([v6 isEqualToString:@"com.apple.FaceTime"])
  {
    v7 = &kCHCallTypeFaceTimeVideo;
  }

  else
  {
    v7 = &kCHCallTypeNone;
  }

LABEL_10:
  v8 = *v7;

  return v8;
}

- (void)fixCallTypeInfo
{
  if (!self->_callCategory)
  {
    self->_callCategory = [CHRecentCall categoryForCallType:[(CHRecentCall *)self callType]];
  }

  if (!self->_serviceProvider)
  {
    v3 = [CHRecentCall serviceProviderForCallType:[(CHRecentCall *)self callType]];
    serviceProvider = self->_serviceProvider;
    self->_serviceProvider = v3;
  }

  if (self->_callType == 0x80000000)
  {
    v5 = [(CHRecentCall *)self callCategory];
    v6 = [(CHRecentCall *)self serviceProvider];
    self->_callType = [CHRecentCall getCallTypeForCategory:v5 andServiceProvider:v6];
  }

  [(CHRecentCall *)self updateTTYAndMediaType];
}

- (void)encodeWithCoder:(id)a3
{
  uniqueId = self->_uniqueId;
  v5 = a3;
  [v5 encodeObject:uniqueId forKey:@"uniqueId"];
  [v5 encodeObject:self->_callerId forKey:@"callerId"];
  [v5 encodeObject:self->_date forKey:@"date"];
  [v5 encodeInteger:self->_callType forKey:@"callType"];
  [v5 encodeInteger:self->_callStatus forKey:@"callStatus"];
  [v5 encodeInteger:self->_mediaType forKey:@"mediaType"];
  callerIdAvailability = self->_callerIdAvailability;
  v7 = NSStringFromSelector(sel_callerIdAvailability);
  [v5 encodeInteger:callerIdAvailability forKey:v7];

  [v5 encodeBool:self->_read forKey:@"read"];
  [v5 encodeInteger:self->_unreadCount forKey:@"unreadCount"];
  [v5 encodeDouble:@"duration" forKey:self->_duration];
  [v5 encodeObject:self->_bytesOfDataUsed forKey:@"bytesOfDataUsed"];
  [v5 encodeObject:self->_mobileCountryCode forKey:@"mobileCountryCode"];
  [v5 encodeObject:self->_mobileNetworkCode forKey:@"mobileNetworkCode"];
  [v5 encodeObject:self->_devicePhoneId forKey:@"devicePhoneId"];
  imageURL = self->_imageURL;
  v9 = NSStringFromSelector(sel_imageURL);
  [v5 encodeObject:imageURL forKey:v9];

  [v5 encodeObject:self->_isoCountryCode forKey:@"isoCountryCode"];
  [v5 encodeObject:self->_callerIdLocation forKey:@"callerIdLocation"];
  [v5 encodeInteger:self->_callCategory forKey:@"callCategory"];
  [v5 encodeObject:self->_serviceProvider forKey:@"serviceRadar"];
  [v5 encodeInteger:self->_handleType forKey:@"handleType"];
  [v5 encodeObject:self->_timeToEstablish forKey:@"timeToEstablish"];
  localParticipantUUID = self->_localParticipantUUID;
  v11 = NSStringFromSelector(sel_localParticipantUUID);
  [v5 encodeObject:localParticipantUUID forKey:v11];

  name = self->_name;
  v13 = NSStringFromSelector(sel_name);
  [v5 encodeObject:name forKey:v13];

  outgoingLocalParticipantUUID = self->_outgoingLocalParticipantUUID;
  v15 = NSStringFromSelector(sel_outgoingLocalParticipantUUID);
  [v5 encodeObject:outgoingLocalParticipantUUID forKey:v15];

  participantGroupUUID = self->_participantGroupUUID;
  v17 = NSStringFromSelector(sel_participantGroupUUID);
  [v5 encodeObject:participantGroupUUID forKey:v17];

  remoteParticipantHandles = self->_remoteParticipantHandles;
  v19 = NSStringFromSelector(sel_remoteParticipantHandles);
  [v5 encodeObject:remoteParticipantHandles forKey:v19];

  verificationStatus = self->_verificationStatus;
  v21 = NSStringFromSelector(sel_verificationStatus);
  [v5 encodeInteger:verificationStatus forKey:v21];

  junkConfidence = self->_junkConfidence;
  v23 = NSStringFromSelector(sel_junkConfidence);
  [v5 encodeInteger:junkConfidence forKey:v23];

  junkIdentificationCategory = self->_junkIdentificationCategory;
  v25 = NSStringFromSelector(sel_junkIdentificationCategory);
  [v5 encodeObject:junkIdentificationCategory forKey:v25];

  [v5 encodeBool:self->_hasMessage forKey:@"hasMessage"];
  [v5 encodeObject:self->_conversationID forKey:@"conversationID"];
  disconnectedCause = self->_disconnectedCause;
  v27 = NSStringFromSelector(sel_disconnectedCause);
  [v5 encodeObject:disconnectedCause forKey:v27];

  [v5 encodeInteger:self->_autoAnsweredReason forKey:@"autoAnsweredReason"];
  emergencyMediaItems = self->_emergencyMediaItems;
  v29 = NSStringFromSelector(sel_emergencyMediaItems);
  [v5 encodeObject:emergencyMediaItems forKey:v29];

  usedEmergencyVideoStreaming = self->_usedEmergencyVideoStreaming;
  v31 = NSStringFromSelector(sel_usedEmergencyVideoStreaming);
  [v5 encodeBool:usedEmergencyVideoStreaming forKey:v31];

  wasEmergencyCall = self->_wasEmergencyCall;
  v33 = NSStringFromSelector(sel_wasEmergencyCall);
  [v5 encodeBool:wasEmergencyCall forKey:v33];

  screenSharingType = self->_screenSharingType;
  v35 = NSStringFromSelector(sel_screenSharingType);
  [v5 encodeInteger:screenSharingType forKey:v35];

  [v5 encodeBool:self->_ttyType != 0 forKey:@"kCHCallOccurrenceTTYTypeKey"];
  initiator = self->_initiator;
  v37 = NSStringFromSelector(sel_initiator);
  [v5 encodeObject:initiator forKey:v37];

  blockedByExtension = self->_blockedByExtension;
  v39 = NSStringFromSelector(sel_blockedByExtension);
  [v5 encodeObject:blockedByExtension forKey:v39];

  blockedByExtensionName = self->_blockedByExtensionName;
  v41 = NSStringFromSelector(sel_blockedByExtensionName);
  [v5 encodeObject:blockedByExtensionName forKey:v41];

  identityExtension = self->_identityExtension;
  v43 = NSStringFromSelector(sel_identityExtension);
  [v5 encodeObject:identityExtension forKey:v43];

  reminderUUID = self->_reminderUUID;
  v45 = NSStringFromSelector(sel_reminderUUID);
  [v5 encodeObject:reminderUUID forKey:v45];

  communicationTrustScore = self->_communicationTrustScore;
  v47 = NSStringFromSelector(sel_communicationTrustScore);
  [v5 encodeInteger:communicationTrustScore forKey:v47];
}

- (CHRecentCall)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CHRecentCall *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueId"];
    uniqueId = v5->_uniqueId;
    v5->_uniqueId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"callerId"];
    callerId = v5->_callerId;
    v5->_callerId = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v10;

    v5->_callType = [v4 decodeIntegerForKey:@"callType"];
    v5->_callStatus = [v4 decodeIntegerForKey:@"callStatus"];
    v5->_mediaType = [v4 decodeIntegerForKey:@"mediaType"];
    v12 = NSStringFromSelector(sel_callerIdAvailability);
    v5->_callerIdAvailability = [v4 decodeIntegerForKey:v12];

    v5->_read = [v4 decodeBoolForKey:@"read"];
    v5->_unreadCount = [v4 decodeIntegerForKey:@"unreadCount"];
    [v4 decodeDoubleForKey:@"duration"];
    v5->_duration = v13;
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bytesOfDataUsed"];
    bytesOfDataUsed = v5->_bytesOfDataUsed;
    v5->_bytesOfDataUsed = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mobileCountryCode"];
    mobileCountryCode = v5->_mobileCountryCode;
    v5->_mobileCountryCode = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mobileNetworkCode"];
    mobileNetworkCode = v5->_mobileNetworkCode;
    v5->_mobileNetworkCode = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"devicePhoneId"];
    devicePhoneId = v5->_devicePhoneId;
    v5->_devicePhoneId = v20;

    v22 = objc_opt_class();
    v23 = NSStringFromSelector(sel_imageURL);
    v24 = [v4 decodeObjectOfClass:v22 forKey:v23];
    imageURL = v5->_imageURL;
    v5->_imageURL = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isoCountryCode"];
    isoCountryCode = v5->_isoCountryCode;
    v5->_isoCountryCode = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"callerIdLocation"];
    callerIdLocation = v5->_callerIdLocation;
    v5->_callerIdLocation = v28;

    v5->_callCategory = [v4 decodeIntegerForKey:@"callCategory"];
    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceRadar"];
    serviceProvider = v5->_serviceProvider;
    v5->_serviceProvider = v30;

    v32 = objc_opt_class();
    v33 = NSStringFromSelector(sel_localParticipantUUID);
    v34 = [v4 decodeObjectOfClass:v32 forKey:v33];
    localParticipantUUID = v5->_localParticipantUUID;
    v5->_localParticipantUUID = v34;

    v36 = objc_opt_class();
    v37 = NSStringFromSelector(sel_name);
    v38 = [v4 decodeObjectOfClass:v36 forKey:v37];
    name = v5->_name;
    v5->_name = v38;

    v40 = objc_opt_class();
    v41 = NSStringFromSelector(sel_outgoingLocalParticipantUUID);
    v42 = [v4 decodeObjectOfClass:v40 forKey:v41];
    outgoingLocalParticipantUUID = v5->_outgoingLocalParticipantUUID;
    v5->_outgoingLocalParticipantUUID = v42;

    v44 = objc_opt_class();
    v45 = NSStringFromSelector(sel_participantGroupUUID);
    v46 = [v4 decodeObjectOfClass:v44 forKey:v45];
    participantGroupUUID = v5->_participantGroupUUID;
    v5->_participantGroupUUID = v46;

    v48 = MEMORY[0x1E695DFD8];
    v49 = objc_opt_class();
    v50 = [v48 setWithObjects:{v49, objc_opt_class(), 0}];
    v51 = NSStringFromSelector(sel_remoteParticipantHandles);
    v52 = [v4 decodeObjectOfClasses:v50 forKey:v51];
    remoteParticipantHandles = v5->_remoteParticipantHandles;
    v5->_remoteParticipantHandles = v52;

    v54 = NSStringFromSelector(sel_verificationStatus);
    v5->_verificationStatus = [v4 decodeIntegerForKey:v54];

    v55 = NSStringFromSelector(sel_junkConfidence);
    v5->_junkConfidence = [v4 decodeIntegerForKey:v55];

    v5->_hasMessage = [v4 decodeBoolForKey:@"hasMessage"];
    v56 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"conversationID"];
    conversationID = v5->_conversationID;
    v5->_conversationID = v56;

    v5->_autoAnsweredReason = [v4 decodeIntegerForKey:@"autoAnsweredReason"];
    v58 = MEMORY[0x1E695DFD8];
    v59 = objc_opt_class();
    v60 = [v58 setWithObjects:{v59, objc_opt_class(), 0}];
    v61 = NSStringFromSelector(sel_emergencyMediaItems);
    v62 = [v4 decodeObjectOfClasses:v60 forKey:v61];
    emergencyMediaItems = v5->_emergencyMediaItems;
    v5->_emergencyMediaItems = v62;

    v64 = NSStringFromSelector(sel_usedEmergencyVideoStreaming);
    v5->_usedEmergencyVideoStreaming = [v4 decodeBoolForKey:v64];

    v65 = NSStringFromSelector(sel_wasEmergencyCall);
    v5->_wasEmergencyCall = [v4 decodeBoolForKey:v65];

    v5->_ttyType = [v4 decodeBoolForKey:@"kCHCallOccurrenceTTYTypeKey"];
    v66 = NSStringFromSelector(sel_callDirectoryIdentityType);
    v5->_callDirectoryIdentityType = [v4 decodeIntegerForKey:v66];

    v67 = NSStringFromSelector(sel_screenSharingType);
    v5->_screenSharingType = [v4 decodeIntegerForKey:v67];

    v68 = objc_opt_class();
    v69 = NSStringFromSelector(sel_initiator);
    v70 = [v4 decodeObjectOfClass:v68 forKey:v69];
    initiator = v5->_initiator;
    v5->_initiator = v70;

    if ([v4 containsValueForKey:@"handleType"])
    {
      v72 = [v4 decodeIntegerForKey:@"handleType"];
    }

    else
    {
      v72 = [CHHandle handleTypeForValue:v5->_callerId];
    }

    v5->_handleType = v72;
    v73 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeToEstablish"];
    timeToEstablish = v5->_timeToEstablish;
    v5->_timeToEstablish = v73;

    v75 = objc_opt_class();
    v76 = NSStringFromSelector(sel_disconnectedCause);
    v77 = [v4 decodeObjectOfClass:v75 forKey:v76];
    disconnectedCause = v5->_disconnectedCause;
    v5->_disconnectedCause = v77;

    v79 = objc_opt_class();
    v80 = NSStringFromSelector(sel_blockedByExtension);
    v81 = [v4 decodeObjectOfClass:v79 forKey:v80];
    blockedByExtension = v5->_blockedByExtension;
    v5->_blockedByExtension = v81;

    v83 = objc_opt_class();
    v84 = NSStringFromSelector(sel_blockedByExtensionName);
    v85 = [v4 decodeObjectOfClass:v83 forKey:v84];
    blockedByExtensionName = v5->_blockedByExtensionName;
    v5->_blockedByExtensionName = v85;

    v87 = objc_opt_class();
    v88 = NSStringFromSelector(sel_identityExtension);
    v89 = [v4 decodeObjectOfClass:v87 forKey:v88];
    identityExtension = v5->_identityExtension;
    v5->_identityExtension = v89;

    v91 = objc_opt_class();
    v92 = NSStringFromSelector(sel_reminderUUID);
    v93 = [v4 decodeObjectOfClass:v91 forKey:v92];
    reminderUUID = v5->_reminderUUID;
    v5->_reminderUUID = v93;

    v95 = NSStringFromSelector(sel_communicationTrustScore);
    v5->_communicationTrustScore = [v4 decodeIntegerForKey:v95];

    [(CHRecentCall *)v5 fixCallTypeInfo];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[CHRecentCall allocWithZone:](CHRecentCall init];
  v6 = [(NSNumber *)self->_bytesOfDataUsed copyWithZone:a3];
  bytesOfDataUsed = v5->_bytesOfDataUsed;
  v5->_bytesOfDataUsed = v6;

  v8 = [(NSString *)self->_callerName copyWithZone:a3];
  callerName = v5->_callerName;
  v5->_callerName = v8;

  v10 = [(NSArray *)self->_callOccurrences copyWithZone:a3];
  callOccurrences = v5->_callOccurrences;
  v5->_callOccurrences = v10;

  v5->_callStatus = self->_callStatus;
  v12 = [(NSString *)self->_contactIdentifier copyWithZone:a3];
  contactIdentifier = v5->_contactIdentifier;
  v5->_contactIdentifier = v12;

  v14 = [(CNContact *)self->_contactRef copyWithZone:a3];
  contactRef = v5->_contactRef;
  v5->_contactRef = v14;

  v16 = [(NSDate *)self->_date copyWithZone:a3];
  date = v5->_date;
  v5->_date = v16;

  v18 = [(NSNumber *)self->_disconnectedCause copyWithZone:a3];
  disconnectedCause = v5->_disconnectedCause;
  v5->_disconnectedCause = v18;

  v5->_duration = self->_duration;
  v20 = [(NSNumber *)self->_filteredOutReason copyWithZone:a3];
  filteredOutReason = v5->_filteredOutReason;
  v5->_filteredOutReason = v20;

  v22 = [(NSURL *)self->_imageURL copyWithZone:a3];
  imageURL = v5->_imageURL;
  v5->_imageURL = v22;

  v24 = [(NSString *)self->_isoCountryCode copyWithZone:a3];
  isoCountryCode = v5->_isoCountryCode;
  v5->_isoCountryCode = v24;

  v5->_junkConfidence = self->_junkConfidence;
  v26 = [(NSString *)self->_junkIdentificationCategory copyWithZone:a3];
  junkIdentificationCategory = v5->_junkIdentificationCategory;
  v5->_junkIdentificationCategory = v26;

  v28 = [(NSUUID *)self->_localParticipantUUID copyWithZone:a3];
  localParticipantUUID = v5->_localParticipantUUID;
  v5->_localParticipantUUID = v28;

  v5->_mediaType = self->_mediaType;
  v30 = [(NSString *)self->_mobileCountryCode copyWithZone:a3];
  mobileCountryCode = v5->_mobileCountryCode;
  v5->_mobileCountryCode = v30;

  v32 = [(NSString *)self->_mobileNetworkCode copyWithZone:a3];
  mobileNetworkCode = v5->_mobileNetworkCode;
  v5->_mobileNetworkCode = v32;

  v5->_multiCall = self->_multiCall;
  v34 = [(NSString *)self->_name copyWithZone:a3];
  name = v5->_name;
  v5->_name = v34;

  v36 = [(NSUUID *)self->_outgoingLocalParticipantUUID copyWithZone:a3];
  outgoingLocalParticipantUUID = v5->_outgoingLocalParticipantUUID;
  v5->_outgoingLocalParticipantUUID = v36;

  v38 = [(NSUUID *)self->_participantGroupUUID copyWithZone:a3];
  participantGroupUUID = v5->_participantGroupUUID;
  v5->_participantGroupUUID = v38;

  v5->_read = self->_read;
  v40 = [(NSSet *)self->_remoteParticipantHandles copyWithZone:a3];
  remoteParticipantHandles = v5->_remoteParticipantHandles;
  v5->_remoteParticipantHandles = v40;

  v42 = [(NSString *)self->_serviceProvider copyWithZone:a3];
  serviceProvider = v5->_serviceProvider;
  v5->_serviceProvider = v42;

  v44 = [(NSNumber *)self->_timeToEstablish copyWithZone:a3];
  timeToEstablish = v5->_timeToEstablish;
  v5->_timeToEstablish = v44;

  v5->_ttyType = self->_ttyType;
  v46 = [(NSString *)self->_uniqueId copyWithZone:a3];
  uniqueId = v5->_uniqueId;
  v5->_uniqueId = v46;

  v5->_unreadCount = self->_unreadCount;
  v5->_verificationStatus = self->_verificationStatus;
  v5->_hasMessage = self->_hasMessage;
  v48 = [(NSUUID *)self->_conversationID copyWithZone:a3];
  conversationID = v5->_conversationID;
  v5->_conversationID = v48;

  v5->_autoAnsweredReason = self->_autoAnsweredReason;
  v50 = [(NSSet *)self->_emergencyMediaItems copyWithZone:a3];
  emergencyMediaItems = v5->_emergencyMediaItems;
  v5->_emergencyMediaItems = v50;

  v5->_usedEmergencyVideoStreaming = self->_usedEmergencyVideoStreaming;
  v5->_wasEmergencyCall = self->_wasEmergencyCall;
  v5->_callDirectoryIdentityType = self->_callDirectoryIdentityType;
  v5->_screenSharingType = self->_screenSharingType;
  objc_storeStrong(&v5->_initiator, self->_initiator);
  v52 = [(NSString *)self->_addressBookRecordId copyWithZone:a3];
  addressBookRecordId = v5->_addressBookRecordId;
  v5->_addressBookRecordId = v52;

  v54 = [(NSString *)self->_callerId copyWithZone:a3];
  callerId = v5->_callerId;
  v5->_callerId = v54;

  v5->_callerIdAvailability = self->_callerIdAvailability;
  v56 = [(NSString *)self->_callerIdFormatted copyWithZone:a3];
  callerIdFormatted = v5->_callerIdFormatted;
  v5->_callerIdFormatted = v56;

  v5->_callerIdIsBlocked = self->_callerIdIsBlocked;
  v58 = [(NSString *)self->_callerIdLabel copyWithZone:a3];
  callerIdLabel = v5->_callerIdLabel;
  v5->_callerIdLabel = v58;

  v60 = [(NSString *)self->_callerIdLocation copyWithZone:a3];
  callerIdLocation = v5->_callerIdLocation;
  v5->_callerIdLocation = v60;

  v62 = [(NSString *)self->_devicePhoneId copyWithZone:a3];
  devicePhoneId = v5->_devicePhoneId;
  v5->_devicePhoneId = v62;

  v5->_handleType = self->_handleType;
  v5->_callType = [objc_opt_class() getCallTypeForCategory:self->_callCategory andServiceProvider:self->_serviceProvider];
  v64 = [(NSString *)self->_blockedByExtension copyWithZone:a3];
  blockedByExtension = v5->_blockedByExtension;
  v5->_blockedByExtension = v64;

  v66 = [(NSString *)self->_blockedByExtensionName copyWithZone:a3];
  blockedByExtensionName = v5->_blockedByExtensionName;
  v5->_blockedByExtensionName = v66;

  v68 = [(NSString *)self->_identityExtension copyWithZone:a3];
  identityExtension = v5->_identityExtension;
  v5->_identityExtension = v68;

  objc_storeStrong(&v5->_reminderUUID, self->_reminderUUID);
  v5->_communicationTrustScore = self->_communicationTrustScore;
  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"--------------------------\n"];
  v4 = [(CHRecentCall *)self uniqueId];
  [v3 appendFormat:@"Identifier: %@\n", v4];

  v5 = [(CHRecentCall *)self name];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [(CHRecentCall *)self name];
    [v3 appendFormat:@"Name: %@\n", v7];
  }

  v8 = [(CHRecentCall *)self imageURL];

  if (v8)
  {
    v9 = [(CHRecentCall *)self imageURL];
    [v3 appendFormat:@"Image URL: %@\n", v9];
  }

  v10 = [(CHRecentCall *)self junkIdentificationCategory];

  if (v10)
  {
    v11 = [(CHRecentCall *)self junkIdentificationCategory];
    [v3 appendFormat:@"Junk identification category: %@\n", v11];
  }

  v12 = [(CHRecentCall *)self localParticipantUUID];
  [v3 appendFormat:@"Local Participant UUID: %@\n", v12];

  v13 = [(CHRecentCall *)self outgoingLocalParticipantUUID];
  [v3 appendFormat:@"Outgoing Local Participant UUID: %@\n", v13];

  v14 = [(CHRecentCall *)self participantGroupUUID];
  [v3 appendFormat:@"Participant Group UUID: %@\n", v14];

  [v3 appendFormat:@"Remote Participant Handles: %@\n", self->_remoteParticipantHandles];
  v15 = [CHRecentCall callMediaTypeAsString:[(CHRecentCall *)self mediaType]];
  [v3 appendFormat:@"Call Media Type: %@\n", v15];

  v16 = [CHRecentCall callTTYTypeAsString:[(CHRecentCall *)self ttyType]];
  [v3 appendFormat:@"Call TTY Type: %@\n", v16];

  v17 = [CHRecentCall callTypeAsString:[(CHRecentCall *)self callType]];
  [v3 appendFormat:@"Call Type: %@\n", v17];

  v18 = [CHRecentCall callHandleTypeAsString:self->_handleType];
  [v3 appendFormat:@"Handle Type: %@\n", v18];

  v19 = [(CHRecentCall *)self serviceProvider];
  [v3 appendFormat:@"Call Service Provider: %@\n", v19];

  v20 = [CHRecentCall callStatusAsString:[(CHRecentCall *)self callStatus]];
  [v3 appendFormat:@"Call Status: %@\n", v20];

  v21 = [(CHRecentCall *)self date];
  [v3 appendFormat:@"Date: %@\n", v21];

  [(CHRecentCall *)self duration];
  [v3 appendFormat:@"Duration: %f\n", v22];
  v23 = CHCallerIdAvailabilityAsString(self->_callerIdAvailability);
  [v3 appendFormat:@"Caller Id Availability: %@\n", v23];

  [v3 appendFormat:@"Caller Id Blocked?: %d\n", -[CHRecentCall callerIdIsBlocked](self, "callerIdIsBlocked")];
  [v3 appendFormat:@"Caller Name: %@\n", self->_callerName];
  [v3 appendFormat:@"Caller Id Label: %@\n", self->_callerIdLabel];
  [v3 appendFormat:@"Caller Id Location: %@\n", self->_callerIdLocation];
  v24 = [(CHRecentCall *)self bytesOfDataUsed];
  [v3 appendFormat:@"Bytes of data used: %@\n", v24];

  v25 = [(CHRecentCall *)self isoCountryCode];
  [v3 appendFormat:@"Country Code (ISO): %@\n", v25];

  [v3 appendFormat:@"Read: %d\n", self->_read];
  [v3 appendFormat:@"Emergency media items: %@\n", self->_emergencyMediaItems];
  [v3 appendFormat:@"Used emergency video streaming: %d\n", self->_usedEmergencyVideoStreaming];
  [v3 appendFormat:@"Was emergency call: %d\n", self->_wasEmergencyCall];
  v26 = [(CHRecentCall *)self disconnectedCause];
  [v3 appendFormat:@"Disconnect Cause: %@\n", v26];

  v27 = [(CHRecentCall *)self filteredOutReason];
  [v3 appendFormat:@"Filtered Out Reason: %@\n", v27];

  v28 = [MEMORY[0x1E696AEC0] ch_stringWithCHRecentCallJunkConfidence:{-[CHRecentCall junkConfidence](self, "junkConfidence")}];
  [v3 appendFormat:@"Junk Confidence: %@\n", v28];

  [v3 appendFormat:@"Address Book Id: %@\n", self->_contactIdentifier];
  v29 = [(CHRecentCall *)self multiCall];
  v30 = @"No";
  if (v29)
  {
    v30 = @"Yes";
  }

  [v3 appendFormat:@"Multi-Call: %@\n", v30];
  v31 = [(CHRecentCall *)self callOccurrences];
  v32 = [v31 count];

  if (v32 >= 2)
  {
    v33 = [(CHRecentCall *)self callOccurrencesAsString];
    [v3 appendFormat:@"Call Occurrences: %@\n", v33];
  }

  v34 = [(CHRecentCall *)self blockedByExtension];

  if (v34)
  {
    v35 = [(CHRecentCall *)self identityExtension];
    [v3 appendFormat:@"Identity extension: %@\n", v35];
  }

  v36 = [(CHRecentCall *)self identityExtension];

  if (v36)
  {
    v37 = [(CHRecentCall *)self blockedByExtension];
    [v3 appendFormat:@"Blocked by extension: %@\n", v37];
  }

  if ([(CHRecentCall *)self callDirectoryIdentityType])
  {
    v38 = [CHRecentCall callDirectoryIdentificationTypeAsString:[(CHRecentCall *)self callDirectoryIdentityType]];
    [v3 appendFormat:@"CallDirectory Identity Type: %@\n", v38];
  }

  [v3 appendFormat:@"Unread count: %lu\n", -[CHRecentCall unreadCount](self, "unreadCount")];
  v39 = [MEMORY[0x1E696AEC0] ch_stringWithCHRecentCallVerificationStatus:self->_verificationStatus];
  [v3 appendFormat:@"Verification Status: %@\n", v39];

  [v3 appendFormat:@"Has associated message: %d\n", self->_hasMessage];
  [v3 appendFormat:@"Auto answered reason: %ld\n", self->_autoAnsweredReason];
  [v3 appendFormat:@"Conversation ID: %@\n", self->_conversationID];
  [v3 appendFormat:@"Screen sharing type: %ld\n", self->_screenSharingType];
  [v3 appendFormat:@"Initiator: %@\n", self->_initiator];
  v40 = [(CHRecentCall *)self reminderUUID];
  [v3 appendFormat:@"ReminderUUID: %@\n", v40];

  v41 = [MEMORY[0x1E696AEC0] ch_stringWithCHRecentCallCommunicationTrustScore:{-[CHRecentCall communicationTrustScore](self, "communicationTrustScore")}];
  [v3 appendFormat:@"Communication Trust Score: %@\n", v41];

  [v3 appendFormat:@"--------------------------\n"];

  return v3;
}

- (unint64_t)hash
{
  v2 = [(CHRecentCall *)self uniqueId];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CHRecentCall *)self isEqualToRecentCall:v4];
  }

  return v5;
}

- (BOOL)isEqualToRecentCall:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    objc_sync_enter(v6);
    v7 = [(CHRecentCall *)self uniqueId];
    v8 = [v6 uniqueId];
    v9 = v7;
    v10 = v8;
    v11 = v10;
    if (!(v9 | v10))
    {
      goto LABEL_5;
    }

    if (!v10)
    {

      goto LABEL_9;
    }

    v12 = [v9 isEqualToString:v10];

    if (v12)
    {
LABEL_5:
      v13 = [(CHRecentCall *)self hasMessage];
      if (v13 == [v6 hasMessage])
      {
        v14 = [(CHRecentCall *)self isEquivalentToRecentCall:v6];
LABEL_10:

        objc_sync_exit(v6);
        goto LABEL_11;
      }
    }

LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (BOOL)isEquivalentToRecentCall:(id)a3
{
  v4 = a3;
  v5 = [(CHRecentCall *)self outgoingLocalParticipantUUID];
  v6 = [v4 outgoingLocalParticipantUUID];
  v7 = v5;
  v8 = v6;
  v9 = v8;
  if (!(v7 | v8))
  {
    goto LABEL_4;
  }

  if (!v8)
  {
    v15 = 0;
    v12 = v7;
LABEL_11:

    goto LABEL_12;
  }

  v10 = [v7 isEqual:v8];

  if (v10)
  {
LABEL_4:
    v11 = [(CHRecentCall *)self callStatus];
    if (v11 == [v4 callStatus])
    {
      v12 = [(CHRecentCall *)self bytesOfDataUsed];
      v13 = [v4 bytesOfDataUsed];
      if (v12 == v13 && (v14 = -[CHRecentCall read](self, "read"), v14 == [v4 read]))
      {
        v17 = [(CHRecentCall *)self callOccurrences];
        v18 = [v17 count];
        v19 = [v4 callOccurrences];
        if (v18 == [v19 count])
        {
          v20 = [(CHRecentCall *)self reminderUUID];
          v21 = [v4 reminderUUID];
          v15 = (v20 | v21) == 0;
          if (v21)
          {
            v15 = [v20 isEqual:v21];
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_11;
    }
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (INInteraction)interaction
{
  v2 = [(CHRecentCall *)self uniqueId];
  v9 = 0;
  v3 = [MEMORY[0x1E696E8B8] ch_interactionForIdentifier:v2 error:&v9];
  v4 = v9;
  v5 = v4;
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (!v6)
  {
    v7 = ch_framework_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CHRecentCall(Intents) *)v2 interaction];
    }
  }

  return v3;
}

- (NSDateInterval)interactionDateInterval
{
  v3 = [(CHRecentCall *)self date];
  if (v3 && (-[CHRecentCall duration](self, "duration"), v4 >= 0.0) && (v5 = v4, -[CHRecentCall timeToEstablish](self, "timeToEstablish"), v6 = objc_claimAutoreleasedReturnValue(), [v6 doubleValue], v8 = v7, v6, v8 >= 0.0))
  {
    v11 = [v3 dateByAddingTimeInterval:-v8];
    v9 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v11 duration:v5 + v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)predicateForCallsBetweenStartDate:(id)a3 endDate:(id)a4
{
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"date >= %@", a3];
  if (v5)
  {
    v7 = MEMORY[0x1E696AB28];
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"date <= %@", v5, v6];
    v13[1] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v10 = [v7 andPredicateWithSubpredicates:v9];

    v6 = v10;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)predicateForCallsWithMediaType:(int64_t)a3
{
  if (a3 == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = a3 == 1;
  }

  if (v5 == 1 || v5 == 2)
  {
    [a1 predicateForCallsWithCategory:v3];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:{1, v3}];
  }
  v7 = ;

  return v7;
}

+ (id)predicateForCallsWithAnyMediaTypes:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v17 + 1) + 8 * i) integerValue];
        if ((v11 - 1) <= 1)
        {
          v12 = [a1 predicateForCallsWithMediaType:v11];
          [v5 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  if ([v5 count] < 2)
  {
    if ([v5 count] == 1)
    {
      [v5 firstObject];
    }

    else
    {
      [MEMORY[0x1E696AE18] predicateWithValue:1];
    }
    v13 = ;
  }

  else
  {
    v13 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v5];
  }

  v14 = v13;

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)predicateForCallsWithRemoteParticipantHandle:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 value];
  v6 = [a1 predicateForCallsWithRemoteParticipantHandleValue:v5];

  v7 = [v4 normalizedValue];

  if (v7)
  {
    v8 = [v4 normalizedValue];
    v9 = [a1 predicateForCallsWithRemoteParticipantHandleNormalizedValue:v8];
    v18[0] = v9;
    v18[1] = v6;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

    v11 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v10];

    v6 = v11;
  }

  v12 = [a1 predicateForCallsWithRemoteParticipantHandleType:{objc_msgSend(v4, "type")}];
  v17[0] = v12;
  v17[1] = v6;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];

  v14 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v13];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)predicateForCallsWithAnyRemoteParticipantHandles:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count] < 2)
  {
    if ([v4 count] == 1)
    {
      v29 = [v4 firstObject];
      v28 = [a1 predicateForCallsWithRemoteParticipantHandle:v29];
    }

    else
    {
      v28 = [MEMORY[0x1E696AE18] predicateWithValue:1];
    }
  }

  else
  {
    v32 = a1;
    v5 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{objc_msgSend(v4, "count")}];
    v6 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{objc_msgSend(v4, "count")}];
    v7 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{objc_msgSend(v4, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v33 = v4;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v35;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v34 + 1) + 8 * i);
          v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v13, "type")}];
          [v5 addObject:v14];

          v15 = [v13 value];
          [v6 addObject:v15];

          v16 = [v13 normalizedValue];

          if (v16)
          {
            v17 = [v13 normalizedValue];
            [v7 addObject:v17];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v10);
    }

    v18 = [MEMORY[0x1E695DF70] array];
    v19 = [v5 array];
    v20 = [v32 predicateForCallsWithAnyRemoteParticipantHandleTypes:v19];
    [v18 addObject:v20];

    v21 = [v7 count];
    v22 = [v6 array];
    v23 = [v32 predicateForCallsWithAnyRemoteParticipantHandleValues:v22];
    v24 = v23;
    if (v21)
    {
      v38[0] = v23;
      v25 = [v7 array];
      v26 = [v32 predicateForCallsWithAnyRemoteParticipantHandleNormalizedValues:v25];
      v38[1] = v26;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];

      v24 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v27];
      v22 = v27;
    }

    [v18 addObject:v24];

    v28 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v18];

    v4 = v33;
  }

  v30 = *MEMORY[0x1E69E9840];

  return v28;
}

+ (id)predicateForCallsWithAnyRemoteParticipantHandleTypes:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{objc_msgSend(v4, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if (([v11 integerValue] - 1) <= 2)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  if ([v5 count] >= 2)
  {
    v12 = MEMORY[0x1E696AE18];
    v13 = [v5 array];
    v14 = [v12 predicateWithFormat:@"ANY remoteParticipantHandles.type IN %@", v13];
LABEL_14:
    v15 = v14;

    goto LABEL_16;
  }

  if ([v5 count] == 1)
  {
    v13 = [v5 firstObject];
    v14 = [a1 predicateForCallsWithRemoteParticipantHandleType:{objc_msgSend(v13, "integerValue")}];
    goto LABEL_14;
  }

  v15 = [MEMORY[0x1E696AE18] predicateWithValue:1];
LABEL_16:

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)predicateForCallsWithAnyRemoteParticipantHandleValues:(id)a3
{
  v4 = [MEMORY[0x1E695DFB8] orderedSetWithArray:a3];
  if ([v4 count] >= 2)
  {
    v5 = MEMORY[0x1E696AE18];
    v6 = [v4 array];
    v7 = [v5 predicateWithFormat:@"ANY remoteParticipantHandles.value IN %@", v6];
LABEL_5:
    v8 = v7;

    goto LABEL_7;
  }

  if ([v4 count] == 1)
  {
    v6 = [v4 firstObject];
    v7 = [a1 predicateForCallsWithRemoteParticipantHandleValue:v6];
    goto LABEL_5;
  }

  v8 = [MEMORY[0x1E696AE18] predicateWithValue:1];
LABEL_7:

  return v8;
}

+ (id)predicateForCallsWithAnyRemoteParticipantHandleNormalizedValues:(id)a3
{
  v4 = [MEMORY[0x1E695DFB8] orderedSetWithArray:a3];
  if ([v4 count] >= 2)
  {
    v5 = MEMORY[0x1E696AE18];
    v6 = [v4 array];
    v7 = [v5 predicateWithFormat:@"ANY remoteParticipantHandles.normalizedValue IN %@", v6];
LABEL_5:
    v8 = v7;

    goto LABEL_7;
  }

  if ([v4 count] == 1)
  {
    v6 = [v4 firstObject];
    v7 = [a1 predicateForCallsWithRemoteParticipantHandleNormalizedValue:v6];
    goto LABEL_5;
  }

  v8 = [MEMORY[0x1E696AE18] predicateWithValue:1];
LABEL_7:

  return v8;
}

+ (id)predicateForCallsWithRemoteParticipantHandles:(id)a3
{
  v3 = a3;
  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
    v5 = [CHRecentCall predicateForCallsWithRemoteParticipantHandle:v4];
  }

  else
  {
    if ([v3 count] < 2)
    {
      [MEMORY[0x1E696AE18] predicateWithValue:1];
    }

    else
    {
      [MEMORY[0x1E696AE18] predicateWithFormat:@"(remoteParticipantHandles IN %@)", v3];
    }
    v5 = ;
  }

  return v5;
}

+ (id)predicateForCallsWithAnyServiceProviders:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"(service_provider IN %@)", v3];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v4 = ;

  return v4;
}

+ (id)predicateForCallsWithStatus:(unsigned int)a3
{
  v3 = MEMORY[0x1E695E110];
  if ((a3 & 1) == 1)
  {
    v4 = MEMORY[0x1E695E110];
  }

  else
  {
    v4 = 0;
  }

  v5 = MEMORY[0x1E695E118];
  if ((a3 & 2) == 2)
  {
    v4 = MEMORY[0x1E695E118];
    v6 = 1;
  }

  else
  {
    v6 = (~a3 & 4) == 0;
  }

  v7 = (a3 & 1) == 1 || v6;
  if ((~a3 & 8) == 0 || (~a3 & 4) == 0)
  {
    v8 = MEMORY[0x1E695E110];
  }

  else
  {
    v8 = v4;
  }

  if ((a3 & 0x10) == 0x10)
  {
    v9 = MEMORY[0x1E695E118];
  }

  else
  {
    v9 = v8;
  }

  if (((a3 & 0x10) == 16 || (~a3 & 8) == 0) | v7 & 1 && v9)
  {
    if (!v7)
    {
      v5 = 0;
    }

    if ((a3 & 0x10) != 16 && (~a3 & 8) != 0)
    {
      v3 = v5;
    }

    v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(answered = %@) AND (originated = %@)", v3, v9];
  }

  else
  {
    v10 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  }

  return v10;
}

+ (id)predicateForCallsWithStatusJunk:(BOOL)a3
{
  if (a3)
  {
    v3 = @"junkConfidence >= %d";
  }

  else
  {
    v3 = @"junkConfidence < %d";
  }

  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:v3, 2];

  return v4;
}

+ (id)predicateForCallsWithTTYType:(int64_t)a3
{
  if (a3 == 2)
  {
    v5 = 8;
  }

  else if (a3 == 1)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  if (v5 == 4 || v5 == 8)
  {
    [a1 predicateForCallsWithCategory:v3];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:{1, v3}];
  }
  v7 = ;

  return v7;
}

+ (id)predicateForCallsWithAnyTTYTypes:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v17 + 1) + 8 * i) integerValue];
        if ((v11 - 1) <= 1)
        {
          v12 = [a1 predicateForCallsWithTTYType:v11];
          [v5 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  if ([v5 count] < 2)
  {
    if ([v5 count] == 1)
    {
      [v5 firstObject];
    }

    else
    {
      [MEMORY[0x1E696AE18] predicateWithValue:1];
    }
    v13 = ;
  }

  else
  {
    v13 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v5];
  }

  v14 = v13;

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)predicateForCallsWithAnyUniqueIDs:(id)a3
{
  v4 = [MEMORY[0x1E695DFB8] orderedSetWithArray:a3];
  if ([v4 count] >= 2)
  {
    v5 = MEMORY[0x1E696AE18];
    v6 = [v4 array];
    v7 = [v5 predicateWithFormat:@"(unique_id IN %@)", v6];
LABEL_5:
    v8 = v7;

    goto LABEL_7;
  }

  if ([v4 count] == 1)
  {
    v6 = [v4 firstObject];
    v7 = [a1 predicateForCallsWithUniqueID:v6];
    goto LABEL_5;
  }

  v8 = [MEMORY[0x1E696AE18] predicateWithValue:1];
LABEL_7:

  return v8;
}

+ (id)predicateForCallsWithGroupUUID:(id)a3
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [a3 UUIDString];
  v5 = [v3 predicateWithFormat:@"participantGroupUUID = %@", v4];

  return v5;
}

+ (id)predicateForCallsWithConversationID:(id)a3
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [a3 UUIDString];
  v5 = [v3 predicateWithFormat:@"conversationID = %@", v4];

  return v5;
}

- (void)addressBookRecordId
{
  OUTLINED_FUNCTION_2_0();
  v8 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)callerName
{
  OUTLINED_FUNCTION_2_0();
  v10 = *MEMORY[0x1E69E9840];
  v2 = NSStringFromSelector(v1);
  v3 = *v0;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)getLocalizedString:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 resourcePath];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)getLocalizedString:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 resourcePath];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)callerNameForDisplay
{
  OUTLINED_FUNCTION_2_0();
  v8 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __57__CHRecentCall_getLocationForCallerId_andIsoCountryCode___block_invoke_2_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1(&dword_1C3E90000, v0, v1, "Could not get location information for phone number %@ error: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

@end