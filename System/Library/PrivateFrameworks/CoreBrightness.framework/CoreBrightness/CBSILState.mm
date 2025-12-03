@interface CBSILState
+ (id)sharedInstance;
- (BOOL)isSILActive;
- (CBSILState)init;
- (const)SILStateString;
- (void)dealloc;
@end

@implementation CBSILState

- (CBSILState)init
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = CBSILState;
  selfCopy = [(CBSILState *)&v3 init];
  if (selfCopy)
  {
    selfCopy->_SILState = 4;
  }

  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CBSILState;
  [(CBSILState *)&v2 dealloc];
}

+ (id)sharedInstance
{
  selfCopy = self;
  v10 = a2;
  objc_sync_enter(self);
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __28__CBSILState_sharedInstance__block_invoke;
  v8 = &unk_1E867B480;
  v9 = selfCopy;
  v13 = &sharedInstance_onceToken_2;
  v12 = &v4;
  if (sharedInstance_onceToken_2 != -1)
  {
    dispatch_once(v13, v12);
  }

  objc_sync_exit(self);
  return sharedInstance__sharedObject_1;
}

uint64_t __28__CBSILState_sharedInstance__block_invoke(uint64_t a1)
{
  v4 = a1;
  v3 = a1;
  v2.receiver = *(a1 + 32);
  v2.super_class = &OBJC_METACLASS___CBSILState;
  result = [objc_msgSendSuper2(&v2 alloc)];
  sharedInstance__sharedObject_1 = result;
  return result;
}

- (BOOL)isSILActive
{
  v3 = 0;
  if (self->_SILState != 3)
  {
    return self->_SILState != 4;
  }

  return v3;
}

- (const)SILStateString
{
  SILState = self->_SILState;
  switch(SILState)
  {
    case 0uLL:
      return "Entering";
    case 1uLL:
      return "ON";
    case 2uLL:
      return "Exiting";
    case 3uLL:
      return "Finished";
    case 4uLL:
      return "OFF";
  }

  return "Invalid";
}

@end