@interface UARPPowerLogManager
- (BOOL)accessoryIDSupportsPowerLogging:(id)logging;
- (UARPPowerLogManager)init;
- (id)createPowerLogAccessoryForAccessoryID:(id)d;
- (id)pendingReachabilityEventForAccessoryID:(id)d;
- (id)powerLogAccessoryForAccessoryID:(id)d;
- (id)powerLogAccessoryForUUID:(id)d;
- (void)addAccessoryID:(id)d;
- (void)postPendingReachabilityEvent:(id)event;
- (void)removeAccessoryID:(id)d;
- (void)setAccessoryIDReachable:(id)reachable;
- (void)setAccessoryIDUnreachable:(id)unreachable;
- (void)setActiveFirmwareVersionForAccessoryID:(id)d activeFirmwareVersion:(id)version;
- (void)setAssetOfferedForAccessoryID:(id)d offeredFirmwareVersion:(id)version activeFirmwareVersion:(id)firmwareVersion;
- (void)setStagedFirmwareVersionForAccessoryID:(id)d stagedFirmwareVersion:(id)version;
- (void)setStagingCompleteForAccessoryID:(id)d stagedFirmwareVersion:(id)version activeFirmareVersion:(id)firmareVersion status:(unint64_t)status;
@end

@implementation UARPPowerLogManager

- (UARPPowerLogManager)init
{
  v10.receiver = self;
  v10.super_class = UARPPowerLogManager;
  v2 = [(UARPPowerLogManager *)&v10 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.accessoryupdater.uarp", "powerLogManager");
    log = v2->_log;
    v2->_log = v3;

    v5 = [MEMORY[0x277CBEB58] set];
    accessories = v2->_accessories;
    v2->_accessories = v5;

    v7 = [MEMORY[0x277CBEB58] set];
    pendingReachableEvents = v2->_pendingReachableEvents;
    v2->_pendingReachableEvents = v7;

    v2->_stagingWindowPeriodSeconds = 900;
  }

  return v2;
}

- (BOOL)accessoryIDSupportsPowerLogging:(id)logging
{
  modelNumber = [logging modelNumber];
  if (modelNumber)
  {
    v4 = [UARPSupportedAccessory findByAppleModelNumber:modelNumber];
    supportsPowerLogging = [v4 supportsPowerLogging];
  }

  else
  {
    supportsPowerLogging = 0;
  }

  return supportsPowerLogging;
}

- (id)createPowerLogAccessoryForAccessoryID:(id)d
{
  dCopy = d;
  if ([(UARPPowerLogManager *)self accessoryIDSupportsPowerLogging:dCopy])
  {
    v5 = [UARPPowerLogAccessory alloc];
    modelNumber = [dCopy modelNumber];
    uuid = [dCopy uuid];
    v8 = [(UARPPowerLogAccessory *)v5 initWithModelNumber:modelNumber uuid:uuid stagingWindowPeriodSeconds:self->_stagingWindowPeriodSeconds];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)addAccessoryID:(id)d
{
  v10 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(UARPPowerLogManager *)self createPowerLogAccessoryForAccessoryID:dCopy];
  if (v5)
  {
    if ([(NSMutableSet *)self->_accessories containsObject:v5])
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [UARPPowerLogManager addAccessoryID:];
      }
    }

    else
    {
      [(NSMutableSet *)self->_accessories addObject:v5];
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = dCopy;
        _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "Added: %@", &v8, 0xCu);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)powerLogAccessoryForUUID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_accessories;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        uuid = [v9 uuid];
        v11 = [uuid isEqual:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)powerLogAccessoryForAccessoryID:(id)d
{
  uuid = [d uuid];
  v5 = [(UARPPowerLogManager *)self powerLogAccessoryForUUID:uuid];

  return v5;
}

