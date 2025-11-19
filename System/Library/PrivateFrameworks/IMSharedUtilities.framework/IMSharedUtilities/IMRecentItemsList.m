@interface IMRecentItemsList
+ (id)sharedInstance;
- (IMRecentItemsList)init;
- (id)_buildLRUCacheUsingArray:(id)a3 forDomain:(id)a4;
- (id)_recentsCacheForDomain:(id)a3;
- (int64_t)cacheSizeForDomain:(id)a3;
- (void)_addRecentDataPayloadEntry:(id)a3 toDomain:(id)a4;
- (void)_removeRecentDataPayloadEntry:(id)a3 forDomain:(id)a4;
- (void)_removeRecentDataPayloadEntryFromDisk:(id)a3 forDomain:(id)a4;
- (void)_saveRecentDataPayloadEntryToDisk:(id)a3 forDomain:(id)a4;
- (void)_updateRecentsCache:(id)a3 forDomain:(id)a4;
- (void)addRecentItemAtFileURL:(id)a3 GUID:(id)a4 infoDictionary:(id)a5 forDomain:(id)a6;
- (void)addRecentItemWithData:(id)a3 GUID:(id)a4 infoDictionary:(id)a5 forDomain:(id)a6;
- (void)dealloc;
- (void)deleteAllRecentItemsForDomain:(id)a3;
- (void)deleteRecentItemWithData:(id)a3 GUID:(id)a4 forDomain:(id)a5;
- (void)deleteRecentItemWithFileURL:(id)a3 GUID:(id)a4 forDomain:(id)a5;
- (void)deleteRecentsInFirstLaunch;
- (void)dispatchCacheUpdateWithBlock:(id)a3;
- (void)fetchRecentItemsForDomain:(id)a3 completion:(id)a4;
- (void)fetchRecentStickersWithCompletion:(id)a3;
@end

@implementation IMRecentItemsList

+ (id)sharedInstance
{
  if (qword_1ED8CA408 != -1)
  {
    sub_1A88C20E8();
  }

  return qword_1ED8CA370;
}

- (IMRecentItemsList)init
{
  v4.receiver = self;
  v4.super_class = IMRecentItemsList;
  v2 = [(IMRecentItemsList *)&v4 init];
  if (v2)
  {
    v2->_diskWritingQueue = dispatch_queue_create("com.apple.private.IMSharedUtilities.IMRecents", 0);
  }

  return v2;
}

- (void)dealloc
{
  dispatch_release(self->_diskWritingQueue);
  self->_diskWritingQueue = 0;
  v3.receiver = self;
  v3.super_class = IMRecentItemsList;
  [(IMRecentItemsList *)&v3 dealloc];
}

- (int64_t)cacheSizeForDomain:(id)a3
{
  if (qword_1EB30AED0 != -1)
  {
    sub_1A88C20FC();
  }

  v4 = [qword_1EB30AEC8 objectForKey:a3];

  return [v4 integerValue];
}

- (void)dispatchCacheUpdateWithBlock:(id)a3
{
  if (a3)
  {
    diskWritingQueue = self->_diskWritingQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A8671160;
    block[3] = &unk_1E78283E8;
    block[4] = a3;
    dispatch_async(diskWritingQueue, block);
  }
}

- (void)deleteRecentItemWithFileURL:(id)a3 GUID:(id)a4 forDomain:(id)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A86712E4;
  v5[3] = &unk_1E7828410;
  v5[4] = a4;
  v5[5] = self;
  v5[6] = a3;
  v5[7] = a5;
  [(IMRecentItemsList *)self dispatchCacheUpdateWithBlock:v5];
}

- (void)deleteRecentItemWithData:(id)a3 GUID:(id)a4 forDomain:(id)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A86713D4;
  v5[3] = &unk_1E7828410;
  v5[4] = a4;
  v5[5] = a3;
  v5[6] = self;
  v5[7] = a5;
  [(IMRecentItemsList *)self dispatchCacheUpdateWithBlock:v5];
}

- (void)deleteAllRecentItemsForDomain:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1A86714A4;
  v3[3] = &unk_1E7826DA8;
  v3[4] = a3;
  [(IMRecentItemsList *)self dispatchCacheUpdateWithBlock:v3];
}

- (void)deleteRecentsInFirstLaunch
{
  if ((IMGetCachedDomainBoolForKey() & 1) == 0)
  {
    IMSetDomainBoolForKey();
    v2 = [MEMORY[0x1E696AC08] defaultManager];
    v3 = [IMSystemRootDirectory() stringByAppendingString:@"/var/mobile/Library/SMS/Recents/"];

    [v2 removeItemAtPath:v3 error:0];
  }
}

