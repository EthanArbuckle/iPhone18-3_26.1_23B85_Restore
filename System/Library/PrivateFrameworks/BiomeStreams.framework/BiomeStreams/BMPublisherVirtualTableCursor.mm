@interface BMPublisherVirtualTableCursor
- (BMPublisherVirtualTableCursor)initWithVirtualTable:(id)table;
- (NSString)description;
- (int64_t)receiveInput:(id)input;
- (void)_resetWithPublisher:(id)publisher;
- (void)advance;
- (void)close;
- (void)receivedEvent:(id)event;
- (void)requestNextEvents;
- (void)resetWithOptions:(id)options;
- (void)subscribeTo:(id)to;
@end

@implementation BMPublisherVirtualTableCursor

- (void)requestNextEvents
{
  v3 = objc_autoreleasePoolPush();
  nextEvent = [(BPSPublisher *)self->_publisher nextEvent];
  objc_autoreleasePoolPop(v3);
  v4 = nextEvent;
  if (nextEvent)
  {
    [(BMPublisherVirtualTableCursor *)self receivedEvent:nextEvent];
    v4 = nextEvent;
  }
}

- (void)close
{
  subscription = self->_subscription;
  self->_subscription = 0;
  MEMORY[0x1EEE66BB8]();
}

- (BMPublisherVirtualTableCursor)initWithVirtualTable:(id)table
{
  tableCopy = table;
  v10.receiver = self;
  v10.super_class = BMPublisherVirtualTableCursor;
  v6 = [(BMPublisherVirtualTableCursor *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_virtualTable, table);
    rowObject = v7->_rowObject;
    v7->_rowObject = 0;
  }

  return v7;
}

- (void)resetWithOptions:(id)options
{
  optionsCopy = options;
  rowObject = self->_rowObject;
  self->_rowObject = 0;

  v5 = objc_autoreleasePoolPush();
  publisherBlock = [(BMStreamVirtualTable *)self->_virtualTable publisherBlock];
  v7 = (publisherBlock)[2](publisherBlock, optionsCopy);

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

- (int64_t)receiveInput:(id)input
{
  inputCopy = input;
  rowObject = self->_rowObject;
  if (rowObject)
  {
    rowObject = (self->_rowID + 1);
  }

  self->_rowID = rowObject;
  v6 = self->_rowObject;
  self->_rowObject = inputCopy;
  selfCopy = self;

  v8 = *MEMORY[0x1E698F0A0];
  return v8;
}

- (void)_resetWithPublisher:(id)publisher
{
  publisherCopy = publisher;
  v4 = objc_autoreleasePoolPush();
  [(BMPublisherVirtualTableCursor *)self subscribeTo:publisherCopy];
  objc_autoreleasePoolPop(v4);
}

- (void)subscribeTo:(id)to
{
  objc_storeStrong(&self->_publisher, to);
  publisher = [(BMPublisherVirtualTableCursor *)self publisher];
  v6 = [publisher startWithSubscriber:self];

  v5 = v6;
  if (!v6)
  {
    [(BMPublisherVirtualTableCursor *)self requestNextEvents];
    v5 = 0;
  }
}

- (void)receivedEvent:(id)event
{
  eventCopy = event;
  rowObject = self->_rowObject;
  if (rowObject)
  {
    rowObject = (self->_rowID + 1);
  }

  self->_rowID = rowObject;
  v6 = self->_rowObject;
  self->_rowObject = eventCopy;

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