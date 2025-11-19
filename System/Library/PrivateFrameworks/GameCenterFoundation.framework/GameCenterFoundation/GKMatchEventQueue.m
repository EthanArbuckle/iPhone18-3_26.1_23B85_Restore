@interface GKMatchEventQueue
- (GKMatchEventQueue)init;
@end

@implementation GKMatchEventQueue

- (GKMatchEventQueue)init
{
  v6.receiver = self;
  v6.super_class = GKMatchEventQueue;
  v2 = [(GKMatchEventQueue *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    events = v2->_events;
    v2->_events = v3;
  }

  return v2;
}

@end