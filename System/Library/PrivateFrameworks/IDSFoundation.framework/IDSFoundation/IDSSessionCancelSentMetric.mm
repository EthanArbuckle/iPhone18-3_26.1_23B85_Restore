@interface IDSSessionCancelSentMetric
- (IDSSessionCancelSentMetric)initWithGuid:(id)guid numberOfRecipients:(id)recipients remoteSessionEndReason:(unsigned int)reason;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSSessionCancelSentMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  guid = [(IDSSessionCancelSentMetric *)self guid];
  if (guid)
  {
    CFDictionarySetValue(v3, @"guid", guid);
  }

  numberOfRecipients = [(IDSSessionCancelSentMetric *)self numberOfRecipients];
  if (numberOfRecipients)
  {
    CFDictionarySetValue(v3, @"numberOfRecipients", numberOfRecipients);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSSessionCancelSentMetric remoteSessionEndReason](self, "remoteSessionEndReason")}];
  if (v6)
  {
    CFDictionarySetValue(v3, @"remoteSessionEndReason", v6);
  }

  return v3;
}

- (IDSSessionCancelSentMetric)initWithGuid:(id)guid numberOfRecipients:(id)recipients remoteSessionEndReason:(unsigned int)reason
{
  guidCopy = guid;
  recipientsCopy = recipients;
  v14.receiver = self;
  v14.super_class = IDSSessionCancelSentMetric;
  v11 = [(IDSSessionCancelSentMetric *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_guid, guid);
    objc_storeStrong(&v12->_numberOfRecipients, recipients);
    v12->_remoteSessionEndReason = reason;
  }

  return v12;
}

@end