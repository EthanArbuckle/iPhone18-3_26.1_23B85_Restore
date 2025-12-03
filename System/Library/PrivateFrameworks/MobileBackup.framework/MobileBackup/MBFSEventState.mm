@interface MBFSEventState
+ (id)stateForVolumeMountPoints:(id)points error:(id *)error;
- (MBFSEventState)initWithDictionaryRepresentation:(id)representation;
- (id)dictionaryRepresentation;
@end

@implementation MBFSEventState

- (MBFSEventState)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v25.receiver = self;
  v25.super_class = MBFSEventState;
  v5 = [(MBFSEventState *)&v25 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"dateCreated"];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_dateCreated, v6);
        v7 = [representationCopy objectForKeyedSubscript:@"eventId"];
        if (v7)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_storeStrong(&v5->_eventId, v7);
            v8 = [representationCopy objectForKeyedSubscript:@"eventDatabaseUUIDForVolumeUUID"];
            if (v8)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v23 = 0u;
                v24 = 0u;
                v21 = 0u;
                v22 = 0u;
                v19 = v8;
                v9 = v8;
                v10 = [(NSDictionary *)v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
                if (v10)
                {
                  v11 = v10;
                  v20 = *v22;
                  while (2)
                  {
                    v12 = 0;
                    do
                    {
                      if (*v22 != v20)
                      {
                        objc_enumerationMutation(v9);
                      }

                      v13 = *(*(&v21 + 1) + 8 * v12);
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0 || ([(NSDictionary *)v9 objectForKeyedSubscript:v13], v14 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v14, (isKindOfClass & 1) == 0))
                      {

                        v8 = v19;
                        goto LABEL_20;
                      }

                      v12 = v12 + 1;
                    }

                    while (v11 != v12);
                    v11 = [(NSDictionary *)v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
                    if (v11)
                    {
                      continue;
                    }

                    break;
                  }
                }

                eventDatabaseUUIDForVolumeUUID = v5->_eventDatabaseUUIDForVolumeUUID;
                v5->_eventDatabaseUUIDForVolumeUUID = v9;

                goto LABEL_18;
              }
            }

LABEL_20:
          }
        }
      }
    }

    v17 = 0;
    goto LABEL_23;
  }

LABEL_18:
  v17 = v5;
LABEL_23:

  return v17;
}

- (id)dictionaryRepresentation
{
  v2 = *&self->_dateCreated;
  v5[0] = @"dateCreated";
  v5[1] = @"eventId";
  v6 = v2;
  v5[2] = @"eventDatabaseUUIDForVolumeUUID";
  eventDatabaseUUIDForVolumeUUID = self->_eventDatabaseUUIDForVolumeUUID;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:v5 count:3];

  return v3;
}

+ (id)stateForVolumeMountPoints:(id)points error:(id *)error
{
  pointsCopy = points;
  v6 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = pointsCopy;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v28 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v27 + 1) + 8 * v11);
      v13 = [MBFileSystemManager volumeUUIDWithVolumeMountPoint:v12 error:error];
      if (!v13)
      {
        goto LABEL_19;
      }

      v14 = v13;
      memset(&v31, 0, sizeof(v31));
      if (stat([v12 fileSystemRepresentation], &v31))
      {
        break;
      }

      st_dev = v31.st_dev;
      v16 = FSEventsCopyUUIDForDevice(v31.st_dev);
      if (!v16)
      {
        if (error)
        {
          st_dev = [MBError errorWithCode:4 format:@"FSEventsCopyUUIDForDevice returned nil for device %d", st_dev];
LABEL_17:
          *error = st_dev;
        }

        goto LABEL_18;
      }

      v17 = v16;
      v18 = CFUUIDCreateString(0, v16);
      CFRelease(v17);
      uUIDString = [v14 UUIDString];
      [v6 setObject:v18 forKeyedSubscript:uUIDString];

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    v24 = __error();
    if (error)
    {
      st_dev = [MBError errorWithErrno:*v24 path:v12 format:@"stat error"];
      goto LABEL_17;
    }

LABEL_18:

LABEL_19:
    v20 = 0;
    v23 = v7;
    goto LABEL_20;
  }

LABEL_11:

  v20 = objc_opt_new();
  v21 = +[NSDate now];
  [v20 setDateCreated:v21];

  v22 = [NSNumber numberWithUnsignedLongLong:FSEventsGetCurrentEventId()];
  [v20 setEventId:v22];

  [v20 setEventDatabaseUUIDForVolumeUUID:v6];
  v23 = MBGetDefaultLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v31.st_dev = 138412290;
    *&v31.st_mode = v20;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Loaded FSEvent state %@", &v31, 0xCu);
    _MBLog();
  }

LABEL_20:

  return v20;
}

@end