@interface DNDSModeAssertionInvalidationPredicate
+ (id)predicateForAnyAssertion;
+ (id)predicateForAssertionClientIdentifiers:(id)identifiers;
+ (id)predicateForAssertionUUIDs:(id)ds;
+ (id)predicateForAssertionsTakenBeforeDate:(id)date;
- (BOOL)evaluateWithObject:(id)object substitutionVariables:(id)variables;
- (id)_init;
@end

@implementation DNDSModeAssertionInvalidationPredicate

+ (id)predicateForAnyAssertion
{
  v2 = objc_alloc_init(DNDSAnyModeAssertionInvalidationPredicate);

  return v2;
}

+ (id)predicateForAssertionsTakenBeforeDate:(id)date
{
  dateCopy = date;
  v4 = [[DNDSModeAssertionDateInvalidationPredicate alloc] initWithDate:dateCopy];

  return v4;
}

+ (id)predicateForAssertionClientIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = [[DNDSModeAssertionClientIdentifierInvalidationPredicate alloc] initWithClientIdentifiers:identifiersCopy];

  return v4;
}

+ (id)predicateForAssertionUUIDs:(id)ds
{
  dsCopy = ds;
  v4 = [[DNDSModeAssertionUUIDInvalidationPredicate alloc] initWithUUIDs:dsCopy];

  return v4;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = DNDSModeAssertionInvalidationPredicate;
  return [(DNDSModeAssertionInvalidationPredicate *)&v3 init];
}

- (BOOL)evaluateWithObject:(id)object substitutionVariables:(id)variables
{
  objectCopy = object;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end