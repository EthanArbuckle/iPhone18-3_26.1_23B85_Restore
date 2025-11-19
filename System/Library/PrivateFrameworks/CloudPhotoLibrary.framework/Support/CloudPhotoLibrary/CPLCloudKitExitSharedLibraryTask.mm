@interface CPLCloudKitExitSharedLibraryTask
+ (NSDictionary)exitStageMapping;
- (CPLCloudKitExitSharedLibraryTask)initWithController:(id)a3 cloudKitScope:(id)a4 scope:(id)a5 share:(id)a6 retentionPolicy:(int64_t)a7 exitType:(int64_t)a8 exitSource:(int64_t)a9 userIdentifiersToRemove:(id)a10 participantIDsToRemove:(id)a11 completionHandler:(id)a12;
- (id)initRemoveParticipantsWithController:(id)a3 cloudKitScope:(id)a4 scope:(id)a5 share:(id)a6 userIdentifiersToRemove:(id)a7 participantIDsToRemove:(id)a8 retentionPolicy:(int64_t)a9 exitSource:(int64_t)a10 completionHandler:(id)a11;
- (id)initSelfExitWithController:(id)a3 cloudKitScope:(id)a4 scope:(id)a5 share:(id)a6 retentionPolicy:(int64_t)a7 exitSource:(int64_t)a8 completionHandler:(id)a9;
- (void)_reallyExit;
- (void)runOperations;
@end

@implementation CPLCloudKitExitSharedLibraryTask

+ (NSDictionary)exitStageMapping
{
  if (qword_1002C5670 != -1)
  {
    sub_1001AEE98();
  }

  v3 = qword_1002C5668;

  return v3;
}

- (CPLCloudKitExitSharedLibraryTask)initWithController:(id)a3 cloudKitScope:(id)a4 scope:(id)a5 share:(id)a6 retentionPolicy:(int64_t)a7 exitType:(int64_t)a8 exitSource:(int64_t)a9 userIdentifiersToRemove:(id)a10 participantIDsToRemove:(id)a11 completionHandler:(id)a12
{
  v33 = a4;
  v32 = a5;
  v31 = a6;
  v19 = a10;
  v20 = a11;
  v21 = a12;
  v34.receiver = self;
  v34.super_class = CPLCloudKitExitSharedLibraryTask;
  v22 = [(CPLCloudKitTransportTask *)&v34 initWithController:a3];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_cloudKitScope, a4);
    objc_storeStrong(&v23->_scope, a5);
    objc_storeStrong(&v23->_share, a6);
    v23->_retentionPolicy = a7;
    v23->_exitType = a8;
    v23->_exitSource = a9;
    v24 = [v19 copy];
    userIdentifiersToRemove = v23->_userIdentifiersToRemove;
    v23->_userIdentifiersToRemove = v24;

    v26 = [v20 copy];
    participantIDsToRemove = v23->_participantIDsToRemove;
    v23->_participantIDsToRemove = v26;

    v28 = [v21 copy];
    completionHandler = v23->_completionHandler;
    v23->_completionHandler = v28;
  }

  return v23;
}

- (id)initSelfExitWithController:(id)a3 cloudKitScope:(id)a4 scope:(id)a5 share:(id)a6 retentionPolicy:(int64_t)a7 exitSource:(int64_t)a8 completionHandler:(id)a9
{
  v13 = a5;
  v14 = a9;
  v15 = a6;
  v16 = a4;
  v17 = a3;
  v26 = [v15 currentUserParticipant];
  v18 = [v15 owner];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000AD974;
  v27[3] = &unk_100276D68;
  v30 = v14;
  v31 = a2;
  v32 = 2 * (v26 == v18);
  v28 = self;
  v29 = v13;
  v19 = v13;
  v20 = v14;
  v21 = [(CPLCloudKitExitSharedLibraryTask *)v28 initWithController:v17 cloudKitScope:v16 scope:v19 share:v15 retentionPolicy:a7 exitType:v32 exitSource:a8 userIdentifiersToRemove:&__NSArray0__struct participantIDsToRemove:&__NSArray0__struct completionHandler:v27];

  return v21;
}

