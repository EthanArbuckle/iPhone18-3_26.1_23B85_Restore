@interface KCSRPContext
+ (id)createWithUser:(id)user digestInfo:(const ccdigest_info *)info group:(ccdh_gp *)group randomSource:(ccrng_state *)source;
- (BOOL)isAuthenticated;
- (KCSRPContext)initWithUser:(id)user digestInfo:(const ccdigest_info *)info group:(ccdh_gp *)group randomSource:(ccrng_state *)source;
- (const)userNameString;
- (id)getKey;
- (void)dealloc;
@end

@implementation KCSRPContext

- (BOOL)isAuthenticated
{
  context = [(KCSRPContext *)self context];

  return MEMORY[0x282201A08](context);
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

- (KCSRPContext)initWithUser:(id)user digestInfo:(const ccdigest_info *)info group:(ccdh_gp *)group randomSource:(ccrng_state *)source
{
  userCopy = user;
  v13.receiver = self;
  v13.super_class = KCSRPContext;
  v10 = [(KCSRPContext *)&v13 init];
  if (v10)
  {
    v11 = ccdh_ccn_size();
    [(KCSRPContext *)v10 setContext:malloc_type_malloc(4 * (info->var0 + v11) + 48, 0x106004070A5FD05uLL)];
    [(KCSRPContext *)v10 context];
    ccsrp_ctx_init();
    [(KCSRPContext *)v10 setUser:userCopy];
    [(KCSRPContext *)v10 setRng:source];
  }

  return v10;
}

- (const)userNameString
{
  user = [(KCSRPContext *)self user];
  v3 = [user cStringUsingEncoding:4];

  return v3;
}

+ (id)createWithUser:(id)user digestInfo:(const ccdigest_info *)info group:(ccdh_gp *)group randomSource:(ccrng_state *)source
{
  userCopy = user;
  v11 = [[self alloc] initWithUser:userCopy digestInfo:info group:group randomSource:source];

  return v11;
}

@end