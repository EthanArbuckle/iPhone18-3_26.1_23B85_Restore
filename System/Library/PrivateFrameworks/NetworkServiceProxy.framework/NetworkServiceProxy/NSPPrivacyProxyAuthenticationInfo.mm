@interface NSPPrivacyProxyAuthenticationInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAuthType:(id)a3;
- (int)authType;
- (unint64_t)hash;
- (unsigned)accessTokenTypesAtIndex:(unint64_t)a3;
- (void)addAccessTokenBlockedIssuers:(id)a3;
- (void)addAccessTokenKnownOrigins:(id)a3;
- (void)addNonDefaultAttesters:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NSPPrivacyProxyAuthenticationInfo

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = NSPPrivacyProxyAuthenticationInfo;
  [(NSPPrivacyProxyAuthenticationInfo *)&v3 dealloc];
}

- (int)authType
{
  if (*&self->_has)
  {
    return self->_authType;
  }

  else
  {
    return 3;
  }
}

- (int)StringAsAuthType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"BAA"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ANISETTE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"BAA_ANISETTE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"TOKEN"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unsigned)accessTokenTypesAtIndex:(unint64_t)a3
{
  p_accessTokenTypes = &self->_accessTokenTypes;
  count = self->_accessTokenTypes.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_accessTokenTypes->list[a3];
}

- (void)addAccessTokenKnownOrigins:(id)a3
{
  v4 = a3;
  accessTokenKnownOrigins = self->_accessTokenKnownOrigins;
  v8 = v4;
  if (!accessTokenKnownOrigins)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_accessTokenKnownOrigins;
    self->_accessTokenKnownOrigins = v6;

    v4 = v8;
    accessTokenKnownOrigins = self->_accessTokenKnownOrigins;
  }

  [(NSMutableArray *)accessTokenKnownOrigins addObject:v4];
}

- (void)addAccessTokenBlockedIssuers:(id)a3
{
  v4 = a3;
  accessTokenBlockedIssuers = self->_accessTokenBlockedIssuers;
  v8 = v4;
  if (!accessTokenBlockedIssuers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_accessTokenBlockedIssuers;
    self->_accessTokenBlockedIssuers = v6;

    v4 = v8;
    accessTokenBlockedIssuers = self->_accessTokenBlockedIssuers;
  }

  [(NSMutableArray *)accessTokenBlockedIssuers addObject:v4];
}

