@interface IDSProtobuf(blt_TransportData)
- (BLTPBTransportData)transportData;
@end

@implementation IDSProtobuf(blt_TransportData)

- (BLTPBTransportData)transportData
{
  data = [self data];
  v2 = [data length] - 2;
  bytes = [data bytes];
  v4 = *(bytes + v2);
  if (*(bytes + v2))
  {
    v5 = v2 >= v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v7 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:objc_msgSend(data length:"bytes") + v2 - v4 freeWhenDone:{v4, 0}];
    v6 = [[BLTPBTransportData alloc] initWithData:v7];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end