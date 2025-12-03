@interface NFEventTrigger
- (NFEventTrigger)initWithKey:(id)key fireOnce:(BOOL)once fireOnAny:(BOOL)any events:(id)events block:(id)block;
@end

@implementation NFEventTrigger

- (NFEventTrigger)initWithKey:(id)key fireOnce:(BOOL)once fireOnAny:(BOOL)any events:(id)events block:(id)block
{
  keyCopy = key;
  eventsCopy = events;
  blockCopy = block;
  v21.receiver = self;
  v21.super_class = NFEventTrigger;
  v16 = [(NFEventTrigger *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_events, events);
    v18 = MEMORY[0x25F880B10](blockCopy);
    block = v17->_block;
    v17->_block = v18;

    objc_storeStrong(&v17->_key, key);
    v17->_fireOnce = once;
    v17->_fireOnAny = any;
  }

  return v17;
}

@end