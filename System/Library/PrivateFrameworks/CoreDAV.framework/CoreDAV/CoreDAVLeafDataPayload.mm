@interface CoreDAVLeafDataPayload
- (CoreDAVLeafDataPayload)initWithURL:(id)a3 eTag:(id)a4 dataPayload:(id)a5 inContainerWithURL:(id)a6 withAccountInfoProvider:(id)a7;
@end

@implementation CoreDAVLeafDataPayload

- (CoreDAVLeafDataPayload)initWithURL:(id)a3 eTag:(id)a4 dataPayload:(id)a5 inContainerWithURL:(id)a6 withAccountInfoProvider:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = CoreDAVLeafDataPayload;
  v14 = [(CoreDAVLeafDataPayload *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_dataPayload, a5);
    objc_storeStrong(&v15->_serverID, a3);
    objc_storeStrong(&v15->_syncKey, a4);
  }

  return v15;
}

@end