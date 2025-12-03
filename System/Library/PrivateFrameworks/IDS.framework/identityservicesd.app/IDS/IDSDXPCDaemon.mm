@interface IDSDXPCDaemon
- (IDSDXPCDaemon)initWithQueue:(id)queue syncOntoMain:(BOOL)main collaboratorProvider:(id)provider takingOverAndResumingConnection:(id)connection;
- (void)activateWithCompletion:(id)completion;
- (void)activityMonitorCollaboratorWithCompletion:(id)completion;
- (void)baaSignerCollaboratorForTopic:(id)topic withCompletion:(id)completion;
- (void)diagnosticHandlingCollaboratorWithCompletion:(id)completion;
- (void)eventReportingCollaboratorWithCompletion:(id)completion;
- (void)featureTogglerForService:(id)service withCompletion:(id)completion;
- (void)firewallCollaboratorForService:(id)service withCompletion:(id)completion;
- (void)groupSessionKeyValueDeliveryProviderCollaboratorWithCompletion:(id)completion;
- (void)interalTestingCollaboratorWithCompletion:(id)completion;
- (void)keyTransparencyCollaboratorWithCompletion:(id)completion;
- (void)offGridMessengerCollaboratorWithCompletion:(id)completion;
- (void)offGridStateManagerCollaboratorWithCompletion:(id)completion;
- (void)opportunisticCollaboratorWithCompletion:(id)completion;
- (void)pairedDeviceManagerCollaboratorWithCompletion:(id)completion;
- (void)pairingCollaboratorWithCompletion:(id)completion;
- (void)phoneNumberCredentialVendorCollaboratorWithCompletion:(id)completion;
- (void)pinnedIdentityCollaboratorWithCompletion:(id)completion;
- (void)registrationCollaboratorWithCompletion:(id)completion;
- (void)reunionSyncCollaboratorForClientProcessName:(id)name withCompletion:(id)completion;
- (void)serverMessagingCollaboratorWithCompletion:(id)completion;
@end

@implementation IDSDXPCDaemon

- (IDSDXPCDaemon)initWithQueue:(id)queue syncOntoMain:(BOOL)main collaboratorProvider:(id)provider takingOverAndResumingConnection:(id)connection
{
  mainCopy = main;
  queueCopy = queue;
  providerCopy = provider;
  connectionCopy = connection;
  dispatch_assert_queue_V2(queueCopy);
  v22.receiver = self;
  v22.super_class = IDSDXPCDaemon;
  v14 = [(IDSDXPCDaemon *)&v22 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_queue, queue);
    v16 = +[IDSXPCDaemonInterface interface];
    [connectionCopy setExportedInterface:v16];

    [connectionCopy setExportedObject:v15];
    [connectionCopy invalidationHandler];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100590DE4;
    v21 = v20[3] = &unk_100BD7270;
    v17 = v21;
    [connectionCopy setInvalidationHandler:v20];
    objc_storeStrong(&v15->_collaboratorProvider, provider);
    v18 = [[IDSXPCConnection alloc] initWithQueue:queueCopy syncOntoMain:mainCopy takingOverAndResumingConnection:connectionCopy];
    [(IDSDXPCDaemon *)v15 setClientConnection:v18];
  }

  return v15;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[IDSFoundationLog xpc];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Activating {xpcDaemon: %{public}@}", &v6, 0xCu);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)pairingCollaboratorWithCompletion:(id)completion
{
  completionCopy = completion;
  clientConnection = [(IDSDXPCDaemon *)self clientConnection];
  v6 = kIDSLocalPairingAPIEntitlement;
  v7 = [clientConnection hasEntitlement:kIDSLocalPairingAPIEntitlement];

  if (v7)
  {
    collaboratorProvider = [(IDSDXPCDaemon *)self collaboratorProvider];
    v9 = [collaboratorProvider pairingCollaboratorForXPCDaemon:self];

    v10 = +[IDSFoundationLog xpc];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543618;
      selfCopy = self;
      v20 = 2114;
      v21 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "clientConneciton has pairing entitlement -- returning pairing collaborator {xpcDaemon: %{public}@, collaborator: %{public}@}", &v18, 0x16u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v9, 0);
    }

    goto LABEL_10;
  }

  v11 = +[IDSFoundationLog xpc];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_10092A0D0(self, v11, v12, v13, v14, v15, v16, v17);
  }

  if (completionCopy)
  {
    v9 = [IDSXPCConnection errorForMissingEntitlement:v6];
    (completionCopy)[2](completionCopy, 0, v9);
LABEL_10:
  }
}

