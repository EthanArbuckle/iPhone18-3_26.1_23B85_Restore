@interface purgeOP
- (purgeOP)initWithUrgency:(int)a3 info:(id)a4 reply:(id)a5;
@end

@implementation purgeOP

- (purgeOP)initWithUrgency:(int)a3 info:(id)a4 reply:(id)a5
{
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = purgeOP;
  v11 = [(purgeOP *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_urgency = a3;
    objc_storeStrong(&v11->_info, a4);
    v13 = objc_retainBlock(v10);
    reply = v12->_reply;
    v12->_reply = v13;
  }

  return v12;
}

@end