@interface PTPCancelPacket
- (PTPCancelPacket)initWithTCPBuffer:(void *)a3;
- (PTPCancelPacket)initWithTransactionID:(unsigned int)a3;
- (id)contentForTCP;
@end

@implementation PTPCancelPacket

- (PTPCancelPacket)initWithTransactionID:(unsigned int)a3
{
  v5.receiver = self;
  v5.super_class = PTPCancelPacket;
  result = [(PTPCancelPacket *)&v5 init];
  if (result)
  {
    result->_transactionID = a3;
  }

  return result;
}

- (PTPCancelPacket)initWithTCPBuffer:(void *)a3
{
  if (*a3 == 12 && *(a3 + 1) == 11)
  {
    v8.receiver = self;
    v8.super_class = PTPCancelPacket;
    v6 = [(PTPCancelPacket *)&v8 init];
    if (v6)
    {
      v6->_transactionID = *(a3 + 2);
    }

    self = v6;
    v4 = self;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)contentForTCP
{
  v3 = [PTPWrappedBytes wrappedBytesWithCapacity:12];
  v5 = [v3 mutableBytes];
  WriteUInt32(&v5, 12);
  WriteUInt32(&v5, 11);
  WriteUInt32(&v5, self->_transactionID);
  [v3 setLength:12];

  return v3;
}

@end