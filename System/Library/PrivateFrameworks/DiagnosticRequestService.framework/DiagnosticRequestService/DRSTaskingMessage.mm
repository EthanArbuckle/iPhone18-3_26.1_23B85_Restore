@interface DRSTaskingMessage
- (BOOL)_isEqualToMessage:(id)message;
- (DRSTaskingMessage)initWithJSONDict:(id)dict;
- (DRSTaskingMessage)initWithVersion:(id)version messageUUID:(id)d dateBroadcast:(id)broadcast dateReceived:(id)received teamTaskings:(id)taskings;
- (id)jsonDictRepresentation;
@end

@implementation DRSTaskingMessage

- (DRSTaskingMessage)initWithVersion:(id)version messageUUID:(id)d dateBroadcast:(id)broadcast dateReceived:(id)received teamTaskings:(id)taskings
{
  versionCopy = version;
  dCopy = d;
  broadcastCopy = broadcast;
  receivedCopy = received;
  taskingsCopy = taskings;
  v17 = taskingsCopy;
  if (!dCopy)
  {
    v19 = DPLogHandle_TaskingMessageError();
    if (!os_signpost_enabled(v19))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v20 = "nil taskingMessageUUID";
LABEL_12:
    _os_signpost_emit_with_name_impl(&dword_232906000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DRSTaskingMessageFailedInit", v20, buf, 2u);
    goto LABEL_13;
  }

  if (!taskingsCopy)
  {
    v19 = DPLogHandle_TaskingMessageError();
    if (!os_signpost_enabled(v19))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v20 = "nil teamTaskings";
    goto LABEL_12;
  }

  if (![taskingsCopy count])
  {
    v19 = DPLogHandle_TaskingMessageError();
    if (os_signpost_enabled(v19))
    {
      *buf = 0;
      v20 = "Empty teamTaskings";
      goto LABEL_12;
    }

LABEL_13:

    selfCopy = 0;
    goto LABEL_18;
  }

  *buf = 0;
  v27 = buf;
  v28 = 0x2020000000;
  v29 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __89__DRSTaskingMessage_initWithVersion_messageUUID_dateBroadcast_dateReceived_teamTaskings___block_invoke;
  v25[3] = &unk_27899FC10;
  v25[4] = buf;
  [v17 enumerateKeysAndObjectsUsingBlock:v25];
  if (v27[24])
  {
    selfCopy = 0;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = DRSTaskingMessage;
    v21 = [(DRSTaskingSystemMessage *)&v24 initWithVersion:versionCopy messageUUID:dCopy dateBroadcast:broadcastCopy dateReceived:receivedCopy];
    v22 = v21;
    if (v21)
    {
      objc_storeStrong(&v21->_teamTaskings, taskings);
    }

    self = v22;
    selfCopy = self;
  }

  _Block_object_dispose(buf, 8);
LABEL_18:

  return selfCopy;
}

void __89__DRSTaskingMessage_initWithVersion_messageUUID_dateBroadcast_dateReceived_teamTaskings___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 teamID];
  v8 = [v5 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    v9 = DPLogHandle_TaskingMessageError();
    if (os_signpost_enabled(v9))
    {
      v10 = [v6 teamID];
      v12 = 138543618;
      v13 = v5;
      v14 = 2114;
      v15 = v10;
      _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DRSTaskingMessageFailedInit", "Malformed team tasking dict (key: %{public}@, value: %{public}@)", &v12, 0x16u);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isEqualToMessage:(id)message
{
  messageCopy = message;
  v22.receiver = self;
  v22.super_class = DRSTaskingMessage;
  if ([(DRSTaskingSystemMessage *)&v22 _isEqualToMessage:messageCopy])
  {
    v5 = messageCopy;
    dateBroadcast = [(DRSTaskingSystemMessage *)self dateBroadcast];
    [dateBroadcast timeIntervalSince1970];
    v8 = v7;
    dateBroadcast2 = [v5 dateBroadcast];
    [dateBroadcast2 timeIntervalSince1970];
    v11 = v10;

    if (v8 != v11)
    {
      goto LABEL_4;
    }

    dateReceived = [(DRSTaskingSystemMessage *)self dateReceived];
    [dateReceived timeIntervalSince1970];
    v14 = v13;
    dateReceived2 = [v5 dateReceived];
    [dateReceived2 timeIntervalSince1970];
    v17 = v16;

    if (v14 == v17)
    {
      teamTaskings = [(DRSTaskingMessage *)self teamTaskings];
      teamTaskings2 = [v5 teamTaskings];
      v18 = [teamTaskings isEqualToDictionary:teamTaskings2];
    }

    else
    {
LABEL_4:
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)jsonDictRepresentation
{
  v22[4] = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  teamTaskings = [(DRSTaskingMessage *)self teamTaskings];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __43__DRSTaskingMessage_jsonDictRepresentation__block_invoke;
  v19[3] = &unk_27899FC38;
  v20 = dictionary;
  v5 = dictionary;
  [teamTaskings enumerateKeysAndObjectsUsingBlock:v19];

  v21[0] = kDRSTaskingSystemMessage_messageUUIDKey;
  messageUUID = [(DRSTaskingSystemMessage *)self messageUUID];
  uUIDString = [messageUUID UUIDString];
  v22[0] = uUIDString;
  v21[1] = kDRSTaskingSystemMessage_DateReceivedKey;
  v8 = MEMORY[0x277CCABB0];
  dateReceived = [(DRSTaskingSystemMessage *)self dateReceived];
  [dateReceived timeIntervalSince1970];
  v10 = [v8 numberWithDouble:?];
  v22[1] = v10;
  v21[2] = kDRSTaskingSystemMessage_DateBroadcastKey;
  v11 = MEMORY[0x277CCABB0];
  dateBroadcast = [(DRSTaskingSystemMessage *)self dateBroadcast];
  [dateBroadcast timeIntervalSince1970];
  v13 = [v11 numberWithDouble:?];
  v21[3] = kDRSTaskingMessage_TeamTaskingsKey;
  v22[2] = v13;
  v22[3] = v5;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];

  v18.receiver = self;
  v18.super_class = DRSTaskingMessage;
  _mutableJSONDictRepresentation = [(DRSTaskingSystemMessage *)&v18 _mutableJSONDictRepresentation];
  [_mutableJSONDictRepresentation addEntriesFromDictionary:v14];

  v16 = *MEMORY[0x277D85DE8];

  return _mutableJSONDictRepresentation;
}

void __43__DRSTaskingMessage_jsonDictRepresentation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 jsonDictRepresentation];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (DRSTaskingMessage)initWithJSONDict:(id)dict
{
  dictCopy = dict;
  if ([objc_opt_class() isJSONDictForClass:dictCopy])
  {
    v5 = [dictCopy objectForKeyedSubscript:kDRSTaskingSystemMessage_messageUUIDKey];
    if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v7 = DPLogHandle_TaskingMessageError();
      if (os_signpost_enabled(v7))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TaskingMessageJSONInitError", "Invalid taskingMessageUUID", buf, 2u);
      }

      selfCopy = 0;
      v6 = v5;
      goto LABEL_21;
    }

    v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];

    v7 = _dateFromJSONDict(dictCopy, kDRSTaskingSystemMessage_DateReceivedKey);
    v8 = _dateFromJSONDict(dictCopy, kDRSTaskingSystemMessage_DateBroadcastKey);
    v9 = [dictCopy objectForKeyedSubscript:kDRSTaskingMessage_TeamTaskingsKey];
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v14 = DPLogHandle_TaskingMessageError();
        if (os_signpost_enabled(v14))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TaskingMessageJSONInitError", "Invalid teamTaskingsDict", buf, 2u);
        }

        v11 = 0;
        goto LABEL_19;
      }

      *buf = 0;
      v21 = buf;
      v22 = 0x2020000000;
      v23 = 0;
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __38__DRSTaskingMessage_initWithJSONDict___block_invoke;
      v16[3] = &unk_27899FC60;
      v19 = buf;
      v17 = v7;
      v11 = dictionary;
      v18 = v11;
      [v9 enumerateKeysAndObjectsUsingBlock:v16];
      v12 = v21[24];

      _Block_object_dispose(buf, 8);
      if (v12)
      {
LABEL_19:
        selfCopy = 0;
        goto LABEL_20;
      }
    }

    else
    {
      v11 = 0;
    }

    v9 = [(DRSTaskingSystemMessage *)self _versionFromJSONDict:dictCopy];
    self = [(DRSTaskingMessage *)self initWithVersion:v9 messageUUID:v6 dateBroadcast:v8 dateReceived:v7 teamTaskings:v11];
    selfCopy = self;
LABEL_20:

LABEL_21:
    goto LABEL_22;
  }

  v6 = DPLogHandle_TaskingMessageError();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TaskingMessageJSONInitError", "JSON dictionary of wrong type", buf, 2u);
  }

  selfCopy = 0;
LABEL_22:

  return selfCopy;
}

void __38__DRSTaskingMessage_initWithJSONDict___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [[DRSTeamTasking alloc] initWithJSONDict:v8 receivedDate:*(a1 + 32)];
    if (v9)
    {
      [*(a1 + 40) setObject:v9 forKeyedSubscript:v7];
    }

    else
    {
      v11 = DPLogHandle_TaskingMessageError();
      if (os_signpost_enabled(v11))
      {
        *v12 = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TaskingMessageJSONInitError", "Invalid teamTasking value", v12, 2u);
      }

      *(*(*(a1 + 48) + 8) + 24) = 1;
      *a4 = 1;
    }
  }

  else
  {
    v10 = DPLogHandle_TaskingMessageError();
    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TaskingMessageJSONInitError", "Invalid teamTaskingsDict class", buf, 2u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }
}

@end