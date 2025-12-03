@interface ICCryptoConvergenceControllerConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldConvergeObject:(id)object;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation ICCryptoConvergenceControllerConfiguration

- (id)description
{
  v22 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v24 = NSStringFromClass(v3);
  v4 = MEMORY[0x277CCABB0];
  passphrase = [(ICCryptoConvergenceControllerConfiguration *)self passphrase];
  v25 = [v4 numberWithInt:passphrase != 0];
  v5 = MEMORY[0x277CCABB0];
  v1MainKey = [(ICCryptoConvergenceControllerConfiguration *)self v1MainKey];
  if (v1MainKey)
  {
    v7 = 1;
  }

  else
  {
    v1NeoMainKey = [(ICCryptoConvergenceControllerConfiguration *)self v1NeoMainKey];
    v7 = v1NeoMainKey != 0;
  }

  v8 = [v5 numberWithInt:v7];
  v9 = MEMORY[0x277CCABB0];
  divergedPassphrase = [(ICCryptoConvergenceControllerConfiguration *)self divergedPassphrase];
  v11 = [v9 numberWithInt:divergedPassphrase != 0];
  v12 = MEMORY[0x277CCABB0];
  divergedV1MainKey = [(ICCryptoConvergenceControllerConfiguration *)self divergedV1MainKey];
  if (divergedV1MainKey)
  {
    v14 = 1;
  }

  else
  {
    divergedV1NeoMainKey = [(ICCryptoConvergenceControllerConfiguration *)self divergedV1NeoMainKey];
    v14 = divergedV1NeoMainKey != 0;
  }

  v15 = [v12 numberWithInt:v14];
  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICCryptoConvergenceControllerConfiguration includeAllAuthenticatedObjects](self, "includeAllAuthenticatedObjects")}];
  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICCryptoConvergenceControllerConfiguration isUserInitiated](self, "isUserInitiated")}];
  v18 = [v22 stringWithFormat:@"<%@: %p, hasPassphrase: %@, hasKeys: %@, hasDivergedKey: %@, hasDivergedKeys: %@, includeAllAuthenticatedObjects: %@, isUserInitiated: %@>", v24, self, v25, v8, v11, v15, v16, v17];

  if (!divergedV1MainKey)
  {
  }

  if (!v1MainKey)
  {
  }

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  if (equal != self)
  {
    equalCopy = equal;
    objc_opt_class();
    v5 = ICDynamicCast();

    passphrase = [(ICCryptoConvergenceControllerConfiguration *)self passphrase];
    passphrase2 = [v5 passphrase];
    v8 = *MEMORY[0x277CBEEE8];
    if (*MEMORY[0x277CBEEE8] == passphrase)
    {
      v9 = 0;
    }

    else
    {
      v9 = passphrase;
    }

    v1MainKey = v9;
    if (v8 == passphrase2)
    {
      v11 = 0;
    }

    else
    {
      v11 = passphrase2;
    }

    v12 = v11;
    if (v1MainKey | v12)
    {
      v1MainKey2 = v12;
      if (v1MainKey)
      {
        v14 = v12 == 0;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        LOBYTE(v15) = 0;
        goto LABEL_87;
      }

      v16 = [v1MainKey isEqual:v12];

      if (!v16)
      {
        LOBYTE(v15) = 0;
LABEL_88:

        return v15;
      }
    }

    v1MainKey = [(ICCryptoConvergenceControllerConfiguration *)self v1MainKey];
    v1MainKey2 = [v5 v1MainKey];
    if (v8 == v1MainKey)
    {
      v17 = 0;
    }

    else
    {
      v17 = v1MainKey;
    }

    v1NeoMainKey = v17;
    if (v8 == v1MainKey2)
    {
      v19 = 0;
    }

    else
    {
      v19 = v1MainKey2;
    }

    v20 = v19;
    if (!(v1NeoMainKey | v20))
    {
      goto LABEL_29;
    }

    v1NeoMainKey2 = v20;
    if (v1NeoMainKey)
    {
      v22 = v20 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      goto LABEL_71;
    }

    LODWORD(v15) = [v1NeoMainKey isEqual:v20];

    if (v15)
    {
LABEL_29:
      v1NeoMainKey = [(ICCryptoConvergenceControllerConfiguration *)self v1NeoMainKey];
      v1NeoMainKey2 = [v5 v1NeoMainKey];
      if (v8 == v1NeoMainKey)
      {
        v23 = 0;
      }

      else
      {
        v23 = v1NeoMainKey;
      }

      v15 = v23;
      if (v8 == v1NeoMainKey2)
      {
        v24 = 0;
      }

      else
      {
        v24 = v1NeoMainKey2;
      }

      v25 = v24;
      if (!(v15 | v25))
      {
        goto LABEL_39;
      }

      v26 = v25;
      v27 = v15;
      LOBYTE(v15) = 0;
      if (!v27 || !v25)
      {
        v69 = v27;
        goto LABEL_85;
      }

      v28 = v27;
      v66 = passphrase;
      v29 = v25;
      v68 = [v27 isEqual:v25];

      passphrase = v66;
      if (v68)
      {
LABEL_39:
        v67 = passphrase;
        divergedPassphrase = [(ICCryptoConvergenceControllerConfiguration *)self divergedPassphrase];
        divergedPassphrase2 = [v5 divergedPassphrase];
        v69 = divergedPassphrase;
        if (v8 == divergedPassphrase)
        {
          v32 = 0;
        }

        else
        {
          v32 = divergedPassphrase;
        }

        v33 = v32;
        v65 = divergedPassphrase2;
        if (v8 == divergedPassphrase2)
        {
          v34 = 0;
        }

        else
        {
          v34 = divergedPassphrase2;
        }

        v35 = v33;
        v36 = v34;
        if (!(v35 | v36))
        {
          goto LABEL_49;
        }

        v37 = v36;
        LOBYTE(v15) = 0;
        if (!v35 || !v36)
        {
          v55 = v35;
          passphrase = v67;
LABEL_84:

          v26 = v65;
          goto LABEL_85;
        }

        v38 = v36;
        v63 = [v35 isEqual:v36];

        if (v63)
        {
LABEL_49:
          divergedV1MainKey = [(ICCryptoConvergenceControllerConfiguration *)self divergedV1MainKey];
          divergedV1MainKey2 = [v5 divergedV1MainKey];
          v62 = divergedV1MainKey;
          if (v8 == divergedV1MainKey)
          {
            v41 = 0;
          }

          else
          {
            v41 = divergedV1MainKey;
          }

          v42 = v41;
          v64 = divergedV1MainKey2;
          if (v8 == divergedV1MainKey2)
          {
            v43 = 0;
          }

          else
          {
            v43 = divergedV1MainKey2;
          }

          v44 = v43;
          if (v42 | v44)
          {
            v45 = v44;
            LOBYTE(v15) = 0;
            if (!v42 || !v44)
            {
              v61 = v42;
              v55 = v62;
              passphrase = v67;
LABEL_82:

              goto LABEL_83;
            }

            v46 = v44;
            v60 = [v42 isEqual:v44];

            if (!v60)
            {
              v55 = v62;
              LOBYTE(v15) = 0;
              passphrase = v67;
LABEL_83:
              v37 = v64;
              goto LABEL_84;
            }
          }

          divergedV1NeoMainKey = [(ICCryptoConvergenceControllerConfiguration *)self divergedV1NeoMainKey];
          divergedV1NeoMainKey2 = [v5 divergedV1NeoMainKey];
          v61 = divergedV1NeoMainKey;
          if (v8 == divergedV1NeoMainKey)
          {
            v49 = 0;
          }

          else
          {
            v49 = divergedV1NeoMainKey;
          }

          v50 = v49;
          v59 = divergedV1NeoMainKey2;
          if (v8 == divergedV1NeoMainKey2)
          {
            v51 = 0;
          }

          else
          {
            v51 = divergedV1NeoMainKey2;
          }

          v52 = v51;
          if (v50 | v52)
          {
            v53 = v52;
            if (!v50 || !v52)
            {
              v55 = v62;

              goto LABEL_80;
            }

            v54 = [v50 isEqual:v52];

            if (!v54)
            {
              v55 = v62;
              goto LABEL_80;
            }
          }

          v55 = v62;
          includeAllAuthenticatedObjects = [(ICCryptoConvergenceControllerConfiguration *)self includeAllAuthenticatedObjects];
          if (includeAllAuthenticatedObjects == [v5 includeAllAuthenticatedObjects])
          {
            isUserInitiated = [(ICCryptoConvergenceControllerConfiguration *)self isUserInitiated];
            LODWORD(v15) = isUserInitiated ^ [v5 isUserInitiated] ^ 1;
LABEL_81:
            passphrase = v67;
            v45 = v59;
            goto LABEL_82;
          }

LABEL_80:
          LOBYTE(v15) = 0;
          goto LABEL_81;
        }

        LOBYTE(v15) = 0;
        v26 = v65;
        passphrase = v67;
LABEL_85:

        goto LABEL_86;
      }

LABEL_71:
      LOBYTE(v15) = 0;
LABEL_86:
    }

LABEL_87:

    goto LABEL_88;
  }

  LOBYTE(v15) = 1;
  return v15;
}