- (id)pendingReachabilityEventForAccessoryID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_pendingReachableEvents;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        uuid = [v9 uuid];
        uuid2 = [dCopy uuid];
        v12 = [uuid isEqual:uuid2];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)postPendingReachabilityEvent:(id)event
{
  eventCopy = event;
  [(NSMutableSet *)self->_pendingReachableEvents removeObject:eventCopy];
  uuid = [eventCopy uuid];
  v6 = [(UARPPowerLogManager *)self powerLogAccessoryForUUID:uuid];

  if (v6)
  {
    activeFirmwareVersion = [eventCopy activeFirmwareVersion];
    stagedFirmwareVersion = [eventCopy stagedFirmwareVersion];
    [v6 setReachableWithActiveFirmwareVersion:activeFirmwareVersion stagedFirmwareVersion:stagedFirmwareVersion];
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [UARPPowerLogManager postPendingReachabilityEvent:];
  }
}

- (void)removeAccessoryID:(id)d
{
  v10 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(UARPPowerLogManager *)self powerLogAccessoryForAccessoryID:dCopy];
  if (v5)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = dCopy;
      _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "Removed: %@", &v8, 0xCu);
    }

    [(NSMutableSet *)self->_accessories removeObject:v5];
  }

  else if ([(UARPPowerLogManager *)self accessoryIDSupportsPowerLogging:dCopy]&& os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [UARPPowerLogManager removeAccessoryID:];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setAccessoryIDReachable:(id)reachable
{
  reachableCopy = reachable;
  v5 = [(UARPPowerLogManager *)self powerLogAccessoryForAccessoryID:reachableCopy];
  v6 = v5;
  if (v5)
  {
    if ([v5 reachable])
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [UARPPowerLogManager setAccessoryIDReachable:];
      }
    }

    else
    {
      v7 = [UARPPowerLogPendingReachabilityEvent alloc];
      modelNumber = [reachableCopy modelNumber];
      uuid = [reachableCopy uuid];
      v10 = [(UARPPowerLogPendingReachabilityEvent *)v7 initModelNumber:modelNumber uuid:uuid];

      [(NSMutableSet *)self->_pendingReachableEvents addObject:v10];
    }
  }

  else if ([(UARPPowerLogManager *)self accessoryIDSupportsPowerLogging:reachableCopy]&& os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [UARPPowerLogManager setAccessoryIDReachable:];
  }
}

- (void)setStagedFirmwareVersionForAccessoryID:(id)d stagedFirmwareVersion:(id)version
{
  versionCopy = version;
  v6 = [(UARPPowerLogManager *)self pendingReachabilityEventForAccessoryID:d];
  v7 = v6;
  if (v6)
  {
    [v6 setStagedFirmwareVersion:versionCopy];
    if ([v7 allDataPresent])
    {
      [(UARPPowerLogManager *)self postPendingReachabilityEvent:v7];
    }
  }
}

- (void)setActiveFirmwareVersionForAccessoryID:(id)d activeFirmwareVersion:(id)version
{
  versionCopy = version;
  v6 = [(UARPPowerLogManager *)self pendingReachabilityEventForAccessoryID:d];
  v7 = v6;
  if (v6)
  {
    [v6 setActiveFirmwareVersion:versionCopy];
    if ([v7 allDataPresent])
    {
      [(UARPPowerLogManager *)self postPendingReachabilityEvent:v7];
    }
  }
}

- (void)setAccessoryIDUnreachable:(id)unreachable
{
  unreachableCopy = unreachable;
  v5 = [(UARPPowerLogManager *)self powerLogAccessoryForAccessoryID:unreachableCopy];
  v6 = v5;
  if (v5)
  {
    if ([v5 reachable])
    {
      [v6 setUnreachable];
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPPowerLogManager setAccessoryIDUnreachable:];
    }
  }

  else if ([(UARPPowerLogManager *)self accessoryIDSupportsPowerLogging:unreachableCopy]&& os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [UARPPowerLogManager setAccessoryIDUnreachable:];
  }
}

