@interface CRAppClipsDeclarationSession
- (CRAppClipsDeclarationAgent)declarationAgent;
- (void)fetchSupportedAppClipsForPairedVehicleIdentifier:(id)a3 completion:(id)a4;
@end

@implementation CRAppClipsDeclarationSession

- (void)fetchSupportedAppClipsForPairedVehicleIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_1C81FC000, v8, OS_LOG_TYPE_INFO, "received request for supported App Clips", v11, 2u);
  }

  v9 = [(CRAppClipsDeclarationSession *)self declarationAgent];
  v10 = [v9 appClipDeclarer];

  if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v10 supportedAppClipsForPairedVehicleIdentifier:v6 completion:v7];
  }
}

- (CRAppClipsDeclarationAgent)declarationAgent
{
  WeakRetained = objc_loadWeakRetained(&self->_declarationAgent);

  return WeakRetained;
}

@end