@interface PBUIWallpaperFloatingLayerAssertion
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)initWithContainerView:(void *)a3 forReason:(void *)a4 invalidationBlock:;
- (id)succinctDescription;
- (uint64_t)containerView;
- (void)dealloc;
- (void)invalidateWithAnimationFactory:(id)a3;
@end

@implementation PBUIWallpaperFloatingLayerAssertion

void __89__PBUIWallpaperFloatingLayerAssertion_initWithContainerView_forReason_invalidationBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v9 = *(a1 + 32);
  v8 = v7;
  BSDispatchMain();
}

- (void)invalidateWithAnimationFactory:(id)a3
{
  v4 = [a3 copy];
  invalidationAnimationFactory = self->_invalidationAnimationFactory;
  self->_invalidationAnimationFactory = v4;

  v6.receiver = self;
  v6.super_class = PBUIWallpaperFloatingLayerAssertion;
  [(BSSimpleAssertion *)&v6 invalidate];
}

- (void)dealloc
{
  [(PBUIWallpaperFloatingLayerAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = PBUIWallpaperFloatingLayerAssertion;
  [(BSSimpleAssertion *)&v3 dealloc];
}

- (id)succinctDescription
{
  v2 = [(PBUIWallpaperFloatingLayerAssertion *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(PBUIWallpaperFloatingLayerAssertion *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(PBUIWallpaperFloatingLayerAssertion *)self succinctDescriptionBuilder];
  v5 = [v4 appendObject:self->_containerView withName:@"ContainerView"];

  return v4;
}

- (id)initWithContainerView:(void *)a3 forReason:(void *)a4 invalidationBlock:
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (a1)
  {
    if (!v10)
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      [v17 handleFailureInMethod:sel_initWithContainerView_forReason_invalidationBlock_ object:a1 file:@"PBUIWallpaperFloatingLayerAssertion.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"invalidationBlock"}];
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __89__PBUIWallpaperFloatingLayerAssertion_initWithContainerView_forReason_invalidationBlock___block_invoke;
    v19[3] = &unk_278363A00;
    v20 = v11;
    v12 = MEMORY[0x223D62EE0](v19);
    v18.receiver = a1;
    v18.super_class = PBUIWallpaperFloatingLayerAssertion;
    v13 = objc_msgSendSuper2(&v18, sel_initWithIdentifier_forReason_invalidationBlock_, @"WallpaperFloatingLayer", v9, v12);
    v14 = v13;
    if (v13)
    {
      objc_storeStrong(v13 + 7, a2);
    }

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (uint64_t)containerView
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

@end