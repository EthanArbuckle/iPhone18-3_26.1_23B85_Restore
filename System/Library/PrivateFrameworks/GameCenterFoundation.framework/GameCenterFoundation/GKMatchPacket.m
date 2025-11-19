@interface GKMatchPacket
- (GKMatchPacket)init;
- (GKMatchPacket)initWithMessage:(id)a3;
- (id)message;
@end

@implementation GKMatchPacket

- (GKMatchPacket)init
{
  v3.receiver = self;
  v3.super_class = GKMatchPacket;
  result = [(GKMatchPacket *)&v3 init];
  if (result)
  {
    result->_version = 1;
  }

  return result;
}

- (GKMatchPacket)initWithMessage:(id)a3
{
  v4 = a3;
  v5 = [(GKMatchPacket *)self init];
  v6 = v5;
  if (v5)
  {
    [(GKMatchPacket *)v5 setValid:1];
    v7 = [v4 bytes];
    if ([v4 length] <= 0xB)
    {
      [(GKMatchPacket *)v6 setValid:0];
    }

    if ([(GKMatchPacket *)v6 valid])
    {
      [(GKMatchPacket *)v6 setVersion:*v7];
      [(GKMatchPacket *)v6 setPacketType:v7[1]];
      [(GKMatchPacket *)v6 setSequenceNumber:*(v7 + 2)];
      [(GKMatchPacket *)v6 setTotalLength:*(v7 + 6)];
      v8 = [(GKMatchPacket *)v6 totalLength];
      if ([v4 length] != v8)
      {
        [(GKMatchPacket *)v6 setValid:0];
      }

      v9 = [v4 bytes];
      v10 = 0;
      v11 = 12;
      do
      {
        v12 = *v9++;
        v10 += v12;
        v11 -= 2;
      }

      while (v11);
      if (v10 >= 0x10000)
      {
        do
        {
          v10 = HIWORD(v10) + v10;
        }

        while (HIWORD(v10));
      }

      if (v10 != 0xFFFF)
      {
        [(GKMatchPacket *)v6 setValid:0];
      }

      v7 += 12;
    }

    if ([(GKMatchPacket *)v6 valid])
    {
      v13 = [MEMORY[0x277CBEA90] dataWithBytes:v7 length:{-[GKMatchPacket totalLength](v6, "totalLength") - 12}];
      [(GKMatchPacket *)v6 setData:v13];
    }

    else
    {
      [(GKMatchPacket *)v6 setData:v4];
    }
  }

  return v6;
}

- (id)message
{
  self->_totalLength = [(NSData *)self->_data length]+ 12;
  v3 = [MEMORY[0x277CBEB28] dataWithCapacity:?];
  [v3 appendBytes:&self->_version length:1];
  [v3 appendBytes:&self->_packetType length:1];
  [v3 appendBytes:&self->_sequenceNumber length:4];
  [v3 appendBytes:&self->_totalLength length:4];
  v4 = [v3 bytes];
  v5 = 0;
  v6 = 10;
  do
  {
    v7 = *v4++;
    v5 += v7;
    v6 -= 2;
  }

  while (v6);
  if (v5 >= 0x10000)
  {
    do
    {
      v5 = HIWORD(v5) + v5;
    }

    while (HIWORD(v5));
  }

  v9 = ~v5;
  [v3 appendBytes:&v9 length:2];
  [v3 appendData:self->_data];

  return v3;
}

@end