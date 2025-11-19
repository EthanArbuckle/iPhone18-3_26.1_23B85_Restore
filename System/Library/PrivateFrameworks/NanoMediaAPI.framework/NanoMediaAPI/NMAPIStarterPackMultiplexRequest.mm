@interface NMAPIStarterPackMultiplexRequest
- (id)copyWithZone:(_NSZone *)a3;
- (id)urlComponentsWithStoreURLBag:(id)a3 error:(id *)a4;
@end

@implementation NMAPIStarterPackMultiplexRequest

- (id)urlComponentsWithStoreURLBag:(id)a3 error:(id *)a4
{
  v21[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MusicURLPathStorefrontWithURLBag(v6);
  if (v7)
  {
    v8 = [v6 dictionaryForBagKey:*MEMORY[0x277D7F9E8]];
    if (self->_underageUser)
    {
      v9 = MediaAPIStarterPackUnder13MultiplexBagKey;
    }

    else
    {
      v9 = MediaAPIStarterPackOver13MultiplexBagKey;
    }

    v10 = *v9;
    v11 = [v8 objectForKey:v10];
    if (v11)
    {
      v20.receiver = self;
      v20.super_class = NMAPIStarterPackMultiplexRequest;
      v12 = [(NMAPIRequest *)&v20 urlComponentsWithStoreURLBag:v6 error:a4];
      v13 = MEMORY[0x277CCACA8];
      v21[0] = @"/v1/editorial";
      v21[1] = v7;
      v21[2] = @"multiplex";
      v21[3] = v11;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
      v15 = [v13 pathWithComponents:v14];
      [v12 setPath:v15];
    }

    else
    {
      v17 = NMLogForCategory(9);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [NMAPIStarterPackMultiplexRequest urlComponentsWithStoreURLBag:v10 error:v17];
      }

      if (a4)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7201 userInfo:0];
        *a4 = v12 = 0;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v16 = NMLogForCategory(9);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [NMAPIRadioRequest urlComponentsWithStoreURLBag:v16 error:?];
    }

    if (a4)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7201 userInfo:0];
      *a4 = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = NMAPIStarterPackMultiplexRequest;
  result = [(NMAPIRequest *)&v5 copyWithZone:a3];
  if (result)
  {
    *(result + 128) = self->_underageUser;
  }

  return result;
}

- (void)urlComponentsWithStoreURLBag:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25B251000, a2, OS_LOG_TYPE_ERROR, "[NMAPIRequest] Missing musicStarterPack bag key: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end