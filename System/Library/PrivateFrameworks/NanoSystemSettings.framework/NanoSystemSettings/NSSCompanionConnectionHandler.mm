@interface NSSCompanionConnectionHandler
- (NSSCompanionConnectionHandler)initWithConnection:(id)connection delegate:(id)delegate;
- (void)cancelActiveLogFileTranfers;
- (void)cancelDiagnosticLogTranfer:(id)tranfer withCompletion:(id)completion;
- (void)deleteDiagnosticLogFile:(id)file withResult:(id)result;
- (void)fetchBetaEnrollmentStatus:(id)status;
- (void)getAboutInfo:(id)info;
- (void)getAccountsInfoForAccountType:(id)type completionHandler:(id)handler;
- (void)getDiagnosticLogFileFromGizmo:(id)gizmo withResults:(id)results;
- (void)getDiagnosticLogsInfo:(id)info;
- (void)getLegalDocuments:(id)documents;
- (void)getLocalesInfo:(id)info;
- (void)getProfilesInfo:(id)info;
- (void)getUsage:(id)usage;
- (void)getWatchFaces:(id)faces;
- (void)installProfile:(id)profile replyHandler:(id)handler;
- (void)purgeUsageBundle:(id)bundle replyHandler:(id)handler;
- (void)rebootDevice;
- (void)recordSoftwareUpdateSpaceFailure:(id)failure osBeingUpdatedTo:(id)to completion:(id)completion;
- (void)removeProfileWithIdentifier:(id)identifier replyHandler:(id)handler;
- (void)retrieveAirplaneModeSettingsWithCompletionHandler:(id)handler;
- (void)retrieveDiagnosticLogTransferProgress:(id)progress withProgress:(id)withProgress;
- (void)setAirplaneModeSettings:(id)settings withCompletionHandler:(id)handler;
- (void)setDeviceName:(id)name;
- (void)setWatchFaceIdentifier:(id)identifier forFocusModeIdentifier:(id)modeIdentifier completionHandler:(id)handler;
@end

@implementation NSSCompanionConnectionHandler

- (NSSCompanionConnectionHandler)initWithConnection:(id)connection delegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = NSSCompanionConnectionHandler;
  return [(NSSConnectionHandler *)&v5 initWithConnection:connection delegate:delegate];
}

- (void)setDeviceName:(id)name
{
  nameCopy = name;
  if ([(NSSConnectionHandler *)self hasNanoSystemSettingsEntitlementKey:@"device-name"])
  {
    delegate = [(NSSConnectionHandler *)self delegate];
    [delegate setDeviceName:nameCopy];
  }

  else
  {
    delegate = NSSLogForType();
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, delegate, OS_LOG_TYPE_DEFAULT, "Discarding request due to missing entitlement", v6, 2u);
    }
  }
}

- (void)getUsage:(id)usage
{
  v4 = off_10003D9E0;
  usageCopy = usage;
  if ([(NSSConnectionHandler *)self hasNanoSystemSettingsEntitlementKey:v4])
  {
    delegate = [(NSSConnectionHandler *)self delegate];
    [delegate getUsage:usageCopy];
  }

  else
  {
    delegate = [NSError errorWithDomain:@"NSSErrorDomain" code:1 userInfo:0];
    usageCopy[2](usageCopy, 0);
  }
}

- (void)retrieveAirplaneModeSettingsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(NSSConnectionHandler *)self hasNanoSystemSettingsEntitlementKey:@"airplanemode"])
  {
    delegate = [(NSSConnectionHandler *)self delegate];
    [delegate retrieveAirplaneModeSettingsWithCompletionHandler:handlerCopy];
  }

  else
  {
    delegate = [NSError errorWithDomain:@"NSSErrorDomain" code:1 userInfo:0];
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)setAirplaneModeSettings:(id)settings withCompletionHandler:(id)handler
{
  settingsCopy = settings;
  handlerCopy = handler;
  if ([(NSSConnectionHandler *)self hasNanoSystemSettingsEntitlementKey:@"airplanemode"])
  {
    delegate = [(NSSConnectionHandler *)self delegate];
    [delegate setAirplaneModeSettings:settingsCopy withCompletionHandler:handlerCopy];
  }

  else
  {
    delegate = [NSError errorWithDomain:@"NSSErrorDomain" code:1 userInfo:0];
    handlerCopy[2](handlerCopy, 0, delegate);
  }
}

