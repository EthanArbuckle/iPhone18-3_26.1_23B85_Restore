@interface IMDRelayGroupMutationMessage
+ (id)messageFromBlastDoorMessage:(id)a3;
+ (id)mutationMessageFromData:(id)a3 error:(id *)a4;
- (id)_initWithBlastDoorMessage:(id)a3;
- (id)_initWithType:(unint64_t)a3 sender:(id)a4 service:(id)a5 groupID:(id)a6 originalGroupID:(id)a7 guid:(id)a8 destinationCallerID:(id)a9 fromMe:(BOOL)a10;
- (id)createDictionary;
@end

@implementation IMDRelayGroupMutationMessage

+ (id)messageFromBlastDoorMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 mutation];
  v5 = [v4 type];

  if (v5 == 1)
  {
    v6 = IMDRelayGroupParticipantsUpdateMessage;
    goto LABEL_5;
  }

  if (!v5)
  {
    v6 = IMDRelayGroupDisplayNameMutationMessage;
LABEL_5:
    v7 = [[v6 alloc] _initWithBlastDoorMessage:v3];
    goto LABEL_11;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Dropping unknown relay group mutation", v10, 2u);
    }
  }

  v7 = 0;
LABEL_11:

  return v7;
}

- (id)_initWithBlastDoorMessage:(id)a3
{
  v3 = a3;
  HIDWORD(v15) = [v3 fromMe];
  v17 = [v3 mutation];
  v4 = [v17 type];
  v5 = [v3 sender];
  v6 = [v3 service];
  v7 = [v3 groupID];
  v8 = [v7 id];
  v9 = [v3 originalGroupID];
  v10 = [v9 id];
  v11 = [v3 guid];
  v12 = [v3 destinationCallerID];

  LOBYTE(v15) = BYTE4(v15);
  v13 = [(IMDRelayGroupMutationMessage *)self _initWithType:v4 sender:v5 service:v6 groupID:v8 originalGroupID:v10 guid:v11 destinationCallerID:v12 fromMe:v15];

  return v13;
}

+ (id)mutationMessageFromData:(id)a3 error:(id *)a4
{
  v5 = [IMBlastdoor sendRelayGroupMutationData:a3 error:a4];
  v6 = [a1 messageFromBlastDoorMessage:v5];

  return v6;
}

- (id)_initWithType:(unint64_t)a3 sender:(id)a4 service:(id)a5 groupID:(id)a6 originalGroupID:(id)a7 guid:(id)a8 destinationCallerID:(id)a9 fromMe:(BOOL)a10
{
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v25.receiver = self;
  v25.super_class = IMDRelayGroupMutationMessage;
  v22 = [(IMDRelayGroupMutationMessage *)&v25 init];
  v23 = v22;
  if (v22)
  {
    [(IMDRelayGroupMutationMessage *)v22 setType:a3];
    [(IMDRelayGroupMutationMessage *)v23 setSender:v16];
    [(IMDRelayGroupMutationMessage *)v23 setService:v17];
    [(IMDRelayGroupMutationMessage *)v23 setGroupID:v18];
    [(IMDRelayGroupMutationMessage *)v23 setOriginalGroupID:v19];
    [(IMDRelayGroupMutationMessage *)v23 setGuid:v20];
    [(IMDRelayGroupMutationMessage *)v23 setDestinationCallerID:v21];
    [(IMDRelayGroupMutationMessage *)v23 setFromMe:a10];
  }

  return v23;
}

- (id)createDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[IMDRelayGroupMutationMessage type](self, "type")}];
  [v3 setObject:v4 forKeyedSubscript:@"t"];

  v5 = [(IMDRelayGroupMutationMessage *)self sender];

  if (v5)
  {
    v6 = [(IMDRelayGroupMutationMessage *)self sender];
    [v3 setObject:v6 forKeyedSubscript:@"s"];
  }

  v7 = [(IMDRelayGroupMutationMessage *)self service];
  [v3 setObject:v7 forKeyedSubscript:@"S"];

  v8 = [(IMDRelayGroupMutationMessage *)self groupID];
  [v3 setObject:v8 forKeyedSubscript:@"g"];

  v9 = [(IMDRelayGroupMutationMessage *)self originalGroupID];
  [v3 setObject:v9 forKeyedSubscript:@"o"];

  v10 = [(IMDRelayGroupMutationMessage *)self guid];
  v11 = [v10 UUIDString];
  [v3 setObject:v11 forKeyedSubscript:@"G"];

  v12 = [(IMDRelayGroupMutationMessage *)self destinationCallerID];

  if (v12)
  {
    v13 = [(IMDRelayGroupMutationMessage *)self destinationCallerID];
    [v3 setObject:v13 forKeyedSubscript:@"d"];
  }

  if ([(IMDRelayGroupMutationMessage *)self fromMe])
  {
    v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMDRelayGroupMutationMessage fromMe](self, "fromMe")}];
    [v3 setObject:v14 forKeyedSubscript:@"m"];
  }

  v15 = [v3 copy];

  return v15;
}

@end