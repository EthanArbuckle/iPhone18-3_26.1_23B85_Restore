@interface CallRecord
- (BOOL)addEmergencyMediaItem:(id)a3;
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
- (id)compositeCallCategoryForContext:(id)a3;
- (id)compositeCallDirectoryIdentityType:(id)a3;
- (id)compositeEmergencyMediaItemsForContext:(id)a3;
- (id)compositeHandleTypeForContext:(id)a3;
- (id)compositeInitiatorHandleForContext:(id)a3;
- (id)compositeJunkConfidenceForContext:(id)a3;
- (id)compositeLocalParticipantUUIDForContext:(id)a3;
- (id)compositeOutgoingLocalParticipantUUIDForContext:(id)a3;
- (id)compositeParticipantGroupUUIDForContext:(id)a3;
- (id)compositeRemoteParticipantHandlesForContext:(id)a3;
- (id)compositeServiceProviderForContext:(id)a3;
- (id)compositeVerificationStatusForContext:(id)a3;
- (int64_t)chHandleType;
- (unsigned)chCallStatus;
- (void)setChCallStatus:(unsigned int)a3;
@end

@implementation CallRecord

- (CHRecentCall)chRecentCall
{
  v44[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(CHRecentCall);
  v4 = [(CallRecord *)self face_time_data];
  [(CHRecentCall *)v3 setBytesOfDataUsed:v4];

  v5 = [(CallRecord *)self number_availability];
  -[CHRecentCall setCallerIdAvailability:](v3, "setCallerIdAvailability:", [v5 integerValue]);

  v6 = [(CallRecord *)self location];
  [(CHRecentCall *)v3 setCallerIdLocation:v6];

  [(CHRecentCall *)v3 setCallStatus:[(CallRecord *)self chCallStatus]];
  v7 = [(CallRecord *)self date];
  [(CHRecentCall *)v3 setDate:v7];

  v8 = [(CallRecord *)self disconnected_cause];
  [(CHRecentCall *)v3 setDisconnectedCause:v8];

  v9 = [(CallRecord *)self duration];
  [v9 doubleValue];
  [(CHRecentCall *)v3 setDuration:?];

  v10 = [(CallRecord *)self filtered_out_reason];
  [(CHRecentCall *)v3 setFilteredOutReason:v10];

  v11 = [(CallRecord *)self handle_type];
  -[CHRecentCall setHandleType:](v3, "setHandleType:", [v11 integerValue]);

  v12 = [(CallRecord *)self imageURL];
  [(CHRecentCall *)v3 setImageURL:v12];

  v13 = [(CallRecord *)self iso_country_code];
  [(CHRecentCall *)v3 setIsoCountryCode:v13];

  v14 = [(CallRecord *)self junkConfidence];
  -[CHRecentCall setJunkConfidence:](v3, "setJunkConfidence:", [v14 integerValue]);

  v15 = [(CallRecord *)self junkIdentificationCategory];
  [(CHRecentCall *)v3 setJunkIdentificationCategory:v15];

  v16 = [(CallRecord *)self localParticipantUUID];
  [(CHRecentCall *)v3 setLocalParticipantUUID:v16];

  v17 = [(CallRecord *)self name];
  [(CHRecentCall *)v3 setName:v17];

  v18 = [(CallRecord *)self outgoingLocalParticipantUUID];
  [(CHRecentCall *)v3 setOutgoingLocalParticipantUUID:v18];

  v19 = [(CallRecord *)self participantGroupUUID];
  [(CHRecentCall *)v3 setParticipantGroupUUID:v19];

  v20 = [(CallRecord *)self read];
  -[CHRecentCall setRead:](v3, "setRead:", [v20 BOOLValue]);

  v21 = [(CallRecord *)self chRemoteParticipantHandles];
  [(CHRecentCall *)v3 setRemoteParticipantHandles:v21];

  v22 = [(CallRecord *)self service_provider];
  [(CHRecentCall *)v3 setServiceProvider:v22];

  v23 = [(CallRecord *)self unique_id];
  [(CHRecentCall *)v3 setUniqueId:v23];

  v24 = [(CallRecord *)self verificationStatus];
  -[CHRecentCall setVerificationStatus:](v3, "setVerificationStatus:", [v24 integerValue]);

  v25 = [(CallRecord *)self hasMessage];
  -[CHRecentCall setHasMessage:](v3, "setHasMessage:", [v25 BOOLValue]);

  v26 = [(CallRecord *)self conversationID];
  [(CHRecentCall *)v3 setConversationID:v26];

  v27 = [(CallRecord *)self autoAnsweredReason];
  -[CHRecentCall setAutoAnsweredReason:](v3, "setAutoAnsweredReason:", [v27 integerValue]);

  v28 = [(CallRecord *)self chEmergencyMediaItems];
  [(CHRecentCall *)v3 setEmergencyMediaItems:v28];

  [(CHRecentCall *)v3 setUsedEmergencyVideoStreaming:[(CallRecord *)self usedEmergencyVideoStreaming]];
  [(CHRecentCall *)v3 setWasEmergencyCall:[(CallRecord *)self wasEmergencyCall]];
  v29 = [(CallRecord *)self blockedByExtension];
  [(CHRecentCall *)v3 setBlockedByExtension:v29];

  v30 = [(CallRecord *)self blockedByExtensionName];
  [(CHRecentCall *)v3 setBlockedByExtensionName:v30];

  v31 = [(CallRecord *)self identityExtension];
  [(CHRecentCall *)v3 setIdentityExtension:v31];

  v32 = [(CallRecord *)self callDirectoryIdentityType];
  -[CHRecentCall setCallDirectoryIdentityType:](v3, "setCallDirectoryIdentityType:", [v32 integerValue]);

  v33 = [(CallRecord *)self screenSharingType];
  -[CHRecentCall setScreenSharingType:](v3, "setScreenSharingType:", [v33 integerValue]);

  v34 = [(CallRecord *)self chInitiator];
  [(CHRecentCall *)v3 setInitiator:v34];

  v35 = [(CallRecord *)self reminderUUID];
  [(CHRecentCall *)v3 setReminderUUID:v35];

  v36 = [(CallRecord *)self communicationTrustScore];
  -[CHRecentCall setCommunicationTrustScore:](v3, "setCommunicationTrustScore:", [v36 integerValue]);

  v37 = [(CallRecord *)self call_category];
  -[CHRecentCall setCallCategory:](v3, "setCallCategory:", [v37 integerValue]);

  v38 = [(CallRecord *)self address];
  [(CHRecentCall *)v3 setCallerId:v38];

  v39 = [(CallRecord *)self calltype];
  -[CHRecentCall setCallType:](v3, "setCallType:", [v39 integerValue]);

  v40 = [(CHRecentCall *)v3 dictionaryRepresentation];
  v44[0] = v40;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
  [(CHRecentCall *)v3 setCallOccurrences:v41];

  v42 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unsigned)chCallStatus
{
  v3 = [(CallRecord *)self originated];
  v4 = [v3 BOOLValue];

  v5 = [(CallRecord *)self duration];
  [v5 doubleValue];
  v7 = v6;

  if (v4)
  {
    v8 = &kCHCallStatusCancelled;
    if (v7 > 0.0)
    {
      v8 = &kCHCallStatusConnectedOutgoing;
    }
  }

  else if (v7 <= 0.0)
  {
    v9 = [(CallRecord *)self answered];
    v10 = [v9 BOOLValue];

    v8 = &kCHCallStatusMissed;
    if (v10)
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
  v3 = [(CallRecord *)self supportsRemoteParticipantHandles];
  v4 = objc_alloc(MEMORY[0x1E695DFA8]);
  v5 = v4;
  if (v3)
  {
    v6 = [(CallRecord *)self remoteParticipantHandles];
    v7 = [v5 initWithCapacity:{objc_msgSend(v6, "count")}];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = [(CallRecord *)self remoteParticipantHandles];
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v24 + 1) + 8 * i) chHandle];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = [v4 initWithCapacity:1];
    v8 = [(CallRecord *)self address];
    v14 = [(CallRecord *)self chHandleType];
    if (v14 && v8)
    {
      v15 = v14;
      if (v14 == 2)
      {
        v16 = [CHPhoneNumber alloc];
        v17 = [(CallRecord *)self iso_country_code];
        v18 = [(CHPhoneNumber *)v16 initWithDigits:v8 isoCountryCode:v17];

        v19 = [(CHPhoneNumber *)v18 normalizedRepresentation];
      }

      else
      {
        v19 = 0;
      }

      v20 = [[CHHandle alloc] initWithType:v15 value:v8 normalizedValue:v19];
      [v7 addObject:v20];
    }
  }

  v21 = [v7 copy];
  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (BOOL)supportsRemoteParticipantHandles
{
  v2 = [(CallRecord *)self entity];
  v3 = [v2 managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:v3]> 14;

  return v4;
}

