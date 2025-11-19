@interface SGMessagePair
- (SGMessagePair)initWithReply:(id)a3 prompt:(id)a4 handle:(id)a5 sentAt:(id)a6;
@end

@implementation SGMessagePair

- (SGMessagePair)initWithReply:(id)a3 prompt:(id)a4 handle:(id)a5 sentAt:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = SGMessagePair;
  v15 = [(SGMessagePair *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_reply, a3);
    objc_storeStrong(&v16->_prompt, a4);
    objc_storeStrong(&v16->_handle, a5);
    objc_storeStrong(&v16->_sentAt, a6);
  }

  return v16;
}

@end