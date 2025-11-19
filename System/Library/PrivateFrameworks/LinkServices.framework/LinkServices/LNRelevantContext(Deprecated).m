@interface LNRelevantContext(Deprecated)
- (id)conditions;
- (uint64_t)asCondition;
@end

@implementation LNRelevantContext(Deprecated)

- (id)conditions
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = [a1 asCondition];
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (uint64_t)asCondition
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D940];
  v4 = NSStringFromSelector(aSelector);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v2 raise:v3 format:{@"Invoking %@ on abstract base class %@", v4, v6}];

  return 0;
}

@end