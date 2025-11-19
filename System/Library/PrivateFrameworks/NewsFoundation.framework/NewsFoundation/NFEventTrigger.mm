@interface NFEventTrigger
- (NFEventTrigger)initWithKey:(id)a3 fireOnce:(BOOL)a4 fireOnAny:(BOOL)a5 events:(id)a6 block:(id)a7;
@end

@implementation NFEventTrigger

- (NFEventTrigger)initWithKey:(id)a3 fireOnce:(BOOL)a4 fireOnAny:(BOOL)a5 events:(id)a6 block:(id)a7
{
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v21.receiver = self;
  v21.super_class = NFEventTrigger;
  v16 = [(NFEventTrigger *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_events, a6);
    v18 = MEMORY[0x25F880B10](v15);
    block = v17->_block;
    v17->_block = v18;

    objc_storeStrong(&v17->_key, a3);
    v17->_fireOnce = a4;
    v17->_fireOnAny = a5;
  }

  return v17;
}

@end