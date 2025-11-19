@interface IDSSocketPairHandshake
- (IDSSocketPairHandshake)initWithCommand:(unsigned __int8)a3 underlyingData:(id)a4;
- (IDSSocketPairHandshake)initWithVersionNumber:(unsigned int)a3;
- (id)_nonHeaderData;
@end

@implementation IDSSocketPairHandshake

- (IDSSocketPairHandshake)initWithCommand:(unsigned __int8)a3 underlyingData:(id)a4
{
  v4 = a3;
  v6 = a4;
  v10.receiver = self;
  v10.super_class = IDSSocketPairHandshake;
  v7 = [(IDSSocketPairMessage *)&v10 initWithCommand:v4 underlyingData:v6];
  if (v7)
  {
    v9 = -1431655766;
    [v6 getBytes:&v9 range:{0, 4}];
    *(&v7->super._wasWrittenToConnection + 2) = bswap32(v9);
  }

  return v7;
}

- (IDSSocketPairHandshake)initWithVersionNumber:(unsigned int)a3
{
  v5.receiver = self;
  v5.super_class = IDSSocketPairHandshake;
  result = [(IDSSocketPairHandshake *)&v5 init];
  if (result)
  {
    *(&result->super._wasWrittenToConnection + 2) = a3;
  }

  return result;
}

- (id)_nonHeaderData
{
  v3 = [MEMORY[0x1E695DF88] data];
  v5 = bswap32([(IDSSocketPairHandshake *)self versionNumber]);
  [v3 appendBytes:&v5 length:4];

  return v3;
}

@end