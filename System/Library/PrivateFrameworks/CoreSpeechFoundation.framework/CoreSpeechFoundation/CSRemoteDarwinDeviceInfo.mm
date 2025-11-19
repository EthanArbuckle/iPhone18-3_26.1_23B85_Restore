@interface CSRemoteDarwinDeviceInfo
+ (id)sharedInstance;
- (BOOL)_isRemoteDarwinConnectedWithUUID:(id)a3;
- (BOOL)hasDarwinDeviceConnected;
- (BOOL)hasDarwinDeviceHandleVoiceTrigger;
- (BOOL)isPrimaryVoiceTriggerDeviceWithUUID:(id)a3;
- (BOOL)isRemoteDarwinConnectedWithUUID:(id)a3;
- (CSRemoteDarwinDeviceInfo)init;
- (id)fetchDeviceUUIDStringFromUID:(id)a3;
- (id)fetchRichDeviceUIDStringFromUUID:(id)a3;
- (void)addDeviceIDPairToMapTable:(id)a3 withDeviceUID:(id)a4;
- (void)allDeviceDisconnected;
- (void)deviceConnectedWithUUID:(id)a3;
- (void)deviceDisconnectedWithUUID:(id)a3;
- (void)notifyVoiceTriggerDisabledWithDeviceUUID:(id)a3;
- (void)notifyVoiceTriggerEnabledWithDeviceUUID:(id)a3;
@end

@implementation CSRemoteDarwinDeviceInfo

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_4758 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_4758, &__block_literal_global_4759);
  }

  v3 = sharedInstance_sharedInfo;

  return v3;
}

- (BOOL)hasDarwinDeviceConnected
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__CSRemoteDarwinDeviceInfo_hasDarwinDeviceConnected__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __52__CSRemoteDarwinDeviceInfo_hasDarwinDeviceConnected__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) count];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

- (void)addDeviceIDPairToMapTable:(id)a3 withDeviceUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__CSRemoteDarwinDeviceInfo_addDeviceIDPairToMapTable_withDeviceUID___block_invoke;
  block[3] = &unk_1E865C778;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

uint64_t __68__CSRemoteDarwinDeviceInfo_addDeviceIDPairToMapTable_withDeviceUID___block_invoke(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v7 = 136315650;
    v8 = "[CSRemoteDarwinDeviceInfo addDeviceIDPairToMapTable:withDeviceUID:]_block_invoke";
    v9 = 2114;
    v10 = v3;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Testing: Add (%{public}@, %{public}@) pair into mapping table", &v7, 0x20u);
  }

  result = [*(a1[6] + 8) setObject:a1[5] forKeyedSubscript:a1[4]];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_isRemoteDarwinConnectedWithUUID:(id)a3
{
  deviceUIDMapTable = self->_deviceUIDMapTable;
  if (!deviceUIDMapTable)
  {
    return 0;
  }

  v4 = [(NSMutableDictionary *)deviceUIDMapTable objectForKeyedSubscript:a3];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)isRemoteDarwinConnectedWithUUID:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__CSRemoteDarwinDeviceInfo_isRemoteDarwinConnectedWithUUID___block_invoke;
  block[3] = &unk_1E865CC08;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_async_and_wait(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

uint64_t __60__CSRemoteDarwinDeviceInfo_isRemoteDarwinConnectedWithUUID___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isRemoteDarwinConnectedWithUUID:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (id)fetchRichDeviceUIDStringFromUUID:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    *&v21 = 0;
    *(&v21 + 1) = &v21;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__4731;
    v24 = __Block_byref_object_dispose__4732;
    v25 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__CSRemoteDarwinDeviceInfo_fetchRichDeviceUIDStringFromUUID___block_invoke;
    block[3] = &unk_1E865CC08;
    v16 = &v21;
    block[4] = self;
    v7 = v4;
    v15 = v7;
    dispatch_async_and_wait(queue, block);
    v8 = *(*(&v21 + 1) + 40);
    v9 = CSLogContextFacilityCoreSpeech;
    if (v8)
    {
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v18 = "[CSRemoteDarwinDeviceInfo fetchRichDeviceUIDStringFromUUID:]";
        v19 = 2114;
        v20 = v8;
        _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s Return existing simple UID(%{public}@)", buf, 0x16u);
        v7 = *(*(&v21 + 1) + 40);
      }

      else
      {
        v7 = v8;
      }
    }

    else if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v18 = "[CSRemoteDarwinDeviceInfo fetchRichDeviceUIDStringFromUUID:]";
      _os_log_error_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_ERROR, "%s Can't find corresponding deviceUID from UUID, return existing UUID instead", buf, 0xCu);
    }

    v11 = v7;

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v21) = 136315138;
      *(&v21 + 4) = "[CSRemoteDarwinDeviceInfo fetchRichDeviceUIDStringFromUUID:]";
      _os_log_error_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_ERROR, "%s Invalid deviceUUID", &v21, 0xCu);
    }

    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

