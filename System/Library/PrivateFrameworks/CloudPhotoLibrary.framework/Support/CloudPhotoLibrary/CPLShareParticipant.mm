@interface CPLShareParticipant
+ (id)shareParticipantsFromCKShareParticipants:(id)a3 currentUserID:(id)a4;
- (id)initWithCKShareParticipant:(id)a3 currentUserID:(id)a4;
- (void)updateCKShareParticipant:(id)a3;
@end

@implementation CPLShareParticipant

+ (id)shareParticipantsFromCKShareParticipants:(id)a3 currentUserID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
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
        v15 = [v14 initWithCKShareParticipant:v13 currentUserID:{v6, v17}];
        [v7 addObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)initWithCKShareParticipant:(id)a3 currentUserID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 userIdentity];
  v9 = [v8 userRecordID];
  v10 = [v9 recordName];

  if (!v10 || !CKCurrentUserDefaultName)
  {
    if (v10 | CKCurrentUserDefaultName)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if ([v10 isEqual:CKCurrentUserDefaultName])
  {
LABEL_6:
    v11 = [v7 recordName];

    v10 = v11;
  }

LABEL_7:
  v12 = [(CPLShareParticipant *)self initWithUserIdentifier:v10];
  if (v12)
  {
    -[CPLShareParticipant setIsCurrentUser:](v12, "setIsCurrentUser:", [v6 isCurrentUser]);
    v13 = [v6 role] - 1;
    if (v13 > 3)
    {
      v14 = 0;
    }

    else
    {
      v14 = qword_100243E00[v13];
    }

    [(CPLShareParticipant *)v12 setRole:v14];
    v15 = [v6 acceptanceStatus];
    if ((v15 - 1) >= 3)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    [(CPLShareParticipant *)v12 setAcceptanceStatus:v16];
    v17 = [v6 permission];
    if ((v17 - 1) >= 3)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }

    [(CPLShareParticipant *)v12 setPermission:v18];
    v19 = [v6 participantID];
    [(CPLShareParticipant *)v12 setParticipantID:v19];

    v20 = [v8 lookupInfo];
    v21 = [v8 nameComponents];
    v22 = [v20 emailAddress];
    if (v22)
    {
      [(CPLShareParticipant *)v12 setEmail:v22];
    }

    v23 = [v20 phoneNumber];
    if (v23)
    {
      [(CPLShareParticipant *)v12 setPhoneNumber:v23];
    }

    [(CPLShareParticipant *)v12 setNameComponents:v21];
    -[CPLShareParticipant setHasiCloudAccount:](v12, "setHasiCloudAccount:", [v8 hasiCloudAccount]);
  }

  return v12;
}

- (void)updateCKShareParticipant:(id)a3
{
  v6 = a3;
  v4 = [(CPLShareParticipant *)self permission];
  if ((v4 - 1) >= 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  [v6 setPermission:v5];
}

@end