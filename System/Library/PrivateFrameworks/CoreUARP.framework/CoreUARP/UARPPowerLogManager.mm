@interface UARPPowerLogManager
- (BOOL)accessoryIDSupportsPowerLogging:(id)a3;
- (UARPPowerLogManager)init;
- (id)createPowerLogAccessoryForAccessoryID:(id)a3;
- (id)pendingReachabilityEventForAccessoryID:(id)a3;
- (id)powerLogAccessoryForAccessoryID:(id)a3;
- (id)powerLogAccessoryForUUID:(id)a3;
- (void)addAccessoryID:(id)a3;
- (void)postPendingReachabilityEvent:(id)a3;
- (void)removeAccessoryID:(id)a3;
- (void)setAccessoryIDReachable:(id)a3;
- (void)setAccessoryIDUnreachable:(id)a3;
- (void)setActiveFirmwareVersionForAccessoryID:(id)a3 activeFirmwareVersion:(id)a4;
- (void)setAssetOfferedForAccessoryID:(id)a3 offeredFirmwareVersion:(id)a4 activeFirmwareVersion:(id)a5;
- (void)setStagedFirmwareVersionForAccessoryID:(id)a3 stagedFirmwareVersion:(id)a4;
- (void)setStagingCompleteForAccessoryID:(id)a3 stagedFirmwareVersion:(id)a4 activeFirmareVersion:(id)a5 status:(unint64_t)a6;
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

- (BOOL)accessoryIDSupportsPowerLogging:(id)a3
{
  v3 = [a3 modelNumber];
  if (v3)
  {
    v4 = [UARPSupportedAccessory findByAppleModelNumber:v3];
    v5 = [v4 supportsPowerLogging];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)createPowerLogAccessoryForAccessoryID:(id)a3
{
  v4 = a3;
  if ([(UARPPowerLogManager *)self accessoryIDSupportsPowerLogging:v4])
  {
    v5 = [UARPPowerLogAccessory alloc];
    v6 = [v4 modelNumber];
    v7 = [v4 uuid];
    v8 = [(UARPPowerLogAccessory *)v5 initWithModelNumber:v6 uuid:v7 stagingWindowPeriodSeconds:self->_stagingWindowPeriodSeconds];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)addAccessoryID:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(UARPPowerLogManager *)self createPowerLogAccessoryForAccessoryID:v4];
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
        v9 = v4;
        _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "Added: %@", &v8, 0xCu);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)powerLogAccessoryForUUID:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
        v10 = [v9 uuid];
        v11 = [v10 isEqual:v4];

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

- (id)powerLogAccessoryForAccessoryID:(id)a3
{
  v4 = [a3 uuid];
  v5 = [(UARPPowerLogManager *)self powerLogAccessoryForUUID:v4];

  return v5;
}

- (id)pendingReachabilityEventForAccessoryID:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
        v10 = [v9 uuid];
        v11 = [v4 uuid];
        v12 = [v10 isEqual:v11];

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

- (void)postPendingReachabilityEvent:(id)a3
{
  v4 = a3;
  [(NSMutableSet *)self->_pendingReachableEvents removeObject:v4];
  v5 = [v4 uuid];
  v6 = [(UARPPowerLogManager *)self powerLogAccessoryForUUID:v5];

  if (v6)
  {
    v7 = [v4 activeFirmwareVersion];
    v8 = [v4 stagedFirmwareVersion];
    [v6 setReachableWithActiveFirmwareVersion:v7 stagedFirmwareVersion:v8];
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [UARPPowerLogManager postPendingReachabilityEvent:];
  }
}

- (void)removeAccessoryID:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(UARPPowerLogManager *)self powerLogAccessoryForAccessoryID:v4];
  if (v5)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "Removed: %@", &v8, 0xCu);
    }

    [(NSMutableSet *)self->_accessories removeObject:v5];
  }

  else if ([(UARPPowerLogManager *)self accessoryIDSupportsPowerLogging:v4]&& os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [UARPPowerLogManager removeAccessoryID:];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setAccessoryIDReachable:(id)a3
{
  v4 = a3;
  v5 = [(UARPPowerLogManager *)self powerLogAccessoryForAccessoryID:v4];
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
      v8 = [v4 modelNumber];
      v9 = [v4 uuid];
      v10 = [(UARPPowerLogPendingReachabilityEvent *)v7 initModelNumber:v8 uuid:v9];

      [(NSMutableSet *)self->_pendingReachableEvents addObject:v10];
    }
  }

  else if ([(UARPPowerLogManager *)self accessoryIDSupportsPowerLogging:v4]&& os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [UARPPowerLogManager setAccessoryIDReachable:];
  }
}

- (void)setStagedFirmwareVersionForAccessoryID:(id)a3 stagedFirmwareVersion:(id)a4
{
  v8 = a4;
  v6 = [(UARPPowerLogManager *)self pendingReachabilityEventForAccessoryID:a3];
  v7 = v6;
  if (v6)
  {
    [v6 setStagedFirmwareVersion:v8];
    if ([v7 allDataPresent])
    {
      [(UARPPowerLogManager *)self postPendingReachabilityEvent:v7];
    }
  }
}

- (void)setActiveFirmwareVersionForAccessoryID:(id)a3 activeFirmwareVersion:(id)a4
{
  v8 = a4;
  v6 = [(UARPPowerLogManager *)self pendingReachabilityEventForAccessoryID:a3];
  v7 = v6;
  if (v6)
  {
    [v6 setActiveFirmwareVersion:v8];
    if ([v7 allDataPresent])
    {
      [(UARPPowerLogManager *)self postPendingReachabilityEvent:v7];
    }
  }
}

- (void)setAccessoryIDUnreachable:(id)a3
{
  v4 = a3;
  v5 = [(UARPPowerLogManager *)self powerLogAccessoryForAccessoryID:v4];
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

  else if ([(UARPPowerLogManager *)self accessoryIDSupportsPowerLogging:v4]&& os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [UARPPowerLogManager setAccessoryIDUnreachable:];
  }
}

- (void)setAssetOfferedForAccessoryID:(id)a3 offeredFirmwareVersion:(id)a4 activeFirmwareVersion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(UARPPowerLogManager *)self powerLogAccessoryForAccessoryID:a3];
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

      else if (v8)
      {
        if (v9)
        {
          [v11 setAssetOfferedWithVersion:v8 activeFirmwareVersion:v9];
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

- (void)setStagingCompleteForAccessoryID:(id)a3 stagedFirmwareVersion:(id)a4 activeFirmareVersion:(id)a5 status:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(UARPPowerLogManager *)self powerLogAccessoryForAccessoryID:v10];
  v14 = v13;
  if (v13)
  {
    if ([v13 stagingInProgress])
    {
      if (v11)
      {
        if (v12)
        {
LABEL_14:
          [v14 setStagingCompleteForStagedFirmareVersion:v11 activeFirmareVersion:v12 status:a6];
          goto LABEL_15;
        }
      }

      else
      {
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          [UARPPowerLogManager setStagingCompleteForAccessoryID:stagedFirmwareVersion:activeFirmareVersion:status:];
        }

        v11 = &stru_2859B53B8;
        if (v12)
        {
          goto LABEL_14;
        }
      }

      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [UARPPowerLogManager setStagingCompleteForAccessoryID:stagedFirmwareVersion:activeFirmareVersion:status:];
      }

      v12 = &stru_2859B53B8;
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