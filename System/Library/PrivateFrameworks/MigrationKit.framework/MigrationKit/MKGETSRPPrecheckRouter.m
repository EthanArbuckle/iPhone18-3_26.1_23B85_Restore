@interface MKGETSRPPrecheckRouter
- (MKGETSRPPrecheckRouter)initWithPrecheck:(id)a3;
- (void)server:(id)a3 didReceiveRequest:(id)a4 response:(id)a5;
@end

@implementation MKGETSRPPrecheckRouter

- (MKGETSRPPrecheckRouter)initWithPrecheck:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MKGETSRPPrecheckRouter;
  v6 = [(MKGETSRPPrecheckRouter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_precheck, a3);
  }

  return v7;
}

- (void)server:(id)a3 didReceiveRequest:(id)a4 response:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [v7 hostname];
  if ([v9 length])
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v11 = [(MKSRPPrecheck *)self->_precheck serverForKey:v9];
    if (v11)
    {
      v12 = v11;
      v13 = +[MKLog log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v7 hostname];
        *buf = 138477827;
        v24 = v14;
        _os_log_impl(&dword_2592D2000, v13, OS_LOG_TYPE_INFO, "srp for hostname is currently being used. hostname=%{private}@", buf, 0xCu);
      }

      v15 = 0;
    }

    else
    {
      [(MKSRPPrecheck *)self->_precheck setServerForKey:v9];
      v12 = [(MKSRPPrecheck *)self->_precheck serverForKey:v9];
      v21 = 0;
      v22 = 0;
      [v12 generateSalt:&v22 pubkey:&v21];
      v13 = v22;
      v16 = v21;
      if (-[NSObject length](v13, "length") && [v16 length])
      {
        [v10 setObject:v13 forKeyedSubscript:@"salt"];
        [v10 setObject:v16 forKeyedSubscript:@"pubkey"];
        v15 = 1;
      }

      else
      {
        v17 = +[MKLog log];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [MKGETSRPPrecheckRouter server:v17 didReceiveRequest:? response:?];
        }

        [(MKSRPPrecheck *)self->_precheck removeServerForKey:v9];
        v15 = 0;
      }
    }

    v18 = [MEMORY[0x277CCABB0] numberWithBool:v15];
    [v10 setObject:v18 forKeyedSubscript:@"success"];

    v19 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v10 options:0 error:0];
    [v8 setBody:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end