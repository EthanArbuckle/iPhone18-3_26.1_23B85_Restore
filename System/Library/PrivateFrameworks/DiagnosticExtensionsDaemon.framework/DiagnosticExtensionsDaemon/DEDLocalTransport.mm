@interface DEDLocalTransport
- (DEDClientProtocol)clientDelegate;
- (DEDLocalTransport)initWithClientDelegate:(id)delegate;
- (DEDLocalTransport)initWithWorkerDelegate:(id)delegate;
- (DEDWorkerProtocol)workerDelegate;
- (NSString)description;
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

@implementation DEDLocalTransport

- (DEDLocalTransport)initWithClientDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = DEDLocalTransport;
  v5 = [(DEDLocalTransport *)&v9 init];
  if (v5)
  {
    v6 = +[DEDConfiguration sharedInstance];
    v7 = os_log_create([v6 loggingSubsystem], "t-local");
    [(DEDLocalTransport *)v5 setLog:v7];
  }

  [(DEDLocalTransport *)v5 setClientDelegate:delegateCopy];

  return v5;
}

- (DEDLocalTransport)initWithWorkerDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = DEDLocalTransport;
  v5 = [(DEDLocalTransport *)&v9 init];
  if (v5)
  {
    v6 = +[DEDConfiguration sharedInstance];
    v7 = os_log_create([v6 loggingSubsystem], "t-local");
    [(DEDLocalTransport *)v5 setLog:v7];
  }

  [(DEDLocalTransport *)v5 setWorkerDelegate:delegateCopy];

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = DEDLocalTransport;
  v4 = [(DEDLocalTransport *)&v13 description];
  WeakRetained = objc_loadWeakRetained(&self->_clientDelegate);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = objc_loadWeakRetained(&self->_workerDelegate);
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v3 stringWithFormat:@"%@: clientDelegate: [%@] workerDelegate: [%@]", v4, v7, v10];

  return v11;
}

- (void)pingSession:(id)session
{
  sessionCopy = session;
  workerDelegate = [(DEDLocalTransport *)self workerDelegate];
  [workerDelegate pingSession:sessionCopy];
}

- (void)listAvailableExtensionsForSession:(id)session
{
  sessionCopy = session;
  workerDelegate = [(DEDLocalTransport *)self workerDelegate];
  [workerDelegate listAvailableExtensionsForSession:sessionCopy];
}

- (void)startDiagnosticWithIdentifier:(id)identifier parameters:(id)parameters session:(id)session
{
  sessionCopy = session;
  parametersCopy = parameters;
  identifierCopy = identifier;
  workerDelegate = [(DEDLocalTransport *)self workerDelegate];
  [workerDelegate startDiagnosticWithIdentifier:identifierCopy parameters:parametersCopy session:sessionCopy];
}

- (void)startDiagnosticWithIdentifier:(id)identifier parameters:(id)parameters deferRunUntil:(id)until session:(id)session
{
  sessionCopy = session;
  untilCopy = until;
  parametersCopy = parameters;
  identifierCopy = identifier;
  workerDelegate = [(DEDLocalTransport *)self workerDelegate];
  [workerDelegate startDiagnosticWithIdentifier:identifierCopy parameters:parametersCopy deferRunUntil:untilCopy session:sessionCopy];
}

- (void)terminateExtension:(id)extension info:(id)info session:(id)session
{
  sessionCopy = session;
  infoCopy = info;
  extensionCopy = extension;
  workerDelegate = [(DEDLocalTransport *)self workerDelegate];
  [workerDelegate terminateExtension:extensionCopy info:infoCopy session:sessionCopy];
}

- (void)getSessionStateWithSession:(id)session
{
  sessionCopy = session;
  workerDelegate = [(DEDLocalTransport *)self workerDelegate];
  [workerDelegate getSessionStateWithSession:sessionCopy];
}

- (void)addSessionData:(id)data withFilename:(id)filename forSession:(id)session
{
  sessionCopy = session;
  filenameCopy = filename;
  dataCopy = data;
  workerDelegate = [(DEDLocalTransport *)self workerDelegate];
  [workerDelegate addSessionData:dataCopy withFilename:filenameCopy forSession:sessionCopy];
}

- (void)syncSessionStatusWithSession:(id)session
{
  sessionCopy = session;
  workerDelegate = [(DEDLocalTransport *)self workerDelegate];
  [workerDelegate syncSessionStatusWithSession:sessionCopy];
}

- (void)getSessionStatusWithSession:(id)session
{
  sessionCopy = session;
  workerDelegate = [(DEDLocalTransport *)self workerDelegate];
  [workerDelegate getSessionStatusWithSession:sessionCopy];
}

- (void)adoptFiles:(id)files forSession:(id)session
{
  sessionCopy = session;
  filesCopy = files;
  workerDelegate = [(DEDLocalTransport *)self workerDelegate];
  [workerDelegate adoptFiles:filesCopy forSession:sessionCopy];
}

- (void)didAdoptFilesWithError:(id)error forSession:(id)session
{
  sessionCopy = session;
  errorCopy = error;
  clientDelegate = [(DEDLocalTransport *)self clientDelegate];
  [clientDelegate didAdoptFilesWithError:errorCopy forSession:sessionCopy];
}