- (void)purgeUsageBundle:(id)bundle replyHandler:(id)handler
{
  bundleCopy = bundle;
  v6 = off_10003D9E0;
  handlerCopy = handler;
  if ([(NSSConnectionHandler *)self hasNanoSystemSettingsEntitlementKey:v6])
  {
    delegate = [(NSSConnectionHandler *)self delegate];
    [delegate purgeUsageBundle:bundleCopy replyHandler:handlerCopy];
  }

  else
  {
    delegate = [NSError errorWithDomain:@"NSSErrorDomain" code:1 userInfo:0];
    handlerCopy[2](handlerCopy, delegate);
  }
}

- (void)getDiagnosticLogFileFromGizmo:(id)gizmo withResults:(id)results
{
  gizmoCopy = gizmo;
  resultsCopy = results;
  if ([(NSSConnectionHandler *)self hasNanoSystemSettingsEntitlementKey:@"diagnosticlogfile"])
  {
    delegate = [(NSSConnectionHandler *)self delegate];
    [delegate getDiagnosticLogFileFromGizmo:gizmoCopy withResults:resultsCopy];
  }

  else
  {
    delegate = [NSError errorWithDomain:@"NSSErrorDomain" code:1 userInfo:0];
    resultsCopy[2](resultsCopy, 0, delegate);
  }
}

- (void)retrieveDiagnosticLogTransferProgress:(id)progress withProgress:(id)withProgress
{
  withProgressCopy = withProgress;
  progressCopy = progress;
  delegate = [(NSSConnectionHandler *)self delegate];
  [delegate retrieveDiagnosticLogTransferProgress:progressCopy withProgress:withProgressCopy];
}

- (void)cancelDiagnosticLogTranfer:(id)tranfer withCompletion:(id)completion
{
  tranferCopy = tranfer;
  completionCopy = completion;
  if ([(NSSConnectionHandler *)self hasNanoSystemSettingsEntitlementKey:@"cancellogtransfer"])
  {
    delegate = [(NSSConnectionHandler *)self delegate];
    [delegate cancelDiagnosticLogTranfer:tranferCopy withCompletion:completionCopy];
  }

  else
  {
    delegate = [NSError errorWithDomain:@"NSSErrorDomain" code:1 userInfo:0];
    v9 = NSSLogForType();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = delegate;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Cancel file transfer failed with error: %@", &v10, 0xCu);
    }
  }
}

- (void)cancelActiveLogFileTranfers
{
  if ([(NSSConnectionHandler *)self hasNanoSystemSettingsEntitlementKey:@"cancellogtransfers"])
  {
    delegate = [(NSSConnectionHandler *)self delegate];
    [delegate cancelActiveLogFileTranfers];
  }

  else
  {
    v3 = [NSError errorWithDomain:@"NSSErrorDomain" code:1 userInfo:0];
    v4 = NSSLogForType();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cancel file transfers failed with error: %@", buf, 0xCu);
    }
  }
}

- (void)getDiagnosticLogsInfo:(id)info
{
  infoCopy = info;
  if ([(NSSConnectionHandler *)self hasNanoSystemSettingsEntitlementKey:@"diagnosticlogs"])
  {
    delegate = [(NSSConnectionHandler *)self delegate];
    [delegate getDiagnosticLogsInfo:infoCopy];
  }

  else
  {
    delegate = [NSError errorWithDomain:@"NSSErrorDomain" code:1 userInfo:0];
    (*(infoCopy + 2))(infoCopy, 0, 0);
  }
}

