@interface MFNanoBridgeSettingsAccountSpecificMailbox
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (MFNanoBridgeSettingsAccountSpecificMailbox)initWithAccountUniqueIdentifier:(id)a3 mailboxURL:(id)a4;
- (MFNanoBridgeSettingsAccountSpecificMailbox)initWithCoder:(id)a3;
- (MFNanoBridgeSettingsAccountSpecificMailbox)initWithMailboxUid:(id)a3 account:(id)a4;
- (NSString)mailboxId;
- (id)_mailboxUid;
- (id)displayName;
- (id)icon;
- (int64_t)type;
- (unint64_t)hash;
- (unint64_t)level;
- (void)encodeWithCoder:(id)a3;
- (void)invalidateCachedData;
@end

@implementation MFNanoBridgeSettingsAccountSpecificMailbox

- (MFNanoBridgeSettingsAccountSpecificMailbox)initWithMailboxUid:(id)a3 account:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v8 = [v7 account];
  }

  v9 = [v8 uniqueID];
  v10 = [v7 URLString];
  v11 = [NSURL URLWithString:v10];
  v12 = [(MFNanoBridgeSettingsAccountSpecificMailbox *)self initWithAccountUniqueIdentifier:v9 mailboxURL:v11];

  if (v12)
  {
    objc_storeStrong(&v12->_mailboxUid, a3);
    v12->_type = [(MFMailboxUid *)v12->_mailboxUid type];
  }

  return v12;
}

- (MFNanoBridgeSettingsAccountSpecificMailbox)initWithAccountUniqueIdentifier:(id)a3 mailboxURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = MFNanoBridgeSettingsAccountSpecificMailbox;
  v8 = [(MFNanoBridgeSettingsAccountSpecificMailbox *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    accountUniqueIdentifier = v8->_accountUniqueIdentifier;
    v8->_accountUniqueIdentifier = v9;

    objc_storeStrong(&v8->_mailboxURL, a4);
  }

  return v8;
}

- (void)invalidateCachedData
{
  mailboxUid = self->_mailboxUid;
  self->_mailboxUid = 0;
}

- (int64_t)type
{
  v2 = [(MFNanoBridgeSettingsAccountSpecificMailbox *)self _mailboxUid];
  v3 = [v2 type];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_accountUniqueIdentifier forKey:@"kNSCodingKeyAccount"];
  [v5 encodeObject:self->_mailboxURL forKey:@"kNSCodingKeyURL"];
  v4 = [NSNumber numberWithInteger:self->_type];
  [v5 encodeObject:v4 forKey:@"kNSCodingKeyType"];
}

- (MFNanoBridgeSettingsAccountSpecificMailbox)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MFNanoBridgeSettingsAccountSpecificMailbox;
  v5 = [(MFNanoBridgeSettingsAccountSpecificMailbox *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyAccount"];
    accountUniqueIdentifier = v5->_accountUniqueIdentifier;
    v5->_accountUniqueIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyURL"];
    mailboxURL = v5->_mailboxURL;
    v5->_mailboxURL = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyType"];
    v5->_type = [v10 unsignedIntegerValue];
  }

  return v5;
}

- (id)displayName
{
  v2 = [(MFNanoBridgeSettingsAccountSpecificMailbox *)self _mailboxUid];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 displayNameUsingSpecialNames];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)icon
{
  v2 = [(MFNanoBridgeSettingsAccountSpecificMailbox *)self _mailboxUid];
  v3 = v2;
  if (v2)
  {
    v4 = +[MFMailboxUid shorcutIconNameForMailboxType:](MFMailboxUid, "shorcutIconNameForMailboxType:", [v2 mailboxType]);
    if (v4)
    {
      v5 = [UIImage mf_systemImageNamed:v4 forView:7];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)level
{
  v2 = [(MFNanoBridgeSettingsAccountSpecificMailbox *)self _mailboxUid];
  v3 = v2;
  if (v2)
  {
    if ([v2 mailboxType])
    {
      v4 = 0;
    }

    else
    {
      v4 = [v3 level];
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isValid
{
  v2 = [(MFNanoBridgeSettingsAccountSpecificMailbox *)self _mailboxUid];
  v3 = v2 != 0;

  return v3;
}

- (unint64_t)hash
{
  v2 = [(MFNanoBridgeSettingsAccountSpecificMailbox *)self mailboxURL];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MFNanoBridgeSettingsAccountSpecificMailbox;
  if ([(MFNanoBridgeSettingsMailbox *)&v9 isEqual:v4])
  {
    v5 = [v4 mailboxURL];
    if ([v5 isEqual:self->_mailboxURL])
    {
      v6 = [v4 accountUniqueIdentifier];
      v7 = [v6 isEqualToString:self->_accountUniqueIdentifier];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)mailboxId
{
  v2 = [(MFNanoBridgeSettingsAccountSpecificMailbox *)self _mailboxUid];
  v3 = [v2 nano_mailboxId];

  return v3;
}

- (id)_mailboxUid
{
  mailboxUid = self->_mailboxUid;
  if (!mailboxUid)
  {
    v4 = [MailAccount accountWithUniqueId:self->_accountUniqueIdentifier];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || ![v4 isActive])
    {
      v7 = MFLogGeneral();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000D4B2C(self->_accountUniqueIdentifier, [v4 isActive], v20, v7);
      }
    }

    else
    {
      if (self->_type == 7)
      {
        v5 = [v4 mailboxUidOfType:7 createIfNeeded:0];
        v6 = self->_mailboxUid;
        self->_mailboxUid = v5;
      }

      else
      {
        v9 = [(NSURL *)self->_mailboxURL absoluteString];
        v10 = [v4 mailboxUidForURL:v9];
        v11 = self->_mailboxUid;
        self->_mailboxUid = v10;

        if (!self->_mailboxUid)
        {
          v12 = [(NSURL *)self->_mailboxURL absoluteString];
          v13 = [v4 URLStringFromLegacyURLString:v12];

          v14 = [v4 mailboxUidForURL:v13];
          v15 = self->_mailboxUid;
          self->_mailboxUid = v14;

          if (self->_mailboxUid)
          {
            v16 = [[NSURL alloc] initWithString:v13];
            mailboxURL = self->_mailboxURL;
            self->_mailboxURL = v16;
          }

          else
          {
            v18 = MFLogGeneral();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              sub_1000D4AB0(&self->_mailboxURL, v18);
            }
          }
        }
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ![(MFMailboxUid *)self->_mailboxUid type])
      {
        v19 = [v4 primaryMailboxUid];
      }
    }

    mailboxUid = self->_mailboxUid;
  }

  return mailboxUid;
}

@end