- (void)compressionProgress:(unint64_t)progress total:(unint64_t)total sessionID:(id)d
{
  dCopy = d;
  clientDelegate = [(DEDLocalTransport *)self clientDelegate];
  [clientDelegate compressionProgress:progress total:total sessionID:dCopy];
}

- (void)uploadProgress:(unint64_t)progress total:(unint64_t)total sessionID:(id)d
{
  dCopy = d;
  clientDelegate = [(DEDLocalTransport *)self clientDelegate];
  [clientDelegate uploadProgress:progress total:total sessionID:dCopy];
}

- (void)didFinishUploadingWithError:(id)error sessionID:(id)d
{
  dCopy = d;
  errorCopy = error;
  clientDelegate = [(DEDLocalTransport *)self clientDelegate];
  [clientDelegate didFinishUploadingWithError:errorCopy sessionID:dCopy];
}

- (void)commitSession:(id)session
{
  sessionCopy = session;
  workerDelegate = [(DEDLocalTransport *)self workerDelegate];
  [workerDelegate commitSession:sessionCopy];
}

- (void)cancelSession:(id)session
{
  sessionCopy = session;
  workerDelegate = [(DEDLocalTransport *)self workerDelegate];
  [workerDelegate cancelSession:sessionCopy];
}

- (void)scheduleNotificationForSession:(id)session
{
  sessionCopy = session;
  workerDelegate = [(DEDLocalTransport *)self workerDelegate];
  [workerDelegate scheduleNotificationForSession:sessionCopy];
}

- (void)unscheduleNotificationForSession:(id)session
{
  sessionCopy = session;
  workerDelegate = [(DEDLocalTransport *)self workerDelegate];
  [workerDelegate unscheduleNotificationForSession:sessionCopy];
}

- (void)loadTextDataForExtensions:(id)extensions localization:(id)localization sessionID:(id)d
{
  dCopy = d;
  localizationCopy = localization;
  extensionsCopy = extensions;
  workerDelegate = [(DEDLocalTransport *)self workerDelegate];
  [workerDelegate loadTextDataForExtensions:extensionsCopy localization:localizationCopy sessionID:dCopy];
}

- (void)pongSession:(id)session
{
  sessionCopy = session;
  clientDelegate = [(DEDLocalTransport *)self clientDelegate];
  [clientDelegate pongSession:sessionCopy];
}

- (void)deviceSupportsDiagnosticExtensions:(id)extensions session:(id)session
{
  sessionCopy = session;
  extensionsCopy = extensions;
  clientDelegate = [(DEDLocalTransport *)self clientDelegate];
  [clientDelegate deviceSupportsDiagnosticExtensions:extensionsCopy session:sessionCopy];
}

- (void)finishedDiagnosticWithIdentifier:(id)identifier result:(id)result session:(id)session
{
  sessionCopy = session;
  resultCopy = result;
  identifierCopy = identifier;
  clientDelegate = [(DEDLocalTransport *)self clientDelegate];
  [clientDelegate finishedDiagnosticWithIdentifier:identifierCopy result:resultCopy session:sessionCopy];
}

- (void)didCommitSession:(id)session
{
  sessionCopy = session;
  clientDelegate = [(DEDLocalTransport *)self clientDelegate];
  [clientDelegate didCommitSession:sessionCopy];
}

- (void)didCancelSession:(id)session
{
  sessionCopy = session;
  clientDelegate = [(DEDLocalTransport *)self clientDelegate];
  [clientDelegate didCancelSession:sessionCopy];
}

- (void)hasCollected:(id)collected isCollecting:(id)collecting inSession:(id)session
{
  sessionCopy = session;
  collectingCopy = collecting;
  collectedCopy = collected;
  clientDelegate = [(DEDLocalTransport *)self clientDelegate];
  [clientDelegate hasCollected:collectedCopy isCollecting:collectingCopy inSession:sessionCopy];
}

- (void)hasCollected:(id)collected isCollecting:(id)collecting withIdentifiers:(id)identifiers inSession:(id)session
{
  sessionCopy = session;
  identifiersCopy = identifiers;
  collectingCopy = collecting;
  collectedCopy = collected;
  clientDelegate = [(DEDLocalTransport *)self clientDelegate];
  [clientDelegate hasCollected:collectedCopy isCollecting:collectingCopy withIdentifiers:identifiersCopy inSession:sessionCopy];
}

- (void)didGetState:(int64_t)state info:(id)info sessionID:(id)d
{
  dCopy = d;
  infoCopy = info;
  clientDelegate = [(DEDLocalTransport *)self clientDelegate];
  [clientDelegate didGetState:state info:infoCopy sessionID:dCopy];
}

- (void)didLoadTextDataForExtensions:(id)extensions localization:(id)localization session:(id)session
{
  sessionCopy = session;
  localizationCopy = localization;
  extensionsCopy = extensions;
  clientDelegate = [(DEDLocalTransport *)self clientDelegate];
  [clientDelegate didLoadTextDataForExtensions:extensionsCopy localization:localizationCopy session:sessionCopy];
}

- (DEDClientProtocol)clientDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_clientDelegate);

  return WeakRetained;
}

- (DEDWorkerProtocol)workerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_workerDelegate);

  return WeakRetained;
}

@end