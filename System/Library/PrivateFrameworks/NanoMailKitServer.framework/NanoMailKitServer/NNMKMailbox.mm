@interface NNMKMailbox
+ (id)generateMailboxIdWithAccountId:(id)a3 mailboxName:(id)a4;
+ (id)idsFromMailboxes:(id)a3;
+ (unint64_t)messageStateForMailboxFilterType:(unint64_t)a3;
+ (unint64_t)syncedTypeFromFilterType:(unint64_t)a3;
+ (unint64_t)syncedTypeFromMailbox:(id)a3;
- (BOOL)hasCompoundFilters;
- (BOOL)isEqual:(id)a3;
- (NNMKMailbox)initWithCoder:(id)a3;
- (NNMKMailbox)initWithFilterType:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)addFilterType:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)removeFilterType:(unint64_t)a3;
- (void)resetURL;
- (void)setMailboxId:(id)a3;
@end

@implementation NNMKMailbox

- (NNMKMailbox)initWithFilterType:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = NNMKMailbox;
  v4 = [(NNMKMailbox *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_filterType = a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(NNMKMailbox);
  [(NNMKMailbox *)v4 setType:[(NNMKMailbox *)self type]];
  [(NNMKMailbox *)v4 setFilterType:[(NNMKMailbox *)self filterType]];
  v5 = [(NNMKMailbox *)self mailboxId];
  [(NNMKMailbox *)v4 setMailboxId:v5];

  v6 = [(NNMKMailbox *)self accountId];
  [(NNMKMailbox *)v4 setAccountId:v6];

  v7 = [(NNMKMailbox *)self accountLocalId];
  [(NNMKMailbox *)v4 setAccountLocalId:v7];

  v8 = [(NNMKMailbox *)self url];
  [(NNMKMailbox *)v4 setUrl:v8];

  v9 = [(NNMKMailbox *)self customName];
  [(NNMKMailbox *)v4 setCustomName:v9];

  [(NNMKMailbox *)v4 setSyncEnabled:[(NNMKMailbox *)self syncEnabled]];
  [(NNMKMailbox *)v4 setSyncRequested:[(NNMKMailbox *)self syncRequested]];
  [(NNMKMailbox *)v4 setSyncActive:[(NNMKMailbox *)self syncActive]];
  v10 = [(NNMKMailbox *)self lastUpdate];
  [(NNMKMailbox *)v4 setLastUpdate:v10];

  [(NNMKMailbox *)v4 setDatabaseContentVerified:[(NNMKMailbox *)self databaseContentVerified]];
  return v4;
}

- (void)setMailboxId:(id)a3
{
  v4 = a3;
  v5 = @"-1";
  if (v4)
  {
    v5 = v4;
  }

  mailboxId = self->_mailboxId;
  self->_mailboxId = &v5->isa;
}

+ (id)idsFromMailboxes:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
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

        v10 = [*(*(&v13 + 1) + 8 * i) mailboxId];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NNMKMailbox)initWithCoder:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NNMKMailbox *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyType"];
    v5->_type = [v6 unsignedIntegerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyFilterType"];
    v5->_filterType = [v7 unsignedIntegerValue];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyMailboxId"];
    mailboxId = v5->_mailboxId;
    v5->_mailboxId = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyAccountId"];
    accountId = v5->_accountId;
    v5->_accountId = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyAccountLocalId"];
    accountLocalId = v5->_accountLocalId;
    v5->_accountLocalId = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyURL"];
    url = v5->_url;
    v5->_url = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyCustomName"];
    customName = v5->_customName;
    v5->_customName = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeySyncEnabled"];
    v5->_syncEnabled = [v18 BOOLValue];

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeySyncRequested"];
    v5->_syncRequested = [v19 BOOLValue];

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeySyncActive"];
    v5->_syncActive = [v20 BOOLValue];

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyLastUpdate"];
    lastUpdate = v5->_lastUpdate;
    v5->_lastUpdate = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyNeedsDatabaseVerification"];
    v5->_databaseContentVerified = [v23 BOOLValue];
  }

  v24 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  type = self->_type;
  v6 = a3;
  v7 = [v4 numberWithUnsignedInteger:type];
  [v6 encodeObject:v7 forKey:@"kNSCodingKeyType"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_filterType];
  [v6 encodeObject:v8 forKey:@"kNSCodingKeyFilterType"];

  [v6 encodeObject:self->_accountId forKey:@"kNSCodingKeyAccountId"];
  [v6 encodeObject:self->_accountLocalId forKey:@"kNSCodingKeyAccountLocalId"];
  [v6 encodeObject:self->_mailboxId forKey:@"kNSCodingKeyMailboxId"];
  [v6 encodeObject:self->_url forKey:@"kNSCodingKeyURL"];
  [v6 encodeObject:self->_customName forKey:@"kNSCodingKeyCustomName"];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_syncEnabled];
  [v6 encodeObject:v9 forKey:@"kNSCodingKeySyncEnabled"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_syncRequested];
  [v6 encodeObject:v10 forKey:@"kNSCodingKeySyncRequested"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_syncActive];
  [v6 encodeObject:v11 forKey:@"kNSCodingKeySyncActive"];

  [v6 encodeObject:self->_lastUpdate forKey:@"kNSCodingKeyLastUpdate"];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_databaseContentVerified];
  [v6 encodeObject:v12 forKey:@"kNSCodingKeyNeedsDatabaseVerification"];
}

