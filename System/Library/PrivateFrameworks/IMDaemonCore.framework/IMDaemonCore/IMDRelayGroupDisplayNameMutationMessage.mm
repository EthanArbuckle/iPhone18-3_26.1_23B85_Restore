@interface IMDRelayGroupDisplayNameMutationMessage
- (IMDRelayGroupDisplayNameMutationMessage)initWithName:(id)name sender:(id)sender service:(id)service groupID:(id)d originalGroupID:(id)iD guid:(id)guid destinationCallerID:(id)callerID failed:(BOOL)self0 fromMe:(BOOL)self1;
- (id)_initWithBlastDoorMessage:(id)message;
- (id)createDictionary;
@end

@implementation IMDRelayGroupDisplayNameMutationMessage

- (id)_initWithBlastDoorMessage:(id)message
{
  messageCopy = message;
  v11.receiver = self;
  v11.super_class = IMDRelayGroupDisplayNameMutationMessage;
  v5 = [(IMDRelayGroupMutationMessage *)&v11 _initWithBlastDoorMessage:messageCopy];
  if (v5)
  {
    mutation = [messageCopy mutation];
    displayName = [mutation displayName];
    updatedName = [displayName updatedName];
    displayName2 = [updatedName displayName];
    [v5 setUpdatedName:displayName2];
  }

  return v5;
}

- (IMDRelayGroupDisplayNameMutationMessage)initWithName:(id)name sender:(id)sender service:(id)service groupID:(id)d originalGroupID:(id)iD guid:(id)guid destinationCallerID:(id)callerID failed:(BOOL)self0 fromMe:(BOOL)self1
{
  nameCopy = name;
  if (failed)
  {
    v18 = 2;
  }

  else
  {
    v18 = 0;
  }

  v22.receiver = self;
  v22.super_class = IMDRelayGroupDisplayNameMutationMessage;
  v19 = [(IMDRelayGroupMutationMessage *)&v22 _initWithType:v18 sender:sender service:service groupID:d originalGroupID:iD guid:guid destinationCallerID:callerID fromMe:me];
  v20 = v19;
  if (v19)
  {
    [(IMDRelayGroupDisplayNameMutationMessage *)v19 setUpdatedName:nameCopy];
  }

  return v20;
}

- (id)createDictionary
{
  v9.receiver = self;
  v9.super_class = IMDRelayGroupDisplayNameMutationMessage;
  createDictionary = [(IMDRelayGroupMutationMessage *)&v9 createDictionary];
  v4 = [createDictionary mutableCopy];

  updatedName = [(IMDRelayGroupDisplayNameMutationMessage *)self updatedName];

  if (updatedName)
  {
    updatedName2 = [(IMDRelayGroupDisplayNameMutationMessage *)self updatedName];
    [v4 setObject:updatedName2 forKeyedSubscript:@"n"];
  }

  v7 = [v4 copy];

  return v7;
}

@end