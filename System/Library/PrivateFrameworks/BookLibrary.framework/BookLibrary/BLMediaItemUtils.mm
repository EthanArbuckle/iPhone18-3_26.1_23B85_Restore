@interface BLMediaItemUtils
+ (id)hlsOfflinePlaybackKeysForItem:(id)item;
+ (unint64_t)bitrateForItem:(id)item;
+ (void)addPersistHLSOfflinePlaybackKey:(id)key forUri:(id)uri toItem:(id)item;
+ (void)clearPersistHLSOfflinePlaybackKeysFromItem:(id)item;
+ (void)removePersistHLSOfflinePlaybackKeyForUri:(id)uri fromItem:(id)item;
+ (void)setBitrate:(unint64_t)bitrate forItem:(id)item;
@end

@implementation BLMediaItemUtils

+ (id)hlsOfflinePlaybackKeysForItem:(id)item
{
  v28[3] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  objc_opt_class();
  v4 = sub_241D11FB4();
  v7 = objc_msgSend_valueForProperty_(itemCopy, v5, v4, v6);

  v8 = BUDynamicCast();

  v28[0] = objc_opt_class();
  v28[1] = objc_opt_class();
  v28[2] = objc_opt_class();
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v28, 3);
  objc_opt_class();
  v11 = MEMORY[0x277CCAAC8];
  v14 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v12, v10, v13);
  v25 = 0;
  v16 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(v11, v15, v14, v8, &v25);
  v17 = v25;
  v18 = BUDynamicCast();

  if (objc_msgSend_length(v8, v19, v20, v21) && v17)
  {
    v22 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v17;
      _os_log_impl(&dword_241D0D000, v22, OS_LOG_TYPE_ERROR, "Key Unarchive Error:  %@", buf, 0xCu);
    }
  }

  v23 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (unint64_t)bitrateForItem:(id)item
{
  itemCopy = item;
  v4 = sub_241D11E44();
  v7 = objc_msgSend_valueForProperty_(itemCopy, v5, v4, v6);

  v11 = objc_msgSend_unsignedIntegerValue(v7, v8, v9, v10);
  return v11;
}

+ (void)setBitrate:(unint64_t)bitrate forItem:(id)item
{
  v5 = MEMORY[0x277CCABB0];
  itemCopy = item;
  v11 = objc_msgSend_numberWithUnsignedInteger_(v5, v7, bitrate, v8);
  v9 = sub_241D11E44();
  objc_msgSend_setValue_forProperty_(itemCopy, v10, v11, v9);
}

+ (void)addPersistHLSOfflinePlaybackKey:(id)key forUri:(id)uri toItem:(id)item
{
  v44 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  uriCopy = uri;
  itemCopy = item;
  v13 = objc_msgSend_hlsOfflinePlaybackKeysForItem_(self, v11, itemCopy, v12);
  v17 = objc_msgSend_mutableCopy(v13, v14, v15, v16);

  if (!v17)
  {
    v17 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v18, v19, v20);
  }

  objc_msgSend_setObject_forKey_(v17, v18, keyCopy, uriCopy);
  v39 = 0;
  v22 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x277CCAAB0], v21, v17, 1, &v39);
  v23 = v39;
  v24 = BLHLSKeyFetchingLog();
  v25 = v24;
  if (v23)
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v26 = sub_241D12404();
      v29 = objc_msgSend_valueForProperty_(itemCopy, v27, v26, v28);
      *buf = 138543618;
      v41 = v29;
      v42 = 2112;
      v43 = v23;
      v30 = "Failed to archive keys for %{public}@. Key Archive Error:  %@";
      v31 = v25;
      v32 = OS_LOG_TYPE_ERROR;
      v33 = 22;
LABEL_8:
      _os_log_impl(&dword_241D0D000, v31, v32, v30, buf, v33);
    }
  }

  else if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v26 = sub_241D12404();
    v29 = objc_msgSend_valueForProperty_(itemCopy, v34, v26, v35);
    *buf = 138543362;
    v41 = v29;
    v30 = "Archived keys for %{public}@";
    v31 = v25;
    v32 = OS_LOG_TYPE_DEFAULT;
    v33 = 12;
    goto LABEL_8;
  }

  v36 = sub_241D11FB4();
  objc_msgSend_setValue_forProperty_(itemCopy, v37, v22, v36);

  v38 = *MEMORY[0x277D85DE8];
}

+ (void)removePersistHLSOfflinePlaybackKeyForUri:(id)uri fromItem:(id)item
{
  v27 = *MEMORY[0x277D85DE8];
  uriCopy = uri;
  itemCopy = item;
  v10 = objc_msgSend_hlsOfflinePlaybackKeysForItem_(self, v8, itemCopy, v9);
  v14 = objc_msgSend_mutableCopy(v10, v11, v12, v13);

  if (v14)
  {
    objc_msgSend_removeObjectForKey_(v14, v15, uriCopy, v16);
    v24 = 0;
    v18 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x277CCAAB0], v17, v14, 1, &v24);
    v19 = v24;
    if (v19)
    {
      v20 = BLHLSKeyFetchingLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v26 = v19;
        _os_log_impl(&dword_241D0D000, v20, OS_LOG_TYPE_ERROR, "Key Archive Error:  %@", buf, 0xCu);
      }
    }

    v21 = sub_241D11FB4();
    objc_msgSend_setValue_forProperty_(itemCopy, v22, v18, v21);
  }

  v23 = *MEMORY[0x277D85DE8];
}

+ (void)clearPersistHLSOfflinePlaybackKeysFromItem:(id)item
{
  itemCopy = item;
  v5 = sub_241D11FB4();
  objc_msgSend_setValue_forProperty_(itemCopy, v4, 0, v5);
}

@end