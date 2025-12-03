@interface SGMessagePair
- (SGMessagePair)initWithReply:(id)reply prompt:(id)prompt handle:(id)handle sentAt:(id)at;
@end

@implementation SGMessagePair

- (SGMessagePair)initWithReply:(id)reply prompt:(id)prompt handle:(id)handle sentAt:(id)at
{
  replyCopy = reply;
  promptCopy = prompt;
  handleCopy = handle;
  atCopy = at;
  v18.receiver = self;
  v18.super_class = SGMessagePair;
  v15 = [(SGMessagePair *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_reply, reply);
    objc_storeStrong(&v16->_prompt, prompt);
    objc_storeStrong(&v16->_handle, handle);
    objc_storeStrong(&v16->_sentAt, at);
  }

  return v16;
}

@end