- (unint64_t)hash
{
  passphrase = [(ICCryptoConvergenceControllerConfiguration *)self passphrase];
  v4 = [passphrase hash];
  if (!v4)
  {
    null = [MEMORY[0x277CBEB68] null];
    v4 = [null hash];
  }

  v1MainKey = [(ICCryptoConvergenceControllerConfiguration *)self v1MainKey];
  v7 = [v1MainKey hash];
  if (!v7)
  {
    null2 = [MEMORY[0x277CBEB68] null];
    v7 = [null2 hash];
  }

  v1NeoMainKey = [(ICCryptoConvergenceControllerConfiguration *)self v1NeoMainKey];
  if (![v1NeoMainKey hash])
  {
    null3 = [MEMORY[0x277CBEB68] null];
    [null3 hash];
  }

  v30 = v7;
  divergedPassphrase = [(ICCryptoConvergenceControllerConfiguration *)self divergedPassphrase];
  if (![divergedPassphrase hash])
  {
    null4 = [MEMORY[0x277CBEB68] null];
    [null4 hash];
  }

  divergedV1MainKey = [(ICCryptoConvergenceControllerConfiguration *)self divergedV1MainKey];
  if (![divergedV1MainKey hash])
  {
    null5 = [MEMORY[0x277CBEB68] null];
    [null5 hash];
  }

  divergedV1NeoMainKey = [(ICCryptoConvergenceControllerConfiguration *)self divergedV1NeoMainKey];
  if (![divergedV1NeoMainKey hash])
  {
    [MEMORY[0x277CBEB68] null];
    v28 = v1NeoMainKey;
    v22 = v4;
    v23 = v1MainKey;
    v25 = v24 = passphrase;
    [v25 hash];

    passphrase = v24;
    v1MainKey = v23;
    v4 = v22;
    v1NeoMainKey = v28;
  }

  v26 = ICHashWithHashKeys(v4, v15, v16, v17, v18, v19, v20, v21, v30);

  return v26;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[ICCryptoConvergenceControllerConfiguration allocWithZone:?]];
  passphrase = [(ICCryptoConvergenceControllerConfiguration *)self passphrase];
  [(ICCryptoConvergenceControllerConfiguration *)v4 setPassphrase:passphrase];

  v1MainKey = [(ICCryptoConvergenceControllerConfiguration *)self v1MainKey];
  [(ICCryptoConvergenceControllerConfiguration *)v4 setV1MainKey:v1MainKey];

  v1NeoMainKey = [(ICCryptoConvergenceControllerConfiguration *)self v1NeoMainKey];
  [(ICCryptoConvergenceControllerConfiguration *)v4 setV1NeoMainKey:v1NeoMainKey];

  divergedPassphrase = [(ICCryptoConvergenceControllerConfiguration *)self divergedPassphrase];
  [(ICCryptoConvergenceControllerConfiguration *)v4 setDivergedPassphrase:divergedPassphrase];

  divergedV1MainKey = [(ICCryptoConvergenceControllerConfiguration *)self divergedV1MainKey];
  [(ICCryptoConvergenceControllerConfiguration *)v4 setDivergedV1MainKey:divergedV1MainKey];

  divergedV1NeoMainKey = [(ICCryptoConvergenceControllerConfiguration *)self divergedV1NeoMainKey];
  [(ICCryptoConvergenceControllerConfiguration *)v4 setDivergedV1NeoMainKey:divergedV1NeoMainKey];

  [(ICCryptoConvergenceControllerConfiguration *)v4 setIncludeAllAuthenticatedObjects:[(ICCryptoConvergenceControllerConfiguration *)self includeAllAuthenticatedObjects]];
  [(ICCryptoConvergenceControllerConfiguration *)v4 setUserInitiated:[(ICCryptoConvergenceControllerConfiguration *)self isUserInitiated]];
  return v4;
}

