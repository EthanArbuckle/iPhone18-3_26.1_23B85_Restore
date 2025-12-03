@interface MRPlayerClientParticipantsUpdateMessage
- (MRPlayerClientParticipantsUpdateMessage)initWithPlayerPath:(id)path participants:(id)participants;
- (MRPlayerPath)playerPath;
- (NSArray)participants;
@end

@implementation MRPlayerClientParticipantsUpdateMessage

- (MRPlayerClientParticipantsUpdateMessage)initWithPlayerPath:(id)path participants:(id)participants
{
  v25 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  participantsCopy = participants;
  v23.receiver = self;
  v23.super_class = MRPlayerClientParticipantsUpdateMessage;
  v8 = [(MRProtocolMessage *)&v23 init];
  if (v8)
  {
    v9 = objc_alloc_init(_MRPlayerClientParticipantsUpdateMessageProtobuf);
    protobuf = [pathCopy protobuf];
    [(_MRPlayerClientParticipantsUpdateMessageProtobuf *)v9 setPlayerPath:protobuf];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = participantsCopy;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        v15 = 0;
        do
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v19 + 1) + 8 * v15) protobufWithEncoding:{0, v19}];
          [(_MRPlayerClientParticipantsUpdateMessageProtobuf *)v9 addParticipants:v16];

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v13);
    }

    [(MRProtocolMessage *)v8 setUnderlyingCodableMessage:v9];
  }

  v17 = *MEMORY[0x1E69E9840];
  return v8;
}

- (MRPlayerPath)playerPath
{
  v3 = [MRPlayerPath alloc];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  playerPath = [underlyingCodableMessage playerPath];
  v6 = [(MRPlayerPath *)v3 initWithProtobuf:playerPath];

  return v6;
}

- (NSArray)participants
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  participants = [underlyingCodableMessage participants];
  v6 = [v3 initWithCapacity:{objc_msgSend(participants, "count")}];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  underlyingCodableMessage2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  participants2 = [underlyingCodableMessage2 participants];

  v9 = [participants2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(participants2);
        }

        v13 = [[MRPlaybackQueueParticipant alloc] initWithProtobuf:*(*(&v17 + 1) + 8 * i)];
        [v6 addObject:v13];
      }

      v10 = [participants2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [v6 copy];
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

@end