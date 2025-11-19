@interface PKAccountWebServiceBalanceHistoryResponse
- (PKAccountWebServiceBalanceHistoryResponse)initWithData:(id)a3;
@end

@implementation PKAccountWebServiceBalanceHistoryResponse

- (PKAccountWebServiceBalanceHistoryResponse)initWithData:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = PKAccountWebServiceBalanceHistoryResponse;
  v3 = [(PKWebServiceResponse *)&v26 initWithData:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v20 = v5;
      v6 = v5;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v7 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v23;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v23 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v22 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = [v11 PKDecimalNumberFromStringForKey:@"balance"];
              v13 = [v11 PKDateForKey:@"date"];
              v14 = v13;
              if (v12)
              {
                v15 = v13 == 0;
              }

              else
              {
                v15 = 1;
              }

              if (!v15)
              {
                v16 = [[PKAccountHistoricalBalance alloc] initWithBalance:v12 date:v13];
                [v21 addObject:v16];
              }
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v8);
      }

      v17 = [v21 copy];
      balances = v4->_balances;
      v4->_balances = v17;

      v5 = v20;
    }
  }

  return v4;
}

@end