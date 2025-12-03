@interface HDEntitlementStoreServer
- (void)remote_fetchContainerAppExtensionEntitlementsWithCompletion:(id)completion;
@end

@implementation HDEntitlementStoreServer

- (void)remote_fetchContainerAppExtensionEntitlementsWithCompletion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (completionCopy)
  {
    client = [(HDStandardTaskServer *)self client];
    process = [client process];

    if (process)
    {
      isExtension = [process isExtension];
      v8 = MEMORY[0x277CBEC10];
      if (isExtension)
      {
        v9 = MEMORY[0x277CC1E88];
        client2 = [(HDStandardTaskServer *)self client];
        connection = [client2 connection];
        v12 = [v9 hk_appExtensionContainerBundleForConnection:connection];

        if (v12)
        {
          _allowedEntitlementsSet = [MEMORY[0x277CCDDA8] _allowedEntitlementsSet];
          v14 = [v12 entitlementValuesForKeys:_allowedEntitlementsSet];

          rawValues = [v14 rawValues];
          v16 = rawValues;
          if (rawValues)
          {
            v17 = rawValues;
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
            client3 = [(HDStandardTaskServer *)self client];
            v23 = 138543362;
            v24 = client3;
            _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "No container app bundle found for client %{public}@", &v23, 0xCu);
          }

          v8 = 0;
        }
      }

      completionCopy[2](completionCopy, v8, 0);
    }

    else
    {
      v18 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"No client connection"];
      (completionCopy)[2](completionCopy, 0, v18);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end