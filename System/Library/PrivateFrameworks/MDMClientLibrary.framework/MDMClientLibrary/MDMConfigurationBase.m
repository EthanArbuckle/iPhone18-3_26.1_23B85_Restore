@interface MDMConfigurationBase
+ (id)sharedConfigurationForChannel:(unint64_t)a3;
- (BOOL)_memberQueueWriteProperties:(id)a3 channelType:(unint64_t)a4 error:(id *)a5;
- (BOOL)memberQueueReadConfigurationOutError:(id *)a3;
- (BOOL)removeMDMConfigurationForChannel:(unint64_t)a3 error:(id *)a4;
- (BOOL)removeMDMConfigurationWithError:(id *)a3;
- (BOOL)setPropertyForKey:(id)a3 value:(id)a4 channelType:(unint64_t)a5 error:(id *)a6;
- (BOOL)setPropertyForKey:(id)a3 value:(id)a4 error:(id *)a5;
- (BOOL)updateMDMConfigurationForChannel:(unint64_t)a3 createIfNeeded:(BOOL)a4 error:(id *)a5 updateBlock:(id)a6;
- (MDMConfigurationBase)init;
- (NSData)lastPushTokenHash;
- (NSDate)pushMagicMismatchDateMarker;
- (NSDictionary)details;
- (id)_mdmFilePathForChannelType:(unint64_t)a3;
- (id)_mdmPropertiesFilePathForChannelType:(unint64_t)a3;
- (id)_memberQueueReadPropertiesForChannelType:(unint64_t)a3 createIfMissingFile:(BOOL)a4 error:(id *)a5;
- (id)getPropertyForKey:(id)a3 channelType:(unint64_t)a4 error:(id *)a5;
- (id)getPropertyForKey:(id)a3 error:(id *)a4;
- (id)retrieveMDMDictionaryWithError:(id *)a3;
- (void)memberQueueForgetCurrentConfiguration;
- (void)refreshDetailsFromDisk;
@end

@implementation MDMConfigurationBase

+ (id)sharedConfigurationForChannel:(unint64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v5 = &off_278856928;
  }

  else
  {
    v5 = off_2788568D8;
  }

  a1 = [(__objc2_class *)*v5 sharedConfiguration];
LABEL_6:

  return a1;
}

- (MDMConfigurationBase)init
{
  v11.receiver = self;
  v11.super_class = MDMConfigurationBase;
  v2 = [(MDMConfigurationBase *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = MEMORY[0x277CCACA8];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v4 stringWithFormat:@"%@ member queue", v6];

    v8 = dispatch_queue_create([v7 UTF8String], v3);
    memberQueue = v2->_memberQueue;
    v2->_memberQueue = v8;
  }

  return v2;
}

- (void)refreshDetailsFromDisk
{
  v3 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22E997000, v3, OS_LOG_TYPE_DEFAULT, "Refreshing MDM details.", buf, 2u);
  }

  *buf = 0;
  v7 = buf;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  v4 = [(MDMConfigurationBase *)self memberQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__MDMConfigurationBase_refreshDetailsFromDisk__block_invoke;
  v5[3] = &unk_278856E48;
  v5[4] = self;
  v5[5] = buf;
  dispatch_async(v4, v5);

  _Block_object_dispose(buf, 8);
}

void __46__MDMConfigurationBase_refreshDetailsFromDisk__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 40) + 8);
  obj = *(v2 + 40);
  [v1 memberQueueReadConfigurationOutError:&obj];
  objc_storeStrong((v2 + 40), obj);
}

- (BOOL)memberQueueReadConfigurationOutError:(id *)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_DEBUG, "MDMConfigurationBase: memberQueueReadConfigurationOutError:", buf, 2u);
  }

  [(MDMConfigurationBase *)self memberQueueForgetCurrentConfiguration];
  v39 = 0;
  v6 = [(MDMConfigurationBase *)self retrieveMDMDictionaryWithError:&v39];
  v7 = v39;
  if (!v7)
  {
    [(MDMConfigurationBase *)self setMemberQueueMDMDictionary:v6];
    v9 = @"LastPushTokenHash";
    v10 = [v6 objectForKey:@"LastPushTokenHash"];
    [(MDMConfigurationBase *)self setMemberQueueLastPushTokenHash:v10];

    v11 = [(MDMConfigurationBase *)self memberQueueLastPushTokenHash];
    if (!v11 || (v12 = v11, [(MDMConfigurationBase *)self memberQueueLastPushTokenHash], v13 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v14 = objc_opt_isKindOfClass(), v13, v12, (v14 & 1) != 0))
    {
      v9 = @"PushMagicMismatchDateMarker";
      v15 = [v6 objectForKey:@"PushMagicMismatchDateMarker"];
      [(MDMConfigurationBase *)self setMemberQueuePushMagicMismatchDateMarker:v15];

      v8 = [(MDMConfigurationBase *)self memberQueuePushMagicMismatchDateMarker];
      if (!v8)
      {
LABEL_10:
        v18 = 1;
        goto LABEL_13;
      }

      v16 = [(MDMConfigurationBase *)self memberQueuePushMagicMismatchDateMarker];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v8 = 0;
        goto LABEL_10;
      }
    }

    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277D03480];
    v38 = v9;
    v21 = DMCErrorArray();
    v8 = [v19 DMCErrorWithDomain:v20 code:12011 descriptionArray:v21 errorType:{*MEMORY[0x277D032F8], v38, 0}];

    goto LABEL_12;
  }

  v8 = v7;
