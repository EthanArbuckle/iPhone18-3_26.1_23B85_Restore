@interface DNDSModeAssertionUpdateResult
+ (id)emptyResult;
- (DNDSModeAssertionUpdateResult)initWithAssertions:(id)assertions invalidations:(id)invalidations;
- (id)description;
- (id)resultCombiningWithResult:(id)result;
@end

@implementation DNDSModeAssertionUpdateResult

+ (id)emptyResult
{
  v2 = [self alloc];
  v3 = [v2 initWithAssertions:MEMORY[0x277CBEBF8] invalidations:MEMORY[0x277CBEBF8]];

  return v3;
}

- (DNDSModeAssertionUpdateResult)initWithAssertions:(id)assertions invalidations:(id)invalidations
{
  assertionsCopy = assertions;
  invalidationsCopy = invalidations;
  v14.receiver = self;
  v14.super_class = DNDSModeAssertionUpdateResult;
  v8 = [(DNDSModeAssertionUpdateResult *)&v14 init];
  if (v8)
  {
    v9 = [assertionsCopy copy];
    assertions = v8->_assertions;
    v8->_assertions = v9;

    v11 = [invalidationsCopy copy];
    invalidations = v8->_invalidations;
    v8->_invalidations = v11;
  }

  return v8;
}

- (id)resultCombiningWithResult:(id)result
{
  resultCopy = result;
  assertions = [(DNDSModeAssertionUpdateResult *)self assertions];
  assertions2 = [resultCopy assertions];
  v7 = [assertions arrayByAddingObjectsFromArray:assertions2];

  invalidations = [(DNDSModeAssertionUpdateResult *)self invalidations];
  invalidations2 = [resultCopy invalidations];

  v10 = [invalidations arrayByAddingObjectsFromArray:invalidations2];

  v11 = [[DNDSModeAssertionUpdateResult alloc] initWithAssertions:v7 invalidations:v10];

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  assertions = [(DNDSModeAssertionUpdateResult *)self assertions];
  invalidations = [(DNDSModeAssertionUpdateResult *)self invalidations];
  v7 = [v3 stringWithFormat:@"<%@: %p assertions: %@; invalidations: %@>", v4, self, assertions, invalidations];;

  return v7;
}

@end