@interface CPLCloudKitUpdateShareTask
- (BOOL)_checkNonNilUserIdentifierEquality:(id)equality withUserIdentifier:(id)identifier;
- (BOOL)_checkParticipant:(id)participant inEmails:(id)emails phoneNumbers:(id)numbers userRecordIDs:(id)ds participantIDs:(id)iDs;
- (BOOL)_isCurrentUserOwnerOrAdminOfShare:(id)share;
- (BOOL)_isValidListOfShareParticipants:(id)participants;
- (CPLCloudKitUpdateShareTask)initWithController:(id)controller scope:(id)scope transportScope:(id)transportScope completionHandler:(id)handler;
- (id)cloudKitScope;
- (void)_addParticipant:(id)participant toEmails:(id)emails phoneNumbers:(id)numbers userRecordIDs:(id)ds participantIDs:(id)iDs;
- (void)_fetchCKShareWithCompletionHandler:(id)handler;
- (void)_modifyParticipantsOfCKShare:(id)share newParticipants:(id)participants;
- (void)_updateCKShare:(id)share completionHandler:(id)handler;
- (void)_uploadCKShare:(id)share completionHandler:(id)handler;
- (void)runOperations;
@end

@implementation CPLCloudKitUpdateShareTask

- (CPLCloudKitUpdateShareTask)initWithController:(id)controller scope:(id)scope transportScope:(id)transportScope completionHandler:(id)handler
{
  transportScopeCopy = transportScope;
  handlerCopy = handler;
  v18.receiver = self;
  v18.super_class = CPLCloudKitUpdateShareTask;
  v12 = [(CPLCloudKitManageScopeTask *)&v18 initWithController:controller scope:scope];
  if (v12)
  {
    if (transportScopeCopy)
    {
      v13 = [CPLCloudKitScope scopeFromTransportScope:transportScopeCopy];
      cloudKitScope = v12->_cloudKitScope;
      v12->_cloudKitScope = v13;
    }

    v15 = [handlerCopy copy];
    completionHandler = v12->_completionHandler;
    v12->_completionHandler = v15;
  }

  return v12;
}

- (id)cloudKitScope
{
  cloudKitScope = self->_cloudKitScope;
  if (cloudKitScope)
  {
    cloudKitScope = cloudKitScope;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CPLCloudKitUpdateShareTask;
    cloudKitScope = [(CPLCloudKitManageScopeTask *)&v5 cloudKitScope];
  }

  return cloudKitScope;
}

- (void)_fetchCKShareWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v18 = 0;
  v5 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v18];
  v6 = v18;
  if (v5)
  {
    identification = [(CPLCloudKitManageScopeTask *)self identification];
    shareRecordName = [identification shareRecordName];
    v9 = shareRecordName;
    if (shareRecordName)
    {
      v19 = shareRecordName;
      v10 = [NSArray arrayWithObjects:&v19 count:1];
      cloudKitScope = [(CPLCloudKitUpdateShareTask *)self cloudKitScope];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10004C28C;
      v14[3] = &unk_100274598;
      v15 = v9;
      selfCopy = self;
      v17 = handlerCopy;
      [(CPLCloudKitTransportTask *)self fetchRecordWithNames:v10 inScope:cloudKitScope completionHandler:v14];

      v12 = v15;
    }

    else
    {
      v12 = [CPLScopeChange descriptionForScopeType:[(CPLCloudKitManageScopeTask *)self scopeType]];
      v13 = [CPLErrors cplErrorWithCode:38 description:@"%@ is an unsupported scope type for a share", v12];
      (*(handlerCopy + 2))(handlerCopy, 0, v13);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, v6);
  }
}

- (void)_uploadCKShare:(id)share completionHandler:(id)handler
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004C520;
  v8[3] = &unk_1002745E8;
  shareCopy = share;
  handlerCopy = handler;
  v8[4] = self;
  v6 = shareCopy;
  v7 = handlerCopy;
  [(CPLCloudKitTransportTask *)self getUserRecordIDFetchIfNecessaryWithCompletionHandler:v8];
}

- (BOOL)_checkNonNilUserIdentifierEquality:(id)equality withUserIdentifier:(id)identifier
{
  equalityCopy = equality;
  identifierCopy = identifier;
  v7 = identifierCopy;
  v8 = equalityCopy && identifierCopy && ([equalityCopy isEqualToString:identifierCopy] & 1) != 0;

  return v8;
}

