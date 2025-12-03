@interface BMStreamBuiltinPruningTrigger
- (BMStreamBuiltinPruningTrigger)initWithIdentifier:(id)identifier predicate:(id)predicate;
- (BMStreamBuiltinPruningTrigger)initWithIdentifier:(id)identifier triggerCondition:(id)condition pruningPredicate:(id)predicate;
- (id)description;
@end

@implementation BMStreamBuiltinPruningTrigger

- (BMStreamBuiltinPruningTrigger)initWithIdentifier:(id)identifier predicate:(id)predicate
{
  identifierCopy = identifier;
  predicateCopy = predicate;
  v15.receiver = self;
  v15.super_class = BMStreamBuiltinPruningTrigger;
  v9 = [(BMStreamBuiltinPruningTrigger *)&v15 init];
  if (v9)
  {
    v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"com.apple.MobileSMS IN $disabledApps" argumentArray:0];
    v11 = [(NSPredicate *)predicateCopy isEqual:v10];

    if (v11)
    {
      triggerCondition = v9->_triggerCondition;
      v9->_triggerCondition = predicateCopy;
      v13 = predicateCopy;

      predicateCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE"];
    }

    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v9->_pruningPredicate, predicateCopy);
  }

  return v9;
}

- (BMStreamBuiltinPruningTrigger)initWithIdentifier:(id)identifier triggerCondition:(id)condition pruningPredicate:(id)predicate
{
  identifierCopy = identifier;
  conditionCopy = condition;
  predicateCopy = predicate;
  v15.receiver = self;
  v15.super_class = BMStreamBuiltinPruningTrigger;
  v12 = [(BMStreamBuiltinPruningTrigger *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_triggerCondition, condition);
    objc_storeStrong(&v13->_pruningPredicate, predicate);
  }

  return v13;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"BMStreamBuiltinPruningTrigger { id: %@, trigger: %@, predicate: %@ }", self->_identifier, self->_triggerCondition, self->_pruningPredicate];

  return v2;
}

@end