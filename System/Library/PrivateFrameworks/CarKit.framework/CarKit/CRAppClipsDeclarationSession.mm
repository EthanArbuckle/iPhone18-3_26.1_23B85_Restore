@interface CRAppClipsDeclarationSession
- (CRAppClipsDeclarationAgent)declarationAgent;
- (void)fetchSupportedAppClipsForPairedVehicleIdentifier:(id)identifier completion:(id)completion;
@end

@implementation CRAppClipsDeclarationSession

- (void)fetchSupportedAppClipsForPairedVehicleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_1C81FC000, v8, OS_LOG_TYPE_INFO, "received request for supported App Clips", v11, 2u);
  }

  declarationAgent = [(CRAppClipsDeclarationSession *)self declarationAgent];
  appClipDeclarer = [declarationAgent appClipDeclarer];

  if (appClipDeclarer && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [appClipDeclarer supportedAppClipsForPairedVehicleIdentifier:identifierCopy completion:completionCopy];
  }
}

- (CRAppClipsDeclarationAgent)declarationAgent
{
  WeakRetained = objc_loadWeakRetained(&self->_declarationAgent);

  return WeakRetained;
}

@end