LABEL_12:
  v18 = 0;
LABEL_13:
  v22 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_22E997000, v22, OS_LOG_TYPE_DEBUG, "MDMConfigurationBase: memberQueueReadConfigurationOutError: doneblock", buf, 2u);
  }

  v23 = *(DMCLogObjects() + 8);
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v24)
    {
      *buf = 0;
      _os_log_impl(&dword_22E997000, v23, OS_LOG_TYPE_DEFAULT, "MDMConfigurationBase: memberQueueReadConfigurationOutError: Valid MDM installation found.", buf, 2u);
    }

    goto LABEL_37;
  }

  if (v24)
  {
    *buf = 0;
    _os_log_impl(&dword_22E997000, v23, OS_LOG_TYPE_DEFAULT, "MDMConfigurationBase: memberQueueReadConfigurationOutError: doneblock: Configuration not valid!", buf, 2u);
  }

  if (v8)
  {
    [(MDMConfigurationBase *)self memberQueueForgetCurrentConfiguration];
    v25 = *MEMORY[0x277D03480];
  }

  else
  {
    v26 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277D03480];
    v27 = DMCErrorArray();
    v28 = DMCLocalizedString();
    v29 = DMCUSEnglishString();
    v8 = [v26 DMCErrorWithDomain:v25 code:12011 descriptionArray:v27 suggestion:v28 USEnglishSuggestion:v29 underlyingError:0 errorType:*MEMORY[0x277D032F8]];

    [(MDMConfigurationBase *)self memberQueueForgetCurrentConfiguration];
    if (!v8)
    {
      v33 = 1;
      goto LABEL_31;
    }
  }

  v30 = [v8 domain];
  if ([v30 isEqualToString:v25])
  {
    v31 = [v8 code];

    if (v31 == 12079)
    {
      v32 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22E997000, v32, OS_LOG_TYPE_DEFAULT, "MDMConfigurationBase: memberQueueReadConfigurationOutError: No MDM installation found!", buf, 2u);
      }

      if (a3)
      {
        v8 = v8;
        goto LABEL_35;
      }

      goto LABEL_37;
    }
  }

  else
  {
  }

  v33 = 0;
LABEL_31:
  v34 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v41 = v8;
    _os_log_impl(&dword_22E997000, v34, OS_LOG_TYPE_ERROR, "MDMConfigurationBase: memberQueueReadConfigurationOutError: Invalid MDM installation found. Error: %{public}@", buf, 0xCu);
  }

  if (a3)
  {
    v8 = v8;
    if (v33)
    {
LABEL_36:

      goto LABEL_37;
    }

LABEL_35:
    v35 = v8;
    *a3 = v8;
    goto LABEL_36;
  }

LABEL_37:

  v36 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)memberQueueForgetCurrentConfiguration
{
  v3 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_22E997000, v3, OS_LOG_TYPE_DEBUG, "MDMConfigurationBase: Forgetting Current Configuration!", v4, 2u);
  }

  [(MDMConfigurationBase *)self setMemberQueueMDMDictionary:0];
  [(MDMConfigurationBase *)self setMemberQueueLastPushTokenHash:0];
  [(MDMConfigurationBase *)self setMemberQueuePushMagicMismatchDateMarker:0];
}

- (BOOL)removeMDMConfigurationWithError:(id *)a3
{
  v5 = [(MDMConfigurationBase *)self channelType];

  return [(MDMConfigurationBase *)self removeMDMConfigurationForChannel:v5 error:a3];
}

