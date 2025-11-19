@interface LACUIPackagedViewState
- (BOOL)containsStateNamed:(id)a3;
- (BOOL)finishesWithStateNamed:(id)a3;
- (LACUIPackagedViewState)initWithName:(id)a3;
- (LACUIPackagedViewState)initWithName:(id)a3 animationOptions:(id)a4;
- (id)description;
- (void)addSubstate:(id)a3;
@end

@implementation LACUIPackagedViewState

- (LACUIPackagedViewState)initWithName:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(LACUIPackagedViewStateAnimationOptions);
  v6 = [(LACUIPackagedViewState *)self initWithName:v4 animationOptions:v5];

  return v6;
}

- (LACUIPackagedViewState)initWithName:(id)a3 animationOptions:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = LACUIPackagedViewState;
  v9 = [(LACUIPackagedViewState *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    substates = v10->_substates;
    v10->_substates = v11;

    objc_storeStrong(&v10->_animationOptions, a4);
  }

  return v10;
}

- (void)addSubstate:(id)a3
{
  v4 = a3;
  v5 = [(LACUIPackagedViewState *)self substates];
  [v5 addObject:v4];
}

- (BOOL)finishesWithStateNamed:(id)a3
{
  v4 = a3;
  v5 = [(LACUIPackagedViewState *)self substates];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(LACUIPackagedViewState *)self substates];
    v8 = [v7 lastObject];
    v9 = [v8 finishesWithStateNamed:v4];

    v4 = v8;
  }

  else
  {
    v7 = [(LACUIPackagedViewState *)self name];
    v9 = [v4 isEqualToString:v7];
  }

  return v9;
}

- (BOOL)containsStateNamed:(id)a3
{
  v4 = a3;
  v5 = [(LACUIPackagedViewState *)self name];
  v6 = [v5 isEqualToString:v4];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [(LACUIPackagedViewState *)self substates];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __45__LACUIPackagedViewState_containsStateNamed___block_invoke;
    v10[3] = &unk_27981EA70;
    v11 = v4;
    v7 = [v8 indexOfObjectPassingTest:v10] != 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(LACUIPackagedViewState *)self name];
  v6 = [(LACUIPackagedViewState *)self substates];
  v7 = [(LACUIPackagedViewState *)self animationOptions];
  v8 = [v3 stringWithFormat:@"<%@ %p; name:%@; substates:%@; animationOptons:%@>", v4, self, v5, v6, v7];;

  return v8;
}

@end