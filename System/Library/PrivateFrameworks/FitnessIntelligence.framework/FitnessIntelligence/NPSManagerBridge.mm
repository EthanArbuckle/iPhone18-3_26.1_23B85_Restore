@interface NPSManagerBridge
- (NPSManagerBridge)init;
@end

@implementation NPSManagerBridge

- (NPSManagerBridge)init
{
  v6.receiver = self;
  v6.super_class = NPSManagerBridge;
  v2 = [(NPSManagerBridge *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69B3590]);
    manager = v2->_manager;
    v2->_manager = v3;
  }

  return v2;
}

@end