- (BOOL)updateMDMConfigurationForChannel:(unint64_t)a3 createIfNeeded:(BOOL)a4 error:(id *)a5 updateBlock:(id)a6
{
  v10 = a6;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  v11 = [(MDMConfigurationBase *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__MDMConfigurationBase_updateMDMConfigurationForChannel_createIfNeeded_error_updateBlock___block_invoke;
  block[3] = &unk_278856FA8;
  v18 = &v21;
  v19 = a3;
  v20 = a4;
  block[4] = self;
  v12 = v10;
  v17 = v12;
  dispatch_async_and_wait(v11, block);

  [(MDMConfigurationBase *)self refreshDetailsFromDisk];
  if (a5)
  {
    v13 = v22[5];
    if (v13)
    {
      *a5 = v13;
    }
  }

  v14 = v22[5] == 0;

  _Block_object_dispose(&v21, 8);
  return v14;
}

void __90__MDMConfigurationBase_updateMDMConfigurationForChannel_createIfNeeded_error_updateBlock___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _mdmFilePathForChannelType:*(a1 + 56)];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  if (([v3 fileExistsAtPath:v2] & 1) == 0)
  {
    if (*(a1 + 64))
    {
      v4 = [v2 stringByDeletingLastPathComponent];
      v9 = [MEMORY[0x277CCAA00] defaultManager];
      v10 = [v9 fileExistsAtPath:v4];

      if ((v10 & 1) != 0 || ([MEMORY[0x277CCAA00] defaultManager], v11 = objc_claimAutoreleasedReturnValue(), v12 = *(*(a1 + 48) + 8), v30 = *(v12 + 40), objc_msgSend(v11, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v4, 0, 0, &v30), objc_storeStrong((v12 + 40), v30), v11, !*(*(*(a1 + 48) + 8) + 40)))
      {
        v6 = objc_opt_new();
        goto LABEL_15;
      }

      v13 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138543362;
        v32 = v14;
        _os_log_impl(&dword_22E997000, v13, OS_LOG_TYPE_ERROR, "Failed to create MDM directory: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277D03480];
      v17 = DMCErrorArray();
      v18 = [v15 DMCErrorWithDomain:v16 code:12134 descriptionArray:v17 errorType:{*MEMORY[0x277D032F8], 0}];
      v19 = *(*(a1 + 48) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;
    }

    v6 = 0;
    goto LABEL_21;
  }

  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v2];
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [MEMORY[0x277CCAC58] DMCSafePropertyListWithData:v4 options:2 format:0 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138543362;
      v32 = v8;
      _os_log_impl(&dword_22E997000, v7, OS_LOG_TYPE_ERROR, "Failed to read MDM.plist with error: %{public}@", buf, 0xCu);
    }

    goto LABEL_21;
  }

LABEL_15:

  (*(*(a1 + 40) + 16))();
  if ([v6 DMCWriteToBinaryFile:v2])
  {
    if (!*(a1 + 56))
    {
      MDMSendMDMFileChangedNotification();
    }
  }

  else
  {
    v21 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v32 = v2;
      _os_log_impl(&dword_22E997000, v21, OS_LOG_TYPE_ERROR, "Failed to save MDM.plist to filePath: %{public}@", buf, 0xCu);
    }

    v22 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277D03480];
    v24 = DMCErrorArray();
    v25 = [v22 DMCErrorWithDomain:v23 code:12135 descriptionArray:v24 errorType:{*MEMORY[0x277D032F8], 0}];
    v26 = *(*(a1 + 48) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;
  }

