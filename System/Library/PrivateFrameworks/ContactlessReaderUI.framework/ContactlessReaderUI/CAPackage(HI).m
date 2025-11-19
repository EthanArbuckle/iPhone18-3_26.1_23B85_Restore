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
  v5 = [a1 rootLayer];
  [a1 transitionToStateWithName:v4 onLayer:v5];
}

- (void)transitionToStateWithName:()HI onLayer:
{
  v6 = a4;
  v9 = [v6 stateWithName:a3];
  v7 = [a1 _stateController];
  LODWORD(v8) = 1.0;
  [v7 setState:v9 ofLayer:v6 transitionSpeed:v8];
}

- (id)availableStates
{
  v2 = [a1 rootLayer];
  v3 = [a1 availableStatesOnLayer:v2];

  return v3;
}

- (id)availableStatesOnLayer:()HI
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a3;
  v5 = [v3 array];
  v6 = [v4 states];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__CAPackage_HI__availableStatesOnLayer___block_invoke;
  v9[3] = &unk_278E039F8;
  v7 = v5;
  v10 = v7;
  [v6 enumerateObjectsUsingBlock:v9];

  return v7;
}

- (id)_stateController
{
  v2 = objc_getAssociatedObject(a1, sel__stateController);
  if (!v2)
  {
    v3 = objc_alloc(MEMORY[0x277CD9FB8]);
    v4 = [a1 rootLayer];
    v2 = [v3 initWithLayer:v4];

    objc_setAssociatedObject(a1, sel__stateController, v2, 1);
  }

  return v2;
}

@end