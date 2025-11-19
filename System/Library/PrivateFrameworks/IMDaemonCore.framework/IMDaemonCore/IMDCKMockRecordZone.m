@interface IMDCKMockRecordZone
- (IMDCKMockRecordZone)initWithIdentifier:(id)a3;
- (id)_ckRecordFromData:(id)a3;
- (id)_fetchRecordZoneChangesOptionsFromOperation:(id)a3;
- (id)_serializedCKRecordData:(id)a3;
- (unint64_t)_fetchResultLimit:(id)a3;
- (void)_handleFetchZoneChangesOperation:(id)a3;
- (void)_handleModifyRecordsOperation:(id)a3;
- (void)dealloc;
- (void)handleOperation:(id)a3;
@end

@implementation IMDCKMockRecordZone

- (IMDCKMockRecordZone)initWithIdentifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = IMDCKMockRecordZone;
  v4 = [(IMDCKMockRecordZone *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_identifier = a3;
    v4->_queue = dispatch_queue_create([a3 cStringUsingEncoding:4], 0);
    v5->_recordStore = [objc_alloc(MEMORY[0x277D18AD0]) initWithPath:-[IMDCKMockRecordZone _kvStorePath](v5 storeName:"_kvStorePath") dataProtectionClass:{v5->_identifier, 0}];
  }

  return v5;
}

- (void)dealloc
{
  dispatch_release(self->_queue);

  v3.receiver = self;
  v3.super_class = IMDCKMockRecordZone;
  [(IMDCKMockRecordZone *)&v3 dealloc];
}

- (void)handleOperation:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v14 = a3;
      v15 = 2112;
      v16 = [(IMDCKMockRecordZone *)self identifier];
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Mock Handle operation %@ identifier %@", buf, 0x16u);
    }
  }

  v6 = arc4random() % 0x3C;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Adding random delay of %@ seconds", buf, 0xCu);
    }
  }

  v9 = dispatch_time(0, v6);
  v10 = [(IMDCKMockRecordZone *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22B61E210;
  v12[3] = &unk_2787043C8;
  v12[4] = a3;
  v12[5] = self;
  dispatch_after(v9, v10, v12);
  v11 = *MEMORY[0x277D85DE8];
}

- (id)_fetchRecordZoneChangesOptionsFromOperation:(id)a3
{
  v3 = [objc_msgSend(a3 "configurationsByRecordZoneID")];

  return [v3 firstObject];
}

- (unint64_t)_fetchResultLimit:(id)a3
{
  v3 = [(IMDCKMockRecordZone *)self _fetchRecordZoneChangesOptionsFromOperation:a3];

  return MEMORY[0x2821F9670](v3, sel_resultsLimit);
}

- (id)_ckRecordFromData:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v3 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:a3 error:&v7];
  if (v7)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v9 = v7;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Failed to unarchive mock ck record data. Error: %@", buf, 0xCu);
      }
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)_handleFetchZoneChangesOperation:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v44 = [(IMDCKMockRecordZone *)self identifier];
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "ID %@ MOCK Handling fetchRecordZoneChangesOperation", buf, 0xCu);
    }
  }

  v6 = [a3 fetchAllChanges];
  v7 = [(IMDCKMockRecordZone *)self _fetchResultLimit:a3];
  v8 = @"NO";
  if (v6)
  {
    v8 = @"YES";
  }

  v33 = v8;
  v34 = *MEMORY[0x277CBBF50];
  do
  {
    v40 = 0;
    v41 = 0;
    v9 = [(IDSKVStore *)[(IMDCKMockRecordZone *)self recordStore] datasUpToLimit:v7 deleteContext:&v41 error:&v40];
    if (v40)
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = [(IMDCKMockRecordZone *)self identifier];
          *buf = 138412546;
          v44 = v11;
          v45 = 2112;
          v46 = v40;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "%@ Error reading from MOCK store %@ ", buf, 0x16u);
        }
      }
    }

    v12 = [v9 count];
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
        *buf = 138412802;
        v15 = @"NO";
        if (v12 >= v7)
        {
          v15 = @"YES";
        }

        v44 = v14;
        v45 = 2112;
        v46 = v15;
        v47 = 2112;
        v48 = v33;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "About to give back %@ records moreComing %@ fetchAllChanges %@", buf, 0x20u);
      }
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v16 = [v9 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v16)
    {
      v17 = *v37;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v37 != v17)
          {
            objc_enumerationMutation(v9);
          }

          v19 = [(IMDCKMockRecordZone *)self _ckRecordFromData:*(*(&v36 + 1) + 8 * i)];
          v20 = [a3 recordChangedBlock];
          (*(v20 + 16))(v20, v19);
        }

        v16 = [v9 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v16);
    }

    v35 = 0;
    v21 = [(IMDCKMockRecordZone *)self recordStore];
    [(IDSKVStore *)v21 deleteBatchWithContext:v41 error:&v35];
    if (v35)
    {
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = [(IMDCKMockRecordZone *)self identifier];
          *buf = 138412546;
          v44 = v23;
          v45 = 2112;
          v46 = v35;
          _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "%@ Error deleting from MOCK store %@ ", buf, 0x16u);
        }
      }
    }

    v24 = [a3 recordZoneChangeTokensUpdatedBlock];
    (*(v24 + 16))(v24, [objc_msgSend(a3 "recordZoneIDs")], 0, 0);
    HIDWORD(v25) = -858993459 * arc4random();
    LODWORD(v25) = HIDWORD(v25);
    if ((v25 >> 1) <= 0x19999999)
    {
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:{&unk_283F4EA38, &unk_283F4EA50, &unk_283F4EA68, 0}];
      v26 = [MEMORY[0x277CCA9B8] errorWithDomain:v34 code:objc_msgSend(objc_msgSend(v27 userInfo:{"objectAtIndex:", arc4random() % objc_msgSend(v27, "count")), "integerValue"), 0}];
      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v44 = v26;
          _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Introducing random error %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v26 = 0;
    }

    v29 = v12 >= v7;
    v30 = [a3 recordZoneFetchCompletionBlock];
    (*(v30 + 16))(v30, [objc_msgSend(a3 "recordZoneIDs")], 0, 0, v29, v26);
  }

  while (v29 & v6);
  v31 = [a3 fetchRecordZoneChangesCompletionBlock];
  (*(v31 + 16))(v31, 0);
  v32 = *MEMORY[0x277D85DE8];
}

