@interface HSPlayStatusUpdateRequest
- (HSPlayStatusUpdateRequest)initWithInterfaceID:(unsigned int)a3 revisionID:(unsigned int)a4;
- (double)timeoutInterval;
- (id)canonicalResponseForResponse:(id)a3;
@end

@implementation HSPlayStatusUpdateRequest

- (double)timeoutInterval
{
  v2 = [MEMORY[0x277CBEAA8] distantFuture];
  [v2 timeIntervalSinceNow];
  v4 = v3;

  return v4;
}

- (id)canonicalResponseForResponse:(id)a3
{
  v3 = [(HSResponse *)HSPlayStatusUpdateResponse responseWithResponse:a3];
  v4 = [v3 responseData];
  v5 = [HSResponseDataParser parseResponseData:v4];
  v6 = [v5 mutableCopy];

  v7 = [v6 objectForKey:&unk_28666A628];
  [v3 setNextRevisionID:{objc_msgSend(v7, "unsignedIntValue")}];

  v8 = [v6 objectForKey:&unk_28666A640];
  if ([v8 length] == 32)
  {
    v9 = [v8 bytes];
    [v3 setNowPlayingDatabaseID:((*v9 << 56) | (v9[1] << 48) | (v9[2] << 40) | (v9[3] << 32) | (v9[4] << 24) | (v9[5] << 16) | (v9[6] << 8)) + v9[7]];
    [v3 setNowPlayingContainerID:((v9[8] << 56) | (v9[9] << 48) | (v9[10] << 40) | (v9[11] << 32) | (v9[12] << 24) | (v9[13] << 16) | (v9[14] << 8)) + v9[15]];
    [v3 setNowPlayingContainerItemID:((v9[16] << 56) | (v9[17] << 48) | (v9[18] << 40) | (v9[19] << 32) | (v9[20] << 24) | (v9[21] << 16) | (v9[22] << 8)) + v9[23]];
    [v3 setNowPlayingItemID:((v9[24] << 56) | (v9[25] << 48) | (v9[26] << 40) | (v9[27] << 32) | (v9[28] << 24) | (v9[29] << 16) | (v9[30] << 8)) + v9[31]];
  }

  else
  {
    v10 = [v6 objectForKey:&unk_28666A658];
    if ([v10 length] == 16)
    {
      v11 = [v8 bytes];
      [v3 setNowPlayingDatabaseID:bswap32(*v11)];
      [v3 setNowPlayingContainerID:bswap32(v11[1])];
      [v3 setNowPlayingContainerItemID:bswap32(v11[2])];
      [v3 setNowPlayingItemID:bswap32(v11[3])];
    }
  }

  [v3 setPlayStatusInformation:v6];

  return v3;
}

- (HSPlayStatusUpdateRequest)initWithInterfaceID:(unsigned int)a3 revisionID:(unsigned int)a4
{
  v4 = *&a4;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/%u/%s", "ctrl-int", *&a3, "playstatusupdate"];
  v8 = [(HSRequest *)self initWithAction:v7];

  if (v8)
  {
    v8->_interfaceID = a3;
    v8->_revisionID = v4;
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v4];
    [(HSRequest *)v8 setValue:v9 forArgument:@"revision-number"];
  }

  return v8;
}

@end