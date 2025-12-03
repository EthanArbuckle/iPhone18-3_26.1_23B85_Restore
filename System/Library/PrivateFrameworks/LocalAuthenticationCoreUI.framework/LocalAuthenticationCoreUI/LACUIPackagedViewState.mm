@interface LACUIPackagedViewState
- (BOOL)containsStateNamed:(id)named;
- (BOOL)finishesWithStateNamed:(id)named;
- (LACUIPackagedViewState)initWithName:(id)name;
- (LACUIPackagedViewState)initWithName:(id)name animationOptions:(id)options;
- (id)description;
- (void)addSubstate:(id)substate;
@end

@implementation LACUIPackagedViewState

- (LACUIPackagedViewState)initWithName:(id)name
{
  nameCopy = name;
  v5 = objc_alloc_init(LACUIPackagedViewStateAnimationOptions);
  v6 = [(LACUIPackagedViewState *)self initWithName:nameCopy animationOptions:v5];

  return v6;
}

- (LACUIPackagedViewState)initWithName:(id)name animationOptions:(id)options
{
  nameCopy = name;
  optionsCopy = options;
  v14.receiver = self;
  v14.super_class = LACUIPackagedViewState;
  v9 = [(LACUIPackagedViewState *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    substates = v10->_substates;
    v10->_substates = v11;

    objc_storeStrong(&v10->_animationOptions, options);
  }

  return v10;
}

- (void)addSubstate:(id)substate
{
  substateCopy = substate;
  substates = [(LACUIPackagedViewState *)self substates];
  [substates addObject:substateCopy];
}

- (BOOL)finishesWithStateNamed:(id)named
{
  namedCopy = named;
  substates = [(LACUIPackagedViewState *)self substates];
  v6 = [substates count];

  if (v6)
  {
    substates2 = [(LACUIPackagedViewState *)self substates];
    lastObject = [substates2 lastObject];
    v9 = [lastObject finishesWithStateNamed:namedCopy];

    namedCopy = lastObject;
  }

  else
  {
    substates2 = [(LACUIPackagedViewState *)self name];
    v9 = [namedCopy isEqualToString:substates2];
  }

  return v9;
}

- (BOOL)containsStateNamed:(id)named
{
  namedCopy = named;
  name = [(LACUIPackagedViewState *)self name];
  v6 = [name isEqualToString:namedCopy];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    substates = [(LACUIPackagedViewState *)self substates];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __45__LACUIPackagedViewState_containsStateNamed___block_invoke;
    v10[3] = &unk_27981EA70;
    v11 = namedCopy;
    v7 = [substates indexOfObjectPassingTest:v10] != 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  name = [(LACUIPackagedViewState *)self name];
  substates = [(LACUIPackagedViewState *)self substates];
  animationOptions = [(LACUIPackagedViewState *)self animationOptions];
  v8 = [v3 stringWithFormat:@"<%@ %p; name:%@; substates:%@; animationOptons:%@>", v4, self, name, substates, animationOptions];;

  return v8;
}

@end