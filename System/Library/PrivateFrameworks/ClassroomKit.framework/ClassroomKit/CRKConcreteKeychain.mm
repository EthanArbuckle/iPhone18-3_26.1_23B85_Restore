@interface CRKConcreteKeychain
+ (CRKConcreteKeychain)defaultKeychain;
- (CRKConcreteKeychain)initWithBaseQueryAttributes:(id)a3;
- (NSString)description;
- (id)addCertificate:(id)a3 toAccessGroup:(id)a4;
- (id)addIdentity:(id)a3 toAccessGroup:(id)a4;
- (id)addItem:(void *)a3 toAccessGroup:(id)a4;
- (id)addPrivateKey:(id)a3 toAccessGroup:(id)a4;
- (id)makeItemWithPersistentID:(id)a3 itemClass:(id)a4 creationBlock:(id)a5;
- (id)makePasswordFacade;
- (id)passwordForService:(id)a3;
- (void)copyItemWithPersistentID:(id)a3 itemClass:(id)a4;
- (void)removeItemWithPersistentID:(id)a3;
- (void)setPassword:(id)a3 forService:(id)a4 accessGroup:(id)a5;
@end

@implementation CRKConcreteKeychain

+ (CRKConcreteKeychain)defaultKeychain
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CDC5D0];
  v7[0] = *MEMORY[0x277CBED28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [[a1 alloc] initWithBaseQueryAttributes:v3];

  return v4;
}

- (CRKConcreteKeychain)initWithBaseQueryAttributes:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRKConcreteKeychain;
  v5 = [(CRKConcreteKeychain *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    baseQueryAttributes = v5->_baseQueryAttributes;
    v5->_baseQueryAttributes = v6;
  }

  return v5;
}

- (id)addCertificate:(id)a3 toAccessGroup:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = -[CRKConcreteKeychain addItem:toAccessGroup:](self, "addItem:toAccessGroup:", [a3 underlyingCertificate], v8);

  return v9;
}

- (id)addIdentity:(id)a3 toAccessGroup:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = -[CRKConcreteKeychain addItem:toAccessGroup:](self, "addItem:toAccessGroup:", [a3 underlyingIdentity], v8);

  return v9;
}

- (id)addPrivateKey:(id)a3 toAccessGroup:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = -[CRKConcreteKeychain addItem:toAccessGroup:](self, "addItem:toAccessGroup:", [a3 underlyingPrivateKey], v8);

  return v9;
}

- (void)setPassword:(id)a3 forService:(id)a4 accessGroup:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CRKConcreteKeychain *)self makePasswordFacade];
  [v11 setPassword:v10 forService:v9 accessGroup:v8];
}

CRKConcreteCertificate *__51__CRKConcreteKeychain_certificateWithPersistentID___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [[CRKConcreteCertificate alloc] initWithCertificate:a2];

  return v2;
}

CRKConcreteIdentity *__48__CRKConcreteKeychain_identityWithPersistentID___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [[CRKConcreteIdentity alloc] initWithIdentity:a2];

  return v2;
}

CRKConcretePrivateKey *__50__CRKConcreteKeychain_privateKeyWithPersistentID___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [[CRKConcretePrivateKey alloc] initWithPrivateKey:a2];

  return v2;
}

- (id)passwordForService:(id)a3
{
  v4 = a3;
  v5 = [(CRKConcreteKeychain *)self makePasswordFacade];
  v6 = [v5 passwordForService:v4];

  return v6;
}

- (void)removeItemWithPersistentID:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CRKConcreteKeychain *)self baseQueryAttributes];
  v6 = [v5 mutableCopy];

  v11 = *MEMORY[0x277CDC5F0];
  v12[0] = v4;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [v6 addEntriesFromDictionary:v7];

  v8 = SecItemDelete(v6);
  if (v8 != -25300 && v8)
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v8 userInfo:0];
    v10 = _CRKLogGeneral_1();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(CRKConcreteKeychain *)v4 removeItemWithPersistentID:v9];
    }
  }
}

