@interface BCSLinkItemPersistentStore
- (BCSLinkItemPersistentStore)init;
- (id)databasePath;
- (id)itemMatching:(id)a3;
- (void)_executeDeleteSQLQuery:(void *)result;
- (void)deleteExpiredItemsOfType:(int64_t)a3;
- (void)deleteItemMatching:(id)a3;
- (void)deleteItemsOfType:(int64_t)a3;
- (void)deleteLinkItemsWithBundleID:(id)a3;
- (void)schemaVersionWillChangeForDatabase:(sqlite3 *)a3 fromSchemaVersion:(int64_t)a4 toSchemaVersion:(int64_t)a5;
- (void)updateItem:(id)a3 withItemIdentifier:(id)a4;
@end

@implementation BCSLinkItemPersistentStore

- (BCSLinkItemPersistentStore)init
{
  if (self)
  {
    v2.receiver = self;
    v2.super_class = BCSLinkItemPersistentStore;
    self = [(BCSPersistentStore *)&v2 init];
    if (self)
    {
      self->_schemaVersion = 3;
    }
  }

  return self;
}

- (id)databasePath
{
  if (![databasePath_databasePath length])
  {
    v2 = +[BCSPathProvider sharedInstance];
    v3 = [v2 documentsURL];
    v4 = [v3 path];

    v5 = [v4 stringByAppendingPathComponent:@"link_items.db"];
    v6 = databasePath_databasePath;
    databasePath_databasePath = v5;
  }

  v7 = databasePath_databasePath;

  return v7;
}