- (NSSet)chEmergencyMediaItems
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(CallRecord *)self supportsEmergencyMedia])
  {
    v3 = objc_alloc(MEMORY[0x1E695DFA8]);
    v4 = [(CallRecord *)self emergencyMediaItems];
    v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(CallRecord *)self emergencyMediaItems];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v15 + 1) + 8 * i) chEmergencyMediaItem];
          if (v11)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  v2 = [(CallRecord *)self entity];
  v3 = [v2 managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:v3]> 28;

  return v4;
}

- (CHHandle)chInitiator
{
  if ([(CallRecord *)self supportsInitiator])
  {
    v3 = [(CallRecord *)self initiator];
    v4 = [v3 chHandle];
LABEL_6:
    v7 = v4;

    goto LABEL_8;
  }

  if (([(CallRecord *)self chCallStatus]& 0xD) != 0)
  {
    v5 = [(CallRecord *)self chRemoteParticipantHandles];
    v6 = [v5 count];

    if (v6 == 1)
    {
      v3 = [(CallRecord *)self chRemoteParticipantHandles];
      v4 = [v3 anyObject];
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (BOOL)supportsInitiator
{
  v2 = [(CallRecord *)self entity];
  v3 = [v2 managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:v3]> 35;

  return v4;
}

- (void)setChCallStatus:(unsigned int)a3
{
  if (a3 == 1)
  {
    goto LABEL_2;
  }

  if (a3 == 2)
  {
LABEL_4:
    v4 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [(CallRecord *)self setOriginated:?];
    goto LABEL_5;
  }

  if (a3 != 4)
  {
    if (a3 != 16)
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
    v3 = [(CallRecord *)self handle_type];
    v4 = [v3 integerValue];
  }

  else
  {
    v3 = [(CallRecord *)self address];
    v4 = [CHHandle handleTypeForValue:v3];
  }

  v5 = v4;

  return v5;
}

- (id)compositeCallCategoryForContext:(id)a3
{
  if ([(CallRecord *)self supportsCallCategory])
  {
    [(CallRecord *)self call_category];
  }

  else
  {
    v5 = [(CallRecord *)self calltype];
    v6 = [v5 integerValue];

    [MEMORY[0x1E696AD98] numberWithInteger:{+[CHRecentCall categoryForCallType:](CHRecentCall, "categoryForCallType:", v6)}];
  }
  v4 = ;

  return v4;
}

- (id)compositeHandleTypeForContext:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [(CallRecord *)self chHandleType];

  return [v3 numberWithInteger:v4];
}

- (id)compositeJunkConfidenceForContext:(id)a3
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

- (id)compositeCallDirectoryIdentityType:(id)a3
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

- (id)compositeLocalParticipantUUIDForContext:(id)a3
{
  if ([(CallRecord *)self supportsLocalParticipantUUID])
  {
    v4 = [(CallRecord *)self localParticipantUUID];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)compositeOutgoingLocalParticipantUUIDForContext:(id)a3
{
  if ([(CallRecord *)self supportsOutgoingLocalParticipantUUID])
  {
    v4 = [(CallRecord *)self outgoingLocalParticipantUUID];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)compositeParticipantGroupUUIDForContext:(id)a3
{
  if ([(CallRecord *)self supportsParticipantGroupUUID])
  {
    v4 = [(CallRecord *)self participantGroupUUID];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)compositeRemoteParticipantHandlesForContext:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CallRecord *)self supportsRemoteParticipantHandles])
  {
    v5 = [(CallRecord *)self remoteParticipantHandles];
    v6 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v5, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v5;
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

          v12 = [*(*(&v17 + 1) + 8 * i) copyWithContext:{v4, v17}];
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
    v14 = [(CallRecord *)self chRemoteParticipantHandles];
    if (v14)
    {
      v13 = [CHManagedHandle managedHandlesForHandles:v14 inManagedObjectContext:v4];
    }

    else
    {
      v13 = 0;
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)compositeInitiatorHandleForContext:(id)a3
{
  v4 = a3;
  if ([(CallRecord *)self supportsInitiator])
  {
    v5 = [(CallRecord *)self initiator];

    if (v5)
    {
      v6 = [(CallRecord *)self initiator];
      v7 = [v6 copyWithContext:v4];
LABEL_6:
      v8 = v7;
      goto LABEL_8;
    }
  }

  v6 = [(CallRecord *)self chInitiator];
  if (v6)
  {
    v7 = [CHManagedHandle managedHandleForHandle:v6 inManagedObjectContext:v4];
    goto LABEL_6;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (id)compositeServiceProviderForContext:(id)a3
{
  if ([(CallRecord *)self supportsServiceProvider])
  {
    [(CallRecord *)self service_provider];
  }

  else
  {
    v5 = [(CallRecord *)self calltype];
    v6 = [v5 integerValue];

    [CHRecentCall serviceProviderForCallType:v6];
  }
  v4 = ;

  return v4;
}

- (id)compositeVerificationStatusForContext:(id)a3
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

- (id)compositeEmergencyMediaItemsForContext:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CallRecord *)self supportsEmergencyMedia])
  {
    v5 = [(CallRecord *)self emergencyMediaItems];
    v6 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v5, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v5;
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

          v12 = [*(*(&v16 + 1) + 8 * i) copyWithContext:{v4, v16}];
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

- (BOOL)addEmergencyMediaItem:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [(CallRecord *)self chEmergencyMediaItems];
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
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
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v26 + 1) + 8 * i) isEqualToMediaItem:v4])
        {
          v19 = 0;
          goto LABEL_18;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = objc_alloc(MEMORY[0x1E695DFA8]);
  v11 = [(CallRecord *)self chEmergencyMediaItems];
  v5 = [v10 initWithCapacity:{objc_msgSend(v11, "count") + 1}];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = [(CallRecord *)self emergencyMediaItems];
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
          objc_enumerationMutation(v12);
        }

        [v5 addObject:*(*(&v22 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v14);
  }

  v17 = [(CallRecord *)self managedObjectContext];
  v18 = [EmergencyMediaItem managedEmergencyMediaItemForEmergencyMediaItem:v4 inManagedObjectContext:v17];

  [v5 addObject:v18];
  [(CallRecord *)self setEmergencyMediaItems:v5];

  v19 = 1;
LABEL_18:

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)supportsCallCategory
{
  v2 = [(CallRecord *)self entity];
  v3 = [v2 managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:v3]> 5;

  return v4;
}

