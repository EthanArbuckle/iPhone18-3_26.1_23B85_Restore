@interface CKDDeviceCapabilityUsageSQLCache
+ (id)_groupNameForContainer:(id)container;
+ (id)deviceCapabilityUsageSQLCacheForContainer:(id)container;
+ (id)deviceCapabilityUsageSQLCacheForTesting:(id)testing;
+ (id)deviceCapabilityUsageSQLCacheForTesting:(id)testing withDatabase:(id)database;
- (BOOL)deleteAllUsageEntriesWithError:(id *)error;
- (BOOL)deleteLastSentCapabilitiesAndUsageEntryWithError:(id *)error;
- (BOOL)deleteRecordWithUnknownShareUsageForRecordID:(id)d withError:(id *)error;
- (BOOL)deleteShareUsageForShareID:(id)d withError:(id *)error;
- (BOOL)deleteZoneUsageForZoneID:(id)d withError:(id *)error;
- (BOOL)setRecordWithUnknownShareUsage:(id)usage forRecordID:(id)d withError:(id *)error;
- (BOOL)setShareUsage:(id)usage forShareID:(id)d withError:(id *)error;
- (BOOL)setZoneUsage:(id)usage forZoneID:(id)d withError:(id *)error;
- (BOOL)updateCapabilitySet:(id)set capabilitySetSavedDate:(id)date withError:(id *)error;
- (BOOL)updateUsageSavedDate:(id)date withError:(id *)error;
- (id)lastSentCapabilitiesAndUsageWithError:(id *)error;
- (id)recordWithUnknownShareUsageForRecordID:(id)d withError:(id *)error;
- (id)recordWithUnknownShareUsagesWithMaxCount:(unint64_t)count withError:(id *)error;
- (id)shareUsageForShareID:(id)d withError:(id *)error;
- (id)shareUsagesWithMaxCount:(unint64_t)count withError:(id *)error;
- (id)zoneUsageForZoneID:(id)d withError:(id *)error;
- (id)zoneUsagesWithMaxCount:(unint64_t)count withError:(id *)error;
- (void)createTables;
@end

@implementation CKDDeviceCapabilityUsageSQLCache

- (void)createTables
{
  v19.receiver = self;
  v19.super_class = CKDDeviceCapabilityUsageSQLCache;
  [(CKSQLiteContainerAttributedTableGroup *)&v19 createTables];
  v3 = [CKDDeviceCapabilityUsageSQLTable alloc];
  v6 = objc_msgSend_containerID(self, v4, v5);
  v8 = objc_msgSend_initWithContainerID_(v3, v7, v6);
  usageTable = self->_usageTable;
  self->_usageTable = v8;

  v10 = [CKDDeviceCapabilityLastSentCapabilitiesAndUsageTable alloc];
  v13 = objc_msgSend_containerID(self, v11, v12);
  v15 = objc_msgSend_initWithContainerID_(v10, v14, v13);
  lastSentTable = self->_lastSentTable;
  self->_lastSentTable = v15;

  objc_msgSend_addTable_(self, v17, self->_usageTable);
  objc_msgSend_addTable_(self, v18, self->_lastSentTable);
}

