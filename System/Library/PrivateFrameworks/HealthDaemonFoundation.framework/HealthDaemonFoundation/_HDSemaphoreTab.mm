@interface _HDSemaphoreTab
- (_HDSemaphoreTab)init;
@end

@implementation _HDSemaphoreTab

- (_HDSemaphoreTab)init
{
  v8.receiver = self;
  v8.super_class = _HDSemaphoreTab;
  v2 = [(_HDSemaphoreTab *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCA928]);
    condition = v2->_condition;
    v2->_condition = v3;

    v2->_signaled = 0;
    v2->_priority = 0;
    date = [MEMORY[0x277CBEAA8] date];
    requestedDate = v2->_requestedDate;
    v2->_requestedDate = date;
  }

  return v2;
}

@end