@interface RBSAssertion(FBWorkspace)
- (uint64_t)fb_workspaceState;
- (void)fb_setWorkspaceState:()FBWorkspace;
@end

@implementation RBSAssertion(FBWorkspace)

- (uint64_t)fb_workspaceState
{
  v1 = objc_getAssociatedObject(a1, &__FBWorkspaceState);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 unsignedIntValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)fb_setWorkspaceState:()FBWorkspace
{
  if (FBWorkspaceStateEqual(a3, 0))
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a3];
  }

  v6 = v5;
  objc_setAssociatedObject(a1, &__FBWorkspaceState, v5, 1);
}

@end