+ (id)deviceCapabilityUsageSQLCacheForTesting:(id)testing
{
  v20 = *MEMORY[0x277D85DE8];
  testingCopy = testing;
  v15 = 0;
  v6 = objc_msgSend_newInMemoryDatabase_(MEMORY[0x277CBC658], v5, &v15);
  v7 = v15;
  v9 = v7;
  if (v6)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v12 = objc_msgSend_deviceCapabilityUsageSQLCacheForTesting_withDatabase_(self, v8, testingCopy, v6);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v17 = testingCopy;
      v18 = 2112;
      v19 = v9;
      _os_log_error_impl(&dword_22506F000, v11, OS_LOG_TYPE_ERROR, "Failed to create Device Capability Cache for containerID %@, error: %@", buf, 0x16u);
    }

    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)deviceCapabilityUsageSQLCacheForTesting:(id)testing withDatabase:(id)database
{
  v20 = *MEMORY[0x277D85DE8];
  testingCopy = testing;
  v15 = 0;
  v7 = objc_msgSend_tableGroupInDatabase_withName_error_(CKDDeviceCapabilityUsageSQLCache, v6, database, @"Test CKDDeviceCapabilityUsageSQLCache", &v15);
  v8 = v15;
  v10 = v8;
  if (v7)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    objc_msgSend_setContainerID_(v7, v9, testingCopy);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v17 = testingCopy;
      v18 = 2112;
      v19 = v10;
      _os_log_error_impl(&dword_22506F000, v12, OS_LOG_TYPE_ERROR, "Failed to create Device Capability Cache for containerID %@, error: %@", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)deviceCapabilityUsageSQLCacheForContainer:(id)container
{
  v45 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  v6 = objc_msgSend_containerID(containerCopy, v4, v5);
  v9 = objc_msgSend_directoryContext(containerCopy, v7, v8);
  v12 = objc_msgSend_daemonDatabaseDirectory(v9, v10, v11);

  v13 = MEMORY[0x277CBC658];
  v16 = objc_msgSend_path(v12, v14, v15);
  v19 = objc_msgSend_deviceContext(containerCopy, v17, v18);
  v22 = objc_msgSend_deviceScopedDatabase(v19, v20, v21);
  v40 = 0;
  v24 = objc_msgSend_databaseInDirectory_registryDatabase_options_error_(v13, v23, v16, v22, 0, &v40);
  v25 = v40;

  if (!v24 || v25)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v35 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v42 = v6;
      v43 = 2112;
      v44 = v25;
      _os_log_error_impl(&dword_22506F000, v35, OS_LOG_TYPE_ERROR, "Failed to create Device Capability Cache for containerID %@: %@", buf, 0x16u);
    }

    v29 = 0;
  }

  else
  {
    v27 = objc_msgSend__groupNameForContainer_(CKDDeviceCapabilityUsageSQLCache, v26, containerCopy);
    v39 = 0;
    v29 = objc_msgSend_tableGroupInDatabase_withName_error_(CKDDeviceCapabilityUsageSQLCache, v28, v24, v27, &v39);
    v30 = v39;
    v25 = v30;
    if (!v29 || v30)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v36 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v42 = v6;
        v43 = 2112;
        v44 = v25;
        _os_log_error_impl(&dword_22506F000, v36, OS_LOG_TYPE_ERROR, "Failed to create Device Capability Cache for containerID %@: %@", buf, 0x16u);
      }
    }

    else
    {
      v33 = objc_msgSend_containerID(containerCopy, v31, v32);
      objc_msgSend_setContainerID_(v29, v34, v33);
    }
  }

  v37 = *MEMORY[0x277D85DE8];

  return v29;
}

- (BOOL)deleteAllUsageEntriesWithError:(id *)error
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_usageTable(self, a2, error);
  v11 = 0;
  objc_msgSend_deleteAllEntries_(v4, v5, &v11);
  v6 = v11;

  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v7 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_error_impl(&dword_22506F000, v7, OS_LOG_TYPE_ERROR, "Failed to delete all usage entries in SQL cache: %@", buf, 0xCu);
      if (!error)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    if (error)
    {
LABEL_6:
      v8 = v6;
      *error = v6;
    }
  }

LABEL_7:

  v9 = *MEMORY[0x277D85DE8];
  return v6 == 0;
}

+ (id)_groupNameForContainer:(id)container
{
  v3 = MEMORY[0x277CCACA8];
  containerCopy = container;
  v5 = sub_225081F2C(containerCopy);
  v8 = objc_msgSend_deviceID(containerCopy, v6, v7);

  v10 = objc_msgSend_stringWithFormat_(v3, v9, @"%@-%@", v5, v8);

  v12 = objc_msgSend_groupNameWithDomain_domainIdentifier_groupName_(MEMORY[0x277CBC660], v11, 3, v10, @"DeviceCapabilityUsageSQLCache");

  return v12;
}

