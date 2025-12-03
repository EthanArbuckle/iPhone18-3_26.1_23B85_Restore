@interface MBServiceRestoreSession
+ (MBServiceRestoreSession)restoreSessionWithPropertyList:(id)list;
+ (id)currentRestoreSessionWithAccount:(id)account;
+ (void)clearCurrentRestoreSessionWithAccount:(id)account;
- (MBServiceRestoreSession)initWithPersonaIdentifier:(id)identifier;
- (MBServiceRestoreSession)initWithPropertyList:(id)list;
- (id)description;
- (id)propertyList;
- (void)saveAtPath:(id)path;
@end

@implementation MBServiceRestoreSession

+ (id)currentRestoreSessionWithAccount:(id)account
{
  persona = [account persona];
  v4 = [persona copyPreferencesValueForKey:@"RestoreSession" class:objc_opt_class()];

  if (v4)
  {
    v5 = [MBServiceRestoreSession restoreSessionWithPropertyList:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)clearCurrentRestoreSessionWithAccount:(id)account
{
  persona = [account persona];
  [persona setPreferencesValue:0 forKey:@"RestoreSession"];
}

+ (MBServiceRestoreSession)restoreSessionWithPropertyList:(id)list
{
  listCopy = list;
  v4 = [[MBServiceRestoreSession alloc] initWithPropertyList:listCopy];

  return v4;
}

- (MBServiceRestoreSession)initWithPersonaIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = MBServiceRestoreSession;
  v5 = [(MBServiceRestoreSession *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc_init(NSDate);
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [identifierCopy copy];
    personaIdentifier = v5->_personaIdentifier;
    v5->_personaIdentifier = v8;
  }

  return v5;
}

- (MBServiceRestoreSession)initWithPropertyList:(id)list
{
  listCopy = list;
  v22.receiver = self;
  v22.super_class = MBServiceRestoreSession;
  v5 = [(MBServiceRestoreSession *)&v22 init];
  if (v5)
  {
    v6 = [listCopy objectForKeyedSubscript:@"personaIdentifier"];
    personaIdentifier = v5->_personaIdentifier;
    v5->_personaIdentifier = v6;

    v8 = [listCopy objectForKeyedSubscript:@"backupUDID"];
    backupUDID = v5->_backupUDID;
    v5->_backupUDID = v8;

    v10 = [listCopy objectForKeyedSubscript:@"snapshotID"];
    v5->_snapshotID = [v10 unsignedIntegerValue];

    v11 = [listCopy objectForKeyedSubscript:@"snapshotUUID"];
    snapshotUUID = v5->_snapshotUUID;
    v5->_snapshotUUID = v11;

    v13 = [listCopy objectForKeyedSubscript:@"startDate"];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = objc_alloc_init(NSDate);
    }

    startDate = v5->_startDate;
    v5->_startDate = v15;

    v17 = [listCopy objectForKeyedSubscript:@"finishing"];
    v5->_finishing = [v17 BOOLValue];

    v18 = [listCopy objectForKeyedSubscript:@"cancelled"];
    v5->_cancelled = [v18 BOOLValue];

    v19 = [listCopy objectForKeyedSubscript:@"snapshotBackupPolicy"];
    v5->_snapshotBackupPolicy = [v19 integerValue];

    v20 = [listCopy objectForKeyedSubscript:@"telemetryID"];
    v5->_telemetryID = [v20 integerValue];
  }

  return v5;
}

- (id)propertyList
{
  if (!self->_backupUDID)
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"MBServiceRestoreSession.m" lineNumber:57 description:@"Backup UDID not set"];
  }

  if (![(MBServiceRestoreSession *)self snapshotID])
  {
    snapshotUUID = [(MBServiceRestoreSession *)self snapshotUUID];

    if (!snapshotUUID)
    {
      v5 = +[NSAssertionHandler currentHandler];
      [v5 handleFailureInMethod:a2 object:self file:@"MBServiceRestoreSession.m" lineNumber:58 description:@"Snapshot ID/UUID is not set"];
    }
  }

  if (!self->_startDate)
  {
    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"MBServiceRestoreSession.m" lineNumber:59 description:@"Start date is not set"];
  }

  v6 = [[NSMutableDictionary alloc] initWithCapacity:8];
  [v6 setObject:self->_personaIdentifier forKeyedSubscript:@"personaIdentifier"];
  [v6 setObject:self->_backupUDID forKeyedSubscript:@"backupUDID"];
  [v6 setObject:self->_snapshotUUID forKeyedSubscript:@"snapshotUUID"];
  v7 = [NSNumber numberWithUnsignedInteger:self->_snapshotID];
  [v6 setObject:v7 forKeyedSubscript:@"snapshotID"];

  [v6 setObject:self->_startDate forKeyedSubscript:@"startDate"];
  v8 = [NSNumber numberWithBool:self->_finishing];
  [v6 setObject:v8 forKeyedSubscript:@"finishing"];

  v9 = [NSNumber numberWithBool:self->_cancelled];
  [v6 setObject:v9 forKeyedSubscript:@"cancelled"];

  v10 = [NSNumber numberWithInteger:self->_snapshotBackupPolicy];
  [v6 setObject:v10 forKeyedSubscript:@"snapshotBackupPolicy"];

  v11 = [NSNumber numberWithUnsignedInteger:self->_telemetryID];
  [v6 setObject:v11 forKeyedSubscript:@"telemetryID"];

  return v6;
}

