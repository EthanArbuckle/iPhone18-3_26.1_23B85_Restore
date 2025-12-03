@interface DIControllerServiceDelegate
+ (BOOL)sendHandleToClient:(id)client clientConnection:(id)connection outError:(id *)error;
+ (BOOL)tryAttachWithParams:(id)params clientConnection:(id)connection outError:(id *)error;
- (BOOL)checkAttachEntitlementWithError:(id *)error;
- (BOOL)setupNewConnection:(id)connection;
- (id)convertWithParams:(id)params reply:(id)reply;
- (void)GUIAskForPassphraseWithEncryptionFrontend:(id)frontend usage:(int64_t)usage reply:(id)reply;
- (void)attachWithParams:(id)params reply:(id)reply;
- (void)createAndStoreInSystemKeychainWithCreator:(id)creator account:(id)account reply:(id)reply;
- (void)dupWithStderrHandle:(id)handle reply:(id)reply;
- (void)enterSandbox;
- (void)keychainUnlockWithEncryptionUnlocker:(id)unlocker reply:(id)reply;
- (void)retrieveStatsWithParams:(id)params reply:(id)reply;
- (void)verifyWithParams:(id)params reply:(id)reply;
@end

@implementation DIControllerServiceDelegate

+ (BOOL)sendHandleToClient:(id)client clientConnection:(id)connection outError:(id *)error
{
  clientCopy = client;
  connectionCopy = connection;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100014204;
  v19 = sub_100014214;
  v20 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001421C;
  v14[3] = &unk_100202A18;
  v14[4] = &v15;
  v9 = [connectionCopy synchronousRemoteObjectProxyWithErrorHandler:v14];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000143EC;
  v13[3] = &unk_100202A18;
  v13[4] = &v15;
  [v9 attachCompletedWithHandle:clientCopy reply:v13];
  v10 = v16[5];
  if (error && v10)
  {
    *error = v10;
    v10 = v16[5];
  }

  v11 = v10 == 0;

  _Block_object_dispose(&v15, 8);
  return v11;
}

+ (BOOL)tryAttachWithParams:(id)params clientConnection:(id)connection outError:(id *)error
{
  paramsCopy = params;
  connectionCopy = connection;
  v8 = 0;
  v9 = 0;
  while (1)
  {
    v10 = [[DIController2IO_XPCHandlerAttach alloc] initWithParams:paramsCopy];
    v41 = 0;
    v11 = [(DIController2IO_XPCHandlerAttach *)v10 runWithError:&v41];
    v12 = v41;
    if (v11)
    {
      v40 = v12;
      v13 = [DIControllerServiceDelegate sendHandleToClient:v11 clientConnection:connectionCopy outError:&v40];
      v14 = v40;

      v12 = v14;
      if ((v13 & 1) == 0)
      {
        break;
      }
    }

    [(DIBaseXPCHandler *)v10 closeConnection:v34];
    if (!v12)
    {

      v32 = 1;
      goto LABEL_40;
    }

    if ([(DIController2IO_XPCHandlerAttach *)v12 code]== 155 || [(DIController2IO_XPCHandlerAttach *)v12 code]== 151 || [(DIController2IO_XPCHandlerAttach *)v12 code]== 4097 || [(DIController2IO_XPCHandlerAttach *)v12 code]== 4099)
    {
      v15 = v9 + 1;
      if (v9 == 5)
      {
        goto LABEL_38;
      }

      if (v9)
      {
        v16 = *__error();
        if (sub_1000E044C())
        {
          v17 = sub_1000E03D8();
          os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
          *buf = 68158210;
          *&buf[4] = 77;
          v43 = 2080;
          v44 = "+[DIControllerServiceDelegate tryAttachWithParams:clientConnection:outError:]";
          v45 = 2114;
          v46 = v12;
          LODWORD(v35) = 28;
          v34 = buf;
          v18 = _os_log_send_and_compose_impl();

          if (v18)
          {
            fprintf(__stderrp, "%s\n", v18);
            free(v18);
          }
        }

        else
        {
          v22 = sub_1000E03D8();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 0x4D04100302;
            v43 = 2080;
            v44 = "+[DIControllerServiceDelegate tryAttachWithParams:clientConnection:outError:]";
            v45 = 2114;
            v46 = v12;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%.*s: Connection attempt failed: %{public}@, retrying", buf, 0x1Cu);
          }
        }

        *__error() = v16;
        usleep(0x7A120u);
        v8 = 0;
        v9 = v15;
      }

      else
      {
        v19 = *__error();
        if (sub_1000E044C())
        {
          v20 = sub_1000E03D8();
          os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
          *buf = 68158210;
          *&buf[4] = 77;
          v43 = 2080;
          v44 = "+[DIControllerServiceDelegate tryAttachWithParams:clientConnection:outError:]";
          v45 = 2114;
          v46 = v12;
          LODWORD(v35) = 28;
          v34 = buf;
          v21 = _os_log_send_and_compose_impl();

          if (v21)
          {
            fprintf(__stderrp, "%s\n", v21);
            free(v21);
          }
        }

        else
        {
          v23 = sub_1000E03D8();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68158210;
            *&buf[4] = 77;
            v43 = 2080;
            v44 = "+[DIControllerServiceDelegate tryAttachWithParams:clientConnection:outError:]";
            v45 = 2114;
            v46 = v12;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%.*s: First connection attempt failed: %{public}@, retrying", buf, 0x1Cu);
          }
        }

        *__error() = v19;
        usleep(0x186A0u);
        v8 = 0;
        v9 = 1;
      }
    }

    else
    {
      if ([(DIController2IO_XPCHandlerAttach *)v12 code]!= 170)
      {
LABEL_38:
        v14 = v12;
        break;
      }

      v24 = v8 + 1;
      if (v8 == 34)
      {
        v14 = [DIError errorWithEnumValue:159 verboseInfo:@"Timeout waiting for a completion of an ongoing eject"];

        break;
      }

      if (!v8)
      {
        v25 = *__error();
        if (sub_1000E044C())
        {
          v37 = v25;
          v36 = sub_1000E03D8();
          os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
          inputURL = [paramsCopy inputURL];
          path = [inputURL path];
          *buf = 68158211;
          *&buf[4] = 77;
          v43 = 2080;
          v44 = "+[DIControllerServiceDelegate tryAttachWithParams:clientConnection:outError:]";
          v45 = 2113;
          v46 = path;
          LODWORD(v35) = 28;
          v34 = buf;
          v28 = _os_log_send_and_compose_impl();

          v25 = v37;
          if (v28)
          {
            fprintf(__stderrp, "%s\n", v28);
            free(v28);
          }
        }

        else
        {
          v29 = sub_1000E03D8();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v38 = v25;
            inputURL2 = [paramsCopy inputURL];
            path2 = [inputURL2 path];
            *buf = 68158211;
            *&buf[4] = 77;
            v43 = 2080;
            v44 = "+[DIControllerServiceDelegate tryAttachWithParams:clientConnection:outError:]";
            v45 = 2113;
            v46 = path2;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%.*s: Waiting for completion of an ongoing eject of %{private}@", buf, 0x1Cu);

            v25 = v38;
          }
        }

        *__error() = v25;
      }

      sleep(1u);
      v8 = v24;
    }
  }

  v32 = [DIError failWithInError:v14 outError:error];
  v10 = v14;
