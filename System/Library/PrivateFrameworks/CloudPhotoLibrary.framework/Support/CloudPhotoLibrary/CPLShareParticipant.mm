@interface CPLShareParticipant
+ (id)shareParticipantsFromCKShareParticipants:(id)participants currentUserID:(id)d;
- (id)initWithCKShareParticipant:(id)participant currentUserID:(id)d;
- (void)updateCKShareParticipant:(id)participant;
@end

@implementation CPLShareParticipant

+ (id)shareParticipantsFromCKShareParticipants:(id)participants currentUserID:(id)d
{
  participantsCopy = participants;
  dCopy = d;
  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(participantsCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = participantsCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [CPLShareParticipant alloc];
        v15 = [v14 initWithCKShareParticipant:v13 currentUserID:{dCopy, v17}];
        [v7 addObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)initWithCKShareParticipant:(id)participant currentUserID:(id)d
{
  participantCopy = participant;
  dCopy = d;
  userIdentity = [participantCopy userIdentity];
  userRecordID = [userIdentity userRecordID];
  recordName = [userRecordID recordName];

  if (!recordName || !CKCurrentUserDefaultName)
  {
    if (recordName | CKCurrentUserDefaultName)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if ([recordName isEqual:CKCurrentUserDefaultName])
  {
LABEL_6:
    recordName2 = [dCopy recordName];

    recordName = recordName2;
  }

LABEL_7:
  v12 = [(CPLShareParticipant *)self initWithUserIdentifier:recordName];
  if (v12)
  {
    -[CPLShareParticipant setIsCurrentUser:](v12, "setIsCurrentUser:", [participantCopy isCurrentUser]);
    v13 = [participantCopy role] - 1;
    if (v13 > 3)
    {
      v14 = 0;
    }

    else
    {
      v14 = qword_100243E00[v13];
    }

    [(CPLShareParticipant *)v12 setRole:v14];
    acceptanceStatus = [participantCopy acceptanceStatus];
    if ((acceptanceStatus - 1) >= 3)
    {
      v16 = 0;
    }

    else
    {
      v16 = acceptanceStatus;
    }

    [(CPLShareParticipant *)v12 setAcceptanceStatus:v16];
    permission = [participantCopy permission];
    if ((permission - 1) >= 3)
    {
      v18 = 0;
    }

    else
    {
      v18 = permission;
    }

    [(CPLShareParticipant *)v12 setPermission:v18];
    participantID = [participantCopy participantID];
    [(CPLShareParticipant *)v12 setParticipantID:participantID];

    lookupInfo = [userIdentity lookupInfo];
    nameComponents = [userIdentity nameComponents];
    emailAddress = [lookupInfo emailAddress];
    if (emailAddress)
    {
      [(CPLShareParticipant *)v12 setEmail:emailAddress];
    }

    phoneNumber = [lookupInfo phoneNumber];
    if (phoneNumber)
    {
      [(CPLShareParticipant *)v12 setPhoneNumber:phoneNumber];
    }

    [(CPLShareParticipant *)v12 setNameComponents:nameComponents];
    -[CPLShareParticipant setHasiCloudAccount:](v12, "setHasiCloudAccount:", [userIdentity hasiCloudAccount]);
  }

  return v12;
}

- (void)updateCKShareParticipant:(id)participant
{
  participantCopy = participant;
  permission = [(CPLShareParticipant *)self permission];
  if ((permission - 1) >= 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = permission;
  }

  [participantCopy setPermission:v5];
}

@end