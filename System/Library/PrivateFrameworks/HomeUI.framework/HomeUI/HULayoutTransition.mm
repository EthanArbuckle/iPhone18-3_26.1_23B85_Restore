@interface HULayoutTransition
- (HULayoutTransition)init;
- (HULayoutTransition)initWithView:(id)a3 setupBlock:(id)a4 transitionBlock:(id)a5 completionBlock:(id)a6;
- (void)completeTransition;
- (void)executeTransition;
- (void)setupTransitionWithFromState:(id)a3 toState:(id)a4;
@end

@implementation HULayoutTransition

- (HULayoutTransition)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithView_setupBlock_transitionBlock_completionBlock_);
  [v4 handleFailureInMethod:a2 object:self file:@"HULayoutTransition.m" lineNumber:26 description:{@"%s is unavailable; use %@ instead", "-[HULayoutTransition init]", v5}];

  return 0;
}

- (HULayoutTransition)initWithView:(id)a3 setupBlock:(id)a4 transitionBlock:(id)a5 completionBlock:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!v13)
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"HULayoutTransition.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"setupBlock"}];
  }

  v26.receiver = self;
  v26.super_class = HULayoutTransition;
  v16 = [(HULayoutTransition *)&v26 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_view, a3);
    v18 = _Block_copy(v13);
    setupBlock = v17->_setupBlock;
    v17->_setupBlock = v18;

    v20 = _Block_copy(v14);
    transitionBlock = v17->_transitionBlock;
    v17->_transitionBlock = v20;

    v22 = _Block_copy(v15);
    completionBlock = v17->_completionBlock;
    v17->_completionBlock = v22;

    v17->_phase = 0;
  }

  return v17;
}

- (void)setupTransitionWithFromState:(id)a3 toState:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(HULayoutTransition *)self phase])
  {
    NSLog(&cfstr_AttemptingToSe_0.isa);
  }

  else
  {
    [(HULayoutTransition *)self setFromState:v6];
    [(HULayoutTransition *)self setToState:v7];
    [(HULayoutTransition *)self setPhase:1];
    v8 = MEMORY[0x277D75D18];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59__HULayoutTransition_setupTransitionWithFromState_toState___block_invoke;
    v9[3] = &unk_277DB8810;
    v9[4] = self;
    v10 = v6;
    v11 = v7;
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
    v3 = [(HULayoutTransition *)self transitionBlock];
    v4 = [(HULayoutTransition *)self fromState];
    v5 = [(HULayoutTransition *)self toState];
    (v3)[2](v3, v4, v5);

    v6 = [(HULayoutTransition *)self view];
    [v6 updateConstraintsIfNeeded];

    v7 = [(HULayoutTransition *)self view];
    [v7 layoutIfNeeded];
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
    v3 = [(HULayoutTransition *)self completionBlock];

    if (v3)
    {
      v6 = [(HULayoutTransition *)self completionBlock];
      v4 = [(HULayoutTransition *)self fromState];
      v5 = [(HULayoutTransition *)self toState];
      v6[2](v6, v4, v5);
    }
  }

  else
  {
    NSLog(&cfstr_AttemptingToCo.isa, [(HULayoutTransition *)self phase]);
  }
}

@end