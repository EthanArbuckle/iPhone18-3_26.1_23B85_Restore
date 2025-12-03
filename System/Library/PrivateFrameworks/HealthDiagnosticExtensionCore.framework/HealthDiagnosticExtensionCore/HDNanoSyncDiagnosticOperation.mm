@interface HDNanoSyncDiagnosticOperation
- (id)_reportDetailsForDevice:(id)device database:(id)database;
- (id)_sortedPairedDevices;
- (id)nanoSyncDatabaseURL;
- (int64_t)_countOfMessagesForDeviceIdentifier:(id)identifier description:(id)description predicateSQL:(id)l date:(id)date database:(id)database;
- (void)_collectNanoSyncMessageDatabase;
- (void)_reportIDSSummaryForDeviceIdentifier:(id)identifier database:(id)database;
- (void)_reportMostRecentMessageDateWithDeviceIdentifier:(id)identifier description:(id)description field:(id)field predicateSQL:(id)l database:(id)database;
- (void)_reportMostRecentMessageErrorsWithDeviceIdentifier:(id)identifier database:(id)database;
- (void)_reportQuickSwitchSummaryWithDevicesByPairingID:(id)d;
- (void)_reportSummaryWithDevices:(id)devices;
- (void)run;
@end

@implementation HDNanoSyncDiagnosticOperation

- (id)nanoSyncDatabaseURL
{
  healthDirectoryURL = [(HDDiagnosticOperation *)self healthDirectoryURL];
  v3 = [healthDirectoryURL URLByAppendingPathComponent:@"NanoSync" isDirectory:1];

  v4 = [v3 URLByAppendingPathComponent:@"com.apple.private.alloy.health.sync.db" isDirectory:0];

  return v4;
}

