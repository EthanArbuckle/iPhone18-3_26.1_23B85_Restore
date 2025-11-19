@interface BMStreamBuiltinPruningTrigger
- (BMStreamBuiltinPruningTrigger)initWithIdentifier:(id)a3 predicate:(id)a4;
- (BMStreamBuiltinPruningTrigger)initWithIdentifier:(id)a3 triggerCondition:(id)a4 pruningPredicate:(id)a5;
- (id)description;
@end

@implementation BMStreamBuiltinPruningTrigger

- (BMStreamBuiltinPruningTrigger)initWithIdentifier:(id)a3 predicate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = BMStreamBuiltinPruningTrigger;
  v9 = [(BMStreamBuiltinPruningTrigger *)&v15 init];
  if (v9)
  {
    v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"com.apple.MobileSMS IN $disabledApps" argumentArray:0];
    v11 = [(NSPredicate *)v8 isEqual:v10];

    if (v11)
    {
      triggerCondition = v9->_triggerCondition;
      v9->_triggerCondition = v8;
      v13 = v8;

      v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE"];
    }

    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v9->_pruningPredicate, v8);
  }

  return v9;
}

- (BMStreamBuiltinPruningTrigger)initWithIdentifier:(id)a3 triggerCondition:(id)a4 pruningPredicate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = BMStreamBuiltinPruningTrigger;
  v12 = [(BMStreamBuiltinPruningTrigger *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
    objc_storeStrong(&v13->_triggerCondition, a4);
    objc_storeStrong(&v13->_pruningPredicate, a5);
  }

  return v13;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"BMStreamBuiltinPruningTrigger { id: %@, trigger: %@, predicate: %@ }", self->_identifier, self->_triggerCondition, self->_pruningPredicate];

  return v2;
}

@end