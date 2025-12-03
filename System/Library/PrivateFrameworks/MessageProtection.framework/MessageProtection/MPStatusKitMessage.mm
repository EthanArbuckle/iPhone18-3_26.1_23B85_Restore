@interface MPStatusKitMessage
- (MPStatusKitMessage)initWithIndex:(unsigned __int16)index encryptedMessage:(id)message signature:(id)signature;
@end

@implementation MPStatusKitMessage

- (MPStatusKitMessage)initWithIndex:(unsigned __int16)index encryptedMessage:(id)message signature:(id)signature
{
  messageCopy = message;
  signatureCopy = signature;
  v14.receiver = self;
  v14.super_class = MPStatusKitMessage;
  v11 = [(MPStatusKitMessage *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_index = index;
    objc_storeStrong(&v11->_encryptedMessage, message);
    objc_storeStrong(&v12->_signature, signature);
  }

  return v12;
}

@end