- (void)pairedDeviceManagerCollaboratorWithCompletion:(id)completion
{
  completionCopy = completion;
  collaboratorProvider = [(IDSDXPCDaemon *)self collaboratorProvider];
  v6 = [collaboratorProvider pairedDeviceManagerCollaboratorForXPCDaemon:self];

  v7 = +[IDSFoundationLog xpc];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    selfCopy = self;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Get pairingDeviceManager collaborator {xpcDaemon: %{public}@, collaborator: %{public}@", &v8, 0x16u);
  }

  completionCopy[2](completionCopy, v6, 0);
}

- (void)reunionSyncCollaboratorForClientProcessName:(id)name withCompletion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  reunionSyncCollaborator = [(IDSDXPCDaemon *)self reunionSyncCollaborator];

  if (reunionSyncCollaborator)
  {
LABEL_6:
    reunionSyncCollaborator2 = [(IDSDXPCDaemon *)self reunionSyncCollaborator];
    completionCopy[2](completionCopy, reunionSyncCollaborator2, 0);
LABEL_7:

    goto LABEL_8;
  }

  clientConnection = [(IDSDXPCDaemon *)self clientConnection];
  v10 = [clientConnection hasEntitlement:kIDSLocalPairingEntitlement];

  v11 = +[IDSFoundationLog xpc];
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138543362;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "clientConnection has local pairing entitlement -- continue {xpcDaemon: %{public}@}", &v22, 0xCu);
    }

    collaboratorProvider = [(IDSDXPCDaemon *)self collaboratorProvider];
    v14 = [collaboratorProvider reunionSyncCollaboratorWithClientProcessName:nameCopy forXPCDaemon:self];
    [(IDSDXPCDaemon *)self setReunionSyncCollaborator:v14];

    goto LABEL_6;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_10092A13C(self, v12, v16, v17, v18, v19, v20, v21);
  }

  if (completionCopy)
  {
    reunionSyncCollaborator2 = [IDSXPCConnection errorForMissingEntitlement:kIDSLocalPairingAPIEntitlement];
    (completionCopy)[2](completionCopy, 0, reunionSyncCollaborator2);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)opportunisticCollaboratorWithCompletion:(id)completion
{
  completionCopy = completion;
  collaboratorProvider = [(IDSDXPCDaemon *)self collaboratorProvider];
  v6 = [collaboratorProvider opportunisticCollaboratorForXPCDaemon:self];

  completionCopy[2](completionCopy, v6, 0);
}

- (void)registrationCollaboratorWithCompletion:(id)completion
{
  completionCopy = completion;
  collaboratorProvider = [(IDSDXPCDaemon *)self collaboratorProvider];
  v6 = [collaboratorProvider registrationCollaboratorForXPCDaemon:self];

  completionCopy[2](completionCopy, v6, 0);
}

- (void)activityMonitorCollaboratorWithCompletion:(id)completion
{
  completionCopy = completion;
  collaboratorProvider = [(IDSDXPCDaemon *)self collaboratorProvider];
  v5 = [collaboratorProvider activityMonitorCollaboratorForXPCDaemon:self];

  if (v5)
  {
    completionCopy[2](completionCopy, v5, 0);
  }

  else
  {
    v6 = [NSError errorWithDomain:IDSXPCConnectionErrorDomain code:-2000 userInfo:0];
    (completionCopy)[2](completionCopy, 0, v6);
  }
}

