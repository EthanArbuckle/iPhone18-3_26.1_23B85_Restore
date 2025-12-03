@interface GKUnifiedRecipient
+ (id)recipientForContact:(id)contact;
+ (id)recipientForHandle:(id)handle;
- (id)displayName;
- (void)setContact:(id)contact;
@end

@implementation GKUnifiedRecipient

- (void)setContact:(id)contact
{
  contactCopy = contact;
  p_contact = &self->_contact;
  if (self->_contact != contactCopy)
  {
    v9 = contactCopy;
    objc_storeStrong(p_contact, contact);
    v7 = [MEMORY[0x277CBDA78] stringFromContact:v9 style:0];
    [(GKUnifiedRecipient *)self setFullName:v7];

    nickname = [(CNContact *)v9 nickname];
    [(GKUnifiedRecipient *)self setNickName:nickname];
  }

  MEMORY[0x2821F9730](p_contact);
}

- (id)displayName
{
  fullName = [(GKUnifiedRecipient *)self fullName];
  v4 = fullName;
  if (fullName)
  {
    handle = fullName;
  }

  else
  {
    handle = [(GKUnifiedRecipient *)self handle];
  }

  v6 = handle;

  return v6;
}

+ (id)recipientForHandle:(id)handle
{
  handleCopy = handle;
  if ([handleCopy length])
  {
    v4 = objc_alloc_init(GKUnifiedRecipient);
    [(GKUnifiedRecipient *)v4 setHandle:handleCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)recipientForContact:(id)contact
{
  contactCopy = contact;
  v4 = objc_alloc_init(GKUnifiedRecipient);
  [(GKUnifiedRecipient *)v4 setContact:contactCopy];
  v5 = [GKMessageUtilities messagesRecipientHandleForContact:contactCopy];

  [(GKUnifiedRecipient *)v4 setHandle:v5];

  return v4;
}

@end