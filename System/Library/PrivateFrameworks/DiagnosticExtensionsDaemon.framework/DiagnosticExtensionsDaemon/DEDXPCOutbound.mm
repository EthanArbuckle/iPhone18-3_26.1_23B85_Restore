@interface DEDXPCOutbound
- (DEDXPCOutbound)initWithRemoteObject:(id)object;
- (void)addSessionData:(id)data withFilename:(id)filename forSession:(id)session;
- (void)adoptFiles:(id)files forSession:(id)session;
- (void)cancelSession:(id)session;
- (void)commitSession:(id)session;
- (void)compressionProgress:(unint64_t)progress total:(unint64_t)total sessionID:(id)d;
- (void)deviceSupportsDiagnosticExtensions:(id)extensions session:(id)session;
- (void)didAdoptFilesWithError:(id)error forSession:(id)session;
- (void)didCancelSession:(id)session;
- (void)didCommitSession:(id)session;
- (void)didFinishUploadingWithError:(id)error sessionID:(id)d;
- (void)didGetState:(int64_t)state info:(id)info sessionID:(id)d;
- (void)didLoadTextDataForExtensions:(id)extensions localization:(id)localization session:(id)session;
- (void)finishedDiagnosticWithIdentifier:(id)identifier result:(id)result session:(id)session;
- (void)getSessionStateWithSession:(id)session;
- (void)getSessionStatusWithSession:(id)session;
- (void)hasCollected:(id)collected isCollecting:(id)collecting inSession:(id)session;
- (void)hasCollected:(id)collected isCollecting:(id)collecting withIdentifiers:(id)identifiers inSession:(id)session;
- (void)listAvailableExtensionsForSession:(id)session;
- (void)loadTextDataForExtensions:(id)extensions localization:(id)localization sessionID:(id)d;
- (void)pingSession:(id)session;
- (void)pongSession:(id)session;
- (void)scheduleNotificationForSession:(id)session;
- (void)startDiagnosticWithIdentifier:(id)identifier parameters:(id)parameters deferRunUntil:(id)until session:(id)session;
- (void)startDiagnosticWithIdentifier:(id)identifier parameters:(id)parameters session:(id)session;
- (void)syncSessionStatusWithSession:(id)session;
- (void)terminateExtension:(id)extension info:(id)info session:(id)session;
- (void)unscheduleNotificationForSession:(id)session;
- (void)uploadProgress:(unint64_t)progress total:(unint64_t)total sessionID:(id)d;
@end

@implementation DEDXPCOutbound

- (DEDXPCOutbound)initWithRemoteObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = DEDXPCOutbound;
  v5 = [(DEDXPCOutbound *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DEDXPCOutbound *)v5 setRemoteObject:objectCopy];
  }

  return v6;
}

- (void)pingSession:(id)session
{
  sessionCopy = session;
  remoteObject = [(DEDXPCOutbound *)self remoteObject];
  [remoteObject xpc_pingSession:sessionCopy];
}

- (void)pongSession:(id)session
{
  sessionCopy = session;
  remoteObject = [(DEDXPCOutbound *)self remoteObject];
  [remoteObject xpc_pongSession:sessionCopy];
}

- (void)listAvailableExtensionsForSession:(id)session
{
  sessionCopy = session;
  remoteObject = [(DEDXPCOutbound *)self remoteObject];
  [remoteObject xpc_listAvailableExtensionsForSession:sessionCopy];
}

- (void)getSessionStatusWithSession:(id)session
{
  sessionCopy = session;
  remoteObject = [(DEDXPCOutbound *)self remoteObject];
  [remoteObject xpc_getSessionStatusWithSession:sessionCopy];
}

- (void)syncSessionStatusWithSession:(id)session
{
  sessionCopy = session;
  remoteObject = [(DEDXPCOutbound *)self remoteObject];
  [remoteObject xpc_syncSessionStatusWithSession:sessionCopy];
}

