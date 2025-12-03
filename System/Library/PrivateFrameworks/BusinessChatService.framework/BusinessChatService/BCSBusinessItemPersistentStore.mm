@interface BCSBusinessItemPersistentStore
- (BCSPersistentBusinessItemObject)_executeFetchPersistentBusinessItemObjectSQLQuery:(void *)query;
- (BOOL)_executeDeleteBusinessItemSQLQuery:(void *)query;
- (BOOL)deleteBusinessItem:(id)item;
- (BOOL)deleteBusinessItemWithBizID:(id)d;
- (BOOL)deleteBusinessItemWithPhoneNumber:(id)number;
- (BOOL)insertOrReplaceBusinessItem:(id)item withTTL:(double)l;
- (BOOL)updateLastRetrievedDateForBusinessItem:(id)item;
- (BOOL)updateTTL:(double)l forBusinessItem:(id)item;
- (id)databasePath;
- (id)fetchPersistentBusinessItemObjectWithBizID:(id)d;
- (id)fetchPersistentBusinessItemObjectWithPhoneNumber:(id)number;
@end

@implementation BCSBusinessItemPersistentStore

- (id)databasePath
{
  if (self)
  {
    if (![_databasePath_databasePath_0 length])
    {
      v3 = +[BCSPathProvider sharedInstance];
      documentsURL = [v3 documentsURL];
      path = [documentsURL path];

      v6 = [path stringByAppendingPathComponent:@"business_items.db"];
      v7 = _databasePath_databasePath_0;
      _databasePath_databasePath_0 = v6;
    }

    self = _databasePath_databasePath_0;
    v2 = vars8;
  }

  return self;
}

