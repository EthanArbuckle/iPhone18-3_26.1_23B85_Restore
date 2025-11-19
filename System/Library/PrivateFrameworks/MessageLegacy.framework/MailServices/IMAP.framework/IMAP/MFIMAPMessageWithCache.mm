@interface MFIMAPMessageWithCache
- (BOOL)isMessageContentsLocallyAvailable;
- (id)headerData;
- (id)messageData;
- (void)dealloc;
- (void)setHeaders:(id)a3;
@end

@implementation MFIMAPMessageWithCache

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFIMAPMessageWithCache;
  [(MFIMAPMessage *)&v3 dealloc];
}

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
    v5.receiver = self;
    v5.super_class = MFIMAPMessageWithCache;
    return [(MFIMAPMessageWithCache *)&v5 messageData];
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

- (void)setHeaders:(id)a3
{
  headers = self->_headers;
  if (headers != a3)
  {

    self->_headers = a3;
  }
}

- (id)headerData
{
  v3 = [(MFIMAPMessageWithCache *)self messageData];
  if (!v3 || (v4 = v3, v5 = [v3 mf_rangeOfRFC822HeaderData], v5 == 0x7FFFFFFFFFFFFFFFLL) || (result = objc_msgSend(v4, "mf_subdataWithRange:", v5, v6)) == 0)
  {
    v8.receiver = self;
    v8.super_class = MFIMAPMessageWithCache;
    return [(MFIMAPMessageWithCache *)&v8 headerData];
  }

  return result;
}

@end