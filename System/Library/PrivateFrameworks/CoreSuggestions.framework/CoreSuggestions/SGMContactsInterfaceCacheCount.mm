@interface SGMContactsInterfaceCacheCount
- (SGMContactsInterfaceCacheCount)init;
@end

@implementation SGMContactsInterfaceCacheCount

- (SGMContactsInterfaceCacheCount)init
{
  v7.receiver = self;
  v7.super_class = SGMContactsInterfaceCacheCount;
  v2 = [(SGMContactsInterfaceCacheCount *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69C5B38]);
    v4 = [v3 initWithFeatureId:@"Found" event:@"ContactsInterfaceCacheCount" registerProperties:MEMORY[0x1E695E0F0] propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v4;
  }

  return v2;
}

@end