- (void)run
{
  v38 = *MEMORY[0x277D85DE8];
  [(HDNanoSyncDiagnosticOperation *)self _collectNanoSyncMessageDatabase];
  _sortedPairedDevices = [(HDNanoSyncDiagnosticOperation *)self _sortedPairedDevices];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = _sortedPairedDevices;
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    v9 = *MEMORY[0x277D2BBB8];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v12 = [v11 valueForProperty:v9];
        [v4 setObject:v11 forKeyedSubscript:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v7);
  }

  if ([v5 count])
  {
    -[HDDiagnosticOperation log:](self, "log:", @"Found %lu paired devices", [v5 count]);
    [(HDNanoSyncDiagnosticOperation *)self _reportSummaryWithDevices:v5];
    [(HDNanoSyncDiagnosticOperation *)self _reportQuickSwitchSummaryWithDevicesByPairingID:v4];
    healthDirectoryURL = [(HDDiagnosticOperation *)self healthDirectoryURL];
    v14 = [healthDirectoryURL URLByAppendingPathComponent:@"healthdb.sqlite" isDirectory:0];

    v27 = v14;
    v15 = [(HDDiagnosticOperation *)self openReadOnlyDatabaseAtURL:v14];
    nanoSyncDatabaseURL = [(HDNanoSyncDiagnosticOperation *)self nanoSyncDatabaseURL];
    v17 = [(HDDiagnosticOperation *)self openReadOnlyDatabaseAtURL:nanoSyncDatabaseURL];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v18 = v5;
    v19 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v29;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v28 + 1) + 8 * j);
          [(HDDiagnosticOperation *)self appendNewline];
          [(HDDiagnosticOperation *)self appendStrongSeparator];
          if (v15)
          {
            v24 = [(HDNanoSyncDiagnosticOperation *)self _reportDetailsForDevice:v23 database:v15];
            v25 = v24;
            if (v17 && v24)
            {
              [(HDNanoSyncDiagnosticOperation *)self _reportIDSSummaryForDeviceIdentifier:v24 database:v17];
            }
          }

          else
          {
            v25 = 0;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v20);
    }

    [v15 close];
    [v17 close];
  }

  else
  {
    [(HDDiagnosticOperation *)self log:@"No paired devices"];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_collectNanoSyncMessageDatabase
{
  nanoSyncDatabaseURL = [(HDNanoSyncDiagnosticOperation *)self nanoSyncDatabaseURL];
  v3 = objc_alloc_init(MEMORY[0x277CCAA00]);
  path = [nanoSyncDatabaseURL path];
  v5 = [v3 fileExistsAtPath:path];

  if (v5)
  {
    [(HDDiagnosticOperation *)self log:@"Collecting and analyzing NanoSync message database..."];
    attachmentDirectoryURL = [(HDDiagnosticOperation *)self attachmentDirectoryURL];
    path2 = [attachmentDirectoryURL URLByAppendingPathComponent:@"com.apple.private.alloy.health.sync.db" isDirectory:0];

    if ([(HDDiagnosticOperation *)self copyDatabaseFromURL:nanoSyncDatabaseURL toURL:path2])
    {
      goto LABEL_6;
    }

    v8 = @"Failed to collect NanoSync message database.";
  }

  else
  {
    path2 = [nanoSyncDatabaseURL path];
    v9 = path2;
    v8 = @"No NanoSync message database present at %@; skipping sync collection and analysis.";
  }

  [(HDDiagnosticOperation *)self log:v8, v9];
LABEL_6:
}

- (id)_sortedPairedDevices
{
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  getSetupCompletedDevices = [mEMORY[0x277D2BCF8] getSetupCompletedDevices];

  v4 = [getSetupCompletedDevices sortedArrayUsingComparator:&__block_literal_global_0];

  return v4;
}

uint64_t __53__HDNanoSyncDiagnosticOperation__sortedPairedDevices__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *MEMORY[0x277D2BB20];
  v5 = a3;
  v6 = a2;
  v7 = [v6 valueForProperty:v4];
  v8 = [v5 valueForProperty:v4];
  v9 = *MEMORY[0x277D2BB50];
  v10 = [v6 valueForProperty:*MEMORY[0x277D2BB50]];

  v11 = [v5 valueForProperty:v9];

  if ([v7 isEqualToNumber:v8])
  {
    v12 = v11;
    v13 = v10;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  v14 = [v12 compare:v13];

  return v14;
}

- (void)_reportSummaryWithDevices:(id)devices
{
  v36 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  -[HDDiagnosticOperation appendFormat:](self, "appendFormat:", @"%lu Paired Devices:", [devicesCopy count]);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = devicesCopy;
  v30 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v30)
  {
    v29 = *v32;
    v28 = *MEMORY[0x277D2BB20];
    v27 = *MEMORY[0x277D2BC08];
    v26 = *MEMORY[0x277D2BBC0];
    v5 = *MEMORY[0x277D2BB50];
    v24 = *MEMORY[0x277D2BB50];
    v25 = *MEMORY[0x277D2BBA8];
    v6 = *MEMORY[0x277D2BB58];
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v32 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        v9 = [v8 valueForProperty:v28];
        bOOLValue = [v9 BOOLValue];

        v11 = [v8 valueForProperty:v27];
        v12 = [v8 valueForProperty:v26];
        v13 = [v8 valueForProperty:v25];
        v14 = [v8 valueForProperty:v24];
        v15 = [(HDDiagnosticOperation *)self stringFromDate:v14];

        v16 = [v8 valueForProperty:v6];
        v17 = [(HDDiagnosticOperation *)self stringFromDate:v16];

        if (bOOLValue)
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"(active since %@)", v15, v22];
        }

        else
        {
          v18 = &stru_2863876A0;
          if (v15)
          {
            v19 = v15;
          }

          else
          {
            v19 = &stru_2863876A0;
          }

          if (v17)
          {
            v18 = v17;
          }

          [MEMORY[0x277CCACA8] stringWithFormat:@"(last active %@ - %@)", v19, v18];
        }
        v20 = ;
        [(HDDiagnosticOperation *)self appendFormat:@"\t%@ %@ %@ %@", v13, v12, v11, v20];
      }

      v30 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v30);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_reportQuickSwitchSummaryWithDevicesByPairingID:(id)d
{
  dCopy = d;
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  [mEMORY[0x277D2BCF8] switchIndex];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__HDNanoSyncDiagnosticOperation__reportQuickSwitchSummaryWithDevicesByPairingID___block_invoke;
  v7[3] = &unk_2796C0F20;
  v9 = v10;
  v7[4] = self;
  v6 = dCopy;
  v8 = v6;
  [mEMORY[0x277D2BCF8] getSwitchEventsFromIndex:0 inlineCallback:v7];

  _Block_object_dispose(v10, 8);
}

