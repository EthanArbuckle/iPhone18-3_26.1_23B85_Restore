@interface SFUnifiedTabBarItemAccessoryButtonArrangement
- (BOOL)containsButtonType:(int64_t)type;
- (BOOL)isEqualToArrangement:(id)arrangement;
- (SFUnifiedTabBarItemAccessoryButtonArrangement)initWithLeadingButtonTypes:(id)types trailingButtonTypes:(id)buttonTypes;
- (id)initUsingButtonLayout:(int64_t)layout filteringButtonsUsingBlock:(id)block;
@end

@implementation SFUnifiedTabBarItemAccessoryButtonArrangement

- (SFUnifiedTabBarItemAccessoryButtonArrangement)initWithLeadingButtonTypes:(id)types trailingButtonTypes:(id)buttonTypes
{
  typesCopy = types;
  buttonTypesCopy = buttonTypes;
  v15.receiver = self;
  v15.super_class = SFUnifiedTabBarItemAccessoryButtonArrangement;
  v8 = [(SFUnifiedTabBarItemAccessoryButtonArrangement *)&v15 init];
  if (v8)
  {
    v9 = [typesCopy copy];
    leadingButtonTypes = v8->_leadingButtonTypes;
    v8->_leadingButtonTypes = v9;

    v11 = [buttonTypesCopy copy];
    trailingButtonTypes = v8->_trailingButtonTypes;
    v8->_trailingButtonTypes = v11;

    v13 = v8;
  }

  return v8;
}

- (id)initUsingButtonLayout:(int64_t)layout filteringButtonsUsingBlock:(id)block
{
  blockCopy = block;
  v7 = &unk_1EFF74508;
  if (layout == 1)
  {
    v7 = &unk_1EFF74520;
  }

  if (layout == 2)
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
  v9 = blockCopy;
  v24 = v9;
  v10 = [v8 safari_filterObjectsUsingBlock:v23];
  if (layout == 2)
  {
    v13 = &unk_1EFF74598;
  }

  else if (layout)
  {
    v13 = &unk_1EFF74580;
  }

  else
  {
    v11 = +[SFFeatureManager sharedFeatureManager];
    usesFormatMenuInUnifiedTabBar = [v11 usesFormatMenuInUnifiedTabBar];

    if (usesFormatMenuInUnifiedTabBar)
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

- (BOOL)isEqualToArrangement:(id)arrangement
{
  arrangementCopy = arrangement;
  if ([(NSArray *)self->_leadingButtonTypes isEqualToArray:arrangementCopy[1]])
  {
    v5 = [(NSArray *)self->_trailingButtonTypes isEqualToArray:arrangementCopy[2]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)containsButtonType:(int64_t)type
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v5 = [(NSArray *)self->_leadingButtonTypes containsObject:v4]|| [(NSArray *)self->_trailingButtonTypes containsObject:v4];

  return v5;
}

@end