@interface NUAssertionPolicyUnique
- (NUAssertionPolicyUnique)init;
- (void)notifyAssertion:(id)assertion;
@end

@implementation NUAssertionPolicyUnique

- (void)notifyAssertion:(id)assertion
{
  assertionCopy = assertion;
  v5 = MEMORY[0x1E696AEC0];
  fileName = [assertionCopy fileName];
  v7 = [v5 stringWithFormat:@"%@:%ld", fileName, objc_msgSend(assertionCopy, "lineNumber")];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (([(NSMutableSet *)selfCopy->_signatures containsObject:v7]& 1) == 0)
  {
    [(NSMutableSet *)selfCopy->_signatures addObject:v7];
    v9.receiver = selfCopy;
    v9.super_class = NUAssertionPolicyUnique;
    [(NUAssertionPolicyComposite *)&v9 notifyAssertion:assertionCopy];
  }

  objc_sync_exit(selfCopy);
}

- (NUAssertionPolicyUnique)init
{
  v6.receiver = self;
  v6.super_class = NUAssertionPolicyUnique;
  v2 = [(NUAssertionPolicyComposite *)&v6 init];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  signatures = v2->_signatures;
  v2->_signatures = v3;

  return v2;
}

@end