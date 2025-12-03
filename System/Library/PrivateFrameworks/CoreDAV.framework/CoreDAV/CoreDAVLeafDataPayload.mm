@interface CoreDAVLeafDataPayload
- (CoreDAVLeafDataPayload)initWithURL:(id)l eTag:(id)tag dataPayload:(id)payload inContainerWithURL:(id)rL withAccountInfoProvider:(id)provider;
@end

@implementation CoreDAVLeafDataPayload

- (CoreDAVLeafDataPayload)initWithURL:(id)l eTag:(id)tag dataPayload:(id)payload inContainerWithURL:(id)rL withAccountInfoProvider:(id)provider
{
  lCopy = l;
  tagCopy = tag;
  payloadCopy = payload;
  v17.receiver = self;
  v17.super_class = CoreDAVLeafDataPayload;
  v14 = [(CoreDAVLeafDataPayload *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_dataPayload, payload);
    objc_storeStrong(&v15->_serverID, l);
    objc_storeStrong(&v15->_syncKey, tag);
  }

  return v15;
}

@end