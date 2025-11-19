@interface IDSSessionCancelSentMetric
- (IDSSessionCancelSentMetric)initWithGuid:(id)a3 numberOfRecipients:(id)a4 remoteSessionEndReason:(unsigned int)a5;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSSessionCancelSentMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(IDSSessionCancelSentMetric *)self guid];
  if (v4)
  {
    CFDictionarySetValue(v3, @"guid", v4);
  }

  v5 = [(IDSSessionCancelSentMetric *)self numberOfRecipients];
  if (v5)
  {
    CFDictionarySetValue(v3, @"numberOfRecipients", v5);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSSessionCancelSentMetric remoteSessionEndReason](self, "remoteSessionEndReason")}];
  if (v6)
  {
    CFDictionarySetValue(v3, @"remoteSessionEndReason", v6);
  }

  return v3;
}

- (IDSSessionCancelSentMetric)initWithGuid:(id)a3 numberOfRecipients:(id)a4 remoteSessionEndReason:(unsigned int)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = IDSSessionCancelSentMetric;
  v11 = [(IDSSessionCancelSentMetric *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_guid, a3);
    objc_storeStrong(&v12->_numberOfRecipients, a4);
    v12->_remoteSessionEndReason = a5;
  }

  return v12;
}

@end