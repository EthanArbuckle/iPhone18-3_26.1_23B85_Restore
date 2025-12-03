@interface MBService
+ (id)backupUDIDForPath:(id)path;
- (MBService)initWithAccount:(id)account;
- (id)_sendRequestWithMethod:(id)method path:(id)path message:(id)message responseClass:(Class)class lastModified:(int64_t *)modified error:(id *)error;
- (id)_sendRequestWithMethod:(id)method path:(id)path requestBody:(id)body lastModified:(int64_t *)modified error:(id *)error;
- (id)backupForUDID:(id)d lastModified:(int64_t *)modified error:(id *)error;
- (void)dealloc;
@end

@implementation MBService

- (MBService)initWithAccount:(id)account
{
  v6.receiver = self;
  v6.super_class = MBService;
  v4 = [(MBService *)&v6 init];
  if (v4)
  {
    v4->_account = account;
    v4->_locksByBackupUDID = objc_alloc_init(NSMutableDictionary);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MBService;
  [(MBService *)&v3 dealloc];
}

+ (id)backupUDIDForPath:(id)path
{
  v3 = [path componentsSeparatedByString:@"/"];
  if ([v3 count] < 4)
  {
    return 0;
  }

  return [v3 objectAtIndexedSubscript:3];
}

- (id)_sendRequestWithMethod:(id)method path:(id)path requestBody:(id)body lastModified:(int64_t *)modified error:(id *)error
{
  pathCopy = path;
  v49 = 0;
  v50 = 0;
  v11 = [MBService backupUDIDForPath:path];
  v12 = [(MBService *)self lockForBackupUDID:v11];
  if (MBShouldInjectError())
  {
LABEL_2:
    if (!error)
    {
      return 0;
    }

    v13 = MBError;
    v14 = @"Simulated error before service request";
  }

  else
  {
    v16 = 3;
    v17 = MBError_ptr;
    methodCopy = method;
    v44 = v11;
    selfCopy = self;
    while (1)
    {
      v18 = [MBURLRequest requestWithMethod:method URL:[NSURL URLWithString:[(NSString *)[(NSURL *)[(MBServiceAccount *)self->_account serviceURL] absoluteString] stringByAppendingString:pathCopy]]];
      [(MBURLRequest *)v18 setValue:[(MBServiceAccount *)self->_account clientInfoHeader] forHeader:@"X-MMe-Client-Info"];
      [(MBURLRequest *)v18 setValue:MBRandomUUID() forHeader:@"X-Apple-Request-UUID"];
      [(MBURLRequest *)v18 setValue:@"2.2" forHeader:@"X-Apple-MBS-Protocol-Version"];
      [(MBURLRequest *)v18 setValue:@"application/vnd.com.apple.mbs+protobuf" forHeader:@"Accept"];
      if (body)
      {
        [(MBURLRequest *)v18 setValue:@"application/vnd.com.apple.mbs+protobuf" forHeader:@"Content-Type"];
      }

      if (v12)
      {
        if ([v12 state])
        {
          if ([v12 state] == 1)
          {
            v19 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Hold %@", [v12 owner], v40, v41);
          }

          else
          {
            if ([v12 state] != 2)
            {
              -[NSAssertionHandler handleFailureInMethod:object:file:lineNumber:description:](+[NSAssertionHandler currentHandler](NSAssertionHandler, "currentHandler"), "handleFailureInMethod:object:file:lineNumber:description:", a2, self, @"MBService.m", 102, @"Invalid state: %d", [v12 state]);
            }

            v19 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Release %@", [v12 owner], v40, v41);
          }
        }

        else
        {
          v20 = v17;
          v21 = pathCopy;
          if ([v12 type])
          {
            v22 = @"Restore";
          }

          else
          {
            v22 = @"Backup";
          }

          v39 = v22;
          pathCopy = v21;
          v17 = v20;
          v11 = v44;
          self = selfCopy;
          v19 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Acquire %@ %@; timeout=%d", v39, [v12 owner], (objc_msgSend(v12, "timeout") / 60));
        }

        [(MBURLRequest *)v18 setValue:v19 forHeader:@"X-Apple-MBS-Lock"];
        method = methodCopy;
      }

      [(MBURLRequest *)v18 setData:body];
      [(MBURLRequest *)v18 setMMePreAuth:1];
      if (self->_cancelled)
      {
        v23 = [*v17 errorWithCode:202 format:@"Service request cancelled"];
        v15 = 0;
        v50 = v23;
      }

      else
      {
        v15 = [MBURLConnection sendSyncRequest:v18 properties:0 connection:&self->_connection response:&v49 error:&v50];
        v23 = v50;
      }

      v24 = [*v17 errorForHTTPURLResponse:v49 error:v23];
      v50 = v24;
      if (!v24)
      {
        break;
      }

      if ([*v17 isError:v24 withCode:305] && +[MBKeyBag wasDeviceUnlockedSinceBoot](MBKeyBag, "wasDeviceUnlockedSinceBoot"))
      {
        [(MBServiceAccount *)self->_account renewCredentials];
      }

      if (!--v16)
      {
        goto LABEL_56;
      }

      if ([*v17 isError:v50 withCode:307])
      {
        v25 = MBGetDefaultLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Updating account after an Account-Moved response from service", buf, 2u);
          _MBLog();
        }

        updateAppleAccountSync = [(MBServiceAccount *)self->_account updateAppleAccountSync];
        if (updateAppleAccountSync)
        {
          v50 = [*v17 errorWithCode:300 error:updateAppleAccountSync format:@"Error updating account after Account-Moved response"];
          goto LABEL_56;
        }
      }

      else
      {
        if (![*v17 isError:v50 withCode:13])
        {
          goto LABEL_56;
        }

        v27 = MBGetDefaultLog();
        v28 = v27;
        if (!v11)
        {
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v52 = pathCopy;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Locked response for a path without a backup: %@", buf, 0xCu);
            goto LABEL_55;
          }

LABEL_56:
          if (!error)
          {
            return 0;
          }

          v15 = 0;
          *error = v50;
          return v15;
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Attempting to re-acquire lock after a Locked response from service", buf, 2u);
          _MBLog();
        }

        v29 = [(MBService *)self lockForBackupUDID:v11];
        [(MBService *)self setLock:[MBSLock forBackupUDID:"lockWithState:type:timeout:" lockWithState:0 type:0 timeout:?], v11];
        v48 = 0;
        if (![(MBService *)self backupForUDID:v11 lastModified:0 error:&v48])
        {
          v31 = MBGetDefaultLog();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = [*v17 descriptionForError:v48];
            *buf = 138412290;
            v52 = v32;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Attempt to re-acquire lock failed: %@", buf, 0xCu);
            [*v17 descriptionForError:v48];
LABEL_55:
            _MBLog();
          }

          goto LABEL_56;
        }

        if ([v29 state] == 1)
        {
          [v29 setState:0];
        }

        [(MBService *)self setLock:v29 forBackupUDID:v11];
      }

      if (MBShouldInjectError())
      {
        goto LABEL_2;
      }
    }

    if (!MBShouldInjectError())
    {
      if (v12)
      {
        state = [v12 state];
        switch(state)
        {
          case 2u:
            [(MBService *)self removeLockForBackupUDID:v11];
            break;
          case 1u:
            [self->_delegate serviceDidHoldLock:self];
            break;
          case 0u:
            [v12 setState:1];
            break;
        }
      }

      if (modified)
      {
        v34 = [objc_msgSend(v49 "allHeaderFields")];
        if (v34)
        {
          [objc_msgSend(MBHTTPDateFormatter() dateFromString:{v34), "timeIntervalSince1970"}];
          v36 = v35;
        }

        else
        {
          v36 = 0;
        }

        *modified = v36;
      }

      v37 = [objc_msgSend(v49 "allHeaderFields")];
      if (v37)
      {
        [v37 doubleValue];
        if (v38 > 0.0)
        {
          self->_protocolVersion = v38;
        }
      }

      return v15;
    }

    if (!error)
    {
      return 0;
    }

    v13 = *v17;
    v14 = @"Simulated error after service request";
  }

  v15 = 0;
  *error = [v13 errorWithCode:1 format:v14];
  return v15;
}

