@interface IDSDXPCDaemon
- (IDSDXPCDaemon)initWithQueue:(id)a3 syncOntoMain:(BOOL)a4 collaboratorProvider:(id)a5 takingOverAndResumingConnection:(id)a6;
- (void)activateWithCompletion:(id)a3;
- (void)activityMonitorCollaboratorWithCompletion:(id)a3;
- (void)baaSignerCollaboratorForTopic:(id)a3 withCompletion:(id)a4;
- (void)diagnosticHandlingCollaboratorWithCompletion:(id)a3;
- (void)eventReportingCollaboratorWithCompletion:(id)a3;
- (void)featureTogglerForService:(id)a3 withCompletion:(id)a4;
- (void)firewallCollaboratorForService:(id)a3 withCompletion:(id)a4;
- (void)groupSessionKeyValueDeliveryProviderCollaboratorWithCompletion:(id)a3;
- (void)interalTestingCollaboratorWithCompletion:(id)a3;
- (void)keyTransparencyCollaboratorWithCompletion:(id)a3;
- (void)offGridMessengerCollaboratorWithCompletion:(id)a3;
- (void)offGridStateManagerCollaboratorWithCompletion:(id)a3;
- (void)opportunisticCollaboratorWithCompletion:(id)a3;
- (void)pairedDeviceManagerCollaboratorWithCompletion:(id)a3;
- (void)pairingCollaboratorWithCompletion:(id)a3;
- (void)phoneNumberCredentialVendorCollaboratorWithCompletion:(id)a3;
- (void)pinnedIdentityCollaboratorWithCompletion:(id)a3;
- (void)registrationCollaboratorWithCompletion:(id)a3;
- (void)reunionSyncCollaboratorForClientProcessName:(id)a3 withCompletion:(id)a4;
- (void)serverMessagingCollaboratorWithCompletion:(id)a3;
@end

@implementation IDSDXPCDaemon

- (IDSDXPCDaemon)initWithQueue:(id)a3 syncOntoMain:(BOOL)a4 collaboratorProvider:(id)a5 takingOverAndResumingConnection:(id)a6
{
  v8 = a4;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  dispatch_assert_queue_V2(v11);
  v22.receiver = self;
  v22.super_class = IDSDXPCDaemon;
  v14 = [(IDSDXPCDaemon *)&v22 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_queue, a3);
    v16 = +[IDSXPCDaemonInterface interface];
    [v13 setExportedInterface:v16];

    [v13 setExportedObject:v15];
    [v13 invalidationHandler];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100590DE4;
    v21 = v20[3] = &unk_100BD7270;
    v17 = v21;
    [v13 setInvalidationHandler:v20];
    objc_storeStrong(&v15->_collaboratorProvider, a5);
    v18 = [[IDSXPCConnection alloc] initWithQueue:v11 syncOntoMain:v8 takingOverAndResumingConnection:v13];
    [(IDSDXPCDaemon *)v15 setClientConnection:v18];
  }

  return v15;
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[IDSFoundationLog xpc];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Activating {xpcDaemon: %{public}@}", &v6, 0xCu);
  }

  if (v4)
  {
    v4[2](v4, 0);
  }
}

- (void)pairingCollaboratorWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IDSDXPCDaemon *)self clientConnection];
  v6 = kIDSLocalPairingAPIEntitlement;
  v7 = [v5 hasEntitlement:kIDSLocalPairingAPIEntitlement];

  if (v7)
  {
    v8 = [(IDSDXPCDaemon *)self collaboratorProvider];
    v9 = [v8 pairingCollaboratorForXPCDaemon:self];

    v10 = +[IDSFoundationLog xpc];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543618;
      v19 = self;
      v20 = 2114;
      v21 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "clientConneciton has pairing entitlement -- returning pairing collaborator {xpcDaemon: %{public}@, collaborator: %{public}@}", &v18, 0x16u);
    }

    if (v4)
    {
      v4[2](v4, v9, 0);
    }

    goto LABEL_10;
  }

  v11 = +[IDSFoundationLog xpc];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_10092A0D0(self, v11, v12, v13, v14, v15, v16, v17);
  }

  if (v4)
  {
    v9 = [IDSXPCConnection errorForMissingEntitlement:v6];
    (v4)[2](v4, 0, v9);
LABEL_10:
  }
}

- (void)pairedDeviceManagerCollaboratorWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IDSDXPCDaemon *)self collaboratorProvider];
  v6 = [v5 pairedDeviceManagerCollaboratorForXPCDaemon:self];

  v7 = +[IDSFoundationLog xpc];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = self;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Get pairingDeviceManager collaborator {xpcDaemon: %{public}@, collaborator: %{public}@", &v8, 0x16u);
  }

  v4[2](v4, v6, 0);
}