- (void)hasCollected:(id)collected isCollecting:(id)collecting inSession:(id)session
{
  sessionCopy = session;
  collectingCopy = collecting;
  v10 = [collected valueForKeyPath:@"serialize"];
  v11 = v10;
  v12 = &unk_285B899E8;
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  v14 = [collectingCopy valueForKeyPath:@"serialize"];

  v15 = &unk_285B89A00;
  if (v14)
  {
    v15 = v14;
  }

  v16 = v15;

  remoteObject = [(DEDXPCOutbound *)self remoteObject];
  [remoteObject xpc_hasCollected:v13 isCollecting:v16 inSession:sessionCopy];
}

- (void)hasCollected:(id)collected isCollecting:(id)collecting withIdentifiers:(id)identifiers inSession:(id)session
{
  sessionCopy = session;
  identifiersCopy = identifiers;
  collectingCopy = collecting;
  v13 = [collected valueForKeyPath:@"serialize"];
  v14 = v13;
  v15 = &unk_285B89A18;
  if (v13)
  {
    v15 = v13;
  }

  v16 = v15;

  v17 = [collectingCopy valueForKeyPath:@"serialize"];

  v18 = &unk_285B89A30;
  if (v17)
  {
    v18 = v17;
  }

  v19 = v18;

  v20 = [identifiersCopy valueForKey:@"stringValue"];

  v21 = MEMORY[0x277CBEBF8];
  if (v20)
  {
    v21 = v20;
  }

  v22 = v21;

  remoteObject = [(DEDXPCOutbound *)self remoteObject];
  [remoteObject xpc_hasCollected:v16 isCollecting:v19 withIdentifiers:v22 inSession:sessionCopy];
}

