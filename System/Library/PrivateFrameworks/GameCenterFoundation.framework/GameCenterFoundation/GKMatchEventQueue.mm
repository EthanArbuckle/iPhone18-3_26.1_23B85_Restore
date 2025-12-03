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
    array = [MEMORY[0x277CBEB18] array];
    events = v2->_events;
    v2->_events = array;
  }

  return v2;
}

@end