@interface HMFProcessInfo
+ (HMFProcessInfo)processInfo;
+ (id)logCategory;
+ (id)processInfoForXPCConnection:(id)connection;
+ (void)bundleIdentifierAndTeamIdentifierFromApplicationIdentifier:(id)identifier bundleIdentifier:(id *)bundleIdentifier teamIdentifier:(id *)teamIdentifier;
- (BOOL)getAuditToken:(id *)token;
- (BOOL)isCodeSigned;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPlatformBinary;
- (HMFProcessInfo)init;
- (HMFProcessInfo)initWithAuditToken:(id *)token;
- (HMFProcessInfo)initWithXPCConnection:(id)connection;
- (NSBundle)mainBundle;
- (id)attributeDescriptions;
- (id)valueForEntitlement:(id)entitlement;
@end

@implementation HMFProcessInfo

+ (HMFProcessInfo)processInfo
{
  if (_MergedGlobals_3_11 != -1)
  {
    dispatch_once(&_MergedGlobals_3_11, &__block_literal_global_30);
  }

  v3 = qword_280AFC3F0;

  return v3;
}

uint64_t __29__HMFProcessInfo_processInfo__block_invoke()
{
  qword_280AFC3F0 = objc_alloc_init(HMFProcessInfo);

  return MEMORY[0x2821F96F8]();
}

- (HMFProcessInfo)init
{
  v16 = *MEMORY[0x277D85DE8];
  *task_info_out = 0u;
  v14 = 0u;
  task_info_outCnt = 8;
  v3 = task_info(*MEMORY[0x277D85F48], 0xFu, task_info_out, &task_info_outCnt);
  if (v3)
  {
    v4 = v3;
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = HMFGetLogIdentifier(selfCopy);
      *buf = 138543618;
      *&buf[4] = v8;
      *&buf[12] = 1024;
      *&buf[14] = v4;
      _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_FAULT, "%{public}@Failed to get audit token for current process: %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v5);
    v9 = 0;
  }

  else
  {
    *buf = *task_info_out;
    *&buf[16] = v14;
    selfCopy = [(HMFProcessInfo *)self initWithAuditToken:buf];
    v9 = selfCopy;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)attributeDescriptions
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = [HMFAttributeDescription alloc];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMFProcessInfo identifier](self, "identifier")}];
  v5 = [(HMFAttributeDescription *)v3 initWithName:@"Identifier" value:v4];
  v6 = [HMFAttributeDescription alloc];
  name = [(HMFProcessInfo *)self name];
  v8 = [(HMFAttributeDescription *)v6 initWithName:@"Name" value:name];
  v15[1] = v8;
  v9 = [HMFAttributeDescription alloc];
  applicationIdentifier = [(HMFProcessInfo *)self applicationIdentifier];
  v11 = [(HMFAttributeDescription *)v9 initWithName:@"Application Identifier" value:applicationIdentifier];
  v15[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)processInfoForXPCConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [[self alloc] initWithXPCConnection:connectionCopy];

  return v5;
}