- (void)_addParticipant:(id)participant toEmails:(id)emails phoneNumbers:(id)numbers userRecordIDs:(id)ds participantIDs:(id)iDs
{
  participantCopy = participant;
  emailsCopy = emails;
  numbersCopy = numbers;
  dsCopy = ds;
  iDsCopy = iDs;
  userIdentity = [participantCopy userIdentity];
  lookupInfo = [userIdentity lookupInfo];

  emailAddress = [lookupInfo emailAddress];

  if (emailAddress)
  {
    emailAddress2 = [lookupInfo emailAddress];
    [emailsCopy addObject:emailAddress2];
  }

  phoneNumber = [lookupInfo phoneNumber];

  if (phoneNumber)
  {
    phoneNumber2 = [lookupInfo phoneNumber];
    [numbersCopy addObject:phoneNumber2];
  }

  userRecordID = [lookupInfo userRecordID];

  if (userRecordID)
  {
    userRecordID2 = [lookupInfo userRecordID];
    [dsCopy addObject:userRecordID2];
  }

  participantID = [participantCopy participantID];

  if (participantID)
  {
    participantID2 = [participantCopy participantID];
    [iDsCopy addObject:participantID2];
  }
}

- (BOOL)_checkParticipant:(id)participant inEmails:(id)emails phoneNumbers:(id)numbers userRecordIDs:(id)ds participantIDs:(id)iDs
{
  participantCopy = participant;
  emailsCopy = emails;
  numbersCopy = numbers;
  dsCopy = ds;
  iDsCopy = iDs;
  userIdentity = [participantCopy userIdentity];
  lookupInfo = [userIdentity lookupInfo];

  emailAddress = [lookupInfo emailAddress];
  if (emailAddress)
  {
    v19 = emailAddress;
    emailAddress2 = [lookupInfo emailAddress];
    v21 = [emailsCopy containsObject:emailAddress2];

    if (v21)
    {
      goto LABEL_7;
    }
  }

  phoneNumber = [lookupInfo phoneNumber];
  if (phoneNumber)
  {
    v23 = phoneNumber;
    phoneNumber2 = [lookupInfo phoneNumber];
    v25 = [numbersCopy containsObject:phoneNumber2];

    if (v25)
    {
      goto LABEL_7;
    }
  }

  userRecordID = [lookupInfo userRecordID];
  if (!userRecordID)
  {
    goto LABEL_8;
  }

  v27 = userRecordID;
  userRecordID2 = [lookupInfo userRecordID];
  v29 = [dsCopy containsObject:userRecordID2];

  if (v29)
  {
LABEL_7:
    v30 = 1;
  }

  else
  {
LABEL_8:
    participantID = [participantCopy participantID];
    if (participantID)
    {
      participantID2 = [participantCopy participantID];
      v30 = [iDsCopy containsObject:participantID2];
    }

    else
    {
      v30 = 0;
    }
  }

  return v30;
}