LABEL_40:

  return v32;
}

- (BOOL)checkAttachEntitlementWithError:(id *)error
{
  v4 = +[NSXPCConnection currentConnection];
  v5 = [v4 valueForEntitlement:@"com.apple.diskimages.attach"];

  if (v5 && (objc_opt_respondsToSelector() & 1) != 0 && ([v5 BOOLValue] & 1) != 0)
  {
    v6 = *__error();
    if (sub_1000E044C())
    {
      v7 = sub_1000E03D8();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      *buf = 68157954;
      v14 = 63;
      v15 = 2080;
      v16 = "[DIControllerServiceDelegate checkAttachEntitlementWithError:]";
      v8 = _os_log_send_and_compose_impl();

      if (v8)
      {
        fprintf(__stderrp, "%s\n", v8);
        free(v8);
      }
    }

    else
    {
      v12 = sub_1000E03D8();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v14 = 63;
        v15 = 2080;
        v16 = "[DIControllerServiceDelegate checkAttachEntitlementWithError:]";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%.*s: Client is entitled to attach disk images", buf, 0x12u);
      }
    }

    *__error() = v6;
    v10 = 1;
  }

  else
  {
    v9 = [NSString stringWithFormat:@"Missing entitlement: %@", @"com.apple.diskimages.attach"];
    v10 = [DIError failWithEnumValue:158 verboseInfo:v9 error:error];
  }

  return v10;
}

- (void)attachWithParams:(id)params reply:(id)reply
{
  paramsCopy = params;
  replyCopy = reply;
  v17 = 0;
  v8 = [(DIControllerServiceDelegate *)self checkAttachEntitlementWithError:&v17];
  v9 = v17;
  if (v8)
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3032000000;
    v15[3] = sub_100014204;
    v15[4] = sub_100014214;
    v16 = +[NSXPCConnection currentConnection];
    dispatchQueue = [(DIBaseServiceDelegate *)self dispatchQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000151D0;
    v11[3] = &unk_100202A40;
    v12 = paramsCopy;
    v14 = v15;
    v13 = replyCopy;
    dispatch_async(dispatchQueue, v11);

    _Block_object_dispose(v15, 8);
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, v9);
  }
}