- (void)addRecentItemWithData:(id)a3 GUID:(id)a4 infoDictionary:(id)a5 forDomain:(id)a6
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A8671724;
  v6[3] = &unk_1E7828438;
  v6[4] = a4;
  v6[5] = a3;
  v6[6] = a5;
  v6[7] = self;
  v6[8] = a6;
  [(IMRecentItemsList *)self dispatchCacheUpdateWithBlock:v6];
}

- (void)fetchRecentStickersWithCompletion:(id)a3
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3052000000;
  v10[3] = sub_1A8601ED8;
  v10[4] = sub_1A8602164;
  v10[5] = 0;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3052000000;
  v9[3] = sub_1A8601ED8;
  v9[4] = sub_1A8602164;
  v9[5] = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3052000000;
  v8[3] = sub_1A8601ED8;
  v8[4] = sub_1A8602164;
  v8[5] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 10];
  v5 = MEMORY[0x1AC570AB0]("IMDAttachmentRecordCopyAttachmentStickers", @"IMDPersistence");
  diskWritingQueue = self->_diskWritingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A867197C;
  block[3] = &unk_1E7828488;
  block[5] = v10;
  block[6] = v8;
  block[7] = v9;
  block[8] = v5;
  block[4] = a3;
  dispatch_async(diskWritingQueue, block);
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v9, 8);
  _Block_object_dispose(v10, 8);
}

- (void)fetchRecentItemsForDomain:(id)a3 completion:(id)a4
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3052000000;
  v13[3] = sub_1A8601ED8;
  v13[4] = sub_1A8602164;
  v13[5] = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3052000000;
  v12[3] = sub_1A8601ED8;
  v12[4] = sub_1A8602164;
  v12[5] = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3052000000;
  v11[3] = sub_1A8601ED8;
  v11[4] = sub_1A8602164;
  v11[5] = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3052000000;
  v10[3] = sub_1A8601ED8;
  v10[4] = sub_1A8602164;
  v10[5] = 0;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3052000000;
  v9[3] = sub_1A8601ED8;
  v9[4] = sub_1A8602164;
  v9[5] = 0;
  diskWritingQueue = self->_diskWritingQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A867201C;
  v8[3] = &unk_1E78284B0;
  v8[4] = self;
  v8[5] = a3;
  v8[8] = v11;
  v8[9] = v9;
  v8[10] = v10;
  v8[11] = v12;
  v8[6] = a4;
  v8[7] = v13;
  dispatch_async(diskWritingQueue, v8);
  _Block_object_dispose(v9, 8);
  _Block_object_dispose(v10, 8);
  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(v13, 8);
}

- (void)_addRecentDataPayloadEntry:(id)a3 toDomain:(id)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v32 = [a3 GUID];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v49 = a4;
      v50 = 2112;
      v51 = v32;
      v52 = 2112;
      v53 = [a3 timestamp];
      _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Adding new recents entry in domain: %@ with GUID: %@ and timestamp: %@", buf, 0x20u);
    }
  }

  obj = [-[IMRecentItemsList _recentsCacheForDomain:](self _recentsCacheForDomain:{a4), "mutableCopy"}];
  v5 = IMOSLoggingEnabled();
  if (obj)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v49 = a4;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Updating existing Recents cache for domain: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (v5)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v49 = a4;
        _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Creating new Recents cache for domain: %@", buf, 0xCu);
      }
    }

    obj = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  [obj addObject:{objc_msgSend(a3, "asJSONObject")}];
  v8 = [(IMRecentItemsList *)self _buildLRUCacheUsingArray:obj forDomain:a4];
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v8 count];
      *buf = 134217984;
      v49 = v10;
      _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Cache Size: %tu", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v49 = v8;
      _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Cache contents: %@", buf, 0xCu);
    }
  }

  if (v8)
  {
    v12 = [obj count];
    if (v12 != [v8 count])
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v13 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (v13)
      {
        v15 = *v42;
        *&v14 = 138412290;
        v27 = v14;
        do
        {
          v16 = 0;
          do
          {
            if (*v42 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v41 + 1) + 8 * v16);
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            v18 = [v8 countByEnumeratingWithState:&v37 objects:v46 count:{16, v27}];
            if (v18)
            {
              v19 = *v38;
LABEL_27:
              v20 = 0;
              while (1)
              {
                if (*v38 != v19)
                {
                  objc_enumerationMutation(v8);
                }

                if ([objc_msgSend(*(*(&v37 + 1) + 8 * v20) valueForKey:{@"guid", "isEqualToString:", objc_msgSend(v17, "valueForKey:", @"guid"}])
                {
                  break;
                }

                if (v18 == ++v20)
                {
                  v18 = [v8 countByEnumeratingWithState:&v37 objects:v46 count:16];
                  if (v18)
                  {
                    goto LABEL_27;
                  }

                  goto LABEL_33;
                }
              }
            }

            else
            {
LABEL_33:
              if (IMOSLoggingEnabled())
              {
                v21 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
                {
                  v22 = [v17 valueForKey:@"guid"];
                  *buf = v27;
                  v49 = v22;
                  _os_log_impl(&dword_1A85E5000, v21, OS_LOG_TYPE_INFO, "Removing deprecated recents item: %@", buf, 0xCu);
                }
              }

              -[IMRecentItemsList _removeRecentDataPayloadEntryFromDisk:forDomain:](self, "_removeRecentDataPayloadEntryFromDisk:forDomain:", [v17 valueForKey:@"guid"], a4);
            }

            ++v16;
          }

          while (v16 != v13);
          v13 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
        }

        while (v13);
      }
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v23 = [v8 countByEnumeratingWithState:&v33 objects:v45 count:16];
    if (v23)
    {
      v24 = *v34;
      do
      {
        v25 = 0;
        do
        {
          if (*v34 != v24)
          {
            objc_enumerationMutation(v8);
          }

          if ([v32 isEqualToString:{objc_msgSend(*(*(&v33 + 1) + 8 * v25), "valueForKey:", @"guid"}])
          {
            if (IMOSLoggingEnabled())
            {
              v26 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_1A85E5000, v26, OS_LOG_TYPE_INFO, "Saving new Recents Payload to disk", buf, 2u);
              }
            }

            [(IMRecentItemsList *)self _saveRecentDataPayloadEntryToDisk:a3 forDomain:a4];
          }

          ++v25;
        }

        while (v23 != v25);
        v23 = [v8 countByEnumeratingWithState:&v33 objects:v45 count:16];
      }

      while (v23);
    }

    [(IMRecentItemsList *)self _updateRecentsCache:v8 forDomain:a4];
  }
}

