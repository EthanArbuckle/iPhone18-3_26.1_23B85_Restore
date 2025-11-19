@interface IMAllocTracking
- (IMAllocTracking)retain;
- (void)_registerCallstack;
- (void)dealloc;
- (void)release;
@end

@implementation IMAllocTracking

- (void)_registerCallstack
{
  if (!self->_callStacks)
  {
    self->_callStacks = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v5 = objc_msgSend_callStackSymbols(MEMORY[0x1E696AF00], a2, v2);
  callStacks = self->_callStacks;

  objc_msgSend_addObject_(callStacks, v4, v5);
}

- (IMAllocTracking)retain
{
  objc_sync_enter(self);
  objc_msgSend__registerCallstack(self, v3, v4);
  v7.receiver = self;
  v7.super_class = IMAllocTracking;
  v5 = [(IMAllocTracking *)&v7 retain];
  objc_sync_exit(self);
  return v5;
}

- (void)release
{
  objc_sync_enter(self);
  objc_msgSend__registerCallstack(self, v3, v4);
  v5.receiver = self;
  v5.super_class = IMAllocTracking;
  [(IMAllocTracking *)&v5 release];
  objc_sync_exit(self);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMAllocTracking;
  [(IMAllocTracking *)&v3 dealloc];
}

@end