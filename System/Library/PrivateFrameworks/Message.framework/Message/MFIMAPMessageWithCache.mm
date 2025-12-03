@interface MFIMAPMessageWithCache
- (BOOL)isMessageContentsLocallyAvailable;
- (id)headerData;
- (id)messageData;
@end

@implementation MFIMAPMessageWithCache

- (id)messageData
{
  if ([(MFIMAPMessage *)self isPartial])
  {
    v3 = 0;
  }

  else
  {
    v3 = self->_messageData;
  }

  if ([(MFIMAPMessage *)self isPartial])
  {
    v6.receiver = self;
    v6.super_class = MFIMAPMessageWithCache;
    messageData = [(MFIMAPMessageWithCache *)&v6 messageData];

    v3 = messageData;
  }

  return v3;
}

- (BOOL)isMessageContentsLocallyAvailable
{
  if (self->_messageData)
  {
    return ![(MFIMAPMessage *)self isPartial];
  }

  else
  {
    return 0;
  }
}

- (id)headerData
{
  messageData = [(MFIMAPMessageWithCache *)self messageData];
  v5 = messageData;
  if (!messageData || (v4 = [messageData mf_rangeOfRFC822HeaderData], v4 == 0x7FFFFFFFFFFFFFFFLL) || (objc_msgSend(v5, "mf_subdataWithRange:", v4, v6), (headerData = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9.receiver = self;
    v9.super_class = MFIMAPMessageWithCache;
    headerData = [(MFIMAPMessageWithCache *)&v9 headerData];
  }

  return headerData;
}

@end