- (id)_sendRequestWithMethod:(id)method path:(id)path message:(id)message responseClass:(Class)class lastModified:(int64_t *)modified error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  v15 = objc_alloc_init(NSAutoreleasePool);
  if (message)
  {
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      selfCopy3 = self;
      v31 = 2112;
      messageCopy = message;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%@: %@", buf, 0x16u);
      selfCopy2 = self;
      messageCopy2 = message;
      _MBLog();
    }
  }

  v17 = -[MBService _sendRequestWithMethod:path:requestBody:lastModified:error:](self, "_sendRequestWithMethod:path:requestBody:lastModified:error:", method, path, [message data], modified, error);
  if (!v17)
  {
    v19 = 0;
LABEL_13:
    if (!error)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if (class)
  {
    v18 = [[class alloc] initWithData:v17];
    if (v18)
    {
      v19 = v18;
      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        selfCopy3 = self;
        v31 = 2112;
        messageCopy = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%@: %@", buf, 0x16u);
        selfCopy4 = self;
        v28 = v19;
        _MBLog();
        if (!error)
        {
          goto LABEL_21;
        }

        goto LABEL_16;
      }

      goto LABEL_13;
    }

    if (error)
    {
      v21 = [MBError errorWithCode:309 format:@"Invalid response message"];
      v19 = 0;
      *error = v21;
      goto LABEL_17;
    }

    v19 = 0;
LABEL_21:
    [v15 drain];
    return v19;
  }

  v19 = objc_alloc_init(NSObject);
  if (!error)
  {
    goto LABEL_21;
  }

