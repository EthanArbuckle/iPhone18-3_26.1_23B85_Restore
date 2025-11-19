@interface MCMClientIdentity
+ (id)anonymousPrivilegedClientIdentityWithUserIdentity:(id)a3;
+ (id)privilegedClientIdentityWithUserIdentity:(id)a3 kernel:(BOOL)a4;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)cached;
- (BOOL)isAllowedToAccessCodesignMapping;
- (BOOL)isAllowedToAccessInfoMetadata;
- (BOOL)isAllowedToAccessUserAssets;
- (BOOL)isAllowedToChangeReferences;
- (BOOL)isAllowedToCheckAuthorization;
- (BOOL)isAllowedToControlCaches;
- (BOOL)isAllowedToDelete;
- (BOOL)isAllowedToReadReferences;
- (BOOL)isAllowedToRecreateContainerStructure;
- (BOOL)isAllowedToRegenerateDirectoryUUIDs;
- (BOOL)isAllowedToReplaceContainers;
- (BOOL)isAllowedToRestoreContainer;
- (BOOL)isAllowedToSetDataProtection;
- (BOOL)isAllowedToStageSharedContent;
- (BOOL)isAllowedToStartDataMigration;
- (BOOL)isAllowedToStartUserDataMigration;
- (BOOL)isAllowedToTest;
- (BOOL)isKernel;
- (BOOL)isSandboxed;
- (BOOL)isTestClient;
- (MCMAllowsOperation)entitlementAllowance;
- (MCMClientCodeSignInfo)codeSignInfo;
- (MCMClientHasEntitlementsAllowingOperation)proximateClient;
- (MCMClientIdentity)init;
- (MCMClientIdentity)initWithPOSIXUser:(id)a3 POSIXPID:(int)a4 platform:(unsigned int)a5 userIdentity:(id)a6 proximateClient:(id)a7 auditToken:(id *)a8 codeSignInfo:(id)a9 sandboxed:(BOOL)a10 sandboxContainerURL:(id)a11 testClient:(BOOL)a12 kernel:(BOOL)a13;
- (MCMPOSIXUser)posixUser;
- (MCMUserIdentity)userIdentity;
- (NSString)description;
- (NSURL)sandboxContainerURL;
- (container_client)createLibsystemClient;
- (id)clientIdentityByChangingCached:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initInternal;
- (id)shortDescription;
- (int)posixPID;
- (unint64_t)isAllowedToPerformOperationType:(unint64_t)a3 containerIdentity:(id)a4 part:(unint64_t)a5 partDomain:(id)a6 access:(unint64_t)a7;
- (unint64_t)isAllowedToPerformOperationType:(unint64_t)a3 forAllContainersOfContainerConfig:(id)a4 part:(unint64_t)a5 partDomain:(id)a6 access:(unint64_t)a7;
- (unsigned)platform;
@end

@implementation MCMClientIdentity

- (id)initInternal
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = MCMClientIdentity;
  result = [(MCMClientIdentity *)&v4 init];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (MCMClientCodeSignInfo)codeSignInfo
{
  result = self->_codeSignInfo;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)cached
{
  result = self->_cached;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)platform
{
  result = self->_platform;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMUserIdentity)userIdentity
{
  result = self->_userIdentity;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *MEMORY[0x1E69E9840];
  v4 = *&self[2].var0[6];
  *retstr->var0 = *&self[2].var0[2];
  *&retstr->var0[4] = v4;
  return self;
}

- (MCMClientHasEntitlementsAllowingOperation)proximateClient
{
  if (self->_proximateClient)
  {
    self = self->_proximateClient;
  }

  v2 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  return self;
}

- (MCMAllowsOperation)entitlementAllowance
{
  v5 = *MEMORY[0x1E69E9840];
  codeSignInfo = self->_codeSignInfo;
  v3 = *MEMORY[0x1E69E9840];

  return [(MCMClientCodeSignInfo *)codeSignInfo entitlements];
}