- (id)zoneUsagesWithMaxCount:(unint64_t)count withError:(id *)error
{
  v7 = objc_msgSend_usageTable(self, a2, count);
  v10 = objc_msgSend_containerID(self, v8, v9);
  v12 = objc_msgSend_zoneUsagesForContainerID_maxCount_withError_(v7, v11, v10, count, error);

  return v12;
}

- (id)zoneUsageForZoneID:(id)d withError:(id *)error
{
  dCopy = d;
  if (dCopy)
  {
    v9 = objc_msgSend_usageTable(self, v6, v7);
    v11 = objc_msgSend_zoneUsageForZoneID_withError_(v9, v10, dCopy, error);
  }

  else
  {
    v11 = objc_msgSend_none(CKUsageInfo, v6, v7);
  }

  return v11;
}

- (BOOL)setZoneUsage:(id)usage forZoneID:(id)d withError:(id *)error
{
  usageCopy = usage;
  dCopy = d;
  v12 = dCopy;
  v13 = 1;
  if (usageCopy && dCopy)
  {
    v14 = objc_msgSend_lastUsed(usageCopy, v10, v11);

    if (v14)
    {
      v17 = objc_msgSend_usageTable(self, v15, v16);
      v13 = objc_msgSend_setZoneUsage_forZoneID_withError_(v17, v18, usageCopy, v12, error);
    }

    else
    {
      v13 = 1;
    }
  }

  return v13;
}

- (BOOL)deleteZoneUsageForZoneID:(id)d withError:(id *)error
{
  if (!d)
  {
    return 1;
  }

  dCopy = d;
  v9 = objc_msgSend_usageTable(self, v7, v8);
  LOBYTE(error) = objc_msgSend_deleteZoneUsageForZoneID_withError_(v9, v10, dCopy, error);

  return error;
}

- (id)shareUsagesWithMaxCount:(unint64_t)count withError:(id *)error
{
  v7 = objc_msgSend_usageTable(self, a2, count);
  v10 = objc_msgSend_containerID(self, v8, v9);
  v12 = objc_msgSend_shareUsagesForContainerID_maxCount_withError_(v7, v11, v10, count, error);

  return v12;
}

- (id)shareUsageForShareID:(id)d withError:(id *)error
{
  dCopy = d;
  if (dCopy)
  {
    v9 = objc_msgSend_usageTable(self, v6, v7);
    v11 = objc_msgSend_shareUsageForShareID_withError_(v9, v10, dCopy, error);
  }

  else
  {
    v11 = objc_msgSend_none(CKUsageInfo, v6, v7);
  }

  return v11;
}

- (BOOL)setShareUsage:(id)usage forShareID:(id)d withError:(id *)error
{
  usageCopy = usage;
  dCopy = d;
  v12 = dCopy;
  v13 = 1;
  if (usageCopy && dCopy)
  {
    v14 = objc_msgSend_lastUsed(usageCopy, v10, v11);

    if (v14)
    {
      v17 = objc_msgSend_usageTable(self, v15, v16);
      v13 = objc_msgSend_setShareUsage_forShareID_withError_(v17, v18, usageCopy, v12, error);
    }

    else
    {
      v13 = 1;
    }
  }

  return v13;
}

- (BOOL)deleteShareUsageForShareID:(id)d withError:(id *)error
{
  if (!d)
  {
    return 1;
  }

  dCopy = d;
  v9 = objc_msgSend_usageTable(self, v7, v8);
  LOBYTE(error) = objc_msgSend_deleteShareUsageForShareID_withError_(v9, v10, dCopy, error);

  return error;
}

- (id)recordWithUnknownShareUsagesWithMaxCount:(unint64_t)count withError:(id *)error
{
  v7 = objc_msgSend_usageTable(self, a2, count);
  v10 = objc_msgSend_containerID(self, v8, v9);
  v12 = objc_msgSend_recordWithUnknownShareUsagesForContainerID_maxCount_withError_(v7, v11, v10, count, error);

  return v12;
}