- (id)initRemoveParticipantsWithController:(id)a3 cloudKitScope:(id)a4 scope:(id)a5 share:(id)a6 userIdentifiersToRemove:(id)a7 participantIDsToRemove:(id)a8 retentionPolicy:(int64_t)a9 exitSource:(int64_t)a10 completionHandler:(id)a11
{
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000ADFC0;
  v21[3] = &unk_100273078;
  v22 = a11;
  v17 = v22;
  v18 = [(CPLCloudKitExitSharedLibraryTask *)self initWithController:a3 cloudKitScope:a4 scope:a5 share:a6 retentionPolicy:a9 exitType:1 exitSource:a10 userIdentifiersToRemove:a7 participantIDsToRemove:a8 completionHandler:v21];

  return v18;
}

- (void)_reallyExit
{
  v58 = 0;
  v3 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v58];
  v4 = v58;
  v5 = v4;
  if ((v3 & 1) == 0)
  {
    (*(self->_completionHandler + 2))();
    goto LABEL_52;
  }

  exitSource = self->_exitSource;
  if (exitSource == 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (exitSource == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v55 = v4;
    completionHandler = self->_completionHandler;
    v10 = +[CPLLibraryManager mappingExitSources];
    v11 = [NSNumber numberWithInteger:self->_exitSource];
    v12 = [v10 objectForKeyedSubscript:v11];
    v13 = v12;
    if (!v12)
    {
      v13 = [NSNumber numberWithInteger:self->_exitSource];
    }

    v14 = [CPLErrors cplErrorWithCode:50 description:@"%@ is not a valid exit source to request", v13];
    completionHandler[2](completionHandler, 0, v14);

    v5 = v55;
    if (!v12)
    {
    }

    goto LABEL_52;
  }

  if (!self->_cloudKitScope)
  {
    v15 = [(CPLEngineScope *)self->_scope scopeIdentifier];
    v16 = [(CPLCloudKitTransportTask *)self cloudKitScopeForScopeIdentifier:v15];
    cloudKitScope = self->_cloudKitScope;
    self->_cloudKitScope = v16;

    if (!self->_cloudKitScope)
    {
      sub_1001AF3A8(&self->_scope, self);
      goto LABEL_52;
    }
  }

  exitType = self->_exitType;
  if (exitType == 2)
  {
    v19 = [(CPLShare *)self->_share currentUserParticipant];
    v25 = [(CPLShare *)self->_share owner];
    v21 = v25;
    if (v19)
    {
      if (v19 == v25)
      {
        v22 = [v19 userIdentifier];
        v72 = v22;
        v23 = &v72;
        goto LABEL_29;
      }

      sub_1001AF138(self);
LABEL_62:
      v24 = 0;
      v5 = *buf;
LABEL_30:

      if (v24)
      {
        goto LABEL_31;
      }

      goto LABEL_24;
    }

LABEL_58:
    sub_1001AF208(self);
    goto LABEL_62;
  }

  if (exitType != 1)
  {
    if (exitType)
    {
      if (self->_participantIDsToRemove)
      {
        v54 = v8;
        v5 = 0;
        goto LABEL_34;
      }

      v51 = self->_completionHandler;
LABEL_56:
      v52 = +[CPLErrors unknownError];
      v51[2](v51, 0, v52);

      v5 = 0;
      goto LABEL_52;
    }

    v19 = [(CPLShare *)self->_share currentUserParticipant];
    v20 = [(CPLShare *)self->_share owner];
    v21 = v20;
    if (v19)
    {
      if (v19 != v20)
      {
        v22 = [v19 userIdentifier];
        v73 = v22;
        v23 = &v73;
LABEL_29:
        v24 = [NSArray arrayWithObjects:v23 count:1];

        v5 = 0;
        goto LABEL_30;
      }

      sub_1001AF2D8(self);
      goto LABEL_62;
    }

    goto LABEL_58;
  }

  v24 = self->_userIdentifiersToRemove;
  v5 = 0;
  if (v24)
  {
LABEL_31:
    v53 = v24;
    v54 = v8;
    v56 = v24;
    goto LABEL_35;
  }

LABEL_24:
  if (!self->_participantIDsToRemove)
  {
    v51 = self->_completionHandler;
    if (v5)
    {
      v51[2](v51, 0, v5);
      goto LABEL_52;
    }

    goto LABEL_56;
  }

  v54 = v8;
LABEL_34:
  v56 = 0;
  v53 = &__NSArray0__struct;
LABEL_35:
  v26 = +[NSUserDefaults standardUserDefaults];
  v27 = [v26 integerForKey:@"CPLSharedLibraryExitStopAtStage"];

  v28 = +[CPLCloudKitExitSharedLibraryTask exitStageMapping];
  v29 = [NSNumber numberWithInteger:v27];
  v30 = [v28 objectForKeyedSubscript:v29];

  if (v30)
  {
    if (v27)
    {
      if (_CPLSilentLogging)
      {
        v32 = v54;
        goto LABEL_46;
      }

      v31 = sub_100003BC8();
      v32 = v54;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [(CPLCloudKitScope *)self->_cloudKitScope zoneID];
        retentionPolicy = self->_retentionPolicy;
        v35 = self->_exitType;
        participantIDsToRemove = self->_participantIDsToRemove;
        *buf = 138413826;
        *&buf[4] = v33;
        v60 = 2048;
        v61 = retentionPolicy;
        v62 = 2048;
        v63 = v35;
        v64 = 2048;
        v65 = v54;
        v66 = 2112;
        v67 = v56;
        v68 = 2112;
        v69 = participantIDsToRemove;
        v70 = 2112;
        v71 = v30;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Exit shared library with zoneID %@ retention policy %ld exitType %ld exitSource %ld userIDs %@ participantIDs %@ [stop at %@]", buf, 0x48u);
      }

      goto LABEL_45;
    }
  }

  else
  {
    v37 = +[CPLCloudKitExitSharedLibraryTask exitStageMapping];
    v38 = [NSNumber numberWithInteger:0];
    v30 = [v37 objectForKeyedSubscript:v38];
  }

  v32 = v54;
  if (_CPLSilentLogging)
  {
    v27 = 0;
    goto LABEL_46;
  }

  v31 = sub_100003BC8();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v39 = [(CPLCloudKitScope *)self->_cloudKitScope zoneID];
    v40 = self->_retentionPolicy;
    v41 = self->_exitType;
    v42 = self->_participantIDsToRemove;
    *buf = 138413570;
    *&buf[4] = v39;
    v60 = 2048;
    v61 = v40;
    v62 = 2048;
    v63 = v41;
    v64 = 2048;
    v65 = v54;
    v66 = 2112;
    v67 = v56;
    v68 = 2112;
    v69 = v42;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Exit shared library with zoneID %@ retention policy %ld exitType %ld exitSource %ld userIDs %@ participantIDs %@", buf, 0x3Eu);
  }

  v27 = 0;
