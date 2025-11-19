@interface CNUIStaticIdentity
+ (BOOL)addStaticKeyWithPublicIDString:(id)a3 contact:(id)a4;
+ (BOOL)isHandleInStore:(id)a3;
+ (BOOL)isValidStaticKeyString:(id)a3;
+ (BOOL)removeAccountKeyFromContact:(id)a3;
+ (id)findStoreEntryByContact:(id)a3;
+ (id)ktStore;
+ (id)makeKTPublicIDWithString:(id)a3;
- (BOOL)isHandleInStore:(id)a3;
- (CNUIStaticIdentity)initWithContact:(id)a3;
- (id)verificationCode;
@end

@implementation CNUIStaticIdentity

- (CNUIStaticIdentity)initWithContact:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = [objc_opt_class() findStoreEntryByContact:v5];
    if (v6 && (v10.receiver = self, v10.super_class = CNUIStaticIdentity, v7 = [(CNUIStaticIdentity *)&v10 init], (self = v7) != 0))
    {
      objc_storeStrong(&v7->_contact, a3);
      objc_storeStrong(&self->_storeEntry, v6);
      self = self;
      v8 = self;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)verificationCode
{
  v2 = [(CNUIStaticIdentity *)self storeEntry];
  v3 = [v2 publicKeyID];
  v4 = [v3 publicAccountIdentity];

  return v4;
}

- (BOOL)isHandleInStore:(id)a3
{
  v4 = a3;
  v5 = [(CNUIStaticIdentity *)self storeEntry];
  v6 = [v5 handles];
  v7 = [v6 objectForKeyedSubscript:v4];

  if (v7)
  {
    v8 = [v7 valid];
  }

  else
  {
    v9 = +[CNUICoreLogProvider static_identity_os_log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(CNUIStaticIdentity *)v4 isHandleInStore:v9];
    }

    v8 = 0;
  }

  return v8;
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

+ (BOOL)isHandleInStore:(id)a3
{
  v4 = a3;
  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v5 = [a1 ktStore];

    if (v5)
    {
      v6 = [a1 ktStore];
      v14 = 0;
      v7 = [v6 findKeyByHandle:v4 error:&v14];
      v8 = v14;

      if (v7)
      {
        v9 = [v7 handles];
        v10 = [v9 objectForKeyedSubscript:v4];

        if (v10)
        {
          v11 = [v10 valid];
LABEL_13:

          goto LABEL_14;
        }

        v12 = +[CNUICoreLogProvider static_identity_os_log];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [(CNUIStaticIdentity *)v4 isHandleInStore:v12];
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

      v11 = 0;
      goto LABEL_13;
    }
  }

  v11 = 0;
LABEL_14:

  return v11;
}

+ (id)findStoreEntryByContact:(id)a3
{
  v4 = a3;
  v5 = [a1 ktStore];

  if (v5)
  {
    v6 = [a1 ktStore];
    v11 = 0;
    v7 = [v6 findByContact:v4 error:&v11];
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

+ (id)makeKTPublicIDWithString:(id)a3
{
  v4 = a3;
  v5 = [a1 ktStore];

  if (v5)
  {
    v9 = 0;
    v5 = [MEMORY[0x1E69DB4E0] ktAccountPublicIDWithString:v4 error:&v9];
    v6 = v9;
    if (!v5)
    {
      v7 = +[CNUICoreLogProvider static_identity_os_log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        +[CNUIStaticIdentity makeKTPublicIDWithString:];
      }
    }
  }

  return v5;
}

+ (BOOL)isValidStaticKeyString:(id)a3
{
  v4 = a3;
  v5 = [a1 ktStore];

  if (v5)
  {
    v6 = [CNUIStaticIdentity makeKTPublicIDWithString:v4];
    LOBYTE(v5) = v6 != 0;
  }

  return v5;
}

+ (BOOL)addStaticKeyWithPublicIDString:(id)a3 contact:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 ktStore];

  if (v8)
  {
    v9 = [CNUIStaticIdentity makeKTPublicIDWithString:v6];
    if (v9)
    {
      v10 = [a1 ktStore];
      v16 = 0;
      v11 = [v10 updateStaticKeyEntry:v9 contact:v7 error:&v16];
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

+ (BOOL)removeAccountKeyFromContact:(id)a3
{
  v4 = a3;
  v5 = [a1 findStoreEntryByContact:v4];
  if (v5)
  {
    v6 = [a1 ktStore];
    v7 = [v5 publicKeyID];
    v12 = 0;
    v8 = [v6 removeEntryByKDID:v7 error:&v12];
    v9 = v12;

    if ((v8 & 1) == 0)
    {
      v10 = +[CNUICoreLogProvider static_identity_os_log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(CNUIStaticIdentity *)v4 removeAccountKeyFromContact:v9, v10];
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