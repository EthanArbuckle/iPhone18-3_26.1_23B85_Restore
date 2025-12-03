@interface IMDClientRequestContext
+ (IMDClientRequestContext)currentContext;
+ (void)setCurrentContext:(id)context;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (IMDClientRequestContext)initWithListenerID:(id)d auditToken:(id *)token capabilities:(unint64_t)capabilities replyProxy:(id)proxy;
@end

@implementation IMDClientRequestContext

+ (IMDClientRequestContext)currentContext
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v4 = [threadDictionary objectForKeyedSubscript:@"com.apple.messages.IMDClientRequestContext.currentContext"];

  if (!v4)
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"No instance IMDClientRequestContext available for current thread userInfo:{-currentContext caller may not be within a client request handler", 0}];
    objc_exception_throw(v6);
  }

  return v4;
}

+ (void)setCurrentContext:(id)context
{
  v3 = MEMORY[0x277CCACC8];
  contextCopy = context;
  currentThread = [v3 currentThread];
  threadDictionary = [currentThread threadDictionary];
  [threadDictionary setObject:contextCopy forKeyedSubscript:@"com.apple.messages.IMDClientRequestContext.currentContext"];
}

- (IMDClientRequestContext)initWithListenerID:(id)d auditToken:(id *)token capabilities:(unint64_t)capabilities replyProxy:(id)proxy
{
  dCopy = d;
  proxyCopy = proxy;
  v12 = [(IMDClientRequestContext *)self init];
  if (v12)
  {
    v13 = [dCopy copy];
    listenerID = v12->_listenerID;
    v12->_listenerID = v13;

    v12->_capabilities = capabilities;
    objc_storeStrong(&v12->_replyProxy, proxy);
    v15 = *&token->var0[4];
    *v12->_auditToken.val = *token->var0;
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