LABEL_45:

LABEL_46:
  v43 = [(CPLCloudKitScope *)self->_cloudKitScope zoneID];
  v44 = self->_retentionPolicy;
  v45 = 2 * (v44 == 2);
  v46 = v44 == 1;
  v47 = self->_exitType;
  v48 = self->_participantIDsToRemove;
  if (v46)
  {
    v49 = 1;
  }

  else
  {
    v49 = v45;
  }

  if (!v48)
  {
    v48 = &__NSArray0__struct;
  }

  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_1000AEA00;
  v57[3] = &unk_100276D90;
  v57[4] = self;
  v50 = [CPLCKPhotosSharedLibraryOperation exitSharedLibraryOperationWithZoneID:v43 retentionPolicy:v49 exitType:v47 exitSource:v32 stopAt:v27 participantUserIDsToRemove:v53 participantIDsToRemove:v48 completionHandler:v57];

  [(CPLCloudKitTransportTask *)self launchOperation:v50 type:CPLCloudKitOperationTypeForScope(self->_cloudKitScope) withContext:0];
LABEL_52:
}

- (void)runOperations
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000AEE7C;
  v2[3] = &unk_100274018;
  v2[4] = self;
  [(CPLCloudKitTransportTask *)self getUserRecordIDFetchIfNecessaryWithCompletionHandler:v2];
}

@end