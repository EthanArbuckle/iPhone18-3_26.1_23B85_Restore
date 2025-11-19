@interface MRTransactionMessage
- (MRPlayerPath)playerPath;
- (MRTransactionMessage)initWithContentItems:(id)a3 forPlayerPath:(id)a4;
- (MRTransactionMessage)initWithName:(unint64_t)a3 packets:(id)a4 playerPath:(id)a5;
- (MRTransactionMessage)initWithPlaybackQueue:(id)a3 forPlayerPath:(id)a4;
- (NSArray)packets;
- (unint64_t)name;
@end

@implementation MRTransactionMessage

- (MRTransactionMessage)initWithName:(unint64_t)a3 packets:(id)a4 playerPath:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v27.receiver = self;
  v27.super_class = MRTransactionMessage;
  v10 = [(MRProtocolMessage *)&v27 init];
  if (v10)
  {
    v11 = objc_alloc_init(_MRTransactionMessageProtobuf);
    [(_MRTransactionMessageProtobuf *)v11 setName:a3];
    context = objc_autoreleasePoolPush();
    v12 = objc_alloc_init(_MRTransactionPacketsProtobuf);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        v17 = 0;
        do
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v23 + 1) + 8 * v17) protobuf];
          [(_MRTransactionPacketsProtobuf *)v12 addPackets:v18];

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v15);
    }

    [(_MRTransactionMessageProtobuf *)v11 setPackets:v12];
    objc_autoreleasePoolPop(context);
    v19 = [v9 protobuf];
    [(_MRTransactionMessageProtobuf *)v11 setPlayerPath:v19];

    [(MRProtocolMessage *)v10 setUnderlyingCodableMessage:v11];
  }

  v20 = *MEMORY[0x1E69E9840];
  return v10;
}

- (MRTransactionMessage)initWithPlaybackQueue:(id)a3 forPlayerPath:(id)a4
{
  v6 = a4;
  v7 = [a3 contentItems];
  v8 = [(MRTransactionMessage *)self initWithContentItems:v7 forPlayerPath:v6];

  return v8;
}

- (MRTransactionMessage)initWithContentItems:(id)a3 forPlayerPath:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v34.receiver = self;
  v34.super_class = MRTransactionMessage;
  v8 = [(MRProtocolMessage *)&v34 init];
  v9 = v8;
  if (v8)
  {
    v26 = v8;
    v27 = v7;
    v10 = objc_alloc_init(_MRTransactionMessageProtobuf);
    v11 = objc_alloc_init(_MRTransactionPacketsProtobuf);
    [(_MRTransactionMessageProtobuf *)v10 setPackets:v11];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = v6;
    obj = v6;
    v12 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      v15 = *MEMORY[0x1E695E480];
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v30 + 1) + 8 * i);
          ExternalRepresentation = MRContentItemCreateExternalRepresentation(v15, v17);
          v19 = objc_alloc_init(_MRTransactionKeyProtobuf);
          [(_MRTransactionKeyProtobuf *)v19 setIdentifier:MRContentItemGetAncestorIdentifier(v17)];
          v20 = [[MRTransactionPacket alloc] initWithData:ExternalRepresentation forKey:v19];
          v21 = [(_MRTransactionMessageProtobuf *)v10 packets];
          v22 = [(MRTransactionPacket *)v20 protobuf];
          [v21 addPackets:v22];
        }

        v13 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v13);
    }

    [(_MRTransactionMessageProtobuf *)v10 setName:2];
    v7 = v27;
    v23 = [v27 protobuf];
    [(_MRTransactionMessageProtobuf *)v10 setPlayerPath:v23];

    v9 = v26;
    [(MRProtocolMessage *)v26 setUnderlyingCodableMessage:v10];

    v6 = v28;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v9;
}

- (NSArray)packets
{
  v24 = *MEMORY[0x1E69E9840];
  packets = self->_packets;
  if (!packets)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = self->_packets;
    self->_packets = v4;

    v6 = [(MRProtocolMessage *)self underlyingCodableMessage];
    v7 = [v6 packets];
    v8 = [v7 packets];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        v13 = 0;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * v13);
          v15 = [MRTransactionPacket alloc];
          v16 = [(MRTransactionPacket *)v15 initWithProtobuf:v14, v19];
          [(NSMutableArray *)self->_packets addObject:v16];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    packets = self->_packets;
  }

  v17 = *MEMORY[0x1E69E9840];

  return packets;
}

- (MRPlayerPath)playerPath
{
  v3 = [MRPlayerPath alloc];
  v4 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v5 = [v4 playerPath];
  v6 = [(MRPlayerPath *)v3 initWithProtobuf:v5];

  return v6;
}

- (unint64_t)name
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 name];

  return v3;
}

@end