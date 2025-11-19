@interface PKAccountWebServiceSupportTopicsResponse
- (PKAccountWebServiceSupportTopicsResponse)initWithData:(id)a3;
@end

@implementation PKAccountWebServiceSupportTopicsResponse

- (PKAccountWebServiceSupportTopicsResponse)initWithData:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = PKAccountWebServiceSupportTopicsResponse;
  v3 = [(PKWebServiceResponse *)&v23 initWithData:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 PKArrayForKey:@"topics"];
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v20;
        do
        {
          v12 = 0;
          do
          {
            if (*v20 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v19 + 1) + 8 * v12);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [PKAccountSupportTopic alloc];
              v15 = [(PKAccountSupportTopic *)v14 initWithDictionary:v13, v19];
              if (v15)
              {
                [v7 addObject:v15];
              }
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v10);
      }

      v16 = [v7 copy];
      topics = v4->_topics;
      v4->_topics = v16;
    }
  }

  return v4;
}

@end