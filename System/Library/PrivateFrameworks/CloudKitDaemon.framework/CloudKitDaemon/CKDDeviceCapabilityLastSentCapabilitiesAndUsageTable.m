@interface CKDDeviceCapabilityLastSentCapabilitiesAndUsageTable
+ (id)dbProperties;
- (BOOL)updateLastSentCapabilities:(id)a3 capabilitySetSavedDate:(id)a4 withError:(id *)a5;
- (BOOL)updateUsageSavedDate:(id)a3 withError:(id *)a4;
- (CKDDeviceCapabilityLastSentCapabilitiesAndUsageTable)initWithContainerID:(id)a3;
- (id)lastSentCapabilityAndUsageWithError:(id *)a3;
@end

@implementation CKDDeviceCapabilityLastSentCapabilitiesAndUsageTable

+ (id)dbProperties
{
  v6[4] = *MEMORY[0x277D85DE8];
  v5[0] = @"rowID";
  v5[1] = @"deviceCapabilityStringSet";
  v6[0] = &unk_2838C81D8;
  v6[1] = &unk_2838C81F0;
  v5[2] = @"capabilitySetSavedDate";
  v5[3] = @"usageSavedDate";
  v6[2] = &unk_2838C8208;
  v6[3] = &unk_2838C8208;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v6, v5, 4);
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (CKDDeviceCapabilityLastSentCapabilitiesAndUsageTable)initWithContainerID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CKDDeviceCapabilityLastSentCapabilitiesAndUsageTable;
  v6 = [(CKSQLiteCacheTable *)&v9 initWithLogicalTableName:@"LastSentTable" entryCountLimit:1 dataSizeLimit:0 expirationTime:0.0 expireDelay:86400.0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_containerID, a3);
  }

  return v7;
}

- (BOOL)updateLastSentCapabilities:(id)a3 capabilitySetSavedDate:(id)a4 withError:(id *)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v12 = a4;
  if (!v9)
  {
    v25 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v26, a2, self, @"CKDDeviceCapabilityLastSentCapabilitiesAndUsageTable.m", 81, @"capabilitySet must not be nil");
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_2251495DC;
  v27[3] = &unk_278546800;
  v13 = v9;
  v28 = v13;
  v14 = v12;
  v29 = v14;
  v30 = self;
  v16 = objc_msgSend_performTransaction_(self, v15, v27);
  if (v16)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v21 = v17;
      v24 = objc_msgSend_containerID(self, v22, v23);
      *buf = 138412546;
      v32 = v24;
      v33 = 2112;
      v34 = v16;
      _os_log_error_impl(&dword_22506F000, v21, OS_LOG_TYPE_ERROR, "Failed to update last sent capabilities and date for containerID %@: %@", buf, 0x16u);

      if (!a5)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (a5)
    {
LABEL_8:
      v18 = v16;
      *a5 = v16;
    }
  }

LABEL_9:

  v19 = *MEMORY[0x277D85DE8];
  return v16 == 0;
}

- (BOOL)updateUsageSavedDate:(id)a3 withError:(id *)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a3;
  if (!v9)
  {
    v21 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v21, v22, a2, self, @"CKDDeviceCapabilityLastSentCapabilitiesAndUsageTable.m", 102, @"date must not be nil");
  }

  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = sub_2251498F4;
  v26 = &unk_278546180;
  v10 = v9;
  v27 = v10;
  v28 = self;
  v12 = objc_msgSend_performTransaction_(self, v11, &v23);
  if (v12)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v17 = v13;
      v20 = objc_msgSend_containerID(self, v18, v19, v23, v24, v25, v26);
      *buf = 138412546;
      v30 = v20;
      v31 = 2112;
      v32 = v12;
      _os_log_error_impl(&dword_22506F000, v17, OS_LOG_TYPE_ERROR, "Failed to update usage saved date for containerID %@: %@", buf, 0x16u);

      if (!a4)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (a4)
    {
LABEL_8:
      v14 = v12;
      *a4 = v12;
    }
  }

LABEL_9:

  v15 = *MEMORY[0x277D85DE8];
  return v12 == 0;
}

- (id)lastSentCapabilityAndUsageWithError:(id *)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_225073EF0;
  v19 = sub_225073504;
  v20 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_225149C04;
  v14[3] = &unk_278546828;
  v14[4] = self;
  v14[5] = &v15;
  v5 = objc_msgSend_performTransaction_(self, a2, v14);
  if (v5)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v6 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_msgSend_containerID(self, v7, v8);
      *buf = 138412546;
      v22 = v13;
      v23 = 2112;
      v24 = v5;
      _os_log_error_impl(&dword_22506F000, v6, OS_LOG_TYPE_ERROR, "Failed to fetch last sent capabilities and usage date for containerID %@: %@", buf, 0x16u);
    }

    if (a3)
    {
      v9 = v5;
      v10 = 0;
      *a3 = v5;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = v16[5];
  }

  _Block_object_dispose(&v15, 8);
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end