- (void)addRecentItemAtFileURL:(id)a3 GUID:(id)a4 infoDictionary:(id)a5 forDomain:(id)a6
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3052000000;
  v9[3] = sub_1A8601ED8;
  v9[4] = sub_1A8602164;
  v9[5] = 0;
  if (a3)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1A8672D40;
    v7[3] = &unk_1E78284D8;
    v7[4] = a4;
    v7[5] = a6;
    v7[6] = a3;
    v7[7] = self;
    v7[8] = a5;
    v7[9] = v9;
    [(IMRecentItemsList *)self dispatchCacheUpdateWithBlock:v7];
  }

  else if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "No file URL provided when adding recent", buf, 2u);
    }
  }

  _Block_object_dispose(v9, 8);
}

- (void)_removeRecentDataPayloadEntry:(id)a3 forDomain:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v19 = a4;
      v20 = 2112;
      v21 = [a3 GUID];
      v22 = 2112;
      v23 = [a3 timestamp];
      _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Updating cache with Data Payload entry for Domain: %@ with GUID: %@ and timestamp: %@", buf, 0x20u);
    }
  }

  v8 = [-[IMRecentItemsList _recentsCacheForDomain:](self _recentsCacheForDomain:{a4), "mutableCopy"}];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = *v14;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if ([objc_msgSend(v12 valueForKey:{@"guid", "isEqualToString:", objc_msgSend(a3, "GUID")}])
        {
          [v8 removeObject:v12];
          -[IMRecentItemsList _removeRecentDataPayloadEntryFromDisk:forDomain:](self, "_removeRecentDataPayloadEntryFromDisk:forDomain:", [a3 GUID], a4);
          [(IMRecentItemsList *)self _updateRecentsCache:v8 forDomain:a4];
          goto LABEL_14;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

- (void)_saveRecentDataPayloadEntryToDisk:(id)a3 forDomain:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = FormattedDataFilePath(a4, [a3 GUID]);
  v14 = 0;
  IMSharedHelperEnsureDirectoryExistsAtPath([v5 stringByDeletingLastPathComponent]);
  if ([a3 messageItemInfo])
  {
    v6 = [v5 stringByAppendingPathExtension:@"json"];
    v7 = [MEMORY[0x1E696ACB0] dataWithJSONObject:objc_msgSend(a3 options:"messageItemInfo") error:{0, &v14}];
    if (!v7)
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v16 = v14;
          _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Failed to save recent item info dictionary onto disk. Error: %@", buf, 0xCu);
        }
      }
    }

    [v7 writeToFile:v6 atomically:1];
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Creating a new Recents Item payload file at: %@", buf, 0xCu);
    }
  }

  if ([a3 payloadData])
  {
    v10 = [objc_msgSend(a3 "payloadData")];
    v11 = IMOSLoggingEnabled();
    if (v10)
    {
      if (v11)
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Wrote data to disk successfully. Posting IMRecentItemsListUpdatedNotification", buf, 2u);
        }
      }

      notify_post([@"com.apple.imagent.IMRecentItemsListUpdatedNotification" UTF8String]);
    }

    else if (v11)
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Failed to write data to disk", buf, 2u);
      }
    }
  }
}