- (id)makePasswordFacade
{
  v3 = [CRKKeychainPasswordFacade alloc];
  v4 = [(CRKConcreteKeychain *)self baseQueryAttributes];
  v5 = [(CRKKeychainPasswordFacade *)v3 initWithBaseQueryAttributes:v4];

  return v5;
}

- (void)copyItemWithPersistentID:(id)a3 itemClass:(id)a4
{
  v20[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CRKConcreteKeychain *)self baseQueryAttributes];
  v9 = [v8 mutableCopy];

  v10 = *MEMORY[0x277CDC568];
  v19[0] = *MEMORY[0x277CDC5F0];
  v19[1] = v10;
  v11 = *MEMORY[0x277CBED28];
  v20[0] = v6;
  v20[1] = v11;
  v19[2] = *MEMORY[0x277CDC228];
  v20[2] = v7;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
  [v9 addEntriesFromDictionary:v12];

  v18 = 0;
  v13 = SecItemCopyMatching(v9, &v18);
  if (v13)
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v13 userInfo:0];
    v15 = _CRKLogGeneral_1();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CRKConcreteKeychain copyItemWithPersistentID:v6 itemClass:v14];
    }

    v16 = 0;
  }

  else
  {
    v16 = v18;
  }

  return v16;
}

- (id)makeItemWithPersistentID:(id)a3 itemClass:(id)a4 creationBlock:(id)a5
{
  v8 = a5;
  v9 = [(CRKConcreteKeychain *)self copyItemWithPersistentID:a3 itemClass:a4];
  if (v9)
  {
    v10 = v9;
    v11 = v8[2](v8, v9);
    CFRelease(v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)addItem:(void *)a3 toAccessGroup:(id)a4
{
  v27[3] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(CRKConcreteKeychain *)self baseQueryAttributes];
  v8 = [v7 mutableCopy];

  v9 = *MEMORY[0x277CDC560];
  v26[0] = *MEMORY[0x277CDC5F8];
  v26[1] = v9;
  v10 = *MEMORY[0x277CBED28];
  v27[0] = a3;
  v27[1] = v10;
  v26[2] = *MEMORY[0x277CDBED8];
  v27[2] = *MEMORY[0x277CDBEF0];
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
  [v8 addEntriesFromDictionary:v11];

  [v8 setObject:v6 forKeyedSubscript:*MEMORY[0x277CDBEC8]];
  result = 0;
  v12 = SecItemAdd(v8, &result);
  v13 = result;
  if (v12 == -25299)
  {
    v14 = SecItemCopyMatching(v8, &result);
    v15 = result;

    v13 = v15;
    if (!v14)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v14 = v12;
    if (!v12)
    {
      goto LABEL_8;
    }
  }

  v16 = _CRKLogGeneral_1();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v18 = [MEMORY[0x277CCABB0] numberWithInt:v14];
    *buf = 138543874;
    v21 = a3;
    v22 = 2114;
    v23 = v6;
    v24 = 2114;
    v25 = v18;
    _os_log_error_impl(&dword_243550000, v16, OS_LOG_TYPE_ERROR, "Could not add item %{public}@ to group %{public}@: %{public}@", buf, 0x20u);
  }

LABEL_8:

  return v13;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CRKConcreteKeychain *)self baseQueryAttributes];
  v6 = [v3 stringWithFormat:@"<%@: %p { baseQueryAtrributes = %@ }>", v4, self, v5];

  return v6;
}

- (void)removeItemWithPersistentID:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 verboseDescription];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_2(&dword_243550000, v3, v4, "Could not remove keychain item with persistentID %@. Error (ignored): %{public}@.", v5, v6, v7, v8, v9);
}

- (void)copyItemWithPersistentID:(uint64_t)a1 itemClass:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 verboseDescription];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_2(&dword_243550000, v3, v4, "Cannot retrieve item with persistentID %@: Error: %{public}@", v5, v6, v7, v8, v9);
}

@end