- (void)addNonDefaultAttesters:(id)a3
{
  v4 = a3;
  nonDefaultAttesters = self->_nonDefaultAttesters;
  v8 = v4;
  if (!nonDefaultAttesters)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_nonDefaultAttesters;
    self->_nonDefaultAttesters = v6;

    v4 = v8;
    nonDefaultAttesters = self->_nonDefaultAttesters;
  }

  [(NSMutableArray *)nonDefaultAttesters addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSPPrivacyProxyAuthenticationInfo;
  v4 = [(NSPPrivacyProxyAuthenticationInfo *)&v8 description];
  v5 = [(NSPPrivacyProxyAuthenticationInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    authType = self->_authType;
    if (authType >= 5)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_authType];
    }

    else
    {
      v5 = off_1E7A308C8[authType];
    }

    [v3 setObject:v5 forKey:@"authType"];
  }

  authURL = self->_authURL;
  if (authURL)
  {
    [v3 setObject:authURL forKey:@"authURL"];
  }

  accessTokenURL = self->_accessTokenURL;
  if (accessTokenURL)
  {
    [v3 setObject:accessTokenURL forKey:@"accessTokenURL"];
  }

  v8 = PBRepeatedUInt32NSArray();
  [v3 setObject:v8 forKey:@"accessTokenTypes"];

  accessTokenKnownOrigins = self->_accessTokenKnownOrigins;
  if (accessTokenKnownOrigins)
  {
    [v3 setObject:accessTokenKnownOrigins forKey:@"accessTokenKnownOrigins"];
  }

  accessTokenBlockedIssuers = self->_accessTokenBlockedIssuers;
  if (accessTokenBlockedIssuers)
  {
    [v3 setObject:accessTokenBlockedIssuers forKey:@"accessTokenBlockedIssuers"];
  }

  if ([(NSMutableArray *)self->_nonDefaultAttesters count])
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_nonDefaultAttesters, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = self->_nonDefaultAttesters;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          [v11 addObject:v17];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKey:@"nonDefaultAttesters"];
  }

  v18 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)writeTo:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    authType = self->_authType;
    PBDataWriterWriteInt32Field();
  }

  if (!self->_authURL)
  {
    __assert_rtn("[NSPPrivacyProxyAuthenticationInfo writeTo:]", "NSPPrivacyProxyAuthenticationInfo.m", 341, "nil != self->_authURL");
  }

  PBDataWriterWriteStringField();
  if (self->_accessTokenURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_accessTokenTypes.count)
  {
    v6 = 0;
    do
    {
      v7 = self->_accessTokenTypes.list[v6];
      PBDataWriterWriteUint32Field();
      ++v6;
    }

    while (v6 < self->_accessTokenTypes.count);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = self->_accessTokenKnownOrigins;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v36;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v10);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = self->_accessTokenBlockedIssuers;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v32;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v31 + 1) + 8 * j);
        PBDataWriterWriteStringField();
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v16);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = self->_nonDefaultAttesters;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v28;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v27 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v22);
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[14] = self->_authType;
    *(v4 + 80) |= 1u;
  }

  v20 = v4;
  [v4 setAuthURL:self->_authURL];
  if (self->_accessTokenURL)
  {
    [v20 setAccessTokenURL:?];
  }

  if ([(NSPPrivacyProxyAuthenticationInfo *)self accessTokenTypesCount])
  {
    [v20 clearAccessTokenTypes];
    v5 = [(NSPPrivacyProxyAuthenticationInfo *)self accessTokenTypesCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [v20 addAccessTokenTypes:{-[NSPPrivacyProxyAuthenticationInfo accessTokenTypesAtIndex:](self, "accessTokenTypesAtIndex:", i)}];
      }
    }
  }

  if ([(NSPPrivacyProxyAuthenticationInfo *)self accessTokenKnownOriginsCount])
  {
    [v20 clearAccessTokenKnownOrigins];
    v8 = [(NSPPrivacyProxyAuthenticationInfo *)self accessTokenKnownOriginsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(NSPPrivacyProxyAuthenticationInfo *)self accessTokenKnownOriginsAtIndex:j];
        [v20 addAccessTokenKnownOrigins:v11];
      }
    }
  }

  if ([(NSPPrivacyProxyAuthenticationInfo *)self accessTokenBlockedIssuersCount])
  {
    [v20 clearAccessTokenBlockedIssuers];
    v12 = [(NSPPrivacyProxyAuthenticationInfo *)self accessTokenBlockedIssuersCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(NSPPrivacyProxyAuthenticationInfo *)self accessTokenBlockedIssuersAtIndex:k];
        [v20 addAccessTokenBlockedIssuers:v15];
      }
    }
  }

  if ([(NSPPrivacyProxyAuthenticationInfo *)self nonDefaultAttestersCount])
  {
    [v20 clearNonDefaultAttesters];
    v16 = [(NSPPrivacyProxyAuthenticationInfo *)self nonDefaultAttestersCount];
    if (v16)
    {
      v17 = v16;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(NSPPrivacyProxyAuthenticationInfo *)self nonDefaultAttestersAtIndex:m];
        [v20 addNonDefaultAttesters:v19];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 56) = self->_authType;
    *(v5 + 80) |= 1u;
  }

  v7 = [(NSString *)self->_authURL copyWithZone:a3];
  v8 = v6[8];
  v6[8] = v7;

  v9 = [(NSString *)self->_accessTokenURL copyWithZone:a3];
  v10 = v6[6];
  v6[6] = v9;

  PBRepeatedUInt32Copy();
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v11 = self->_accessTokenKnownOrigins;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v40;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v39 + 1) + 8 * i) copyWithZone:a3];
        [v6 addAccessTokenKnownOrigins:v16];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v13);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v17 = self->_accessTokenBlockedIssuers;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v36;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v36 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v35 + 1) + 8 * j) copyWithZone:a3];
        [v6 addAccessTokenBlockedIssuers:v22];
      }

      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v19);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = self->_nonDefaultAttesters;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v32;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v31 + 1) + 8 * k) copyWithZone:{a3, v31}];
        [v6 addNonDefaultAttesters:v28];
      }

      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v25);
  }

  v29 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  v5 = *(v4 + 80);
  if (*&self->_has)
  {
    if ((*(v4 + 80) & 1) == 0 || self->_authType != *(v4 + 14))
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 80))
  {
LABEL_18:
    v11 = 0;
    goto LABEL_19;
  }

  authURL = self->_authURL;
  if (authURL | *(v4 + 8) && ![(NSString *)authURL isEqual:?])
  {
    goto LABEL_18;
  }

  accessTokenURL = self->_accessTokenURL;
  if (accessTokenURL | *(v4 + 6))
  {
    if (![(NSString *)accessTokenURL isEqual:?])
    {
      goto LABEL_18;
    }
  }

  if (!PBRepeatedUInt32IsEqual())
  {
    goto LABEL_18;
  }

  accessTokenKnownOrigins = self->_accessTokenKnownOrigins;
  if (accessTokenKnownOrigins | *(v4 + 5))
  {
    if (![(NSMutableArray *)accessTokenKnownOrigins isEqual:?])
    {
      goto LABEL_18;
    }
  }

  accessTokenBlockedIssuers = self->_accessTokenBlockedIssuers;
  if (accessTokenBlockedIssuers | *(v4 + 4))
  {
    if (![(NSMutableArray *)accessTokenBlockedIssuers isEqual:?])
    {
      goto LABEL_18;
    }
  }

  nonDefaultAttesters = self->_nonDefaultAttesters;
  if (nonDefaultAttesters | *(v4 + 9))
  {
    v11 = [(NSMutableArray *)nonDefaultAttesters isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_19:

  return v11;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_authType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_authURL hash]^ v3;
  v5 = [(NSString *)self->_accessTokenURL hash];
  v6 = v4 ^ v5 ^ PBRepeatedUInt32Hash();
  v7 = [(NSMutableArray *)self->_accessTokenKnownOrigins hash];
  v8 = v7 ^ [(NSMutableArray *)self->_accessTokenBlockedIssuers hash];
  return v6 ^ v8 ^ [(NSMutableArray *)self->_nonDefaultAttesters hash];
}