- (void)saveAtPath:(id)path
{
  pathCopy = path;
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v34 = pathCopy;
    v35 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Saving restore session at %@: %@", buf, 0x16u);
    selfCopy2 = self;
    _MBLog();
  }

  v6 = [NSMutableDictionary dictionaryWithContentsOfFile:pathCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = +[NSMutableDictionary dictionary];
  }

  v9 = v8;

  propertyList = [(MBServiceRestoreSession *)self propertyList];
  [v9 setObject:propertyList forKeyedSubscript:@"RestoreSession"];

  v11 = +[NSFileManager defaultManager];
  stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
  v32 = 0;
  v13 = [v11 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v32];
  v14 = v32;

  if ((v13 & 1) == 0)
  {
    v19 = MBIsInternalInstall();
    v20 = MBGetDefaultLog();
    v21 = v20;
    if (v19)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v34 = v14;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "Error creating restore session dir %@", buf, 0xCu);
LABEL_21:
        _MBLog();
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = v14;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Error creating restore session dir %@", buf, 0xCu);
      goto LABEL_21;
    }

    v28 = [[MBException alloc] initWithCode:1 format:{@"Error creating restore session dir %@", v14, selfCopy2}];
    goto LABEL_31;
  }

  v31 = 0;
  v15 = [NSPropertyListSerialization dataWithPropertyList:v9 format:200 options:0 error:&v31];
  v16 = v31;

  if (!v15)
  {
    v22 = MBIsInternalInstall();
    v23 = MBGetDefaultLog();
    v24 = v23;
    if (v22)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v34 = v16;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_FAULT, "Failed to serialize property list %@", buf, 0xCu);
LABEL_25:
        _MBLog();
      }
    }

    else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = v16;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to serialize property list %@", buf, 0xCu);
      goto LABEL_25;
    }

    v28 = [[MBException alloc] initWithCode:1 format:{@"Failed to serialize property list %@", v16, selfCopy2}];
    goto LABEL_31;
  }

  v30 = v16;
  v17 = [v15 writeToFile:pathCopy options:268435457 error:&v30];
  v18 = v30;

  if ((v17 & 1) == 0)
  {
    v25 = MBIsInternalInstall();
    v26 = MBGetDefaultLog();
    v27 = v26;
    if (v25)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v34 = v18;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_FAULT, "Failed to write property list %@", buf, 0xCu);
LABEL_29:
        _MBLog();
      }
    }

    else if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = v18;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to write property list %@", buf, 0xCu);
      goto LABEL_29;
    }

    v28 = [[MBException alloc] initWithCode:1 format:{@"Failed to write property list %@", v18, selfCopy2}];
LABEL_31:
    objc_exception_throw(v28);
  }
}

- (id)description
{
  v3 = objc_opt_class();
  backupUDID = self->_backupUDID;
  snapshotBackupPolicy = self->_snapshotBackupPolicy;
  return [NSString stringWithFormat:@"<%@: personaIdentifier=%@ backupUDID=%@, snapshotID=%u, snapshotUUID=%@, startDate=%@, finishing=%d, cancelled=%d, snapshotBackupPolicy=%lu telemetryID=%lu>", v3, self->_personaIdentifier, backupUDID, self->_snapshotID, self->_snapshotUUID, self->_startDate, self->_finishing, self->_cancelled, snapshotBackupPolicy, self->_telemetryID];
}

@end