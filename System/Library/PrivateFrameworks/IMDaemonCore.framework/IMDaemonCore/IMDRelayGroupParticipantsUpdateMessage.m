@interface IMDRelayGroupParticipantsUpdateMessage
- (IMDRelayGroupParticipantsUpdateMessage)initWithChangeType:(unint64_t)a3 changedParticipants:(id)a4 sender:(id)a5 service:(id)a6 groupID:(id)a7 originalGroupID:(id)a8 guid:(id)a9 destinationCallerID:(id)a10 failed:(BOOL)a11 fromMe:(BOOL)a12;
- (id)_initWithBlastDoorMessage:(id)a3;
- (id)createDictionary;
@end

@implementation IMDRelayGroupParticipantsUpdateMessage

- (id)_initWithBlastDoorMessage:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = IMDRelayGroupParticipantsUpdateMessage;
  v5 = [(IMDRelayGroupMutationMessage *)&v21 _initWithBlastDoorMessage:v4];
  if (v5)
  {
    v6 = [v4 mutation];
    v7 = [v6 participant];
    [v5 setParticipantChangeType:{objc_msgSend(v7, "type")}];

    v8 = objc_alloc(MEMORY[0x277CBEB38]);
    v9 = [v4 mutation];
    v10 = [v9 participant];
    v11 = [v10 changedParticipants];
    v12 = [v8 initWithCapacity:{objc_msgSend(v11, "count")}];

    v13 = [v4 mutation];
    v14 = [v13 participant];
    v15 = [v14 changedParticipants];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_22B5A6554;
    v19[3] = &unk_2787058D8;
    v20 = v12;
    v16 = v12;
    [v15 enumerateObjectsUsingBlock:v19];

    v17 = [v16 copy];
    [v5 setChangedParticipants:v17];
  }

  return v5;
}

- (IMDRelayGroupParticipantsUpdateMessage)initWithChangeType:(unint64_t)a3 changedParticipants:(id)a4 sender:(id)a5 service:(id)a6 groupID:(id)a7 originalGroupID:(id)a8 guid:(id)a9 destinationCallerID:(id)a10 failed:(BOOL)a11 fromMe:(BOOL)a12
{
  v17 = a4;
  if (a11)
  {
    v18 = 3;
  }

  else
  {
    v18 = 1;
  }

  v23.receiver = self;
  v23.super_class = IMDRelayGroupParticipantsUpdateMessage;
  v19 = [(IMDRelayGroupMutationMessage *)&v23 _initWithType:v18 sender:a5 service:a6 groupID:a7 originalGroupID:a8 guid:a9 destinationCallerID:a10 fromMe:a12];
  v20 = v19;
  if (v19)
  {
    [(IMDRelayGroupParticipantsUpdateMessage *)v19 setParticipantChangeType:a3];
    [(IMDRelayGroupParticipantsUpdateMessage *)v20 setChangedParticipants:v17];
  }

  return v20;
}

- (id)createDictionary
{
  v9.receiver = self;
  v9.super_class = IMDRelayGroupParticipantsUpdateMessage;
  v3 = [(IMDRelayGroupMutationMessage *)&v9 createDictionary];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[IMDRelayGroupParticipantsUpdateMessage participantChangeType](self, "participantChangeType")}];
  [v4 setObject:v5 forKeyedSubscript:@"T"];

  v6 = [(IMDRelayGroupParticipantsUpdateMessage *)self changedParticipants];
  [v4 setObject:v6 forKeyedSubscript:@"p"];

  v7 = [v4 copy];

  return v7;
}

@end