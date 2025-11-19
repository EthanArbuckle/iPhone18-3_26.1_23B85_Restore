@interface HDDiscardWorkoutOperation
- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5;
- (HDDiscardWorkoutOperation)initWithBuilderIdentifier:(id)a3;
@end

@implementation HDDiscardWorkoutOperation

- (HDDiscardWorkoutOperation)initWithBuilderIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDDiscardWorkoutOperation;
  v5 = [(HDDiscardWorkoutOperation *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    builderIdentifier = v5->_builderIdentifier;
    v5->_builderIdentifier = v6;
  }

  return v5;
}

- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5
{
  builderIdentifier = self->_builderIdentifier;
  v7 = a3;
  v8 = HDPredicateForWorkoutBuilderWithIdentifier(builderIdentifier);
  v9 = objc_opt_class();
  v10 = [v7 database];

  LOBYTE(a5) = [v9 deleteEntitiesWithPredicate:v8 healthDatabase:v10 error:a5];
  return a5;
}

@end