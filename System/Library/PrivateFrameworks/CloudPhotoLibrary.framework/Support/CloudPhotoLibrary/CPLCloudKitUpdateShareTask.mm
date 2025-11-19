@interface CPLCloudKitUpdateShareTask
- (BOOL)_checkNonNilUserIdentifierEquality:(id)a3 withUserIdentifier:(id)a4;
- (BOOL)_checkParticipant:(id)a3 inEmails:(id)a4 phoneNumbers:(id)a5 userRecordIDs:(id)a6 participantIDs:(id)a7;
- (BOOL)_isCurrentUserOwnerOrAdminOfShare:(id)a3;
- (BOOL)_isValidListOfShareParticipants:(id)a3;
- (CPLCloudKitUpdateShareTask)initWithController:(id)a3 scope:(id)a4 transportScope:(id)a5 completionHandler:(id)a6;
- (id)cloudKitScope;
- (void)_addParticipant:(id)a3 toEmails:(id)a4 phoneNumbers:(id)a5 userRecordIDs:(id)a6 participantIDs:(id)a7;
- (void)_fetchCKShareWithCompletionHandler:(id)a3;
- (void)_modifyParticipantsOfCKShare:(id)a3 newParticipants:(id)a4;
- (void)_updateCKShare:(id)a3 completionHandler:(id)a4;
- (void)_uploadCKShare:(id)a3 completionHandler:(id)a4;
- (void)runOperations;
@end

@implementation CPLCloudKitUpdateShareTask

- (CPLCloudKitUpdateShareTask)initWithController:(id)a3 scope:(id)a4 transportScope:(id)a5 completionHandler:(id)a6
{
  v10 = a5;
  v11 = a6;
  v18.receiver = self;
  v18.super_class = CPLCloudKitUpdateShareTask;
  v12 = [(CPLCloudKitManageScopeTask *)&v18 initWithController:a3 scope:a4];
  if (v12)
  {
    if (v10)
    {
      v13 = [CPLCloudKitScope scopeFromTransportScope:v10];
      cloudKitScope = v12->_cloudKitScope;
      v12->_cloudKitScope = v13;
    }

    v15 = [v11 copy];
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
    v3 = cloudKitScope;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CPLCloudKitUpdateShareTask;
    v3 = [(CPLCloudKitManageScopeTask *)&v5 cloudKitScope];
  }

  return v3;
}

- (void)_fetchCKShareWithCompletionHandler:(id)a3
{
  v4 = a3;
  v18 = 0;
  v5 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v18];
  v6 = v18;
  if (v5)
  {
    v7 = [(CPLCloudKitManageScopeTask *)self identification];
    v8 = [v7 shareRecordName];
    v9 = v8;
    if (v8)
    {
      v19 = v8;
      v10 = [NSArray arrayWithObjects:&v19 count:1];
      v11 = [(CPLCloudKitUpdateShareTask *)self cloudKitScope];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10004C28C;
      v14[3] = &unk_100274598;
      v15 = v9;
      v16 = self;
      v17 = v4;
      [(CPLCloudKitTransportTask *)self fetchRecordWithNames:v10 inScope:v11 completionHandler:v14];

      v12 = v15;
    }

    else
    {
      v12 = [CPLScopeChange descriptionForScopeType:[(CPLCloudKitManageScopeTask *)self scopeType]];
      v13 = [CPLErrors cplErrorWithCode:38 description:@"%@ is an unsupported scope type for a share", v12];
      (*(v4 + 2))(v4, 0, v13);
    }
  }

  else
  {
    (*(v4 + 2))(v4, 0, v6);
  }
}

- (void)_uploadCKShare:(id)a3 completionHandler:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004C520;
  v8[3] = &unk_1002745E8;
  v9 = a3;
  v10 = a4;
  v8[4] = self;
  v6 = v9;
  v7 = v10;
  [(CPLCloudKitTransportTask *)self getUserRecordIDFetchIfNecessaryWithCompletionHandler:v8];
}

- (BOOL)_checkNonNilUserIdentifierEquality:(id)a3 withUserIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = v5 && v6 && ([v5 isEqualToString:v6] & 1) != 0;

  return v8;
}

