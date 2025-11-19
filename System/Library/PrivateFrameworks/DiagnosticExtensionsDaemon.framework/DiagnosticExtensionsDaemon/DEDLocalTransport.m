@interface DEDLocalTransport
- (DEDClientProtocol)clientDelegate;
- (DEDLocalTransport)initWithClientDelegate:(id)a3;
- (DEDLocalTransport)initWithWorkerDelegate:(id)a3;
- (DEDWorkerProtocol)workerDelegate;
- (NSString)description;
- (void)addSessionData:(id)a3 withFilename:(id)a4 forSession:(id)a5;
- (void)adoptFiles:(id)a3 forSession:(id)a4;
- (void)cancelSession:(id)a3;
- (void)commitSession:(id)a3;
- (void)compressionProgress:(unint64_t)a3 total:(unint64_t)a4 sessionID:(id)a5;
- (void)deviceSupportsDiagnosticExtensions:(id)a3 session:(id)a4;
- (void)didAdoptFilesWithError:(id)a3 forSession:(id)a4;
- (void)didCancelSession:(id)a3;
- (void)didCommitSession:(id)a3;
- (void)didFinishUploadingWithError:(id)a3 sessionID:(id)a4;
- (void)didGetState:(int64_t)a3 info:(id)a4 sessionID:(id)a5;
- (void)didLoadTextDataForExtensions:(id)a3 localization:(id)a4 session:(id)a5;
- (void)finishedDiagnosticWithIdentifier:(id)a3 result:(id)a4 session:(id)a5;
- (void)getSessionStateWithSession:(id)a3;
- (void)getSessionStatusWithSession:(id)a3;
- (void)hasCollected:(id)a3 isCollecting:(id)a4 inSession:(id)a5;
- (void)hasCollected:(id)a3 isCollecting:(id)a4 withIdentifiers:(id)a5 inSession:(id)a6;
- (void)listAvailableExtensionsForSession:(id)a3;
- (void)loadTextDataForExtensions:(id)a3 localization:(id)a4 sessionID:(id)a5;
- (void)pingSession:(id)a3;
- (void)pongSession:(id)a3;
- (void)scheduleNotificationForSession:(id)a3;
- (void)startDiagnosticWithIdentifier:(id)a3 parameters:(id)a4 deferRunUntil:(id)a5 session:(id)a6;
- (void)startDiagnosticWithIdentifier:(id)a3 parameters:(id)a4 session:(id)a5;
- (void)syncSessionStatusWithSession:(id)a3;
- (void)terminateExtension:(id)a3 info:(id)a4 session:(id)a5;
- (void)unscheduleNotificationForSession:(id)a3;
- (void)uploadProgress:(unint64_t)a3 total:(unint64_t)a4 sessionID:(id)a5;
@end

@implementation DEDLocalTransport

- (DEDLocalTransport)initWithClientDelegate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DEDLocalTransport;
  v5 = [(DEDLocalTransport *)&v9 init];
  if (v5)
  {
    v6 = +[DEDConfiguration sharedInstance];
    v7 = os_log_create([v6 loggingSubsystem], "t-local");
    [(DEDLocalTransport *)v5 setLog:v7];
  }

  [(DEDLocalTransport *)v5 setClientDelegate:v4];

  return v5;
}

- (DEDLocalTransport)initWithWorkerDelegate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DEDLocalTransport;
  v5 = [(DEDLocalTransport *)&v9 init];
  if (v5)
  {
    v6 = +[DEDConfiguration sharedInstance];
    v7 = os_log_create([v6 loggingSubsystem], "t-local");
    [(DEDLocalTransport *)v5 setLog:v7];
  }

  [(DEDLocalTransport *)v5 setWorkerDelegate:v4];

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

- (void)pingSession:(id)a3
{
  v4 = a3;
  v5 = [(DEDLocalTransport *)self workerDelegate];
  [v5 pingSession:v4];
}

- (void)listAvailableExtensionsForSession:(id)a3
{
  v4 = a3;
  v5 = [(DEDLocalTransport *)self workerDelegate];
  [v5 listAvailableExtensionsForSession:v4];
}

- (void)startDiagnosticWithIdentifier:(id)a3 parameters:(id)a4 session:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DEDLocalTransport *)self workerDelegate];
  [v11 startDiagnosticWithIdentifier:v10 parameters:v9 session:v8];
}

- (void)startDiagnosticWithIdentifier:(id)a3 parameters:(id)a4 deferRunUntil:(id)a5 session:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(DEDLocalTransport *)self workerDelegate];
  [v14 startDiagnosticWithIdentifier:v13 parameters:v12 deferRunUntil:v11 session:v10];
}

- (void)terminateExtension:(id)a3 info:(id)a4 session:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DEDLocalTransport *)self workerDelegate];
  [v11 terminateExtension:v10 info:v9 session:v8];
}

