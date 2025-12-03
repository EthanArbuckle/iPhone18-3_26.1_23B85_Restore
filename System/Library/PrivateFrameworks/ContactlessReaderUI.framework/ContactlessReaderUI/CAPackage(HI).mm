@interface CAPackage(HI)
- (id)_stateController;
- (id)availableStates;
- (id)availableStatesOnLayer:()HI;
- (void)transitionToStateWithName:()HI;
- (void)transitionToStateWithName:()HI onLayer:;
@end

@implementation CAPackage(HI)

- (void)transitionToStateWithName:()HI
{
  v4 = a3;
  rootLayer = [self rootLayer];
  [self transitionToStateWithName:v4 onLayer:rootLayer];
}

- (void)transitionToStateWithName:()HI onLayer:
{
  v6 = a4;
  v9 = [v6 stateWithName:a3];
  _stateController = [self _stateController];
  LODWORD(v8) = 1.0;
  [_stateController setState:v9 ofLayer:v6 transitionSpeed:v8];
}

- (id)availableStates
{
  rootLayer = [self rootLayer];
  v3 = [self availableStatesOnLayer:rootLayer];

  return v3;
}

- (id)availableStatesOnLayer:()HI
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a3;
  array = [v3 array];
  states = [v4 states];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__CAPackage_HI__availableStatesOnLayer___block_invoke;
  v9[3] = &unk_278E039F8;
  v7 = array;
  v10 = v7;
  [states enumerateObjectsUsingBlock:v9];

  return v7;
}

- (id)_stateController
{
  v2 = objc_getAssociatedObject(self, sel__stateController);
  if (!v2)
  {
    v3 = objc_alloc(MEMORY[0x277CD9FB8]);
    rootLayer = [self rootLayer];
    v2 = [v3 initWithLayer:rootLayer];

    objc_setAssociatedObject(self, sel__stateController, v2, 1);
  }

  return v2;
}

@end