uint64_t __61__CSRemoteDarwinDeviceInfo_fetchRichDeviceUIDStringFromUUID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)isPrimaryVoiceTriggerDeviceWithUUID:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__CSRemoteDarwinDeviceInfo_isPrimaryVoiceTriggerDeviceWithUUID___block_invoke;
  block[3] = &unk_1E865CC08;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_async_and_wait(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

void __64__CSRemoteDarwinDeviceInfo_isPrimaryVoiceTriggerDeviceWithUUID___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) voiceTriggerEnabledDevices];
  v3 = [v2 firstObject];

  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v7 = 136315650;
    v8 = "[CSRemoteDarwinDeviceInfo isPrimaryVoiceTriggerDeviceWithUUID:]_block_invoke";
    v9 = 2114;
    v10 = v3;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Primary device UUID : %{public}@, input device UUID : %{public}@", &v7, 0x20u);
  }

  if ([v3 isEqualToString:*(a1 + 40)])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  if (!v3 && [*(a1 + 32) _isRemoteDarwinConnectedWithUUID:*(a1 + 40)])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)fetchDeviceUUIDStringFromUID:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    *&v21 = 0;
    *(&v21 + 1) = &v21;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__4731;
    v24 = __Block_byref_object_dispose__4732;
    v25 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__CSRemoteDarwinDeviceInfo_fetchDeviceUUIDStringFromUID___block_invoke;
    block[3] = &unk_1E865CC08;
    block[4] = self;
    v7 = v4;
    v15 = v7;
    v16 = &v21;
    dispatch_async_and_wait(queue, block);
    v8 = *(*(&v21 + 1) + 40);
    if (!v8)
    {
      v9 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v18 = "[CSRemoteDarwinDeviceInfo fetchDeviceUUIDStringFromUID:]";
        v19 = 2114;
        v20 = v7;
        _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s Did not find deviceUID(%{public}@) in mapping table", buf, 0x16u);
        v8 = *(*(&v21 + 1) + 40);
      }

      else
      {
        v8 = 0;
      }
    }

    v11 = v8;

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v21) = 136315138;
      *(&v21 + 4) = "[CSRemoteDarwinDeviceInfo fetchDeviceUUIDStringFromUID:]";
      _os_log_error_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_ERROR, "%s Invalid deviceUID", &v21, 0xCu);
    }

    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

void __57__CSRemoteDarwinDeviceInfo_fetchDeviceUUIDStringFromUID___block_invoke(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1[4] + 8);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = a1[5];
        v9 = [*(a1[4] + 8) objectForKeyedSubscript:{v7, v13}];
        LODWORD(v8) = [v8 containsString:v9];

        if (v8)
        {
          v10 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
          {
            v11 = a1[5];
            *buf = 136315650;
            v18 = "[CSRemoteDarwinDeviceInfo fetchDeviceUUIDStringFromUID:]_block_invoke";
            v19 = 2114;
            v20 = v7;
            v21 = 2114;
            v22 = v11;
            _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s Found (%{public}@, %{public}@) pair in mapping table", buf, 0x20u);
          }

          objc_storeStrong((*(a1[6] + 8) + 40), v7);
          goto LABEL_13;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v23 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasDarwinDeviceHandleVoiceTrigger
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__CSRemoteDarwinDeviceInfo_hasDarwinDeviceHandleVoiceTrigger__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __61__CSRemoteDarwinDeviceInfo_hasDarwinDeviceHandleVoiceTrigger__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) count];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

- (void)allDeviceDisconnected
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CSRemoteDarwinDeviceInfo_allDeviceDisconnected__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
}

void __49__CSRemoteDarwinDeviceInfo_allDeviceDisconnected__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSRemoteDarwinDeviceInfo allDeviceDisconnected]_block_invoke";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v6, 0xCu);
  }

  v3 = [*(a1 + 32) deviceUIDMapTable];
  [v3 removeAllObjects];

  v4 = [*(a1 + 32) voiceTriggerEnabledDevices];
  [v4 removeAllObjects];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)deviceDisconnectedWithUUID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__CSRemoteDarwinDeviceInfo_deviceDisconnectedWithUUID___block_invoke;
    v7[3] = &unk_1E865C970;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