- (HMFProcessInfo)initWithXPCConnection:(id)connection
{
  if (connection)
  {
    [connection auditToken];
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  return [(HMFProcessInfo *)self initWithAuditToken:v5];
}

- (HMFProcessInfo)initWithAuditToken:(id *)token
{
  v3 = MEMORY[0x28223BE20](self, a2);
  v5 = v4;
  v30 = *MEMORY[0x277D85DE8];
  v28.receiver = v3;
  v28.super_class = HMFProcessInfo;
  v6 = [(HMFProcessInfo *)&v28 init];
  if (v6)
  {
    v7 = v5[1];
    *atoken.val = *v5;
    *&atoken.val[4] = v7;
    v8 = audit_token_to_pid(&atoken);
    *(v6 + 2) = v8;
    if (proc_pidpath(v8, &atoken, 0x1000u) >= 1 && (v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&atoken]) != 0)
    {
      v10 = v9;
      v11 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v9 isDirectory:0];
    }

    else
    {
      v11 = 0;
    }

    v12 = *(v6 + 3);
    *(v6 + 3) = v11;

    executableURL = [v6 executableURL];
    if (executableURL)
    {
      v14 = _CFBundleCopyBundleURLForExecutableURL();
    }

    else
    {
      v14 = 0;
    }

    v15 = *(v6 + 4);
    *(v6 + 4) = v14;

    if (proc_name(*(v6 + 2), &atoken, 0x100u) < 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&atoken];
    }

    v17 = *(v6 + 2);
    *(v6 + 2) = v16;

    v18 = v5[1];
    *(v6 + 72) = *v5;
    *(v6 + 88) = v18;
    v19 = [v6 valueForEntitlement:@"application-identifier"];
    v20 = *(v6 + 5);
    *(v6 + 5) = v19;

    if (*(v6 + 5))
    {
      [objc_opt_class() bundleIdentifierAndTeamIdentifierFromApplicationIdentifier:*(v6 + 5) bundleIdentifier:v6 + 48 teamIdentifier:v6 + 56];
    }

    v21 = v5[1];
    *atoken.val = *v5;
    *&atoken.val[4] = v21;
    v22 = SecTaskCreateWithAuditToken(0, &atoken);
    if (v22)
    {
      v23 = v22;
      v24 = SecTaskCopySigningIdentifier(v22, 0);
      v25 = *(v6 + 8);
      *(v6 + 8) = v24;

      CFRelease(v23);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      identifier = [(HMFProcessInfo *)self identifier];
      v8 = identifier == [(HMFProcessInfo *)v6 identifier];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (NSBundle)mainBundle
{
  mainBundleURL = [(HMFProcessInfo *)self mainBundleURL];
  if (mainBundleURL)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleWithURL:mainBundleURL];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)getAuditToken:(id *)token
{
  if (token)
  {
    v3 = *&self->_auditToken.val[4];
    *token->var0 = *self->_auditToken.val;
    *&token->var0[4] = v3;
  }

  return 1;
}

+ (void)bundleIdentifierAndTeamIdentifierFromApplicationIdentifier:(id)identifier bundleIdentifier:(id *)bundleIdentifier teamIdentifier:(id *)teamIdentifier
{
  identifierCopy = identifier;
  objc_storeStrong(bundleIdentifier, identifier);
  if ([identifierCopy length] >= 0xB && objc_msgSend(identifierCopy, "characterAtIndex:", 10) == 46)
  {
    v8 = [identifierCopy substringWithRange:{0, 10}];
    v9 = 0;
    do
    {
      v10 = [identifierCopy characterAtIndex:v9];
      v12 = (v10 - 65) < 0x1A || (v10 - 48) < 0xA;
      if (v9 > 8)
      {
        break;
      }

      ++v9;
    }

    while (v12);
    if (v12)
    {
      objc_storeStrong(teamIdentifier, v8);
      v13 = [identifierCopy substringWithRange:{11, objc_msgSend(identifierCopy, "length") - 11}];
      v14 = *bundleIdentifier;
      *bundleIdentifier = v13;
    }
  }
}

+ (id)logCategory
{
  if (qword_280AFC3F8 != -1)
  {
    dispatch_once(&qword_280AFC3F8, &__block_literal_global_20);
  }

  v3 = qword_280AFC400;

  return v3;
}

uint64_t __29__HMFProcessInfo_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle(@"ProcessInfo", @"com.apple.HMFoundation");
  v1 = qword_280AFC400;
  qword_280AFC400 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (BOOL)isCodeSigned
{
  identifier = self->_identifier;
  if (csops_audittoken())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isPlatformBinary
{
  identifier = self->_identifier;
  if (csops_audittoken())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

- (id)valueForEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  identifier = self->_identifier;
  v6 = getpid();
  v7 = *MEMORY[0x277CBECE8];
  if (identifier == v6)
  {
    v8 = SecTaskCreateFromSelf(v7);
  }

  else
  {
    v9 = *&self->_auditToken.val[4];
    *v13.val = *self->_auditToken.val;
    *&v13.val[4] = v9;
    v8 = SecTaskCreateWithAuditToken(v7, &v13);
  }

  v10 = v8;
  if (v8)
  {
    v11 = SecTaskCopyValueForEntitlement(v8, entitlementCopy, 0);
    CFRelease(v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end