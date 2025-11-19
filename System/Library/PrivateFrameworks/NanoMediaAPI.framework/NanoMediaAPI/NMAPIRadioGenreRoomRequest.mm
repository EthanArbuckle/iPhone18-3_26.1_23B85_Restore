@interface NMAPIRadioGenreRoomRequest
- (NMAPIRadioGenreRoomRequest)initWithURL:(id)a3;
- (id)_bagRoomURLRegularExpressionWithStoreURLBag:(id)a3;
- (id)_roomIdentifierWithStoreURLBag:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)urlComponentsWithStoreURLBag:(id)a3 error:(id *)a4;
@end

@implementation NMAPIRadioGenreRoomRequest

- (NMAPIRadioGenreRoomRequest)initWithURL:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NMAPIRadioGenreRoomRequest;
  v5 = [(MPStoreModelRequest *)&v8 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Radio Genre Room URL : %@", v4];
    [(NMAPIRadioGenreRoomRequest *)v5 setLabel:v6];

    [(NMAPIRadioGenreRoomRequest *)v5 setURL:v4];
  }

  return v5;
}

- (id)urlComponentsWithStoreURLBag:(id)a3 error:(id *)a4
{
  v25[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v23.receiver = self;
  v23.super_class = NMAPIRadioGenreRoomRequest;
  v7 = [(NMAPIRequest *)&v23 urlComponentsWithStoreURLBag:v6 error:a4];
  v8 = MusicURLPathStorefrontWithURLBag(v6);
  if (v8)
  {
    v9 = [(NMAPIRadioGenreRoomRequest *)self _roomIdentifierWithStoreURLBag:v6];
    v10 = v9;
    if (v9)
    {
      v11 = MEMORY[0x277CCACA8];
      v25[0] = @"/v1/editorial";
      v25[1] = v8;
      v25[2] = @"rooms";
      v25[3] = v9;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
      v13 = [v11 pathWithComponents:v12];
      [v7 setPath:v13];

      v14 = [v7 queryItems];
      v15 = [MEMORY[0x277CCAD18] queryItemWithName:@"art[url]" value:{@"f, c"}];
      v24 = v15;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
      v17 = [v14 arrayByAddingObjectsFromArray:v16];
      [v7 setQueryItems:v17];

      v18 = v7;
    }

    else
    {
      v20 = NMLogForCategory(9);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [NMAPIRadioGenreRoomRequest urlComponentsWithStoreURLBag:error:];
      }

      if (a4)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7201 userInfo:0];
        *a4 = v18 = 0;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v19 = NMLogForCategory(9);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [NMAPIRadioGenreRoomRequest urlComponentsWithStoreURLBag:error:];
    }

    if (a4)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7201 userInfo:0];
      *a4 = v18 = 0;
    }

    else
    {
      v18 = 0;
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_roomIdentifierWithStoreURLBag:(id)a3
{
  v4 = a3;
  v5 = [(NMAPIRadioGenreRoomRequest *)self URL];
  v6 = [v5 absoluteString];

  v7 = [(NMAPIRadioGenreRoomRequest *)self _bagRoomURLRegularExpressionWithStoreURLBag:v4];

  v8 = [v7 matchesInString:v6 options:0 range:{0, objc_msgSend(v6, "length")}];
  v9 = [v8 firstObject];
  v10 = v9;
  if (!v9)
  {
    v14 = NMLogForCategory(9);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [NMAPIRadioGenreRoomRequest _roomIdentifierWithStoreURLBag:];
    }

    goto LABEL_8;
  }

  v11 = [v9 rangeWithName:@"identifier"];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL || ([v6 substringWithRange:{v11, v12}], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v14 = NMLogForCategory(9);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [NMAPIRadioGenreRoomRequest _roomIdentifierWithStoreURLBag:];
    }

LABEL_8:

    v13 = 0;
  }

  return v13;
}

- (id)_bagRoomURLRegularExpressionWithStoreURLBag:(id)a3
{
  v3 = [a3 dictionaryForBagKey:*MEMORY[0x277D7F9E8]];
  if (_NSIsNSDictionary())
  {
    v4 = [v3 objectForKey:@"viewRoomUrlRegex"];
    if (_NSIsNSString())
    {
      v9 = 0;
      v5 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v4 options:0 error:&v9];
      v6 = v9;
      if (v6)
      {
        v7 = NMLogForCategory(9);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [(NMAPIRadioGenreRoomRequest *)v4 _bagRoomURLRegularExpressionWithStoreURLBag:v6, v7];
        }
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = NMAPIRadioGenreRoomRequest;
  v4 = [(NMAPIRequest *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 16, self->_URL);
  }

  return v5;
}

- (void)_roomIdentifierWithStoreURLBag:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_roomIdentifierWithStoreURLBag:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_bagRoomURLRegularExpressionWithStoreURLBag:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_25B251000, log, OS_LOG_TYPE_ERROR, "[NMAPIRequest] Regex cannot be generated from pattern: %{public}@ with error %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end