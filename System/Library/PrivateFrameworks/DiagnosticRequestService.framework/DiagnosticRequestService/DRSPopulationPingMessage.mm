@interface DRSPopulationPingMessage
- (DRSPopulationPingMessage)init;
- (DRSPopulationPingMessage)initWithJSONDict:(id)a3;
@end

@implementation DRSPopulationPingMessage

- (DRSPopulationPingMessage)initWithJSONDict:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() isJSONDictForClass:v4])
  {
    v5 = [v4 objectForKeyedSubscript:kDRSTaskingSystemMessage_messageUUIDKey];
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];

      v7 = _dateFromJSONDict(v4, kDRSTaskingSystemMessage_DateReceivedKey);
      v8 = _dateFromJSONDict(v4, kDRSTaskingSystemMessage_DateBroadcastKey);
      v9 = [(DRSTaskingSystemMessage *)self _versionFromJSONDict:v4];
      v12.receiver = self;
      v12.super_class = DRSPopulationPingMessage;
      self = [(DRSTaskingSystemMessage *)&v12 initWithVersion:v9 messageUUID:v6 dateBroadcast:v8 dateReceived:v7];

      v5 = v6;
      v10 = self;
    }

    else
    {
      v7 = DPLogHandle_TaskingMessageError();
      if (os_signpost_enabled(v7))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TaskingMessageJSONInitError", "Invalid pingUUID", buf, 2u);
      }

      v10 = 0;
    }
  }

  else
  {
    v5 = DPLogHandle_TaskingMessageError();
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PopulationPingJSONInitError", "JSON dictionary of wrong type", buf, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (DRSPopulationPingMessage)init
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = kDRSPopulationPingMessageCurrentVersion;
  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = [(DRSTaskingSystemMessage *)self initWithVersion:v4 messageUUID:v5 dateBroadcast:v3 dateReceived:v3];

  return v6;
}

@end