LABEL_16:
  v21 = *error;
LABEL_17:
  v22 = v21;
  [v15 drain];
  v23 = *error;
  return v19;
}

- (id)backupForUDID:(id)d lastModified:(int64_t *)modified error:(id *)error
{
  if (modified)
  {
    *modified = 0;
  }

  error = [(MBService *)self _sendRequestWithMethod:@"GET" path:[NSString stringWithFormat:?], 0, objc_opt_class(), modified, error];
  v9 = error;
  if (error)
  {
    if (modified && !*modified)
    {
      if (!error)
      {
        return 0;
      }

      dCopy = [MBError errorWithCode:304 format:@"Missing Last-Modified header for backup %@", d, dCopy];
      goto LABEL_20;
    }

    [objc_msgSend(error "snapshots")];
    if ([v9 snapshotsCount])
    {
      v10 = 0;
      while (1)
      {
        v11 = [objc_msgSend(v9 "snapshots")];
        if (![v11 snapshotID])
        {
          if (!error)
          {
            return 0;
          }

          v13 = @"Snapshot ID is zero";
          goto LABEL_19;
        }

        if (![v11 committed] && v10 != objc_msgSend(v9, "snapshotsCount") - 1)
        {
          break;
        }

        if (++v10 >= [v9 snapshotsCount])
        {
          return v9;
        }
      }

      if (!error)
      {
        return 0;
      }

      snapshotID = [v11 snapshotID];
      dCopy = d;
      v13 = @"Snapshot %lu is uncommitted but isn't the last snapshot (%@)";
LABEL_19:
      dCopy = [MBError errorWithCode:205 format:v13, snapshotID, dCopy];
LABEL_20:
      v9 = 0;
      *error = dCopy;
    }
  }

  return v9;
}

@end