void __81__HDNanoSyncDiagnosticOperation__reportQuickSwitchSummaryWithDevicesByPairingID___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v13 = a3;
  v6 = a4;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 32) appendFormat:@"\nQuick Switch Events:"];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v7 = [*(a1 + 40) objectForKeyedSubscript:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 valueForProperty:*MEMORY[0x277D2BBA8]];
  }

  else
  {
    v9 = @"Unknown";
  }

  v10 = [*(a1 + 32) stringFromDate:v13];
  v11 = *(a1 + 32);
  v12 = [v6 UUIDString];
  [v11 appendFormat:@"\tSwitched to %@ %@ at %@", v12, v9, v10];
}

- (id)_reportDetailsForDevice:(id)device database:(id)database
{
  v61[2] = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  v7 = *MEMORY[0x277D2BBB8];
  deviceCopy = device;
  v9 = [deviceCopy valueForProperty:v7];
  v10 = [deviceCopy valueForProperty:*MEMORY[0x277D2BB20]];
  bOOLValue = [v10 BOOLValue];

  v11 = [deviceCopy valueForProperty:*MEMORY[0x277D2BC08]];
  v12 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBC0]];
  v13 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBA8]];
  v14 = [deviceCopy valueForProperty:*MEMORY[0x277D2BB50]];
  v15 = [(HDDiagnosticOperation *)self stringFromDate:v14];

  v16 = [deviceCopy valueForProperty:*MEMORY[0x277D2BB58]];
  v54 = [(HDDiagnosticOperation *)self stringFromDate:v16];

  v17 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB0]];

  v52 = [(HDDiagnosticOperation *)self stringFromDate:v17];

  v55 = 0;
  v53 = databaseCopy;
  v18 = [MEMORY[0x277D10790] nanoPairingEntityWithRegistryUUID:v9 database:databaseCopy error:&v55];
  v19 = v55;
  v20 = v19;
  if (v18)
  {
    v49 = v19;
    v50 = v12;
    v21 = " (inactive)";
    if (bOOLValue)
    {
      v21 = "";
      v22 = @"    Active:";
    }

    else
    {
      v22 = @"    Was Active:";
    }

    [(HDDiagnosticOperation *)self appendFormat:@"%@ %@ %@%s", v13, v12, v11, v21];
    v23 = [objc_alloc(MEMORY[0x277CCDA90]) initWithColumnTitles:0];
    v61[0] = v22;
    v24 = v15;
    if ((bOOLValue & 1) == 0)
    {
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - %@", v15, v54];
    }

    v61[1] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
    [v23 appendRow:v25];

    if ((bOOLValue & 1) == 0)
    {
    }

    v60[0] = @"    Pairing ID:";
    uUIDString = [v9 UUIDString];
    v60[1] = uUIDString;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
    [v23 appendRow:v27];

    v59[0] = @"    IDS ID:";
    deviceIdentifier = [v18 deviceIdentifier];
    v29 = deviceIdentifier;
    if (deviceIdentifier)
    {
      v30 = deviceIdentifier;
    }

    else
    {
      v30 = @"(null)";
    }

    v59[1] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
    [v23 appendRow:v31];

    v32 = v52;
    v58[0] = @"    Paired:";
    v58[1] = v52;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
    [v23 appendRow:v33];

    v57[0] = @"    Source:";
    defaultSourceBundleIdentifier = [v18 defaultSourceBundleIdentifier];
    v35 = defaultSourceBundleIdentifier;
    if (defaultSourceBundleIdentifier)
    {
      v36 = defaultSourceBundleIdentifier;
    }

    else
    {
      v36 = @"(null)";
    }

    v57[1] = v36;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
    [v23 appendRow:v37];

    v56[0] = @"    Restore Complete:";
    isRestoreComplete = [v18 isRestoreComplete];
    v39 = @"NO";
    if (isRestoreComplete)
    {
      v39 = @"YES";
    }

    v56[1] = v39;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
    [v23 appendRow:v40];

    [(HDDiagnosticOperation *)self appendNewline];
    formattedTable = [v23 formattedTable];
    [(HDDiagnosticOperation *)self appendString:formattedTable];

    [(HDDiagnosticOperation *)self appendNewline];
    [(HDDiagnosticOperation *)self appendNewline];
    v42 = MEMORY[0x277D108D0];
    syncProvenance = [v18 syncProvenance];
    v44 = v42;
    v45 = v53;
    [v44 hde_reportSyncAnchorsForSyncProvenance:syncProvenance diagnosticOperation:self database:v53];
    deviceIdentifier2 = [v18 deviceIdentifier];

    v12 = v50;
    v20 = v49;
  }

  else
  {
    [(HDDiagnosticOperation *)self log:@"Failed to find sync store for NRDevice %@: %@", v9, v19];
    deviceIdentifier2 = 0;
    v32 = v52;
    v45 = v53;
  }

  v47 = *MEMORY[0x277D85DE8];

  return deviceIdentifier2;
}

