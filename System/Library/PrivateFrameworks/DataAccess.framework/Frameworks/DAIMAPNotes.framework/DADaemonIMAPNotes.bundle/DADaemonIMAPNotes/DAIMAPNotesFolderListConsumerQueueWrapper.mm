@interface DAIMAPNotesFolderListConsumerQueueWrapper
- (DAIMAPNotesFolderListConsumerQueueWrapper)initWithConsumer:(id)consumer queue:(id)queue;
@end

@implementation DAIMAPNotesFolderListConsumerQueueWrapper

- (DAIMAPNotesFolderListConsumerQueueWrapper)initWithConsumer:(id)consumer queue:(id)queue
{
  consumerCopy = consumer;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = DAIMAPNotesFolderListConsumerQueueWrapper;
  v9 = [(DAIMAPNotesFolderListConsumerQueueWrapper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_consumer, consumer);
    objc_storeStrong(&v10->_queue, queue);
  }

  return v10;
}

@end