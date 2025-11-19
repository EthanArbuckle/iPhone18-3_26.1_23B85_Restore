@interface PDSUserTracker
+ (id)standardAccountStore;
- (BOOL)validUser:(id)a3 withError:(id *)a4;
- (PDSUserTracker)initWithAccountStoreBlock:(id)a3;
- (id)_accountForUser:(id)a3 withError:(id *)a4;
- (id)tokenAndIdentifier:(id *)a3 forUser:(id)a4 withError:(id *)a5;
- (void)refreshCredentialsForUser:(id)a3 withError:(id *)a4 completion:(id)a5;
@end

@implementation PDSUserTracker

+ (id)standardAccountStore
{
  v2 = objc_alloc_init(MEMORY[0x277CB8F48]);

  return v2;
}

- (PDSUserTracker)initWithAccountStoreBlock:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [PDSUserTracker initWithAccountStoreBlock:];
  }

  v9.receiver = self;
  v9.super_class = PDSUserTracker;
  v5 = [(PDSUserTracker *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x25F8A7090](v4);
    accountStoreBlock = v5->_accountStoreBlock;
    v5->_accountStoreBlock = v6;
  }

  return v5;
}

- (BOOL)validUser:(id)a3 withError:(id *)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    [PDSUserTracker validUser:withError:];
  }

  if ([v6 userType] == 1 && (objc_msgSend(v6, "userID"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v8))
  {
    v9 = (*(self->_accountStoreBlock + 2))();
    v10 = v9;
    if (v9)
    {
      v11 = *MEMORY[0x277CB8BA0];
      v34 = 0;
      v12 = [v9 accountTypeWithAccountTypeIdentifier:v11 error:&v34];
      v13 = v34;
      v14 = v13;
      if (v12)
      {
        v27 = v13;
        v15 = [v6 userID];
        v28 = v12;
        v29 = v10;
        [v10 accountsWithAccountType:v12];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v16 = v33 = 0u;
        v17 = [v16 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v31;
          while (2)
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v31 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = [*(*(&v30 + 1) + 8 * i) accountProperties];
              v22 = [v21 objectForKeyedSubscript:@"personID"];

              LODWORD(v21) = [v15 isEqualToString:v22];
              if (v21)
              {

                v23 = 1;
                goto LABEL_23;
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v30 objects:v35 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        if (a4)
        {
          [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D37B18] code:-102 userInfo:0];
          *a4 = v23 = 0;
        }

        else
        {
          v23 = 0;
        }

LABEL_23:
        v12 = v28;
        v10 = v29;
        v14 = v27;
      }

      else if (a4)
      {
        v24 = v13;
        v23 = 0;
        *a4 = v14;
      }

      else
      {
        v23 = 0;
      }
    }

    else if (a4)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D37B18] code:-101 userInfo:0];
      *a4 = v23 = 0;
    }

    else
    {
      v23 = 0;
    }
  }

  else if (a4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D37B18] code:-100 userInfo:0];
    *a4 = v23 = 0;
  }

  else
  {
    v23 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v23;
}

- (id)tokenAndIdentifier:(id *)a3 forUser:(id)a4 withError:(id *)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a4;
  if (!v8)
  {
    [PDSUserTracker tokenAndIdentifier:forUser:withError:];
  }

  if ([v8 userType] == 1 && (objc_msgSend(v8, "userID"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, v10))
  {
    v11 = (*(self->_accountStoreBlock + 2))();
    v12 = v11;
    if (v11)
    {
      v13 = *MEMORY[0x277CB8BB0];
      v37 = 0;
      v14 = [v11 accountTypeWithAccountTypeIdentifier:v13 error:&v37];
      v15 = v37;
      v16 = v15;
      if (v14)
      {
        v30 = v15;
        v17 = [v8 userID];
        v31 = v14;
        v32 = v12;
        [v12 accountsWithAccountType:v14];
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v18 = v36 = 0u;
        v19 = [v18 countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v34;
LABEL_9:
          v22 = 0;
          while (1)
          {
            if (*v34 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v33 + 1) + 8 * v22);
            v24 = [v23 aida_dsid];
            if ([v17 isEqualToString:v24])
            {
              break;
            }

            if (v20 == ++v22)
            {
              v20 = [v18 countByEnumeratingWithState:&v33 objects:v38 count:16];
              if (v20)
              {
                goto LABEL_9;
              }

              goto LABEL_15;
            }
          }

          v26 = v23;

          if (!v26)
          {
            goto LABEL_25;
          }

          v25 = [v26 aida_tokenWithExpiryCheckForService:@"com.apple.gs.global.auth"];
          if (a3)
          {
            *a3 = [v26 aida_alternateDSID];
          }
        }

        else
        {
LABEL_15:

LABEL_25:
          if (a5)
          {
            [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D37B18] code:-102 userInfo:0];
            *a5 = v25 = 0;
          }

          else
          {
            v25 = 0;
          }
        }

        v14 = v31;
        v12 = v32;
        v16 = v30;
      }

      else if (a5)
      {
        v27 = v15;
        v25 = 0;
        *a5 = v16;
      }

      else
      {
        v25 = 0;
      }
    }

    else if (a5)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D37B18] code:-101 userInfo:0];
      *a5 = v25 = 0;
    }

    else
    {
      v25 = 0;
    }
  }

  else if (a5)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D37B18] code:-100 userInfo:0];
    *a5 = v25 = 0;
  }

  else
  {
    v25 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v25;
}