- (void)serverMessagingCollaboratorWithCompletion:(id)completion
{
  completionCopy = completion;
  collaboratorProvider = [(IDSDXPCDaemon *)self collaboratorProvider];
  v5 = [collaboratorProvider serverMessagingCollaboratorForXPCDaemon:self];

  if (v5)
  {
    completionCopy[2](completionCopy, v5, 0);
  }

  else
  {
    v6 = [NSError errorWithDomain:IDSXPCConnectionErrorDomain code:-2000 userInfo:0];
    (completionCopy)[2](completionCopy, 0, v6);
  }
}

- (void)offGridMessengerCollaboratorWithCompletion:(id)completion
{
  completionCopy = completion;
  collaboratorProvider = [(IDSDXPCDaemon *)self collaboratorProvider];
  v5 = [collaboratorProvider offGridMessengerCollaboratorForXPCDaemon:self];

  if (v5)
  {
    completionCopy[2](completionCopy, v5, 0);
  }

  else
  {
    v6 = [NSError errorWithDomain:IDSXPCConnectionErrorDomain code:-2000 userInfo:0];
    (completionCopy)[2](completionCopy, 0, v6);
  }
}

- (void)offGridStateManagerCollaboratorWithCompletion:(id)completion
{
  completionCopy = completion;
  collaboratorProvider = [(IDSDXPCDaemon *)self collaboratorProvider];
  v5 = [collaboratorProvider offGridStateManagerCollaboratorForXPCDaemon:self];

  if (v5)
  {
    completionCopy[2](completionCopy, v5, 0);
  }

  else
  {
    v6 = [NSError errorWithDomain:IDSXPCConnectionErrorDomain code:-2000 userInfo:0];
    (completionCopy)[2](completionCopy, 0, v6);
  }
}

- (void)keyTransparencyCollaboratorWithCompletion:(id)completion
{
  completionCopy = completion;
  collaboratorProvider = [(IDSDXPCDaemon *)self collaboratorProvider];
  v5 = [collaboratorProvider keyTransparencyCollaboratorForXPCDaemon:self];

  if (v5)
  {
    completionCopy[2](completionCopy, v5, 0);
  }

  else
  {
    v6 = [NSError errorWithDomain:IDSXPCConnectionErrorDomain code:-2000 userInfo:0];
    (completionCopy)[2](completionCopy, 0, v6);
  }
}

- (void)pinnedIdentityCollaboratorWithCompletion:(id)completion
{
  completionCopy = completion;
  collaboratorProvider = [(IDSDXPCDaemon *)self collaboratorProvider];
  v5 = [collaboratorProvider pinnedIdentityCollaboratorForXPCDaemon:self];

  if (v5)
  {
    completionCopy[2](completionCopy, v5, 0);
  }

  else
  {
    v6 = [NSError errorWithDomain:IDSXPCConnectionErrorDomain code:-2000 userInfo:0];
    (completionCopy)[2](completionCopy, 0, v6);
  }
}

- (void)phoneNumberCredentialVendorCollaboratorWithCompletion:(id)completion
{
  completionCopy = completion;
  collaboratorProvider = [(IDSDXPCDaemon *)self collaboratorProvider];
  v5 = [collaboratorProvider phoneNumberCredentialVendorCollaboratorForXPCDaemon:self];

  if (v5)
  {
    completionCopy[2](completionCopy, v5, 0);
  }

  else
  {
    v6 = [NSError errorWithDomain:IDSXPCConnectionErrorDomain code:-2000 userInfo:0];
    (completionCopy)[2](completionCopy, 0, v6);
  }
}

- (void)firewallCollaboratorForService:(id)service withCompletion:(id)completion
{
  completionCopy = completion;
  serviceCopy = service;
  collaboratorProvider = [(IDSDXPCDaemon *)self collaboratorProvider];
  v8 = [collaboratorProvider firewallCollaboratorForService:serviceCopy forXPCDaemon:self];

  if (v8)
  {
    completionCopy[2](completionCopy, v8, 0);
  }

  else
  {
    v9 = [NSError errorWithDomain:IDSXPCConnectionErrorDomain code:-2000 userInfo:0];
    (completionCopy)[2](completionCopy, 0, v9);
  }
}

