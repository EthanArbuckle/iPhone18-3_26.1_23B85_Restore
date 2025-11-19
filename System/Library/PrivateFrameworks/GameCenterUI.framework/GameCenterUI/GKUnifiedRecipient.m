@interface GKUnifiedRecipient
+ (id)recipientForContact:(id)a3;
+ (id)recipientForHandle:(id)a3;
- (id)displayName;
- (void)setContact:(id)a3;
@end

@implementation GKUnifiedRecipient

- (void)setContact:(id)a3
{
  v5 = a3;
  p_contact = &self->_contact;
  if (self->_contact != v5)
  {
    v9 = v5;
    objc_storeStrong(p_contact, a3);
    v7 = [MEMORY[0x277CBDA78] stringFromContact:v9 style:0];
    [(GKUnifiedRecipient *)self setFullName:v7];

    v8 = [(CNContact *)v9 nickname];
    [(GKUnifiedRecipient *)self setNickName:v8];
  }

  MEMORY[0x2821F9730](p_contact);
}

- (id)displayName
{
  v3 = [(GKUnifiedRecipient *)self fullName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(GKUnifiedRecipient *)self handle];
  }

  v6 = v5;

  return v6;
}

+ (id)recipientForHandle:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = objc_alloc_init(GKUnifiedRecipient);
    [(GKUnifiedRecipient *)v4 setHandle:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)recipientForContact:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(GKUnifiedRecipient);
  [(GKUnifiedRecipient *)v4 setContact:v3];
  v5 = [GKMessageUtilities messagesRecipientHandleForContact:v3];

  [(GKUnifiedRecipient *)v4 setHandle:v5];

  return v4;
}

@end