LABEL_21:

  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)removeMDMConfigurationForChannel:(unint64_t)a3 error:(id *)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  v7 = [(MDMConfigurationBase *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__MDMConfigurationBase_removeMDMConfigurationForChannel_error___block_invoke;
  block[3] = &unk_278856FD0;
  block[5] = &v12;
  block[6] = a3;
  block[4] = self;
  dispatch_async_and_wait(v7, block);

  [(MDMConfigurationBase *)self refreshDetailsFromDisk];
  if (a4)
  {
    v8 = v13[5];
    if (v8)
    {
      *a4 = v8;
    }
  }

  v9 = v13[5] == 0;
  _Block_object_dispose(&v12, 8);

  return v9;
}

void __63__MDMConfigurationBase_removeMDMConfigurationForChannel_error___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _mdmFilePathForChannelType:*(a1 + 48)];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v3 fileExistsAtPath:v2])
  {
    v4 = *(*(a1 + 40) + 8);
    obj = *(v4 + 40);
    [v3 removeItemAtPath:v2 error:&obj];
    objc_storeStrong((v4 + 40), obj);
    if (*(*(*(a1 + 40) + 8) + 40))
    {
      v5 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *(*(*(a1 + 40) + 8) + 40);
        *buf = 138543618;
        v10 = v2;
        v11 = 2114;
        v12 = v6;
        _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Failed to remove MDM.plist at path %{public}@ with error: %{public}@", buf, 0x16u);
      }
    }

    else if (!*(a1 + 48))
    {
      MDMSendMDMFileChangedNotification();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_mdmFilePathForChannelType:(unint64_t)a3
{
  if (a3 == 1)
  {
    self = MDMUserFilePath();
  }

  else if (!a3)
  {
    self = MDMFilePath();
  }

  return self;
}

- (NSDictionary)details
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  v3 = [(MDMConfigurationBase *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__MDMConfigurationBase_details__block_invoke;
  v6[3] = &unk_278856F08;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __31__MDMConfigurationBase_details__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueMDMDictionary];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSData)lastPushTokenHash
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  v3 = [(MDMConfigurationBase *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__MDMConfigurationBase_lastPushTokenHash__block_invoke;
  v6[3] = &unk_278856F08;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __41__MDMConfigurationBase_lastPushTokenHash__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueLastPushTokenHash];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSDate)pushMagicMismatchDateMarker
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  v3 = [(MDMConfigurationBase *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__MDMConfigurationBase_pushMagicMismatchDateMarker__block_invoke;
  v6[3] = &unk_278856F08;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __51__MDMConfigurationBase_pushMagicMismatchDateMarker__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueuePushMagicMismatchDateMarker];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)setPropertyForKey:(id)a3 value:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  LOBYTE(a5) = [(MDMConfigurationBase *)self setPropertyForKey:v9 value:v8 channelType:[(MDMConfigurationBase *)self channelType] error:a5];

  return a5;
}

- (id)getPropertyForKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MDMConfigurationBase *)self getPropertyForKey:v6 channelType:[(MDMConfigurationBase *)self channelType] error:a4];

  return v7;
}

- (BOOL)setPropertyForKey:(id)a3 value:(id)a4 channelType:(unint64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 1;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__3;
  v28 = __Block_byref_object_dispose__3;
  v29 = 0;
  v12 = [(MDMConfigurationBase *)self memberQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __66__MDMConfigurationBase_setPropertyForKey_value_channelType_error___block_invoke;
  v18[3] = &unk_278856FF8;
  v18[4] = self;
  v23 = a5;
  v13 = v11;
  v19 = v13;
  v21 = &v24;
  v14 = v10;
  v20 = v14;
  v22 = &v30;
  dispatch_async_and_wait(v12, v18);

  if (a6)
  {
    v15 = v25[5];
    if (v15)
    {
      *a6 = v15;
    }
  }

  v16 = *(v31 + 24);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v16;
}

void __66__MDMConfigurationBase_setPropertyForKey_value_channelType_error___block_invoke(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = a1[9];
  v3 = a1[4];
  v4 = a1[5] != 0;
  v5 = *(a1[7] + 8);
  obj = *(v5 + 40);
  v6 = [v3 _memberQueueReadPropertiesForChannelType:v2 createIfMissingFile:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (!v6)
  {
    v14 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = a1[6];
      v16 = *(*(a1[7] + 8) + 40);
      *buf = 138543618;
      v24 = v15;
      v25 = 2114;
      v26 = v16;
      v17 = "MDMConfigurationBase: setPropertyForKey: cannot set property for key %{public}@. Error: %{public}@";
      v18 = v14;
      v19 = 22;
LABEL_9:
      _os_log_impl(&dword_22E997000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
    }

LABEL_10:
    *(*(a1[8] + 8) + 24) = 0;
    goto LABEL_11;
  }

  [v6 setObject:a1[5] forKeyedSubscript:a1[6]];
  v7 = a1[4];
  v8 = a1[9];
  v9 = *(a1[7] + 8);
  v21 = *(v9 + 40);
  v10 = [v7 _memberQueueWriteProperties:v6 channelType:v8 error:&v21];
  objc_storeStrong((v9 + 40), v21);
  v11 = *(DMCLogObjects() + 8);
  if ((v10 & 1) == 0)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v17 = "MDMConfigurationBase: setPropertyForKey: failed to write plist";
      v18 = v11;
      v19 = 2;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = a1[5];
    v12 = a1[6];
    *buf = 138543618;
    v24 = v12;
    v25 = 2114;
    v26 = v13;
    _os_log_impl(&dword_22E997000, v11, OS_LOG_TYPE_DEBUG, "MDMConfigurationBase: setPropertyForKey: %{public}@ value: %{public}@", buf, 0x16u);
  }

LABEL_11:

  v20 = *MEMORY[0x277D85DE8];
}

- (id)getPropertyForKey:(id)a3 channelType:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__3;
  v29 = __Block_byref_object_dispose__3;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  v9 = [(MDMConfigurationBase *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__MDMConfigurationBase_getPropertyForKey_channelType_error___block_invoke;
  block[3] = &unk_278857020;
  block[4] = self;
  v16 = &v19;
  v17 = &v25;
  v18 = a4;
  v10 = v8;
  v15 = v10;
  dispatch_async_and_wait(v9, block);

  if (a5)
  {
    v11 = v20[5];
    if (v11)
    {
      *a5 = v11;
    }
  }

  v12 = v26[5];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v12;
}

void __60__MDMConfigurationBase_getPropertyForKey_channelType_error___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEA90];
  v3 = [*(a1 + 32) _mdmPropertiesFilePathForChannelType:*(a1 + 64)];
  v4 = [v2 dataWithContentsOfFile:v3];

  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [MEMORY[0x277CCAC58] DMCSafePropertyListWithData:v4 options:0 format:0 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v6 objectForKeyedSubscript:*(a1 + 40)];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 40);
      v12 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138543618;
      v21 = v11;
      v22 = 2114;
      v23 = v12;
      v13 = "MDMConfigurationBase: getPropertyForKey: %{public}@ value: %{public}@";
      v14 = v10;
      v15 = OS_LOG_TYPE_DEBUG;
      v16 = 22;
