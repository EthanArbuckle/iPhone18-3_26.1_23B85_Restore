@interface IMDRelayGroupMutationMessage
+ (id)messageFromBlastDoorMessage:(id)message;
+ (id)mutationMessageFromData:(id)data error:(id *)error;
- (id)_initWithBlastDoorMessage:(id)message;
- (id)_initWithType:(unint64_t)type sender:(id)sender service:(id)service groupID:(id)d originalGroupID:(id)iD guid:(id)guid destinationCallerID:(id)callerID fromMe:(BOOL)self0;
- (id)createDictionary;
@end

@implementation IMDRelayGroupMutationMessage

+ (id)messageFromBlastDoorMessage:(id)message
{
  messageCopy = message;
  mutation = [messageCopy mutation];
  type = [mutation type];

  if (type == 1)
  {
    v6 = IMDRelayGroupParticipantsUpdateMessage;
    goto LABEL_5;
  }

  if (!type)
  {
    v6 = IMDRelayGroupDisplayNameMutationMessage;
LABEL_5:
    v7 = [[v6 alloc] _initWithBlastDoorMessage:messageCopy];
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

- (id)_initWithBlastDoorMessage:(id)message
{
  messageCopy = message;
  HIDWORD(v15) = [messageCopy fromMe];
  mutation = [messageCopy mutation];
  type = [mutation type];
  sender = [messageCopy sender];
  service = [messageCopy service];
  groupID = [messageCopy groupID];
  v8 = [groupID id];
  originalGroupID = [messageCopy originalGroupID];
  v10 = [originalGroupID id];
  guid = [messageCopy guid];
  destinationCallerID = [messageCopy destinationCallerID];

  LOBYTE(v15) = BYTE4(v15);
  v13 = [(IMDRelayGroupMutationMessage *)self _initWithType:type sender:sender service:service groupID:v8 originalGroupID:v10 guid:guid destinationCallerID:destinationCallerID fromMe:v15];

  return v13;
}

+ (id)mutationMessageFromData:(id)data error:(id *)error
{
  v5 = [IMBlastdoor sendRelayGroupMutationData:data error:error];
  v6 = [self messageFromBlastDoorMessage:v5];

  return v6;
}

- (id)_initWithType:(unint64_t)type sender:(id)sender service:(id)service groupID:(id)d originalGroupID:(id)iD guid:(id)guid destinationCallerID:(id)callerID fromMe:(BOOL)self0
{
  senderCopy = sender;
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  guidCopy = guid;
  callerIDCopy = callerID;
  v25.receiver = self;
  v25.super_class = IMDRelayGroupMutationMessage;
  v22 = [(IMDRelayGroupMutationMessage *)&v25 init];
  v23 = v22;
  if (v22)
  {
    [(IMDRelayGroupMutationMessage *)v22 setType:type];
    [(IMDRelayGroupMutationMessage *)v23 setSender:senderCopy];
    [(IMDRelayGroupMutationMessage *)v23 setService:serviceCopy];
    [(IMDRelayGroupMutationMessage *)v23 setGroupID:dCopy];
    [(IMDRelayGroupMutationMessage *)v23 setOriginalGroupID:iDCopy];
    [(IMDRelayGroupMutationMessage *)v23 setGuid:guidCopy];
    [(IMDRelayGroupMutationMessage *)v23 setDestinationCallerID:callerIDCopy];
    [(IMDRelayGroupMutationMessage *)v23 setFromMe:me];
  }

  return v23;
}

- (id)createDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[IMDRelayGroupMutationMessage type](self, "type")}];
  [v3 setObject:v4 forKeyedSubscript:@"t"];

  sender = [(IMDRelayGroupMutationMessage *)self sender];

  if (sender)
  {
    sender2 = [(IMDRelayGroupMutationMessage *)self sender];
    [v3 setObject:sender2 forKeyedSubscript:@"s"];
  }

  service = [(IMDRelayGroupMutationMessage *)self service];
  [v3 setObject:service forKeyedSubscript:@"S"];

  groupID = [(IMDRelayGroupMutationMessage *)self groupID];
  [v3 setObject:groupID forKeyedSubscript:@"g"];

  originalGroupID = [(IMDRelayGroupMutationMessage *)self originalGroupID];
  [v3 setObject:originalGroupID forKeyedSubscript:@"o"];

  guid = [(IMDRelayGroupMutationMessage *)self guid];
  uUIDString = [guid UUIDString];
  [v3 setObject:uUIDString forKeyedSubscript:@"G"];

  destinationCallerID = [(IMDRelayGroupMutationMessage *)self destinationCallerID];

  if (destinationCallerID)
  {
    destinationCallerID2 = [(IMDRelayGroupMutationMessage *)self destinationCallerID];
    [v3 setObject:destinationCallerID2 forKeyedSubscript:@"d"];
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