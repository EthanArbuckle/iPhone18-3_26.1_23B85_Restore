@interface _NTKComplicationStateLayout
- (id)ruleForLayoutOverride:(int64_t)override;
- (void)setRule:(id)rule forLayoutOverride:(int64_t)override;
@end

@implementation _NTKComplicationStateLayout

- (void)setRule:(id)rule forLayoutOverride:(int64_t)override
{
  ruleCopy = rule;
  overrideRules = self->_overrideRules;
  if (!overrideRules)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = self->_overrideRules;
    self->_overrideRules = v7;

    overrideRules = self->_overrideRules;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:override];
  [(NSMutableDictionary *)overrideRules setObject:ruleCopy forKey:v9];
}

- (id)ruleForLayoutOverride:(int64_t)override
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__22;
  v13 = __Block_byref_object_dispose__22;
  v14 = self->_defaultRule;
  overrideRules = self->_overrideRules;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53___NTKComplicationStateLayout_ruleForLayoutOverride___block_invoke;
  v8[3] = &unk_278781AC0;
  v8[4] = &v9;
  v8[5] = override;
  [(NSMutableDictionary *)overrideRules enumerateKeysAndObjectsUsingBlock:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

@end