LABEL_7:
      _os_log_impl(&dword_22E997000, v14, v15, v13, buf, v16);
    }
  }

  else
  {
    v17 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v13 = "MDMConfigurationBase: getPropertyForKey: cannot get property without plist";
      v14 = v17;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 2;
      goto LABEL_7;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_mdmPropertiesFilePathForChannelType:(unint64_t)a3
{
  if (a3 == 1)
  {
    self = MDMPropertiesUserFilePath();
  }

  else if (!a3)
  {
    self = MDMPropertiesFilePath();
  }

  return self;
}

- (id)_memberQueueReadPropertiesForChannelType:(unint64_t)a3 createIfMissingFile:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v7 = MEMORY[0x277CBEA90];
  v8 = [(MDMConfigurationBase *)self _mdmPropertiesFilePathForChannelType:a3];
  v9 = [v7 dataWithContentsOfFile:v8];

  if (!v9)
  {
    if (v6)
    {
      v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_9;
  }

  v10 = [MEMORY[0x277CCAC58] DMCSafePropertyListWithData:v9 options:2 format:0 error:0];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_9:
      a5 = v10;
      v10 = a5;
      goto LABEL_10;
    }
  }

  if (a5)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D03480];
    v13 = DMCErrorArray();
    *a5 = [v11 DMCErrorWithDomain:v12 code:12113 descriptionArray:v13 errorType:{*MEMORY[0x277D032F8], 0}];

    a5 = 0;
  }

LABEL_10:

  return a5;
}

- (BOOL)_memberQueueWriteProperties:(id)a3 channelType:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(MDMConfigurationBase *)self _mdmPropertiesFilePathForChannelType:a4];
  v10 = [v8 DMCWriteToBinaryFile:v9];

  if (a5 && (v10 & 1) == 0)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D03480];
    v13 = DMCErrorArray();
    *a5 = [v11 DMCErrorWithDomain:v12 code:12114 descriptionArray:v13 errorType:{*MEMORY[0x277D032F8], 0}];
  }

  return v10;
}

- (id)retrieveMDMDictionaryWithError:(id *)a3
{
  v4 = MEMORY[0x277CBEA90];
  v5 = [(MDMConfigurationBase *)self _mdmFilePathForChannelType:[(MDMConfigurationBase *)self channelType]];
  v6 = [v4 dataWithContentsOfFile:v5];

  v7 = [MEMORY[0x277CCAC58] DMCSafePropertyListWithData:v6 options:0 format:0 error:0];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      goto LABEL_10;
    }

    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277D03480];
    v11 = DMCErrorArray();
    v12 = *MEMORY[0x277D032F8];
    v13 = v16;
    v14 = v17;
    v15 = 12011;
  }

  else
  {
    v9 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277D03480];
    v11 = DMCErrorArray();
    v12 = *MEMORY[0x277D032F8];
    v13 = v9;
    v14 = v10;
    v15 = 12079;
  }

  v18 = [v13 DMCErrorWithDomain:v14 code:v15 descriptionArray:v11 errorType:{v12, 0}];

  if (a3 && v18)
  {
    v19 = v18;
    *a3 = v18;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

@end