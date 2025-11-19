@interface IDSCoalesceMessageQueue
- (BOOL)isEmpty;
- (IDSCoalesceMessageQueue)initWithTopic:(id)a3 sendMode:(id)a4;
- (unint64_t)count;
@end

@implementation IDSCoalesceMessageQueue

- (IDSCoalesceMessageQueue)initWithTopic:(id)a3 sendMode:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IDSCoalesceMessageQueue;
  v9 = [(IDSCoalesceMessageQueue *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_topic, a3);
    objc_storeStrong(&v10->_sendMode, a4);
  }

  return v10;
}

- (BOOL)isEmpty
{
  v2 = [(IDSCoalesceMessageQueue *)self infos];
  v3 = [v2 count] == 0;

  return v3;
}

- (unint64_t)count
{
  v2 = [(IDSCoalesceMessageQueue *)self infos];
  v3 = [v2 count];

  return v3;
}

@end