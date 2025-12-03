@interface IMDHandle
- (BOOL)cachedOffGridMode;
- (BOOL)isBetterDefinedThan:(id)than;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesLoginHandleForAnyAccount;
- (IMDHandle)initWithID:(id)d unformattedID:(id)iD countryCode:(id)code personCentricID:(id)centricID;
- (NSString)normalizedID;
- (NSString)personCentricID;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)compareIDs:(id)ds;
- (unint64_t)hash;
- (void)cachedOffGridModeAndLastPublisherWithCompletion:(id)completion;
- (void)isOffGridModeWithCompletion:(id)completion;
- (void)setPersonCentricID:(id)d;
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

- (IMDHandle)initWithID:(id)d unformattedID:(id)iD countryCode:(id)code personCentricID:(id)centricID
{
  dCopy = d;
  iDCopy = iD;
  codeCopy = code;
  centricIDCopy = centricID;
  v24.receiver = self;
  v24.super_class = IMDHandle;
  v14 = [(IMDHandle *)&v24 init];
  if (v14)
  {
    v15 = [dCopy copy];
    id = v14->_id;
    v14->_id = v15;

    v17 = [iDCopy copy];
    unformattedID = v14->_unformattedID;
    v14->_unformattedID = v17;

    v19 = [codeCopy copy];
    countryCode = v14->_countryCode;
    v14->_countryCode = v19;

    if (IMSharedHelperPersistMergeID())
    {
      v21 = [centricIDCopy copy];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (equalCopy == self)
    {
      v11 = 1;
    }

    else
    {
      v5 = [(IMDHandle *)self ID];
      v6 = [(IMDHandle *)equalCopy ID];
      if (v5 == v6 || [v5 isEqualToString:v6])
      {
        unformattedID = [(IMDHandle *)self unformattedID];
        unformattedID2 = [(IMDHandle *)equalCopy unformattedID];
        if (unformattedID == unformattedID2 || [unformattedID isEqualToString:unformattedID2])
        {
          countryCode = [(IMDHandle *)self countryCode];
          countryCode2 = [(IMDHandle *)equalCopy countryCode];
          if (countryCode == countryCode2)
          {
            v11 = 1;
          }

          else
          {
            v11 = [countryCode isEqualToString:countryCode2];
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

- (int64_t)compareIDs:(id)ds
{
  dsCopy = ds;
  v5 = [(IMDHandle *)self ID];
  v6 = [dsCopy ID];

  v7 = [v5 caseInsensitiveCompare:v6];
  return v7;
}

- (BOOL)isBetterDefinedThan:(id)than
{
  thanCopy = than;
  unformattedID = [(IMDHandle *)self unformattedID];
  if (unformattedID)
  {
  }

  else
  {
    unformattedID2 = [thanCopy unformattedID];

    if (unformattedID2)
    {
      goto LABEL_10;
    }
  }

  countryCode = [(IMDHandle *)self countryCode];
  if (!countryCode)
  {
    countryCode2 = [thanCopy countryCode];

    if (!countryCode2)
    {
      goto LABEL_5;
    }

LABEL_10:
    v8 = 0;
    goto LABEL_13;
  }

LABEL_5:
  cNContactID = [(IMDHandle *)self CNContactID];
  if (cNContactID)
  {
    v8 = 1;
  }

  else
  {
    cNContactID = [thanCopy CNContactID];
    v8 = cNContactID == 0;
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

- (void)setPersonCentricID:(id)d
{
  dCopy = d;
  if (IMSharedHelperPersistMergeID())
  {
    personCentricID = self->_personCentricID;
    p_personCentricID = &self->_personCentricID;
    if (personCentricID != dCopy)
    {
      objc_storeStrong(p_personCentricID, d);
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
  mEMORY[0x277D1A9F8] = [MEMORY[0x277D1A9F8] sharedInstance];
  v4 = [mEMORY[0x277D1A9F8] offGridModeForHandle:self];

  return v4 == 2;
}

- (void)cachedOffGridModeAndLastPublisherWithCompletion:(id)completion
{
  completionCopy = completion;
  mEMORY[0x277D1A9F8] = [MEMORY[0x277D1A9F8] sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B6DA228;
  v7[3] = &unk_278708620;
  v8 = completionCopy;
  v6 = completionCopy;
  [mEMORY[0x277D1A9F8] cachedOffGridModeAndLastPublisherForHandle:self completion:v7];
}

- (void)isOffGridModeWithCompletion:(id)completion
{
  completionCopy = completion;
  mEMORY[0x277D1A9F8] = [MEMORY[0x277D1A9F8] sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B6DA2FC;
  v7[3] = &unk_278708648;
  v8 = completionCopy;
  v6 = completionCopy;
  [mEMORY[0x277D1A9F8] offGridModeForHandle:self completion:v7];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [IMDHandle alloc];
  v5 = [(IMDHandle *)self ID];
  unformattedID = [(IMDHandle *)self unformattedID];
  countryCode = [(IMDHandle *)self countryCode];
  personCentricID = [(IMDHandle *)self personCentricID];
  v9 = [(IMDHandle *)v4 initWithID:v5 unformattedID:unformattedID countryCode:countryCode personCentricID:personCentricID];

  return v9;
}

@end