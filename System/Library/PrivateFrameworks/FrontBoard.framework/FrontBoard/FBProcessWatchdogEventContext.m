@interface FBProcessWatchdogEventContext
+ (id)contextForEvent:(int64_t)a3 settings:(id)a4 transitionContext:(id)a5;
- (FBSSceneTransitionContext)sceneTransitionContext;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation FBProcessWatchdogEventContext

- (FBSSceneTransitionContext)sceneTransitionContext
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneTransitionContext);

  return WeakRetained;
}

+ (id)contextForEvent:(int64_t)a3 settings:(id)a4 transitionContext:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(a1);
  v11 = *(v10 + 2);
  *(v10 + 1) = a3;
  *(v10 + 2) = v8;
  v12 = v8;

  objc_storeWeak(v10 + 3, v9);
  v13 = [v9 updateContext];

  v14 = *(v10 + 4);
  *(v10 + 4) = v13;

  return v10;
}

- (id)succinctDescription
{
  v2 = [(FBProcessWatchdogEventContext *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = NSStringFromProcessWatchdogEvent(self->_event);
  v5 = [v3 appendObject:v4 withName:@"event"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(FBProcessWatchdogEventContext *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(FBProcessWatchdogEventContext *)self succinctDescriptionBuilder];
  v6 = v5;
  if (self->_sceneUpdateContext)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __71__FBProcessWatchdogEventContext_descriptionBuilderWithMultilinePrefix___block_invoke;
    v8[3] = &unk_1E783B240;
    v9 = v5;
    v10 = self;
    [v9 appendBodySectionWithName:0 multilinePrefix:v4 block:v8];
  }

  return v6;
}

@end