@interface SFUnifiedTabBarItemAccessoryButtonArrangement
- (BOOL)containsButtonType:(int64_t)a3;
- (BOOL)isEqualToArrangement:(id)a3;
- (SFUnifiedTabBarItemAccessoryButtonArrangement)initWithLeadingButtonTypes:(id)a3 trailingButtonTypes:(id)a4;
- (id)initUsingButtonLayout:(int64_t)a3 filteringButtonsUsingBlock:(id)a4;
@end

@implementation SFUnifiedTabBarItemAccessoryButtonArrangement

- (SFUnifiedTabBarItemAccessoryButtonArrangement)initWithLeadingButtonTypes:(id)a3 trailingButtonTypes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = SFUnifiedTabBarItemAccessoryButtonArrangement;
  v8 = [(SFUnifiedTabBarItemAccessoryButtonArrangement *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    leadingButtonTypes = v8->_leadingButtonTypes;
    v8->_leadingButtonTypes = v9;

    v11 = [v7 copy];
    trailingButtonTypes = v8->_trailingButtonTypes;
    v8->_trailingButtonTypes = v11;

    v13 = v8;
  }

  return v8;
}

- (id)initUsingButtonLayout:(int64_t)a3 filteringButtonsUsingBlock:(id)a4
{
  v6 = a4;
  v7 = &unk_1EFF74508;
  if (a3 == 1)
  {
    v7 = &unk_1EFF74520;
  }

  if (a3 == 2)
  {
    v8 = &unk_1EFF74538;
  }

  else
  {
    v8 = v7;
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __98__SFUnifiedTabBarItemAccessoryButtonArrangement_initUsingButtonLayout_filteringButtonsUsingBlock___block_invoke;
  v23[3] = &unk_1E721E780;
  v9 = v6;
  v24 = v9;
  v10 = [v8 safari_filterObjectsUsingBlock:v23];
  if (a3 == 2)
  {
    v13 = &unk_1EFF74598;
  }

  else if (a3)
  {
    v13 = &unk_1EFF74580;
  }

  else
  {
    v11 = +[SFFeatureManager sharedFeatureManager];
    v12 = [v11 usesFormatMenuInUnifiedTabBar];

    if (v12)
    {
      v13 = &unk_1EFF74550;
    }

    else
    {
      v13 = &unk_1EFF74568;
    }
  }

  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __98__SFUnifiedTabBarItemAccessoryButtonArrangement_initUsingButtonLayout_filteringButtonsUsingBlock___block_invoke_2;
  v21 = &unk_1E721E780;
  v22 = v9;
  v14 = v9;
  v15 = [v13 safari_filterObjectsUsingBlock:&v18];
  v16 = [(SFUnifiedTabBarItemAccessoryButtonArrangement *)self initWithLeadingButtonTypes:v10 trailingButtonTypes:v15, v18, v19, v20, v21];

  return v16;
}

uint64_t __98__SFUnifiedTabBarItemAccessoryButtonArrangement_initUsingButtonLayout_filteringButtonsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 integerValue];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t __98__SFUnifiedTabBarItemAccessoryButtonArrangement_initUsingButtonLayout_filteringButtonsUsingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 integerValue];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (BOOL)isEqualToArrangement:(id)a3
{
  v4 = a3;
  if ([(NSArray *)self->_leadingButtonTypes isEqualToArray:v4[1]])
  {
    v5 = [(NSArray *)self->_trailingButtonTypes isEqualToArray:v4[2]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)containsButtonType:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSArray *)self->_leadingButtonTypes containsObject:v4]|| [(NSArray *)self->_trailingButtonTypes containsObject:v4];

  return v5;
}

@end