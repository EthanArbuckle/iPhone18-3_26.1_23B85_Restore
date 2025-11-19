@interface MKPOSTSRPPrecheckRouter
- (MKPOSTSRPPrecheckRouter)initWithPrecheck:(id)a3;
- (void)server:(id)a3 didReceiveRequest:(id)a4 response:(id)a5;
@end

@implementation MKPOSTSRPPrecheckRouter

- (MKPOSTSRPPrecheckRouter)initWithPrecheck:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MKPOSTSRPPrecheckRouter;
  v6 = [(MKPOSTSRPPrecheckRouter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_precheck, a3);
  }

  return v7;
}

- (void)server:(id)a3 didReceiveRequest:(id)a4 response:(id)a5
{
  v27[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [v7 hostname];
  if ([v9 length])
  {
    v10 = [(MKSRPPrecheck *)self->_precheck serverForKey:v9];
    if (v10)
    {
      v11 = [v7 body];
      if ([v11 length])
      {
        v25 = 0;
        v12 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v11 options:0 error:&v25];
        v13 = v25;
        v24 = v10;
        if (v13)
        {
          v23 = v12;
          v14 = +[MKLog log];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            [MKPOSTSRPPrecheckRouter server:v13 didReceiveRequest:v14 response:?];
          }

          v15 = 0;
          v16 = v23;
        }

        else
        {
          v14 = [v12 objectForKey:@"pubkey"];
          v17 = [v12 objectForKey:@"proof"];
          v18 = [v10 generateSharedKey:v14 proofOfMatch:v17];
          v16 = v12;
          v15 = v18 != 0;
        }

        v10 = v24;
      }

      else
      {
        v13 = +[MKLog log];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [MKGETSRPPrecheckRouter server:v13 didReceiveRequest:? response:?];
        }

        v15 = 0;
      }
    }

    else
    {
      v11 = +[MKLog log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [MKPOSTSRPPrecheckRouter server:v11 didReceiveRequest:? response:?];
      }

      v15 = 0;
    }

    v26 = @"success";
    v19 = [MEMORY[0x277CCABB0] numberWithBool:v15];
    v27[0] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];

    v21 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v20 options:0 error:0];
    [v8 setBody:v21];
    [(MKSRPPrecheck *)self->_precheck removeServerForKey:v9];
  }

  v22 = *MEMORY[0x277D85DE8];
}

@end