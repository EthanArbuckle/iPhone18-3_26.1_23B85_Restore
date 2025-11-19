@interface CHSynchronizedLoggable
- (CHSynchronizedLoggable)initWithName:(const char *)a3;
- (CHSynchronizedLoggable)initWithName:(const char *)a3 queue:(id)a4;
@end

@implementation CHSynchronizedLoggable

- (CHSynchronizedLoggable)initWithName:(const char *)a3
{
  v10.receiver = self;
  v10.super_class = CHSynchronizedLoggable;
  v4 = [(CHSynchronizedLoggable *)&v10 init];
  if (v4)
  {
    v5 = [[CHLogger alloc] initWithDomain:a3];
    logger = v4->_logger;
    v4->_logger = v5;

    v7 = [[CHSynchronizable alloc] initWithName:a3];
    synchronizable = v4->_synchronizable;
    v4->_synchronizable = v7;
  }

  return v4;
}

- (CHSynchronizedLoggable)initWithName:(const char *)a3 queue:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = CHSynchronizedLoggable;
  v7 = [(CHSynchronizedLoggable *)&v13 init];
  if (v7)
  {
    v8 = [[CHLogger alloc] initWithDomain:a3];
    logger = v7->_logger;
    v7->_logger = v8;

    v10 = [[CHSynchronizable alloc] initWithQueue:v6];
    synchronizable = v7->_synchronizable;
    v7->_synchronizable = v10;
  }

  return v7;
}

@end