- (void)_reportIDSSummaryForDeviceIdentifier:(id)identifier database:(id)database
{
  identifierCopy = identifier;
  databaseCopy = database;
  [(HDDiagnosticOperation *)self appendNewline];
  [(HDDiagnosticOperation *)self appendFormat:@"IDS Message Statistics (last 7 days):"];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  date = [MEMORY[0x277CBEAA8] date];
  v10 = [currentCalendar hk_dateBySubtractingDays:7 fromDate:date];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __79__HDNanoSyncDiagnosticOperation__reportIDSSummaryForDeviceIdentifier_database___block_invoke;
  v21[3] = &unk_2796C0F48;
  v21[4] = self;
  v11 = identifierCopy;
  v22 = v11;
  v23 = v10;
  v12 = databaseCopy;
  v24 = v12;
  v13 = v10;
  v14 = MEMORY[0x25307B760](v21);
  (v14)[2](v14, @"received", @"outgoing = 0");
  (v14)[2](v14, @"sent", @"outgoing = 1 AND send_timestamp IS NOT NULL");
  (v14)[2](v14, @"pending", @"outgoing = 1 AND send_timestamp IS NULL AND error_code IS NULL");
  (v14)[2](v14, @"failed", @"outgoing = 1 AND error_code IS NOT NULL");
  [(HDDiagnosticOperation *)self appendNewline];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __79__HDNanoSyncDiagnosticOperation__reportIDSSummaryForDeviceIdentifier_database___block_invoke_2;
  v18[3] = &unk_2796C0F70;
  v18[4] = self;
  v19 = v11;
  v20 = v12;
  v15 = v12;
  v16 = v11;
  v17 = MEMORY[0x25307B760](v18);
  (v17)[2](v17, @"Last message received", @"timestamp", @"outgoing = 0");
  (v17)[2](v17, @"Last message sent", @"send_timestamp", @"outgoing = 1 AND send_timestamp IS NOT NULL");
  (v17)[2](v17, @"Last message failed", @"error_timestamp", @"outgoing = 1 AND error_code IS NOT NULL");
  [(HDDiagnosticOperation *)self appendNewline];
  [(HDDiagnosticOperation *)self appendFormat:@"Recent IDS Errors:"];
  [(HDNanoSyncDiagnosticOperation *)self _reportMostRecentMessageErrorsWithDeviceIdentifier:v16 database:v15];
}

- (int64_t)_countOfMessagesForDeviceIdentifier:(id)identifier description:(id)description predicateSQL:(id)l date:(id)date database:(id)database
{
  identifierCopy = identifier;
  descriptionCopy = description;
  lCopy = l;
  dateCopy = date;
  databaseCopy = database;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  lCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT COUNT(*) FROM message_records WHERE device_id LIKE ? AND timestamp > ? AND %@", lCopy];
  v32 = 0;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __108__HDNanoSyncDiagnosticOperation__countOfMessagesForDeviceIdentifier_description_predicateSQL_date_database___block_invoke;
  v29[3] = &unk_2796C0F98;
  v18 = identifierCopy;
  v30 = v18;
  v19 = dateCopy;
  v31 = v19;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __108__HDNanoSyncDiagnosticOperation__countOfMessagesForDeviceIdentifier_description_predicateSQL_date_database___block_invoke_2;
  v26[3] = &unk_2796C0FC0;
  v28 = &v33;
  v26[4] = self;
  v20 = descriptionCopy;
  v27 = v20;
  v21 = [databaseCopy executeSQL:lCopy error:&v32 bindingHandler:v29 enumerationHandler:v26];
  v22 = v32;
  v23 = v22;
  if ((v21 & 1) == 0)
  {
    [(HDDiagnosticOperation *)self log:@"Failed to count rows in table 'message_records': %@", v22];
  }

  v24 = v34[3];

  _Block_object_dispose(&v33, 8);
  return v24;
}

