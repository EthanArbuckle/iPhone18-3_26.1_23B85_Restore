@interface HSLoginRequest
+ (id)supportedVideoQualities;
- (HSLoginRequest)initWithAction:(id)a3;
- (id)canonicalResponseForResponse:(id)a3;
@end

@implementation HSLoginRequest

- (id)canonicalResponseForResponse:(id)a3
{
  v3 = [(HSResponse *)HSLoginResponse responseWithResponse:a3];
  v4 = [v3 responseData];
  v5 = [HSResponseDataParser parseResponseData:v4];

  [v3 setSessionID:{objc_msgSend(v5, "unsignedIntValue")}];

  return v3;
}

- (HSLoginRequest)initWithAction:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = HSLoginRequest;
  v3 = [(HSRequest *)&v19 initWithAction:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAB68] string];
    v5 = [objc_opt_class() supportedVideoQualities];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * v9);
          v11 = [v4 length];
          v12 = [v10 intValue];
          if (v11)
          {
            v13 = @",%d";
          }

          else
          {
            v13 = @"%d";
          }

          [v4 appendFormat:v13, v12];
          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v7);
    }

    [(HSRequest *)v3 setValue:v4 forArgument:@"preferredVideoQuality"];
  }

  return v3;
}

+ (id)supportedVideoQualities
{
  if (supportedVideoQualities_onceToken != -1)
  {
    dispatch_once(&supportedVideoQualities_onceToken, &__block_literal_global_489);
  }

  v3 = __videoQualities;

  return v3;
}

void __41__HSLoginRequest_supportedVideoQualities__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v1 = __videoQualities;
  __videoQualities = v0;

  MSVGetMaximumScreenSize();
  if (v2 >= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  if (v4 > 720.0)
  {
    v5 = __videoQualities;
    v6 = [MEMORY[0x277CCABB0] numberWithInt:2];
    [v5 addObject:v6];
  }

  if (v4 > 480.0)
  {
    v7 = __videoQualities;
    v8 = [MEMORY[0x277CCABB0] numberWithInt:1];
    [v7 addObject:v8];
  }

  v9 = __videoQualities;
  v10 = [MEMORY[0x277CCABB0] numberWithInt:0];
  [v9 addObject:v10];
}

@end