- (void)getSessionStateWithSession:(id)a3
{
  v4 = a3;
  v5 = [(DEDLocalTransport *)self workerDelegate];
  [v5 getSessionStateWithSession:v4];
}

- (void)addSessionData:(id)a3 withFilename:(id)a4 forSession:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DEDLocalTransport *)self workerDelegate];
  [v11 addSessionData:v10 withFilename:v9 forSession:v8];
}

- (void)syncSessionStatusWithSession:(id)a3
{
  v4 = a3;
  v5 = [(DEDLocalTransport *)self workerDelegate];
  [v5 syncSessionStatusWithSession:v4];
}

- (void)getSessionStatusWithSession:(id)a3
{
  v4 = a3;
  v5 = [(DEDLocalTransport *)self workerDelegate];
  [v5 getSessionStatusWithSession:v4];
}

- (void)adoptFiles:(id)a3 forSession:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DEDLocalTransport *)self workerDelegate];
  [v8 adoptFiles:v7 forSession:v6];
}

- (void)didAdoptFilesWithError:(id)a3 forSession:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DEDLocalTransport *)self clientDelegate];
  [v8 didAdoptFilesWithError:v7 forSession:v6];
}

- (void)compressionProgress:(unint64_t)a3 total:(unint64_t)a4 sessionID:(id)a5
{
  v8 = a5;
  v9 = [(DEDLocalTransport *)self clientDelegate];
  [v9 compressionProgress:a3 total:a4 sessionID:v8];
}

- (void)uploadProgress:(unint64_t)a3 total:(unint64_t)a4 sessionID:(id)a5
{
  v8 = a5;
  v9 = [(DEDLocalTransport *)self clientDelegate];
  [v9 uploadProgress:a3 total:a4 sessionID:v8];
}

- (void)didFinishUploadingWithError:(id)a3 sessionID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DEDLocalTransport *)self clientDelegate];
  [v8 didFinishUploadingWithError:v7 sessionID:v6];
}

- (void)commitSession:(id)a3
{
  v4 = a3;
  v5 = [(DEDLocalTransport *)self workerDelegate];
  [v5 commitSession:v4];
}

- (void)cancelSession:(id)a3
{
  v4 = a3;
  v5 = [(DEDLocalTransport *)self workerDelegate];
  [v5 cancelSession:v4];
}

- (void)scheduleNotificationForSession:(id)a3
{
  v4 = a3;
  v5 = [(DEDLocalTransport *)self workerDelegate];
  [v5 scheduleNotificationForSession:v4];
}

- (void)unscheduleNotificationForSession:(id)a3
{
  v4 = a3;
  v5 = [(DEDLocalTransport *)self workerDelegate];
  [v5 unscheduleNotificationForSession:v4];
}

- (void)loadTextDataForExtensions:(id)a3 localization:(id)a4 sessionID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DEDLocalTransport *)self workerDelegate];
  [v11 loadTextDataForExtensions:v10 localization:v9 sessionID:v8];
}

- (void)pongSession:(id)a3
{
  v4 = a3;
  v5 = [(DEDLocalTransport *)self clientDelegate];
  [v5 pongSession:v4];
}

- (void)deviceSupportsDiagnosticExtensions:(id)a3 session:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DEDLocalTransport *)self clientDelegate];
  [v8 deviceSupportsDiagnosticExtensions:v7 session:v6];
}

- (void)finishedDiagnosticWithIdentifier:(id)a3 result:(id)a4 session:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DEDLocalTransport *)self clientDelegate];
  [v11 finishedDiagnosticWithIdentifier:v10 result:v9 session:v8];
}

- (void)didCommitSession:(id)a3
{
  v4 = a3;
  v5 = [(DEDLocalTransport *)self clientDelegate];
  [v5 didCommitSession:v4];
}

- (void)didCancelSession:(id)a3
{
  v4 = a3;
  v5 = [(DEDLocalTransport *)self clientDelegate];
  [v5 didCancelSession:v4];
}

- (void)hasCollected:(id)a3 isCollecting:(id)a4 inSession:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DEDLocalTransport *)self clientDelegate];
  [v11 hasCollected:v10 isCollecting:v9 inSession:v8];
}

- (void)hasCollected:(id)a3 isCollecting:(id)a4 withIdentifiers:(id)a5 inSession:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(DEDLocalTransport *)self clientDelegate];
  [v14 hasCollected:v13 isCollecting:v12 withIdentifiers:v11 inSession:v10];
}

- (void)didGetState:(int64_t)a3 info:(id)a4 sessionID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(DEDLocalTransport *)self clientDelegate];
  [v10 didGetState:a3 info:v9 sessionID:v8];
}

- (void)didLoadTextDataForExtensions:(id)a3 localization:(id)a4 session:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DEDLocalTransport *)self clientDelegate];
  [v11 didLoadTextDataForExtensions:v10 localization:v9 session:v8];
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