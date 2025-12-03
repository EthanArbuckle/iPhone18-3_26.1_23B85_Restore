@interface purgeOP
- (purgeOP)initWithUrgency:(int)urgency info:(id)info reply:(id)reply;
@end

@implementation purgeOP

- (purgeOP)initWithUrgency:(int)urgency info:(id)info reply:(id)reply
{
  infoCopy = info;
  replyCopy = reply;
  v16.receiver = self;
  v16.super_class = purgeOP;
  v11 = [(purgeOP *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_urgency = urgency;
    objc_storeStrong(&v11->_info, info);
    v13 = objc_retainBlock(replyCopy);
    reply = v12->_reply;
    v12->_reply = v13;
  }

  return v12;
}

@end