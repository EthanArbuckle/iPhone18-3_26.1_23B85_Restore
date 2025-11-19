@interface KCSRPContext
+ (id)createWithUser:(id)a3 digestInfo:(const ccdigest_info *)a4 group:(ccdh_gp *)a5 randomSource:(ccrng_state *)a6;
- (BOOL)isAuthenticated;
- (KCSRPContext)initWithUser:(id)a3 digestInfo:(const ccdigest_info *)a4 group:(ccdh_gp *)a5 randomSource:(ccrng_state *)a6;
- (const)userNameString;
- (id)getKey;
- (void)dealloc;
@end

@implementation KCSRPContext

- (BOOL)isAuthenticated
{
  v2 = [(KCSRPContext *)self context];

  return MEMORY[0x282201A08](v2);
}

- (id)getKey
{
  [(KCSRPContext *)self context];
  session_key = ccsrp_get_session_key();
  if (session_key)
  {
    session_key = [MEMORY[0x277CBEA90] _newZeroingDataWithBytes:session_key length:0];
  }

  return session_key;
}

- (void)dealloc
{
  v3 = [(KCSRPContext *)self context][8];
  v4 = ccdh_ccn_size();
  v5 = **[(KCSRPContext *)self context]+ v4;
  [(KCSRPContext *)self context];
  cc_clear();
  free([(KCSRPContext *)self context]);
  v6.receiver = self;
  v6.super_class = KCSRPContext;
  [(KCSRPContext *)&v6 dealloc];
}

- (KCSRPContext)initWithUser:(id)a3 digestInfo:(const ccdigest_info *)a4 group:(ccdh_gp *)a5 randomSource:(ccrng_state *)a6
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = KCSRPContext;
  v10 = [(KCSRPContext *)&v13 init];
  if (v10)
  {
    v11 = ccdh_ccn_size();
    [(KCSRPContext *)v10 setContext:malloc_type_malloc(4 * (a4->var0 + v11) + 48, 0x106004070A5FD05uLL)];
    [(KCSRPContext *)v10 context];
    ccsrp_ctx_init();
    [(KCSRPContext *)v10 setUser:v9];
    [(KCSRPContext *)v10 setRng:a6];
  }

  return v10;
}

- (const)userNameString
{
  v2 = [(KCSRPContext *)self user];
  v3 = [v2 cStringUsingEncoding:4];

  return v3;
}

+ (id)createWithUser:(id)a3 digestInfo:(const ccdigest_info *)a4 group:(ccdh_gp *)a5 randomSource:(ccrng_state *)a6
{
  v10 = a3;
  v11 = [[a1 alloc] initWithUser:v10 digestInfo:a4 group:a5 randomSource:a6];

  return v11;
}

@end