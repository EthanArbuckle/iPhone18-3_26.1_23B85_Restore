@interface MPStatusKitMessage
- (MPStatusKitMessage)initWithIndex:(unsigned __int16)a3 encryptedMessage:(id)a4 signature:(id)a5;
@end

@implementation MPStatusKitMessage

- (MPStatusKitMessage)initWithIndex:(unsigned __int16)a3 encryptedMessage:(id)a4 signature:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = MPStatusKitMessage;
  v11 = [(MPStatusKitMessage *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_index = a3;
    objc_storeStrong(&v11->_encryptedMessage, a4);
    objc_storeStrong(&v12->_signature, a5);
  }

  return v12;
}

@end