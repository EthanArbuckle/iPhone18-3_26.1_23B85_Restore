@interface IDSSocketPairHandshake
- (IDSSocketPairHandshake)initWithCommand:(unsigned __int8)command underlyingData:(id)data;
- (IDSSocketPairHandshake)initWithVersionNumber:(unsigned int)number;
- (id)_nonHeaderData;
@end

@implementation IDSSocketPairHandshake

- (IDSSocketPairHandshake)initWithCommand:(unsigned __int8)command underlyingData:(id)data
{
  commandCopy = command;
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = IDSSocketPairHandshake;
  v7 = [(IDSSocketPairMessage *)&v10 initWithCommand:commandCopy underlyingData:dataCopy];
  if (v7)
  {
    v9 = -1431655766;
    [dataCopy getBytes:&v9 range:{0, 4}];
    *(&v7->super._wasWrittenToConnection + 2) = bswap32(v9);
  }

  return v7;
}

- (IDSSocketPairHandshake)initWithVersionNumber:(unsigned int)number
{
  v5.receiver = self;
  v5.super_class = IDSSocketPairHandshake;
  result = [(IDSSocketPairHandshake *)&v5 init];
  if (result)
  {
    *(&result->super._wasWrittenToConnection + 2) = number;
  }

  return result;
}

- (id)_nonHeaderData
{
  data = [MEMORY[0x1E695DF88] data];
  v5 = bswap32([(IDSSocketPairHandshake *)self versionNumber]);
  [data appendBytes:&v5 length:4];

  return data;
}

@end