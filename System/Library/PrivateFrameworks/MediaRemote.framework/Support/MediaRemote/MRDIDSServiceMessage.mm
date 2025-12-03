@interface MRDIDSServiceMessage
- (MRDIDSServiceMessage)initWithID:(id)d data:(id)data device:(id)device service:(id)service;
@end

@implementation MRDIDSServiceMessage

- (MRDIDSServiceMessage)initWithID:(id)d data:(id)data device:(id)device service:(id)service
{
  dCopy = d;
  dataCopy = data;
  deviceCopy = device;
  serviceCopy = service;
  v20.receiver = self;
  v20.super_class = MRDIDSServiceMessage;
  v14 = [(MRDIDSServiceMessage *)&v20 init];
  if (v14)
  {
    v15 = [dCopy copy];
    messageID = v14->_messageID;
    v14->_messageID = v15;

    v17 = [dataCopy copy];
    data = v14->_data;
    v14->_data = v17;

    objc_storeStrong(&v14->_service, service);
    objc_storeStrong(&v14->_device, device);
  }

  return v14;
}

@end