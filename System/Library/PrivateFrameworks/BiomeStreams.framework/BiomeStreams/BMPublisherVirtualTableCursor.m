@interface BMPublisherVirtualTableCursor
- (BMPublisherVirtualTableCursor)initWithVirtualTable:(id)a3;
- (NSString)description;
- (int64_t)receiveInput:(id)a3;
- (void)_resetWithPublisher:(id)a3;
- (void)advance;
- (void)close;
- (void)receivedEvent:(id)a3;
- (void)requestNextEvents;
- (void)resetWithOptions:(id)a3;
- (void)subscribeTo:(id)a3;
@end

@implementation BMPublisherVirtualTableCursor

- (void)requestNextEvents
{
  v3 = objc_autoreleasePoolPush();
  v5 = [(BPSPublisher *)self->_publisher nextEvent];
  objc_autoreleasePoolPop(v3);
  v4 = v5;
  if (v5)
  {
    [(BMPublisherVirtualTableCursor *)self receivedEvent:v5];
    v4 = v5;
  }
}

- (void)close
{
  subscription = self->_subscription;
  self->_subscription = 0;
  MEMORY[0x1EEE66BB8]();
}

- (BMPublisherVirtualTableCursor)initWithVirtualTable:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = BMPublisherVirtualTableCursor;
  v6 = [(BMPublisherVirtualTableCursor *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_virtualTable, a3);
    rowObject = v7->_rowObject;
    v7->_rowObject = 0;
  }

  return v7;
}

- (void)resetWithOptions:(id)a3
{
  v9 = a3;
  rowObject = self->_rowObject;
  self->_rowObject = 0;

  v5 = objc_autoreleasePoolPush();
  v6 = [(BMStreamVirtualTable *)self->_virtualTable publisherBlock];
  v7 = (v6)[2](v6, v9);

  objc_autoreleasePoolPop(v5);
  if (BPSPipelineSupportsPullBasedPublishers())
  {
    [(BMPublisherVirtualTableCursor *)self _resetWithPublisher:v7];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    objc_storeStrong(&self->_publisher, v7);
    [(BPSPublisher *)self->_publisher subscribe:self];
    objc_autoreleasePoolPop(v8);
    [(BMPublisherVirtualTableCursor *)self advance];
  }
}

- (void)advance
{
  rowObject = self->_rowObject;
  self->_rowObject = 0;

  publisher = self->_publisher;
  if (BPSPipelineSupportsPullBasedPublishers())
  {

    [(BMPublisherVirtualTableCursor *)self _advance];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    [(BPSSubscription *)self->_subscription requestDemand:1];

    objc_autoreleasePoolPop(v5);
  }
}

- (int64_t)receiveInput:(id)a3
{
  v4 = a3;
  rowObject = self->_rowObject;
  if (rowObject)
  {
    rowObject = (self->_rowID + 1);
  }

  self->_rowID = rowObject;
  v6 = self->_rowObject;
  self->_rowObject = v4;
  v7 = self;

  v8 = *MEMORY[0x1E698F0A0];
  return v8;
}

- (void)_resetWithPublisher:(id)a3
{
  v5 = a3;
  v4 = objc_autoreleasePoolPush();
  [(BMPublisherVirtualTableCursor *)self subscribeTo:v5];
  objc_autoreleasePoolPop(v4);
}

- (void)subscribeTo:(id)a3
{
  objc_storeStrong(&self->_publisher, a3);
  v4 = [(BMPublisherVirtualTableCursor *)self publisher];
  v6 = [v4 startWithSubscriber:self];

  v5 = v6;
  if (!v6)
  {
    [(BMPublisherVirtualTableCursor *)self requestNextEvents];
    v5 = 0;
  }
}

- (void)receivedEvent:(id)a3
{
  v4 = a3;
  rowObject = self->_rowObject;
  if (rowObject)
  {
    rowObject = (self->_rowID + 1);
  }

  self->_rowID = rowObject;
  v6 = self->_rowObject;
  self->_rowObject = v4;

  MEMORY[0x1EEE66BB8]();
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  publisher = self->_publisher;
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_rowID];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_rowObject == 0];
  v8 = [v3 initWithFormat:@"<%@ %p> publisher: %@, rowid: %@, finished: %@", v4, self, publisher, v6, v7];

  return v8;
}

@end