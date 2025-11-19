@interface DNDSModeAssertionUpdateResult
+ (id)emptyResult;
- (DNDSModeAssertionUpdateResult)initWithAssertions:(id)a3 invalidations:(id)a4;
- (id)description;
- (id)resultCombiningWithResult:(id)a3;
@end

@implementation DNDSModeAssertionUpdateResult

+ (id)emptyResult
{
  v2 = [a1 alloc];
  v3 = [v2 initWithAssertions:MEMORY[0x277CBEBF8] invalidations:MEMORY[0x277CBEBF8]];

  return v3;
}

- (DNDSModeAssertionUpdateResult)initWithAssertions:(id)a3 invalidations:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = DNDSModeAssertionUpdateResult;
  v8 = [(DNDSModeAssertionUpdateResult *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    assertions = v8->_assertions;
    v8->_assertions = v9;

    v11 = [v7 copy];
    invalidations = v8->_invalidations;
    v8->_invalidations = v11;
  }

  return v8;
}

- (id)resultCombiningWithResult:(id)a3
{
  v4 = a3;
  v5 = [(DNDSModeAssertionUpdateResult *)self assertions];
  v6 = [v4 assertions];
  v7 = [v5 arrayByAddingObjectsFromArray:v6];

  v8 = [(DNDSModeAssertionUpdateResult *)self invalidations];
  v9 = [v4 invalidations];

  v10 = [v8 arrayByAddingObjectsFromArray:v9];

  v11 = [[DNDSModeAssertionUpdateResult alloc] initWithAssertions:v7 invalidations:v10];

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(DNDSModeAssertionUpdateResult *)self assertions];
  v6 = [(DNDSModeAssertionUpdateResult *)self invalidations];
  v7 = [v3 stringWithFormat:@"<%@: %p assertions: %@; invalidations: %@>", v4, self, v5, v6];;

  return v7;
}

@end