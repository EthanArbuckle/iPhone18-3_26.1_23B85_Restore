@interface CHSynchronizedLoggable
- (CHSynchronizedLoggable)initWithName:(const char *)name;
- (CHSynchronizedLoggable)initWithName:(const char *)name queue:(id)queue;
@end

@implementation CHSynchronizedLoggable

- (CHSynchronizedLoggable)initWithName:(const char *)name
{
  v10.receiver = self;
  v10.super_class = CHSynchronizedLoggable;
  v4 = [(CHSynchronizedLoggable *)&v10 init];
  if (v4)
  {
    v5 = [[CHLogger alloc] initWithDomain:name];
    logger = v4->_logger;
    v4->_logger = v5;

    v7 = [[CHSynchronizable alloc] initWithName:name];
    synchronizable = v4->_synchronizable;
    v4->_synchronizable = v7;
  }

  return v4;
}

- (CHSynchronizedLoggable)initWithName:(const char *)name queue:(id)queue
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = CHSynchronizedLoggable;
  v7 = [(CHSynchronizedLoggable *)&v13 init];
  if (v7)
  {
    v8 = [[CHLogger alloc] initWithDomain:name];
    logger = v7->_logger;
    v7->_logger = v8;

    v10 = [[CHSynchronizable alloc] initWithQueue:queueCopy];
    synchronizable = v7->_synchronizable;
    v7->_synchronizable = v10;
  }

  return v7;
}

@end