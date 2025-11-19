@interface HDEntitlementStoreServer
- (void)remote_fetchContainerAppExtensionEntitlementsWithCompletion:(id)a3;
@end

@implementation HDEntitlementStoreServer

- (void)remote_fetchContainerAppExtensionEntitlementsWithCompletion:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(HDStandardTaskServer *)self client];
    v6 = [v5 process];

    if (v6)
    {
      v7 = [v6 isExtension];
      v8 = MEMORY[0x277CBEC10];
      if (v7)
      {
        v9 = MEMORY[0x277CC1E88];
        v10 = [(HDStandardTaskServer *)self client];
        v11 = [v10 connection];
        v12 = [v9 hk_appExtensionContainerBundleForConnection:v11];

        if (v12)
        {
          v13 = [MEMORY[0x277CCDDA8] _allowedEntitlementsSet];
          v14 = [v12 entitlementValuesForKeys:v13];

          v15 = [v14 rawValues];
          v16 = v15;
          if (v15)
          {
            v17 = v15;
          }

          else
          {
            v17 = v8;
          }

          v8 = v17;
        }

        else
        {
          _HKInitializeLogging();
          v19 = *MEMORY[0x277CCC2B0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
          {
            v21 = v19;
            v22 = [(HDStandardTaskServer *)self client];
            v23 = 138543362;
            v24 = v22;
            _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "No container app bundle found for client %{public}@", &v23, 0xCu);
          }

          v8 = 0;
        }
      }

      v4[2](v4, v8, 0);
    }

    else
    {
      v18 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"No client connection"];
      (v4)[2](v4, 0, v18);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end