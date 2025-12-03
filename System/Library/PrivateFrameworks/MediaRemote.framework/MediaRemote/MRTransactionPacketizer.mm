@interface MRTransactionPacketizer
- (void)packetize:(id)packetize packageSize:(unint64_t)size completion:(id)completion;
- (void)unpacketize:(id)unpacketize completion:(id)completion;
@end

@implementation MRTransactionPacketizer

- (void)packetize:(id)packetize packageSize:(unint64_t)size completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  packetizeCopy = packetize;
  completionCopy = completion;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  outgoingPackets = self->_outgoingPackets;
  if (!outgoingPackets)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = self->_outgoingPackets;
    self->_outgoingPackets = v12;

    outgoingPackets = self->_outgoingPackets;
  }

  [(NSMutableArray *)outgoingPackets addObjectsFromArray:packetizeCopy];
  while (size)
  {
    if (![(NSMutableArray *)self->_outgoingPackets count])
    {
      break;
    }

    firstObject = [(NSMutableArray *)self->_outgoingPackets firstObject];
    actualLength = [firstObject actualLength];
    v16 = actualLength - [firstObject writePosition];
    sizeCopy = size;
    if (size >= v16)
    {
      actualLength2 = [firstObject actualLength];
      sizeCopy = actualLength2 - [firstObject writePosition];
    }

    [firstObject setWriteLength:sizeCopy];
    [v10 addObject:firstObject];
    if ([firstObject isWriteComplete])
    {
      [(NSMutableArray *)self->_outgoingPackets removeObject:firstObject];
    }

    size -= sizeCopy;
  }

  v19 = MRTransactionPacketsGetShallowCopy(v10);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v20 = v10;
  v21 = [v20 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v27;
    do
    {
      v24 = 0;
      do
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v26 + 1) + 8 * v24++) writeComplete];
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v22);
  }

  completionCopy[2](completionCopy, v19, [(NSMutableArray *)self->_outgoingPackets count]!= 0);
  v25 = *MEMORY[0x1E69E9840];
}

- (void)unpacketize:(id)unpacketize completion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  unpacketizeCopy = unpacketize;
  completionCopy = completion;
  if (!self->_incomingPackets)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    incomingPackets = self->_incomingPackets;
    self->_incomingPackets = v7;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = unpacketizeCopy;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v28;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        v16 = self->_incomingPackets;
        identifier = [v15 identifier];
        v18 = [(NSMutableDictionary *)v16 objectForKey:identifier];

        if (!v18)
        {
          v18 = objc_alloc_init(MRTransactionPacketAccumulator);
          v19 = self->_incomingPackets;
          identifier2 = [v15 identifier];
          [(NSMutableDictionary *)v19 setObject:v18 forKey:identifier2];
        }

        v21 = [(MRTransactionPacketAccumulator *)v18 mergePacket:v15];
        if (v21)
        {
          if (!v12)
          {
            v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          [v12 addObject:v21];
          v22 = self->_incomingPackets;
          identifier3 = [v15 identifier];
          [(NSMutableDictionary *)v22 removeObjectForKey:identifier3];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v24 = MRTransactionPacketsGetShallowCopy(v12);
  completionCopy[2](completionCopy, v24);

  v25 = *MEMORY[0x1E69E9840];
}

@end