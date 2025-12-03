@interface FBProcessWatchdogEventContext
+ (id)contextForEvent:(int64_t)event settings:(id)settings transitionContext:(id)context;
- (FBSSceneTransitionContext)sceneTransitionContext;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation FBProcessWatchdogEventContext

- (FBSSceneTransitionContext)sceneTransitionContext
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneTransitionContext);

  return WeakRetained;
}

+ (id)contextForEvent:(int64_t)event settings:(id)settings transitionContext:(id)context
{
  settingsCopy = settings;
  contextCopy = context;
  v10 = objc_alloc_init(self);
  v11 = *(v10 + 2);
  *(v10 + 1) = event;
  *(v10 + 2) = settingsCopy;
  v12 = settingsCopy;

  objc_storeWeak(v10 + 3, contextCopy);
  updateContext = [contextCopy updateContext];

  v14 = *(v10 + 4);
  *(v10 + 4) = updateContext;

  return v10;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBProcessWatchdogEventContext *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = NSStringFromProcessWatchdogEvent(self->_event);
  v5 = [v3 appendObject:v4 withName:@"event"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBProcessWatchdogEventContext *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(FBProcessWatchdogEventContext *)self succinctDescriptionBuilder];
  v6 = succinctDescriptionBuilder;
  if (self->_sceneUpdateContext)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __71__FBProcessWatchdogEventContext_descriptionBuilderWithMultilinePrefix___block_invoke;
    v8[3] = &unk_1E783B240;
    v9 = succinctDescriptionBuilder;
    selfCopy = self;
    [v9 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v8];
  }

  return v6;
}

@end