@interface GCKEventItem
- (GCKEventItem)init;
- (GCKEventItem)initWithEvent:(id *)event remotePeer:(unsigned int)peer;
- (void)dealloc;
@end

@implementation GCKEventItem

- (GCKEventItem)init
{
  v3.receiver = self;
  v3.super_class = GCKEventItem;
  return [(GCKEventItem *)&v3 init];
}

- (GCKEventItem)initWithEvent:(id *)event remotePeer:(unsigned int)peer
{
  v7.receiver = self;
  v7.super_class = GCKEventItem;
  result = [(GCKEventItem *)&v7 init];
  if (result)
  {
    result->_event = event;
    result->_pid = peer;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = GCKEventItem;
  [(GCKEventItem *)&v2 dealloc];
}

@end