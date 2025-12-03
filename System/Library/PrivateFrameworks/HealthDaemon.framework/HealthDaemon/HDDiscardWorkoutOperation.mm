@interface HDDiscardWorkoutOperation
- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
- (HDDiscardWorkoutOperation)initWithBuilderIdentifier:(id)identifier;
@end

@implementation HDDiscardWorkoutOperation

- (HDDiscardWorkoutOperation)initWithBuilderIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = HDDiscardWorkoutOperation;
  v5 = [(HDDiscardWorkoutOperation *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    builderIdentifier = v5->_builderIdentifier;
    v5->_builderIdentifier = v6;
  }

  return v5;
}

- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  builderIdentifier = self->_builderIdentifier;
  profileCopy = profile;
  v8 = HDPredicateForWorkoutBuilderWithIdentifier(builderIdentifier);
  v9 = objc_opt_class();
  database = [profileCopy database];

  LOBYTE(error) = [v9 deleteEntitiesWithPredicate:v8 healthDatabase:database error:error];
  return error;
}

@end