- (void)_addParticipant:(id)a3 toEmails:(id)a4 phoneNumbers:(id)a5 userRecordIDs:(id)a6 participantIDs:(id)a7
{
  v25 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [v25 userIdentity];
  v16 = [v15 lookupInfo];

  v17 = [v16 emailAddress];

  if (v17)
  {
    v18 = [v16 emailAddress];
    [v11 addObject:v18];
  }

  v19 = [v16 phoneNumber];

  if (v19)
  {
    v20 = [v16 phoneNumber];
    [v12 addObject:v20];
  }

  v21 = [v16 userRecordID];

  if (v21)
  {
    v22 = [v16 userRecordID];
    [v13 addObject:v22];
  }

  v23 = [v25 participantID];

  if (v23)
  {
    v24 = [v25 participantID];
    [v14 addObject:v24];
  }
}

- (BOOL)_checkParticipant:(id)a3 inEmails:(id)a4 phoneNumbers:(id)a5 userRecordIDs:(id)a6 participantIDs:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [v11 userIdentity];
  v17 = [v16 lookupInfo];

  v18 = [v17 emailAddress];
  if (v18)
  {
    v19 = v18;
    v20 = [v17 emailAddress];
    v21 = [v12 containsObject:v20];

    if (v21)
    {
      goto LABEL_7;
    }
  }

  v22 = [v17 phoneNumber];
  if (v22)
  {
    v23 = v22;
    v24 = [v17 phoneNumber];
    v25 = [v13 containsObject:v24];

    if (v25)
    {
      goto LABEL_7;
    }
  }

  v26 = [v17 userRecordID];
  if (!v26)
  {
    goto LABEL_8;
  }

  v27 = v26;
  v28 = [v17 userRecordID];
  v29 = [v14 containsObject:v28];

  if (v29)
  {
LABEL_7:
    v30 = 1;
  }

  else
  {
LABEL_8:
    v31 = [v11 participantID];
    if (v31)
    {
      v32 = [v11 participantID];
      v30 = [v15 containsObject:v32];
    }

    else
    {
      v30 = 0;
    }
  }

  return v30;
}

- (void)_modifyParticipantsOfCKShare:(id)a3 newParticipants:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v32 = v6;
    v8 = [v6 participants];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = sub_100003744();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v57 = v7;
        v58 = 2112;
        v59 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Comparing new participants %@ with existing participants %@", buf, 0x16u);
      }
    }

    v38 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v8, "count")}];
    v37 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v8, "count")}];
    v36 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v8, "count")}];
    v35 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v8, "count")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v10 = v8;
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

    v15 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
    v16 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
    v17 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
    v18 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v31 = v7;
    v19 = v7;
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

    v7 = v31;
    v6 = v32;
  }
}

- (BOOL)_isValidListOfShareParticipants:(id)a3
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) role] == 1)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (BOOL)_isCurrentUserOwnerOrAdminOfShare:(id)a3
{
  v3 = [a3 currentUserParticipant];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 role] == 1 || objc_msgSend(v4, "role") == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateCKShare:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = 0;
  v8 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v21];
  v9 = v21;
  if (v8)
  {
    v10 = [(CPLCloudKitManageScopeTask *)self scope];
    if ([(CPLCloudKitUpdateShareTask *)self _isCurrentUserOwnerOrAdminOfShare:v6])
    {
      [v10 updateCKShare:v6];
      v11 = [v10 share];
      v12 = [v11 participants];

      if ([v6 publicPermission] != 1 || !objc_msgSend(v12, "count"))
      {
        [(CPLCloudKitUpdateShareTask *)self _uploadCKShare:v6 completionHandler:v7];
        goto LABEL_11;
      }

      if ([(CPLCloudKitUpdateShareTask *)self _isValidListOfShareParticipants:v12])
      {
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_10004D7C4;
        v18[3] = &unk_100274610;
        v20 = v7;
        v18[4] = self;
        v19 = v6;
        [(CPLCloudKitManageScopeTask *)self fetchShareParticipantsForParticipants:v12 completionBlock:v18];

LABEL_11:
        goto LABEL_12;
      }

      completionHandler = self->_completionHandler;
      v14 = [(CPLCloudKitManageScopeTask *)self scope];
      v16 = [v14 scopeIdentifier];
      v17 = [CPLErrors invalidScopeErrorWithScopeIdentifier:v16];
      completionHandler[2](completionHandler, 0, v17);
    }

    else
    {
      v13 = objc_opt_class();
      v12 = [v10 scopeIdentifier];
      v14 = [CPLErrors cplErrorWithCode:52 description:@"User is not owner or admin of <%@ %@>", v13, v12];
      (*(v7 + 2))(v7, 0, v14);
    }

    goto LABEL_11;
  }

  (*(v7 + 2))(v7, 0, v9);
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