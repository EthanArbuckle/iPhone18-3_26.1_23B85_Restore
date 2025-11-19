@interface IMDClientRequestContext
+ (IMDClientRequestContext)currentContext;
+ (void)setCurrentContext:(id)a3;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (IMDClientRequestContext)initWithListenerID:(id)a3 auditToken:(id *)a4 capabilities:(unint64_t)a5 replyProxy:(id)a6;
@end

@implementation IMDClientRequestContext

+ (IMDClientRequestContext)currentContext
{
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];
  v4 = [v3 objectForKeyedSubscript:@"com.apple.messages.IMDClientRequestContext.currentContext"];

  if (!v4)
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"No instance IMDClientRequestContext available for current thread userInfo:{-currentContext caller may not be within a client request handler", 0}];
    objc_exception_throw(v6);
  }

  return v4;
}

+ (void)setCurrentContext:(id)a3
{
  v3 = MEMORY[0x277CCACC8];
  v4 = a3;
  v6 = [v3 currentThread];
  v5 = [v6 threadDictionary];
  [v5 setObject:v4 forKeyedSubscript:@"com.apple.messages.IMDClientRequestContext.currentContext"];
}

- (IMDClientRequestContext)initWithListenerID:(id)a3 auditToken:(id *)a4 capabilities:(unint64_t)a5 replyProxy:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [(IMDClientRequestContext *)self init];
  if (v12)
  {
    v13 = [v10 copy];
    listenerID = v12->_listenerID;
    v12->_listenerID = v13;

    v12->_capabilities = a5;
    objc_storeStrong(&v12->_replyProxy, a6);
    v15 = *&a4->var0[4];
    *v12->_auditToken.val = *a4->var0;
    *&v12->_auditToken.val[4] = v15;
  }

  return v12;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[1].var0[4];
  *retstr->var0 = *self[1].var0;
  *&retstr->var0[4] = v3;
  return self;
}

@end