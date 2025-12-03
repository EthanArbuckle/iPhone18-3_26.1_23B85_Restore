@interface NTKComplicationLayout
+ (id)layoutWithDefaultRule:(id)rule;
- (NTKComplicationLayout)init;
- (id)defaultLayoutRuleForState:(int64_t)state;
- (id)layoutRuleForComplicationState:(int64_t)state layoutOverride:(int64_t)override;
- (void)setDefaultLayoutRule:(id)rule forState:(int64_t)state;
- (void)setOverrideLayoutRule:(id)rule forState:(int64_t)state layoutOverride:(int64_t)override;
@end

@implementation NTKComplicationLayout

+ (id)layoutWithDefaultRule:(id)rule
{
  ruleCopy = rule;
  v5 = objc_alloc_init(self);
  [v5 setDefaultLayoutRule:ruleCopy forState:0];

  return v5;
}

- (NTKComplicationLayout)init
{
  v8.receiver = self;
  v8.super_class = NTKComplicationLayout;
  v2 = [(NTKComplicationLayout *)&v8 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    stateLayouts = v2->_stateLayouts;
    v2->_stateLayouts = array;

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __29__NTKComplicationLayout_init__block_invoke;
    v6[3] = &unk_278781388;
    v7 = v2;
    NTKEnumerateComplicationStates(v6);
  }

  return v2;
}

void __29__NTKComplicationLayout_init__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = objc_alloc_init(_NTKComplicationStateLayout);
  [v1 addObject:v2];
}

- (void)setDefaultLayoutRule:(id)rule forState:(int64_t)state
{
  ruleCopy = rule;
  v7 = [(NTKComplicationLayout *)self _layoutForState:state];
  [v7 setDefaultRule:ruleCopy];
}

- (void)setOverrideLayoutRule:(id)rule forState:(int64_t)state layoutOverride:(int64_t)override
{
  ruleCopy = rule;
  v9 = [(NTKComplicationLayout *)self _layoutForState:state];
  [v9 setRule:ruleCopy forLayoutOverride:override];
}

- (id)layoutRuleForComplicationState:(int64_t)state layoutOverride:(int64_t)override
{
  if (state < 0)
  {
LABEL_6:
    v8 = 0;
  }

  else
  {
    stateCopy = state;
    while (1)
    {
      v7 = [(NTKComplicationLayout *)self _layoutForState:stateCopy];
      v8 = [v7 ruleForLayoutOverride:override];

      if (v8)
      {
        break;
      }

      if (stateCopy-- < 1)
      {
        goto LABEL_6;
      }
    }
  }

  return v8;
}

- (id)defaultLayoutRuleForState:(int64_t)state
{
  if (state < 0)
  {
LABEL_6:
    defaultRule = 0;
  }

  else
  {
    stateCopy = state;
    while (1)
    {
      v5 = [(NTKComplicationLayout *)self _layoutForState:stateCopy];
      defaultRule = [v5 defaultRule];

      if (defaultRule)
      {
        break;
      }

      if (stateCopy-- < 1)
      {
        goto LABEL_6;
      }
    }
  }

  return defaultRule;
}

@end