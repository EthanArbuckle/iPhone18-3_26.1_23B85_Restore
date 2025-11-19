@interface MRTransactionPacketizer
- (void)packetize:(id)a3 packageSize:(unint64_t)a4 completion:(id)a5;
- (void)unpacketize:(id)a3 completion:(id)a4;
@end

@implementation MRTransactionPacketizer

- (void)packetize:(id)a3 packageSize:(unint64_t)a4 completion:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  outgoingPackets = self->_outgoingPackets;
  if (!outgoingPackets)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = self->_outgoingPackets;
    self->_outgoingPackets = v12;

    outgoingPackets = self->_outgoingPackets;
  }

  [(NSMutableArray *)outgoingPackets addObjectsFromArray:v8];
  while (a4)
  {
    if (![(NSMutableArray *)self->_outgoingPackets count])
    {
      break;
    }

    v14 = [(NSMutableArray *)self->_outgoingPackets firstObject];
    v15 = [v14 actualLength];
    v16 = v15 - [v14 writePosition];
    v17 = a4;
    if (a4 >= v16)
    {
      v18 = [v14 actualLength];
      v17 = v18 - [v14 writePosition];
    }

    [v14 setWriteLength:v17];
    [v10 addObject:v14];
    if ([v14 isWriteComplete])
    {
      [(NSMutableArray *)self->_outgoingPackets removeObject:v14];
    }

    a4 -= v17;
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

  v9[2](v9, v19, [(NSMutableArray *)self->_outgoingPackets count]!= 0);
  v25 = *MEMORY[0x1E69E9840];
}

- (void)unpacketize:(id)a3 completion:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v26 = a4;
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
  v9 = v6;
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
        v17 = [v15 identifier];
        v18 = [(NSMutableDictionary *)v16 objectForKey:v17];

        if (!v18)
        {
          v18 = objc_alloc_init(MRTransactionPacketAccumulator);
          v19 = self->_incomingPackets;
          v20 = [v15 identifier];
          [(NSMutableDictionary *)v19 setObject:v18 forKey:v20];
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
          v23 = [v15 identifier];
          [(NSMutableDictionary *)v22 removeObjectForKey:v23];
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
  v26[2](v26, v24);

  v25 = *MEMORY[0x1E69E9840];
}

@end