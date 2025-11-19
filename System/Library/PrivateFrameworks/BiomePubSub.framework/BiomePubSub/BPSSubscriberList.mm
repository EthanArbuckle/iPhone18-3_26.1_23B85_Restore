@interface BPSSubscriberList
- (BPSSubscriberList)init;
- (id)claimAll;
- (int64_t)appendElement:(id)a3;
- (void)removeTicket:(int64_t)a3;
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

- (int64_t)appendElement:(id)a3
{
  v4 = a3;
  v5 = [(BPSSubscriberList *)self nextTicket];
  [(BPSSubscriberList *)self setNextTicket:[(BPSSubscriberList *)self nextTicket]+ 1];
  v6 = [(BPSSubscriberList *)self items];
  [v6 addObject:v4];

  v7 = [(BPSSubscriberList *)self tickets];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
  [v7 addObject:v8];

  return v5;
}

- (void)removeTicket:(int64_t)a3
{
  if (a3 < 0)
  {
    [(BPSSubscriberList *)a2 removeTicket:?];
  }

  if ([(BPSSubscriberList *)self nextTicket]<= a3)
  {
    [(BPSSubscriberList *)a2 removeTicket:?];
  }

  v6 = [(BPSSubscriberList *)self tickets];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v8 = [v6 indexOfObject:v7];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [(BPSSubscriberList *)self items];
    [v9 removeObjectAtIndex:v8];

    v10 = [(BPSSubscriberList *)self tickets];
    [v10 removeObjectAtIndex:v8];
  }
}

- (id)claimAll
{
  v3 = [(BPSSubscriberList *)self items];
  v4 = [v3 copy];

  v5 = [(BPSSubscriberList *)self items];
  [v5 removeAllObjects];

  v6 = [(BPSSubscriberList *)self tickets];
  [v6 removeAllObjects];

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