@interface IMDBackgroundMessagingAPIMessageRegistry
+ (id)sharedRegistry;
- (IMDBackgroundMessagingAPIMessageRegistry)init;
- (id)dateLastMessageSentFromAppWithBundleID:(id)d recipientHandle:(id)handle;
- (void)recordMessageSentFromAppWithBundleID:(id)d toRecipientHandle:(id)handle;
@end

@implementation IMDBackgroundMessagingAPIMessageRegistry

+ (id)sharedRegistry
{
  if (qword_27D8CFE38 != -1)
  {
    sub_22B7D2950();
  }

  v3 = qword_27D8CFE40;

  return v3;
}

- (IMDBackgroundMessagingAPIMessageRegistry)init
{
  v6.receiver = self;
  v6.super_class = IMDBackgroundMessagingAPIMessageRegistry;
  v2 = [(IMDBackgroundMessagingAPIMessageRegistry *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    registry = v2->_registry;
    v2->_registry = v3;
  }

  return v2;
}

- (void)recordMessageSentFromAppWithBundleID:(id)d toRecipientHandle:(id)handle
{
  v7 = [IMDBackgroundMessagingAPIMessageRegistry keyFromBundleID:d recipientHandle:handle];
  registry = self->_registry;
  v6 = [MEMORY[0x277CBEAA8] now];
  [(NSMutableDictionary *)registry setObject:v6 forKey:v7];
}

- (id)dateLastMessageSentFromAppWithBundleID:(id)d recipientHandle:(id)handle
{
  v5 = [IMDBackgroundMessagingAPIMessageRegistry keyFromBundleID:d recipientHandle:handle];
  v6 = [(NSMutableDictionary *)self->_registry objectForKey:v5];

  return v6;
}

@end