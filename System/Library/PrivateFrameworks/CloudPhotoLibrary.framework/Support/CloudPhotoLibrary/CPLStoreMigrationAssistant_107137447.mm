@interface CPLStoreMigrationAssistant_107137447
- (BOOL)performMigrationWithError:(id *)error;
- (CPLStoreMigrationAssistant_107137447)initWithStore:(id)store;
@end

@implementation CPLStoreMigrationAssistant_107137447

- (CPLStoreMigrationAssistant_107137447)initWithStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = CPLStoreMigrationAssistant_107137447;
  v6 = [(CPLStoreMigrationAssistant_107137447 *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
  }

  return v7;
}

- (BOOL)performMigrationWithError:(id *)error
{
  scopes = [(CPLEngineStore *)self->_store scopes];
  platformObject = [(CPLEngineStore *)self->_store platformObject];
  primaryScope = [scopes primaryScope];
  if (!primaryScope)
  {
    goto LABEL_17;
  }

  if ([scopes valueForFlag:16 forScope:primaryScope])
  {
    goto LABEL_17;
  }

  v8 = [scopes sharingScopeForScope:primaryScope];
  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = v8;
  v10 = [scopes initialSyncAnchorForScope:primaryScope];
  if (!v10)
  {

LABEL_17:
    v23 = 0;
    v24 = 1;
    goto LABEL_18;
  }

  v11 = v10;
  platformObject2 = [scopes platformObject];
  v13 = [platformObject2 creationDateForScope:primaryScope];
  v14 = [platformObject2 creationDateForScope:v9];
  v15 = +[NSUserDefaults standardUserDefaults];
  [v15 doubleForKey:@"CPLRewindForSparseRecordsInterval"];
  v17 = v16;

  v33 = v14;
  if (!v13 || !v14)
  {
    goto LABEL_12;
  }

  if (v17 <= 0.0)
  {
    v17 = 86400.0;
  }

  [v14 timeIntervalSinceDate:v13];
  if (v18 < 0.0)
  {
    v18 = -v18;
  }

  if (v18 >= v17)
  {
    v23 = 0;
    v24 = 1;
  }

  else
  {
LABEL_12:
    v32 = v13;
    v19 = [scopes scopeChangeForScope:primaryScope];
    if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v31 = platformObject2;
      rewindAnchorsPerSharingScopes = [v19 rewindAnchorsPerSharingScopes];
      scopeIdentifier = [v9 scopeIdentifier];
      v22 = [rewindAnchorsPerSharingScopes objectForKeyedSubscript:scopeIdentifier];

      if (v22)
      {
        v23 = 0;
        v24 = 1;
      }

      else
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v26 = sub_10016B2AC();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "User has a Sharing scope likely present during initial download but Primary Scope does not know when it was created. Triggering an anchor reset sync", buf, 2u);
          }
        }

        [platformObject recordUpgradeEvent:@"Triggering anchor reset sync for shared library user to account for missing rewind anchors"];
        v35 = 0;
        v27 = [scopes resetSyncAnchorForScope:primaryScope error:&v35];
        v28 = v35;
        v23 = v28;
        if (v27)
        {
          v34 = v28;
          v24 = [scopes setInitialSyncAnchor:0 forScope:primaryScope error:&v34];
          v29 = v34;

          v23 = v29;
        }

        else
        {
          v24 = 0;
        }
      }

      platformObject2 = v31;
    }

    else
    {
      v23 = 0;
      v24 = 1;
    }

    v13 = v32;
  }

  if (error && (v24 & 1) == 0)
  {
    v30 = v23;
    v24 = 0;
    *error = v23;
  }

LABEL_18:

  return v24;
}

@end