- (void)reunionSyncCollaboratorForClientProcessName:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSDXPCDaemon *)self reunionSyncCollaborator];

  if (v8)
  {
LABEL_6:
    v15 = [(IDSDXPCDaemon *)self reunionSyncCollaborator];
    v7[2](v7, v15, 0);
LABEL_7:

    goto LABEL_8;
  }

  v9 = [(IDSDXPCDaemon *)self clientConnection];
  v10 = [v9 hasEntitlement:kIDSLocalPairingEntitlement];

  v11 = +[IDSFoundationLog xpc];
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138543362;
      v23 = self;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "clientConnection has local pairing entitlement -- continue {xpcDaemon: %{public}@}", &v22, 0xCu);
    }

    v13 = [(IDSDXPCDaemon *)self collaboratorProvider];
    v14 = [v13 reunionSyncCollaboratorWithClientProcessName:v6 forXPCDaemon:self];
    [(IDSDXPCDaemon *)self setReunionSyncCollaborator:v14];

    goto LABEL_6;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_10092A13C(self, v12, v16, v17, v18, v19, v20, v21);
  }

  if (v7)
  {
    v15 = [IDSXPCConnection errorForMissingEntitlement:kIDSLocalPairingAPIEntitlement];
    (v7)[2](v7, 0, v15);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)opportunisticCollaboratorWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IDSDXPCDaemon *)self collaboratorProvider];
  v6 = [v5 opportunisticCollaboratorForXPCDaemon:self];

  v4[2](v4, v6, 0);
}

- (void)registrationCollaboratorWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IDSDXPCDaemon *)self collaboratorProvider];
  v6 = [v5 registrationCollaboratorForXPCDaemon:self];

  v4[2](v4, v6, 0);
}

- (void)activityMonitorCollaboratorWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(IDSDXPCDaemon *)self collaboratorProvider];
  v5 = [v4 activityMonitorCollaboratorForXPCDaemon:self];

  if (v5)
  {
    v7[2](v7, v5, 0);
  }

  else
  {
    v6 = [NSError errorWithDomain:IDSXPCConnectionErrorDomain code:-2000 userInfo:0];
    (v7)[2](v7, 0, v6);
  }
}

- (void)serverMessagingCollaboratorWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(IDSDXPCDaemon *)self collaboratorProvider];
  v5 = [v4 serverMessagingCollaboratorForXPCDaemon:self];

  if (v5)
  {
    v7[2](v7, v5, 0);
  }

  else
  {
    v6 = [NSError errorWithDomain:IDSXPCConnectionErrorDomain code:-2000 userInfo:0];
    (v7)[2](v7, 0, v6);
  }
}

- (void)offGridMessengerCollaboratorWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(IDSDXPCDaemon *)self collaboratorProvider];
  v5 = [v4 offGridMessengerCollaboratorForXPCDaemon:self];

  if (v5)
  {
    v7[2](v7, v5, 0);
  }

  else
  {
    v6 = [NSError errorWithDomain:IDSXPCConnectionErrorDomain code:-2000 userInfo:0];
    (v7)[2](v7, 0, v6);
  }
}

- (void)offGridStateManagerCollaboratorWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(IDSDXPCDaemon *)self collaboratorProvider];
  v5 = [v4 offGridStateManagerCollaboratorForXPCDaemon:self];

  if (v5)
  {
    v7[2](v7, v5, 0);
  }

  else
  {
    v6 = [NSError errorWithDomain:IDSXPCConnectionErrorDomain code:-2000 userInfo:0];
    (v7)[2](v7, 0, v6);
  }
}

- (void)keyTransparencyCollaboratorWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(IDSDXPCDaemon *)self collaboratorProvider];
  v5 = [v4 keyTransparencyCollaboratorForXPCDaemon:self];

  if (v5)
  {
    v7[2](v7, v5, 0);
  }

  else
  {
    v6 = [NSError errorWithDomain:IDSXPCConnectionErrorDomain code:-2000 userInfo:0];
    (v7)[2](v7, 0, v6);
  }
}

- (void)pinnedIdentityCollaboratorWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(IDSDXPCDaemon *)self collaboratorProvider];
  v5 = [v4 pinnedIdentityCollaboratorForXPCDaemon:self];

  if (v5)
  {
    v7[2](v7, v5, 0);
  }

  else
  {
    v6 = [NSError errorWithDomain:IDSXPCConnectionErrorDomain code:-2000 userInfo:0];
    (v7)[2](v7, 0, v6);
  }
}

- (void)phoneNumberCredentialVendorCollaboratorWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(IDSDXPCDaemon *)self collaboratorProvider];
  v5 = [v4 phoneNumberCredentialVendorCollaboratorForXPCDaemon:self];

  if (v5)
  {
    v7[2](v7, v5, 0);
  }

  else
  {
    v6 = [NSError errorWithDomain:IDSXPCConnectionErrorDomain code:-2000 userInfo:0];
    (v7)[2](v7, 0, v6);
  }
}

