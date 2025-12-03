@interface FSAuditToken
+ ($115C4C562B26FF47E01F9F4EA65B5887)getOurToken;
+ (id)token;
+ (id)tokenWithData:(id)data;
+ (id)tokenWithToken:(id *)token;
- ($115C4C562B26FF47E01F9F4EA65B5887)audit_token;
- (FSAuditToken)init;
- (FSAuditToken)initWithCoder:(id)coder;
- (FSAuditToken)initWithToken:(id *)token;
- (FSAuditToken)tokenWithRuid:(unsigned int)ruid;
- (int)pid;
- (int)pidversion;
- (unsigned)egid;
- (unsigned)euid;
- (unsigned)rgid;
- (unsigned)ruid;
@end

@implementation FSAuditToken

+ ($115C4C562B26FF47E01F9F4EA65B5887)getOurToken
{
  if (getOurToken_onceToken != -1)
  {
    +[FSAuditToken getOurToken];
  }

  v4 = unk_280BCA050;
  *retstr->var0 = getOurToken_ourToken;
  *&retstr->var0[4] = v4;
  return result;
}

uint64_t __27__FSAuditToken_getOurToken__block_invoke()
{
  task_info_outCnt = 8;
  if (task_info(*MEMORY[0x277D85F48], 0xFu, getOurToken_ourToken, &task_info_outCnt))
  {
    v0 = fskit_std_log();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      LOWORD(v2.val[0]) = 0;
      _os_log_impl(&dword_24A929000, v0, OS_LOG_TYPE_INFO, "Error getting our own audit token", &v2, 2u);
    }
  }

  v2 = *getOurToken_ourToken;
  audit_token_to_pid(&v2);
  v2 = *getOurToken_ourToken;
  audit_token_to_pidversion(&v2);
  v2 = *getOurToken_ourToken;
  result = audit_token_to_ruid(&v2);
  ourUID = result;
  didSetup = 1;
  return result;
}

- (FSAuditToken)initWithToken:(id *)token
{
  v8.receiver = self;
  v8.super_class = FSAuditToken;
  v4 = [(FSAuditToken *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v6 = *token->var0;
    *(v4 + 24) = *&token->var0[4];
    *(v4 + 8) = v6;
    if ((didSetup & 1) == 0)
    {
      [objc_opt_class() getOurToken];
    }
  }

  return v5;
}

- (FSAuditToken)init
{
  v5 = 0u;
  v6 = 0u;
  v3 = objc_opt_class();
  if (v3)
  {
    [v3 getOurToken];
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  return [(FSAuditToken *)self initWithToken:&v5];
}

+ (id)token
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)tokenWithToken:(id *)token
{
  v3 = [[self alloc] initWithToken:token];

  return v3;
}

+ (id)tokenWithData:(id)data
{
  dataCopy = data;
  if ([dataCopy length] == 32)
  {
    v5 = [[self alloc] initWithToken:{objc_msgSend(dataCopy, "bytes")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (FSAuditToken)tokenWithRuid:(unsigned int)ruid
{
  v4 = [objc_alloc(objc_opt_class()) initWithToken:&self->_token];
  v4[5] = ruid;

  return v4;
}

- (unsigned)euid
{
  v2 = *&self->_token.val[4];
  *v4.val = *self->_token.val;
  *&v4.val[4] = v2;
  return audit_token_to_euid(&v4);
}

- (unsigned)egid
{
  v2 = *&self->_token.val[4];
  *v4.val = *self->_token.val;
  *&v4.val[4] = v2;
  return audit_token_to_egid(&v4);
}

- (unsigned)ruid
{
  v2 = *&self->_token.val[4];
  *v4.val = *self->_token.val;
  *&v4.val[4] = v2;
  return audit_token_to_ruid(&v4);
}

- (unsigned)rgid
{
  v2 = *&self->_token.val[4];
  *v4.val = *self->_token.val;
  *&v4.val[4] = v2;
  return audit_token_to_rgid(&v4);
}

- (int)pid
{
  v2 = *&self->_token.val[4];
  *v4.val = *self->_token.val;
  *&v4.val[4] = v2;
  return audit_token_to_pid(&v4);
}

- (int)pidversion
{
  v2 = *&self->_token.val[4];
  *v4.val = *self->_token.val;
  *&v4.val[4] = v2;
  return audit_token_to_pidversion(&v4);
}

- ($115C4C562B26FF47E01F9F4EA65B5887)audit_token
{
  v3 = *&self->var0[6];
  *retstr->var0 = *&self->var0[2];
  *&retstr->var0[4] = v3;
  return self;
}

- (FSAuditToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10 = 0;
  v9.receiver = self;
  v9.super_class = FSAuditToken;
  v5 = [(FSAuditToken *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeBytesForKey:@"FSAuditToken.token" returnedLength:&v10];
    if (v10 == 32)
    {
      v7 = *v6;
      *(v5 + 24) = v6[1];
      *(v5 + 8) = v7;
    }

    else
    {

      v5 = 0;
    }

    if ((didSetup & 1) == 0)
    {
      [objc_opt_class() getOurToken];
    }
  }

  return v5;
}

@end