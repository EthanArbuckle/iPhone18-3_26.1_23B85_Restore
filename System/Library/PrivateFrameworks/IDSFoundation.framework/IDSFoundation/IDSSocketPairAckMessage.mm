@interface IDSSocketPairAckMessage
- (IDSSocketPairAckMessage)initWithCommand:(unsigned __int8)command underlyingData:(id)data;
- (IDSSocketPairAckMessage)initWithSequenceNumber:(unsigned int)number;
- (id)_nonHeaderData;
@end

@implementation IDSSocketPairAckMessage

- (id)_nonHeaderData
{
  data = [MEMORY[0x1E695DF88] data];
  v5 = bswap32([(IDSSocketPairAckMessage *)self sequenceNumber]);
  [data appendBytes:&v5 length:4];

  return data;
}

- (IDSSocketPairAckMessage)initWithCommand:(unsigned __int8)command underlyingData:(id)data
{
  commandCopy = command;
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = IDSSocketPairAckMessage;
  v7 = [(IDSSocketPairMessage *)&v10 initWithCommand:commandCopy underlyingData:dataCopy];
  if (v7)
  {
    v9 = -1431655766;
    [dataCopy getBytes:&v9 range:{0, 4}];
    *(&v7->super._wasWrittenToConnection + 2) = bswap32(v9);
  }

  return v7;
}

- (IDSSocketPairAckMessage)initWithSequenceNumber:(unsigned int)number
{
  v5.receiver = self;
  v5.super_class = IDSSocketPairAckMessage;
  result = [(IDSSocketPairAckMessage *)&v5 init];
  if (result)
  {
    *(&result->super._wasWrittenToConnection + 2) = number;
  }

  return result;
}

@end