- (void)schemaVersionWillChangeForDatabase:(sqlite3 *)a3 fromSchemaVersion:(int64_t)a4 toSchemaVersion:(int64_t)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = ABSLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v14 = "[BCSLinkItemPersistentStore schemaVersionWillChangeForDatabase:fromSchemaVersion:toSchemaVersion:]";
    v15 = 2048;
    v16 = a4;
    v17 = 2048;
    v18 = a5;
    _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s schema version will change from '%ld' to '%ld', dropping link_items table", buf, 0x20u);
  }

  ppStmt = 0;
  if (!sqlite3_prepare_v2(a3, "DROP TABLE IF EXISTS link_items", -1, &ppStmt, 0))
  {
    if (sqlite3_step(ppStmt) != 101)
    {
      v9 = ABSLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = sqlite3_errmsg(a3);
        *buf = 136315138;
        v14 = v11;
        _os_log_error_impl(&dword_242072000, v9, OS_LOG_TYPE_ERROR, "error while dropping link_items table: %s", buf, 0xCu);
      }
    }

    sqlite3_finalize(ppStmt);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)itemMatching:(id)a3
{
  v61[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 type] != 2 || self == 0)
  {
    v6 = 0;
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    if (v4)
    {
      v8 = [v4[1] copy];
    }

    else
    {
      v8 = 0;
    }

    v9 = [v7 stringWithFormat:@"SELECT link_url_string, bundle_id_string, hero_image_url_string, icon_image_url_string, redirect_url_string, action, expiration_date, content_item_models, is_powered_by, map_icon_style_attributes, map_item_muid FROM link_items WHERE full_hash_string = %@", v8];
    v10 = [v9 UTF8String];

    [(BCSPersistentStore *)self beginBatch];
    ppStmt = 0;
    v6 = 0;
    if (!sqlite3_prepare_v2([(BCSPersistentStore *)self openedDatabase], v10, -1, &ppStmt, 0))
    {
      if (sqlite3_step(ppStmt) == 100)
      {
        v11 = ppStmt;
        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = __60__BCSLinkItemPersistentStore__extractLinkItemFromStatement___block_invoke;
        v59[3] = &__block_descriptor_40_e18___NSString_12__0i8l;
        v59[4] = ppStmt;
        v12 = MEMORY[0x245D07100](v59);
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __60__BCSLinkItemPersistentStore__extractLinkItemFromStatement___block_invoke_2;
        v57[3] = &unk_278D38B78;
        v13 = v12;
        v58 = v13;
        v14 = MEMORY[0x245D07100](v57);
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = __60__BCSLinkItemPersistentStore__extractLinkItemFromStatement___block_invoke_3;
        v56[3] = &__block_descriptor_40_e30___NSObject_20__0__NSArray_8i16l;
        v56[4] = v11;
        v15 = MEMORY[0x245D07100](v56);
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __60__BCSLinkItemPersistentStore__extractLinkItemFromStatement___block_invoke_32;
        v54[3] = &unk_278D38BC0;
        v16 = v15;
        v55 = v16;
        v17 = MEMORY[0x245D07100](v54);
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __60__BCSLinkItemPersistentStore__extractLinkItemFromStatement___block_invoke_35;
        v52[3] = &unk_278D38BE8;
        v18 = v16;
        v53 = v18;
        v46 = MEMORY[0x245D07100](v52);
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __60__BCSLinkItemPersistentStore__extractLinkItemFromStatement___block_invoke_38;
        v50[3] = &unk_278D38C10;
        v39 = v18;
        v51 = v39;
        v37 = MEMORY[0x245D07100](v50);
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __60__BCSLinkItemPersistentStore__extractLinkItemFromStatement___block_invoke_41;
        v49[3] = &__block_descriptor_40_e16___NSDate_12__0i8l;
        v49[4] = v11;
        v19 = MEMORY[0x245D07100](v49);
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __60__BCSLinkItemPersistentStore__extractLinkItemFromStatement___block_invoke_2_44;
        v48[3] = &__block_descriptor_40_e8_B12__0i8l;
        v48[4] = v11;
        v20 = MEMORY[0x245D07100](v48);
        v45 = (*(v14 + 16))(v14, 0);
        v44 = (*(v13 + 2))(v13, 1);
        v43 = (*(v13 + 2))(v13, 2);
        v35 = (*(v13 + 2))(v13, 3);
        v41 = v14;
        v21 = (*(v14 + 16))(v14, 4);
        v34 = sqlite3_column_int(v11, 5);
        v38 = v19;
        v42 = (*(v19 + 16))(v19, 6);
        v61[0] = objc_opt_class();
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:1];
        v40 = v17;
        v23 = (*(v17 + 16))(v17, v22, 7);

        LOBYTE(v22) = v20[2](v20, 8);
        v60[0] = objc_opt_class();
        v60[1] = objc_opt_class();
        v60[2] = objc_opt_class();
        v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:3];
        v25 = (v46)[2](v46, v24, 9);

        v26 = v37[2](v37, 10);
        v36 = v23;
        v33 = v23;
        v27 = v21;
        v28 = [[BCSLinkItemModel alloc] initWithLinkURL:v45 bundleID:v44 heroImageURLString:v43 iconImageURLString:v35 redirectURL:v21 action:v34 mapIconStyleAttributes:v25 mapItemMUID:v26 businessLinkContentItemModels:v33 isPoweredBy:v22];
        if (v28)
        {
          v29 = [BCSLinkItem alloc];
          v30 = objc_alloc_init(BCSLocaleHelper);
          v6 = [(BCSLinkItem *)v29 initWithLinkItemModel:v28 expirationDate:v42 localeHelper:v30];
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }

      sqlite3_finalize(ppStmt);
    }

    [(BCSPersistentStore *)self endBatch];
  }

  v31 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)updateItem:(id)a3 withItemIdentifier:(id)a4
{
  v68 = *MEMORY[0x277D85DE8];
  v62 = a3;
  v6 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (self && (isKindOfClass & 1) != 0)
  {
    v8 = v6;
    v9 = v62;
    [(BCSPersistentStore *)self beginBatch];
    [(BCSLinkItemPersistentStore *)self deleteItemMatching:v8];
    v10 = v9;
    v60 = v8;
    [(BCSPersistentStore *)self beginBatch];
    ppStmt = 0;
    v11 = MEMORY[0x277CCAAB0];
    v12 = [v10 model];
    v13 = v12;
    if (v12)
    {
      v14 = *(v12 + 88);
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    v61 = [v11 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:0];

    v16 = [v10 model];
    v17 = [v16 mapIconStyleAttributes];
    if (v17)
    {
      v18 = MEMORY[0x277CCAAB0];
      v19 = [v10 model];
      v20 = [v19 mapIconStyleAttributes];
      v21 = [v18 archivedDataWithRootObject:v20 requiringSecureCoding:1 error:0];
    }

    else
    {
      v21 = 0;
    }

    v22 = [v10 model];
    v23 = [v22 mapItemMUID];
    if (v23)
    {
      v24 = MEMORY[0x277CCAAB0];
      v25 = [v10 model];
      v26 = [v25 mapItemMUID];
      v27 = [v24 archivedDataWithRootObject:v26 requiringSecureCoding:1 error:0];
    }

    else
    {
      v27 = 0;
    }

    v28 = v60;

    if (!sqlite3_prepare_v2(-[BCSPersistentStore openedDatabase](self, "openedDatabase"), [@"INSERT INTO link_items (full_hash_string link:bundle_id_string url:{hero_image_url_string, icon_image_url_string, redirect_url_string, action, expiration_date, content_item_models, is_powered_by, map_icon_style_attributes, map_item_muid) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", "UTF8String"}string], -1, &ppStmt, 0))
    {
      v29 = [v60 itemIdentifier];
      objc_opt_class();
      v30 = objc_opt_isKindOfClass();

      if (v30)
      {
        v31 = [v60 itemIdentifier];
        v32 = ppStmt;
        v59 = v31;
        sqlite3_bind_text(v32, 1, [v59 UTF8String], -1, 0);
        v33 = ppStmt;
        v34 = [v10 model];
        v35 = [v34 linkURL];
        v36 = [v35 absoluteString];
        sqlite3_bind_text(v33, 2, [v36 UTF8String], -1, 0);

        v37 = ppStmt;
        v38 = [v10 model];
        v39 = [v38 bundleID];
        sqlite3_bind_text(v37, 3, [v39 UTF8String], -1, 0);

        v40 = ppStmt;
        v41 = [v10 model];
        v42 = [v41 heroImageURLString];
        sqlite3_bind_text(v40, 4, [v42 UTF8String], -1, 0);

        v43 = ppStmt;
        v44 = [v10 model];
        v45 = [v44 iconImageURLString];
        sqlite3_bind_text(v43, 5, [v45 UTF8String], -1, 0);

        v46 = ppStmt;
        v47 = [v10 model];
        v48 = [v47 redirectURL];
        v49 = [v48 absoluteString];
        sqlite3_bind_text(v46, 6, [v49 UTF8String], -1, 0);

        sqlite3_bind_int(ppStmt, 7, [v10 action]);
        v50 = ppStmt;
        v51 = [v10 expirationDate];
        [v51 timeIntervalSince1970];
        sqlite3_bind_double(v50, 8, v52);

        sqlite3_bind_blob(ppStmt, 9, [v61 bytes], objc_msgSend(v61, "length"), 0xFFFFFFFFFFFFFFFFLL);
        v53 = ppStmt;
        v54 = [v10 model];
        sqlite3_bind_int(v53, 10, [v54 isPoweredBy]);

        sqlite3_bind_blob(ppStmt, 11, [v21 bytes], objc_msgSend(v21, "length"), 0xFFFFFFFFFFFFFFFFLL);
        sqlite3_bind_blob(ppStmt, 12, [v27 bytes], objc_msgSend(v27, "length"), 0xFFFFFFFFFFFFFFFFLL);
        v55 = sqlite3_step(ppStmt);
        sqlite3_finalize(ppStmt);
        if (v55 != 101)
        {
          v56 = ABSLogCommon();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            v58 = sqlite3_errmsg([(BCSPersistentStore *)self openedDatabase]);
            *buf = 134218242;
            v65 = v55;
            v28 = v60;
            v66 = 2080;
            v67 = v58;
            _os_log_error_impl(&dword_242072000, v56, OS_LOG_TYPE_ERROR, "Error while finalizing insert link item %lu %s", buf, 0x16u);
          }
        }
      }
    }

    [(BCSPersistentStore *)self endBatch];

    [(BCSPersistentStore *)self endBatch];
  }

  v57 = *MEMORY[0x277D85DE8];
}

