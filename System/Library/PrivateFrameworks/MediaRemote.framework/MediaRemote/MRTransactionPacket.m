@interface MRTransactionPacket
- (BOOL)isWriteComplete;
- (MRTransactionPacket)initWithData:(id)a3 forKey:(id)a4;
- (MRTransactionPacket)initWithPackets:(id)a3;
- (MRTransactionPacket)initWithProtobuf:(id)a3;
- (_MRTransactionPacketProtobuf)protobuf;
- (id)copyWithZone:(_NSZone *)a3;
- (void)isWriteComplete;
- (void)protobuf;
- (void)setWriteLength:(unint64_t)a3;
- (void)writeComplete;
@end

@implementation MRTransactionPacket

- (MRTransactionPacket)initWithData:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = MRTransactionPacket;
  v8 = [(MRTransactionPacket *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_key, a4);
    v10 = [v6 mutableCopy];
    data = v9->_data;
    v9->_data = v10;

    v12 = [MEMORY[0x1E696AFB0] UUID];
    v13 = [v12 UUIDString];
    identifier = v9->_identifier;
    v9->_identifier = v13;

    v15 = [(NSMutableData *)v9->_data length];
    v9->_totalLength = v15;
    v9->_writeLength = v15;
    if (!v9->_key || !v9->_identifier || !v9->_data)
    {
      [MRTransactionPacket initWithData:forKey:];
    }
  }

  return v9;
}

- (MRTransactionPacket)initWithPackets:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v31.receiver = self;
  v31.super_class = MRTransactionPacket;
  v5 = [(MRTransactionPacket *)&v31 init];
  if (v5)
  {
    v6 = [v4 firstObject];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 key];
      key = v5->_key;
      v5->_key = v8;

      v10 = [v7 identifier];
      identifier = v5->_identifier;
      v5->_identifier = v10;

      v12 = [v7 totalLength];
      v5->_totalLength = v12;
      v5->_writeLength = v12;
    }

    v13 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:v5->_totalLength];
    data = v5->_data;
    v5->_data = v13;

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = v4;
    v16 = [v15 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v28;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v27 + 1) + 8 * i);
          v21 = [v20 identifier];
          v22 = [v21 isEqualToString:v5->_identifier];

          if ((v22 & 1) == 0)
          {
            [MRTransactionPacket initWithPackets:];
          }

          v23 = v5->_data;
          v24 = [v20 data];
          [(NSMutableData *)v23 appendData:v24];
        }

        v17 = [v15 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v17);
    }

    if (!v5->_key || !v5->_identifier || !v5->_data)
    {
      [MRTransactionPacket initWithPackets:];
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return v5;
}

- (MRTransactionPacket)initWithProtobuf:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MRTransactionPacket;
  v5 = [(MRTransactionPacket *)&v15 init];
  if (v5)
  {
    v6 = [v4 key];
    key = v5->_key;
    v5->_key = v6;

    v8 = [v4 packetData];
    v9 = [v8 mutableCopy];
    data = v5->_data;
    v5->_data = v9;

    v11 = [v4 identifier];
    v12 = [v11 copy];
    identifier = v5->_identifier;
    v5->_identifier = v12;

    v5->_totalLength = [v4 totalLength];
    v5->_writeLength = [(NSMutableData *)v5->_data length];
    v5->_totalWritePosition = [v4 totalWritePosition];
    if (!v5->_key || !v5->_identifier || !v5->_data)
    {
      [MRTransactionPacket initWithProtobuf:];
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 8), self->_data);
    objc_storeStrong((v5 + 16), self->_key);
    objc_storeStrong((v5 + 40), self->_identifier);
    *(v5 + 48) = self->_totalLength;
    *(v5 + 32) = self->_writePosition;
    *(v5 + 24) = self->_writeLength;
    *(v5 + 56) = self->_totalWritePosition;
  }

  return v5;
}

- (_MRTransactionPacketProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRTransactionPacketProtobuf);
  writePosition = self->_writePosition;
  if (writePosition > [(MRTransactionPacket *)self actualLength])
  {
    [MRTransactionPacket protobuf];
  }

  v5 = self->_writeLength + self->_writePosition;
  if (v5 > [(MRTransactionPacket *)self actualLength])
  {
    [MRTransactionPacket protobuf];
  }

  v6 = [(NSMutableData *)self->_data bytes];
  v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v6 + self->_writePosition length:self->_writeLength];
  [(_MRTransactionPacketProtobuf *)v3 setPacketData:v7];
  [(_MRTransactionPacketProtobuf *)v3 setKey:self->_key];
  [(_MRTransactionPacketProtobuf *)v3 setIdentifier:self->_identifier];
  [(_MRTransactionPacketProtobuf *)v3 setTotalLength:self->_totalLength];
  [(_MRTransactionPacketProtobuf *)v3 setTotalWritePosition:self->_totalWritePosition];

  return v3;
}

- (void)writeComplete
{
  OUTLINED_FUNCTION_7_3();
  v2 = v1;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = *v2;
  v5 = *v0;
  OUTLINED_FUNCTION_0_0();
  [v3 handleFailureInMethod:v4 object:v5 file:? lineNumber:? description:?];
}

- (void)setWriteLength:(unint64_t)a3
{
  self->_writeLength = a3;
  v5 = self->_writePosition + a3;
  if (v5 > [(NSMutableData *)self->_data length])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"MRTransaction.m" lineNumber:137 description:{@"Write Position %lu + Write Length %lu greater than data length %lu", self->_writePosition, self->_writeLength, -[NSMutableData length](self->_data, "length")}];
  }
}

- (BOOL)isWriteComplete
{
  v3 = self->_writeLength + self->_writePosition;
  if (v3 > [(MRTransactionPacket *)self actualLength])
  {
    [MRTransactionPacket isWriteComplete];
  }

  v4 = self->_writeLength + self->_writePosition;
  return v4 == [(MRTransactionPacket *)self actualLength];
}

- (void)initWithData:forKey:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)initWithPackets:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)initWithPackets:.cold.2()
{
  OUTLINED_FUNCTION_1_6();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)initWithProtobuf:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)protobuf
{
  OUTLINED_FUNCTION_2();
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  [v3 handleFailureInMethod:v0 object:v1 file:@"MRTransaction.m" lineNumber:103 description:{@"Next Write Pos: %lu greater than data length %lu", *v2, objc_msgSend(v1, "actualLength")}];
}

- (void)isWriteComplete
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end