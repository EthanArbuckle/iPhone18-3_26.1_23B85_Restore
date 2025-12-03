@interface IDSSessionInvitationSentMetric
- (IDSSessionInvitationSentMetric)initWithGuid:(id)guid numberOfRecipients:(id)recipients;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSSessionInvitationSentMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  guid = [(IDSSessionInvitationSentMetric *)self guid];
  if (guid)
  {
    CFDictionarySetValue(v3, @"guid", guid);
  }

  numberOfRecipients = [(IDSSessionInvitationSentMetric *)self numberOfRecipients];
  if (numberOfRecipients)
  {
    CFDictionarySetValue(v3, @"numberOfRecipients", numberOfRecipients);
  }

  return v3;
}

- (IDSSessionInvitationSentMetric)initWithGuid:(id)guid numberOfRecipients:(id)recipients
{
  guidCopy = guid;
  recipientsCopy = recipients;
  v12.receiver = self;
  v12.super_class = IDSSessionInvitationSentMetric;
  v9 = [(IDSSessionInvitationSentMetric *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_guid, guid);
    objc_storeStrong(&v10->_numberOfRecipients, recipients);
  }

  return v10;
}

@end