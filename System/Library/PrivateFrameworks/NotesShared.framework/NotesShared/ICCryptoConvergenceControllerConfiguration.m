@interface ICCryptoConvergenceControllerConfiguration
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldConvergeObject:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
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
  v23 = [(ICCryptoConvergenceControllerConfiguration *)self passphrase];
  v25 = [v4 numberWithInt:v23 != 0];
  v5 = MEMORY[0x277CCABB0];
  v6 = [(ICCryptoConvergenceControllerConfiguration *)self v1MainKey];
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v21 = [(ICCryptoConvergenceControllerConfiguration *)self v1NeoMainKey];
    v7 = v21 != 0;
  }

  v8 = [v5 numberWithInt:v7];
  v9 = MEMORY[0x277CCABB0];
  v10 = [(ICCryptoConvergenceControllerConfiguration *)self divergedPassphrase];
  v11 = [v9 numberWithInt:v10 != 0];
  v12 = MEMORY[0x277CCABB0];
  v13 = [(ICCryptoConvergenceControllerConfiguration *)self divergedV1MainKey];
  if (v13)
  {
    v14 = 1;
  }

  else
  {
    v20 = [(ICCryptoConvergenceControllerConfiguration *)self divergedV1NeoMainKey];
    v14 = v20 != 0;
  }

  v15 = [v12 numberWithInt:v14];
  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICCryptoConvergenceControllerConfiguration includeAllAuthenticatedObjects](self, "includeAllAuthenticatedObjects")}];
  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICCryptoConvergenceControllerConfiguration isUserInitiated](self, "isUserInitiated")}];
  v18 = [v22 stringWithFormat:@"<%@: %p, hasPassphrase: %@, hasKeys: %@, hasDivergedKey: %@, hasDivergedKeys: %@, includeAllAuthenticatedObjects: %@, isUserInitiated: %@>", v24, self, v25, v8, v11, v15, v16, v17];

  if (!v13)
  {
  }

  if (!v6)
  {
  }

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 != self)
  {
    v4 = a3;
    objc_opt_class();
    v5 = ICDynamicCast();

    v6 = [(ICCryptoConvergenceControllerConfiguration *)self passphrase];
    v7 = [v5 passphrase];
    v8 = *MEMORY[0x277CBEEE8];
    if (*MEMORY[0x277CBEEE8] == v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = v6;
    }

    v10 = v9;
    if (v8 == v7)
    {
      v11 = 0;
    }

    else
    {
      v11 = v7;
    }

    v12 = v11;
    if (v10 | v12)
    {
      v13 = v12;
      if (v10)
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

      v16 = [v10 isEqual:v12];

      if (!v16)
      {
        LOBYTE(v15) = 0;
LABEL_88:

        return v15;
      }
    }

    v10 = [(ICCryptoConvergenceControllerConfiguration *)self v1MainKey];
    v13 = [v5 v1MainKey];
    if (v8 == v10)
    {
      v17 = 0;
    }

    else
    {
      v17 = v10;
    }

    v18 = v17;
    if (v8 == v13)
    {
      v19 = 0;
    }

    else
    {
      v19 = v13;
    }

    v20 = v19;
    if (!(v18 | v20))
    {
      goto LABEL_29;
    }

    v21 = v20;
    if (v18)
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

    LODWORD(v15) = [v18 isEqual:v20];

    if (v15)
    {
LABEL_29:
      v18 = [(ICCryptoConvergenceControllerConfiguration *)self v1NeoMainKey];
      v21 = [v5 v1NeoMainKey];
      if (v8 == v18)
      {
        v23 = 0;
      }

      else
      {
        v23 = v18;
      }

      v15 = v23;
      if (v8 == v21)
      {
        v24 = 0;
      }

      else
      {
        v24 = v21;
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
      v66 = v6;
      v29 = v25;
      v68 = [v27 isEqual:v25];

      v6 = v66;
      if (v68)
      {
LABEL_39:
        v67 = v6;
        v30 = [(ICCryptoConvergenceControllerConfiguration *)self divergedPassphrase];
        v31 = [v5 divergedPassphrase];
        v69 = v30;
        if (v8 == v30)
        {
          v32 = 0;
        }

        else
        {
          v32 = v30;
        }

        v33 = v32;
        v65 = v31;
        if (v8 == v31)
        {
          v34 = 0;
        }

        else
        {
          v34 = v31;
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
          v6 = v67;
LABEL_84:

          v26 = v65;
          goto LABEL_85;
        }

        v38 = v36;
        v63 = [v35 isEqual:v36];

        if (v63)
        {
LABEL_49:
          v39 = [(ICCryptoConvergenceControllerConfiguration *)self divergedV1MainKey];
          v40 = [v5 divergedV1MainKey];
          v62 = v39;
          if (v8 == v39)
          {
            v41 = 0;
          }

          else
          {
            v41 = v39;
          }

          v42 = v41;
          v64 = v40;
          if (v8 == v40)
          {
            v43 = 0;
          }

          else
          {
            v43 = v40;
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
              v6 = v67;
LABEL_82:

              goto LABEL_83;
            }

            v46 = v44;
            v60 = [v42 isEqual:v44];

            if (!v60)
            {
              v55 = v62;
              LOBYTE(v15) = 0;
              v6 = v67;
LABEL_83:
              v37 = v64;
              goto LABEL_84;
            }
          }

          v47 = [(ICCryptoConvergenceControllerConfiguration *)self divergedV1NeoMainKey];
          v48 = [v5 divergedV1NeoMainKey];
          v61 = v47;
          if (v8 == v47)
          {
            v49 = 0;
          }

          else
          {
            v49 = v47;
          }

          v50 = v49;
          v59 = v48;
          if (v8 == v48)
          {
            v51 = 0;
          }

          else
          {
            v51 = v48;
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
          v56 = [(ICCryptoConvergenceControllerConfiguration *)self includeAllAuthenticatedObjects];
          if (v56 == [v5 includeAllAuthenticatedObjects])
          {
            v57 = [(ICCryptoConvergenceControllerConfiguration *)self isUserInitiated];
            LODWORD(v15) = v57 ^ [v5 isUserInitiated] ^ 1;
LABEL_81:
            v6 = v67;
            v45 = v59;
            goto LABEL_82;
          }

LABEL_80:
          LOBYTE(v15) = 0;
          goto LABEL_81;
        }

        LOBYTE(v15) = 0;
        v26 = v65;
        v6 = v67;
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
  v3 = [(ICCryptoConvergenceControllerConfiguration *)self passphrase];
  v4 = [v3 hash];
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEB68] null];
    v4 = [v5 hash];
  }

  v6 = [(ICCryptoConvergenceControllerConfiguration *)self v1MainKey];
  v7 = [v6 hash];
  if (!v7)
  {
    v8 = [MEMORY[0x277CBEB68] null];
    v7 = [v8 hash];
  }

  v9 = [(ICCryptoConvergenceControllerConfiguration *)self v1NeoMainKey];
  if (![v9 hash])
  {
    v10 = [MEMORY[0x277CBEB68] null];
    [v10 hash];
  }

  v30 = v7;
  v29 = [(ICCryptoConvergenceControllerConfiguration *)self divergedPassphrase];
  if (![v29 hash])
  {
    v11 = [MEMORY[0x277CBEB68] null];
    [v11 hash];
  }

  v12 = [(ICCryptoConvergenceControllerConfiguration *)self divergedV1MainKey];
  if (![v12 hash])
  {
    v13 = [MEMORY[0x277CBEB68] null];
    [v13 hash];
  }

  v14 = [(ICCryptoConvergenceControllerConfiguration *)self divergedV1NeoMainKey];
  if (![v14 hash])
  {
    [MEMORY[0x277CBEB68] null];
    v28 = v9;
    v22 = v4;
    v23 = v6;
    v25 = v24 = v3;
    [v25 hash];

    v3 = v24;
    v6 = v23;
    v4 = v22;
    v9 = v28;
  }

  v26 = ICHashWithHashKeys(v4, v15, v16, v17, v18, v19, v20, v21, v30);

  return v26;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[ICCryptoConvergenceControllerConfiguration allocWithZone:?]];
  v5 = [(ICCryptoConvergenceControllerConfiguration *)self passphrase];
  [(ICCryptoConvergenceControllerConfiguration *)v4 setPassphrase:v5];

  v6 = [(ICCryptoConvergenceControllerConfiguration *)self v1MainKey];
  [(ICCryptoConvergenceControllerConfiguration *)v4 setV1MainKey:v6];

  v7 = [(ICCryptoConvergenceControllerConfiguration *)self v1NeoMainKey];
  [(ICCryptoConvergenceControllerConfiguration *)v4 setV1NeoMainKey:v7];

  v8 = [(ICCryptoConvergenceControllerConfiguration *)self divergedPassphrase];
  [(ICCryptoConvergenceControllerConfiguration *)v4 setDivergedPassphrase:v8];

  v9 = [(ICCryptoConvergenceControllerConfiguration *)self divergedV1MainKey];
  [(ICCryptoConvergenceControllerConfiguration *)v4 setDivergedV1MainKey:v9];

  v10 = [(ICCryptoConvergenceControllerConfiguration *)self divergedV1NeoMainKey];
  [(ICCryptoConvergenceControllerConfiguration *)v4 setDivergedV1NeoMainKey:v10];

  [(ICCryptoConvergenceControllerConfiguration *)v4 setIncludeAllAuthenticatedObjects:[(ICCryptoConvergenceControllerConfiguration *)self includeAllAuthenticatedObjects]];
  [(ICCryptoConvergenceControllerConfiguration *)v4 setUserInitiated:[(ICCryptoConvergenceControllerConfiguration *)self isUserInitiated]];
  return v4;
}

