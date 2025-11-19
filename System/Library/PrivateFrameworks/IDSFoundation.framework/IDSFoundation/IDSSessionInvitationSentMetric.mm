@interface IDSSessionInvitationSentMetric
- (IDSSessionInvitationSentMetric)initWithGuid:(id)a3 numberOfRecipients:(id)a4;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSSessionInvitationSentMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(IDSSessionInvitationSentMetric *)self guid];
  if (v4)
  {
    CFDictionarySetValue(v3, @"guid", v4);
  }

  v5 = [(IDSSessionInvitationSentMetric *)self numberOfRecipients];
  if (v5)
  {
    CFDictionarySetValue(v3, @"numberOfRecipients", v5);
  }

  return v3;
}

- (IDSSessionInvitationSentMetric)initWithGuid:(id)a3 numberOfRecipients:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IDSSessionInvitationSentMetric;
  v9 = [(IDSSessionInvitationSentMetric *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_guid, a3);
    objc_storeStrong(&v10->_numberOfRecipients, a4);
  }

  return v10;
}

@end