- (void)dupWithStderrHandle:(id)handle reply:(id)reply
{
  replyCopy = reply;
  LODWORD(handle) = [handle fileDescriptor];
  v6 = fileno(__stderrp);
  if (dup2(handle, v6) < 0)
  {
    v10 = [DIError errorWithEnumValue:154 verboseInfo:@"Error duplicating stderr"];
  }

  else
  {
    v7 = *__error();
    if (sub_1000E044C())
    {
      v8 = sub_1000E03D8();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      *buf = 68157954;
      v13 = 57;
      v14 = 2080;
      v15 = "[DIControllerServiceDelegate dupWithStderrHandle:reply:]";
      v9 = _os_log_send_and_compose_impl();

      if (v9)
      {
        fprintf(__stderrp, "%s\n", v9);
        free(v9);
      }
    }

    else
    {
      v11 = sub_1000E03D8();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v13 = 57;
        v14 = 2080;
        v15 = "[DIControllerServiceDelegate dupWithStderrHandle:reply:]";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%.*s: stderr duplicated", buf, 0x12u);
      }
    }

    v10 = 0;
    *__error() = v7;
  }

  replyCopy[2](replyCopy, v10);
}

- (id)convertWithParams:(id)params reply:(id)reply
{
  paramsCopy = params;
  replyCopy = reply;
  v22 = 0;
  v8 = [paramsCopy validateDeserializationWithError:&v22];
  v9 = v22;
  if (v8)
  {
    v10 = [[DIConvertManager alloc] initWithParams:paramsCopy];
    dispatchQueue = [(DIBaseServiceDelegate *)self dispatchQueue];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_10001560C;
    v18 = &unk_100202A68;
    v19 = v10;
    v20 = paramsCopy;
    v21 = replyCopy;
    v12 = v10;
    dispatch_async(dispatchQueue, &v15);

    v13 = [(DIConvertManager *)v12 progress:v15];
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, v9);
    v13 = [NSProgress progressWithTotalUnitCount:100];
  }

  return v13;
}

- (void)verifyWithParams:(id)params reply:(id)reply
{
  paramsCopy = params;
  replyCopy = reply;
  dispatchQueue = [(DIBaseServiceDelegate *)self dispatchQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000157B8;
  v11[3] = &unk_100202A90;
  v12 = paramsCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = paramsCopy;
  dispatch_async(dispatchQueue, v11);
}

- (void)keychainUnlockWithEncryptionUnlocker:(id)unlocker reply:(id)reply
{
  unlockerCopy = unlocker;
  replyCopy = reply;
  dispatchQueue = [(DIBaseServiceDelegate *)self dispatchQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000159B0;
  v11[3] = &unk_100202A90;
  v12 = unlockerCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = unlockerCopy;
  dispatch_async(dispatchQueue, v11);
}

- (void)GUIAskForPassphraseWithEncryptionFrontend:(id)frontend usage:(int64_t)usage reply:(id)reply
{
  frontendCopy = frontend;
  replyCopy = reply;
  dispatchQueue = [(DIBaseServiceDelegate *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015BC4;
  block[3] = &unk_100202AB8;
  v15 = replyCopy;
  usageCopy = usage;
  v14 = frontendCopy;
  v11 = replyCopy;
  v12 = frontendCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)createAndStoreInSystemKeychainWithCreator:(id)creator account:(id)account reply:(id)reply
{
  creatorCopy = creator;
  accountCopy = account;
  replyCopy = reply;
  dispatchQueue = [(DIBaseServiceDelegate *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015DF8;
  block[3] = &unk_100202A68;
  v16 = creatorCopy;
  v17 = accountCopy;
  v18 = replyCopy;
  v12 = replyCopy;
  v13 = accountCopy;
  v14 = creatorCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)retrieveStatsWithParams:(id)params reply:(id)reply
{
  paramsCopy = params;
  replyCopy = reply;
  dispatchQueue = [(DIBaseServiceDelegate *)self dispatchQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100016008;
  v11[3] = &unk_100202A90;
  v12 = paramsCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = paramsCopy;
  dispatch_async(dispatchQueue, v11);
}

- (BOOL)setupNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DIControllerProtocol];
  [connectionCopy setExportedInterface:v5];

  [connectionCopy setExportedObject:self];
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DIController2ClientProtocol];
  [connectionCopy setRemoteObjectInterface:v6];

  [connectionCopy setInterruptionHandler:&stru_100202B20];
  [connectionCopy setInvalidationHandler:&stru_100202B40];

  return 1;
}

- (void)enterSandbox
{
  _set_user_dir_suffix();
  v3.receiver = self;
  v3.super_class = DIControllerServiceDelegate;
  [(DIBaseServiceDelegate *)&v3 enterSandbox];
}

@end