- (void)mergeFrom:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4[20])
  {
    self->_authType = v4[14];
    *&self->_has |= 1u;
  }

  if (*(v4 + 8))
  {
    [(NSPPrivacyProxyAuthenticationInfo *)self setAuthURL:?];
  }

  if (*(v5 + 6))
  {
    [(NSPPrivacyProxyAuthenticationInfo *)self setAccessTokenURL:?];
  }

  v6 = [v5 accessTokenTypesCount];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      -[NSPPrivacyProxyAuthenticationInfo addAccessTokenTypes:](self, "addAccessTokenTypes:", [v5 accessTokenTypesAtIndex:i]);
    }
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = *(v5 + 5);
  v10 = [v9 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v34;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(NSPPrivacyProxyAuthenticationInfo *)self addAccessTokenKnownOrigins:*(*(&v33 + 1) + 8 * j)];
      }

      v11 = [v9 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v11);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = *(v5 + 4);
  v15 = [v14 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    do
    {
      for (k = 0; k != v16; ++k)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(NSPPrivacyProxyAuthenticationInfo *)self addAccessTokenBlockedIssuers:*(*(&v29 + 1) + 8 * k)];
      }

      v16 = [v14 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v16);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v19 = *(v5 + 9);
  v20 = [v19 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v26;
    do
    {
      for (m = 0; m != v21; ++m)
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(NSPPrivacyProxyAuthenticationInfo *)self addNonDefaultAttesters:*(*(&v25 + 1) + 8 * m), v25];
      }

      v21 = [v19 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v21);
  }

  v24 = *MEMORY[0x1E69E9840];
}

@end