@interface CNUIStaticIdentity
+ (BOOL)addStaticKeyWithPublicIDString:(id)string contact:(id)contact;
+ (BOOL)isHandleInStore:(id)store;
+ (BOOL)isValidStaticKeyString:(id)string;
+ (BOOL)removeAccountKeyFromContact:(id)contact;
+ (id)findStoreEntryByContact:(id)contact;
+ (id)ktStore;
+ (id)makeKTPublicIDWithString:(id)string;
- (BOOL)isHandleInStore:(id)store;
- (CNUIStaticIdentity)initWithContact:(id)contact;
- (id)verificationCode;
@end

@implementation CNUIStaticIdentity

- (CNUIStaticIdentity)initWithContact:(id)contact
{
  contactCopy = contact;
  if (contactCopy)
  {
    v6 = [objc_opt_class() findStoreEntryByContact:contactCopy];
    if (v6 && (v10.receiver = self, v10.super_class = CNUIStaticIdentity, v7 = [(CNUIStaticIdentity *)&v10 init], (self = v7) != 0))
    {
      objc_storeStrong(&v7->_contact, contact);
      objc_storeStrong(&self->_storeEntry, v6);
      self = self;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)verificationCode
{
  storeEntry = [(CNUIStaticIdentity *)self storeEntry];
  publicKeyID = [storeEntry publicKeyID];
  publicAccountIdentity = [publicKeyID publicAccountIdentity];

  return publicAccountIdentity;
}

- (BOOL)isHandleInStore:(id)store
{
  storeCopy = store;
  storeEntry = [(CNUIStaticIdentity *)self storeEntry];
  handles = [storeEntry handles];
  v7 = [handles objectForKeyedSubscript:storeCopy];

  if (v7)
  {
    valid = [v7 valid];
  }

  else
  {
    v9 = +[CNUICoreLogProvider static_identity_os_log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(CNUIStaticIdentity *)storeCopy isHandleInStore:v9];
    }

    valid = 0;
  }

  return valid;
}

+ (id)ktStore
{
  if (ktStore_onceToken != -1)
  {
    +[CNUIStaticIdentity ktStore];
  }

  v3 = ktStore_ktStore;

  return v3;
}

uint64_t __29__CNUIStaticIdentity_ktStore__block_invoke()
{
  ktStore_ktStore = objc_alloc_init(MEMORY[0x1E69DB4E8]);

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)isHandleInStore:(id)store
{
  storeCopy = store;
  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    ktStore = [self ktStore];

    if (ktStore)
    {
      ktStore2 = [self ktStore];
      v14 = 0;
      v7 = [ktStore2 findKeyByHandle:storeCopy error:&v14];
      v8 = v14;

      if (v7)
      {
        handles = [v7 handles];
        v10 = [handles objectForKeyedSubscript:storeCopy];

        if (v10)
        {
          valid = [v10 valid];
LABEL_13:

          goto LABEL_14;
        }

        v12 = +[CNUICoreLogProvider static_identity_os_log];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [(CNUIStaticIdentity *)storeCopy isHandleInStore:v12];
        }
      }

      else
      {
        v10 = +[CNUICoreLogProvider static_identity_os_log];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          +[CNUIStaticIdentity isHandleInStore:];
        }
      }

      valid = 0;
      goto LABEL_13;
    }
  }

  valid = 0;
LABEL_14:

  return valid;
}

+ (id)findStoreEntryByContact:(id)contact
{
  contactCopy = contact;
  ktStore = [self ktStore];

  if (ktStore)
  {
    ktStore2 = [self ktStore];
    v11 = 0;
    v7 = [ktStore2 findByContact:contactCopy error:&v11];
    v8 = v11;

    if (!v7)
    {
      v9 = +[CNUICoreLogProvider static_identity_os_log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        +[CNUIStaticIdentity findStoreEntryByContact:];
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)makeKTPublicIDWithString:(id)string
{
  stringCopy = string;
  ktStore = [self ktStore];

  if (ktStore)
  {
    v9 = 0;
    ktStore = [MEMORY[0x1E69DB4E0] ktAccountPublicIDWithString:stringCopy error:&v9];
    v6 = v9;
    if (!ktStore)
    {
      v7 = +[CNUICoreLogProvider static_identity_os_log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        +[CNUIStaticIdentity makeKTPublicIDWithString:];
      }
    }
  }

  return ktStore;
}

+ (BOOL)isValidStaticKeyString:(id)string
{
  stringCopy = string;
  ktStore = [self ktStore];

  if (ktStore)
  {
    v6 = [CNUIStaticIdentity makeKTPublicIDWithString:stringCopy];
    LOBYTE(ktStore) = v6 != 0;
  }

  return ktStore;
}

+ (BOOL)addStaticKeyWithPublicIDString:(id)string contact:(id)contact
{
  stringCopy = string;
  contactCopy = contact;
  ktStore = [self ktStore];

  if (ktStore)
  {
    v9 = [CNUIStaticIdentity makeKTPublicIDWithString:stringCopy];
    if (v9)
    {
      ktStore2 = [self ktStore];
      v16 = 0;
      v11 = [ktStore2 updateStaticKeyEntry:v9 contact:contactCopy error:&v16];
      v12 = v16;

      if (v11)
      {
        v13 = 1;
LABEL_11:

        goto LABEL_12;
      }

      v14 = +[CNUICoreLogProvider static_identity_os_log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [CNUIStaticIdentity addStaticKeyWithPublicIDString:v12 contact:v14];
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = 0;
    goto LABEL_11;
  }

  v13 = 0;
LABEL_12:

  return v13;
}

+ (BOOL)removeAccountKeyFromContact:(id)contact
{
  contactCopy = contact;
  v5 = [self findStoreEntryByContact:contactCopy];
  if (v5)
  {
    ktStore = [self ktStore];
    publicKeyID = [v5 publicKeyID];
    v12 = 0;
    v8 = [ktStore removeEntryByKDID:publicKeyID error:&v12];
    v9 = v12;

    if ((v8 & 1) == 0)
    {
      v10 = +[CNUICoreLogProvider static_identity_os_log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(CNUIStaticIdentity *)contactCopy removeAccountKeyFromContact:v9, v10];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)isHandleInStore:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a2 contact];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&dword_1A31E6000, a3, OS_LOG_TYPE_DEBUG, "Unable to find store handle for handle in contact %@: %@", &v6, 0x16u);
}

+ (void)isHandleInStore:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1A31E6000, a2, OS_LOG_TYPE_DEBUG, "Unable to find store handle for handle %@", &v2, 0xCu);
}

+ (void)makeKTPublicIDWithString:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5();
  v3 = v0;
  _os_log_error_impl(&dword_1A31E6000, v1, OS_LOG_TYPE_ERROR, "Error creating public id with verification code %@: %@", v2, 0x16u);
}

+ (void)addStaticKeyWithPublicIDString:(uint64_t)a1 contact:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A31E6000, a2, OS_LOG_TYPE_ERROR, "Error saving static id: %@", &v2, 0xCu);
}

+ (void)removeAccountKeyFromContact:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = [a1 identifier];
  OUTLINED_FUNCTION_0_5();
  v7 = a2;
  _os_log_error_impl(&dword_1A31E6000, a3, OS_LOG_TYPE_ERROR, "Error removing verification code from contact %@: %@", v6, 0x16u);
}

@end