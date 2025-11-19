@interface DMTManagedConfigurationBackedProfileInstallationPrimitives
- (BOOL)uninstallProfileWithIdentifier:(id)a3 error:(id *)a4;
- (id)installProfileData:(id)a3 error:(id *)a4;
@end

@implementation DMTManagedConfigurationBackedProfileInstallationPrimitives

- (id)installProfileData:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277D262A0];
  v6 = a3;
  v7 = [v5 sharedConnection];
  v13 = 0;
  v8 = [v7 installProfileData:v6 options:MEMORY[0x277CBEC10] outError:&v13];

  v9 = v13;
  if (!v8)
  {
    if (_DMTLogGeneral_onceToken_11 != -1)
    {
      [DMTManagedConfigurationBackedProfileInstallationPrimitives installProfileData:error:];
    }

    v10 = _DMTLogGeneral_logObj_11;
    if (!os_log_type_enabled(_DMTLogGeneral_logObj_11, OS_LOG_TYPE_ERROR))
    {
      if (!a4)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    [DMTManagedConfigurationBackedProfileInstallationPrimitives installProfileData:v9 error:v10];
    if (a4)
    {
LABEL_6:
      v11 = v9;
      *a4 = v9;
    }
  }

LABEL_7:

  return v8;
}

- (BOOL)uninstallProfileWithIdentifier:(id)a3 error:(id *)a4
{
  v4 = MEMORY[0x277D262A0];
  v5 = a3;
  v6 = [v4 sharedConnection];
  [v6 removeProfileWithIdentifier:v5];

  return 1;
}

- (void)installProfileData:(uint64_t)a1 error:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_24891B000, a2, OS_LOG_TYPE_ERROR, "Failed to install profile: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end