@interface FBSystemShellInitializationContext
- (id)_initWithOptions:(id)a3;
- (unint64_t)lastExitReason;
@end

@implementation FBSystemShellInitializationContext

- (id)_initWithOptions:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = FBSystemShellInitializationContext;
  v6 = [(FBSystemShellInitializationContext *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_options, a3);
    v8 = objc_alloc_init(_FBDarkBootHelper);
    v7->_bootedDark = [(_FBDarkBootHelper *)v8 isBootingDark];
  }

  return v7;
}

- (unint64_t)lastExitReason
{
  v2 = [MEMORY[0x1E69C75D0] currentProcess];
  v3 = [v2 lastExitContext];

  if (v3)
  {
    v4 = [[FBProcessExitContext alloc] initWithUnderlyingContext:v3];
    v5 = [(FBProcessExitContext *)v4 exitReason];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end