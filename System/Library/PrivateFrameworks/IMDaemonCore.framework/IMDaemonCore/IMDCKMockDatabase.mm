@interface IMDCKMockDatabase
- (IMDCKMockDatabase)init;
- (id)_initWithContainer:(id)a3 scope:(int64_t)a4;
- (id)_zoneIdentifierForOperation:(id)a3;
- (void)addOperation:(id)a3;
- (void)dealloc;
@end

@implementation IMDCKMockDatabase

- (id)_initWithContainer:(id)a3 scope:(int64_t)a4
{
  v10.receiver = self;
  v10.super_class = IMDCKMockDatabase;
  v4 = [(IMDCKMockDatabase *)&v10 _initWithContainer:a3 scope:a4];
  if (v4)
  {
    v5 = [(IMDCKMockRecordZone *)[IMDCKMockRecordKeyZone alloc] initWithIdentifier:@"recordKeyZone"];
    v6 = [[IMDCKMockRecordZone alloc] initWithIdentifier:@"chatManateeZone"];
    v7 = [[IMDCKMockRecordZone alloc] initWithIdentifier:@"messageManateeZone"];
    v8 = [[IMDCKMockRecordZone alloc] initWithIdentifier:@"attachmentManateeZone"];
    v4[3] = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v5, -[IMDCKMockRecordZone identifier](v5, "identifier"), v6, -[IMDCKMockRecordZone identifier](v6, "identifier"), v7, -[IMDCKMockRecordZone identifier](v7, "identifier"), v8, -[IMDCKMockRecordZone identifier](v8, "identifier"), 0}];
  }

  return v4;
}

- (IMDCKMockDatabase)init
{
  v5.receiver = self;
  v5.super_class = IMDCKMockDatabase;
  v2 = [(IMDCKMockDatabase *)&v5 init];
  if (v2)
  {
    v3 = [[IMDCKMockRecordZone alloc] initWithIdentifier:@"recordKeyZone"];
    v2->_identifierToZoneMap = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v3, -[IMDCKMockRecordZone identifier](v3, "identifier"), 0}];
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMDCKMockDatabase;
  [(IMDCKMockDatabase *)&v3 dealloc];
}

- (id)_zoneIdentifierForOperation:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  if ([a3 isMemberOfClass:objc_opt_class()])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = [a3 recordsToSave];
    v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = @"recordKeyZone";
      v9 = *v25;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        if ([objc_msgSend(v11 "recordType")])
        {
          goto LABEL_29;
        }

        if ([objc_msgSend(v11 "recordType")])
        {
          v8 = @"chatManateeZone";
          goto LABEL_29;
        }

        if ([objc_msgSend(v11 "recordType")])
        {
          v8 = @"messageManateeZone";
          goto LABEL_29;
        }

        if ([objc_msgSend(v11 "recordType")])
        {
          v8 = @"attachmentManateeZone";
          goto LABEL_29;
        }

        if (v7 == ++v10)
        {
          v7 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

LABEL_28:
    v8 = &stru_283F23018;
    goto LABEL_29;
  }

  if (![a3 isMemberOfClass:objc_opt_class()])
  {
    if ([a3 isMemberOfClass:objc_opt_class()])
    {
      v17 = [objc_msgSend(a3 "recordZoneIDs")];
      v8 = @"chatManateeZone";
      if ([objc_msgSend(v17 "zoneName")])
      {
        goto LABEL_29;
      }

      v8 = @"messageManateeZone";
      if ([objc_msgSend(v17 "zoneName")])
      {
        goto LABEL_29;
      }

      v8 = @"attachmentManateeZone";
      if ([objc_msgSend(v17 "zoneName")])
      {
        goto LABEL_29;
      }
    }

    goto LABEL_28;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = [a3 recordIDs];
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (!v13)
  {
    goto LABEL_28;
  }

  v14 = v13;
  v15 = *v21;
  v8 = @"recordKeyZone";
LABEL_17:
  v16 = 0;
  while (1)
  {
    if (*v21 != v15)
    {
      objc_enumerationMutation(v12);
    }

    if ([objc_msgSend(*(*(&v20 + 1) + 8 * v16) "zoneID")])
    {
      break;
    }

    if (v14 == ++v16)
    {
      v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v14)
      {
        goto LABEL_17;
      }

      goto LABEL_28;
    }
  }

LABEL_29:
  v18 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)addOperation:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = a3;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Adding operation %@", &v10, 0xCu);
    }
  }

  v6 = [(IMDCKMockDatabase *)self _zoneIdentifierForOperation:a3];
  v7 = [(NSDictionary *)[(IMDCKMockDatabase *)self identifierToZoneMap] objectForKey:v6];
  if (v7)
  {
    [v7 handleOperation:a3];
  }

  else if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412546;
      v11 = a3;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Did not find mock database for operation %@ zoneID %@", &v10, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end