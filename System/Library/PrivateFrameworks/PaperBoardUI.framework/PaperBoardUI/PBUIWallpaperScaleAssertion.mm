@interface PBUIWallpaperScaleAssertion
- (double)initWithVariant:(void *)a3 scale:(void *)a4 forReason:(double)a5 invalidationBlock:;
- (double)scale;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (uint64_t)variant;
- (void)dealloc;
- (void)invalidateWithAnimationFactory:(id)a3;
@end

@implementation PBUIWallpaperScaleAssertion

- (uint64_t)variant
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (double)scale
{
  if (a1)
  {
    return *(a1 + 64);
  }

  else
  {
    return 0.0;
  }
}

- (void)dealloc
{
  [(PBUIWallpaperScaleAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = PBUIWallpaperScaleAssertion;
  [(BSSimpleAssertion *)&v3 dealloc];
}

void __81__PBUIWallpaperScaleAssertion_initWithVariant_scale_forReason_invalidationBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v7 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  (*(*(a1 + 32) + 16))();
}

- (void)invalidateWithAnimationFactory:(id)a3
{
  v4 = [a3 copy];
  invalidationAnimationFactory = self->_invalidationAnimationFactory;
  self->_invalidationAnimationFactory = v4;

  v6.receiver = self;
  v6.super_class = PBUIWallpaperScaleAssertion;
  [(BSSimpleAssertion *)&v6 invalidate];
}

- (id)succinctDescription
{
  v2 = [(PBUIWallpaperScaleAssertion *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(PBUIWallpaperScaleAssertion *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(PBUIWallpaperScaleAssertion *)self succinctDescriptionBuilder];
  v5 = v4;
  if (self)
  {
    v6 = PBUIStringForWallpaperVariant(self->_variant);
    [v5 appendString:v6 withName:@"variant"];

    scale = self->_scale;
  }

  else
  {
    [PBUIWallpaperScaleAssertion descriptionBuilderWithMultilinePrefix:v4];
    scale = 0.0;
  }

  v8 = [v5 appendFloat:@"scale" withName:scale];

  return v5;
}

- (double)initWithVariant:(void *)a3 scale:(void *)a4 forReason:(double)a5 invalidationBlock:
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (a1)
  {
    if (!v10)
    {
      v16 = [MEMORY[0x277CCA890] currentHandler];
      [v16 handleFailureInMethod:sel_initWithVariant_scale_forReason_invalidationBlock_ object:a1 file:@"PBUIWallpaperScaleAssertion.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"invalidationBlock"}];
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __81__PBUIWallpaperScaleAssertion_initWithVariant_scale_forReason_invalidationBlock___block_invoke;
    v18[3] = &unk_278363A00;
    v19 = v11;
    v12 = MEMORY[0x223D62EE0](v18);
    v17.receiver = a1;
    v17.super_class = PBUIWallpaperScaleAssertion;
    v13 = objc_msgSendSuper2(&v17, sel_initWithIdentifier_forReason_invalidationBlock_, @"WallpaperScale", v9, v12);
    if (v13)
    {
      *(v13 + 7) = a2;
      v13[8] = a5;
    }

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)descriptionBuilderWithMultilinePrefix:(void *)a1 .cold.1(void *a1)
{
  v2 = PBUIStringForWallpaperVariant(0);
  [a1 appendString:v2 withName:@"variant"];
}

@end