- (void)deleteDiagnosticLogFile:(id)file withResult:(id)result
{
  fileCopy = file;
  resultCopy = result;
  if ([(NSSConnectionHandler *)self hasNanoSystemSettingsEntitlementKey:@"diagnosticdelete"])
  {
    delegate = [(NSSConnectionHandler *)self delegate];
    [delegate deleteDiagnosticLogFile:fileCopy withResult:resultCopy];
  }

  else
  {
    delegate = [NSError errorWithDomain:@"NSSErrorDomain" code:1 userInfo:0];
    resultCopy[2](resultCopy, delegate);
  }
}

- (void)getAboutInfo:(id)info
{
  infoCopy = info;
  if ([(NSSConnectionHandler *)self hasNanoSystemSettingsEntitlementKey:@"about"])
  {
    delegate = [(NSSConnectionHandler *)self delegate];
    [delegate getAboutInfo:infoCopy];
  }

  else
  {
    delegate = [NSError errorWithDomain:@"NSSErrorDomain" code:1 userInfo:0];
    infoCopy[2](infoCopy, 0);
  }
}

- (void)recordSoftwareUpdateSpaceFailure:(id)failure osBeingUpdatedTo:(id)to completion:(id)completion
{
  failureCopy = failure;
  toCopy = to;
  completionCopy = completion;
  if ([(NSSConnectionHandler *)self hasNanoSystemSettingsEntitlementKey:@"about"])
  {
    delegate = [(NSSConnectionHandler *)self delegate];
    [delegate recordSoftwareUpdateSpaceFailure:failureCopy osBeingUpdatedTo:toCopy completion:completionCopy];
  }

  else
  {
    delegate = [NSError errorWithDomain:@"NSSErrorDomain" code:1 userInfo:0];
    completionCopy[2](completionCopy, delegate);
  }
}

- (void)getAccountsInfoForAccountType:(id)type completionHandler:(id)handler
{
  typeCopy = type;
  handlerCopy = handler;
  if ([(NSSConnectionHandler *)self hasNanoSystemSettingsEntitlementKey:@"accounts"]|| [(NSSConnectionHandler *)self hasNanoSystemSettingsEntitlementKey:@"icloud"])
  {
    delegate = [(NSSConnectionHandler *)self delegate];
    [delegate getAccountsInfoForAccountType:typeCopy completionHandler:handlerCopy];
  }

  else
  {
    delegate = [NSError errorWithDomain:@"NSSErrorDomain" code:1 userInfo:0];
    handlerCopy[2](handlerCopy, 0, delegate);
  }
}

- (void)getProfilesInfo:(id)info
{
  infoCopy = info;
  if ([(NSSConnectionHandler *)self hasNanoSystemSettingsEntitlementKey:@"profiles"])
  {
    delegate = [(NSSConnectionHandler *)self delegate];
    [delegate getProfilesInfo:infoCopy];
  }

  else
  {
    delegate = [NSError errorWithDomain:@"NSSErrorDomain" code:1 userInfo:0];
    infoCopy[2](infoCopy, 0);
  }
}

- (void)installProfile:(id)profile replyHandler:(id)handler
{
  profileCopy = profile;
  handlerCopy = handler;
  if ([(NSSConnectionHandler *)self hasNanoSystemSettingsEntitlementKey:@"profiles"])
  {
    delegate = [(NSSConnectionHandler *)self delegate];
    [delegate installProfile:profileCopy replyHandler:handlerCopy];
  }

  else
  {
    delegate = [NSError errorWithDomain:@"NSSErrorDomain" code:1 userInfo:0];
    handlerCopy[2](handlerCopy, delegate);
  }
}