uint64_t __108__HDNanoSyncDiagnosticOperation__countOfMessagesForDeviceIdentifier_description_predicateSQL_date_database___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindStringToStatement();
  [*(a1 + 40) timeIntervalSinceReferenceDate];

  return sqlite3_bind_double(a2, 2, v5);
}

uint64_t __108__HDNanoSyncDiagnosticOperation__countOfMessagesForDeviceIdentifier_description_predicateSQL_date_database___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = HDSQLiteColumnAsInt64();
  if (*(*(*(a1 + 48) + 8) + 24) >= 1)
  {
    [*(a1 + 32) appendFormat:@"\t%lld %@", *(*(*(a1 + 48) + 8) + 24), *(a1 + 40)];
  }

  return 0;
}

- (void)_reportMostRecentMessageDateWithDeviceIdentifier:(id)identifier description:(id)description field:(id)field predicateSQL:(id)l database:(id)database
{
  identifierCopy = identifier;
  descriptionCopy = description;
  fieldCopy = field;
  v15 = MEMORY[0x277CCACA8];
  databaseCopy = database;
  fieldCopy = [v15 stringWithFormat:@"SELECT %@ FROM message_records WHERE device_id LIKE ? AND %@ ORDER BY %@ DESC LIMIT 1", fieldCopy, l, fieldCopy];
  v26 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __122__HDNanoSyncDiagnosticOperation__reportMostRecentMessageDateWithDeviceIdentifier_description_field_predicateSQL_database___block_invoke;
  v24[3] = &unk_2796C0FE8;
  v18 = identifierCopy;
  v25 = v18;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __122__HDNanoSyncDiagnosticOperation__reportMostRecentMessageDateWithDeviceIdentifier_description_field_predicateSQL_database___block_invoke_2;
  v22[3] = &unk_2796C0D28;
  v22[4] = self;
  v19 = descriptionCopy;
  v23 = v19;
  LOBYTE(identifierCopy) = [databaseCopy executeSQL:fieldCopy error:&v26 bindingHandler:v24 enumerationHandler:v22];

  v20 = v26;
  v21 = v20;
  if ((identifierCopy & 1) == 0)
  {
    [(HDDiagnosticOperation *)self log:@"Failed to get latest %@ value in table 'message_records': %@", fieldCopy, v20];
  }
}

uint64_t __122__HDNanoSyncDiagnosticOperation__reportMostRecentMessageDateWithDeviceIdentifier_description_field_predicateSQL_database___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x25307B280](a2, 0);
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = [v4 stringFromDate:v3];
    [v4 appendFormat:@"\t%@ %@", v5, v6];
  }

  return 0;
}

- (void)_reportMostRecentMessageErrorsWithDeviceIdentifier:(id)identifier database:(id)database
{
  identifierCopy = identifier;
  v14 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __93__HDNanoSyncDiagnosticOperation__reportMostRecentMessageErrorsWithDeviceIdentifier_database___block_invoke;
  v12[3] = &unk_2796C0FE8;
  v7 = identifierCopy;
  v13 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __93__HDNanoSyncDiagnosticOperation__reportMostRecentMessageErrorsWithDeviceIdentifier_database___block_invoke_2;
  v11[3] = &unk_2796C0D00;
  v11[4] = self;
  v8 = [database executeSQL:@"SELECT uuid error:timestamp bindingHandler:error_domain enumerationHandler:{error_code FROM message_records WHERE device_id LIKE ? AND error_code IS NOT NULL ORDER BY error_timestamp DESC LIMIT 5", &v14, v12, v11}];
  v9 = v14;
  v10 = v9;
  if ((v8 & 1) == 0)
  {
    [(HDDiagnosticOperation *)self log:@"Failed to get latest errors in table 'message_records': %@", v9];
  }
}

uint64_t __93__HDNanoSyncDiagnosticOperation__reportMostRecentMessageErrorsWithDeviceIdentifier_database___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x25307B2B0](a2, 0);
  v5 = MEMORY[0x25307B280](a2, 1);
  v6 = MEMORY[0x25307B2B0](a2, 2);
  v7 = HDSQLiteColumnAsInt64();
  v8 = *(a1 + 32);
  v9 = [v8 stringFromDate:v5];
  [v8 appendFormat:@"\t%@ %@ code: %lld (sent %@)", v4, v6, v7, v9];

  return 0;
}

@end