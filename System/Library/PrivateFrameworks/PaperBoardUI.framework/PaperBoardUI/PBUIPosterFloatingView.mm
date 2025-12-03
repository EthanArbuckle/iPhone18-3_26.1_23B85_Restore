@interface PBUIPosterFloatingView
- (BOOL)floatingLayerHasStandin;
- (PBUIPosterFloatingView)initWithFrame:(CGRect)frame;
- (UIView)defaultFloatingLayerStandin;
- (id)acquireSourceUsageAssertionForView:(id)view;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)dealloc;
- (void)setFloatingLayerHasStandin:(BOOL)standin;
@end

@implementation PBUIPosterFloatingView

- (PBUIPosterFloatingView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = PBUIPosterFloatingView;
  v3 = [(PBUIPosterFloatingView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    objc_initWeak(&location, v3);
    v4 = MEMORY[0x277CF0BD0];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __40__PBUIPosterFloatingView_initWithFrame___block_invoke;
    v8[3] = &unk_278361E80;
    objc_copyWeak(&v9, &location);
    v5 = [v4 assertionWithIdentifier:@"FloatingLayer" stateDidChangeHandler:v8];
    currentUsers = v3->_currentUsers;
    v3->_currentUsers = v5;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __40__PBUIPosterFloatingView_initWithFrame___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v6 context];
    v5 = [v4 bs_containsObjectPassingTest:&__block_literal_global_0];

    [WeakRetained setFloatingLayerHasStandin:v5];
  }
}

- (void)dealloc
{
  [(BSCompoundAssertion *)self->_currentUsers invalidate];
  v3.receiver = self;
  v3.super_class = PBUIPosterFloatingView;
  [(PBUIPosterSceneLayerHostView *)&v3 dealloc];
}

- (BOOL)floatingLayerHasStandin
{
  WeakRetained = objc_loadWeakRetained(&self->_defaultFloatingLayerStandin);
  isHidden = [WeakRetained isHidden];

  return isHidden;
}

- (void)setFloatingLayerHasStandin:(BOOL)standin
{
  standinCopy = standin;
  WeakRetained = objc_loadWeakRetained(&self->_defaultFloatingLayerStandin);
  [WeakRetained setHidden:standinCopy];
}

- (id)acquireSourceUsageAssertionForView:(id)view
{
  viewCopy = view;
  NSClassFromString(&cfstr_Pbuiposterfloa.isa);
  if (!viewCopy)
  {
    [PBUIPosterFloatingView acquireSourceUsageAssertionForView:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBUIPosterFloatingView acquireSourceUsageAssertionForView:a2];
  }

  v6 = MEMORY[0x277CF0C00];
  v7 = viewCopy;
  v8 = [v6 succinctDescriptionForObject:v7];
  v9 = [(BSCompoundAssertion *)self->_currentUsers acquireForReason:v8 withContext:v7];

  return v9;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(PBUIPosterFloatingView *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = [v4 appendBool:-[PBUIPosterFloatingView floatingLayerHasStandin](self withName:{"floatingLayerHasStandin"), @"floatingLayerHasStandin"}];
  cacheIdentifier = [(PBUIPosterFloatingView *)self cacheIdentifier];
  [v4 appendString:cacheIdentifier withName:@"cacheIdentifier"];

  v7 = [v4 appendBool:-[PBUIPosterFloatingView effectsAreBakedIn](self withName:{"effectsAreBakedIn"), @"effectsAreBakedIn"}];
  WeakRetained = objc_loadWeakRetained(&self->_defaultFloatingLayerStandin);
  v9 = [v4 appendObject:WeakRetained withName:@"defaultFloatingLayerStandin"];

  context = [(BSCompoundAssertion *)self->_currentUsers context];
  if (context)
  {
    context2 = [(BSCompoundAssertion *)self->_currentUsers context];
    allObjects = [context2 allObjects];
    [v4 appendArraySection:allObjects withName:@"currentUsers" skipIfEmpty:0];
  }

  else
  {
    [v4 appendArraySection:0 withName:@"currentUsers" skipIfEmpty:0];
  }

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(PBUIPosterFloatingView *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (UIView)defaultFloatingLayerStandin
{
  WeakRetained = objc_loadWeakRetained(&self->_defaultFloatingLayerStandin);

  return WeakRetained;
}

- (void)acquireSourceUsageAssertionForView:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:PBUIPosterFloatingLayerReplicaClass]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    v8 = @"PBUIPosterLockViewController.m";
    v9 = 1024;
    v10 = 73;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21E67D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)acquireSourceUsageAssertionForView:(const char *)a1 .cold.2(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    v8 = @"PBUIPosterLockViewController.m";
    v9 = 1024;
    v10 = 73;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21E67D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end