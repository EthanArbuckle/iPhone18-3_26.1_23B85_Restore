@interface MFRequestQueue
- (MFRequestQueue)init;
- (uint64_t)dealloc;
- (void)_processRequests:(id)requests consumers:(id)consumers;
- (void)addRequest:(id)request consumer:(id)consumer;
- (void)addRequests:(id)requests consumers:(id)consumers;
- (void)dealloc;
- (void)processRequests:(id)requests consumers:(id)consumers;
@end

@implementation MFRequestQueue

- (MFRequestQueue)init
{
  v4.receiver = self;
  v4.super_class = MFRequestQueue;
  v2 = [(MFRequestQueue *)&v4 init];
  if (v2)
  {
    v2->_condition = [objc_alloc(MEMORY[0x277D24EF0]) initWithName:@"condition" condition:0 andDelegate:v2];
    v2->_requests = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_consumers = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  return v2;
}

- (void)addRequest:(id)request consumer:(id)consumer
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = request;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  consumerCopy = consumer;
  -[MFRequestQueue addRequests:consumers:](self, "addRequests:consumers:", v6, [MEMORY[0x277CBEA60] arrayWithObjects:&consumerCopy count:1]);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)addRequests:(id)requests consumers:(id)consumers
{
  _MFLockGlobalLock();
  ++self->_waitingOutside;
  [(MFRequestQueue *)self willAddRequests:requests consumers:consumers];
  [(NSMutableArray *)self->_requests addObjectsFromArray:requests];
  [(NSMutableArray *)self->_consumers addObjectsFromArray:consumers];
  _MFUnlockGlobalLock();
  [(NSConditionLock *)self->_condition lockWhenCondition:0];
  _MFLockGlobalLock();
  waitingOutside = self->_waitingOutside;
  v8 = self->_waitingInside + 1;
  self->_waitingInside = v8;
  if (waitingOutside == v8)
  {
    v9 = [(NSMutableArray *)self->_requests copy];
    [(NSMutableArray *)self->_requests removeAllObjects];
    self->_waitingOutside = 0;
    v10 = [(NSMutableArray *)self->_consumers copy];
    [(NSMutableArray *)self->_consumers removeAllObjects];
    _MFUnlockGlobalLock();
    if (v9)
    {
      [(MFRequestQueue *)self _processRequests:v9 consumers:v10];

      goto LABEL_6;
    }
  }

  else
  {
    _MFUnlockGlobalLock();
    v10 = 0;
  }

  [(NSConditionLock *)self->_condition unlock];
  [(NSConditionLock *)self->_condition lockWhenCondition:1];
LABEL_6:
  _MFLockGlobalLock();
  v11 = self->_waitingInside - 1;
  self->_waitingInside = v11;
  v12 = v11 != 0;
  _MFUnlockGlobalLock();
  condition = self->_condition;

  [(NSConditionLock *)condition unlockWithCondition:v12];
}

- (void)_processRequests:(id)requests consumers:(id)consumers
{
  v5 = *MEMORY[0x277D85DE8];
  [(MFRequestQueue *)self processRequests:requests consumers:consumers];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)processRequests:(id)requests consumers:(id)consumers
{
  [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(requests, "count")}];
  v7 = [requests count];
  if (v7)
  {
    v8 = v7;
    for (i = 0; i != v8; ++i)
    {
      -[MFRequestQueue processRequest:consumer:](self, "processRequest:consumer:", [requests objectAtIndex:i], objc_msgSend(consumers, "objectAtIndex:", i));
    }
  }
}

- (void)dealloc
{
  if (self->_waitingInside)
  {
    [(MFRequestQueue *)a2 dealloc];
  }

  if (self->_waitingOutside)
  {
    [(MFRequestQueue *)a2 dealloc];
  }

  v4.receiver = self;
  v4.super_class = MFRequestQueue;
  [(MFRequestQueue *)&v4 dealloc];
}

- (uint64_t)dealloc
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];

  return [currentHandler handleFailureInMethod:self object:a2 file:@"RequestQueue.m" lineNumber:121 description:@"nobody should be waiting at -dealloc time"];
}

@end