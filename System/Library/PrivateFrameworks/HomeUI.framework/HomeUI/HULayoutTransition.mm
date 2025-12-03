@interface HULayoutTransition
- (HULayoutTransition)init;
- (HULayoutTransition)initWithView:(id)view setupBlock:(id)block transitionBlock:(id)transitionBlock completionBlock:(id)completionBlock;
- (void)completeTransition;
- (void)executeTransition;
- (void)setupTransitionWithFromState:(id)state toState:(id)toState;
@end

@implementation HULayoutTransition

- (HULayoutTransition)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithView_setupBlock_transitionBlock_completionBlock_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HULayoutTransition.m" lineNumber:26 description:{@"%s is unavailable; use %@ instead", "-[HULayoutTransition init]", v5}];

  return 0;
}

- (HULayoutTransition)initWithView:(id)view setupBlock:(id)block transitionBlock:(id)transitionBlock completionBlock:(id)completionBlock
{
  viewCopy = view;
  blockCopy = block;
  transitionBlockCopy = transitionBlock;
  completionBlockCopy = completionBlock;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HULayoutTransition.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"setupBlock"}];
  }

  v26.receiver = self;
  v26.super_class = HULayoutTransition;
  v16 = [(HULayoutTransition *)&v26 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_view, view);
    v18 = _Block_copy(blockCopy);
    setupBlock = v17->_setupBlock;
    v17->_setupBlock = v18;

    v20 = _Block_copy(transitionBlockCopy);
    transitionBlock = v17->_transitionBlock;
    v17->_transitionBlock = v20;

    v22 = _Block_copy(completionBlockCopy);
    completionBlock = v17->_completionBlock;
    v17->_completionBlock = v22;

    v17->_phase = 0;
  }

  return v17;
}

- (void)setupTransitionWithFromState:(id)state toState:(id)toState
{
  stateCopy = state;
  toStateCopy = toState;
  if ([(HULayoutTransition *)self phase])
  {
    NSLog(&cfstr_AttemptingToSe_0.isa);
  }

  else
  {
    [(HULayoutTransition *)self setFromState:stateCopy];
    [(HULayoutTransition *)self setToState:toStateCopy];
    [(HULayoutTransition *)self setPhase:1];
    v8 = MEMORY[0x277D75D18];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59__HULayoutTransition_setupTransitionWithFromState_toState___block_invoke;
    v9[3] = &unk_277DB8810;
    v9[4] = self;
    v10 = stateCopy;
    v11 = toStateCopy;
    [v8 performWithoutAnimation:v9];
  }
}

void __59__HULayoutTransition_setupTransitionWithFromState_toState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) setupBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) setupBlock];
    v3[2](v3, *(a1 + 40), *(a1 + 48));
  }

  v4 = [*(a1 + 32) view];
  [v4 updateConstraintsIfNeeded];

  v5 = [*(a1 + 32) view];
  [v5 layoutIfNeeded];
}

- (void)executeTransition
{
  if ([(HULayoutTransition *)self phase]== 1)
  {
    [(HULayoutTransition *)self setPhase:2];
    transitionBlock = [(HULayoutTransition *)self transitionBlock];
    fromState = [(HULayoutTransition *)self fromState];
    toState = [(HULayoutTransition *)self toState];
    (transitionBlock)[2](transitionBlock, fromState, toState);

    view = [(HULayoutTransition *)self view];
    [view updateConstraintsIfNeeded];

    view2 = [(HULayoutTransition *)self view];
    [view2 layoutIfNeeded];
  }

  else
  {
    NSLog(&cfstr_AttemptingToEx.isa, [(HULayoutTransition *)self phase]);
  }
}

- (void)completeTransition
{
  if ([(HULayoutTransition *)self phase]== 2)
  {
    [(HULayoutTransition *)self setPhase:3];
    completionBlock = [(HULayoutTransition *)self completionBlock];

    if (completionBlock)
    {
      completionBlock2 = [(HULayoutTransition *)self completionBlock];
      fromState = [(HULayoutTransition *)self fromState];
      toState = [(HULayoutTransition *)self toState];
      completionBlock2[2](completionBlock2, fromState, toState);
    }
  }

  else
  {
    NSLog(&cfstr_AttemptingToCo.isa, [(HULayoutTransition *)self phase]);
  }
}

@end