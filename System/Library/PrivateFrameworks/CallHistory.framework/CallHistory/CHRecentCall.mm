@interface CHRecentCall
+ (id)callCategoryAsString:(unsigned int)string;
+ (id)callDirectoryIdentificationTypeAsString:(int64_t)string;
+ (id)callHandleTypeAsString:(int64_t)string;
+ (id)callMediaTypeAsString:(int64_t)string;
+ (id)callStatusAsString:(unsigned int)string;
+ (id)callTTYTypeAsString:(int64_t)string;
+ (id)callTypeAsString:(unsigned int)string;
+ (id)getLocationForCall:(id)call;
+ (id)getLocationForCallerId:(id)id andIsoCountryCode:(id)code;
+ (id)predicateForCallsBetweenStartDate:(id)date endDate:(id)endDate;
+ (id)predicateForCallsWithAnyMediaTypes:(id)types;
+ (id)predicateForCallsWithAnyRemoteParticipantHandleNormalizedValues:(id)values;
+ (id)predicateForCallsWithAnyRemoteParticipantHandleTypes:(id)types;
+ (id)predicateForCallsWithAnyRemoteParticipantHandleValues:(id)values;
+ (id)predicateForCallsWithAnyRemoteParticipantHandles:(id)handles;
+ (id)predicateForCallsWithAnyServiceProviders:(id)providers;
+ (id)predicateForCallsWithAnyTTYTypes:(id)types;
+ (id)predicateForCallsWithAnyUniqueIDs:(id)ds;
+ (id)predicateForCallsWithConversationID:(id)d;
+ (id)predicateForCallsWithGroupUUID:(id)d;
+ (id)predicateForCallsWithMediaType:(int64_t)type;
+ (id)predicateForCallsWithRemoteParticipantHandle:(id)handle;
+ (id)predicateForCallsWithRemoteParticipantHandles:(id)handles;
+ (id)predicateForCallsWithStatus:(unsigned int)status;
+ (id)predicateForCallsWithStatusJunk:(BOOL)junk;
+ (id)predicateForCallsWithTTYType:(int64_t)type;
+ (id)serviceProviderForCallType:(unsigned int)type;
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)data error:(id *)error;
+ (int64_t)mediaTypeForCallCategory:(unsigned int)category;
+ (int64_t)ttyTypeForCallCategory:(unsigned int)category;
+ (unsigned)categoryForCallType:(unsigned int)type;
+ (unsigned)categoryForMediaType:(int64_t)type andTTYType:(int64_t)yType;
+ (unsigned)getCallTypeForCategory:(unsigned int)category andServiceProvider:(id)provider;
- (BOOL)canCoalesceRemoteParticipantHandlesFromCall:(id)call usingNewStrategy:(BOOL)strategy;
- (BOOL)canCoalesceSyncWithRecentsStrategyWithCall:(id)call;
- (BOOL)canCoalesceWithCall:(id)call withStrategy:(id)strategy;
- (BOOL)coalesceWithCall:(id)call withStrategy:(id)strategy;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRecentCall:(id)call;
- (BOOL)isEquivalentToRecentCall:(id)call;
- (CHHandle)initiator;
- (CHRecentCall)init;
- (CHRecentCall)initWithCoder:(id)coder;
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
- (id)callOccurrencesArrayByAddingCallOccurrencesFromArray:(id)array;
- (id)callOccurrencesAsString;
- (id)callerIdSubStringForDisplay;
- (id)callerNameForDisplay;
- (id)coalescedCallWithCall:(id)call usingStrategy:(id)strategy;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)getLocalizedString:(id)string;
- (id)validRemoteParticipantHandles;
- (int64_t)countOfExcludedHandles;
- (int64_t)handleType;
- (unint64_t)hash;
- (unint64_t)numberOfOccurrences;
- (void)addressBookRecordId;
- (void)callerName;
- (void)callerNameForDisplay;
- (void)encodeWithCoder:(id)coder;
- (void)fetchAndSetContactIdentifier;
- (void)fetchAndSetFullContact;
- (void)fixCallTypeInfo;
- (void)setBlockedByExtension:(id)extension;
- (void)setCallerIdAvailability:(unsigned int)availability;
- (void)setDuration:(double)duration;
- (void)setLocation;
- (void)setMediaType:(int64_t)type;
- (void)setName:(id)name;
- (void)setRead:(BOOL)read;
- (void)setServiceProvider:(id)provider;
- (void)setTimeToEstablish:(id)establish;
- (void)setTtyType:(int64_t)type;
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
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v5 = [uUIDString copy];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CHRecentCall callStatus](self, "callStatus")}];
  [dictionary setObject:v4 forKeyedSubscript:@"kCHCallOccurrenceCallStatusKey"];

  v5 = MEMORY[0x1E696AD98];
  [(CHRecentCall *)self duration];
  v6 = [v5 numberWithDouble:?];
  [dictionary setObject:v6 forKeyedSubscript:@"kCHCallOccurrenceDurationKey"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CHRecentCall mediaType](self, "mediaType")}];
  [dictionary setObject:v7 forKeyedSubscript:@"kCHCallOccurrenceMediaTypeKey"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CHRecentCall ttyType](self, "ttyType")}];
  [dictionary setObject:v8 forKeyedSubscript:@"kCHCallOccurrenceTTYTypeKey"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CHRecentCall verificationStatus](self, "verificationStatus")}];
  [dictionary setObject:v9 forKeyedSubscript:@"kCHCallOccurrenceVerificationStatusKey"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CHRecentCall callType](self, "callType")}];
  [dictionary setObject:v10 forKeyedSubscript:@"kCHCallOccurrenceCallTypeKey"];

  bytesOfDataUsed = [(CHRecentCall *)self bytesOfDataUsed];
  if (bytesOfDataUsed)
  {
    [dictionary setObject:bytesOfDataUsed forKeyedSubscript:@"kCHCallOccurrenceDataUsageKey"];
  }

  date = [(CHRecentCall *)self date];
  if (date)
  {
    [dictionary setObject:date forKeyedSubscript:@"kCHCallOccurrenceDateKey"];
  }

  serviceProvider = [(CHRecentCall *)self serviceProvider];
  if (serviceProvider)
  {
    [dictionary setObject:serviceProvider forKeyedSubscript:@"kCHCallOccurrenceServiceProviderKey"];
  }

  uniqueId = [(CHRecentCall *)self uniqueId];
  if (uniqueId)
  {
    [dictionary setObject:uniqueId forKeyedSubscript:@"kCHCallOccurrenceUniqueIdKey"];
  }

  if ([(CHRecentCall *)self wasEmergencyCall])
  {
    v29 = date;
    v30 = bytesOfDataUsed;
    v31 = 0u;
    v32 = 0u;
    usedEmergencyVideoStreaming = [(CHRecentCall *)self usedEmergencyVideoStreaming];
    v33 = 0u;
    v34 = 0u;
    emergencyMediaItems = [(CHRecentCall *)self emergencyMediaItems];
    v17 = [emergencyMediaItems countByEnumeratingWithState:&v31 objects:v35 count:16];
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
            objc_enumerationMutation(emergencyMediaItems);
          }

          emergencyMediaType = [*(*(&v31 + 1) + 8 * i) emergencyMediaType];
          if (emergencyMediaType == 1)
          {
            ++usedEmergencyVideoStreaming;
          }

          else if (!emergencyMediaType)
          {
            ++v19;
          }
        }

        v18 = [emergencyMediaItems countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v18);
    }

    else
    {
      v19 = 0;
    }

    v23 = [MEMORY[0x1E696AD98] numberWithInteger:usedEmergencyVideoStreaming];
    [dictionary setObject:v23 forKeyedSubscript:@"kCHCallOccurrenceEmergencyVideosCountKey"];

    v24 = [MEMORY[0x1E696AD98] numberWithInteger:v19];
    [dictionary setObject:v24 forKeyedSubscript:@"kCHCallOccurrenceEmergencyImagesCountKey"];

    date = v29;
    bytesOfDataUsed = v30;
  }

  reminderUUID = [(CHRecentCall *)self reminderUUID];
  if (reminderUUID)
  {
    [dictionary setObject:reminderUUID forKeyedSubscript:@"kCHCallOccurrenceReminderUUIDKey"];
  }

  v26 = [dictionary copy];

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
  remoteParticipantHandles = [(CHRecentCall *)self remoteParticipantHandles];
  v3 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:remoteParticipantHandles];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = remoteParticipantHandles;
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
  callOccurrences = [(CHRecentCall *)self callOccurrences];
  v3 = [callOccurrences count];

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
  remoteParticipantHandles = [(CHRecentCall *)self remoteParticipantHandles];
  v3 = [remoteParticipantHandles countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(remoteParticipantHandles);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (([v8 isTemporary] & 1) != 0 || objc_msgSend(v8, "isPseudonym"))
        {
          ++v5;
        }
      }

      v4 = [remoteParticipantHandles countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  remoteParticipantHandles = [(CHRecentCall *)self remoteParticipantHandles];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [remoteParticipantHandles countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(remoteParticipantHandles);
        }

        v5 ^= [*(*(&v12 + 1) + 8 * i) hash];
      }

      v4 = [remoteParticipantHandles countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
  stringValue = [v8 stringValue];

  v10 = *MEMORY[0x1E69E9840];

  return stringValue;
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

  validRemoteParticipantHandles = [(CHRecentCall *)self validRemoteParticipantHandles];
  anyObject = [validRemoteParticipantHandles anyObject];

  if (![(NSString *)self->_callerIdFormatted length])
  {
    value = [anyObject value];

    if (value)
    {
      if ([anyObject type] == 2)
      {
        v10 = [CHPhoneNumber alloc];
        value2 = [anyObject value];
        isoCountryCode = [(CHRecentCall *)self isoCountryCode];
        v13 = [(CHPhoneNumber *)v10 initWithDigits:value2 isoCountryCode:isoCountryCode];

        formattedRepresentation = [(NSString *)v13 formattedRepresentation];
        callerIdFormatted = self->_callerIdFormatted;
        self->_callerIdFormatted = formattedRepresentation;

        if (!self->_callerIdFormatted)
        {
          value3 = [anyObject value];
          v17 = self->_callerIdFormatted;
          self->_callerIdFormatted = value3;
        }
      }

      else
      {
        value4 = [anyObject value];
        v13 = self->_callerIdFormatted;
        self->_callerIdFormatted = value4;
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

+ (id)unarchivedObjectFromData:(id)data error:(id *)error
{
  v6 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  unarchivedObjectClasses = [self unarchivedObjectClasses];
  v9 = [v6 unarchivedObjectOfClasses:unarchivedObjectClasses fromData:dataCopy error:error];

  return v9;
}

- (id)callOccurrencesArrayByAddingCallOccurrencesFromArray:(id)array
{
  v12[1] = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  callOccurrences = [(CHRecentCall *)self callOccurrences];
  if (![callOccurrences count])
  {
    dictionaryRepresentation = [(CHRecentCall *)self dictionaryRepresentation];
    v12[0] = dictionaryRepresentation;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

    callOccurrences = v7;
  }

  v8 = [callOccurrences arrayByAddingObjectsFromArray:arrayCopy];

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

- (BOOL)canCoalesceSyncWithRecentsStrategyWithCall:(id)call
{
  v62 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = [(CHRecentCall *)self callStatus]!= 8;
  if (((v5 ^ ([callCopy callStatus] == 8)) & 1) == 0)
  {
    v24 = +[CHLogServer sharedInstance];
    v25 = [v24 logHandleForDomain:"CHRecentCall"];

    v26 = v25;
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    uniqueId = [(CHRecentCall *)self uniqueId];
    uniqueId2 = [callCopy uniqueId];
    uniqueId3 = [CHRecentCall callStatusAsString:[(CHRecentCall *)self callStatus]];
    v30 = +[CHRecentCall callStatusAsString:](CHRecentCall, "callStatusAsString:", [callCopy callStatus]);
    v54 = 138544130;
    v55 = uniqueId;
    v56 = 2114;
    v57 = uniqueId2;
    v58 = 2114;
    v59 = uniqueId3;
    v60 = 2114;
    v61 = v30;
    v31 = "%{public}@ cannot coalesce with %{public}@: Call status doesn't match. MyStatus: %{public}@, OtherStatus: %{public}@";
    goto LABEL_24;
  }

  mediaType = [(CHRecentCall *)self mediaType];
  if (mediaType != [callCopy mediaType])
  {
    v32 = +[CHLogServer sharedInstance];
    v33 = [v32 logHandleForDomain:"CHRecentCall"];

    v26 = v33;
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    uniqueId = [(CHRecentCall *)self uniqueId];
    uniqueId2 = [callCopy uniqueId];
    uniqueId3 = [CHRecentCall callMediaTypeAsString:[(CHRecentCall *)self mediaType]];
    v30 = +[CHRecentCall callMediaTypeAsString:](CHRecentCall, "callMediaTypeAsString:", [callCopy mediaType]);
    v54 = 138544130;
    v55 = uniqueId;
    v56 = 2114;
    v57 = uniqueId2;
    v58 = 2114;
    v59 = uniqueId3;
    v60 = 2114;
    v61 = v30;
    v31 = "%{public}@ cannot coalesce with %{public}@: Call media type does not match. MyMediaType: %{public}@, OtherMediaType: %{public}@";
    goto LABEL_24;
  }

  ttyType = [(CHRecentCall *)self ttyType];
  if (ttyType != [callCopy ttyType])
  {
    v34 = +[CHLogServer sharedInstance];
    v35 = [v34 logHandleForDomain:"CHRecentCall"];

    v26 = v35;
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    uniqueId = [(CHRecentCall *)self uniqueId];
    uniqueId2 = [callCopy uniqueId];
    uniqueId3 = [CHRecentCall callTTYTypeAsString:[(CHRecentCall *)self ttyType]];
    v30 = +[CHRecentCall callTTYTypeAsString:](CHRecentCall, "callTTYTypeAsString:", [callCopy ttyType]);
    v54 = 138544130;
    v55 = uniqueId;
    v56 = 2114;
    v57 = uniqueId2;
    v58 = 2114;
    v59 = uniqueId3;
    v60 = 2114;
    v61 = v30;
    v31 = "%{public}@ cannot coalesce with %{public}@: Call TTY type does not match. MyTTYType: %{public}@, OtherTTYType: %{public}@";
LABEL_24:
    _os_log_impl(&dword_1C3E90000, v26, OS_LOG_TYPE_DEFAULT, v31, &v54, 0x2Au);

LABEL_25:
    goto LABEL_26;
  }

  date = [(CHRecentCall *)self date];
  date2 = [callCopy date];
  v10 = [date isSameDayAsDate:date2];

  if ((v10 & 1) == 0)
  {
    v38 = +[CHLogServer sharedInstance];
    v39 = [v38 logHandleForDomain:"CHRecentCall"];

    v26 = v39;
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    uniqueId3 = [(CHRecentCall *)self uniqueId];
    uniqueId4 = [callCopy uniqueId];
    v54 = 138543618;
    v55 = uniqueId3;
    v56 = 2114;
    v57 = uniqueId4;
    _os_log_impl(&dword_1C3E90000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ cannot coalesce with %{public}@: Calls happened on different dates.", &v54, 0x16u);

    goto LABEL_25;
  }

  serviceProvider = [(CHRecentCall *)self serviceProvider];
  serviceProvider2 = [callCopy serviceProvider];
  v13 = (serviceProvider | serviceProvider2) == 0;
  if (serviceProvider2)
  {
    v13 = [serviceProvider isEqualToString:serviceProvider2];
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

    uniqueId5 = [(CHRecentCall *)self uniqueId];
    uniqueId6 = [callCopy uniqueId];
    serviceProvider3 = [(CHRecentCall *)self serviceProvider];
    serviceProvider4 = [callCopy serviceProvider];
    v54 = 138544130;
    v55 = uniqueId5;
    v56 = 2114;
    v57 = uniqueId6;
    v58 = 2114;
    v59 = serviceProvider3;
    v60 = 2114;
    v61 = serviceProvider4;
    v47 = "%{public}@ cannot coalesce with %{public}@: Call service provider does not match. MyServiceProvider: %{public}@, OtherServiceProvider: %{public}@";
LABEL_38:
    _os_log_impl(&dword_1C3E90000, v26, OS_LOG_TYPE_DEFAULT, v47, &v54, 0x2Au);

    goto LABEL_26;
  }

  localParticipantUUID = [(CHRecentCall *)self localParticipantUUID];
  localParticipantUUID2 = [callCopy localParticipantUUID];
  v16 = (localParticipantUUID | localParticipantUUID2) == 0;
  if (localParticipantUUID2)
  {
    v16 = [localParticipantUUID isEqual:localParticipantUUID2];
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

    uniqueId5 = [(CHRecentCall *)self uniqueId];
    uniqueId6 = [callCopy uniqueId];
    serviceProvider3 = [(CHRecentCall *)self localParticipantUUID];
    serviceProvider4 = [callCopy localParticipantUUID];
    v54 = 138544130;
    v55 = uniqueId5;
    v56 = 2114;
    v57 = uniqueId6;
    v58 = 2114;
    v59 = serviceProvider3;
    v60 = 2114;
    v61 = serviceProvider4;
    v47 = "%{public}@ cannot coalesce with %{public}@: Call UUIDs are not the same. MyLocalParticipantUUID: %{public}@, OtherLocalParticipantUUID: %{public}@";
    goto LABEL_38;
  }

  blockedByExtension = [(CHRecentCall *)self blockedByExtension];
  blockedByExtension2 = [callCopy blockedByExtension];
  v19 = (blockedByExtension | blockedByExtension2) == 0;
  if (blockedByExtension2)
  {
    v19 = [blockedByExtension isEqual:blockedByExtension2];
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

    uniqueId5 = [(CHRecentCall *)self uniqueId];
    uniqueId6 = [callCopy uniqueId];
    serviceProvider3 = [(CHRecentCall *)self blockedByExtension];
    serviceProvider4 = [callCopy blockedByExtension];
    v54 = 138544130;
    v55 = uniqueId5;
    v56 = 2114;
    v57 = uniqueId6;
    v58 = 2114;
    v59 = serviceProvider3;
    v60 = 2114;
    v61 = serviceProvider4;
    v47 = "%{public}@ cannot coalesce with %{public}@: Call blockedByExtensions are not the same. MyBlockedByExtension: %{public}@, OtherBlockedByExtension: %{public}@";
    goto LABEL_38;
  }

  identityExtension = [(CHRecentCall *)self identityExtension];
  identityExtension2 = [callCopy identityExtension];
  v22 = (identityExtension | identityExtension2) == 0;
  if (identityExtension2)
  {
    v22 = [identityExtension isEqual:identityExtension2];
  }

  if ((v22 & 1) == 0)
  {
    v52 = +[CHLogServer sharedInstance];
    v53 = [v52 logHandleForDomain:"CHRecentCall"];

    v26 = v53;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      uniqueId5 = [(CHRecentCall *)self uniqueId];
      uniqueId6 = [callCopy uniqueId];
      serviceProvider3 = [(CHRecentCall *)self identityExtension];
      serviceProvider4 = [callCopy identityExtension];
      v54 = 138544130;
      v55 = uniqueId5;
      v56 = 2114;
      v57 = uniqueId6;
      v58 = 2114;
      v59 = serviceProvider3;
      v60 = 2114;
      v61 = serviceProvider4;
      v47 = "%{public}@ cannot coalesce with %{public}@: Call identityExtensions are not the same. MyIdentityExtension: %{public}@, OtherIdentityExtension: %{public}@";
      goto LABEL_38;
    }

LABEL_26:

    v23 = 0;
    goto LABEL_27;
  }

  v23 = [(CHRecentCall *)self canCoalesceRemoteParticipantHandlesFromCall:callCopy usingNewStrategy:0];
LABEL_27:

  v36 = *MEMORY[0x1E69E9840];
  return v23;
}

- (BOOL)canCoalesceRemoteParticipantHandlesFromCall:(id)call usingNewStrategy:(BOOL)strategy
{
  v77 = *MEMORY[0x1E69E9840];
  callCopy = call;
  if (!-[CHRecentCall hasMessage](self, "hasMessage") && ![callCopy hasMessage] || strategy)
  {
    isoCountryCode = [(CHRecentCall *)self isoCountryCode];
    isoCountryCode2 = [callCopy isoCountryCode];
    v17 = (isoCountryCode | isoCountryCode2) == 0;
    if (isoCountryCode2)
    {
      v17 = [isoCountryCode isEqualToString:isoCountryCode2];
    }

    if (v17)
    {
      callerIdIsBlocked = [(CHRecentCall *)self callerIdIsBlocked];
      if (callerIdIsBlocked != [callCopy callerIdIsBlocked])
      {
        v19 = +[CHLogServer sharedInstance];
        v20 = [v19 logHandleForDomain:"CHRecentCall"];

        anyObject = v20;
        if (!os_log_type_enabled(anyObject, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        uniqueId = [(CHRecentCall *)self uniqueId];
        uniqueId2 = [callCopy uniqueId];
        v70 = 138544130;
        v71 = uniqueId;
        v72 = 2114;
        v73 = uniqueId2;
        v74 = 1026;
        *v75 = [(CHRecentCall *)self callerIdIsBlocked];
        *&v75[4] = 1026;
        *&v75[6] = [callCopy callerIdIsBlocked];
        _os_log_impl(&dword_1C3E90000, anyObject, OS_LOG_TYPE_DEFAULT, "%{public}@ cannot coalesce with %{public}@: callerID block statuses are not the same. self.callerIdIsBlocked: %{public}d, otherCall.callerIdIsBlocked: %{public}d", &v70, 0x22u);
LABEL_17:

        goto LABEL_18;
      }

      remoteParticipantHandles = [(CHRecentCall *)self remoteParticipantHandles];
      v31 = [remoteParticipantHandles count];

      remoteParticipantHandles2 = [callCopy remoteParticipantHandles];
      v33 = [remoteParticipantHandles2 count];

      if (v31 == v33)
      {
        if (v31 != 1)
        {
          if (!v31)
          {
            v34 = +[CHLogServer sharedInstance];
            v35 = [v34 logHandleForDomain:"CHRecentCall"];

            anyObject = v35;
            if (!os_log_type_enabled(anyObject, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_18;
            }

            uniqueId3 = [(CHRecentCall *)self uniqueId];
            uniqueId4 = [callCopy uniqueId];
            v70 = 138544130;
            v71 = uniqueId3;
            v72 = 2114;
            v73 = uniqueId4;
            v74 = 2048;
            *v75 = 0;
            *&v75[8] = 2048;
            v76 = 0;
            v12 = "%{public}@ cannot coalesce with %{public}@: calls don't have any remote participants. self.remoteParticipantHandles.count: %lu, otherCall.remoteParticipantHandles.count: %lu";
            v13 = anyObject;
            v14 = 42;
            goto LABEL_7;
          }

          remoteParticipantHandles3 = [(CHRecentCall *)self remoteParticipantHandles];
          v53 = [remoteParticipantHandles3 count];

          if (v53 < 2)
          {
            goto LABEL_46;
          }

          notificationThreadIdentifier = [(CHRecentCall *)self notificationThreadIdentifier];
          notificationThreadIdentifier2 = [callCopy notificationThreadIdentifier];
          v56 = [notificationThreadIdentifier isEqualToString:notificationThreadIdentifier2];

          if ((v56 & 1) == 0)
          {
            goto LABEL_46;
          }

LABEL_44:
          v27 = 1;
          goto LABEL_20;
        }

        remoteParticipantHandles4 = [(CHRecentCall *)self remoteParticipantHandles];
        anyObject = [remoteParticipantHandles4 anyObject];

        remoteParticipantHandles5 = [callCopy remoteParticipantHandles];
        anyObject2 = [remoteParticipantHandles5 anyObject];

        value = [anyObject value];
        if ([value length])
        {
          value2 = [anyObject2 value];
          v45 = [value2 length];

          if (v45)
          {
            normalizedValue = [anyObject2 normalizedValue];
            if (normalizedValue)
            {
              v47 = normalizedValue;
              normalizedValue2 = [anyObject2 normalizedValue];
              if ([normalizedValue2 length])
              {
                normalizedValue3 = [anyObject normalizedValue];
                normalizedValue4 = [anyObject2 normalizedValue];
                v51 = [normalizedValue3 isEqualToString:normalizedValue4];

                if (v51)
                {

                  goto LABEL_44;
                }
              }

              else
              {
              }
            }

            value3 = [anyObject2 value];
            if ([value3 length])
            {
              value4 = [anyObject value];
              value5 = [anyObject2 value];
              v67 = [value4 isEqualToString:value5];

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

            anyObject = v69;
            if (!os_log_type_enabled(anyObject, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_18;
            }

            uniqueId3 = [(CHRecentCall *)self notificationThreadIdentifier];
            uniqueId4 = [callCopy notificationThreadIdentifier];
            v70 = 138543618;
            v71 = uniqueId3;
            v72 = 2114;
            v73 = uniqueId4;
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
          uniqueId5 = [(CHRecentCall *)self uniqueId];
          uniqueId6 = [callCopy uniqueId];
          remoteParticipantHandles6 = [(CHRecentCall *)self remoteParticipantHandles];
          remoteParticipantHandles7 = [callCopy remoteParticipantHandles];
          v70 = 138544130;
          v71 = uniqueId5;
          v72 = 2114;
          v73 = uniqueId6;
          v74 = 2112;
          *v75 = remoteParticipantHandles6;
          *&v75[8] = 2112;
          v76 = remoteParticipantHandles7;
          _os_log_impl(&dword_1C3E90000, v59, OS_LOG_TYPE_DEFAULT, "%{public}@ cannot coalesce with %{public}@: One or both calls have a remoteParticipantHandle with length 0. self.remoteParticipantHandles: %@, otherCall.remoteParticipantHandles: %@", &v70, 0x2Au);
        }

        goto LABEL_19;
      }

      v36 = +[CHLogServer sharedInstance];
      v37 = [v36 logHandleForDomain:"CHRecentCall"];

      anyObject = v37;
      if (!os_log_type_enabled(anyObject, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      uniqueId = [(CHRecentCall *)self uniqueId];
      uniqueId2 = [callCopy uniqueId];
      remoteParticipantHandles8 = [(CHRecentCall *)self remoteParticipantHandles];
      v38 = [remoteParticipantHandles8 count];
      remoteParticipantHandles9 = [callCopy remoteParticipantHandles];
      v70 = 138544130;
      v71 = uniqueId;
      v72 = 2114;
      v73 = uniqueId2;
      v74 = 2048;
      *v75 = v38;
      *&v75[8] = 2048;
      v76 = [remoteParticipantHandles9 count];
      _os_log_impl(&dword_1C3E90000, anyObject, OS_LOG_TYPE_DEFAULT, "%{public}@ cannot coalesce with %{public}@: remote participant counts are different. self.remoteParticipantHandles.count: %lu, otherCall.remoteParticipantHandles.count: %lu", &v70, 0x2Au);
    }

    else
    {
      v23 = +[CHLogServer sharedInstance];
      v24 = [v23 logHandleForDomain:"CHRecentCall"];

      anyObject = v24;
      if (!os_log_type_enabled(anyObject, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      uniqueId = [(CHRecentCall *)self uniqueId];
      uniqueId2 = [callCopy uniqueId];
      remoteParticipantHandles8 = [(CHRecentCall *)self isoCountryCode];
      isoCountryCode3 = [callCopy isoCountryCode];
      v70 = 138544130;
      v71 = uniqueId;
      v72 = 2114;
      v73 = uniqueId2;
      v74 = 2114;
      *v75 = remoteParticipantHandles8;
      *&v75[8] = 2114;
      v76 = isoCountryCode3;
      _os_log_impl(&dword_1C3E90000, anyObject, OS_LOG_TYPE_DEFAULT, "%{public}@ cannot coalesce with %{public}@: ISO codes are not the same. self.isoCountryCode: %{public}@, otherCall.isoCountryCode: %{public}@", &v70, 0x2Au);
    }

    goto LABEL_17;
  }

  v7 = +[CHLogServer sharedInstance];
  v8 = [v7 logHandleForDomain:"CHRecentCall"];

  anyObject = v8;
  if (os_log_type_enabled(anyObject, OS_LOG_TYPE_DEFAULT))
  {
    uniqueId3 = [(CHRecentCall *)self uniqueId];
    uniqueId4 = [callCopy uniqueId];
    v70 = 138543618;
    v71 = uniqueId3;
    v72 = 2114;
    v73 = uniqueId4;
    v12 = "%{public}@ cannot coalesce with %{public}@: Both calls have messages";
LABEL_6:
    v13 = anyObject;
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

- (BOOL)canCoalesceWithCall:(id)call withStrategy:(id)strategy
{
  v22 = *MEMORY[0x1E69E9840];
  callCopy = call;
  strategyCopy = strategy;
  if ([strategyCopy isEqualToString:@"kCHCoalescingStrategyRecents"])
  {
    if (![(CHRecentCall *)self canCoalesceSyncWithRecentsStrategyWithCall:callCopy])
    {
LABEL_12:
      v13 = 0;
      goto LABEL_13;
    }
  }

  else if ([strategyCopy isEqualToString:@"kCHCoalescingStrategyCollapseIfEqual"])
  {
    if (![(CHRecentCall *)self canCoalesceRemoteParticipantHandlesFromCall:callCopy usingNewStrategy:0])
    {
      goto LABEL_12;
    }
  }

  else if (![strategyCopy isEqualToString:@"kCHCoalescingStrategyFaceTimeRecents"] || !-[CHRecentCall canCoalesceRemoteParticipantHandlesFromCall:usingNewStrategy:](self, "canCoalesceRemoteParticipantHandlesFromCall:usingNewStrategy:", callCopy, 1))
  {
    goto LABEL_12;
  }

  v8 = +[CHLogServer sharedInstance];
  v9 = [v8 logHandleForDomain:"CHRecentCall"];

  v10 = v9;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    uniqueId = [(CHRecentCall *)self uniqueId];
    uniqueId2 = [callCopy uniqueId];
    v16 = 138412802;
    v17 = uniqueId;
    v18 = 2112;
    v19 = uniqueId2;
    v20 = 2112;
    v21 = strategyCopy;
    _os_log_impl(&dword_1C3E90000, v10, OS_LOG_TYPE_DEFAULT, "%@ can coalesce with %@ using %@", &v16, 0x20u);
  }

  v13 = 1;
LABEL_13:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)coalesceWithCall:(id)call withStrategy:(id)strategy
{
  v39 = *MEMORY[0x1E69E9840];
  callCopy = call;
  strategyCopy = strategy;
  v9 = +[CHLogServer sharedInstance];
  v10 = [v9 logHandleForDomain:"CHRecentCall"];

  v11 = v10;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uniqueId = [(CHRecentCall *)self uniqueId];
    v13 = NSStringFromSelector(a2);
    uniqueId2 = [callCopy uniqueId];
    v29 = 138544130;
    v30 = uniqueId;
    v31 = 2114;
    v32 = v13;
    v33 = 2114;
    v34 = uniqueId2;
    v35 = 2112;
    v36 = strategyCopy;
    _os_log_impl(&dword_1C3E90000, v11, OS_LOG_TYPE_DEFAULT, "==> %{public}@ %{public}@ %{public}@ with %@", &v29, 0x2Au);
  }

  v15 = [(CHRecentCall *)self canCoalesceWithCall:callCopy withStrategy:strategyCopy];
  if (v15)
  {
    callOccurrences = [callCopy callOccurrences];
    v17 = [(CHRecentCall *)self callOccurrencesArrayByAddingCallOccurrencesFromArray:callOccurrences];
    [(CHRecentCall *)self setCallOccurrences:v17];

    -[CHRecentCall setUnreadCount:](self, "setUnreadCount:", -[CHRecentCall unreadCount](self, "unreadCount") + [callCopy unreadCount]);
    hasMessage = 1;
    [(CHRecentCall *)self setMultiCall:1];
    if (![(CHRecentCall *)self hasMessage])
    {
      hasMessage = [callCopy hasMessage];
    }

    [(CHRecentCall *)self setHasMessage:hasMessage];
  }

  v19 = +[CHLogServer sharedInstance];
  v20 = [v19 logHandleForDomain:"CHRecentCall"];

  v21 = v20;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    uniqueId3 = [(CHRecentCall *)self uniqueId];
    v23 = NSStringFromSelector(a2);
    uniqueId4 = [callCopy uniqueId];
    v25 = uniqueId4;
    v29 = 138544386;
    v26 = @"NO";
    v30 = uniqueId3;
    if (v15)
    {
      v26 = @"YES";
    }

    v31 = 2114;
    v32 = v23;
    v33 = 2114;
    v34 = uniqueId4;
    v35 = 2114;
    v36 = strategyCopy;
    v37 = 2114;
    v38 = v26;
    _os_log_impl(&dword_1C3E90000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ %{public}@ with %{public}@ = %{public}@", &v29, 0x34u);
  }

  v27 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)coalescedCallWithCall:(id)call usingStrategy:(id)strategy
{
  v15[1] = *MEMORY[0x1E69E9840];
  callCopy = call;
  if ([(CHRecentCall *)self canCoalesceWithCall:callCopy withStrategy:strategy])
  {
    callOccurrences = [callCopy callOccurrences];
    if (![callOccurrences count])
    {
      dictionaryRepresentation = [callCopy dictionaryRepresentation];
      v15[0] = dictionaryRepresentation;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

      callOccurrences = v9;
    }

    v10 = [(CHRecentCall *)self copy];
    v11 = [(CHRecentCall *)self callOccurrencesArrayByAddingCallOccurrencesFromArray:callOccurrences];
    [v10 setCallOccurrences:v11];

    hasMessage = 1;
    [v10 setMultiCall:1];
    [v10 setUnreadCount:{objc_msgSend(v10, "unreadCount") + objc_msgSend(callCopy, "unreadCount")}];
    if (([v10 hasMessage] & 1) == 0)
    {
      hasMessage = [callCopy hasMessage];
    }

    [v10 setHasMessage:hasMessage];
  }

  else
  {
    v10 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)setDuration:(double)duration
{
  v3 = fmax(duration, 0.0);
  if (self->_duration != v3)
  {
    self->_duration = v3;
  }
}

- (void)setName:(id)name
{
  nameCopy = name;
  v13 = nameCopy;
  if (self->_blockedByExtension)
  {
    name = self->_name;
    self->_name = 0;
    goto LABEL_12;
  }

  if ([nameCopy length])
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

- (void)setBlockedByExtension:(id)extension
{
  extensionCopy = extension;
  if (extensionCopy)
  {
    v7 = extensionCopy;
    objc_storeStrong(&self->_blockedByExtension, extension);
    name = self->_name;
    self->_name = 0;

    extensionCopy = v7;
  }
}

- (CHHandle)initiator
{
  if ((self->_callStatus & 0xD) != 0 && !self->_initiator)
  {
    validRemoteParticipantHandles = [(CHRecentCall *)self validRemoteParticipantHandles];
    v4 = [validRemoteParticipantHandles count];

    if (v4 == 1)
    {
      validRemoteParticipantHandles2 = [(CHRecentCall *)self validRemoteParticipantHandles];
      anyObject = [validRemoteParticipantHandles2 anyObject];
      initiator = self->_initiator;
      self->_initiator = anyObject;
    }
  }

  v8 = self->_initiator;

  return v8;
}

- (void)setTimeToEstablish:(id)establish
{
  establishCopy = establish;
  [establishCopy doubleValue];
  if (v4 <= 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = establishCopy;
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

- (void)setRead:(BOOL)read
{
  if (self->_read != read)
  {
    readCopy = read;
    self->_read = read;
    unreadCount = [(CHRecentCall *)self unreadCount];
    if (readCopy)
    {
      v7 = unreadCount - 1;
    }

    else
    {
      v7 = unreadCount + 1;
    }

    [(CHRecentCall *)self setUnreadCount:v7];
  }
}

- (void)fetchAndSetContactIdentifier
{
  v37 = *MEMORY[0x1E69E9840];
  callerId = [(CHRecentCall *)self callerId];
  v4 = [callerId length];

  if (v4)
  {
    v5 = +[CHSharedAddressBook get];
    callerId2 = [(CHRecentCall *)self callerId];
    v7 = [v5 fetchAddressBookInfoFromCacheForKey:callerId2];

    v8 = +[CHLogServer sharedInstance];
    v9 = [v8 logHandleForDomain:"CHRecentCall"];

    v10 = v9;
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v11)
      {
        callerId3 = [(CHRecentCall *)self callerId];
        v33 = 138412290;
        v34 = callerId3;
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
        callerId4 = [(CHRecentCall *)self callerId];
        v33 = 138412290;
        v34 = callerId4;
        _os_log_impl(&dword_1C3E90000, v10, OS_LOG_TYPE_DEFAULT, "Address book information for %@ not found in our cache, looking it up", &v33, 0xCu);
      }

      callerIdIsEmailAddress = [(CHRecentCall *)self callerIdIsEmailAddress];
      phoneBookManager = [(CHRecentCall *)self phoneBookManager];
      callerId5 = [(CHRecentCall *)self callerId];
      isoCountryCode = [(CHRecentCall *)self isoCountryCode];
      v18 = [phoneBookManager getRecordId:callerId5 countryCode:isoCountryCode isEmail:callerIdIsEmailAddress];

      v26 = [v18 valueForKey:@"kCHABCacheCNContactIdKey"];
      v27 = self->_contactIdentifier;
      self->_contactIdentifier = v26;

      callerId6 = [(CHRecentCall *)self callerId];
      [v5 insertAddressBookInfoIntoCache:v18 forKey:callerId6];
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
  callerId = [(CHRecentCall *)self callerId];
  v4 = [callerId length];

  if (v4)
  {
    v5 = +[CHSharedAddressBook get];
    callerId2 = [(CHRecentCall *)self callerId];
    v7 = [v5 fetchAddressBookInfoFromCacheForKey:callerId2];

    v8 = [v7 valueForKey:@"kCHABCacheCNContactRefKey"];
    callerIdIsEmailAddress = [(CHRecentCall *)self callerIdIsEmailAddress];
    v10 = +[CHLogServer sharedInstance];
    v11 = [v10 logHandleForDomain:"CHRecentCall"];

    v12 = v11;
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v13)
      {
        callerId3 = [(CHRecentCall *)self callerId];
        v28 = 138412290;
        v29 = callerId3;
        _os_log_impl(&dword_1C3E90000, v12, OS_LOG_TYPE_DEFAULT, "Full contact information for %@ found in our cache, using it", &v28, 0xCu);
      }

      objc_storeStrong(&self->_contactRef, v8);
      v15 = +[CHLogServer sharedInstance];
      contactIdentifier = [v15 logHandleForDomain:"CHRecentCall"];

      if (os_log_type_enabled(contactIdentifier, OS_LOG_TYPE_DEFAULT))
      {
        contactIdentifier = self->_contactIdentifier;
        contactRef = self->_contactRef;
        v28 = 138412546;
        v29 = contactIdentifier;
        v30 = 2048;
        v31 = contactRef;
        _os_log_impl(&dword_1C3E90000, contactIdentifier, OS_LOG_TYPE_DEFAULT, "Got CNContact Id: %@, CNContact Pointer: %p from the cache.", &v28, 0x16u);
      }
    }

    else
    {
      if (v13)
      {
        callerId4 = [(CHRecentCall *)self callerId];
        v28 = 138412290;
        v29 = callerId4;
        _os_log_impl(&dword_1C3E90000, v12, OS_LOG_TYPE_DEFAULT, "Full contact information for %@ not found in our cache, looking it up", &v28, 0xCu);
      }

      contactIdentifier = [(CHRecentCall *)self contactIdentifier];
      if ([contactIdentifier length])
      {
        phoneBookManager = [(CHRecentCall *)self phoneBookManager];
        v21 = [phoneBookManager fetchFullCNContactForContactIdentifier:contactIdentifier isEmail:callerIdIsEmailAddress];
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
    contactRef = 0;
  }

  else
  {
    [(CHRecentCall *)self fetchAndSetContactIdentifier];
    contactRef = [(CHRecentCall *)self contactRef];
    if (!contactRef)
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
    if (contactRef)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(contactRef, "iOSLegacyIdentifier")];
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

- (void)setCallerIdAvailability:(unsigned int)availability
{
  if (self->_callerIdAvailability != availability)
  {
    self->_callerIdAvailability = availability;
    [(CHRecentCall *)self setCallerIdIsBlocked:availability == 1];
  }
}

- (NSString)callerNetworkFirstName
{
  name = [(CHRecentCall *)self name];
  v3 = [name rangeOfString:@" "];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = name;
  }

  else
  {
    v4 = [name substringToIndex:v3];
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
  name = [(CHRecentCall *)self name];
  v3 = [name rangeOfString:@" "];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL || (v5 = v3 + v4, v3 + v4 >= [name length]))
  {
    v6 = 0;
  }

  else
  {
    v6 = [name substringFromIndex:v5];
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

  callerId = [(CHRecentCall *)self callerId];
  v4 = [CHHandle handleTypeForValue:callerId];

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

    phoneBookManager = [(CHRecentCall *)self phoneBookManager];
    contactRef = [(CHRecentCall *)self contactRef];
    v10 = [phoneBookManager getPersonsNameForContact:contactRef];
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

      name = [(CHRecentCall *)self name];
      v15 = self->_callerName;
      self->_callerName = name;
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

- (id)getLocalizedString:(id)string
{
  v3 = MEMORY[0x1E696AAE8];
  stringCopy = string;
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

  v12 = [v5 localizedStringForKey:stringCopy value:@"Default Value" table:@"CallHistory"];

  return v12;
}

- (id)callerNameForDisplay
{
  callerName = [(CHRecentCall *)self callerName];
  if (!callerName)
  {
    v4 = +[CHLogServer sharedInstance];
    v5 = [v4 logHandleForDomain:"CHRecentCall"];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C3E90000, v5, OS_LOG_TYPE_DEFAULT, "Caller name is nil, let's use caller id formatted", buf, 2u);
    }

    callerName = [(CHRecentCall *)self callerIdForDisplay];
  }

  if (![callerName length])
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

    callerName = v9;
  }

  v10 = +[CHLogServer sharedInstance];
  v11 = [v10 logHandleForDomain:"CHRecentCall"];

  v12 = v11;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [CHRecentCall callerNameForDisplay];
  }

  return callerName;
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
    phoneBookManager = [(CHRecentCall *)self phoneBookManager];
    contactRef = [(CHRecentCall *)self contactRef];
    callerId = [(CHRecentCall *)self callerId];
    v11 = [phoneBookManager getLocalizedCallerIdLabelForContact:contactRef forCallerId:callerId withCallerIdIsEmail:{-[CHRecentCall callerIdIsEmailAddress](self, "callerIdIsEmailAddress")}];
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
  blockedByExtension = [(CHRecentCall *)self blockedByExtension];

  if (!blockedByExtension)
  {
    goto LABEL_3;
  }

  v4 = MEMORY[0x1E696ABD0];
  blockedByExtension2 = [(CHRecentCall *)self blockedByExtension];
  v6 = [v4 extensionWithIdentifier:blockedByExtension2 error:0];

  _plugIn = [v6 _plugIn];
  localizedContainingName = [_plugIn localizedContainingName];

  if (!localizedContainingName)
  {
LABEL_3:
    localizedContainingName = [(CHRecentCall *)self blockedByExtensionName];
  }

  return localizedContainingName;
}

+ (id)getLocationForCallerId:(id)id andIsoCountryCode:(id)code
{
  v37[2] = *MEMORY[0x1E69E9840];
  idCopy = id;
  codeCopy = code;
  if ([idCopy length])
  {
    v7 = getSharedGEOPhoneNumberResolver();
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    if ([codeCopy length])
    {
      v9 = *MEMORY[0x1E69A27D8];
      v36[0] = *MEMORY[0x1E69A27E0];
      v36[1] = v9;
      v37[0] = idCopy;
      v37[1] = codeCopy;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
    }

    else
    {
      v34 = *MEMORY[0x1E69A27E0];
      v35 = idCopy;
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
    v25 = idCopy;
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

+ (id)getLocationForCall:(id)call
{
  v42[2] = *MEMORY[0x1E69E9840];
  callCopy = call;
  validRemoteParticipantHandles = [callCopy validRemoteParticipantHandles];
  v5 = [validRemoteParticipantHandles count];

  if (v5 == 1)
  {
    validRemoteParticipantHandles2 = [callCopy validRemoteParticipantHandles];
    anyObject = [validRemoteParticipantHandles2 anyObject];

    normalizedValue = [anyObject normalizedValue];
    if (!normalizedValue)
    {
      normalizedValue = [anyObject value];
    }

    if ([normalizedValue length])
    {
      v9 = getSharedGEOPhoneNumberResolver();
      v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
      isoCountryCode = [callCopy isoCountryCode];
      v12 = [isoCountryCode length];

      v13 = *MEMORY[0x1E69A27E0];
      if (v12)
      {
        v42[0] = normalizedValue;
        v14 = *MEMORY[0x1E69A27D8];
        v41[0] = v13;
        v41[1] = v14;
        isoCountryCode2 = [callCopy isoCountryCode];
        v42[1] = isoCountryCode2;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
      }

      else
      {
        v39 = *MEMORY[0x1E69A27E0];
        v40 = normalizedValue;
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
      v30 = normalizedValue;
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
    callerId = [(CHRecentCall *)self callerId];
    callerIdLocation = self->_callerIdLocation;
    v18 = 138543874;
    v19 = v7;
    v20 = 2112;
    v21 = callerId;
    v22 = 2112;
    v23 = callerIdLocation;
    _os_log_impl(&dword_1C3E90000, v6, OS_LOG_TYPE_DEFAULT, "==> %{public}@. Current location info for %@ is %@", &v18, 0x20u);
  }

  v10 = self->_callerIdLocation;
  if (!v10)
  {
    callerId2 = [(CHRecentCall *)self callerId];
    isoCountryCode = [(CHRecentCall *)self isoCountryCode];
    v13 = [CHRecentCall getLocationForCallerId:callerId2 andIsoCountryCode:isoCountryCode];
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
  callerIdLabel = [(CHRecentCall *)self callerIdLabel];
  if (!callerIdLabel)
  {
    callerIdLocation = [(CHRecentCall *)self callerIdLocation];
    v5 = callerIdLocation;
    if (callerIdLocation)
    {
      v6 = callerIdLocation;
    }

    else
    {
      v6 = [(CHRecentCall *)self getLocalizedString:@"UNKNOWN_LABEL"];
    }

    callerIdLabel = v6;
  }

  return callerIdLabel;
}

- (id)callOccurrencesAsString
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  callOccurrences = [(CHRecentCall *)self callOccurrences];
  if ([callOccurrences count])
  {
    v5 = 0;
    do
    {
      [v3 appendFormat:@"\n\tMerged Call %lu:\n", v5];
      v6 = [callOccurrences objectAtIndexedSubscript:v5];
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

    while (v5 < [callOccurrences count]);
  }

  return v3;
}

+ (id)callMediaTypeAsString:(int64_t)string
{
  if (string > 2)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E81DCE38 + string);
  }
}

+ (id)callTTYTypeAsString:(int64_t)string
{
  if (string > 2)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E81DCE50 + string);
  }
}

+ (id)callHandleTypeAsString:(int64_t)string
{
  if ((string - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E81DCE68 + string - 1);
  }
}

+ (id)callTypeAsString:(unsigned int)string
{
  switch(string)
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

+ (id)callStatusAsString:(unsigned int)string
{
  switch(string)
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

+ (id)callCategoryAsString:(unsigned int)string
{
  stringCopy = string;
  if ((string & 2) != 0)
  {
    v4 = maybeAppendStringWithSeparator(&stru_1F438BFD8, @"kCHCallCategoryVideo");
  }

  else
  {
    v4 = &stru_1F438BFD8;
  }

  if (stringCopy)
  {
    v5 = maybeAppendStringWithSeparator(v4, @"kCHCallCategoryAudio");

    v4 = v5;
  }

  if ((stringCopy & 4) != 0)
  {
    v6 = maybeAppendStringWithSeparator(v4, @"kCHCallCategoryTTYDirect");

    v4 = v6;
  }

  if ((stringCopy & 8) != 0)
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

+ (id)callDirectoryIdentificationTypeAsString:(int64_t)string
{
  v3 = @"Unknown";
  if (string == 2)
  {
    v3 = @"CHCallDirectoryIdentityTypeBusiness";
  }

  if (string == 1)
  {
    return @"CHCallDirectoryIdentityTypePerson";
  }

  else
  {
    return v3;
  }
}

- (void)setServiceProvider:(id)provider
{
  providerCopy = provider;
  v5 = self->_serviceProvider;
  v6 = providerCopy;
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

- (void)setMediaType:(int64_t)type
{
  if (self->_mediaType != type)
  {
    self->_mediaType = type;
    self->_callCategory = [CHRecentCall categoryForMediaType:[(CHRecentCall *)self mediaType] andTTYType:[(CHRecentCall *)self ttyType]];
    callCategory = [(CHRecentCall *)self callCategory];
    serviceProvider = [(CHRecentCall *)self serviceProvider];
    self->_callType = [CHRecentCall getCallTypeForCategory:callCategory andServiceProvider:serviceProvider];
  }
}

- (void)setTtyType:(int64_t)type
{
  if (self->_ttyType != type)
  {
    self->_ttyType = type;
    self->_callCategory = [CHRecentCall categoryForMediaType:[(CHRecentCall *)self mediaType] andTTYType:[(CHRecentCall *)self ttyType]];
    callCategory = [(CHRecentCall *)self callCategory];
    serviceProvider = [(CHRecentCall *)self serviceProvider];
    self->_callType = [CHRecentCall getCallTypeForCategory:callCategory andServiceProvider:serviceProvider];
  }
}

+ (int64_t)mediaTypeForCallCategory:(unsigned int)category
{
  if ((category & 2) != 0)
  {
    return 2;
  }

  else
  {
    return (category & 1) != 0;
  }
}

+ (int64_t)ttyTypeForCallCategory:(unsigned int)category
{
  if ((category & 8) != 0)
  {
    return 2;
  }

  else
  {
    return (category & 4) != 0;
  }
}

+ (unsigned)categoryForMediaType:(int64_t)type andTTYType:(int64_t)yType
{
  if (type == 2)
  {
    v4 = &kCHCallCategoryVideo;
    goto LABEL_5;
  }

  if (type == 1)
  {
    v4 = &kCHCallCategoryAudio;
LABEL_5:
    result = *v4;
    goto LABEL_7;
  }

  result = 0;
LABEL_7:
  if (yType == 1)
  {
    v6 = &kCHCallCategoryTTYDirect;
  }

  else
  {
    if (yType != 2)
    {
      return result;
    }

    v6 = &kCHCallCategoryTTYRelay;
  }

  result |= *v6;
  return result;
}

+ (unsigned)categoryForCallType:(unsigned int)type
{
  if (type == 8)
  {
    return 2;
  }

  return type == 16 || type == 1;
}

+ (id)serviceProviderForCallType:(unsigned int)type
{
  if (type == 16 || type == 8)
  {
    v5 = kCHServiceProviderFaceTime;
    goto LABEL_9;
  }

  if (type == 1)
  {
    v5 = kCHServiceProviderTelephony;
LABEL_9:
    v6 = *v5;

    return v6;
  }

  v6 = 0;

  return v6;
}

+ (unsigned)getCallTypeForCategory:(unsigned int)category andServiceProvider:(id)provider
{
  categoryCopy = category;
  providerCopy = provider;
  v6 = providerCopy;
  if (categoryCopy)
  {
    if ([providerCopy isEqualToString:@"com.apple.Telephony"])
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

  if (categoryCopy & 2) != 0 && ([v6 isEqualToString:@"com.apple.FaceTime"])
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
    callCategory = [(CHRecentCall *)self callCategory];
    serviceProvider = [(CHRecentCall *)self serviceProvider];
    self->_callType = [CHRecentCall getCallTypeForCategory:callCategory andServiceProvider:serviceProvider];
  }

  [(CHRecentCall *)self updateTTYAndMediaType];
}

- (void)encodeWithCoder:(id)coder
{
  uniqueId = self->_uniqueId;
  coderCopy = coder;
  [coderCopy encodeObject:uniqueId forKey:@"uniqueId"];
  [coderCopy encodeObject:self->_callerId forKey:@"callerId"];
  [coderCopy encodeObject:self->_date forKey:@"date"];
  [coderCopy encodeInteger:self->_callType forKey:@"callType"];
  [coderCopy encodeInteger:self->_callStatus forKey:@"callStatus"];
  [coderCopy encodeInteger:self->_mediaType forKey:@"mediaType"];
  callerIdAvailability = self->_callerIdAvailability;
  v7 = NSStringFromSelector(sel_callerIdAvailability);
  [coderCopy encodeInteger:callerIdAvailability forKey:v7];

  [coderCopy encodeBool:self->_read forKey:@"read"];
  [coderCopy encodeInteger:self->_unreadCount forKey:@"unreadCount"];
  [coderCopy encodeDouble:@"duration" forKey:self->_duration];
  [coderCopy encodeObject:self->_bytesOfDataUsed forKey:@"bytesOfDataUsed"];
  [coderCopy encodeObject:self->_mobileCountryCode forKey:@"mobileCountryCode"];
  [coderCopy encodeObject:self->_mobileNetworkCode forKey:@"mobileNetworkCode"];
  [coderCopy encodeObject:self->_devicePhoneId forKey:@"devicePhoneId"];
  imageURL = self->_imageURL;
  v9 = NSStringFromSelector(sel_imageURL);
  [coderCopy encodeObject:imageURL forKey:v9];

  [coderCopy encodeObject:self->_isoCountryCode forKey:@"isoCountryCode"];
  [coderCopy encodeObject:self->_callerIdLocation forKey:@"callerIdLocation"];
  [coderCopy encodeInteger:self->_callCategory forKey:@"callCategory"];
  [coderCopy encodeObject:self->_serviceProvider forKey:@"serviceRadar"];
  [coderCopy encodeInteger:self->_handleType forKey:@"handleType"];
  [coderCopy encodeObject:self->_timeToEstablish forKey:@"timeToEstablish"];
  localParticipantUUID = self->_localParticipantUUID;
  v11 = NSStringFromSelector(sel_localParticipantUUID);
  [coderCopy encodeObject:localParticipantUUID forKey:v11];

  name = self->_name;
  v13 = NSStringFromSelector(sel_name);
  [coderCopy encodeObject:name forKey:v13];

  outgoingLocalParticipantUUID = self->_outgoingLocalParticipantUUID;
  v15 = NSStringFromSelector(sel_outgoingLocalParticipantUUID);
  [coderCopy encodeObject:outgoingLocalParticipantUUID forKey:v15];

  participantGroupUUID = self->_participantGroupUUID;
  v17 = NSStringFromSelector(sel_participantGroupUUID);
  [coderCopy encodeObject:participantGroupUUID forKey:v17];

  remoteParticipantHandles = self->_remoteParticipantHandles;
  v19 = NSStringFromSelector(sel_remoteParticipantHandles);
  [coderCopy encodeObject:remoteParticipantHandles forKey:v19];

  verificationStatus = self->_verificationStatus;
  v21 = NSStringFromSelector(sel_verificationStatus);
  [coderCopy encodeInteger:verificationStatus forKey:v21];

  junkConfidence = self->_junkConfidence;
  v23 = NSStringFromSelector(sel_junkConfidence);
  [coderCopy encodeInteger:junkConfidence forKey:v23];

  junkIdentificationCategory = self->_junkIdentificationCategory;
  v25 = NSStringFromSelector(sel_junkIdentificationCategory);
  [coderCopy encodeObject:junkIdentificationCategory forKey:v25];

  [coderCopy encodeBool:self->_hasMessage forKey:@"hasMessage"];
  [coderCopy encodeObject:self->_conversationID forKey:@"conversationID"];
  disconnectedCause = self->_disconnectedCause;
  v27 = NSStringFromSelector(sel_disconnectedCause);
  [coderCopy encodeObject:disconnectedCause forKey:v27];

  [coderCopy encodeInteger:self->_autoAnsweredReason forKey:@"autoAnsweredReason"];
  emergencyMediaItems = self->_emergencyMediaItems;
  v29 = NSStringFromSelector(sel_emergencyMediaItems);
  [coderCopy encodeObject:emergencyMediaItems forKey:v29];

  usedEmergencyVideoStreaming = self->_usedEmergencyVideoStreaming;
  v31 = NSStringFromSelector(sel_usedEmergencyVideoStreaming);
  [coderCopy encodeBool:usedEmergencyVideoStreaming forKey:v31];

  wasEmergencyCall = self->_wasEmergencyCall;
  v33 = NSStringFromSelector(sel_wasEmergencyCall);
  [coderCopy encodeBool:wasEmergencyCall forKey:v33];

  screenSharingType = self->_screenSharingType;
  v35 = NSStringFromSelector(sel_screenSharingType);
  [coderCopy encodeInteger:screenSharingType forKey:v35];

  [coderCopy encodeBool:self->_ttyType != 0 forKey:@"kCHCallOccurrenceTTYTypeKey"];
  initiator = self->_initiator;
  v37 = NSStringFromSelector(sel_initiator);
  [coderCopy encodeObject:initiator forKey:v37];

  blockedByExtension = self->_blockedByExtension;
  v39 = NSStringFromSelector(sel_blockedByExtension);
  [coderCopy encodeObject:blockedByExtension forKey:v39];

  blockedByExtensionName = self->_blockedByExtensionName;
  v41 = NSStringFromSelector(sel_blockedByExtensionName);
  [coderCopy encodeObject:blockedByExtensionName forKey:v41];

  identityExtension = self->_identityExtension;
  v43 = NSStringFromSelector(sel_identityExtension);
  [coderCopy encodeObject:identityExtension forKey:v43];

  reminderUUID = self->_reminderUUID;
  v45 = NSStringFromSelector(sel_reminderUUID);
  [coderCopy encodeObject:reminderUUID forKey:v45];

  communicationTrustScore = self->_communicationTrustScore;
  v47 = NSStringFromSelector(sel_communicationTrustScore);
  [coderCopy encodeInteger:communicationTrustScore forKey:v47];
}

- (CHRecentCall)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CHRecentCall *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueId"];
    uniqueId = v5->_uniqueId;
    v5->_uniqueId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"callerId"];
    callerId = v5->_callerId;
    v5->_callerId = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v10;

    v5->_callType = [coderCopy decodeIntegerForKey:@"callType"];
    v5->_callStatus = [coderCopy decodeIntegerForKey:@"callStatus"];
    v5->_mediaType = [coderCopy decodeIntegerForKey:@"mediaType"];
    v12 = NSStringFromSelector(sel_callerIdAvailability);
    v5->_callerIdAvailability = [coderCopy decodeIntegerForKey:v12];

    v5->_read = [coderCopy decodeBoolForKey:@"read"];
    v5->_unreadCount = [coderCopy decodeIntegerForKey:@"unreadCount"];
    [coderCopy decodeDoubleForKey:@"duration"];
    v5->_duration = v13;
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bytesOfDataUsed"];
    bytesOfDataUsed = v5->_bytesOfDataUsed;
    v5->_bytesOfDataUsed = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mobileCountryCode"];
    mobileCountryCode = v5->_mobileCountryCode;
    v5->_mobileCountryCode = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mobileNetworkCode"];
    mobileNetworkCode = v5->_mobileNetworkCode;
    v5->_mobileNetworkCode = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"devicePhoneId"];
    devicePhoneId = v5->_devicePhoneId;
    v5->_devicePhoneId = v20;

    v22 = objc_opt_class();
    v23 = NSStringFromSelector(sel_imageURL);
    v24 = [coderCopy decodeObjectOfClass:v22 forKey:v23];
    imageURL = v5->_imageURL;
    v5->_imageURL = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isoCountryCode"];
    isoCountryCode = v5->_isoCountryCode;
    v5->_isoCountryCode = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"callerIdLocation"];
    callerIdLocation = v5->_callerIdLocation;
    v5->_callerIdLocation = v28;

    v5->_callCategory = [coderCopy decodeIntegerForKey:@"callCategory"];
    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceRadar"];
    serviceProvider = v5->_serviceProvider;
    v5->_serviceProvider = v30;

    v32 = objc_opt_class();
    v33 = NSStringFromSelector(sel_localParticipantUUID);
    v34 = [coderCopy decodeObjectOfClass:v32 forKey:v33];
    localParticipantUUID = v5->_localParticipantUUID;
    v5->_localParticipantUUID = v34;

    v36 = objc_opt_class();
    v37 = NSStringFromSelector(sel_name);
    v38 = [coderCopy decodeObjectOfClass:v36 forKey:v37];
    name = v5->_name;
    v5->_name = v38;

    v40 = objc_opt_class();
    v41 = NSStringFromSelector(sel_outgoingLocalParticipantUUID);
    v42 = [coderCopy decodeObjectOfClass:v40 forKey:v41];
    outgoingLocalParticipantUUID = v5->_outgoingLocalParticipantUUID;
    v5->_outgoingLocalParticipantUUID = v42;

    v44 = objc_opt_class();
    v45 = NSStringFromSelector(sel_participantGroupUUID);
    v46 = [coderCopy decodeObjectOfClass:v44 forKey:v45];
    participantGroupUUID = v5->_participantGroupUUID;
    v5->_participantGroupUUID = v46;

    v48 = MEMORY[0x1E695DFD8];
    v49 = objc_opt_class();
    v50 = [v48 setWithObjects:{v49, objc_opt_class(), 0}];
    v51 = NSStringFromSelector(sel_remoteParticipantHandles);
    v52 = [coderCopy decodeObjectOfClasses:v50 forKey:v51];
    remoteParticipantHandles = v5->_remoteParticipantHandles;
    v5->_remoteParticipantHandles = v52;

    v54 = NSStringFromSelector(sel_verificationStatus);
    v5->_verificationStatus = [coderCopy decodeIntegerForKey:v54];

    v55 = NSStringFromSelector(sel_junkConfidence);
    v5->_junkConfidence = [coderCopy decodeIntegerForKey:v55];

    v5->_hasMessage = [coderCopy decodeBoolForKey:@"hasMessage"];
    v56 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"conversationID"];
    conversationID = v5->_conversationID;
    v5->_conversationID = v56;

    v5->_autoAnsweredReason = [coderCopy decodeIntegerForKey:@"autoAnsweredReason"];
    v58 = MEMORY[0x1E695DFD8];
    v59 = objc_opt_class();
    v60 = [v58 setWithObjects:{v59, objc_opt_class(), 0}];
    v61 = NSStringFromSelector(sel_emergencyMediaItems);
    v62 = [coderCopy decodeObjectOfClasses:v60 forKey:v61];
    emergencyMediaItems = v5->_emergencyMediaItems;
    v5->_emergencyMediaItems = v62;

    v64 = NSStringFromSelector(sel_usedEmergencyVideoStreaming);
    v5->_usedEmergencyVideoStreaming = [coderCopy decodeBoolForKey:v64];

    v65 = NSStringFromSelector(sel_wasEmergencyCall);
    v5->_wasEmergencyCall = [coderCopy decodeBoolForKey:v65];

    v5->_ttyType = [coderCopy decodeBoolForKey:@"kCHCallOccurrenceTTYTypeKey"];
    v66 = NSStringFromSelector(sel_callDirectoryIdentityType);
    v5->_callDirectoryIdentityType = [coderCopy decodeIntegerForKey:v66];

    v67 = NSStringFromSelector(sel_screenSharingType);
    v5->_screenSharingType = [coderCopy decodeIntegerForKey:v67];

    v68 = objc_opt_class();
    v69 = NSStringFromSelector(sel_initiator);
    v70 = [coderCopy decodeObjectOfClass:v68 forKey:v69];
    initiator = v5->_initiator;
    v5->_initiator = v70;

    if ([coderCopy containsValueForKey:@"handleType"])
    {
      v72 = [coderCopy decodeIntegerForKey:@"handleType"];
    }

    else
    {
      v72 = [CHHandle handleTypeForValue:v5->_callerId];
    }

    v5->_handleType = v72;
    v73 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeToEstablish"];
    timeToEstablish = v5->_timeToEstablish;
    v5->_timeToEstablish = v73;

    v75 = objc_opt_class();
    v76 = NSStringFromSelector(sel_disconnectedCause);
    v77 = [coderCopy decodeObjectOfClass:v75 forKey:v76];
    disconnectedCause = v5->_disconnectedCause;
    v5->_disconnectedCause = v77;

    v79 = objc_opt_class();
    v80 = NSStringFromSelector(sel_blockedByExtension);
    v81 = [coderCopy decodeObjectOfClass:v79 forKey:v80];
    blockedByExtension = v5->_blockedByExtension;
    v5->_blockedByExtension = v81;

    v83 = objc_opt_class();
    v84 = NSStringFromSelector(sel_blockedByExtensionName);
    v85 = [coderCopy decodeObjectOfClass:v83 forKey:v84];
    blockedByExtensionName = v5->_blockedByExtensionName;
    v5->_blockedByExtensionName = v85;

    v87 = objc_opt_class();
    v88 = NSStringFromSelector(sel_identityExtension);
    v89 = [coderCopy decodeObjectOfClass:v87 forKey:v88];
    identityExtension = v5->_identityExtension;
    v5->_identityExtension = v89;

    v91 = objc_opt_class();
    v92 = NSStringFromSelector(sel_reminderUUID);
    v93 = [coderCopy decodeObjectOfClass:v91 forKey:v92];
    reminderUUID = v5->_reminderUUID;
    v5->_reminderUUID = v93;

    v95 = NSStringFromSelector(sel_communicationTrustScore);
    v5->_communicationTrustScore = [coderCopy decodeIntegerForKey:v95];

    [(CHRecentCall *)v5 fixCallTypeInfo];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[CHRecentCall allocWithZone:](CHRecentCall init];
  v6 = [(NSNumber *)self->_bytesOfDataUsed copyWithZone:zone];
  bytesOfDataUsed = v5->_bytesOfDataUsed;
  v5->_bytesOfDataUsed = v6;

  v8 = [(NSString *)self->_callerName copyWithZone:zone];
  callerName = v5->_callerName;
  v5->_callerName = v8;

  v10 = [(NSArray *)self->_callOccurrences copyWithZone:zone];
  callOccurrences = v5->_callOccurrences;
  v5->_callOccurrences = v10;

  v5->_callStatus = self->_callStatus;
  v12 = [(NSString *)self->_contactIdentifier copyWithZone:zone];
  contactIdentifier = v5->_contactIdentifier;
  v5->_contactIdentifier = v12;

  v14 = [(CNContact *)self->_contactRef copyWithZone:zone];
  contactRef = v5->_contactRef;
  v5->_contactRef = v14;

  v16 = [(NSDate *)self->_date copyWithZone:zone];
  date = v5->_date;
  v5->_date = v16;

  v18 = [(NSNumber *)self->_disconnectedCause copyWithZone:zone];
  disconnectedCause = v5->_disconnectedCause;
  v5->_disconnectedCause = v18;

  v5->_duration = self->_duration;
  v20 = [(NSNumber *)self->_filteredOutReason copyWithZone:zone];
  filteredOutReason = v5->_filteredOutReason;
  v5->_filteredOutReason = v20;

  v22 = [(NSURL *)self->_imageURL copyWithZone:zone];
  imageURL = v5->_imageURL;
  v5->_imageURL = v22;

  v24 = [(NSString *)self->_isoCountryCode copyWithZone:zone];
  isoCountryCode = v5->_isoCountryCode;
  v5->_isoCountryCode = v24;

  v5->_junkConfidence = self->_junkConfidence;
  v26 = [(NSString *)self->_junkIdentificationCategory copyWithZone:zone];
  junkIdentificationCategory = v5->_junkIdentificationCategory;
  v5->_junkIdentificationCategory = v26;

  v28 = [(NSUUID *)self->_localParticipantUUID copyWithZone:zone];
  localParticipantUUID = v5->_localParticipantUUID;
  v5->_localParticipantUUID = v28;

  v5->_mediaType = self->_mediaType;
  v30 = [(NSString *)self->_mobileCountryCode copyWithZone:zone];
  mobileCountryCode = v5->_mobileCountryCode;
  v5->_mobileCountryCode = v30;

  v32 = [(NSString *)self->_mobileNetworkCode copyWithZone:zone];
  mobileNetworkCode = v5->_mobileNetworkCode;
  v5->_mobileNetworkCode = v32;

  v5->_multiCall = self->_multiCall;
  v34 = [(NSString *)self->_name copyWithZone:zone];
  name = v5->_name;
  v5->_name = v34;

  v36 = [(NSUUID *)self->_outgoingLocalParticipantUUID copyWithZone:zone];
  outgoingLocalParticipantUUID = v5->_outgoingLocalParticipantUUID;
  v5->_outgoingLocalParticipantUUID = v36;

  v38 = [(NSUUID *)self->_participantGroupUUID copyWithZone:zone];
  participantGroupUUID = v5->_participantGroupUUID;
  v5->_participantGroupUUID = v38;

  v5->_read = self->_read;
  v40 = [(NSSet *)self->_remoteParticipantHandles copyWithZone:zone];
  remoteParticipantHandles = v5->_remoteParticipantHandles;
  v5->_remoteParticipantHandles = v40;

  v42 = [(NSString *)self->_serviceProvider copyWithZone:zone];
  serviceProvider = v5->_serviceProvider;
  v5->_serviceProvider = v42;

  v44 = [(NSNumber *)self->_timeToEstablish copyWithZone:zone];
  timeToEstablish = v5->_timeToEstablish;
  v5->_timeToEstablish = v44;

  v5->_ttyType = self->_ttyType;
  v46 = [(NSString *)self->_uniqueId copyWithZone:zone];
  uniqueId = v5->_uniqueId;
  v5->_uniqueId = v46;

  v5->_unreadCount = self->_unreadCount;
  v5->_verificationStatus = self->_verificationStatus;
  v5->_hasMessage = self->_hasMessage;
  v48 = [(NSUUID *)self->_conversationID copyWithZone:zone];
  conversationID = v5->_conversationID;
  v5->_conversationID = v48;

  v5->_autoAnsweredReason = self->_autoAnsweredReason;
  v50 = [(NSSet *)self->_emergencyMediaItems copyWithZone:zone];
  emergencyMediaItems = v5->_emergencyMediaItems;
  v5->_emergencyMediaItems = v50;

  v5->_usedEmergencyVideoStreaming = self->_usedEmergencyVideoStreaming;
  v5->_wasEmergencyCall = self->_wasEmergencyCall;
  v5->_callDirectoryIdentityType = self->_callDirectoryIdentityType;
  v5->_screenSharingType = self->_screenSharingType;
  objc_storeStrong(&v5->_initiator, self->_initiator);
  v52 = [(NSString *)self->_addressBookRecordId copyWithZone:zone];
  addressBookRecordId = v5->_addressBookRecordId;
  v5->_addressBookRecordId = v52;

  v54 = [(NSString *)self->_callerId copyWithZone:zone];
  callerId = v5->_callerId;
  v5->_callerId = v54;

  v5->_callerIdAvailability = self->_callerIdAvailability;
  v56 = [(NSString *)self->_callerIdFormatted copyWithZone:zone];
  callerIdFormatted = v5->_callerIdFormatted;
  v5->_callerIdFormatted = v56;

  v5->_callerIdIsBlocked = self->_callerIdIsBlocked;
  v58 = [(NSString *)self->_callerIdLabel copyWithZone:zone];
  callerIdLabel = v5->_callerIdLabel;
  v5->_callerIdLabel = v58;

  v60 = [(NSString *)self->_callerIdLocation copyWithZone:zone];
  callerIdLocation = v5->_callerIdLocation;
  v5->_callerIdLocation = v60;

  v62 = [(NSString *)self->_devicePhoneId copyWithZone:zone];
  devicePhoneId = v5->_devicePhoneId;
  v5->_devicePhoneId = v62;

  v5->_handleType = self->_handleType;
  v5->_callType = [objc_opt_class() getCallTypeForCategory:self->_callCategory andServiceProvider:self->_serviceProvider];
  v64 = [(NSString *)self->_blockedByExtension copyWithZone:zone];
  blockedByExtension = v5->_blockedByExtension;
  v5->_blockedByExtension = v64;

  v66 = [(NSString *)self->_blockedByExtensionName copyWithZone:zone];
  blockedByExtensionName = v5->_blockedByExtensionName;
  v5->_blockedByExtensionName = v66;

  v68 = [(NSString *)self->_identityExtension copyWithZone:zone];
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
  uniqueId = [(CHRecentCall *)self uniqueId];
  [v3 appendFormat:@"Identifier: %@\n", uniqueId];

  name = [(CHRecentCall *)self name];
  v6 = [name length];

  if (v6)
  {
    name2 = [(CHRecentCall *)self name];
    [v3 appendFormat:@"Name: %@\n", name2];
  }

  imageURL = [(CHRecentCall *)self imageURL];

  if (imageURL)
  {
    imageURL2 = [(CHRecentCall *)self imageURL];
    [v3 appendFormat:@"Image URL: %@\n", imageURL2];
  }

  junkIdentificationCategory = [(CHRecentCall *)self junkIdentificationCategory];

  if (junkIdentificationCategory)
  {
    junkIdentificationCategory2 = [(CHRecentCall *)self junkIdentificationCategory];
    [v3 appendFormat:@"Junk identification category: %@\n", junkIdentificationCategory2];
  }

  localParticipantUUID = [(CHRecentCall *)self localParticipantUUID];
  [v3 appendFormat:@"Local Participant UUID: %@\n", localParticipantUUID];

  outgoingLocalParticipantUUID = [(CHRecentCall *)self outgoingLocalParticipantUUID];
  [v3 appendFormat:@"Outgoing Local Participant UUID: %@\n", outgoingLocalParticipantUUID];

  participantGroupUUID = [(CHRecentCall *)self participantGroupUUID];
  [v3 appendFormat:@"Participant Group UUID: %@\n", participantGroupUUID];

  [v3 appendFormat:@"Remote Participant Handles: %@\n", self->_remoteParticipantHandles];
  v15 = [CHRecentCall callMediaTypeAsString:[(CHRecentCall *)self mediaType]];
  [v3 appendFormat:@"Call Media Type: %@\n", v15];

  v16 = [CHRecentCall callTTYTypeAsString:[(CHRecentCall *)self ttyType]];
  [v3 appendFormat:@"Call TTY Type: %@\n", v16];

  v17 = [CHRecentCall callTypeAsString:[(CHRecentCall *)self callType]];
  [v3 appendFormat:@"Call Type: %@\n", v17];

  v18 = [CHRecentCall callHandleTypeAsString:self->_handleType];
  [v3 appendFormat:@"Handle Type: %@\n", v18];

  serviceProvider = [(CHRecentCall *)self serviceProvider];
  [v3 appendFormat:@"Call Service Provider: %@\n", serviceProvider];

  v20 = [CHRecentCall callStatusAsString:[(CHRecentCall *)self callStatus]];
  [v3 appendFormat:@"Call Status: %@\n", v20];

  date = [(CHRecentCall *)self date];
  [v3 appendFormat:@"Date: %@\n", date];

  [(CHRecentCall *)self duration];
  [v3 appendFormat:@"Duration: %f\n", v22];
  v23 = CHCallerIdAvailabilityAsString(self->_callerIdAvailability);
  [v3 appendFormat:@"Caller Id Availability: %@\n", v23];

  [v3 appendFormat:@"Caller Id Blocked?: %d\n", -[CHRecentCall callerIdIsBlocked](self, "callerIdIsBlocked")];
  [v3 appendFormat:@"Caller Name: %@\n", self->_callerName];
  [v3 appendFormat:@"Caller Id Label: %@\n", self->_callerIdLabel];
  [v3 appendFormat:@"Caller Id Location: %@\n", self->_callerIdLocation];
  bytesOfDataUsed = [(CHRecentCall *)self bytesOfDataUsed];
  [v3 appendFormat:@"Bytes of data used: %@\n", bytesOfDataUsed];

  isoCountryCode = [(CHRecentCall *)self isoCountryCode];
  [v3 appendFormat:@"Country Code (ISO): %@\n", isoCountryCode];

  [v3 appendFormat:@"Read: %d\n", self->_read];
  [v3 appendFormat:@"Emergency media items: %@\n", self->_emergencyMediaItems];
  [v3 appendFormat:@"Used emergency video streaming: %d\n", self->_usedEmergencyVideoStreaming];
  [v3 appendFormat:@"Was emergency call: %d\n", self->_wasEmergencyCall];
  disconnectedCause = [(CHRecentCall *)self disconnectedCause];
  [v3 appendFormat:@"Disconnect Cause: %@\n", disconnectedCause];

  filteredOutReason = [(CHRecentCall *)self filteredOutReason];
  [v3 appendFormat:@"Filtered Out Reason: %@\n", filteredOutReason];

  v28 = [MEMORY[0x1E696AEC0] ch_stringWithCHRecentCallJunkConfidence:{-[CHRecentCall junkConfidence](self, "junkConfidence")}];
  [v3 appendFormat:@"Junk Confidence: %@\n", v28];

  [v3 appendFormat:@"Address Book Id: %@\n", self->_contactIdentifier];
  multiCall = [(CHRecentCall *)self multiCall];
  v30 = @"No";
  if (multiCall)
  {
    v30 = @"Yes";
  }

  [v3 appendFormat:@"Multi-Call: %@\n", v30];
  callOccurrences = [(CHRecentCall *)self callOccurrences];
  v32 = [callOccurrences count];

  if (v32 >= 2)
  {
    callOccurrencesAsString = [(CHRecentCall *)self callOccurrencesAsString];
    [v3 appendFormat:@"Call Occurrences: %@\n", callOccurrencesAsString];
  }

  blockedByExtension = [(CHRecentCall *)self blockedByExtension];

  if (blockedByExtension)
  {
    identityExtension = [(CHRecentCall *)self identityExtension];
    [v3 appendFormat:@"Identity extension: %@\n", identityExtension];
  }

  identityExtension2 = [(CHRecentCall *)self identityExtension];

  if (identityExtension2)
  {
    blockedByExtension2 = [(CHRecentCall *)self blockedByExtension];
    [v3 appendFormat:@"Blocked by extension: %@\n", blockedByExtension2];
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
  reminderUUID = [(CHRecentCall *)self reminderUUID];
  [v3 appendFormat:@"ReminderUUID: %@\n", reminderUUID];

  v41 = [MEMORY[0x1E696AEC0] ch_stringWithCHRecentCallCommunicationTrustScore:{-[CHRecentCall communicationTrustScore](self, "communicationTrustScore")}];
  [v3 appendFormat:@"Communication Trust Score: %@\n", v41];

  [v3 appendFormat:@"--------------------------\n"];

  return v3;
}

- (unint64_t)hash
{
  uniqueId = [(CHRecentCall *)self uniqueId];
  v3 = [uniqueId hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CHRecentCall *)self isEqualToRecentCall:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToRecentCall:(id)call
{
  callCopy = call;
  v5 = callCopy;
  if (callCopy)
  {
    v6 = callCopy;
    objc_sync_enter(v6);
    uniqueId = [(CHRecentCall *)self uniqueId];
    uniqueId2 = [v6 uniqueId];
    v9 = uniqueId;
    v10 = uniqueId2;
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
      hasMessage = [(CHRecentCall *)self hasMessage];
      if (hasMessage == [v6 hasMessage])
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

- (BOOL)isEquivalentToRecentCall:(id)call
{
  callCopy = call;
  outgoingLocalParticipantUUID = [(CHRecentCall *)self outgoingLocalParticipantUUID];
  outgoingLocalParticipantUUID2 = [callCopy outgoingLocalParticipantUUID];
  v7 = outgoingLocalParticipantUUID;
  v8 = outgoingLocalParticipantUUID2;
  v9 = v8;
  if (!(v7 | v8))
  {
    goto LABEL_4;
  }

  if (!v8)
  {
    v15 = 0;
    bytesOfDataUsed = v7;
LABEL_11:

    goto LABEL_12;
  }

  v10 = [v7 isEqual:v8];

  if (v10)
  {
LABEL_4:
    callStatus = [(CHRecentCall *)self callStatus];
    if (callStatus == [callCopy callStatus])
    {
      bytesOfDataUsed = [(CHRecentCall *)self bytesOfDataUsed];
      bytesOfDataUsed2 = [callCopy bytesOfDataUsed];
      if (bytesOfDataUsed == bytesOfDataUsed2 && (v14 = -[CHRecentCall read](self, "read"), v14 == [callCopy read]))
      {
        callOccurrences = [(CHRecentCall *)self callOccurrences];
        v18 = [callOccurrences count];
        callOccurrences2 = [callCopy callOccurrences];
        if (v18 == [callOccurrences2 count])
        {
          reminderUUID = [(CHRecentCall *)self reminderUUID];
          reminderUUID2 = [callCopy reminderUUID];
          v15 = (reminderUUID | reminderUUID2) == 0;
          if (reminderUUID2)
          {
            v15 = [reminderUUID isEqual:reminderUUID2];
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
  uniqueId = [(CHRecentCall *)self uniqueId];
  v9 = 0;
  v3 = [MEMORY[0x1E696E8B8] ch_interactionForIdentifier:uniqueId error:&v9];
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
      [(CHRecentCall(Intents) *)uniqueId interaction];
    }
  }

  return v3;
}

- (NSDateInterval)interactionDateInterval
{
  date = [(CHRecentCall *)self date];
  if (date && (-[CHRecentCall duration](self, "duration"), v4 >= 0.0) && (v5 = v4, -[CHRecentCall timeToEstablish](self, "timeToEstablish"), v6 = objc_claimAutoreleasedReturnValue(), [v6 doubleValue], v8 = v7, v6, v8 >= 0.0))
  {
    v11 = [date dateByAddingTimeInterval:-v8];
    v9 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v11 duration:v5 + v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)predicateForCallsBetweenStartDate:(id)date endDate:(id)endDate
{
  v13[2] = *MEMORY[0x1E69E9840];
  endDateCopy = endDate;
  date = [MEMORY[0x1E696AE18] predicateWithFormat:@"date >= %@", date];
  if (endDateCopy)
  {
    v7 = MEMORY[0x1E696AB28];
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"date <= %@", endDateCopy, date];
    v13[1] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v10 = [v7 andPredicateWithSubpredicates:v9];

    date = v10;
  }

  v11 = *MEMORY[0x1E69E9840];

  return date;
}

+ (id)predicateForCallsWithMediaType:(int64_t)type
{
  if (type == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = type == 1;
  }

  if (v5 == 1 || v5 == 2)
  {
    [self predicateForCallsWithCategory:v3];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:{1, v3}];
  }
  v7 = ;

  return v7;
}

+ (id)predicateForCallsWithAnyMediaTypes:(id)types
{
  v22 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = typesCopy;
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

        integerValue = [*(*(&v17 + 1) + 8 * i) integerValue];
        if ((integerValue - 1) <= 1)
        {
          v12 = [self predicateForCallsWithMediaType:integerValue];
          [array addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  if ([array count] < 2)
  {
    if ([array count] == 1)
    {
      [array firstObject];
    }

    else
    {
      [MEMORY[0x1E696AE18] predicateWithValue:1];
    }
    v13 = ;
  }

  else
  {
    v13 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:array];
  }

  v14 = v13;

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)predicateForCallsWithRemoteParticipantHandle:(id)handle
{
  v18[2] = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  value = [handleCopy value];
  v6 = [self predicateForCallsWithRemoteParticipantHandleValue:value];

  normalizedValue = [handleCopy normalizedValue];

  if (normalizedValue)
  {
    normalizedValue2 = [handleCopy normalizedValue];
    v9 = [self predicateForCallsWithRemoteParticipantHandleNormalizedValue:normalizedValue2];
    v18[0] = v9;
    v18[1] = v6;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

    v11 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v10];

    v6 = v11;
  }

  v12 = [self predicateForCallsWithRemoteParticipantHandleType:{objc_msgSend(handleCopy, "type")}];
  v17[0] = v12;
  v17[1] = v6;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];

  v14 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v13];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)predicateForCallsWithAnyRemoteParticipantHandles:(id)handles
{
  v40 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  if ([handlesCopy count] < 2)
  {
    if ([handlesCopy count] == 1)
    {
      firstObject = [handlesCopy firstObject];
      v28 = [self predicateForCallsWithRemoteParticipantHandle:firstObject];
    }

    else
    {
      v28 = [MEMORY[0x1E696AE18] predicateWithValue:1];
    }
  }

  else
  {
    selfCopy = self;
    v5 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{objc_msgSend(handlesCopy, "count")}];
    v6 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{objc_msgSend(handlesCopy, "count")}];
    v7 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{objc_msgSend(handlesCopy, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v33 = handlesCopy;
    v8 = handlesCopy;
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

          value = [v13 value];
          [v6 addObject:value];

          normalizedValue = [v13 normalizedValue];

          if (normalizedValue)
          {
            normalizedValue2 = [v13 normalizedValue];
            [v7 addObject:normalizedValue2];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v10);
    }

    array = [MEMORY[0x1E695DF70] array];
    array2 = [v5 array];
    v20 = [selfCopy predicateForCallsWithAnyRemoteParticipantHandleTypes:array2];
    [array addObject:v20];

    v21 = [v7 count];
    array3 = [v6 array];
    v23 = [selfCopy predicateForCallsWithAnyRemoteParticipantHandleValues:array3];
    v24 = v23;
    if (v21)
    {
      v38[0] = v23;
      array4 = [v7 array];
      v26 = [selfCopy predicateForCallsWithAnyRemoteParticipantHandleNormalizedValues:array4];
      v38[1] = v26;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];

      v24 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v27];
      array3 = v27;
    }

    [array addObject:v24];

    v28 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:array];

    handlesCopy = v33;
  }

  v30 = *MEMORY[0x1E69E9840];

  return v28;
}

+ (id)predicateForCallsWithAnyRemoteParticipantHandleTypes:(id)types
{
  v23 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  v5 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{objc_msgSend(typesCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = typesCopy;
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
    array = [v5 array];
    v14 = [v12 predicateWithFormat:@"ANY remoteParticipantHandles.type IN %@", array];
LABEL_14:
    v15 = v14;

    goto LABEL_16;
  }

  if ([v5 count] == 1)
  {
    array = [v5 firstObject];
    v14 = [self predicateForCallsWithRemoteParticipantHandleType:{objc_msgSend(array, "integerValue")}];
    goto LABEL_14;
  }

  v15 = [MEMORY[0x1E696AE18] predicateWithValue:1];
LABEL_16:

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)predicateForCallsWithAnyRemoteParticipantHandleValues:(id)values
{
  v4 = [MEMORY[0x1E695DFB8] orderedSetWithArray:values];
  if ([v4 count] >= 2)
  {
    v5 = MEMORY[0x1E696AE18];
    array = [v4 array];
    v7 = [v5 predicateWithFormat:@"ANY remoteParticipantHandles.value IN %@", array];
LABEL_5:
    v8 = v7;

    goto LABEL_7;
  }

  if ([v4 count] == 1)
  {
    array = [v4 firstObject];
    v7 = [self predicateForCallsWithRemoteParticipantHandleValue:array];
    goto LABEL_5;
  }

  v8 = [MEMORY[0x1E696AE18] predicateWithValue:1];
LABEL_7:

  return v8;
}

+ (id)predicateForCallsWithAnyRemoteParticipantHandleNormalizedValues:(id)values
{
  v4 = [MEMORY[0x1E695DFB8] orderedSetWithArray:values];
  if ([v4 count] >= 2)
  {
    v5 = MEMORY[0x1E696AE18];
    array = [v4 array];
    v7 = [v5 predicateWithFormat:@"ANY remoteParticipantHandles.normalizedValue IN %@", array];
LABEL_5:
    v8 = v7;

    goto LABEL_7;
  }

  if ([v4 count] == 1)
  {
    array = [v4 firstObject];
    v7 = [self predicateForCallsWithRemoteParticipantHandleNormalizedValue:array];
    goto LABEL_5;
  }

  v8 = [MEMORY[0x1E696AE18] predicateWithValue:1];
LABEL_7:

  return v8;
}

+ (id)predicateForCallsWithRemoteParticipantHandles:(id)handles
{
  handlesCopy = handles;
  if ([handlesCopy count] == 1)
  {
    firstObject = [handlesCopy firstObject];
    v5 = [CHRecentCall predicateForCallsWithRemoteParticipantHandle:firstObject];
  }

  else
  {
    if ([handlesCopy count] < 2)
    {
      [MEMORY[0x1E696AE18] predicateWithValue:1];
    }

    else
    {
      [MEMORY[0x1E696AE18] predicateWithFormat:@"(remoteParticipantHandles IN %@)", handlesCopy];
    }
    v5 = ;
  }

  return v5;
}

+ (id)predicateForCallsWithAnyServiceProviders:(id)providers
{
  providersCopy = providers;
  if ([providersCopy count])
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"(service_provider IN %@)", providersCopy];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v4 = ;

  return v4;
}

+ (id)predicateForCallsWithStatus:(unsigned int)status
{
  v3 = MEMORY[0x1E695E110];
  if ((status & 1) == 1)
  {
    v4 = MEMORY[0x1E695E110];
  }

  else
  {
    v4 = 0;
  }

  v5 = MEMORY[0x1E695E118];
  if ((status & 2) == 2)
  {
    v4 = MEMORY[0x1E695E118];
    v6 = 1;
  }

  else
  {
    v6 = (~status & 4) == 0;
  }

  v7 = (status & 1) == 1 || v6;
  if ((~status & 8) == 0 || (~status & 4) == 0)
  {
    v8 = MEMORY[0x1E695E110];
  }

  else
  {
    v8 = v4;
  }

  if ((status & 0x10) == 0x10)
  {
    v9 = MEMORY[0x1E695E118];
  }

  else
  {
    v9 = v8;
  }

  if (((status & 0x10) == 16 || (~status & 8) == 0) | v7 & 1 && v9)
  {
    if (!v7)
    {
      v5 = 0;
    }

    if ((status & 0x10) != 16 && (~status & 8) != 0)
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

+ (id)predicateForCallsWithStatusJunk:(BOOL)junk
{
  if (junk)
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

+ (id)predicateForCallsWithTTYType:(int64_t)type
{
  if (type == 2)
  {
    v5 = 8;
  }

  else if (type == 1)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  if (v5 == 4 || v5 == 8)
  {
    [self predicateForCallsWithCategory:v3];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:{1, v3}];
  }
  v7 = ;

  return v7;
}

+ (id)predicateForCallsWithAnyTTYTypes:(id)types
{
  v22 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = typesCopy;
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

        integerValue = [*(*(&v17 + 1) + 8 * i) integerValue];
        if ((integerValue - 1) <= 1)
        {
          v12 = [self predicateForCallsWithTTYType:integerValue];
          [array addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  if ([array count] < 2)
  {
    if ([array count] == 1)
    {
      [array firstObject];
    }

    else
    {
      [MEMORY[0x1E696AE18] predicateWithValue:1];
    }
    v13 = ;
  }

  else
  {
    v13 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:array];
  }

  v14 = v13;

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)predicateForCallsWithAnyUniqueIDs:(id)ds
{
  v4 = [MEMORY[0x1E695DFB8] orderedSetWithArray:ds];
  if ([v4 count] >= 2)
  {
    v5 = MEMORY[0x1E696AE18];
    array = [v4 array];
    v7 = [v5 predicateWithFormat:@"(unique_id IN %@)", array];
LABEL_5:
    v8 = v7;

    goto LABEL_7;
  }

  if ([v4 count] == 1)
  {
    array = [v4 firstObject];
    v7 = [self predicateForCallsWithUniqueID:array];
    goto LABEL_5;
  }

  v8 = [MEMORY[0x1E696AE18] predicateWithValue:1];
LABEL_7:

  return v8;
}

+ (id)predicateForCallsWithGroupUUID:(id)d
{
  v3 = MEMORY[0x1E696AE18];
  uUIDString = [d UUIDString];
  v5 = [v3 predicateWithFormat:@"participantGroupUUID = %@", uUIDString];

  return v5;
}

+ (id)predicateForCallsWithConversationID:(id)d
{
  v3 = MEMORY[0x1E696AE18];
  uUIDString = [d UUIDString];
  v5 = [v3 predicateWithFormat:@"conversationID = %@", uUIDString];

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