- (void)deleteItemMatching:(id)a3
{
  v9 = a3;
  v4 = [v9 type];
  if (self && v4 == 2)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [v9 itemIdentifier];
    v7 = [v5 stringWithFormat:@"DELETE FROM link_items WHERE full_hash_string = %@", v6];
    v8 = [v7 UTF8String];

    [(BCSLinkItemPersistentStore *)self _executeDeleteSQLQuery:v8];
  }
}

- (void)deleteItemsOfType:(int64_t)a3
{
  if (self && a3 == 2)
  {
    v5 = [@"DELETE FROM link_items" UTF8String];

    [(BCSLinkItemPersistentStore *)self _executeDeleteSQLQuery:v5];
  }
}

- (void)deleteExpiredItemsOfType:(int64_t)a3
{
  if (a3 == 2)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CBEAA8] date];
    [v6 timeIntervalSince1970];
    v8 = [v5 stringWithFormat:@"DELETE FROM link_items WHERE expiration_date <= %f", v7];
    v9 = [v8 UTF8String];

    [(BCSLinkItemPersistentStore *)self _executeDeleteSQLQuery:v9];
  }
}

- (void)_executeDeleteSQLQuery:(void *)result
{
  if (result)
  {
    v3 = result;
    [result beginBatch];
    ppStmt = 0;
    if (!sqlite3_prepare_v2([v3 openedDatabase], a2, -1, &ppStmt, 0))
    {
      sqlite3_step(ppStmt);
      sqlite3_finalize(ppStmt);
    }

    return [v3 endBatch];
  }

  return result;
}