- (void)_removeRecentDataPayloadEntryFromDisk:(id)a3 forDomain:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = FormattedDataFilePath(a4, a3);
  v6 = [v5 stringByAppendingPathExtension:@"json"];
  v15 = 0;
  if (![objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
  {
    return;
  }

  v7 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  v8 = IMOSLoggingEnabled();
  if (v7)
  {
    if (v8)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v17 = v5;
        v10 = "Successfully removed data payload: %@";
        v11 = v9;
        v12 = 12;
LABEL_9:
        _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, v10, buf, v12);
      }
    }
  }

  else if (v8)
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v17 = v5;
      v18 = 2112;
      v19 = v15;
      v10 = "Failed to delete payload data from file %@. Error: %@";
      v11 = v13;
      v12 = 22;
      goto LABEL_9;
    }
  }

  if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
  {
    [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
    if (v15)
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v17 = a3;
          v18 = 2112;
          v19 = v15;
          _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "Failed to delete dictionary info for GUID %@. Error: %@", buf, 0x16u);
        }
      }
    }
  }
}

- (id)_buildLRUCacheUsingArray:(id)a3 forDomain:(id)a4
{
  v18 = a4;
  v16 = self;
  v28 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Building Recents list as Least Recently Used Cache...", buf, 2u);
    }
  }

  v5 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:{objc_msgSend(a3, "count")}];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v7)
  {
    v21 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v21)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        if ([v5 containsObject:{objc_msgSend(v9, "objectForKey:", @"guid", v16, v18)}])
        {
          if ([v6 count])
          {
            v10 = 0;
            do
            {
              v11 = [v6 objectAtIndexedSubscript:v10];
              if ([objc_msgSend(v9 objectForKeyedSubscript:{@"guid", "isEqualToString:", objc_msgSend(v11, "objectForKeyedSubscript:", @"guid"}])
              {
                v12 = [objc_msgSend(v9 objectForKeyedSubscript:{@"timestamp", "integerValue"}];
                if (v12 > [objc_msgSend(v11 objectForKeyedSubscript:{@"timestamp", "integerValue"}])
                {
                  [v6 replaceObjectAtIndex:v10 withObject:v9];
                }
              }

              ++v10;
            }

            while (v10 < [v6 count]);
          }
        }

        else
        {
          [v5 addObject:{objc_msgSend(v9, "objectForKey:", @"guid"}];
          [v6 addObject:v9];
        }
      }

      v7 = [a3 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  [v6 sortUsingComparator:{&unk_1F1BA61E8, v16, v18}];
  v13 = [v17 cacheSizeForDomain:v19];
  if ([v6 count] <= v13)
  {
    v13 = [v6 count];
  }

  v14 = [v6 subarrayWithRange:{0, v13}];

  return v14;
}

- (id)_recentsCacheForDomain:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v3 = FormattedRecentsCacheFilePath(a3);
  if (![objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
  {
    goto LABEL_17;
  }

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Retrieving Recents cache from JSON file...", buf, 2u);
    }
  }

  v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v3];
  if (v5)
  {
    v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v5 options:0 error:&v10];
    if (v6)
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v12 = v10;
          _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Failed read JSON data from recents cache. Error: %@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
LABEL_17:
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v12 = v3;
        _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "No data from parsing %@. This must be the first time we're creating a cache", buf, 0xCu);
      }
    }

    return 0;
  }

  return v6;
}

- (void)_updateRecentsCache:(id)a3 forDomain:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v5 = FormattedRecentsCacheFilePath(a4);
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Updating Recents cache into JSON file: %@", buf, 0xCu);
    }
  }

  IMSharedHelperEnsureDirectoryExistsAtPath([v5 stringByDeletingLastPathComponent]);
  v7 = [MEMORY[0x1E696ACB0] dataWithJSONObject:a3 options:0 error:&v15];
  if (!v15)
  {
    v12 = [v7 writeToFile:v5 atomically:1];
    v13 = IMOSLoggingEnabled();
    if (v12)
    {
      if (!v13)
      {
        return;
      }

      v14 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        return;
      }

      *buf = 0;
      v9 = "Successfully written JSON to file";
    }

    else
    {
      if (!v13)
      {
        return;
      }

      v14 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        return;
      }

      *buf = 0;
      v9 = "Failed to write recents cache into file!";
    }

    v10 = v14;
    v11 = 2;
    goto LABEL_16;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = v5;
      v9 = "Failed to generate json object from recents cache for %@";
      v10 = v8;
      v11 = 12;
LABEL_16:
      _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, v9, buf, v11);
    }
  }
}

@end