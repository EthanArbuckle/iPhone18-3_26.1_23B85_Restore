@interface CallRecord
- (BOOL)addEmergencyMediaItem:(id)item;
- (BOOL)supportsAutoAnsweredReason;
- (BOOL)supportsBlockedBy;
- (BOOL)supportsBlockedByName;
- (BOOL)supportsCallCategory;
- (BOOL)supportsCallDirectoryIdentityType;
- (BOOL)supportsCommunicationTrustScore;
- (BOOL)supportsEmergencyMedia;
- (BOOL)supportsHandleType;
- (BOOL)supportsHasMessage;
- (BOOL)supportsIdentityExtension;
- (BOOL)supportsImageURL;
- (BOOL)supportsInitiator;
- (BOOL)supportsJunkConfidence;
- (BOOL)supportsJunkIdentificationCategory;
- (BOOL)supportsLocalParticipantUUID;
- (BOOL)supportsOutgoingLocalParticipantUUID;
- (BOOL)supportsParticipantGroupUUID;
- (BOOL)supportsReminderUUID;
- (BOOL)supportsRemoteParticipantHandles;
- (BOOL)supportsScreenSharingType;
- (BOOL)supportsServiceProvider;
- (BOOL)supportsVerificationStatus;
- (CHHandle)chInitiator;
- (CHRecentCall)chRecentCall;
- (NSSet)chEmergencyMediaItems;
- (NSSet)chRemoteParticipantHandles;
- (id)compositeCallCategoryForContext:(id)context;
- (id)compositeCallDirectoryIdentityType:(id)type;
- (id)compositeEmergencyMediaItemsForContext:(id)context;
- (id)compositeHandleTypeForContext:(id)context;
- (id)compositeInitiatorHandleForContext:(id)context;
- (id)compositeJunkConfidenceForContext:(id)context;
- (id)compositeLocalParticipantUUIDForContext:(id)context;
- (id)compositeOutgoingLocalParticipantUUIDForContext:(id)context;
- (id)compositeParticipantGroupUUIDForContext:(id)context;
- (id)compositeRemoteParticipantHandlesForContext:(id)context;
- (id)compositeServiceProviderForContext:(id)context;
- (id)compositeVerificationStatusForContext:(id)context;
- (int64_t)chHandleType;
- (unsigned)chCallStatus;
- (void)setChCallStatus:(unsigned int)status;
@end

@implementation CallRecord

