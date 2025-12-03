@interface CPLCloudKitManageScopeTask
- (BOOL)checkScopeIsValidWithError:(id *)error;
- (CPLCloudKitManageScopeTask)initWithController:(id)controller scope:(id)scope;
- (CPLCloudKitScope)cloudKitScope;
- (CPLCloudKitZoneIdentification)identification;
- (CPLEngineScope)engineScope;
- (void)fetchShareParticipantsForParticipants:(id)participants completionBlock:(id)block;
- (void)resetCloudKitScope:(id)scope;
@end

@implementation CPLCloudKitManageScopeTask

- (CPLCloudKitManageScopeTask)initWithController:(id)controller scope:(id)scope
{
  scopeCopy = scope;
  v11.receiver = self;
  v11.super_class = CPLCloudKitManageScopeTask;
  v8 = [(CPLCloudKitTransportTask *)&v11 initWithController:controller];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_scope, scope);
  }

  return v9;
}

- (BOOL)checkScopeIsValidWithError:(id *)error
{
  if (![(CPLScopeChange *)self->_scope needsToSetScopeIdentifier])
  {
    return 1;
  }

  controller = [(CPLCloudKitTransportTask *)self controller];
  cloudKitScope = [(CPLCloudKitManageScopeTask *)self cloudKitScope];
  engineScope = [(CPLCloudKitManageScopeTask *)self engineScope];
  v8 = [controller zoneIdentificationForCloudKitScope:cloudKitScope engineScope:engineScope];

  mainScopeIdentifier = [(CPLCloudKitTransportTask *)self mainScopeIdentifier];
  v10 = [v8 newScopeIdentifierRelativeToMainScopeIdentifier:mainScopeIdentifier];

  if (v10)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = sub_100003744();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        scope = self->_scope;
        v16 = 138543618;
        v17 = v10;
        v18 = 2112;
        v19 = scope;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Picked %{public}@ for %@", &v16, 0x16u);
      }
    }

    [(CPLScopeChange *)self->_scope updateScopeIdentifier:v10];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = sub_100003744();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = self->_scope;
        v16 = 138412290;
        v17 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "New scope is %@", &v16, 0xCu);
      }
    }

    return 1;
  }

  if (error)
  {
    *error = [CPLErrors incorrectParametersErrorForParameter:@"scopeIdentifier"];
  }

  return 0;
}

- (CPLEngineScope)engineScope
{
  if (self->_identification)
  {
    engineScope = [(CPLCloudKitZoneIdentification *)self->_identification engineScope];
  }

  else
  {
    scope = [(CPLCloudKitManageScopeTask *)self scope];
    v4 = [CPLEngineScope alloc];
    scopeIdentifier = [scope scopeIdentifier];
    engineScope = [v4 initWithScopeIdentifier:scopeIdentifier scopeType:{objc_msgSend(scope, "scopeType")}];
  }

  return engineScope;
}

- (CPLCloudKitScope)cloudKitScope
{
  identification = self->_identification;
  if (identification)
  {
    cloudKitScope = [(CPLCloudKitZoneIdentification *)identification cloudKitScope];
  }

  else
  {
    scopeIdentifier = [(CPLScopeChange *)self->_scope scopeIdentifier];
    v6 = [(CPLCloudKitTransportTask *)self zoneIDFromScopeIdentifier:scopeIdentifier];

    cloudKitScope = [[CPLCloudKitScope alloc] initWithZoneID:v6 options:0];
  }

  return cloudKitScope;
}

- (CPLCloudKitZoneIdentification)identification
{
  identification = self->_identification;
  if (!identification)
  {
    controller = [(CPLCloudKitTransportTask *)self controller];
    cloudKitScope = [(CPLCloudKitManageScopeTask *)self cloudKitScope];
    engineScope = [(CPLCloudKitManageScopeTask *)self engineScope];
    v7 = [controller zoneIdentificationForCloudKitScope:cloudKitScope engineScope:engineScope];
    v8 = self->_identification;
    self->_identification = v7;

    identification = self->_identification;
  }

  return identification;
}

