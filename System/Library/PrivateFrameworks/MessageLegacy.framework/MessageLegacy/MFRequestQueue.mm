@interface MFRequestQueue
- (MFRequestQueue)init;
- (uint64_t)dealloc;
- (void)_processRequests:(id)a3 consumers:(id)a4;
- (void)addRequest:(id)a3 consumer:(id)a4;
- (void)addRequests:(id)a3 consumers:(id)a4;
- (void)dealloc;
- (void)processRequests:(id)a3 consumers:(id)a4;
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

- (void)addRequest:(id)a3 consumer:(id)a4
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = a3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v8 = a4;
  -[MFRequestQueue addRequests:consumers:](self, "addRequests:consumers:", v6, [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1]);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)addRequests:(id)a3 consumers:(id)a4
{
  _MFLockGlobalLock();
  ++self->_waitingOutside;
  [(MFRequestQueue *)self willAddRequests:a3 consumers:a4];
  [(NSMutableArray *)self->_requests addObjectsFromArray:a3];
  [(NSMutableArray *)self->_consumers addObjectsFromArray:a4];
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

- (void)_processRequests:(id)a3 consumers:(id)a4
{
  v5 = *MEMORY[0x277D85DE8];
  [(MFRequestQueue *)self processRequests:a3 consumers:a4];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)processRequests:(id)a3 consumers:(id)a4
{
  [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a3, "count")}];
  v7 = [a3 count];
  if (v7)
  {
    v8 = v7;
    for (i = 0; i != v8; ++i)
    {
      -[MFRequestQueue processRequest:consumer:](self, "processRequest:consumer:", [a3 objectAtIndex:i], objc_msgSend(a4, "objectAtIndex:", i));
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
  v4 = [MEMORY[0x277CCA890] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"RequestQueue.m" lineNumber:121 description:@"nobody should be waiting at -dealloc time"];
}

@end