- (BOOL)supportsHandleType
{
  v2 = [(CallRecord *)self entity];
  v3 = [v2 managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:v3]> 12;

  return v4;
}

- (BOOL)supportsImageURL
{
  v2 = [(CallRecord *)self entity];
  v3 = [v2 managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:v3]> 23;

  return v4;
}

- (BOOL)supportsBlockedBy
{
  v2 = [(CallRecord *)self entity];
  v3 = [v2 managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:v3]> 30;

  return v4;
}

- (BOOL)supportsIdentityExtension
{
  v2 = [(CallRecord *)self entity];
  v3 = [v2 managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:v3]> 34;

  return v4;
}

- (BOOL)supportsCallDirectoryIdentityType
{
  v2 = [(CallRecord *)self entity];
  v3 = [v2 managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:v3]> 31;

  return v4;
}

- (BOOL)supportsJunkConfidence
{
  v2 = [(CallRecord *)self entity];
  v3 = [v2 managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:v3]> 20;

  return v4;
}

- (BOOL)supportsLocalParticipantUUID
{
  v2 = [(CallRecord *)self entity];
  v3 = [v2 managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:v3]> 15;

  return v4;
}

- (BOOL)supportsOutgoingLocalParticipantUUID
{
  v2 = [(CallRecord *)self entity];
  v3 = [v2 managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:v3]> 16;

  return v4;
}

