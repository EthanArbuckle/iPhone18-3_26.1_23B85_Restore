@interface BPSSubscriberList
- (BPSSubscriberList)init;
- (id)claimAll;
- (int64_t)appendElement:(id)element;
- (void)removeTicket:(int64_t)ticket;
@end

@implementation BPSSubscriberList

- (BPSSubscriberList)init
{
  v9.receiver = self;
  v9.super_class = BPSSubscriberList;
  v2 = [(BPSSubscriberList *)&v9 init];
  if (v2)
  {
    v3 = MEMORY[0x1E695E0F0];
    v4 = [MEMORY[0x1E695E0F0] mutableCopy];
    items = v2->_items;
    v2->_items = v4;

    v6 = [v3 mutableCopy];
    tickets = v2->_tickets;
    v2->_tickets = v6;

    v2->_nextTicket = 0;
  }

  return v2;
}

- (int64_t)appendElement:(id)element
{
  elementCopy = element;
  nextTicket = [(BPSSubscriberList *)self nextTicket];
  [(BPSSubscriberList *)self setNextTicket:[(BPSSubscriberList *)self nextTicket]+ 1];
  items = [(BPSSubscriberList *)self items];
  [items addObject:elementCopy];

  tickets = [(BPSSubscriberList *)self tickets];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:nextTicket];
  [tickets addObject:v8];

  return nextTicket;
}

- (void)removeTicket:(int64_t)ticket
{
  if (ticket < 0)
  {
    [(BPSSubscriberList *)a2 removeTicket:?];
  }

  if ([(BPSSubscriberList *)self nextTicket]<= ticket)
  {
    [(BPSSubscriberList *)a2 removeTicket:?];
  }

  tickets = [(BPSSubscriberList *)self tickets];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:ticket];
  v8 = [tickets indexOfObject:v7];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    items = [(BPSSubscriberList *)self items];
    [items removeObjectAtIndex:v8];

    tickets2 = [(BPSSubscriberList *)self tickets];
    [tickets2 removeObjectAtIndex:v8];
  }
}

- (id)claimAll
{
  items = [(BPSSubscriberList *)self items];
  v4 = [items copy];

  items2 = [(BPSSubscriberList *)self items];
  [items2 removeAllObjects];

  tickets = [(BPSSubscriberList *)self tickets];
  [tickets removeAllObjects];

  return v4;
}

- (void)removeTicket:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSSubscriberList.m" lineNumber:35 description:@"Ticket should be greater than zero"];
}

- (void)removeTicket:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSSubscriberList.m" lineNumber:36 description:@"Ticket should be less than next ticket"];
}

@end