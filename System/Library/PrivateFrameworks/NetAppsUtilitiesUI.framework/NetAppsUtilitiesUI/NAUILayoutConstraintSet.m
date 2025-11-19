@interface NAUILayoutConstraintSet
- (BOOL)isActive;
- (NAUILayoutConstraintSet)initWithOwningView:(id)a3 constraintBuilder:(id)a4;
- (UIView)owningView;
- (void)activateIfNeeded;
- (void)invalidate;
- (void)updateConstraintConstants;
@end

@implementation NAUILayoutConstraintSet

- (NAUILayoutConstraintSet)initWithOwningView:(id)a3 constraintBuilder:(id)a4
{
  objc_initWeak(&location, a3);
  v6 = a4;
  v12.receiver = self;
  v12.super_class = NAUILayoutConstraintSet;
  v7 = [(NAUILayoutConstraintSet *)&v12 init];
  if (v7)
  {
    v8 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v7->_owningView, v8);

    v9 = MEMORY[0x25F8702F0](v6);
    builder = v7->_builder;
    v7->_builder = v9;
  }

  objc_destroyWeak(&location);
  return v7;
}

- (BOOL)isActive
{
  v2 = [(NAUILayoutConstraintSet *)self constraints];
  v3 = v2 != 0;

  return v3;
}

- (void)activateIfNeeded
{
  if (![(NAUILayoutConstraintSet *)self isActive])
  {
    v3 = [(NAUILayoutConstraintSet *)self owningView];

    if (v3)
    {
      v4 = [(NAUILayoutConstraintSet *)self builder];
      v5 = [(NAUILayoutConstraintSet *)self owningView];
      v6 = (v4)[2](v4, v5);
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = MEMORY[0x277CBEBF8];
      }

      [(NAUILayoutConstraintSet *)self setConstraints:v8];

      v9 = MEMORY[0x277CFD388];
      v10 = [(NAUILayoutConstraintSet *)self constraints];
      [v9 activateConstraints:v10];
    }
  }
}

- (void)invalidate
{
  if ([(NAUILayoutConstraintSet *)self isActive])
  {
    v3 = MEMORY[0x277CFD388];
    v4 = [(NAUILayoutConstraintSet *)self constraints];
    [v3 deactivateConstraints:v4];

    [(NAUILayoutConstraintSet *)self setConstraints:0];
    v5 = [(NAUILayoutConstraintSet *)self owningView];
    [v5 setNeedsUpdateConstraints];
  }
}

- (void)updateConstraintConstants
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(NAUILayoutConstraintSet *)self owningView];
  if (v3)
  {
    v4 = v3;
    v5 = [(NAUILayoutConstraintSet *)self isActive];

    if (v5)
    {
      v6 = [(NAUILayoutConstraintSet *)self builder];
      v7 = [(NAUILayoutConstraintSet *)self owningView];
      v8 = (v6)[2](v6, v7);
      v9 = v8;
      v10 = MEMORY[0x277CBEBF8];
      if (v8)
      {
        v10 = v8;
      }

      v11 = v10;

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      obj = v11;
      v12 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
        do
        {
          v15 = 0;
          do
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v22 + 1) + 8 * v15);
            v17 = [(NAUILayoutConstraintSet *)self constraints];
            v21[0] = MEMORY[0x277D85DD0];
            v21[1] = 3221225472;
            v21[2] = __52__NAUILayoutConstraintSet_updateConstraintConstants__block_invoke;
            v21[3] = &unk_279966768;
            v21[4] = v16;
            v18 = [v17 na_firstObjectPassingTest:v21];

            if (v18)
            {
              [v16 constant];
              [v18 setConstant:?];
            }

            else
            {
              v19 = [(NAUILayoutConstraintSet *)self constraints];
              NSLog(&cfstr_FoundNewConstr.isa, v16, "[NAUILayoutConstraintSet updateConstraintConstants]", v19);
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v13);
      }
    }
  }
}

BOOL __52__NAUILayoutConstraintSet_updateConstraintConstants__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) firstAnchor];
  v5 = [v3 firstAnchor];
  if ([v4 isEqual:v5])
  {
    v6 = [*(a1 + 32) secondAnchor];
    v7 = [v3 secondAnchor];
    v8 = v6;
    v9 = v7;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      if (!v8)
      {

        goto LABEL_12;
      }

      v11 = [v8 isEqual:v9];

      if (!v11)
      {
        goto LABEL_12;
      }
    }

    v13 = [*(a1 + 32) relation];
    if (v13 == [v3 relation])
    {
      [*(a1 + 32) multiplier];
      v15 = v14;
      [v3 multiplier];
      if (NACGFloatEqualToFloat(v15, v16))
      {
        [*(a1 + 32) priority];
        v18 = v17;
        [v3 priority];
        v12 = v18 == v19;
LABEL_13:

        goto LABEL_14;
      }
    }

LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  v12 = 0;
LABEL_14:

  return v12;
}

- (UIView)owningView
{
  WeakRetained = objc_loadWeakRetained(&self->_owningView);

  return WeakRetained;
}

@end