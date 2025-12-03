@interface MRTransactionPacketAccumulator
- (MRTransactionPacketAccumulator)init;
- (id)mergePacket:(id)packet;
@end

@implementation MRTransactionPacketAccumulator

- (MRTransactionPacketAccumulator)init
{
  v6.receiver = self;
  v6.super_class = MRTransactionPacketAccumulator;
  v2 = [(MRTransactionPacketAccumulator *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    packets = v2->_packets;
    v2->_packets = v3;
  }

  return v2;
}

- (id)mergePacket:(id)packet
{
  packetCopy = packet;
  actualLength = [packetCopy actualLength];
  packets = self->_packets;
  self->_currentLength += actualLength;
  [(NSMutableOrderedSet *)packets addObject:packetCopy];
  currentLength = self->_currentLength;
  if (currentLength > [packetCopy totalLength])
  {
    [MRTransactionPacketAccumulator mergePacket:];
  }

  if ([packetCopy totalLength] == self->_currentLength)
  {
    v9 = self->_packets;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46__MRTransactionPacketAccumulator_mergePacket___block_invoke;
    v12[3] = &unk_1E76A1698;
    v12[4] = self;
    v12[5] = a2;
    [(NSMutableOrderedSet *)v9 sortUsingComparator:v12];
    v10 = [[MRTransactionPacket alloc] initWithPackets:self->_packets];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __46__MRTransactionPacketAccumulator_mergePacket___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 totalWritePosition];
  if (v6 == [v5 totalWritePosition])
  {
    __46__MRTransactionPacketAccumulator_mergePacket___block_invoke_cold_1();
  }

  v7 = [v4 totalWritePosition];
  if (v7 > [v5 totalWritePosition])
  {
    v8 = 1;
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (void)mergePacket:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __46__MRTransactionPacketAccumulator_mergePacket___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_6();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(v1 + 40) object:*(v1 + 32) file:@"MRTransaction.m" lineNumber:201 description:{@"Duplicate total write positions %ld", objc_msgSend(v0, "totalWritePosition")}];
}

@end