- (void)_modifyParticipantsOfCKShare:(id)share newParticipants:(id)participants
{
  shareCopy = share;
  participantsCopy = participants;
  if ([participantsCopy count])
  {
    v32 = shareCopy;
    participants = [shareCopy participants];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = sub_100003744();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v57 = participantsCopy;
        v58 = 2112;
        v59 = participants;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Comparing new participants %@ with existing participants %@", buf, 0x16u);
      }
    }

    v38 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(participants, "count")}];
    v37 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(participants, "count")}];
    v36 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(participants, "count")}];
    v35 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(participants, "count")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v10 = participants;
    v11 = [v10 countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v48;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v48 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [(CPLCloudKitUpdateShareTask *)self _addParticipant:*(*(&v47 + 1) + 8 * i) toEmails:v37 phoneNumbers:v38 userRecordIDs:v36 participantIDs:v35];
        }

        v12 = [v10 countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v12);
    }

    obj = v10;

    v15 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(participantsCopy, "count")}];
    v16 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(participantsCopy, "count")}];
    v17 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(participantsCopy, "count")}];
    v18 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(participantsCopy, "count")}];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v31 = participantsCopy;
    v19 = participantsCopy;
    v20 = [v19 countByEnumeratingWithState:&v43 objects:v54 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v44;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v44 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v43 + 1) + 8 * j);
          [(CPLCloudKitUpdateShareTask *)self _addParticipant:v24 toEmails:v16 phoneNumbers:v15 userRecordIDs:v17 participantIDs:v18, v31];
          if (![(CPLCloudKitUpdateShareTask *)self _checkParticipant:v24 inEmails:v37 phoneNumbers:v38 userRecordIDs:v36 participantIDs:v35])
          {
            sub_10019AEE0(buf, v24, &v57, v32);
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v43 objects:v54 count:16];
      }

      while (v21);
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obja = obj;
    v25 = [obja countByEnumeratingWithState:&v39 objects:v53 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v40;
      do
      {
        for (k = 0; k != v26; k = k + 1)
        {
          if (*v40 != v27)
          {
            objc_enumerationMutation(obja);
          }

          v29 = *(*(&v39 + 1) + 8 * k);
          if (![(CPLCloudKitUpdateShareTask *)self _checkParticipant:v29 inEmails:v16 phoneNumbers:v15 userRecordIDs:v17 participantIDs:v18, v31]&& (_CPLSilentLogging & 1) == 0)
          {
            v30 = sub_100003744();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *v51 = 138412290;
              v52 = v29;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Trying to remove participant %@ directly is unsupported", v51, 0xCu);
            }
          }
        }

        v26 = [obja countByEnumeratingWithState:&v39 objects:v53 count:16];
      }

      while (v26);
    }

    participantsCopy = v31;
    shareCopy = v32;
  }
}

- (BOOL)_isValidListOfShareParticipants:(id)participants
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  participantsCopy = participants;
  v4 = [participantsCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(participantsCopy);
        }

        if ([*(*(&v8 + 1) + 8 * i) role] == 1)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [participantsCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (BOOL)_isCurrentUserOwnerOrAdminOfShare:(id)share
{
  currentUserParticipant = [share currentUserParticipant];
  v4 = currentUserParticipant;
  if (currentUserParticipant)
  {
    v5 = [currentUserParticipant role] == 1 || objc_msgSend(v4, "role") == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateCKShare:(id)share completionHandler:(id)handler
{
  shareCopy = share;
  handlerCopy = handler;
  v21 = 0;
  v8 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v21];
  v9 = v21;
  if (v8)
  {
    scope = [(CPLCloudKitManageScopeTask *)self scope];
    if ([(CPLCloudKitUpdateShareTask *)self _isCurrentUserOwnerOrAdminOfShare:shareCopy])
    {
      [scope updateCKShare:shareCopy];
      share = [scope share];
      participants = [share participants];

      if ([shareCopy publicPermission] != 1 || !objc_msgSend(participants, "count"))
      {
        [(CPLCloudKitUpdateShareTask *)self _uploadCKShare:shareCopy completionHandler:handlerCopy];
        goto LABEL_11;
      }

      if ([(CPLCloudKitUpdateShareTask *)self _isValidListOfShareParticipants:participants])
      {
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_10004D7C4;
        v18[3] = &unk_100274610;
        v20 = handlerCopy;
        v18[4] = self;
        v19 = shareCopy;
        [(CPLCloudKitManageScopeTask *)self fetchShareParticipantsForParticipants:participants completionBlock:v18];

LABEL_11:
        goto LABEL_12;
      }

      completionHandler = self->_completionHandler;
      scope2 = [(CPLCloudKitManageScopeTask *)self scope];
      scopeIdentifier = [scope2 scopeIdentifier];
      v17 = [CPLErrors invalidScopeErrorWithScopeIdentifier:scopeIdentifier];
      completionHandler[2](completionHandler, 0, v17);
    }

    else
    {
      v13 = objc_opt_class();
      participants = [scope scopeIdentifier];
      scope2 = [CPLErrors cplErrorWithCode:52 description:@"User is not owner or admin of <%@ %@>", v13, participants];
      (*(handlerCopy + 2))(handlerCopy, 0, scope2);
    }

    goto LABEL_11;
  }

  (*(handlerCopy + 2))(handlerCopy, 0, v9);
LABEL_12:
}

- (void)runOperations
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10004D8A8;
  v2[3] = &unk_100274638;
  v2[4] = self;
  [(CPLCloudKitUpdateShareTask *)self _fetchCKShareWithCompletionHandler:v2];
}

@end