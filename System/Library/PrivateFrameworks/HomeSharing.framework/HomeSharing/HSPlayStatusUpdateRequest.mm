@interface HSPlayStatusUpdateRequest
- (HSPlayStatusUpdateRequest)initWithInterfaceID:(unsigned int)d revisionID:(unsigned int)iD;
- (double)timeoutInterval;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation HSPlayStatusUpdateRequest

- (double)timeoutInterval
{
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  [distantFuture timeIntervalSinceNow];
  v4 = v3;

  return v4;
}

- (id)canonicalResponseForResponse:(id)response
{
  v3 = [(HSResponse *)HSPlayStatusUpdateResponse responseWithResponse:response];
  responseData = [v3 responseData];
  v5 = [HSResponseDataParser parseResponseData:responseData];
  v6 = [v5 mutableCopy];

  v7 = [v6 objectForKey:&unk_28666A628];
  [v3 setNextRevisionID:{objc_msgSend(v7, "unsignedIntValue")}];

  v8 = [v6 objectForKey:&unk_28666A640];
  if ([v8 length] == 32)
  {
    bytes = [v8 bytes];
    [v3 setNowPlayingDatabaseID:((*bytes << 56) | (bytes[1] << 48) | (bytes[2] << 40) | (bytes[3] << 32) | (bytes[4] << 24) | (bytes[5] << 16) | (bytes[6] << 8)) + bytes[7]];
    [v3 setNowPlayingContainerID:((bytes[8] << 56) | (bytes[9] << 48) | (bytes[10] << 40) | (bytes[11] << 32) | (bytes[12] << 24) | (bytes[13] << 16) | (bytes[14] << 8)) + bytes[15]];
    [v3 setNowPlayingContainerItemID:((bytes[16] << 56) | (bytes[17] << 48) | (bytes[18] << 40) | (bytes[19] << 32) | (bytes[20] << 24) | (bytes[21] << 16) | (bytes[22] << 8)) + bytes[23]];
    [v3 setNowPlayingItemID:((bytes[24] << 56) | (bytes[25] << 48) | (bytes[26] << 40) | (bytes[27] << 32) | (bytes[28] << 24) | (bytes[29] << 16) | (bytes[30] << 8)) + bytes[31]];
  }

  else
  {
    v10 = [v6 objectForKey:&unk_28666A658];
    if ([v10 length] == 16)
    {
      bytes2 = [v8 bytes];
      [v3 setNowPlayingDatabaseID:bswap32(*bytes2)];
      [v3 setNowPlayingContainerID:bswap32(bytes2[1])];
      [v3 setNowPlayingContainerItemID:bswap32(bytes2[2])];
      [v3 setNowPlayingItemID:bswap32(bytes2[3])];
    }
  }

  [v3 setPlayStatusInformation:v6];

  return v3;
}

- (HSPlayStatusUpdateRequest)initWithInterfaceID:(unsigned int)d revisionID:(unsigned int)iD
{
  v4 = *&iD;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/%u/%s", "ctrl-int", *&d, "playstatusupdate"];
  v8 = [(HSRequest *)self initWithAction:v7];

  if (v8)
  {
    v8->_interfaceID = d;
    v8->_revisionID = v4;
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v4];
    [(HSRequest *)v8 setValue:v9 forArgument:@"revision-number"];
  }

  return v8;
}

@end