@interface IMDRelayGroupParticipantsUpdateMessage
- (IMDRelayGroupParticipantsUpdateMessage)initWithChangeType:(unint64_t)type changedParticipants:(id)participants sender:(id)sender service:(id)service groupID:(id)d originalGroupID:(id)iD guid:(id)guid destinationCallerID:(id)self0 failed:(BOOL)self1 fromMe:(BOOL)self2;
- (id)_initWithBlastDoorMessage:(id)message;
- (id)createDictionary;
@end

@implementation IMDRelayGroupParticipantsUpdateMessage

- (id)_initWithBlastDoorMessage:(id)message
{
  messageCopy = message;
  v21.receiver = self;
  v21.super_class = IMDRelayGroupParticipantsUpdateMessage;
  v5 = [(IMDRelayGroupMutationMessage *)&v21 _initWithBlastDoorMessage:messageCopy];
  if (v5)
  {
    mutation = [messageCopy mutation];
    participant = [mutation participant];
    [v5 setParticipantChangeType:{objc_msgSend(participant, "type")}];

    v8 = objc_alloc(MEMORY[0x277CBEB38]);
    mutation2 = [messageCopy mutation];
    participant2 = [mutation2 participant];
    changedParticipants = [participant2 changedParticipants];
    v12 = [v8 initWithCapacity:{objc_msgSend(changedParticipants, "count")}];

    mutation3 = [messageCopy mutation];
    participant3 = [mutation3 participant];
    changedParticipants2 = [participant3 changedParticipants];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_22B5A6554;
    v19[3] = &unk_2787058D8;
    v20 = v12;
    v16 = v12;
    [changedParticipants2 enumerateObjectsUsingBlock:v19];

    v17 = [v16 copy];
    [v5 setChangedParticipants:v17];
  }

  return v5;
}

- (IMDRelayGroupParticipantsUpdateMessage)initWithChangeType:(unint64_t)type changedParticipants:(id)participants sender:(id)sender service:(id)service groupID:(id)d originalGroupID:(id)iD guid:(id)guid destinationCallerID:(id)self0 failed:(BOOL)self1 fromMe:(BOOL)self2
{
  participantsCopy = participants;
  if (failed)
  {
    v18 = 3;
  }

  else
  {
    v18 = 1;
  }

  v23.receiver = self;
  v23.super_class = IMDRelayGroupParticipantsUpdateMessage;
  v19 = [(IMDRelayGroupMutationMessage *)&v23 _initWithType:v18 sender:sender service:service groupID:d originalGroupID:iD guid:guid destinationCallerID:callerID fromMe:me];
  v20 = v19;
  if (v19)
  {
    [(IMDRelayGroupParticipantsUpdateMessage *)v19 setParticipantChangeType:type];
    [(IMDRelayGroupParticipantsUpdateMessage *)v20 setChangedParticipants:participantsCopy];
  }

  return v20;
}

- (id)createDictionary
{
  v9.receiver = self;
  v9.super_class = IMDRelayGroupParticipantsUpdateMessage;
  createDictionary = [(IMDRelayGroupMutationMessage *)&v9 createDictionary];
  v4 = [createDictionary mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[IMDRelayGroupParticipantsUpdateMessage participantChangeType](self, "participantChangeType")}];
  [v4 setObject:v5 forKeyedSubscript:@"T"];

  changedParticipants = [(IMDRelayGroupParticipantsUpdateMessage *)self changedParticipants];
  [v4 setObject:changedParticipants forKeyedSubscript:@"p"];

  v7 = [v4 copy];

  return v7;
}

@end