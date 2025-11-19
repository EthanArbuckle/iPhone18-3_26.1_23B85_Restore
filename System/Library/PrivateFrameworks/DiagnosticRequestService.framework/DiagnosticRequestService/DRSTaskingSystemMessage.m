@interface DRSTaskingSystemMessage
+ (BOOL)isJSONDictForClass:(id)a3;
- (BOOL)_isEqualToMessage:(id)a3;
- (BOOL)isEqual:(id)a3;
- (DRSTaskingSystemMessage)initWithVersion:(id)a3 messageUUID:(id)a4 dateBroadcast:(id)a5 dateReceived:(id)a6;
- (NSString)messageType;
- (id)_mutableJSONDictRepresentation;
- (id)debugDescription;
@end

@implementation DRSTaskingSystemMessage

+ (BOOL)isJSONDictForClass:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [a3 objectForKeyedSubscript:@"type"];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [a1 messageType];
    v6 = [v4 isEqualToString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)messageType
{
  v2 = objc_opt_class();

  return [v2 messageType];
}

- (id)_mutableJSONDictRepresentation
{
  v18[5] = *MEMORY[0x277D85DE8];
  v17[0] = @"version";
  v3 = [(DRSTaskingSystemMessage *)self version];
  v18[0] = v3;
  v17[1] = @"type";
  v4 = [objc_opt_class() messageType];
  v18[1] = v4;
  v17[2] = kDRSTaskingSystemMessage_messageUUIDKey;
  v5 = [(DRSTaskingSystemMessage *)self messageUUID];
  v6 = [v5 UUIDString];
  v18[2] = v6;
  v17[3] = kDRSTaskingSystemMessage_DateReceivedKey;
  v7 = MEMORY[0x277CCABB0];
  v8 = [(DRSTaskingSystemMessage *)self dateReceived];
  [v8 timeIntervalSince1970];
  v9 = [v7 numberWithDouble:?];
  v18[3] = v9;
  v17[4] = kDRSTaskingSystemMessage_DateBroadcastKey;
  v10 = MEMORY[0x277CCABB0];
  v11 = [(DRSTaskingSystemMessage *)self dateBroadcast];
  [v11 timeIntervalSince1970];
  v12 = [v10 numberWithDouble:?];
  v18[4] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
  v14 = [v13 mutableCopy];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)debugDescription
{
  v2 = [(DRSTaskingSystemMessage *)self jsonDictRepresentation];
  v3 = [v2 description];

  return v3;
}

- (DRSTaskingSystemMessage)initWithVersion:(id)a3 messageUUID:(id)a4 dateBroadcast:(id)a5 dateReceived:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v12)
  {
    v18 = DPLogHandle_TaskingMessageError();
    if (!os_signpost_enabled(v18))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v19 = "nil UUID";
LABEL_18:
    v20 = v18;
    v21 = 2;
    goto LABEL_19;
  }

  if (!v11)
  {
    v18 = DPLogHandle_TaskingMessageError();
    if (!os_signpost_enabled(v18))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v19 = "nil version";
    goto LABEL_18;
  }

  if (![(DRSTaskingSystemMessage *)self _versionIsSupported:v11])
  {
    v18 = DPLogHandle_TaskingMessageError();
    if (os_signpost_enabled(v18))
    {
      *buf = 138543362;
      v26 = v11;
      v19 = "Unsupported version %{public}@";
      v20 = v18;
      v21 = 12;
LABEL_19:
      _os_signpost_emit_with_name_impl(&dword_232906000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DRSTaskingSystemMessageFailedInit", v19, buf, v21);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  if (!v13)
  {
    v18 = DPLogHandle_TaskingMessageError();
    if (os_signpost_enabled(v18))
    {
      *buf = 0;
      v19 = "nil dateBroadcast";
      goto LABEL_18;
    }

LABEL_20:

    v17 = 0;
    goto LABEL_21;
  }

  if (!v14)
  {
    v14 = [MEMORY[0x277CBEAA8] date];
  }

  v24.receiver = self;
  v24.super_class = DRSTaskingSystemMessage;
  v15 = [(DRSTaskingSystemMessage *)&v24 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_version, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 4, a5);
    objc_storeStrong(p_isa + 3, v14);
  }

  self = p_isa;
  v17 = self;
LABEL_21:

  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)_isEqualToMessage:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (v4 == self)
  {
    v18 = 1;
    goto LABEL_7;
  }

  v6 = [(DRSTaskingSystemMessage *)self dateBroadcast];
  [v6 timeIntervalSince1970];
  v8 = v7;
  v9 = [(DRSTaskingSystemMessage *)v5 dateBroadcast];
  [v9 timeIntervalSince1970];
  v11 = v10;

  if (v8 != v11)
  {
    goto LABEL_5;
  }

  v12 = [(DRSTaskingSystemMessage *)self dateReceived];
  [v12 timeIntervalSince1970];
  v14 = v13;
  v15 = [(DRSTaskingSystemMessage *)v5 dateReceived];
  [v15 timeIntervalSince1970];
  v17 = v16;

  if (v14 == v17)
  {
    v20 = [(DRSTaskingSystemMessage *)self version];
    v21 = [(DRSTaskingSystemMessage *)v5 version];
    if ([v20 isEqualToString:v21])
    {
      v22 = [(DRSTaskingSystemMessage *)self messageUUID];
      v23 = [(DRSTaskingSystemMessage *)v5 messageUUID];
      v18 = [v22 isEqual:v23];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
LABEL_5:
    v18 = 0;
  }

LABEL_7:

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(DRSTaskingSystemMessage *)self _isEqualToMessage:v4];

  return v5;
}

@end