- (void)setAssetOfferedForAccessoryID:(id)d offeredFirmwareVersion:(id)version activeFirmwareVersion:(id)firmwareVersion
{
  versionCopy = version;
  firmwareVersionCopy = firmwareVersion;
  v10 = [(UARPPowerLogManager *)self powerLogAccessoryForAccessoryID:d];
  v11 = v10;
  if (v10)
  {
    if ([v10 reachable])
    {
      if ([v11 stagingInProgress])
      {
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          [UARPPowerLogManager setAssetOfferedForAccessoryID:offeredFirmwareVersion:activeFirmwareVersion:];
        }
      }

      else if (versionCopy)
      {
        if (firmwareVersionCopy)
        {
          [v11 setAssetOfferedWithVersion:versionCopy activeFirmwareVersion:firmwareVersionCopy];
        }

        else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          [UARPPowerLogManager setAssetOfferedForAccessoryID:offeredFirmwareVersion:activeFirmwareVersion:];
        }
      }

      else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [UARPPowerLogManager setAssetOfferedForAccessoryID:offeredFirmwareVersion:activeFirmwareVersion:];
      }
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPPowerLogManager setAssetOfferedForAccessoryID:offeredFirmwareVersion:activeFirmwareVersion:];
    }
  }
}

- (void)setStagingCompleteForAccessoryID:(id)d stagedFirmwareVersion:(id)version activeFirmareVersion:(id)firmareVersion status:(unint64_t)status
{
  dCopy = d;
  versionCopy = version;
  firmareVersionCopy = firmareVersion;
  v13 = [(UARPPowerLogManager *)self powerLogAccessoryForAccessoryID:dCopy];
  v14 = v13;
  if (v13)
  {
    if ([v13 stagingInProgress])
    {
      if (versionCopy)
      {
        if (firmareVersionCopy)
        {
LABEL_14:
          [v14 setStagingCompleteForStagedFirmareVersion:versionCopy activeFirmareVersion:firmareVersionCopy status:status];
          goto LABEL_15;
        }
      }

      else
      {
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          [UARPPowerLogManager setStagingCompleteForAccessoryID:stagedFirmwareVersion:activeFirmareVersion:status:];
        }

        versionCopy = &stru_2859B53B8;
        if (firmareVersionCopy)
        {
          goto LABEL_14;
        }
      }

      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [UARPPowerLogManager setStagingCompleteForAccessoryID:stagedFirmwareVersion:activeFirmareVersion:status:];
      }

      firmareVersionCopy = &stru_2859B53B8;
      goto LABEL_14;
    }

    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPPowerLogManager setStagingCompleteForAccessoryID:stagedFirmwareVersion:activeFirmareVersion:status:];
    }
  }

LABEL_15:
}

- (void)addAccessoryID:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v0, v1, "Attempting to add %@ twice", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)postPendingReachabilityEvent:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v0, v1, "Attemping to post reachability event, but backing accessory is missing: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeAccessoryID:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v0, v1, "Attempting to remove accessory that is not present: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setAccessoryIDReachable:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v0, v1, "Attemping to mark accessory reachable that is already reachable: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setAccessoryIDReachable:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v0, v1, "Attempting to mark accessory reachable that is not present: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setAccessoryIDUnreachable:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v0, v1, "Attempting to mark accessory unreachable that is already unreachable: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setAccessoryIDUnreachable:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v0, v1, "Attempting to make accessory unreachable that is not present: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setAssetOfferedForAccessoryID:offeredFirmwareVersion:activeFirmwareVersion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v0, v1, "Attempting to offer asset to unreachable accessory: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setAssetOfferedForAccessoryID:offeredFirmwareVersion:activeFirmwareVersion:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v0, v1, "Attempting to stage with nil active firmware version: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setAssetOfferedForAccessoryID:offeredFirmwareVersion:activeFirmwareVersion:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v0, v1, "Attempting to stage nil firmware version: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setAssetOfferedForAccessoryID:offeredFirmwareVersion:activeFirmwareVersion:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v0, v1, "Attempting to offer asset to accessory already staging: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setStagingCompleteForAccessoryID:stagedFirmwareVersion:activeFirmareVersion:status:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v0, v1, "Attempting to complete staging for accessory where staging is not in progress: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setStagingCompleteForAccessoryID:stagedFirmwareVersion:activeFirmareVersion:status:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v0, v1, "Attempting to complete staging for a nil firmware version: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setStagingCompleteForAccessoryID:stagedFirmwareVersion:activeFirmareVersion:status:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v0, v1, "Attempting to complete staging with nil active firmware version: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateStagingProgressForAccessoryID:requestedOffset:requestedLength:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v0, v1, "Attempting to update staging progress for an accessory where staging is not in progress: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end