- (void)refreshCredentialsForUser:(id)a3 withError:(id *)a4 completion:(id)a5
{
  v11 = a3;
  v8 = a5;
  v9 = (*(self->_accountStoreBlock + 2))();
  if (v9)
  {
    v10 = [(PDSUserTracker *)self _accountForUser:v11 withError:a4];
    if (v10)
    {
      [v9 aida_renewCredentialsForAccount:v10 services:&unk_286FBBBD0 completion:v8];
    }

    else if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D37B18] code:-102 userInfo:0];
    }
  }

  else if (a4)
  {
    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D37B18] code:-101 userInfo:0];
  }
}

- (id)_accountForUser:(id)a3 withError:(id *)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    [PDSUserTracker _accountForUser:withError:];
  }

  if ([v6 userType] == 1 && (objc_msgSend(v6, "userID"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v8))
  {
    v9 = (*(self->_accountStoreBlock + 2))();
    v10 = v9;
    if (v9)
    {
      v11 = *MEMORY[0x277CB8BB0];
      v33 = 0;
      v12 = [v9 accountTypeWithAccountTypeIdentifier:v11 error:&v33];
      v13 = v33;
      v14 = v13;
      if (v12)
      {
        v27 = v13;
        v15 = [v6 userID];
        v28 = v12;
        [v10 accountsWithAccountType:v12];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v16 = v32 = 0u;
        v17 = [v16 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v30;
LABEL_9:
          v20 = 0;
          while (1)
          {
            if (*v30 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v29 + 1) + 8 * v20);
            v22 = [v21 aida_dsid];
            if ([v15 isEqualToString:v22])
            {
              break;
            }

            if (v18 == ++v20)
            {
              v18 = [v16 countByEnumeratingWithState:&v29 objects:v34 count:16];
              if (v18)
              {
                goto LABEL_9;
              }

              goto LABEL_15;
            }
          }

          v23 = v21;

          v14 = v27;
          v12 = v28;
          if (v23)
          {
            goto LABEL_28;
          }
        }

        else
        {
LABEL_15:

          v14 = v27;
          v12 = v28;
        }

        if (a4)
        {
          [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D37B18] code:-102 userInfo:0];
          *a4 = v23 = 0;
        }

        else
        {
          v23 = 0;
        }

LABEL_28:
      }

      else if (a4)
      {
        v24 = v13;
        v23 = 0;
        *a4 = v14;
      }

      else
      {
        v23 = 0;
      }
    }

    else if (a4)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D37B18] code:-101 userInfo:0];
      *a4 = v23 = 0;
    }

    else
    {
      v23 = 0;
    }
  }

  else if (a4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D37B18] code:-100 userInfo:0];
    *a4 = v23 = 0;
  }

  else
  {
    v23 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)initWithAccountStoreBlock:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"accountStoreBlock" object:? file:? lineNumber:? description:?];
}

- (void)validUser:withError:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"user" object:? file:? lineNumber:? description:?];
}

- (void)tokenAndIdentifier:forUser:withError:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"user" object:? file:? lineNumber:? description:?];
}

- (void)_accountForUser:withError:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"user" object:? file:? lineNumber:? description:?];
}

@end