- (void)deleteLinkItemsWithBundleID:(id)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM link_items WHERE bundle_id_string = %@", a3];
  v5 = [v4 UTF8String];

  [(BCSLinkItemPersistentStore *)self _executeDeleteSQLQuery:v5];
}

unsigned __int8 *__60__BCSLinkItemPersistentStore__extractLinkItemFromStatement___block_invoke(uint64_t a1, int a2)
{
  v2 = sqlite3_column_text(*(a1 + 32), a2);
  if (v2)
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v2];
  }

  return v2;
}

id __60__BCSLinkItemPersistentStore__extractLinkItemFromStatement___block_invoke_2(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  if (*(a1 + 32))
  {
    v3 = [MEMORY[0x277CBEBC0] URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __60__BCSLinkItemPersistentStore__extractLinkItemFromStatement___block_invoke_3(uint64_t a1, void *a2, int a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = sqlite3_column_blob(*(a1 + 32), a3);
  v7 = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:{sqlite3_column_bytes(*(a1 + 32), a3)}];
  v8 = v7;
  if (v7 && [v7 bytes])
  {
    v9 = MEMORY[0x277CCAAC8];
    v10 = [MEMORY[0x277CBEB98] setWithArray:v5];
    v16 = 0;
    v11 = [v9 unarchivedObjectOfClasses:v10 fromData:v8 error:&v16];
    v12 = v16;

    if (v12)
    {
      v13 = ABSLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v18 = v5;
        v19 = 2112;
        v20 = v12;
        _os_log_error_impl(&dword_242072000, v13, OS_LOG_TYPE_ERROR, "error while unarchiving items of classes %@ - error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

id __60__BCSLinkItemPersistentStore__extractLinkItemFromStatement___block_invoke_32(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v5 arrayByAddingObject:objc_opt_class()];

  v7 = (*(v4 + 16))(v4, v6, a3);

  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = ABSLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = 138412290;
      v15 = v13;
      _os_log_error_impl(&dword_242072000, v9, OS_LOG_TYPE_ERROR, "error while unarchiving object - expected NSArray type but got %@", &v14, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

id __60__BCSLinkItemPersistentStore__extractLinkItemFromStatement___block_invoke_35(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v5 arrayByAddingObject:objc_opt_class()];

  v7 = (*(v4 + 16))(v4, v6, a3);

  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = ABSLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = 138412290;
      v15 = v13;
      _os_log_error_impl(&dword_242072000, v9, OS_LOG_TYPE_ERROR, "error while unarchiving object - expected NSDictionary type but got %@", &v14, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

id __60__BCSLinkItemPersistentStore__extractLinkItemFromStatement___block_invoke_38(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v14[0] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v5 = (*(v3 + 16))(v3, v4, a2);

  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v7 = ABSLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = 138412290;
      v13 = v11;
      _os_log_error_impl(&dword_242072000, v7, OS_LOG_TYPE_ERROR, "error while unarchiving object - expected NSNumber type but got %@", &v12, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t __60__BCSLinkItemPersistentStore__extractLinkItemFromStatement___block_invoke_41(uint64_t a1, int a2)
{
  v2 = sqlite3_column_double(*(a1 + 32), a2);
  v3 = MEMORY[0x277CBEAA8];

  return [v3 dateWithTimeIntervalSince1970:v2];
}

uint64_t __60__BCSLinkItemPersistentStore__extractLinkItemFromStatement___block_invoke_2_44(uint64_t a1, int a2)
{
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:{sqlite3_column_int(*(a1 + 32), a2)}];
  v3 = [v2 BOOLValue];

  return v3;
}

@end