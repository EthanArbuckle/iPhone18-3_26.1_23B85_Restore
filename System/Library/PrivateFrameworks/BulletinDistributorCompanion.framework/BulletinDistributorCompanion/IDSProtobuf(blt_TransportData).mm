@interface IDSProtobuf(blt_TransportData)
- (BLTPBTransportData)transportData;
@end

@implementation IDSProtobuf(blt_TransportData)

- (BLTPBTransportData)transportData
{
  v1 = [a1 data];
  v2 = [v1 length] - 2;
  v3 = [v1 bytes];
  v4 = *(v3 + v2);
  if (*(v3 + v2))
  {
    v5 = v2 >= v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v7 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:objc_msgSend(v1 length:"bytes") + v2 - v4 freeWhenDone:{v4, 0}];
    v6 = [[BLTPBTransportData alloc] initWithData:v7];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end