- (void)firewallCollaboratorForService:(id)a3 withCompletion:(id)a4
{
  v10 = a4;
  v6 = a3;
  v7 = [(IDSDXPCDaemon *)self collaboratorProvider];
  v8 = [v7 firewallCollaboratorForService:v6 forXPCDaemon:self];

  if (v8)
  {
    v10[2](v10, v8, 0);
  }

  else
  {
    v9 = [NSError errorWithDomain:IDSXPCConnectionErrorDomain code:-2000 userInfo:0];
    (v10)[2](v10, 0, v9);
  }
}

- (void)groupSessionKeyValueDeliveryProviderCollaboratorWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(IDSDXPCDaemon *)self collaboratorProvider];
  v5 = [v4 groupSessionKeyValueDeliveryProviderCollaboratorForXPCDaemon:self];

  if (v5)
  {
    v7[2](v7, v5, 0);
  }

  else
  {
    v6 = [NSError errorWithDomain:IDSXPCConnectionErrorDomain code:-2000 userInfo:0];
    (v7)[2](v7, 0, v6);
  }
}

- (void)featureTogglerForService:(id)a3 withCompletion:(id)a4
{
  v10 = a4;
  v6 = a3;
  v7 = [(IDSDXPCDaemon *)self collaboratorProvider];
  v8 = [v7 featureTogglerCollaboratorForService:v6 forXPCDaemon:self];

  if (v8)
  {
    v10[2](v10, v8, 0);
  }

  else
  {
    v9 = [NSError errorWithDomain:IDSXPCConnectionErrorDomain code:-2000 userInfo:0];
    (v10)[2](v10, 0, v9);
  }
}

- (void)baaSignerCollaboratorForTopic:(id)a3 withCompletion:(id)a4
{
  v10 = a4;
  v6 = a3;
  v7 = [(IDSDXPCDaemon *)self collaboratorProvider];
  v8 = [v7 baaSignerCollaboratorForTopic:v6 forXPCDaemon:self];

  if (v8)
  {
    v10[2](v10, v8, 0);
  }

  else
  {
    v9 = [NSError errorWithDomain:IDSXPCConnectionErrorDomain code:-2000 userInfo:0];
    (v10)[2](v10, 0, v9);
  }
}

- (void)eventReportingCollaboratorWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(IDSDXPCDaemon *)self collaboratorProvider];
  v5 = [v4 eventReportingCollaboratorForXPCDaemon:self];

  if (v5)
  {
    v7[2](v7, v5, 0);
  }

  else
  {
    v6 = [NSError errorWithDomain:IDSXPCConnectionErrorDomain code:-2000 userInfo:0];
    (v7)[2](v7, 0, v6);
  }
}

- (void)interalTestingCollaboratorWithCompletion:(id)a3
{
  v4 = a3;
  if (CUTIsInternalInstall())
  {
    v5 = [(IDSDXPCDaemon *)self clientConnection];
    v6 = kIDSTestToolEntitlement;
    v7 = [v5 hasEntitlement:kIDSTestToolEntitlement];

    if (v7)
    {
LABEL_3:
      v8 = [(IDSDXPCDaemon *)self collaboratorProvider];
      v9 = [v8 internalTestingCollaboratorForXPCDaemon:self];

      if (v4)
      {
        v4[2](v4, v9, 0);
      }

      goto LABEL_19;
    }

    v10 = [(IDSDXPCDaemon *)self clientConnection];
    v11 = [v10 valueForEntitlement:@"application-identifier"];

    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([v11 isEqualToString:@"com.apple.Preferences"])
      {
        v12 = +[IDSFoundationLog xpc];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_10092A1A8(v12);
        }

        goto LABEL_3;
      }
    }

    v13 = +[IDSFoundationLog xpc];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10092A1EC(self, v13, v14, v15, v16, v17, v18, v19);
    }

    if (v4)
    {
      v20 = [IDSXPCConnection errorForMissingEntitlement:v6];
      (v4)[2](v4, 0, v20);
    }
  }

  else if (v4)
  {
    v4[2](v4, 0, 0);
  }

LABEL_19:
}

- (void)diagnosticHandlingCollaboratorWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(IDSDXPCDaemon *)self collaboratorProvider];
  v5 = [v4 diagnosticHandlingCollaboratorForXPCDaemon:self];

  if (v5)
  {
    v7[2](v7, v5, 0);
  }

  else
  {
    v6 = [NSError errorWithDomain:IDSXPCConnectionErrorDomain code:-2000 userInfo:0];
    (v7)[2](v7, 0, v6);
  }
}

@end