- (CHRecentCall)chRecentCall
{
  v44[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(CHRecentCall);
  face_time_data = [(CallRecord *)self face_time_data];
  [(CHRecentCall *)v3 setBytesOfDataUsed:face_time_data];

  number_availability = [(CallRecord *)self number_availability];
  -[CHRecentCall setCallerIdAvailability:](v3, "setCallerIdAvailability:", [number_availability integerValue]);

  location = [(CallRecord *)self location];
  [(CHRecentCall *)v3 setCallerIdLocation:location];

  [(CHRecentCall *)v3 setCallStatus:[(CallRecord *)self chCallStatus]];
  date = [(CallRecord *)self date];
  [(CHRecentCall *)v3 setDate:date];

  disconnected_cause = [(CallRecord *)self disconnected_cause];
  [(CHRecentCall *)v3 setDisconnectedCause:disconnected_cause];

  duration = [(CallRecord *)self duration];
  [duration doubleValue];
  [(CHRecentCall *)v3 setDuration:?];

  filtered_out_reason = [(CallRecord *)self filtered_out_reason];
  [(CHRecentCall *)v3 setFilteredOutReason:filtered_out_reason];

  handle_type = [(CallRecord *)self handle_type];
  -[CHRecentCall setHandleType:](v3, "setHandleType:", [handle_type integerValue]);

  imageURL = [(CallRecord *)self imageURL];
  [(CHRecentCall *)v3 setImageURL:imageURL];

  iso_country_code = [(CallRecord *)self iso_country_code];
  [(CHRecentCall *)v3 setIsoCountryCode:iso_country_code];

  junkConfidence = [(CallRecord *)self junkConfidence];
  -[CHRecentCall setJunkConfidence:](v3, "setJunkConfidence:", [junkConfidence integerValue]);

  junkIdentificationCategory = [(CallRecord *)self junkIdentificationCategory];
  [(CHRecentCall *)v3 setJunkIdentificationCategory:junkIdentificationCategory];

  localParticipantUUID = [(CallRecord *)self localParticipantUUID];
  [(CHRecentCall *)v3 setLocalParticipantUUID:localParticipantUUID];

  name = [(CallRecord *)self name];
  [(CHRecentCall *)v3 setName:name];

  outgoingLocalParticipantUUID = [(CallRecord *)self outgoingLocalParticipantUUID];
  [(CHRecentCall *)v3 setOutgoingLocalParticipantUUID:outgoingLocalParticipantUUID];

  participantGroupUUID = [(CallRecord *)self participantGroupUUID];
  [(CHRecentCall *)v3 setParticipantGroupUUID:participantGroupUUID];

  read = [(CallRecord *)self read];
  -[CHRecentCall setRead:](v3, "setRead:", [read BOOLValue]);

  chRemoteParticipantHandles = [(CallRecord *)self chRemoteParticipantHandles];
  [(CHRecentCall *)v3 setRemoteParticipantHandles:chRemoteParticipantHandles];

  service_provider = [(CallRecord *)self service_provider];
  [(CHRecentCall *)v3 setServiceProvider:service_provider];

  unique_id = [(CallRecord *)self unique_id];
  [(CHRecentCall *)v3 setUniqueId:unique_id];

  verificationStatus = [(CallRecord *)self verificationStatus];
  -[CHRecentCall setVerificationStatus:](v3, "setVerificationStatus:", [verificationStatus integerValue]);

  hasMessage = [(CallRecord *)self hasMessage];
  -[CHRecentCall setHasMessage:](v3, "setHasMessage:", [hasMessage BOOLValue]);

  conversationID = [(CallRecord *)self conversationID];
  [(CHRecentCall *)v3 setConversationID:conversationID];

  autoAnsweredReason = [(CallRecord *)self autoAnsweredReason];
  -[CHRecentCall setAutoAnsweredReason:](v3, "setAutoAnsweredReason:", [autoAnsweredReason integerValue]);

  chEmergencyMediaItems = [(CallRecord *)self chEmergencyMediaItems];
  [(CHRecentCall *)v3 setEmergencyMediaItems:chEmergencyMediaItems];

  [(CHRecentCall *)v3 setUsedEmergencyVideoStreaming:[(CallRecord *)self usedEmergencyVideoStreaming]];
  [(CHRecentCall *)v3 setWasEmergencyCall:[(CallRecord *)self wasEmergencyCall]];
  blockedByExtension = [(CallRecord *)self blockedByExtension];
  [(CHRecentCall *)v3 setBlockedByExtension:blockedByExtension];

  blockedByExtensionName = [(CallRecord *)self blockedByExtensionName];
  [(CHRecentCall *)v3 setBlockedByExtensionName:blockedByExtensionName];

  identityExtension = [(CallRecord *)self identityExtension];
  [(CHRecentCall *)v3 setIdentityExtension:identityExtension];

  callDirectoryIdentityType = [(CallRecord *)self callDirectoryIdentityType];
  -[CHRecentCall setCallDirectoryIdentityType:](v3, "setCallDirectoryIdentityType:", [callDirectoryIdentityType integerValue]);

  screenSharingType = [(CallRecord *)self screenSharingType];
  -[CHRecentCall setScreenSharingType:](v3, "setScreenSharingType:", [screenSharingType integerValue]);

  chInitiator = [(CallRecord *)self chInitiator];
  [(CHRecentCall *)v3 setInitiator:chInitiator];

  reminderUUID = [(CallRecord *)self reminderUUID];
  [(CHRecentCall *)v3 setReminderUUID:reminderUUID];

  communicationTrustScore = [(CallRecord *)self communicationTrustScore];
  -[CHRecentCall setCommunicationTrustScore:](v3, "setCommunicationTrustScore:", [communicationTrustScore integerValue]);

  call_category = [(CallRecord *)self call_category];
  -[CHRecentCall setCallCategory:](v3, "setCallCategory:", [call_category integerValue]);

  address = [(CallRecord *)self address];
  [(CHRecentCall *)v3 setCallerId:address];

  calltype = [(CallRecord *)self calltype];
  -[CHRecentCall setCallType:](v3, "setCallType:", [calltype integerValue]);

  dictionaryRepresentation = [(CHRecentCall *)v3 dictionaryRepresentation];
  v44[0] = dictionaryRepresentation;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
  [(CHRecentCall *)v3 setCallOccurrences:v41];

  v42 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unsigned)chCallStatus
{
  originated = [(CallRecord *)self originated];
  bOOLValue = [originated BOOLValue];

  duration = [(CallRecord *)self duration];
  [duration doubleValue];
  v7 = v6;

  if (bOOLValue)
  {
    v8 = &kCHCallStatusCancelled;
    if (v7 > 0.0)
    {
      v8 = &kCHCallStatusConnectedOutgoing;
    }
  }

  else if (v7 <= 0.0)
  {
    answered = [(CallRecord *)self answered];
    bOOLValue2 = [answered BOOLValue];

    v8 = &kCHCallStatusMissed;
    if (bOOLValue2)
    {
      v8 = &kCHCallStatusAnsweredElsewhere;
    }
  }

  else
  {
    v8 = &kCHCallStatusConnectedIncoming;
  }

  return *v8;
}

- (NSSet)chRemoteParticipantHandles
{
  v29 = *MEMORY[0x1E69E9840];
  supportsRemoteParticipantHandles = [(CallRecord *)self supportsRemoteParticipantHandles];
  v4 = objc_alloc(MEMORY[0x1E695DFA8]);
  v5 = v4;
  if (supportsRemoteParticipantHandles)
  {
    remoteParticipantHandles = [(CallRecord *)self remoteParticipantHandles];
    v7 = [v5 initWithCapacity:{objc_msgSend(remoteParticipantHandles, "count")}];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    remoteParticipantHandles2 = [(CallRecord *)self remoteParticipantHandles];
    v9 = [remoteParticipantHandles2 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(remoteParticipantHandles2);
          }

          chHandle = [*(*(&v24 + 1) + 8 * i) chHandle];
          if (chHandle)
          {
            [v7 addObject:chHandle];
          }
        }

        v10 = [remoteParticipantHandles2 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = [v4 initWithCapacity:1];
    remoteParticipantHandles2 = [(CallRecord *)self address];
    chHandleType = [(CallRecord *)self chHandleType];
    if (chHandleType && remoteParticipantHandles2)
    {
      v15 = chHandleType;
      if (chHandleType == 2)
      {
        v16 = [CHPhoneNumber alloc];
        iso_country_code = [(CallRecord *)self iso_country_code];
        v18 = [(CHPhoneNumber *)v16 initWithDigits:remoteParticipantHandles2 isoCountryCode:iso_country_code];

        normalizedRepresentation = [(CHPhoneNumber *)v18 normalizedRepresentation];
      }

      else
      {
        normalizedRepresentation = 0;
      }

      v20 = [[CHHandle alloc] initWithType:v15 value:remoteParticipantHandles2 normalizedValue:normalizedRepresentation];
      [v7 addObject:v20];
    }
  }

  v21 = [v7 copy];
  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (BOOL)supportsRemoteParticipantHandles
{
  entity = [(CallRecord *)self entity];
  managedObjectModel = [entity managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:managedObjectModel]> 14;

  return v4;
}

- (NSSet)chEmergencyMediaItems
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(CallRecord *)self supportsEmergencyMedia])
  {
    v3 = objc_alloc(MEMORY[0x1E695DFA8]);
    emergencyMediaItems = [(CallRecord *)self emergencyMediaItems];
    v5 = [v3 initWithCapacity:{objc_msgSend(emergencyMediaItems, "count")}];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    emergencyMediaItems2 = [(CallRecord *)self emergencyMediaItems];
    v7 = [emergencyMediaItems2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(emergencyMediaItems2);
          }

          chEmergencyMediaItem = [*(*(&v15 + 1) + 8 * i) chEmergencyMediaItem];
          if (chEmergencyMediaItem)
          {
            [v5 addObject:chEmergencyMediaItem];
          }
        }

        v8 = [emergencyMediaItems2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  v12 = [v5 copy];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)supportsEmergencyMedia
{
  entity = [(CallRecord *)self entity];
  managedObjectModel = [entity managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:managedObjectModel]> 28;

  return v4;
}

