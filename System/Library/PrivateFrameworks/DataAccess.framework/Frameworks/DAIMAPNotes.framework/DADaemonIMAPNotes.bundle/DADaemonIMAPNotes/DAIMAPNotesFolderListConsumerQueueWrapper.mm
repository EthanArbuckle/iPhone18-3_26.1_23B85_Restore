@interface DAIMAPNotesFolderListConsumerQueueWrapper
- (DAIMAPNotesFolderListConsumerQueueWrapper)initWithConsumer:(id)a3 queue:(id)a4;
@end

@implementation DAIMAPNotesFolderListConsumerQueueWrapper

- (DAIMAPNotesFolderListConsumerQueueWrapper)initWithConsumer:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DAIMAPNotesFolderListConsumerQueueWrapper;
  v9 = [(DAIMAPNotesFolderListConsumerQueueWrapper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_consumer, a3);
    objc_storeStrong(&v10->_queue, a4);
  }

  return v10;
}

@end