- (BOOL)shouldConvergeObject:(id)object
{
  objectCopy = object;
  if (!-[ICCryptoConvergenceControllerConfiguration includeAllAuthenticatedObjects](self, "includeAllAuthenticatedObjects") || ([objectCopy isAuthenticated] & 1) == 0)
  {
    passphrase = [(ICCryptoConvergenceControllerConfiguration *)self passphrase];
    if ([passphrase length])
    {
      passphrase2 = [(ICCryptoConvergenceControllerConfiguration *)self passphrase];
      v7 = [objectCopy isPassphraseCorrect:passphrase2];

      if (v7)
      {
        if (([objectCopy isAuthenticated] & 1) == 0)
        {
          cryptoStrategy = [objectCopy cryptoStrategy];
          passphrase3 = [(ICCryptoConvergenceControllerConfiguration *)self passphrase];
LABEL_28:
          v35 = passphrase3;
          v36 = [cryptoStrategy authenticateWithPassphrase:passphrase3];
          goto LABEL_29;
        }

        goto LABEL_17;
      }
    }

    else
    {
    }

    v1MainKey = [(ICCryptoConvergenceControllerConfiguration *)self v1MainKey];
    if (v1MainKey && (v11 = v1MainKey, [objectCopy cryptoStrategy], v12 = objc_claimAutoreleasedReturnValue(), -[ICCryptoConvergenceControllerConfiguration v1MainKey](self, "v1MainKey"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "mainKeyDecryptsPrimaryData:", v13), v13, v12, v11, v14))
    {
      cryptoStrategy = +[ICAuthenticationState sharedState];
      v1MainKey2 = [(ICCryptoConvergenceControllerConfiguration *)self v1MainKey];
    }

    else
    {
      v1NeoMainKey = [(ICCryptoConvergenceControllerConfiguration *)self v1NeoMainKey];
      if (v1NeoMainKey && (v17 = v1NeoMainKey, [objectCopy cryptoStrategy], v18 = objc_claimAutoreleasedReturnValue(), -[ICCryptoConvergenceControllerConfiguration v1NeoMainKey](self, "v1NeoMainKey"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v18, "mainKeyDecryptsPrimaryData:", v19), v19, v18, v17, v20))
      {
        cryptoStrategy = +[ICAuthenticationState sharedState];
        v1MainKey2 = [(ICCryptoConvergenceControllerConfiguration *)self v1NeoMainKey];
      }

      else
      {
        divergedPassphrase = [(ICCryptoConvergenceControllerConfiguration *)self divergedPassphrase];
        if ([divergedPassphrase length])
        {
          divergedPassphrase2 = [(ICCryptoConvergenceControllerConfiguration *)self divergedPassphrase];
          v23 = [objectCopy isPassphraseCorrect:divergedPassphrase2];

          if (v23)
          {
            if (([objectCopy isAuthenticated] & 1) == 0)
            {
              cryptoStrategy = [objectCopy cryptoStrategy];
              passphrase3 = [(ICCryptoConvergenceControllerConfiguration *)self divergedPassphrase];
              goto LABEL_28;
            }

            goto LABEL_17;
          }
        }

        else
        {
        }

        divergedV1MainKey = [(ICCryptoConvergenceControllerConfiguration *)self divergedV1MainKey];
        if (divergedV1MainKey && (v26 = divergedV1MainKey, [objectCopy cryptoStrategy], v27 = objc_claimAutoreleasedReturnValue(), -[ICCryptoConvergenceControllerConfiguration divergedV1MainKey](self, "divergedV1MainKey"), v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v27, "mainKeyDecryptsPrimaryData:", v28), v28, v27, v26, v29))
        {
          cryptoStrategy = +[ICAuthenticationState sharedState];
          v1MainKey2 = [(ICCryptoConvergenceControllerConfiguration *)self divergedV1MainKey];
        }

        else
        {
          divergedV1NeoMainKey = [(ICCryptoConvergenceControllerConfiguration *)self divergedV1NeoMainKey];
          if (!divergedV1NeoMainKey || (v31 = divergedV1NeoMainKey, [objectCopy cryptoStrategy], v32 = objc_claimAutoreleasedReturnValue(), -[ICCryptoConvergenceControllerConfiguration divergedV1NeoMainKey](self, "divergedV1NeoMainKey"), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v32, "mainKeyDecryptsPrimaryData:", v33), v33, v32, v31, !v34))
          {
            v24 = 0;
            goto LABEL_30;
          }

          cryptoStrategy = +[ICAuthenticationState sharedState];
          v1MainKey2 = [(ICCryptoConvergenceControllerConfiguration *)self divergedV1NeoMainKey];
        }
      }
    }

    v35 = v1MainKey2;
    v36 = [cryptoStrategy setCachedMainKey:v1MainKey2 forObject:objectCopy];
LABEL_29:
    v24 = v36;

    goto LABEL_30;
  }

LABEL_17:
  v24 = 1;
LABEL_30:

  return v24;
}

@end