- (BOOL)shouldConvergeObject:(id)a3
{
  v4 = a3;
  if (!-[ICCryptoConvergenceControllerConfiguration includeAllAuthenticatedObjects](self, "includeAllAuthenticatedObjects") || ([v4 isAuthenticated] & 1) == 0)
  {
    v5 = [(ICCryptoConvergenceControllerConfiguration *)self passphrase];
    if ([v5 length])
    {
      v6 = [(ICCryptoConvergenceControllerConfiguration *)self passphrase];
      v7 = [v4 isPassphraseCorrect:v6];

      if (v7)
      {
        if (([v4 isAuthenticated] & 1) == 0)
        {
          v8 = [v4 cryptoStrategy];
          v9 = [(ICCryptoConvergenceControllerConfiguration *)self passphrase];
LABEL_28:
          v35 = v9;
          v36 = [v8 authenticateWithPassphrase:v9];
          goto LABEL_29;
        }

        goto LABEL_17;
      }
    }

    else
    {
    }

    v10 = [(ICCryptoConvergenceControllerConfiguration *)self v1MainKey];
    if (v10 && (v11 = v10, [v4 cryptoStrategy], v12 = objc_claimAutoreleasedReturnValue(), -[ICCryptoConvergenceControllerConfiguration v1MainKey](self, "v1MainKey"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "mainKeyDecryptsPrimaryData:", v13), v13, v12, v11, v14))
    {
      v8 = +[ICAuthenticationState sharedState];
      v15 = [(ICCryptoConvergenceControllerConfiguration *)self v1MainKey];
    }

    else
    {
      v16 = [(ICCryptoConvergenceControllerConfiguration *)self v1NeoMainKey];
      if (v16 && (v17 = v16, [v4 cryptoStrategy], v18 = objc_claimAutoreleasedReturnValue(), -[ICCryptoConvergenceControllerConfiguration v1NeoMainKey](self, "v1NeoMainKey"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v18, "mainKeyDecryptsPrimaryData:", v19), v19, v18, v17, v20))
      {
        v8 = +[ICAuthenticationState sharedState];
        v15 = [(ICCryptoConvergenceControllerConfiguration *)self v1NeoMainKey];
      }

      else
      {
        v21 = [(ICCryptoConvergenceControllerConfiguration *)self divergedPassphrase];
        if ([v21 length])
        {
          v22 = [(ICCryptoConvergenceControllerConfiguration *)self divergedPassphrase];
          v23 = [v4 isPassphraseCorrect:v22];

          if (v23)
          {
            if (([v4 isAuthenticated] & 1) == 0)
            {
              v8 = [v4 cryptoStrategy];
              v9 = [(ICCryptoConvergenceControllerConfiguration *)self divergedPassphrase];
              goto LABEL_28;
            }

            goto LABEL_17;
          }
        }

        else
        {
        }

        v25 = [(ICCryptoConvergenceControllerConfiguration *)self divergedV1MainKey];
        if (v25 && (v26 = v25, [v4 cryptoStrategy], v27 = objc_claimAutoreleasedReturnValue(), -[ICCryptoConvergenceControllerConfiguration divergedV1MainKey](self, "divergedV1MainKey"), v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v27, "mainKeyDecryptsPrimaryData:", v28), v28, v27, v26, v29))
        {
          v8 = +[ICAuthenticationState sharedState];
          v15 = [(ICCryptoConvergenceControllerConfiguration *)self divergedV1MainKey];
        }

        else
        {
          v30 = [(ICCryptoConvergenceControllerConfiguration *)self divergedV1NeoMainKey];
          if (!v30 || (v31 = v30, [v4 cryptoStrategy], v32 = objc_claimAutoreleasedReturnValue(), -[ICCryptoConvergenceControllerConfiguration divergedV1NeoMainKey](self, "divergedV1NeoMainKey"), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v32, "mainKeyDecryptsPrimaryData:", v33), v33, v32, v31, !v34))
          {
            v24 = 0;
            goto LABEL_30;
          }

          v8 = +[ICAuthenticationState sharedState];
          v15 = [(ICCryptoConvergenceControllerConfiguration *)self divergedV1NeoMainKey];
        }
      }
    }

    v35 = v15;
    v36 = [v8 setCachedMainKey:v15 forObject:v4];
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