- (void)removeProfileWithIdentifier:(id)identifier replyHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if ([(NSSConnectionHandler *)self hasNanoSystemSettingsEntitlementKey:@"profiles"])
  {
    delegate = [(NSSConnectionHandler *)self delegate];
    [delegate removeProfileWithIdentifier:identifierCopy replyHandler:handlerCopy];
  }

  else
  {
    delegate = [NSError errorWithDomain:@"NSSErrorDomain" code:1 userInfo:0];
    handlerCopy[2](handlerCopy, delegate);
  }
}

- (void)rebootDevice
{
  if ([(NSSConnectionHandler *)self hasNanoSystemSettingsEntitlementKey:@"reboot"])
  {
    delegate = [(NSSConnectionHandler *)self delegate];
    [delegate rebootDevice];
  }

  else
  {
    v3 = NSSLogForType();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Discarding request due to missing entitlement", buf, 2u);
    }
  }
}

- (void)getLegalDocuments:(id)documents
{
  documentsCopy = documents;
  if ([(NSSConnectionHandler *)self hasNanoSystemSettingsEntitlementKey:@"legal"])
  {
    delegate = [(NSSConnectionHandler *)self delegate];
    [delegate getLegalDocuments:documentsCopy];
  }

  else
  {
    delegate = [NSError errorWithDomain:@"NSSErrorDomain" code:1 userInfo:0];
    documentsCopy[2](documentsCopy, 0);
  }
}

- (void)getLocalesInfo:(id)info
{
  infoCopy = info;
  if ([(NSSConnectionHandler *)self hasNanoSystemSettingsEntitlementKey:@"locales"])
  {
    delegate = [(NSSConnectionHandler *)self delegate];
    [delegate getLocalesInfo:infoCopy];
  }

  else
  {
    delegate = [NSError errorWithDomain:@"NSSErrorDomain" code:1 userInfo:0];
    infoCopy[2](infoCopy, 0);
  }
}

- (void)getWatchFaces:(id)faces
{
  facesCopy = faces;
  if ([(NSSConnectionHandler *)self hasNanoSystemSettingsEntitlementKey:@"watchfaces"])
  {
    delegate = [(NSSConnectionHandler *)self delegate];
    [delegate getWatchFaces:facesCopy];
  }

  else
  {
    delegate = [NSError errorWithDomain:@"NSSErrorDomain" code:1 userInfo:0];
    facesCopy[2](facesCopy, 0);
  }
}

- (void)setWatchFaceIdentifier:(id)identifier forFocusModeIdentifier:(id)modeIdentifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  modeIdentifierCopy = modeIdentifier;
  handlerCopy = handler;
  if ([(NSSConnectionHandler *)self hasNanoSystemSettingsEntitlementKey:@"watchfaces"])
  {
    delegate = [(NSSConnectionHandler *)self delegate];
    [delegate setWatchFaceIdentifier:identifierCopy forFocusModeIdentifier:modeIdentifierCopy completionHandler:handlerCopy];
  }

  else
  {
    delegate = [NSError errorWithDomain:@"NSSErrorDomain" code:1 userInfo:0];
    handlerCopy[2](handlerCopy, delegate);
  }
}

- (void)fetchBetaEnrollmentStatus:(id)status
{
  statusCopy = status;
  if ([(NSSConnectionHandler *)self hasNanoSystemSettingsEntitlementKey:@"betaenrollment"])
  {
    delegate = [(NSSConnectionHandler *)self delegate];
    [delegate fetchBetaEnrollmentStatus:statusCopy];
  }

  else
  {
    v5 = NSSLogForType();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "[NSSCompanionConnectionHandler fetchBetaEnrollmentStatus:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Discarding request due to missing entitlement", buf, 0xCu);
    }

    v6 = [NSError errorWithDomain:@"NSSErrorDomain" code:1 userInfo:0];
    (*(statusCopy + 2))(statusCopy, 0, v6);
  }
}

@end