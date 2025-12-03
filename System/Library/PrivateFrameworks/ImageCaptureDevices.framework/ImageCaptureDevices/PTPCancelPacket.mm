@interface PTPCancelPacket
- (PTPCancelPacket)initWithTCPBuffer:(void *)buffer;
- (PTPCancelPacket)initWithTransactionID:(unsigned int)d;
- (id)contentForTCP;
@end

@implementation PTPCancelPacket

- (PTPCancelPacket)initWithTransactionID:(unsigned int)d
{
  v5.receiver = self;
  v5.super_class = PTPCancelPacket;
  result = [(PTPCancelPacket *)&v5 init];
  if (result)
  {
    result->_transactionID = d;
  }

  return result;
}

- (PTPCancelPacket)initWithTCPBuffer:(void *)buffer
{
  if (*buffer == 12 && *(buffer + 1) == 11)
  {
    v8.receiver = self;
    v8.super_class = PTPCancelPacket;
    v6 = [(PTPCancelPacket *)&v8 init];
    if (v6)
    {
      v6->_transactionID = *(buffer + 2);
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)contentForTCP
{
  v3 = [PTPWrappedBytes wrappedBytesWithCapacity:12];
  mutableBytes = [v3 mutableBytes];
  WriteUInt32(&mutableBytes, 12);
  WriteUInt32(&mutableBytes, 11);
  WriteUInt32(&mutableBytes, self->_transactionID);
  [v3 setLength:12];

  return v3;
}

@end