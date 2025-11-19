@interface DRSCancelTaskingMessage
- (BOOL)_isEqualToMessage:(id)a3;
- (DRSCancelTaskingMessage)initWithJSONDict:(id)a3;
- (DRSCancelTaskingMessage)initWithVersion:(id)a3 messageUUID:(id)a4 dateBroadcast:(id)a5 dateReceived:(id)a6 perTeamCancelledConfigUUIDs:(id)a7;
- (id)jsonDictRepresentation;
@end

@implementation DRSCancelTaskingMessage

- (DRSCancelTaskingMessage)initWithVersion:(id)a3 messageUUID:(id)a4 dateBroadcast:(id)a5 dateReceived:(id)a6 perTeamCancelledConfigUUIDs:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (_checkCancelNonNil(v12, "version") && _checkCancelNonNil(v13, "cancelTaskingUUID") && _checkCancelNonNil(v16, "perTeamCancelledConfigUUIDs"))
  {
    v21.receiver = self;
    v21.super_class = DRSCancelTaskingMessage;
    v17 = [(DRSTaskingSystemMessage *)&v21 initWithVersion:v12 messageUUID:v13 dateBroadcast:v14 dateReceived:v15];
    v18 = v17;
    if (v17)
    {
      objc_storeStrong(&v17->_perTeamCancelledConfigUUIDs, a7);
    }

    self = v18;
    v19 = self;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)_isEqualToMessage:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = DRSCancelTaskingMessage;
  if ([(DRSTaskingSystemMessage *)&v10 _isEqualToMessage:v4])
  {
    v5 = v4;
    v6 = [(DRSCancelTaskingMessage *)self perTeamCancelledConfigUUIDs];
    v7 = [v5 perTeamCancelledConfigUUIDs];

    v8 = [v6 isEqualToDictionary:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)jsonDictRepresentation
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(DRSCancelTaskingMessage *)self perTeamCancelledConfigUUIDs];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__DRSCancelTaskingMessage_jsonDictRepresentation__block_invoke;
  v11[3] = &unk_27899FC88;
  v12 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v11];

  v13 = kDRSCancelTaskingMessage_perTeamCancelledConfigUUIDsKey;
  v14[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10.receiver = self;
  v10.super_class = DRSCancelTaskingMessage;
  v7 = [(DRSTaskingSystemMessage *)&v10 _mutableJSONDictRepresentation];
  [v7 addEntriesFromDictionary:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

void __49__DRSCancelTaskingMessage_jsonDictRepresentation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * v12) UUIDString];
        [v7 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  [*(a1 + 32) setObject:v7 forKeyedSubscript:v5];
  v14 = *MEMORY[0x277D85DE8];
}

- (DRSCancelTaskingMessage)initWithJSONDict:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() isJSONDictForClass:v4])
  {
    v5 = [v4 objectForKeyedSubscript:kDRSTaskingSystemMessage_messageUUIDKey];
    if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v7 = DPLogHandle_TaskingMessageError();
      if (os_signpost_enabled(v7))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CancelTaskingMessageJSONInitError", "Invalid cancelTaskingUUID", buf, 2u);
      }

      v13 = 0;
      v6 = v5;
      goto LABEL_21;
    }

    v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];

    v7 = _dateFromJSONDict(v4, kDRSTaskingSystemMessage_DateReceivedKey);
    v8 = _dateFromJSONDict(v4, kDRSTaskingSystemMessage_DateBroadcastKey);
    v9 = [v4 objectForKeyedSubscript:kDRSCancelTaskingMessage_perTeamCancelledConfigUUIDsKey];
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v14 = DPLogHandle_TaskingMessageError();
        if (os_signpost_enabled(v14))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CancelTaskingMessageJSONInitError", "Invalid perTeamCancelledUUIDStringsDict", buf, 2u);
        }

        v11 = 0;
        goto LABEL_19;
      }

      *buf = 0;
      v20 = buf;
      v21 = 0x2020000000;
      v22 = 0;
      v10 = [MEMORY[0x277CBEB38] dictionary];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __44__DRSCancelTaskingMessage_initWithJSONDict___block_invoke;
      v16[3] = &unk_27899FCB0;
      v18 = buf;
      v11 = v10;
      v17 = v11;
      [v9 enumerateKeysAndObjectsUsingBlock:v16];
      v12 = v20[24];

      _Block_object_dispose(buf, 8);
      if (v12)
      {
LABEL_19:
        v13 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      v11 = 0;
    }

    v9 = [(DRSTaskingSystemMessage *)self _versionFromJSONDict:v4];
    self = [(DRSCancelTaskingMessage *)self initWithVersion:v9 messageUUID:v6 dateBroadcast:v8 dateReceived:v7 perTeamCancelledConfigUUIDs:v11];
    v13 = self;
LABEL_20:

LABEL_21:
    goto LABEL_22;
  }

  v6 = DPLogHandle_TaskingMessageError();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CancelTaskingMessageJSONInitError", "JSON dictionary of wrong type", buf, 2u);
  }

  v13 = 0;
LABEL_22:

  return v13;
}

void __44__DRSCancelTaskingMessage_initWithJSONDict___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [MEMORY[0x277CBEB18] array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
      v24 = a1;
      v25 = v7;
LABEL_4:
      v14 = 0;
      while (1)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v26 + 1) + 8 * v14);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        v16 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v15];
        if (!v16)
        {
          v19 = DPLogHandle_TaskingMessageError();
          if (os_signpost_enabled(v19))
          {
            *buf = 138543362;
            v31 = v15;
            v20 = "Invalid UUID string (%{public}@)";
            v21 = v19;
            v22 = 12;
LABEL_19:
            _os_signpost_emit_with_name_impl(&dword_232906000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CancelTaskingMessageJSONInitError", v20, buf, v22);
          }

          goto LABEL_20;
        }

        v17 = v16;
        [v9 addObject:v16];

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v26 objects:v32 count:16];
          a1 = v24;
          v7 = v25;
          if (v12)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }
      }

      v19 = DPLogHandle_TaskingMessageError();
      if (os_signpost_enabled(v19))
      {
        *buf = 0;
        v20 = "Invalid UUID string class";
        v21 = v19;
        v22 = 2;
        goto LABEL_19;
      }

LABEL_20:
      v7 = v25;

      *(*(*(v24 + 40) + 8) + 24) = 1;
      *a4 = 1;

      goto LABEL_21;
    }

LABEL_11:

    [*(a1 + 32) setObject:v9 forKeyedSubscript:v7];
LABEL_21:
  }

  else
  {
    v18 = DPLogHandle_TaskingMessageError();
    if (os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CancelTaskingMessageJSONInitError", "Invalid perTeamCancelledUUIDStringsDict class", buf, 2u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  v23 = *MEMORY[0x277D85DE8];
}

@end