- (void)groupSessionKeyValueDeliveryProviderCollaboratorWithCompletion:(id)completion
{
  completionCopy = completion;
  collaboratorProvider = [(IDSDXPCDaemon *)self collaboratorProvider];
  v5 = [collaboratorProvider groupSessionKeyValueDeliveryProviderCollaboratorForXPCDaemon:self];

  if (v5)
  {
    completionCopy[2](completionCopy, v5, 0);
  }

  else
  {
    v6 = [NSError errorWithDomain:IDSXPCConnectionErrorDomain code:-2000 userInfo:0];
    (completionCopy)[2](completionCopy, 0, v6);
  }
}

- (void)featureTogglerForService:(id)service withCompletion:(id)completion
{
  completionCopy = completion;
  serviceCopy = service;
  collaboratorProvider = [(IDSDXPCDaemon *)self collaboratorProvider];
  v8 = [collaboratorProvider featureTogglerCollaboratorForService:serviceCopy forXPCDaemon:self];

  if (v8)
  {
    completionCopy[2](completionCopy, v8, 0);
  }

  else
  {
    v9 = [NSError errorWithDomain:IDSXPCConnectionErrorDomain code:-2000 userInfo:0];
    (completionCopy)[2](completionCopy, 0, v9);
  }
}

- (void)baaSignerCollaboratorForTopic:(id)topic withCompletion:(id)completion
{
  completionCopy = completion;
  topicCopy = topic;
  collaboratorProvider = [(IDSDXPCDaemon *)self collaboratorProvider];
  v8 = [collaboratorProvider baaSignerCollaboratorForTopic:topicCopy forXPCDaemon:self];

  if (v8)
  {
    completionCopy[2](completionCopy, v8, 0);
  }

  else
  {
    v9 = [NSError errorWithDomain:IDSXPCConnectionErrorDomain code:-2000 userInfo:0];
    (completionCopy)[2](completionCopy, 0, v9);
  }
}

- (void)eventReportingCollaboratorWithCompletion:(id)completion
{
  completionCopy = completion;
  collaboratorProvider = [(IDSDXPCDaemon *)self collaboratorProvider];
  v5 = [collaboratorProvider eventReportingCollaboratorForXPCDaemon:self];

  if (v5)
  {
    completionCopy[2](completionCopy, v5, 0);
  }

  else
  {
    v6 = [NSError errorWithDomain:IDSXPCConnectionErrorDomain code:-2000 userInfo:0];
    (completionCopy)[2](completionCopy, 0, v6);
  }
}

- (void)interalTestingCollaboratorWithCompletion:(id)completion
{
  completionCopy = completion;
  if (CUTIsInternalInstall())
  {
    clientConnection = [(IDSDXPCDaemon *)self clientConnection];
    v6 = kIDSTestToolEntitlement;
    v7 = [clientConnection hasEntitlement:kIDSTestToolEntitlement];

    if (v7)
    {
LABEL_3:
      collaboratorProvider = [(IDSDXPCDaemon *)self collaboratorProvider];
      v9 = [collaboratorProvider internalTestingCollaboratorForXPCDaemon:self];

      if (completionCopy)
      {
        completionCopy[2](completionCopy, v9, 0);
      }

      goto LABEL_19;
    }

    clientConnection2 = [(IDSDXPCDaemon *)self clientConnection];
    v11 = [clientConnection2 valueForEntitlement:@"application-identifier"];

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

    if (completionCopy)
    {
      v20 = [IDSXPCConnection errorForMissingEntitlement:v6];
      (completionCopy)[2](completionCopy, 0, v20);
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, 0);
  }

LABEL_19:
}

- (void)diagnosticHandlingCollaboratorWithCompletion:(id)completion
{
  completionCopy = completion;
  collaboratorProvider = [(IDSDXPCDaemon *)self collaboratorProvider];
  v5 = [collaboratorProvider diagnosticHandlingCollaboratorForXPCDaemon:self];

  if (v5)
  {
    completionCopy[2](completionCopy, v5, 0);
  }

  else
  {
    v6 = [NSError errorWithDomain:IDSXPCConnectionErrorDomain code:-2000 userInfo:0];
    (completionCopy)[2](completionCopy, 0, v6);
  }
}

@end