- (CHHandle)chInitiator
{
  if ([(CallRecord *)self supportsInitiator])
  {
    initiator = [(CallRecord *)self initiator];
    chHandle = [initiator chHandle];
LABEL_6:
    v7 = chHandle;

    goto LABEL_8;
  }

  if (([(CallRecord *)self chCallStatus]& 0xD) != 0)
  {
    chRemoteParticipantHandles = [(CallRecord *)self chRemoteParticipantHandles];
    v6 = [chRemoteParticipantHandles count];

    if (v6 == 1)
    {
      initiator = [(CallRecord *)self chRemoteParticipantHandles];
      chHandle = [initiator anyObject];
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (BOOL)supportsInitiator
{
  entity = [(CallRecord *)self entity];
  managedObjectModel = [entity managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:managedObjectModel]> 35;

  return v4;
}

- (void)setChCallStatus:(unsigned int)status
{
  if (status == 1)
  {
    goto LABEL_2;
  }

  if (status == 2)
  {
LABEL_4:
    v4 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [(CallRecord *)self setOriginated:?];
    goto LABEL_5;
  }

  if (status != 4)
  {
    if (status != 16)
    {
      return;
    }

    goto LABEL_4;
  }

LABEL_2:
  v4 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [(CallRecord *)self setAnswered:?];
LABEL_5:
}

- (int64_t)chHandleType
{
  if ([(CallRecord *)self supportsHandleType])
  {
    handle_type = [(CallRecord *)self handle_type];
    integerValue = [handle_type integerValue];
  }

  else
  {
    handle_type = [(CallRecord *)self address];
    integerValue = [CHHandle handleTypeForValue:handle_type];
  }

  v5 = integerValue;

  return v5;
}

- (id)compositeCallCategoryForContext:(id)context
{
  if ([(CallRecord *)self supportsCallCategory])
  {
    [(CallRecord *)self call_category];
  }

  else
  {
    calltype = [(CallRecord *)self calltype];
    integerValue = [calltype integerValue];

    [MEMORY[0x1E696AD98] numberWithInteger:{+[CHRecentCall categoryForCallType:](CHRecentCall, "categoryForCallType:", integerValue)}];
  }
  v4 = ;

  return v4;
}

- (id)compositeHandleTypeForContext:(id)context
{
  v3 = MEMORY[0x1E696AD98];
  chHandleType = [(CallRecord *)self chHandleType];

  return [v3 numberWithInteger:chHandleType];
}

- (id)compositeJunkConfidenceForContext:(id)context
{
  if ([(CallRecord *)self supportsJunkConfidence])
  {
    [(CallRecord *)self junkConfidence];
  }

  else
  {
    [MEMORY[0x1E696AD98] numberWithInteger:0];
  }
  v4 = ;

  return v4;
}

- (id)compositeCallDirectoryIdentityType:(id)type
{
  if ([(CallRecord *)self supportsCallDirectoryIdentityType])
  {
    [(CallRecord *)self callDirectoryIdentityType];
  }

  else
  {
    [MEMORY[0x1E696AD98] numberWithInteger:0];
  }
  v4 = ;

  return v4;
}

- (id)compositeLocalParticipantUUIDForContext:(id)context
{
  if ([(CallRecord *)self supportsLocalParticipantUUID])
  {
    localParticipantUUID = [(CallRecord *)self localParticipantUUID];
  }

  else
  {
    localParticipantUUID = 0;
  }

  return localParticipantUUID;
}

- (id)compositeOutgoingLocalParticipantUUIDForContext:(id)context
{
  if ([(CallRecord *)self supportsOutgoingLocalParticipantUUID])
  {
    outgoingLocalParticipantUUID = [(CallRecord *)self outgoingLocalParticipantUUID];
  }

  else
  {
    outgoingLocalParticipantUUID = 0;
  }

  return outgoingLocalParticipantUUID;
}

- (id)compositeParticipantGroupUUIDForContext:(id)context
{
  if ([(CallRecord *)self supportsParticipantGroupUUID])
  {
    participantGroupUUID = [(CallRecord *)self participantGroupUUID];
  }

  else
  {
    participantGroupUUID = 0;
  }

  return participantGroupUUID;
}

- (id)compositeRemoteParticipantHandlesForContext:(id)context
{
  v22 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if ([(CallRecord *)self supportsRemoteParticipantHandles])
  {
    remoteParticipantHandles = [(CallRecord *)self remoteParticipantHandles];
    v6 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(remoteParticipantHandles, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = remoteParticipantHandles;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v17 + 1) + 8 * i) copyWithContext:{contextCopy, v17}];
          [v6 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v13 = [v6 copy];
  }

  else
  {
    chRemoteParticipantHandles = [(CallRecord *)self chRemoteParticipantHandles];
    if (chRemoteParticipantHandles)
    {
      v13 = [CHManagedHandle managedHandlesForHandles:chRemoteParticipantHandles inManagedObjectContext:contextCopy];
    }

    else
    {
      v13 = 0;
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)compositeInitiatorHandleForContext:(id)context
{
  contextCopy = context;
  if ([(CallRecord *)self supportsInitiator])
  {
    initiator = [(CallRecord *)self initiator];

    if (initiator)
    {
      initiator2 = [(CallRecord *)self initiator];
      v7 = [initiator2 copyWithContext:contextCopy];
LABEL_6:
      v8 = v7;
      goto LABEL_8;
    }
  }

  initiator2 = [(CallRecord *)self chInitiator];
  if (initiator2)
  {
    v7 = [CHManagedHandle managedHandleForHandle:initiator2 inManagedObjectContext:contextCopy];
    goto LABEL_6;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (id)compositeServiceProviderForContext:(id)context
{
  if ([(CallRecord *)self supportsServiceProvider])
  {
    [(CallRecord *)self service_provider];
  }

  else
  {
    calltype = [(CallRecord *)self calltype];
    integerValue = [calltype integerValue];

    [CHRecentCall serviceProviderForCallType:integerValue];
  }
  v4 = ;

  return v4;
}

- (id)compositeVerificationStatusForContext:(id)context
{
  if ([(CallRecord *)self supportsVerificationStatus])
  {
    [(CallRecord *)self verificationStatus];
  }

  else
  {
    [MEMORY[0x1E696AD98] numberWithInteger:0];
  }
  v4 = ;

  return v4;
}

- (id)compositeEmergencyMediaItemsForContext:(id)context
{
  v21 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if ([(CallRecord *)self supportsEmergencyMedia])
  {
    emergencyMediaItems = [(CallRecord *)self emergencyMediaItems];
    v6 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(emergencyMediaItems, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = emergencyMediaItems;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v16 + 1) + 8 * i) copyWithContext:{contextCopy, v16}];
          [v6 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    v13 = [v6 copy];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)addEmergencyMediaItem:(id)item
{
  v32 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  chEmergencyMediaItems = [(CallRecord *)self chEmergencyMediaItems];
  v6 = [chEmergencyMediaItems countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(chEmergencyMediaItems);
        }

        if ([*(*(&v26 + 1) + 8 * i) isEqualToMediaItem:itemCopy])
        {
          v19 = 0;
          goto LABEL_18;
        }
      }

      v7 = [chEmergencyMediaItems countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = objc_alloc(MEMORY[0x1E695DFA8]);
  chEmergencyMediaItems2 = [(CallRecord *)self chEmergencyMediaItems];
  chEmergencyMediaItems = [v10 initWithCapacity:{objc_msgSend(chEmergencyMediaItems2, "count") + 1}];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  emergencyMediaItems = [(CallRecord *)self emergencyMediaItems];
  v13 = [emergencyMediaItems countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(emergencyMediaItems);
        }

        [chEmergencyMediaItems addObject:*(*(&v22 + 1) + 8 * j)];
      }

      v14 = [emergencyMediaItems countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v14);
  }

  managedObjectContext = [(CallRecord *)self managedObjectContext];
  v18 = [EmergencyMediaItem managedEmergencyMediaItemForEmergencyMediaItem:itemCopy inManagedObjectContext:managedObjectContext];

  [chEmergencyMediaItems addObject:v18];
  [(CallRecord *)self setEmergencyMediaItems:chEmergencyMediaItems];

  v19 = 1;
LABEL_18:

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)supportsCallCategory
{
  entity = [(CallRecord *)self entity];
  managedObjectModel = [entity managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:managedObjectModel]> 5;

  return v4;
}

- (BOOL)supportsHandleType
{
  entity = [(CallRecord *)self entity];
  managedObjectModel = [entity managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:managedObjectModel]> 12;

  return v4;
}

- (BOOL)supportsImageURL
{
  entity = [(CallRecord *)self entity];
  managedObjectModel = [entity managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:managedObjectModel]> 23;

  return v4;
}

- (BOOL)supportsBlockedBy
{
  entity = [(CallRecord *)self entity];
  managedObjectModel = [entity managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:managedObjectModel]> 30;

  return v4;
}

- (BOOL)supportsIdentityExtension
{
  entity = [(CallRecord *)self entity];
  managedObjectModel = [entity managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:managedObjectModel]> 34;

  return v4;
}

- (BOOL)supportsCallDirectoryIdentityType
{
  entity = [(CallRecord *)self entity];
  managedObjectModel = [entity managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:managedObjectModel]> 31;

  return v4;
}

- (BOOL)supportsJunkConfidence
{
  entity = [(CallRecord *)self entity];
  managedObjectModel = [entity managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:managedObjectModel]> 20;

  return v4;
}

- (BOOL)supportsLocalParticipantUUID
{
  entity = [(CallRecord *)self entity];
  managedObjectModel = [entity managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:managedObjectModel]> 15;

  return v4;
}

- (BOOL)supportsOutgoingLocalParticipantUUID
{
  entity = [(CallRecord *)self entity];
  managedObjectModel = [entity managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:managedObjectModel]> 16;

  return v4;
}

- (BOOL)supportsParticipantGroupUUID
{
  entity = [(CallRecord *)self entity];
  managedObjectModel = [entity managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:managedObjectModel]> 22;

  return v4;
}

- (BOOL)supportsServiceProvider
{
  entity = [(CallRecord *)self entity];
  managedObjectModel = [entity managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:managedObjectModel]> 5;

  return v4;
}

- (BOOL)supportsVerificationStatus
{
  entity = [(CallRecord *)self entity];
  managedObjectModel = [entity managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:managedObjectModel]> 17;

  return v4;
}

- (BOOL)supportsHasMessage
{
  entity = [(CallRecord *)self entity];
  managedObjectModel = [entity managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:managedObjectModel]> 24;

  return v4;
}

- (BOOL)supportsJunkIdentificationCategory
{
  entity = [(CallRecord *)self entity];
  managedObjectModel = [entity managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:managedObjectModel]> 25;

  return v4;
}

- (BOOL)supportsAutoAnsweredReason
{
  entity = [(CallRecord *)self entity];
  managedObjectModel = [entity managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:managedObjectModel]> 27;

  return v4;
}

- (BOOL)supportsScreenSharingType
{
  entity = [(CallRecord *)self entity];
  managedObjectModel = [entity managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:managedObjectModel]> 33;

  return v4;
}

- (BOOL)supportsBlockedByName
{
  entity = [(CallRecord *)self entity];
  managedObjectModel = [entity managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:managedObjectModel]> 36;

  return v4;
}

- (BOOL)supportsReminderUUID
{
  entity = [(CallRecord *)self entity];
  managedObjectModel = [entity managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:managedObjectModel]> 39;

  return v4;
}

- (BOOL)supportsCommunicationTrustScore
{
  entity = [(CallRecord *)self entity];
  managedObjectModel = [entity managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:managedObjectModel]> 41;

  return v4;
}

@end