@interface NMAPIRadioRequest
- (id)urlComponentsWithStoreURLBag:(id)a3 error:(id *)a4;
@end

@implementation NMAPIRadioRequest

- (id)urlComponentsWithStoreURLBag:(id)a3 error:(id *)a4
{
  v32[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v30.receiver = self;
  v30.super_class = NMAPIRadioRequest;
  v7 = [(NMAPIRequest *)&v30 urlComponentsWithStoreURLBag:v6 error:a4];
  v8 = MusicURLPathStorefrontWithURLBag(v6);
  if (v8)
  {
    v9 = [v6 dictionaryForBagKey:*MEMORY[0x277D7F9E8]];
    v10 = [v9 valueForKeyPath:@"radioTabGroupingName"];
    if (v10)
    {
      v11 = MEMORY[0x277CCACA8];
      v32[0] = @"/v1/editorial";
      v32[1] = v8;
      v32[2] = @"groupings";
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:3];
      v13 = [v11 pathWithComponents:v12];
      [v7 setPath:v13];

      v14 = [v7 queryItems];
      v29 = v9;
      v27 = [MEMORY[0x277CCAD18] queryItemWithName:@"name" value:v10];
      v31[0] = v27;
      v15 = MEMORY[0x277CCAD18];
      [&unk_286C7E468 componentsJoinedByString:{@", "}];
      v16 = v28 = v10;
      v17 = [v15 queryItemWithName:@"include" value:v16];
      v31[1] = v17;
      v18 = [MEMORY[0x277CCAD18] queryItemWithName:@"include[stations]" value:@"events"];
      v31[2] = v18;
      v19 = [MEMORY[0x277CCAD18] queryItemWithName:@"art[url]" value:{@"f, c"}];
      v31[3] = v19;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
      v21 = [v14 arrayByAddingObjectsFromArray:v20];
      [v7 setQueryItems:v21];

      v9 = v29;
      v10 = v28;

      v22 = v7;
    }

    else
    {
      v24 = NMLogForCategory(9);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [NMAPIRadioRequest urlComponentsWithStoreURLBag:v24 error:?];
      }

      if (a4)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7201 userInfo:0];
        *a4 = v22 = 0;
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else
  {
    v23 = NMLogForCategory(9);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [NMAPIRadioRequest urlComponentsWithStoreURLBag:v23 error:?];
    }

    if (a4)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7201 userInfo:0];
      *a4 = v22 = 0;
    }

    else
    {
      v22 = 0;
    }
  }

  v25 = *MEMORY[0x277D85DE8];

  return v22;
}

@end