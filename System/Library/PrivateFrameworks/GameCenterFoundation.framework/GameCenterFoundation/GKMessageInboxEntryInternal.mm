@interface GKMessageInboxEntryInternal
+ (id)secureCodedPropertyKeys;
- (NSString)senderDisplayName;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation GKMessageInboxEntryInternal

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(GKMessageInboxEntryInternal *)self url];
  [v4 setUrl:v5];

  v6 = [(GKMessageInboxEntryInternal *)self senderHandle];
  [v4 setSenderHandle:v6];

  v7 = [(GKMessageInboxEntryInternal *)self senderAlias];
  [v4 setSenderAlias:v7];

  v8 = [(GKMessageInboxEntryInternal *)self contactID];
  [v4 setContactID:v8];

  v9 = [(GKMessageInboxEntryInternal *)self contactName];
  [v4 setContactName:v9];

  v10 = [(GKMessageInboxEntryInternal *)self friendCode];
  [v4 setFriendCode:v10];

  v11 = [(GKMessageInboxEntryInternal *)self timestamp];
  [v4 setTimestamp:v11];

  return v4;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_13 != -1)
  {
    +[GKMessageInboxEntryInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_13;

  return v3;
}

void __54__GKMessageInboxEntryInternal_secureCodedPropertyKeys__block_invoke()
{
  v4[7] = *MEMORY[0x277D85DE8];
  v3[0] = @"url";
  v4[0] = objc_opt_class();
  v3[1] = @"senderHandle";
  v4[1] = objc_opt_class();
  v3[2] = @"senderAlias";
  v4[2] = objc_opt_class();
  v3[3] = @"contactID";
  v4[3] = objc_opt_class();
  v3[4] = @"contactName";
  v4[4] = objc_opt_class();
  v3[5] = @"friendCode";
  v4[5] = objc_opt_class();
  v3[6] = @"timestamp";
  v4[6] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:7];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_13;
  secureCodedPropertyKeys_sSecureCodedKeys_13 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (NSString)senderDisplayName
{
  contactName = self->_contactName;
  if (contactName)
  {
LABEL_4:
    v4 = contactName;

    return v4;
  }

  if (self->_senderAlias)
  {
    contactName = self->_senderHandle;
    goto LABEL_4;
  }

  v4 = &stru_283AFD1E0;

  return v4;
}

@end