- (id)_serializedCKRecordData:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v8];
  if (!v4)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v10 = "[IMDCKMockRecordZone _serializedCKRecordData:]";
        v11 = 2112;
        v12 = a3;
        v13 = 2112;
        v14 = v8;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "%s: Unable to archive record %@, error %@", buf, 0x20u);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)_handleModifyRecordsOperation:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = [(IMDCKMockRecordZone *)self identifier];
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "ID %@ MOCK Handling modifyRecordsOperation", buf, 0xCu);
    }
  }

  v6 = [a3 recordsToSave];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v7)
  {
    v9 = *v25;
    *&v8 = 138412290;
    v22 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = [(IMDCKMockRecordZone *)self _serializedCKRecordData:v11, v22];
        v23 = 0;
        -[IDSKVStore persistData:forKey:error:](-[IMDCKMockRecordZone recordStore](self, "recordStore"), "persistData:forKey:error:", v12, [objc_msgSend(v11 "recordID")], &v23);
        v13 = v23 == 0;
        v14 = IMOSLoggingEnabled();
        if (v13)
        {
          if (v14)
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              v18 = [objc_msgSend(v11 "recordID")];
              *buf = v22;
              v29 = v18;
              _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Successfully persisted record %@ ", buf, 0xCu);
            }
          }

          v19 = [a3 perRecordCompletionBlock];
          (*(v19 + 16))(v19, v11, 0);
        }

        else if (v14)
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = [objc_msgSend(v11 "recordID")];
            *buf = 138412546;
            v29 = v16;
            v30 = 2112;
            v31 = v23;
            _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Error persisting record %@ error %@", buf, 0x16u);
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v7);
  }

  v20 = [a3 modifyRecordsCompletionBlock];
  (*(v20 + 16))(v20, v6, 0, 0);
  v21 = *MEMORY[0x277D85DE8];
}

@end