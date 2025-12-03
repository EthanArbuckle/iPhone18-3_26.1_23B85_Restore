@interface NNMKMailbox
+ (id)generateMailboxIdWithAccountId:(id)id mailboxName:(id)name;
+ (id)idsFromMailboxes:(id)mailboxes;
+ (unint64_t)messageStateForMailboxFilterType:(unint64_t)type;
+ (unint64_t)syncedTypeFromFilterType:(unint64_t)type;
+ (unint64_t)syncedTypeFromMailbox:(id)mailbox;
- (BOOL)hasCompoundFilters;
- (BOOL)isEqual:(id)equal;
- (NNMKMailbox)initWithCoder:(id)coder;
- (NNMKMailbox)initWithFilterType:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)addFilterType:(unint64_t)type;
- (void)encodeWithCoder:(id)coder;
- (void)removeFilterType:(unint64_t)type;
- (void)resetURL;
- (void)setMailboxId:(id)id;
@end

@implementation NNMKMailbox

- (NNMKMailbox)initWithFilterType:(unint64_t)type
{
  v11.receiver = self;
  v11.super_class = NNMKMailbox;
  v4 = [(NNMKMailbox *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_filterType = type;
    accountId = v4->_accountId;
    v4->_accountId = 0;

    url = v5->_url;
    v5->_url = 0;

    customName = v5->_customName;
    v5->_customName = &stru_286C69F68;

    mailboxId = v5->_mailboxId;
    v5->_mailboxId = @"-1";
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(NNMKMailbox);
  [(NNMKMailbox *)v4 setType:[(NNMKMailbox *)self type]];
  [(NNMKMailbox *)v4 setFilterType:[(NNMKMailbox *)self filterType]];
  mailboxId = [(NNMKMailbox *)self mailboxId];
  [(NNMKMailbox *)v4 setMailboxId:mailboxId];

  accountId = [(NNMKMailbox *)self accountId];
  [(NNMKMailbox *)v4 setAccountId:accountId];

  accountLocalId = [(NNMKMailbox *)self accountLocalId];
  [(NNMKMailbox *)v4 setAccountLocalId:accountLocalId];

  v8 = [(NNMKMailbox *)self url];
  [(NNMKMailbox *)v4 setUrl:v8];

  customName = [(NNMKMailbox *)self customName];
  [(NNMKMailbox *)v4 setCustomName:customName];

  [(NNMKMailbox *)v4 setSyncEnabled:[(NNMKMailbox *)self syncEnabled]];
  [(NNMKMailbox *)v4 setSyncRequested:[(NNMKMailbox *)self syncRequested]];
  [(NNMKMailbox *)v4 setSyncActive:[(NNMKMailbox *)self syncActive]];
  lastUpdate = [(NNMKMailbox *)self lastUpdate];
  [(NNMKMailbox *)v4 setLastUpdate:lastUpdate];

  [(NNMKMailbox *)v4 setDatabaseContentVerified:[(NNMKMailbox *)self databaseContentVerified]];
  return v4;
}

- (void)setMailboxId:(id)id
{
  idCopy = id;
  v5 = @"-1";
  if (idCopy)
  {
    v5 = idCopy;
  }

  mailboxId = self->_mailboxId;
  self->_mailboxId = &v5->isa;
}

+ (id)idsFromMailboxes:(id)mailboxes
{
  v18 = *MEMORY[0x277D85DE8];
  mailboxesCopy = mailboxes;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(mailboxesCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = mailboxesCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        mailboxId = [*(*(&v13 + 1) + 8 * i) mailboxId];
        [v4 addObject:mailboxId];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NNMKMailbox)initWithCoder:(id)coder
{
  v26 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [(NNMKMailbox *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyType"];
    v5->_type = [v6 unsignedIntegerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyFilterType"];
    v5->_filterType = [v7 unsignedIntegerValue];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyMailboxId"];
    mailboxId = v5->_mailboxId;
    v5->_mailboxId = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyAccountId"];
    accountId = v5->_accountId;
    v5->_accountId = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyAccountLocalId"];
    accountLocalId = v5->_accountLocalId;
    v5->_accountLocalId = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyURL"];
    url = v5->_url;
    v5->_url = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyCustomName"];
    customName = v5->_customName;
    v5->_customName = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeySyncEnabled"];
    v5->_syncEnabled = [v18 BOOLValue];

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeySyncRequested"];
    v5->_syncRequested = [v19 BOOLValue];

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeySyncActive"];
    v5->_syncActive = [v20 BOOLValue];

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyLastUpdate"];
    lastUpdate = v5->_lastUpdate;
    v5->_lastUpdate = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyNeedsDatabaseVerification"];
    v5->_databaseContentVerified = [v23 BOOLValue];
  }

  v24 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  type = self->_type;
  coderCopy = coder;
  v7 = [v4 numberWithUnsignedInteger:type];
  [coderCopy encodeObject:v7 forKey:@"kNSCodingKeyType"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_filterType];
  [coderCopy encodeObject:v8 forKey:@"kNSCodingKeyFilterType"];

  [coderCopy encodeObject:self->_accountId forKey:@"kNSCodingKeyAccountId"];
  [coderCopy encodeObject:self->_accountLocalId forKey:@"kNSCodingKeyAccountLocalId"];
  [coderCopy encodeObject:self->_mailboxId forKey:@"kNSCodingKeyMailboxId"];
  [coderCopy encodeObject:self->_url forKey:@"kNSCodingKeyURL"];
  [coderCopy encodeObject:self->_customName forKey:@"kNSCodingKeyCustomName"];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_syncEnabled];
  [coderCopy encodeObject:v9 forKey:@"kNSCodingKeySyncEnabled"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_syncRequested];
  [coderCopy encodeObject:v10 forKey:@"kNSCodingKeySyncRequested"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_syncActive];
  [coderCopy encodeObject:v11 forKey:@"kNSCodingKeySyncActive"];

  [coderCopy encodeObject:self->_lastUpdate forKey:@"kNSCodingKeyLastUpdate"];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_databaseContentVerified];
  [coderCopy encodeObject:v12 forKey:@"kNSCodingKeyNeedsDatabaseVerification"];
}

+ (unint64_t)messageStateForMailboxFilterType:(unint64_t)type
{
  if (type <= 7)
  {
    if (type == 2)
    {
      return 64;
    }

    if (type == 4)
    {
      return 8;
    }
  }

  else
  {
    switch(type)
    {
      case 8uLL:
        return 1;
      case 0x10uLL:
        return 32;
      case 0x20uLL:
        return 128;
    }
  }

  return 0;
}

+ (id)generateMailboxIdWithAccountId:(id)id mailboxName:(id)name
{
  v5 = MEMORY[0x277CCACA8];
  v6 = MEMORY[0x277CCA900];
  nameCopy = name;
  idCopy = id;
  uRLQueryAllowedCharacterSet = [v6 URLQueryAllowedCharacterSet];
  v10 = [nameCopy stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];

  v11 = [v5 stringWithFormat:@"imap://%@/%@", idCopy, v10];

  return v11;
}

- (void)addFilterType:(unint64_t)type
{
  v4 = [(NNMKMailbox *)self filterType]| type;

  [(NNMKMailbox *)self setFilterType:v4];
}

- (void)removeFilterType:(unint64_t)type
{
  if ([(NNMKMailbox *)self hasFilterType:?])
  {
    v5 = [(NNMKMailbox *)self filterType]^ type;

    [(NNMKMailbox *)self setFilterType:v5];
  }
}

- (BOOL)hasCompoundFilters
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [&unk_286C7BF58 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(&unk_286C7BF58);
        }

        v5 += -[NNMKMailbox hasFilterType:](self, "hasFilterType:", [*(*(&v10 + 1) + 8 * v7) unsignedIntegerValue]);
        if (v5 > 1)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v4 != v7);
      v3 = [&unk_286C7BF58 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v4 = v3;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  v8 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && (v5 = [equalCopy type], v5 == -[NNMKMailbox type](self, "type")) && (v6 = objc_msgSend(equalCopy, "filterType"), v6 == -[NNMKMailbox filterType](self, "filterType")))
  {
    mailboxId = [equalCopy mailboxId];
    mailboxId2 = [(NNMKMailbox *)self mailboxId];
    if ([mailboxId isEqualToString:mailboxId2])
    {
      customName = [equalCopy customName];
      customName2 = [(NNMKMailbox *)self customName];
      v11 = [customName isEqualToString:customName2];
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

  return v11;
}

- (unint64_t)hash
{
  mailboxId = [(NNMKMailbox *)self mailboxId];
  v3 = [mailboxId hash];

  return v3;
}

+ (unint64_t)syncedTypeFromMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v5 = [mailboxCopy url];

  if (v5)
  {
    type = [mailboxCopy type];

    if (type == 1)
    {
      return 100;
    }

    else
    {
      return 200;
    }
  }

  else
  {
    filterType = [mailboxCopy filterType];

    return [self syncedTypeFromFilterType:filterType];
  }
}

+ (unint64_t)syncedTypeFromFilterType:(unint64_t)type
{
  result = type;
  if (type > 15)
  {
    switch(type)
    {
      case 0x10uLL:
        return 5;
      case 0x20uLL:
        return 6;
      case 0x40uLL:
        return 7;
    }
  }

  else
  {
    if (type - 1 < 2)
    {
      return result;
    }

    if (type == 4)
    {
      return 3;
    }

    if (type == 8)
    {
      return 4;
    }
  }

  return 0;
}

- (void)resetURL
{
  url = self->_url;
  self->_url = 0;
  MEMORY[0x2821F96F8]();
}

- (void)initWithCoder:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_25B19F000, log, OS_LOG_TYPE_ERROR, "NNMKMailbox entity is unable to decode some of the fields (possible Message.framework API changes): %{public}@", buf, 0xCu);
}

@end