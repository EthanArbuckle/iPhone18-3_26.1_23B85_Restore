@interface MRDIDSServiceMessage
- (MRDIDSServiceMessage)initWithID:(id)a3 data:(id)a4 device:(id)a5 service:(id)a6;
@end

@implementation MRDIDSServiceMessage

- (MRDIDSServiceMessage)initWithID:(id)a3 data:(id)a4 device:(id)a5 service:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = MRDIDSServiceMessage;
  v14 = [(MRDIDSServiceMessage *)&v20 init];
  if (v14)
  {
    v15 = [v10 copy];
    messageID = v14->_messageID;
    v14->_messageID = v15;

    v17 = [v11 copy];
    data = v14->_data;
    v14->_data = v17;

    objc_storeStrong(&v14->_service, a6);
    objc_storeStrong(&v14->_device, a5);
  }

  return v14;
}

@end