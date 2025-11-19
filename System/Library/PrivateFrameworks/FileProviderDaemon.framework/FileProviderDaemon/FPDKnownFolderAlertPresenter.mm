@interface FPDKnownFolderAlertPresenter
- (BOOL)presentAlertWithUserAprovalToContinue;
- (FPDKnownFolderAlertPresenter)initWithProviderDomain:(id)a3;
@end

@implementation FPDKnownFolderAlertPresenter

- (FPDKnownFolderAlertPresenter)initWithProviderDomain:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FPDKnownFolderAlertPresenter;
  v5 = [(FPDKnownFolderAlertPresenter *)&v11 init];
  if (v5)
  {
    v6 = [v4 domainFullDisplayName];
    providerDisplayName = v5->_providerDisplayName;
    v5->_providerDisplayName = v6;

    v8 = [v4 topLevelBundleIdentifier];
    providerBundleIdentifier = v5->_providerBundleIdentifier;
    v5->_providerBundleIdentifier = v8;

    v5->_isiCloudDriveProvider = [v4 isiCloudDriveProvider];
  }

  return v5;
}

- (BOOL)presentAlertWithUserAprovalToContinue
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"alert should be implemented by subclass"];
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_fault_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", &v4, 0xCu);
  }

  __assert_rtn("-[FPDKnownFolderAlertPresenter presentAlertWithUserAprovalToContinue]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDKnownFolderAlertPresenter.m", 101, [v2 UTF8String]);
}

@end