- (BOOL)insertOrReplaceBusinessItem:(id)item withTTL:(double)l
{
  v54 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    v22 = 0;
    goto LABEL_9;
  }

  itemCopy = item;
  [(BCSPersistentStore *)self beginBatch];
  [(BCSBusinessItemPersistentStore *)self deleteBusinessItem:itemCopy];
  v7 = itemCopy;
  [(BCSPersistentStore *)self beginBatch];
  ppStmt = 0;
  v8 = MEMORY[0x277CCAAB0];
  messagingOpenHours = [v7 messagingOpenHours];
  v10 = [v8 archivedDataWithRootObject:messagingOpenHours requiringSecureCoding:1 error:0];

  v11 = MEMORY[0x277CCAAB0];
  callingOpenHours = [v7 callingOpenHours];
  v13 = [v11 archivedDataWithRootObject:callingOpenHours requiringSecureCoding:1 error:0];

  v14 = MEMORY[0x277CCAAB0];
  callToActions = [v7 callToActions];
  v16 = [v14 archivedDataWithRootObject:callToActions requiringSecureCoding:1 error:0];

  v17 = MEMORY[0x277CCAAB0];
  visibilityItems = [v7 visibilityItems];
  v19 = [v17 archivedDataWithRootObject:visibilityItems requiringSecureCoding:1 error:0];

  if (sqlite3_prepare_v2(-[BCSPersistentStore openedDatabase](self, "openedDatabase"), [@""insert into business_items (biz_id phone_number], -1, &ppStmt, 0)
  {
    goto LABEL_7;
  }

  v20 = ppStmt;
  bizID = [v7 bizID];
  v22 = 1;
  sqlite3_bind_text(v20, 1, [bizID UTF8String], -1, 0);

  v23 = ppStmt;
  phoneNumber = [v7 phoneNumber];
  sqlite3_bind_text(v23, 2, [phoneNumber UTF8String], -1, 0);

  v25 = ppStmt;
  name = [v7 name];
  sqlite3_bind_text(v25, 3, [name UTF8String], -1, 0);

  sqlite3_bind_int64(ppStmt, 4, [v7 phoneHash]);
  v27 = ppStmt;
  squareLogoURL = [v7 squareLogoURL];
  absoluteString = [squareLogoURL absoluteString];
  sqlite3_bind_text(v27, 5, [absoluteString UTF8String], -1, 0);

  v30 = ppStmt;
  wideLogoURL = [v7 wideLogoURL];
  absoluteString2 = [wideLogoURL absoluteString];
  sqlite3_bind_text(v30, 6, [absoluteString2 UTF8String], -1, 0);

  sqlite3_bind_int(ppStmt, 7, [v7 tintColor]);
  sqlite3_bind_int(ppStmt, 8, [v7 backgroundColor]);
  sqlite3_bind_blob(ppStmt, 9, [v16 bytes], objc_msgSend(v16, "length"), 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_int(ppStmt, 10, [v7 isVerified]);
  sqlite3_bind_blob(ppStmt, 11, [v10 bytes], objc_msgSend(v10, "length"), 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_blob(ppStmt, 12, [v13 bytes], objc_msgSend(v13, "length"), 0xFFFFFFFFFFFFFFFFLL);
  v33 = ppStmt;
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  sqlite3_bind_int(v33, 13, v35);

  v36 = ppStmt;
  date2 = [MEMORY[0x277CBEAA8] date];
  v38 = [date2 dateByAddingTimeInterval:l];
  [v38 timeIntervalSince1970];
  sqlite3_bind_double(v36, 14, v39);

  v40 = ppStmt;
  intentID = [v7 intentID];
  sqlite3_bind_text(v40, 15, [intentID UTF8String], -1, 0);

  v42 = ppStmt;
  groupID = [v7 groupID];
  sqlite3_bind_text(v42, 16, [groupID UTF8String], -1, 0);

  sqlite3_bind_blob(ppStmt, 17, [v19 bytes], objc_msgSend(v19, "length"), 0xFFFFFFFFFFFFFFFFLL);
  v44 = sqlite3_step(ppStmt);
  sqlite3_finalize(ppStmt);
  if (v44 != 101)
  {
    v45 = ABSLogCommon();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v48 = sqlite3_errmsg([(BCSPersistentStore *)self openedDatabase]);
      *buf = 134218242;
      v51 = v44;
      v52 = 2080;
      v53 = v48;
      _os_log_error_impl(&dword_242072000, v45, OS_LOG_TYPE_ERROR, "Error while finalizing insert business item %lu %s", buf, 0x16u);
    }

LABEL_7:
    v22 = 0;
  }

  [(BCSPersistentStore *)self endBatch];

  [(BCSPersistentStore *)self endBatch];
LABEL_9:
  v46 = *MEMORY[0x277D85DE8];
  return v22;
}

- (BOOL)updateTTL:(double)l forBusinessItem:(id)item
{
  itemCopy = item;
  [(BCSPersistentStore *)self beginBatch];
  ppStmt = 0;
  v7 = MEMORY[0x277CCACA8];
  date = [MEMORY[0x277CBEAA8] date];
  v8 = [date dateByAddingTimeInterval:l];
  [v8 timeIntervalSince1970];
  v10 = v9;
  bizID = [itemCopy bizID];
  v12 = [bizID length];
  selfCopy = self;
  if (v12)
  {
    bizID2 = [itemCopy bizID];
  }

  else
  {
    bizID2 = &stru_28544C2A0;
  }

  phoneNumber = [itemCopy phoneNumber];
  v15 = [phoneNumber length];
  if (v15)
  {
    phoneNumber2 = [itemCopy phoneNumber];
  }

  else
  {
    phoneNumber2 = &stru_28544C2A0;
  }

  v17 = [v7 stringWithFormat:@"UPDATE business_items SET time_to_live_date = %u WHERE biz_id = %@ OR phone_number = %@", v10, bizID2, phoneNumber2];
  uTF8String = [v17 UTF8String];

  if (v15)
  {
  }

  if (v12)
  {
  }

  if (sqlite3_prepare_v2([(BCSPersistentStore *)selfCopy openedDatabase], uTF8String, -1, &ppStmt, 0) || sqlite3_step(ppStmt) != 101)
  {
    v19 = 0;
  }

  else
  {
    sqlite3_finalize(ppStmt);
    v19 = 1;
  }

  [(BCSPersistentStore *)selfCopy endBatch];

  return v19;
}

- (BOOL)updateLastRetrievedDateForBusinessItem:(id)item
{
  v4 = MEMORY[0x277CBEAA8];
  itemCopy = item;
  date = [v4 date];
  v7 = itemCopy;
  if (self)
  {
    v8 = date;
    [(BCSPersistentStore *)self beginBatch];
    ppStmt = 0;
    v9 = MEMORY[0x277CCACA8];
    [v8 timeIntervalSince1970];
    v11 = v10;

    bizID = [v7 bizID];
    v13 = [bizID length];
    v22 = date;
    if (v13)
    {
      bizID2 = [v7 bizID];
    }

    else
    {
      bizID2 = &stru_28544C2A0;
    }

    phoneNumber = [v7 phoneNumber];
    v16 = [phoneNumber length];
    if (v16)
    {
      phoneNumber2 = [v7 phoneNumber];
    }

    else
    {
      phoneNumber2 = &stru_28544C2A0;
    }

    v18 = [v9 stringWithFormat:@"UPDATE business_items SET last_retrieved_date = %u WHERE biz_id = %@ OR phone_number = %@", v11, bizID2, phoneNumber2];
    uTF8String = [v18 UTF8String];

    if (v16)
    {
    }

    date = v22;
    if (v13)
    {
    }

    if (sqlite3_prepare_v2([(BCSPersistentStore *)self openedDatabase], uTF8String, -1, &ppStmt, 0) || sqlite3_step(ppStmt) != 101)
    {
      v20 = 0;
    }

    else
    {
      sqlite3_finalize(ppStmt);
      v20 = 1;
    }

    [(BCSPersistentStore *)self endBatch];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)fetchPersistentBusinessItemObjectWithBizID:(id)d
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"select * from business_items where biz_id=%@", d];
  uTF8String = [v4 UTF8String];

  return [(BCSBusinessItemPersistentStore *)self _executeFetchPersistentBusinessItemObjectSQLQuery:uTF8String];
}

- (BCSPersistentBusinessItemObject)_executeFetchPersistentBusinessItemObjectSQLQuery:(void *)query
{
  v94 = *MEMORY[0x277D85DE8];
  if (query)
  {
    [query beginBatch];
    ppStmt = 0;
    if (sqlite3_prepare_v2([query openedDatabase], a2, -1, &ppStmt, 0) || sqlite3_step(ppStmt) != 100)
    {
      v5 = 0;
    }

    else
    {
      if (sqlite3_column_text(ppStmt, 1))
      {
        v4 = objc_alloc(MEMORY[0x277CCACA8]);
        v84 = [v4 initWithUTF8String:{sqlite3_column_text(ppStmt, 1)}];
      }

      else
      {
        v84 = &stru_28544C2A0;
      }

      if (sqlite3_column_text(ppStmt, 2))
      {
        v8 = objc_alloc(MEMORY[0x277CCACA8]);
        v83 = [v8 initWithUTF8String:{sqlite3_column_text(ppStmt, 2)}];
      }

      else
      {
        v83 = &stru_28544C2A0;
      }

      if (sqlite3_column_text(ppStmt, 3))
      {
        v9 = objc_alloc(MEMORY[0x277CCACA8]);
        v82 = [v9 initWithUTF8String:{sqlite3_column_text(ppStmt, 3)}];
      }

      else
      {
        v82 = &stru_28544C2A0;
      }

      v75 = sqlite3_column_int64(ppStmt, 4);
      v10 = sqlite3_column_text(ppStmt, 5);
      v11 = MEMORY[0x277CBEBC0];
      if (v10)
      {
        v12 = objc_alloc(MEMORY[0x277CCACA8]);
        v13 = [v12 initWithUTF8String:{sqlite3_column_text(ppStmt, 5)}];
        v81 = [v11 URLWithString:v13];
      }

      else
      {
        v81 = [MEMORY[0x277CBEBC0] URLWithString:&stru_28544C2A0];
      }

      v14 = sqlite3_column_text(ppStmt, 6);
      v15 = MEMORY[0x277CBEBC0];
      if (v14)
      {
        v16 = objc_alloc(MEMORY[0x277CCACA8]);
        v17 = [v16 initWithUTF8String:{sqlite3_column_text(ppStmt, 6)}];
        v80 = [v15 URLWithString:v17];
      }

      else
      {
        v80 = [MEMORY[0x277CBEBC0] URLWithString:&stru_28544C2A0];
      }

      v67 = sqlite3_column_int(ppStmt, 7);
      v18 = sqlite3_column_int(ppStmt, 8);
      v76 = sqlite3_column_int(ppStmt, 10);
      v78 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{sqlite3_column_int(ppStmt, 13)}];
      v77 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{sqlite3_column_double(ppStmt, 14)}];
      if (sqlite3_column_text(ppStmt, 15))
      {
        v19 = objc_alloc(MEMORY[0x277CCACA8]);
        v79 = [v19 initWithUTF8String:{sqlite3_column_text(ppStmt, 15)}];
      }

      else
      {
        v79 = &stru_28544C2A0;
      }

      if (sqlite3_column_text(ppStmt, 16))
      {
        v20 = objc_alloc(MEMORY[0x277CCACA8]);
        v69 = [v20 initWithUTF8String:{sqlite3_column_text(ppStmt, 16)}];
      }

      else
      {
        v69 = &stru_28544C2A0;
      }

      v21 = sqlite3_column_blob(ppStmt, 9);
      v22 = [MEMORY[0x277CBEA90] dataWithBytes:v21 length:{sqlite3_column_bytes(ppStmt, 9)}];
      v23 = MEMORY[0x277CCAAC8];
      v24 = MEMORY[0x277CBEB98];
      v25 = objc_opt_class();
      v26 = [v24 setWithObjects:{v25, NSClassFromString(&cfstr_Bcscalltoactio.isa), 0}];
      v88 = 0;
      v74 = v22;
      v73 = [v23 unarchivedObjectOfClasses:v26 fromData:v22 error:&v88];
      v27 = v88;

      if (v27)
      {
        v28 = ABSLogCommon();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v59 = sqlite3_errmsg([query openedDatabase]);
          *buf = 134218242;
          v91 = v27;
          v92 = 2080;
          v93 = v59;
          _os_log_error_impl(&dword_242072000, v28, OS_LOG_TYPE_ERROR, "error while unarchiving BCSCallToActionItem %lu %s", buf, 0x16u);
        }
      }

      v72 = v27;
      v29 = sqlite3_column_blob(ppStmt, 11);
      v30 = [MEMORY[0x277CBEA90] dataWithBytes:v29 length:{sqlite3_column_bytes(ppStmt, 11)}];
      v31 = MEMORY[0x277CCAAC8];
      v32 = MEMORY[0x277CBEB98];
      v33 = NSClassFromString(&cfstr_Bcsopenhours.isa);
      v34 = objc_opt_class();
      v35 = [v32 setWithObjects:{v33, v34, objc_opt_class(), 0}];
      v87 = 0;
      v71 = v30;
      v66 = [v31 unarchivedObjectOfClasses:v35 fromData:v30 error:&v87];
      v36 = v87;

      if (v36)
      {
        v37 = ABSLogCommon();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v60 = sqlite3_errmsg([query openedDatabase]);
          *buf = 134218242;
          v91 = v36;
          v92 = 2080;
          v93 = v60;
          _os_log_error_impl(&dword_242072000, v37, OS_LOG_TYPE_ERROR, "error while unarchiving BCSOpenHours %lu %s", buf, 0x16u);
        }
      }

      v70 = v36;
      v38 = sqlite3_column_blob(ppStmt, 12);
      v39 = [MEMORY[0x277CBEA90] dataWithBytes:v38 length:{sqlite3_column_bytes(ppStmt, 12)}];
      v40 = MEMORY[0x277CCAAC8];
      v41 = MEMORY[0x277CBEB98];
      v42 = NSClassFromString(&cfstr_Bcsopenhours.isa);
      v43 = objc_opt_class();
      v44 = [v41 setWithObjects:{v42, v43, objc_opt_class(), 0}];
      v86 = 0;
      v45 = [v40 unarchivedObjectOfClasses:v44 fromData:v39 error:&v86];
      v46 = v86;

      if (v46)
      {
        v47 = ABSLogCommon();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v61 = sqlite3_errmsg([query openedDatabase]);
          *buf = 134218242;
          v91 = v46;
          v92 = 2080;
          v93 = v61;
          _os_log_error_impl(&dword_242072000, v47, OS_LOG_TYPE_ERROR, "error while unarchiving BCSOpenHours %lu %s", buf, 0x16u);
        }
      }

      v64 = v67;
      v65 = v46;
      v48 = sqlite3_column_blob(ppStmt, 17);
      v49 = [MEMORY[0x277CBEA90] dataWithBytes:v48 length:{sqlite3_column_bytes(ppStmt, 17)}];
      v50 = MEMORY[0x277CCAAC8];
      v51 = MEMORY[0x277CBEB98];
      v52 = NSClassFromString(&cfstr_Bcsvisibilityi.isa);
      v53 = objc_opt_class();
      v54 = [v51 setWithObjects:{v52, v53, objc_opt_class(), 0}];
      v85 = 0;
      v68 = v49;
      v55 = [v50 unarchivedObjectOfClasses:v54 fromData:v49 error:&v85];
      v56 = v85;

      if (v56)
      {
        v57 = ABSLogCommon();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          v62 = sqlite3_errmsg([query openedDatabase]);
          *buf = 134218242;
          v91 = v56;
          v92 = 2080;
          v93 = v62;
          _os_log_error_impl(&dword_242072000, v57, OS_LOG_TYPE_ERROR, "error while unarchiving BCSVisibilityItem %lu %s", buf, 0x16u);
        }
      }

      sqlite3_finalize(ppStmt);
      LOBYTE(v63) = v76 == 1;
      v58 = [[BCSBusinessItem alloc] initWithBizID:v84 phoneNumber:v83 name:v82 phoneHash:v75 squareLogoURL:v81 wideLogoURL:v80 tintColor:v64 backgroundColor:v18 callToActions:v73 messagingOpenHours:v66 callingOpenHours:v45 isVerified:v63 intentID:v79 groupID:v69 visibilityItems:v55];
      v5 = [[BCSPersistentBusinessItemObject alloc] initWithBusinessItem:v58 lastRetrievedDate:v78 TTLDate:v77];
    }

    [query endBatch];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)fetchPersistentBusinessItemObjectWithPhoneNumber:(id)number
{
  number = [MEMORY[0x277CCACA8] stringWithFormat:@"select * from business_items where phone_number=%@", number];
  uTF8String = [number UTF8String];

  return [(BCSBusinessItemPersistentStore *)self _executeFetchPersistentBusinessItemObjectSQLQuery:uTF8String];
}