+ (unint64_t)messageStateForMailboxFilterType:(unint64_t)a3
{
  if (a3 <= 7)
  {
    if (a3 == 2)
    {
      return 64;
    }

    if (a3 == 4)
    {
      return 8;
    }
  }

  else
  {
    switch(a3)
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

+ (id)generateMailboxIdWithAccountId:(id)a3 mailboxName:(id)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = MEMORY[0x277CCA900];
  v7 = a4;
  v8 = a3;
  v9 = [v6 URLQueryAllowedCharacterSet];
  v10 = [v7 stringByAddingPercentEncodingWithAllowedCharacters:v9];

  v11 = [v5 stringWithFormat:@"imap://%@/%@", v8, v10];

  return v11;
}

- (void)addFilterType:(unint64_t)a3
{
  v4 = [(NNMKMailbox *)self filterType]| a3;

  [(NNMKMailbox *)self setFilterType:v4];
}

- (void)removeFilterType:(unint64_t)a3
{
  if ([(NNMKMailbox *)self hasFilterType:?])
  {
    v5 = [(NNMKMailbox *)self filterType]^ a3;

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && (v5 = [v4 type], v5 == -[NNMKMailbox type](self, "type")) && (v6 = objc_msgSend(v4, "filterType"), v6 == -[NNMKMailbox filterType](self, "filterType")))
  {
    v7 = [v4 mailboxId];
    v8 = [(NNMKMailbox *)self mailboxId];
    if ([v7 isEqualToString:v8])
    {
      v9 = [v4 customName];
      v10 = [(NNMKMailbox *)self customName];
      v11 = [v9 isEqualToString:v10];
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
  v2 = [(NNMKMailbox *)self mailboxId];
  v3 = [v2 hash];

  return v3;
}

+ (unint64_t)syncedTypeFromMailbox:(id)a3
{
  v4 = a3;
  v5 = [v4 url];

  if (v5)
  {
    v6 = [v4 type];

    if (v6 == 1)
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
    v8 = [v4 filterType];

    return [a1 syncedTypeFromFilterType:v8];
  }
}

+ (unint64_t)syncedTypeFromFilterType:(unint64_t)a3
{
  result = a3;
  if (a3 > 15)
  {
    switch(a3)
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
    if (a3 - 1 < 2)
    {
      return result;
    }

    if (a3 == 4)
    {
      return 3;
    }

    if (a3 == 8)
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