- (void)deviceSupportsDiagnosticExtensions:(id)extensions session:(id)session
{
  v22 = *MEMORY[0x277D85DE8];
  extensionsCopy = extensions;
  sessionCopy = session;
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(extensionsCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = extensionsCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        serialize = [*(*(&v17 + 1) + 8 * v13) serialize];
        [v8 addObject:serialize];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  remoteObject = [(DEDXPCOutbound *)self remoteObject];
  [remoteObject xpc_deviceSupportsDiagnosticExtensions:v8 session:sessionCopy];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)startDiagnosticWithIdentifier:(id)identifier parameters:(id)parameters session:(id)session
{
  sessionCopy = session;
  parametersCopy = parameters;
  identifierCopy = identifier;
  remoteObject = [(DEDXPCOutbound *)self remoteObject];
  [remoteObject xpc_startDiagnosticWithIdentifier:identifierCopy parameters:parametersCopy session:sessionCopy];
}

- (void)startDiagnosticWithIdentifier:(id)identifier parameters:(id)parameters deferRunUntil:(id)until session:(id)session
{
  sessionCopy = session;
  untilCopy = until;
  parametersCopy = parameters;
  identifierCopy = identifier;
  remoteObject = [(DEDXPCOutbound *)self remoteObject];
  [remoteObject xpc_startDiagnosticWithIdentifier:identifierCopy parameters:parametersCopy deferRunUntil:untilCopy session:sessionCopy];
}

- (void)finishedDiagnosticWithIdentifier:(id)identifier result:(id)result session:(id)session
{
  sessionCopy = session;
  resultCopy = result;
  identifierCopy = identifier;
  remoteObject = [(DEDXPCOutbound *)self remoteObject];
  serialize = [resultCopy serialize];

  [remoteObject xpc_finishedDiagnosticWithIdentifier:identifierCopy result:serialize session:sessionCopy];
}

- (void)terminateExtension:(id)extension info:(id)info session:(id)session
{
  infoCopy = MEMORY[0x277CBEC10];
  if (info)
  {
    infoCopy = info;
  }

  v9 = infoCopy;
  sessionCopy = session;
  extensionCopy = extension;
  remoteObject = [(DEDXPCOutbound *)self remoteObject];
  [remoteObject xpc_terminateExtension:extensionCopy info:v9 session:sessionCopy];
}

- (void)adoptFiles:(id)files forSession:(id)session
{
  sessionCopy = session;
  filesCopy = files;
  remoteObject = [(DEDXPCOutbound *)self remoteObject];
  [remoteObject xpc_adoptFiles:filesCopy forSession:sessionCopy];
}

- (void)didAdoptFilesWithError:(id)error forSession:(id)session
{
  sessionCopy = session;
  errorCopy = error;
  remoteObject = [(DEDXPCOutbound *)self remoteObject];
  [remoteObject xpc_didAdoptFilesWithError:errorCopy forSession:sessionCopy];
}

- (void)compressionProgress:(unint64_t)progress total:(unint64_t)total sessionID:(id)d
{
  dCopy = d;
  remoteObject = [(DEDXPCOutbound *)self remoteObject];
  [remoteObject xpc_compressionProgress:progress total:total session:dCopy];
}

- (void)uploadProgress:(unint64_t)progress total:(unint64_t)total sessionID:(id)d
{
  dCopy = d;
  remoteObject = [(DEDXPCOutbound *)self remoteObject];
  [remoteObject xpc_uploadProgress:progress total:total session:dCopy];
}

- (void)didFinishUploadingWithError:(id)error sessionID:(id)d
{
  dCopy = d;
  errorCopy = error;
  remoteObject = [(DEDXPCOutbound *)self remoteObject];
  [remoteObject xpc_didFinishUploadingWithError:errorCopy sessionID:dCopy];
}

- (void)commitSession:(id)session
{
  sessionCopy = session;
  remoteObject = [(DEDXPCOutbound *)self remoteObject];
  [remoteObject xpc_commitSession:sessionCopy];
}

- (void)didCommitSession:(id)session
{
  sessionCopy = session;
  remoteObject = [(DEDXPCOutbound *)self remoteObject];
  [remoteObject xpc_didCommitSession:sessionCopy];
}

- (void)cancelSession:(id)session
{
  sessionCopy = session;
  remoteObject = [(DEDXPCOutbound *)self remoteObject];
  [remoteObject xpc_cancelSession:sessionCopy];
}

- (void)scheduleNotificationForSession:(id)session
{
  sessionCopy = session;
  remoteObject = [(DEDXPCOutbound *)self remoteObject];
  [remoteObject xpc_notifySession:sessionCopy];
}

- (void)unscheduleNotificationForSession:(id)session
{
  sessionCopy = session;
  remoteObject = [(DEDXPCOutbound *)self remoteObject];
  [remoteObject xpc_cancelNotifySession:sessionCopy];
}

- (void)getSessionStateWithSession:(id)session
{
  sessionCopy = session;
  remoteObject = [(DEDXPCOutbound *)self remoteObject];
  [remoteObject xpc_getSessionStateWithSession:sessionCopy];
}

- (void)addSessionData:(id)data withFilename:(id)filename forSession:(id)session
{
  sessionCopy = session;
  filenameCopy = filename;
  dataCopy = data;
  remoteObject = [(DEDXPCOutbound *)self remoteObject];
  [remoteObject xpc_addData:dataCopy withFilename:filenameCopy forSession:sessionCopy];
}

- (void)didCancelSession:(id)session
{
  sessionCopy = session;
  remoteObject = [(DEDXPCOutbound *)self remoteObject];
  [remoteObject xpc_didCancelSession:sessionCopy];
}

- (void)didGetState:(int64_t)state info:(id)info sessionID:(id)d
{
  dCopy = d;
  infoCopy = info;
  remoteObject = [(DEDXPCOutbound *)self remoteObject];
  [remoteObject xpc_didGetState:state info:infoCopy sessionID:dCopy];
}

- (void)loadTextDataForExtensions:(id)extensions localization:(id)localization sessionID:(id)d
{
  dCopy = d;
  localizationCopy = localization;
  v11 = [extensions valueForKeyPath:@"serialize"];
  remoteObject = [(DEDXPCOutbound *)self remoteObject];
  [remoteObject xpc_loadTextDataForExtensions:v11 localization:localizationCopy sessionID:dCopy];
}

- (void)didLoadTextDataForExtensions:(id)extensions localization:(id)localization session:(id)session
{
  sessionCopy = session;
  localizationCopy = localization;
  v11 = [extensions valueForKeyPath:@"serialize"];
  remoteObject = [(DEDXPCOutbound *)self remoteObject];
  [remoteObject xpc_didLoadTextDataForExtensions:v11 localization:localizationCopy sessionID:sessionCopy];
}

@end