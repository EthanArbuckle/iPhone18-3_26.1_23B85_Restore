@interface DNDSAppSpecificSettingsTypeSystemAction
+ (id)appSpecificSettingsForManagedObject:(id)object;
+ (void)completeManagedObject:(id)object forAppSpecificSettings:(id)settings;
@end

@implementation DNDSAppSpecificSettingsTypeSystemAction

+ (id)appSpecificSettingsForManagedObject:(id)object
{
  objectCopy = object;
  enabled = [objectCopy enabled];
  v5 = MEMORY[0x277CCAAC8];
  v6 = objc_opt_class();
  encodedAction = [objectCopy encodedAction];
  v24 = 0;
  v8 = [v5 unarchivedObjectOfClass:v6 fromData:encodedAction error:&v24];
  v9 = v24;

  if (!v9)
  {
    encodedReverseAction = [objectCopy encodedReverseAction];

    if (encodedReverseAction)
    {
      v16 = MEMORY[0x277CCAAC8];
      v17 = objc_opt_class();
      encodedAction2 = [objectCopy encodedAction];
      v22 = 0;
      v19 = [v16 unarchivedObjectOfClass:v17 fromData:encodedAction2 error:&v22];
      encodedReverseAction = v22;

      if (encodedReverseAction && (v20 = DNDSLogSettings, os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_ERROR)))
      {
        [(DNDSAppSpecificSettingsTypeSystemAction *)encodedReverseAction appSpecificSettingsForManagedObject:v20];
        if (v19)
        {
          goto LABEL_9;
        }
      }

      else if (v19)
      {
LABEL_9:
        v13 = [objc_alloc(MEMORY[0x277D05AC0]) initWithAction:v8 reverseAction:v19 enabled:enabled];

        goto LABEL_12;
      }
    }

    v13 = [objc_alloc(MEMORY[0x277D05AC0]) initWithAction:v8 enabled:enabled];
    goto LABEL_12;
  }

  [MEMORY[0x277CCAAC8] setClass:objc_opt_class() forClassName:@"DNDSSystemAction"];
  v10 = MEMORY[0x277CCAAC8];
  v11 = objc_opt_class();
  encodedAction3 = [objectCopy encodedAction];
  v23 = 0;
  v13 = [v10 unarchivedObjectOfClass:v11 fromData:encodedAction3 error:&v23];
  encodedReverseAction = v23;

  if (encodedReverseAction)
  {
    v15 = DNDSLogSettings;
    if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_FAULT))
    {
      [(DNDSAppSpecificSettingsTypeSystemAction *)encodedReverseAction appSpecificSettingsForManagedObject:v15];
    }
  }

LABEL_12:

  return v13;
}

+ (void)completeManagedObject:(id)object forAppSpecificSettings:(id)settings
{
  objectCopy = object;
  v9 = 0;
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:settings requiringSecureCoding:1 error:&v9];
  v7 = v9;
  if (v7)
  {
    v8 = DNDSLogSettings;
    if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_ERROR))
    {
      [DNDSAppSpecificSettingsTypeSystemAction completeManagedObject:v7 forAppSpecificSettings:v8];
    }
  }

  [objectCopy setEncodedAction:v6];
}

+ (void)appSpecificSettingsForManagedObject:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_24912E000, a2, OS_LOG_TYPE_FAULT, "Failed to unarchive settings: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)appSpecificSettingsForManagedObject:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_24912E000, a2, OS_LOG_TYPE_ERROR, "Failed to unarchive settings: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)completeManagedObject:(uint64_t)a1 forAppSpecificSettings:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_24912E000, a2, OS_LOG_TYPE_ERROR, "Failed to archive settings: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end