- (BOOL)supportsParticipantGroupUUID
{
  v2 = [(CallRecord *)self entity];
  v3 = [v2 managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:v3]> 22;

  return v4;
}

- (BOOL)supportsServiceProvider
{
  v2 = [(CallRecord *)self entity];
  v3 = [v2 managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:v3]> 5;

  return v4;
}

- (BOOL)supportsVerificationStatus
{
  v2 = [(CallRecord *)self entity];
  v3 = [v2 managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:v3]> 17;

  return v4;
}

- (BOOL)supportsHasMessage
{
  v2 = [(CallRecord *)self entity];
  v3 = [v2 managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:v3]> 24;

  return v4;
}

- (BOOL)supportsJunkIdentificationCategory
{
  v2 = [(CallRecord *)self entity];
  v3 = [v2 managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:v3]> 25;

  return v4;
}

- (BOOL)supportsAutoAnsweredReason
{
  v2 = [(CallRecord *)self entity];
  v3 = [v2 managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:v3]> 27;

  return v4;
}

- (BOOL)supportsScreenSharingType
{
  v2 = [(CallRecord *)self entity];
  v3 = [v2 managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:v3]> 33;

  return v4;
}

- (BOOL)supportsBlockedByName
{
  v2 = [(CallRecord *)self entity];
  v3 = [v2 managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:v3]> 36;

  return v4;
}

- (BOOL)supportsReminderUUID
{
  v2 = [(CallRecord *)self entity];
  v3 = [v2 managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:v3]> 39;

  return v4;
}

- (BOOL)supportsCommunicationTrustScore
{
  v2 = [(CallRecord *)self entity];
  v3 = [v2 managedObjectModel];
  v4 = [DBManager versionForManagedObjectModel:v3]> 41;

  return v4;
}

@end