- (id)recordWithUnknownShareUsageForRecordID:(id)d withError:(id *)error
{
  dCopy = d;
  if (dCopy)
  {
    v9 = objc_msgSend_usageTable(self, v6, v7);
    v11 = objc_msgSend_recordWithUnknownShareUsageForRecordID_withError_(v9, v10, dCopy, error);
  }

  else
  {
    v11 = objc_msgSend_none(CKUsageInfo, v6, v7);
  }

  return v11;
}

- (BOOL)setRecordWithUnknownShareUsage:(id)usage forRecordID:(id)d withError:(id *)error
{
  usageCopy = usage;
  dCopy = d;
  v12 = dCopy;
  v13 = 1;
  if (usageCopy && dCopy)
  {
    v14 = objc_msgSend_lastUsed(usageCopy, v10, v11);

    if (v14)
    {
      v17 = objc_msgSend_usageTable(self, v15, v16);
      v13 = objc_msgSend_setRecordWithUnknownShareUsage_forRecordID_withError_(v17, v18, usageCopy, v12, error);
    }

    else
    {
      v13 = 1;
    }
  }

  return v13;
}

- (BOOL)deleteRecordWithUnknownShareUsageForRecordID:(id)d withError:(id *)error
{
  if (!d)
  {
    return 1;
  }

  dCopy = d;
  v9 = objc_msgSend_usageTable(self, v7, v8);
  LOBYTE(error) = objc_msgSend_deleteRecordWithUnknownShareUsageForRecordID_withError_(v9, v10, dCopy, error);

  return error;
}

- (id)lastSentCapabilitiesAndUsageWithError:(id *)error
{
  v4 = objc_msgSend_lastSentTable(self, a2, error);
  v14 = 0;
  v6 = objc_msgSend_lastSentCapabilityAndUsageWithError_(v4, v5, &v14);
  v7 = v14;

  if (v7)
  {
    if (error)
    {
      v10 = v7;
      v11 = 0;
      *error = v7;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    if (v6)
    {
      v12 = v6;
    }

    else
    {
      v12 = objc_msgSend_none(CKLastSentCapabilitiesAndUsage, v8, v9);
    }

    v11 = v12;
  }

  return v11;
}

- (BOOL)updateUsageSavedDate:(id)date withError:(id *)error
{
  if (!date)
  {
    return 1;
  }

  dateCopy = date;
  v9 = objc_msgSend_lastSentTable(self, v7, v8);
  LOBYTE(error) = objc_msgSend_updateUsageSavedDate_withError_(v9, v10, dateCopy, error);

  return error;
}

- (BOOL)updateCapabilitySet:(id)set capabilitySetSavedDate:(id)date withError:(id *)error
{
  if (!set || !date)
  {
    return 1;
  }

  dateCopy = date;
  setCopy = set;
  v12 = objc_msgSend_lastSentTable(self, v10, v11);
  LOBYTE(error) = objc_msgSend_updateLastSentCapabilities_capabilitySetSavedDate_withError_(v12, v13, setCopy, dateCopy, error);

  return error;
}

- (BOOL)deleteLastSentCapabilitiesAndUsageEntryWithError:(id *)error
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_lastSentTable(self, a2, error);
  v11 = 0;
  objc_msgSend_deleteAllEntries_(v4, v5, &v11);
  v6 = v11;

  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v7 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_error_impl(&dword_22506F000, v7, OS_LOG_TYPE_ERROR, "Failed to delete last sent capabilities and usage entry in LastSentCapabilitiesAndUsageTable: %@", buf, 0xCu);
      if (!error)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    if (error)
    {
LABEL_6:
      v8 = v6;
      *error = v6;
    }
  }

LABEL_7:

  v9 = *MEMORY[0x277D85DE8];
  return v6 == 0;
}

@end