void __55__CSRemoteDarwinDeviceInfo_deviceDisconnectedWithUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceUIDMapTable];
  [v2 removeObjectForKey:*(a1 + 40)];

  v3 = [*(a1 + 32) voiceTriggerEnabledDevices];
  [v3 removeObject:*(a1 + 40)];
}

- (void)notifyVoiceTriggerDisabledWithDeviceUUID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __69__CSRemoteDarwinDeviceInfo_notifyVoiceTriggerDisabledWithDeviceUUID___block_invoke;
    v7[3] = &unk_1E865C970;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

void __69__CSRemoteDarwinDeviceInfo_notifyVoiceTriggerDisabledWithDeviceUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) voiceTriggerEnabledDevices];
  [v2 removeObject:*(a1 + 40)];
}

- (void)notifyVoiceTriggerEnabledWithDeviceUUID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __68__CSRemoteDarwinDeviceInfo_notifyVoiceTriggerEnabledWithDeviceUUID___block_invoke;
    v7[3] = &unk_1E865C970;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

void __68__CSRemoteDarwinDeviceInfo_notifyVoiceTriggerEnabledWithDeviceUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) voiceTriggerEnabledDevices];
  [v2 addObject:*(a1 + 40)];
}

- (void)deviceConnectedWithUUID:(id)a3
{
  v25[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v25[0] = 0;
    v25[1] = 0;
    v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v4];
    [v5 getUUIDBytes:v25];
    v6 = remote_device_copy_device_with_uuid();
    if (v6)
    {
      [@"UniqueDeviceID" UTF8String];
      v7 = remote_device_copy_property();
      if (v7)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:xpc_copy_clean_description()];
        if (v8)
        {
          queue = self->_queue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __52__CSRemoteDarwinDeviceInfo_deviceConnectedWithUUID___block_invoke;
          block[3] = &unk_1E865C778;
          v16 = v4;
          v17 = v8;
          v18 = self;
          dispatch_async(queue, block);
        }

        else
        {
          v13 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v20 = "[CSRemoteDarwinDeviceInfo deviceConnectedWithUUID:]";
            _os_log_error_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_ERROR, "%s Failed to fetch deviceUID", buf, 0xCu);
          }
        }
      }

      else
      {
        v12 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v20 = "[CSRemoteDarwinDeviceInfo deviceConnectedWithUUID:]";
          v21 = 2114;
          v22 = @"UniqueDeviceID";
          v23 = 2114;
          v24 = v4;
          _os_log_error_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_ERROR, "%s Failed to fetch property of %{public}@ from deviceUUID %{public}@", buf, 0x20u);
        }
      }
    }

    else
    {
      v11 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v20 = "[CSRemoteDarwinDeviceInfo deviceConnectedWithUUID:]";
        v21 = 2114;
        v22 = v4;
        _os_log_error_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_ERROR, "%s Remote device not found with UUID %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v20 = "[CSRemoteDarwinDeviceInfo deviceConnectedWithUUID:]";
      _os_log_error_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_ERROR, "%s Invalid deviceUUIDString", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __52__CSRemoteDarwinDeviceInfo_deviceConnectedWithUUID___block_invoke(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v7 = 136315650;
    v8 = "[CSRemoteDarwinDeviceInfo deviceConnectedWithUUID:]_block_invoke";
    v9 = 2114;
    v10 = v3;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Add (%{public}@, %{public}@) pair into mapping table", &v7, 0x20u);
  }

  result = [*(a1[6] + 8) setObject:a1[5] forKeyedSubscript:a1[4]];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (CSRemoteDarwinDeviceInfo)init
{
  v10.receiver = self;
  v10.super_class = CSRemoteDarwinDeviceInfo;
  v2 = [(CSRemoteDarwinDeviceInfo *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    deviceUIDMapTable = v2->_deviceUIDMapTable;
    v2->_deviceUIDMapTable = v3;

    v5 = [MEMORY[0x1E695DFA0] orderedSet];
    voiceTriggerEnabledDevices = v2->_voiceTriggerEnabledDevices;
    v2->_voiceTriggerEnabledDevices = v5;

    v7 = dispatch_queue_create("CSRemoteDarwinDeviceInfo Queue", 0);
    queue = v2->_queue;
    v2->_queue = v7;
  }

  return v2;
}

uint64_t __42__CSRemoteDarwinDeviceInfo_sharedInstance__block_invoke()
{
  sharedInstance_sharedInfo = objc_alloc_init(CSRemoteDarwinDeviceInfo);

  return MEMORY[0x1EEE66BB8]();
}

@end