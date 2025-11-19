@interface IMDHandle
- (BOOL)cachedOffGridMode;
- (BOOL)isBetterDefinedThan:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesLoginHandleForAnyAccount;
- (IMDHandle)initWithID:(id)a3 unformattedID:(id)a4 countryCode:(id)a5 personCentricID:(id)a6;
- (NSString)normalizedID;
- (NSString)personCentricID;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)compareIDs:(id)a3;
- (unint64_t)hash;
- (void)cachedOffGridModeAndLastPublisherWithCompletion:(id)a3;
- (void)isOffGridModeWithCompletion:(id)a3;
- (void)setPersonCentricID:(id)a3;
@end

@implementation IMDHandle

- (NSString)personCentricID
{
  if (IMSharedHelperPersistMergeID())
  {
    v3 = self->_personCentricID;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  personCentricID = self->_personCentricID;
  v7 = [v3 stringWithFormat:@"[%@: <%@:%@:%@:%@:%@>]", v5, self->_id, self->_unformattedID, self->_countryCode, personCentricID, self->_CNContactID];

  return v7;
}

- (IMDHandle)initWithID:(id)a3 unformattedID:(id)a4 countryCode:(id)a5 personCentricID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = IMDHandle;
  v14 = [(IMDHandle *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    id = v14->_id;
    v14->_id = v15;

    v17 = [v11 copy];
    unformattedID = v14->_unformattedID;
    v14->_unformattedID = v17;

    v19 = [v12 copy];
    countryCode = v14->_countryCode;
    v14->_countryCode = v19;

    if (IMSharedHelperPersistMergeID())
    {
      v21 = [v13 copy];
    }

    else
    {
      v21 = 0;
    }

    personCentricID = v14->_personCentricID;
    v14->_personCentricID = v21;
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v4 == self)
    {
      v11 = 1;
    }

    else
    {
      v5 = [(IMDHandle *)self ID];
      v6 = [(IMDHandle *)v4 ID];
      if (v5 == v6 || [v5 isEqualToString:v6])
      {
        v7 = [(IMDHandle *)self unformattedID];
        v8 = [(IMDHandle *)v4 unformattedID];
        if (v7 == v8 || [v7 isEqualToString:v8])
        {
          v9 = [(IMDHandle *)self countryCode];
          v10 = [(IMDHandle *)v4 countryCode];
          if (v9 == v10)
          {
            v11 = 1;
          }

          else
          {
            v11 = [v9 isEqualToString:v10];
          }
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int64_t)compareIDs:(id)a3
{
  v4 = a3;
  v5 = [(IMDHandle *)self ID];
  v6 = [v4 ID];

  v7 = [v5 caseInsensitiveCompare:v6];
  return v7;
}

- (BOOL)isBetterDefinedThan:(id)a3
{
  v4 = a3;
  v5 = [(IMDHandle *)self unformattedID];
  if (v5)
  {
  }

  else
  {
    v9 = [v4 unformattedID];

    if (v9)
    {
      goto LABEL_10;
    }
  }

  v6 = [(IMDHandle *)self countryCode];
  if (!v6)
  {
    v10 = [v4 countryCode];

    if (!v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    v8 = 0;
    goto LABEL_13;
  }

LABEL_5:
  v7 = [(IMDHandle *)self CNContactID];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v7 = [v4 CNContactID];
    v8 = v7 == 0;
  }

LABEL_13:
  return v8;
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@:%@:%@>", self->_id, self->_unformattedID, self->_countryCode];
  v3 = [v2 hash];

  return v3;
}

- (void)setPersonCentricID:(id)a3
{
  v7 = a3;
  if (IMSharedHelperPersistMergeID())
  {
    personCentricID = self->_personCentricID;
    p_personCentricID = &self->_personCentricID;
    if (personCentricID != v7)
    {
      objc_storeStrong(p_personCentricID, a3);
    }
  }

  MEMORY[0x2821F96F8]();
}

- (NSString)normalizedID
{
  v2 = [(IMDHandle *)self ID];
  v3 = MEMORY[0x231897A70]();

  return v3;
}

- (BOOL)matchesLoginHandleForAnyAccount
{
  v3 = +[IMDAccountController sharedInstance];
  v4 = [(IMDHandle *)self ID];
  v5 = [v3 accountAssociatedWithHandle:v4];

  return v5;
}

- (BOOL)cachedOffGridMode
{
  v3 = [MEMORY[0x277D1A9F8] sharedInstance];
  v4 = [v3 offGridModeForHandle:self];

  return v4 == 2;
}

- (void)cachedOffGridModeAndLastPublisherWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D1A9F8] sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B6DA228;
  v7[3] = &unk_278708620;
  v8 = v4;
  v6 = v4;
  [v5 cachedOffGridModeAndLastPublisherForHandle:self completion:v7];
}

- (void)isOffGridModeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D1A9F8] sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B6DA2FC;
  v7[3] = &unk_278708648;
  v8 = v4;
  v6 = v4;
  [v5 offGridModeForHandle:self completion:v7];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [IMDHandle alloc];
  v5 = [(IMDHandle *)self ID];
  v6 = [(IMDHandle *)self unformattedID];
  v7 = [(IMDHandle *)self countryCode];
  v8 = [(IMDHandle *)self personCentricID];
  v9 = [(IMDHandle *)v4 initWithID:v5 unformattedID:v6 countryCode:v7 personCentricID:v8];

  return v9;
}

@end