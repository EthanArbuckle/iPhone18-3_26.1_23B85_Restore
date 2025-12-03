@interface FBSystemShellInitializationContext
- (id)_initWithOptions:(id)options;
- (unint64_t)lastExitReason;
@end

@implementation FBSystemShellInitializationContext

- (id)_initWithOptions:(id)options
{
  optionsCopy = options;
  v10.receiver = self;
  v10.super_class = FBSystemShellInitializationContext;
  v6 = [(FBSystemShellInitializationContext *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_options, options);
    v8 = objc_alloc_init(_FBDarkBootHelper);
    v7->_bootedDark = [(_FBDarkBootHelper *)v8 isBootingDark];
  }

  return v7;
}

- (unint64_t)lastExitReason
{
  currentProcess = [MEMORY[0x1E69C75D0] currentProcess];
  lastExitContext = [currentProcess lastExitContext];

  if (lastExitContext)
  {
    v4 = [[FBProcessExitContext alloc] initWithUnderlyingContext:lastExitContext];
    exitReason = [(FBProcessExitContext *)v4 exitReason];
  }

  else
  {
    exitReason = 0;
  }

  return exitReason;
}

@end