- (id)shortDescription
{
  v7[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__MCMClientIdentity_shortDescription__block_invoke;
  v7[3] = &unk_1E86B1128;
  v7[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v7];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __37__MCMClientIdentity_shortDescription__block_invoke(uint64_t a1, int a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v45 = MEMORY[0x1E696AEC0];
  v50 = [*(a1 + 32) codeSignInfo];
  v4 = [v50 identifier];
  v5 = v4;
  v6 = v4;
  if (a2)
  {
    v6 = [v4 redactedDescription];
  }

  v7 = *(a1 + 32);
  v8 = v7[2];
  v47 = v8;
  if (v8)
  {
    v9 = MEMORY[0x1E696AEC0];
    v33 = [v8 codeSignInfo];
    v32 = [v33 identifier];
    v52 = [v9 stringWithFormat:@"(%@)", v32];
    v7 = *(a1 + 32);
  }

  else
  {
    v52 = &stru_1F5A5B2B8;
  }

  v46 = [v7 codeSignInfo];
  v10 = [v46 teamIdentifier];
  v11 = v10;
  v48 = v6;
  v44 = v10;
  if (a2)
  {
    v12 = [v10 redactedDescription];
    v42 = [*(a1 + 32) userIdentity];
    v31 = [v42 shortDescription];
    v51 = [v31 redactedDescription];
    v41 = v12;
    v43 = v12;
  }

  else
  {
    v43 = [*(a1 + 32) userIdentity];
    [v43 shortDescription];
    v51 = v41 = v11;
    v42 = v51;
  }

  v49 = v5;
  v40 = [*(a1 + 32) posixUser];
  v38 = [v40 UID];
  v37 = [*(a1 + 32) posixPID];
  v36 = [*(a1 + 32) isSandboxed];
  v35 = [*(a1 + 32) platform];
  v39 = [*(a1 + 32) codeSignInfo];
  v34 = [v39 isSigned];
  v13 = [*(a1 + 32) codeSignInfo];
  v14 = [v13 isSignatureValid];
  v15 = [*(a1 + 32) codeSignInfo];
  v16 = [v15 isPlatformBinary];
  v17 = [*(a1 + 32) sandboxContainerURL];
  v18 = [v17 path];
  v19 = v18;
  v20 = v18;
  if (a2)
  {
    v20 = [v18 redactedDescription];
  }

  if ([*(a1 + 32) cached])
  {
    v21 = ", cached";
  }

  else
  {
    v21 = "";
  }

  v22 = [*(a1 + 32) codeSignInfo];
  v23 = [v22 cached];
  v24 = ", cs cached";
  if (!v23)
  {
    v24 = "";
  }

  v25 = [v45 stringWithFormat:@"<%@%@/%@, u=%@, uid=%u, pid=%u, sandboxed=%d, platform=%d (%d/%d/%d) [%@]%s%s>", v48, v52, v41, v51, v38, v37, v36, v35, v34, v14, v16, v20, v21, v24];

  if (a2)
  {

    v19 = v15;
    v17 = v13;
    v15 = v39;
    v13 = v40;
    v26 = v49;
    v27 = v31;
    v28 = v51;
  }

  else
  {
    v28 = v39;
    v27 = v40;
    v26 = v49;
  }

  if (v47)
  {
  }

  if (a2)
  {
  }

  v29 = *MEMORY[0x1E69E9840];

  return v25;
}

- (MCMPOSIXUser)posixUser
{
  result = self->_posixUser;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (int)posixPID
{
  result = self->_posixPID;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isSandboxed
{
  result = self->_sandboxed;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSURL)sandboxContainerURL
{
  result = self->_sandboxContainerURL;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isKernel
{
  result = self->_kernel;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isTestClient
{
  result = self->_testClient;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)description
{
  v7[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__MCMClientIdentity_description__block_invoke;
  v7[3] = &unk_1E86B1128;
  v7[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v7];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __32__MCMClientIdentity_description__block_invoke(uint64_t a1, int a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v51 = MEMORY[0x1E696AEC0];
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v56 = NSStringFromClass(v5);
  v6 = *(*(a1 + 32) + 16);
  v55 = v6;
  v49 = *(a1 + 32);
  if (v6)
  {
    v7 = MEMORY[0x1E696AEC0];
    v36 = [v6 codeSignInfo];
    v35 = [v36 identifier];
    v8 = [v7 stringWithFormat:@"(via [%@]) ", v35];
  }

  else
  {
    v8 = &stru_1F5A5B2B8;
  }

  v53 = [*(a1 + 32) codeSignInfo];
  v9 = [v53 identifier];
  v10 = v9;
  v54 = v8;
  v52 = v9;
  if (a2)
  {
    v11 = [v9 redactedDescription];
    v50 = [*(a1 + 32) codeSignInfo];
    v48 = [v50 teamIdentifier];
    v12 = [v48 redactedDescription];
    v34 = [*(a1 + 32) userIdentity];
    v45 = [v34 redactedDescription];
    v33 = [*(a1 + 32) posixUser];
    v57 = [v33 redactedDescription];
    v44 = v11;
    v46 = v12;
    v47 = v11;
    v43 = v12;
  }

  else
  {
    v47 = [*(a1 + 32) codeSignInfo];
    v13 = [v47 teamIdentifier];
    v14 = [*(a1 + 32) userIdentity];
    [*(a1 + 32) posixUser];
    v44 = v10;
    v45 = v14;
    v48 = v14;
    v50 = v13;
    v57 = v43 = v13;
    v46 = v57;
  }

  v40 = [*(a1 + 32) posixPID];
  v39 = [*(a1 + 32) isSandboxed];
  v38 = [*(a1 + 32) platform];
  v42 = [*(a1 + 32) codeSignInfo];
  if ([v42 isSigned])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  v37 = v15;
  v41 = [*(a1 + 32) codeSignInfo];
  if ([v41 isSignatureValid])
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  v17 = [*(a1 + 32) codeSignInfo];
  if ([v17 isPlatformBinary])
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  v19 = [*(a1 + 32) sandboxContainerURL];
  v20 = [v19 path];
  v21 = v20;
  v22 = v20;
  v23 = a2;
  if (a2)
  {
    v22 = [v20 redactedDescription];
  }

  if ([*(a1 + 32) cached])
  {
    v24 = ", cached";
  }

  else
  {
    v24 = "";
  }

  v25 = [*(a1 + 32) codeSignInfo];
  v26 = [v25 cached];
  v27 = ", cs cached";
  if (!v26)
  {
    v27 = "";
  }

  v28 = v45;
  v29 = [v51 stringWithFormat:@"<%@: %p %@identifier = %@, teamIdentifier = %@, userIdentity = %@, posixUser = %@, posixPID = %u, isSandboxed = %d, platform = %d, isSigned = %@, isSignatureValid = %@, isPlatformBinary = %@, sandboxContainerURL = [%@]%s%s>", v56, v49, v54, v44, v43, v45, v57, v40, v39, v38, v37, v16, v18, v22, v24, v27];;

  if (v23)
  {

    v21 = v42;
    v17 = v33;
    v30 = v34;
    v19 = v57;
  }

  else
  {
    v28 = v41;
    v30 = v42;
  }

  if (v55)
  {
  }

  v31 = *MEMORY[0x1E69E9840];

  return v29;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initInternal"}];
  v5 = v4;
  if (v4)
  {
    *(v4 + 28) = self->_posixPID;
    objc_storeStrong((v4 + 40), self->_posixUser);
    *(v5 + 24) = self->_sandboxed;
    v6 = *self->_auditToken.val;
    *(v5 + 88) = *&self->_auditToken.val[4];
    *(v5 + 72) = v6;
    objc_storeStrong((v5 + 16), self->_proximateClient);
    objc_storeStrong((v5 + 48), self->_userIdentity);
    *(v5 + 25) = self->_kernel;
    *(v5 + 32) = self->_platform;
    objc_storeStrong((v5 + 56), self->_sandboxContainerURL);
    objc_storeStrong((v5 + 64), self->_codeSignInfo);
    *(v5 + 26) = self->_cached;
    *(v5 + 8) = self->_testClient;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isAllowedToCheckAuthorization
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [(MCMClientIdentity *)self codeSignInfo];
  v3 = [v2 entitlements];
  v4 = [v3 isAllowedToCheckAuthorization];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)isAllowedToChangeReferences
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [(MCMClientIdentity *)self codeSignInfo];
  v3 = [v2 entitlements];
  v4 = [v3 isAllowedToChangeReferences];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)isAllowedToReadReferences
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [(MCMClientIdentity *)self codeSignInfo];
  v3 = [v2 entitlements];
  v4 = [v3 isAllowedToReadReferences];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)isAllowedToAccessUserAssets
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [(MCMClientIdentity *)self codeSignInfo];
  v3 = [v2 entitlements];
  v4 = [v3 isAllowedToAccessUserAssets];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)isAllowedToStageSharedContent
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [(MCMClientIdentity *)self codeSignInfo];
  v3 = [v2 entitlements];
  v4 = [v3 isAllowedToStageSharedContent];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)isAllowedToStartUserDataMigration
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [(MCMClientIdentity *)self codeSignInfo];
  v3 = [v2 entitlements];
  v4 = [v3 isAllowedToStartUserDataMigration];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)isAllowedToStartDataMigration
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [(MCMClientIdentity *)self codeSignInfo];
  v3 = [v2 entitlements];
  v4 = [v3 isAllowedToStartDataMigration];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)isAllowedToRestoreContainer
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [(MCMClientIdentity *)self codeSignInfo];
  v3 = [v2 entitlements];
  v4 = [v3 isAllowedToRestoreContainer];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)isAllowedToSetDataProtection
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [(MCMClientIdentity *)self codeSignInfo];
  v3 = [v2 entitlements];
  v4 = [v3 isAllowedToSetDataProtection];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)isAllowedToAccessCodesignMapping
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [(MCMClientIdentity *)self codeSignInfo];
  v3 = [v2 entitlements];
  v4 = [v3 isAllowedToAccessCodesignMapping];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)isAllowedToTest
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [(MCMClientIdentity *)self codeSignInfo];
  v3 = [v2 entitlements];
  v4 = [v3 isAllowedToTest];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)isAllowedToDelete
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [(MCMClientIdentity *)self codeSignInfo];
  v3 = [v2 entitlements];
  v4 = [v3 isAllowedToDelete];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)isAllowedToRegenerateDirectoryUUIDs
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [(MCMClientIdentity *)self codeSignInfo];
  v3 = [v2 entitlements];
  v4 = [v3 isAllowedToRegenerateDirectoryUUIDs];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)isAllowedToRecreateContainerStructure
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [(MCMClientIdentity *)self codeSignInfo];
  v3 = [v2 entitlements];
  v4 = [v3 isAllowedToRecreateContainerStructure];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)isAllowedToAccessInfoMetadata
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [(MCMClientIdentity *)self codeSignInfo];
  v3 = [v2 entitlements];
  v4 = [v3 isAllowedToAccessInfoMetadata];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)isAllowedToReplaceContainers
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [(MCMClientIdentity *)self codeSignInfo];
  v3 = [v2 entitlements];
  v4 = [v3 isAllowedToReplaceContainers];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)isAllowedToControlCaches
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [(MCMClientIdentity *)self codeSignInfo];
  v3 = [v2 entitlements];
  v4 = [v3 isAllowedToControlCaches];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (unint64_t)isAllowedToPerformOperationType:(unint64_t)a3 forAllContainersOfContainerConfig:(id)a4 part:(unint64_t)a5 partDomain:(id)a6 access:(unint64_t)a7
{
  v19 = *MEMORY[0x1E69E9840];
  v12 = a6;
  v13 = a4;
  v14 = [(MCMClientIdentity *)self codeSignInfo];
  v15 = [v14 entitlements];
  v16 = [v15 isAllowedToPerformOperationType:a3 forAllContainersOfContainerConfig:v13 part:a5 partDomain:v12 access:a7];

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (unint64_t)isAllowedToPerformOperationType:(unint64_t)a3 containerIdentity:(id)a4 part:(unint64_t)a5 partDomain:(id)a6 access:(unint64_t)a7
{
  v19 = *MEMORY[0x1E69E9840];
  v12 = a6;
  v13 = a4;
  v14 = [(MCMClientIdentity *)self codeSignInfo];
  v15 = [v14 entitlements];
  v16 = [v15 isAllowedToPerformOperationType:a3 containerIdentity:v13 part:a5 partDomain:v12 access:a7];

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)clientIdentityByChangingCached:(BOOL)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = [(MCMClientIdentity *)self copy];
  v4[26] = a3;
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (container_client)createLibsystemClient
{
  v17 = *MEMORY[0x1E69E9840];
  [(MCMClientIdentity *)self isTestClient];
  v16 = [(MCMClientIdentity *)self codeSignInfo];
  v15 = [v16 identifier];
  [v15 UTF8String];
  v14 = [(MCMClientIdentity *)self codeSignInfo];
  v3 = [v14 teamIdentifier];
  [v3 UTF8String];
  [(MCMClientIdentity *)self platform];
  v13 = [(MCMClientIdentity *)self userIdentity];
  v4 = [v13 personaUniqueString];
  [v4 UTF8String];
  v5 = [(MCMClientIdentity *)self posixUser];
  [v5 UID];
  v6 = [(MCMClientIdentity *)self posixUser];
  [v6 primaryGID];
  [(MCMClientIdentity *)self auditToken];
  [(MCMClientIdentity *)self posixPID];
  v7 = [(MCMClientIdentity *)self codeSignInfo];
  [v7 isSigned];
  v8 = [(MCMClientIdentity *)self codeSignInfo];
  [v8 isSignatureValid];
  v9 = [(MCMClientIdentity *)self codeSignInfo];
  [v9 isPlatformBinary];
  v10 = container_client_initializer();

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (MCMClientIdentity)initWithPOSIXUser:(id)a3 POSIXPID:(int)a4 platform:(unsigned int)a5 userIdentity:(id)a6 proximateClient:(id)a7 auditToken:(id *)a8 codeSignInfo:(id)a9 sandboxed:(BOOL)a10 sandboxContainerURL:(id)a11 testClient:(BOOL)a12 kernel:(BOOL)a13
{
  v31 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v19 = a6;
  v29 = a7;
  v28 = a9;
  v20 = a11;
  v30.receiver = self;
  v30.super_class = MCMClientIdentity;
  v21 = [(MCMClientIdentity *)&v30 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_posixUser, a3);
    v22->_posixPID = a4;
    v22->_platform = a5;
    objc_storeStrong(&v22->_userIdentity, a6);
    objc_storeStrong(&v22->_proximateClient, a7);
    v23 = *a8->var0;
    *&v22->_auditToken.val[4] = *&a8->var0[4];
    *v22->_auditToken.val = v23;
    objc_storeStrong(&v22->_codeSignInfo, a9);
    v22->_sandboxed = a10;
    objc_storeStrong(&v22->_sandboxContainerURL, a11);
    v22->_testClient = a12;
    v22->_kernel = a13;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v22;
}

- (MCMClientIdentity)init
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = container_log_handle_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    *v6 = 0;
    _os_log_fault_impl(&dword_1DF2C3000, v3, OS_LOG_TYPE_FAULT, "You cannot init this class directly.", v6, 2u);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

+ (id)privilegedClientIdentityWithUserIdentity:(id)a3 kernel:(BOOL)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v6 = a3;
  container_codesign_get_self_audit_token();
  v7 = [MCMEntitlements alloc];
  v8 = containermanager_copy_global_configuration();
  v9 = [v8 staticConfig];
  v10 = [v9 containerConfigMap];
  v11 = [(MCMEntitlements *)v7 initWithEntitlements:&unk_1F5A759B0 clientIdentifier:@"com.apple.containermanagerd" containerConfigMap:v10];

  v12 = [MCMClientCodeSignInfo alloc];
  v13 = objc_opt_new();
  v14 = [(MCMClientCodeSignInfo *)v12 initWithCDHash:v13 entitlements:v11 identifier:@"com.apple.containermanagerd" teamIdentifier:0 status:7];

  v15 = [a1 alloc];
  v16 = containermanager_copy_global_configuration();
  v17 = [v16 currentUser];
  v18 = getpid();
  *buf = 0u;
  v26 = 0u;
  BYTE1(v24) = a4;
  LOBYTE(v24) = 0;
  LOBYTE(v23) = 0;
  v19 = [v15 initWithPOSIXUser:v17 POSIXPID:v18 platform:dyld_get_active_platform() userIdentity:v6 proximateClient:0 auditToken:buf codeSignInfo:v14 sandboxed:v23 sandboxContainerURL:0 testClient:v24 kernel:?];

  if (!v19)
  {
    v20 = container_log_handle_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_FAULT, "Could not generate privileged client", buf, 2u);
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (id)anonymousPrivilegedClientIdentityWithUserIdentity:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  return [a1 privilegedClientIdentityWithUserIdentity:a3 kernel:0];
}

@end