- (BOOL)deleteBusinessItem:(id)item
{
  itemCopy = item;
  [(BCSPersistentStore *)self beginBatch];
  bizID = [itemCopy bizID];
  v6 = [(BCSBusinessItemPersistentStore *)self deleteBusinessItemWithBizID:bizID];

  phoneNumber = [itemCopy phoneNumber];

  LOBYTE(itemCopy) = [(BCSBusinessItemPersistentStore *)self deleteBusinessItemWithPhoneNumber:phoneNumber];
  [(BCSPersistentStore *)self endBatch];
  return (v6 | itemCopy) & 1;
}

- (BOOL)deleteBusinessItemWithBizID:(id)d
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"delete from business_items where biz_id=%@", d];
  uTF8String = [v4 UTF8String];

  return [(BCSBusinessItemPersistentStore *)self _executeDeleteBusinessItemSQLQuery:uTF8String];
}

- (BOOL)_executeDeleteBusinessItemSQLQuery:(void *)query
{
  if (!query)
  {
    return 0;
  }

  [query beginBatch];
  ppStmt = 0;
  if (sqlite3_prepare_v2([query openedDatabase], a2, -1, &ppStmt, 0))
  {
    v4 = 0;
  }

  else
  {
    v4 = sqlite3_step(ppStmt) == 101;
  }

  [query endBatch];
  return v4;
}

- (BOOL)deleteBusinessItemWithPhoneNumber:(id)number
{
  number = [MEMORY[0x277CCACA8] stringWithFormat:@"delete from business_items where phone_number=%@", number];
  uTF8String = [number UTF8String];

  return [(BCSBusinessItemPersistentStore *)self _executeDeleteBusinessItemSQLQuery:uTF8String];
}

@end