- (void)resetCloudKitScope:(id)scope
{
  scopeCopy = scope;
  controller = [(CPLCloudKitTransportTask *)self controller];
  engineScope = [(CPLCloudKitManageScopeTask *)self engineScope];
  v6 = [controller zoneIdentificationForCloudKitScope:scopeCopy engineScope:engineScope];

  identification = self->_identification;
  self->_identification = v6;
}

- (void)fetchShareParticipantsForParticipants:(id)participants completionBlock:(id)block
{
  participantsCopy = participants;
  blockCopy = block;
  v53 = 0;
  selfCopy = self;
  LOBYTE(block) = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v53];
  v6 = v53;
  v34 = v6;
  if ((block & 1) == 0)
  {
    (*(blockCopy + 2))(blockCopy, 0, 0, v6);
    goto LABEL_27;
  }

  v7 = [participantsCopy count];
  v38 = objc_alloc_init(NSMutableArray);
  v8 = [[NSMutableDictionary alloc] initWithCapacity:v7];
  v9 = [[NSMutableDictionary alloc] initWithCapacity:v7];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = participantsCopy;
  v10 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (!v10)
  {
    goto LABEL_25;
  }

  v11 = *v50;
  do
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v50 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v49 + 1) + 8 * i);
      email = [v13 email];

      if (!email || (v15 = [CKUserIdentityLookupInfo alloc], [v13 email], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "initWithEmailAddress:", v16), v16, !v17))
      {
        phoneNumber = [v13 phoneNumber];
        v19 = phoneNumber == 0;

        if (v19)
        {
          v17 = 0;
        }

        else
        {
          v20 = [CKUserIdentityLookupInfo alloc];
          phoneNumber2 = [v13 phoneNumber];
          v17 = [v20 initWithPhoneNumber:phoneNumber2];
        }
      }

      userIdentifier = [v13 userIdentifier];
      v23 = userIdentifier;
      if (v17 || !userIdentifier)
      {
        if (!userIdentifier)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v24 = [CKRecordID alloc];
        userIdentifier2 = [v13 userIdentifier];
        v26 = [v24 initWithRecordName:userIdentifier2];

        v17 = [[CKUserIdentityLookupInfo alloc] initWithUserRecordID:v26];
      }

      [v9 setObject:v13 forKeyedSubscript:v23];
LABEL_17:
      if (v17)
      {
        [v8 setObject:v13 forKeyedSubscript:v17];
        [v38 addObject:v17];
      }

      else if ((_CPLSilentLogging & 1) == 0)
      {
        v27 = sub_100003744();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v13;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%@ has no identifiable property", &buf, 0xCu);
        }
      }
    }

    v10 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
  }

  while (v10);
LABEL_25:

  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100049790;
  v46[3] = &unk_1002743B8;
  v28 = v8;
  v47 = v28;
  v29 = v9;
  v48 = v29;
  v30 = objc_retainBlock(v46);
  v31 = [[CKFetchShareParticipantsOperation alloc] initWithUserIdentityLookupInfos:v38];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v55 = 0x3032000000;
  v56 = sub_100004400;
  v57 = sub_1000052E4;
  v58 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(obj, "count")}];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10019A4D4;
  v43[3] = &unk_1002743E0;
  v32 = v30;
  v44 = v32;
  p_buf = &buf;
  [v31 setPerShareParticipantCompletionBlock:v43];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100049854;
  v39[3] = &unk_100274430;
  v39[4] = selfCopy;
  v40 = obj;
  v41 = blockCopy;
  v42 = &buf;
  [v31 setFetchShareParticipantsCompletionBlock:v39];
  [(CPLCloudKitTransportTask *)selfCopy launchOperation:v31 type:0 withContext:0];

  _Block_object_dispose(&buf, 8);
LABEL_27:
}

@end