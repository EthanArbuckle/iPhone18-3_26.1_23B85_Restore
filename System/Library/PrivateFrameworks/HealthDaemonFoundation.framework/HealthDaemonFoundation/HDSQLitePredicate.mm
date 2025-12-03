@interface HDSQLitePredicate
+ (id)BOOLeanPredicateWithValue:(BOOL)value;
+ (id)compoundPredicateWithPredicate:(id)predicate otherPredicate:(id)otherPredicate;
+ (id)compoundPredicateWithPredicate:(id)predicate otherPredicate:(id)otherPredicate otherPredicate:(id)a5;
+ (id)disjunctionWithPredicate:(id)predicate otherPredicate:(id)otherPredicate;
+ (id)falsePredicate;
+ (id)truePredicate;
- (BOOL)isCompatibleWithPredicate:(id)predicate;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation HDSQLitePredicate

+ (id)truePredicate
{
  if (truePredicate_onceToken != -1)
  {
    +[HDSQLitePredicate(Convenience) truePredicate];
  }

  v3 = truePredicate_truePredicate;

  return v3;
}

- (BOOL)isCompatibleWithPredicate:(id)predicate
{
  if (predicate)
  {
    predicateCopy = predicate;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = objc_opt_class();
  v5 = objc_opt_class();

  return v4 == v5;
}

+ (id)compoundPredicateWithPredicate:(id)predicate otherPredicate:(id)otherPredicate
{
  v13[2] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  otherPredicateCopy = otherPredicate;
  v7 = otherPredicateCopy;
  if (predicateCopy && otherPredicateCopy)
  {
    v13[0] = predicateCopy;
    v13[1] = otherPredicateCopy;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    v9 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v8];
  }

  else
  {
    if (predicateCopy)
    {
      v10 = predicateCopy;
    }

    else
    {
      v10 = otherPredicateCopy;
    }

    v9 = v10;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)compoundPredicateWithPredicate:(id)predicate otherPredicate:(id)otherPredicate otherPredicate:(id)a5
{
  v19[3] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  otherPredicateCopy = otherPredicate;
  v10 = a5;
  v11 = v10;
  if (!predicateCopy)
  {
    selfCopy3 = self;
    v15 = otherPredicateCopy;
LABEL_7:
    v16 = v11;
    goto LABEL_8;
  }

  if (!otherPredicateCopy)
  {
    selfCopy3 = self;
    v15 = predicateCopy;
    goto LABEL_7;
  }

  if (v10)
  {
    v19[0] = predicateCopy;
    v19[1] = otherPredicateCopy;
    v19[2] = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
    v13 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v12];

    goto LABEL_9;
  }

  selfCopy3 = self;
  v15 = predicateCopy;
  v16 = otherPredicateCopy;
LABEL_8:
  v13 = [selfCopy3 compoundPredicateWithPredicate:v15 otherPredicate:v16];
LABEL_9:

  v17 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)disjunctionWithPredicate:(id)predicate otherPredicate:(id)otherPredicate
{
  v13[2] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  otherPredicateCopy = otherPredicate;
  v7 = otherPredicateCopy;
  if (predicateCopy && otherPredicateCopy)
  {
    v13[0] = predicateCopy;
    v13[1] = otherPredicateCopy;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    v9 = [HDSQLiteCompoundPredicate predicateMatchingAnyPredicates:v8];
  }

  else
  {
    if (predicateCopy)
    {
      v10 = predicateCopy;
    }

    else
    {
      v10 = otherPredicateCopy;
    }

    v9 = v10;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)BOOLeanPredicateWithValue:(BOOL)value
{
  if (value)
  {
    [self truePredicate];
  }

  else
  {
    [self falsePredicate];
  }
  v3 = ;

  return v3;
}

+ (id)falsePredicate
{
  if (falsePredicate_onceToken != -1)
  {
    +[HDSQLitePredicate(Convenience) falsePredicate];
  }

  v3 = falsePredicate_falsePredicate;

  return v3;
}

uint64_t __48__HDSQLitePredicate_Convenience__falsePredicate__block_invoke()
{
  falsePredicate_falsePredicate = objc_alloc_init(HDSQLiteFalsePredicate);

  return MEMORY[0x2821F96F8]();
}

uint64_t __47__HDSQLitePredicate_Convenience__truePredicate__block_invoke()
{
  truePredicate_truePredicate = objc_alloc_init(HDSQLiteTruePredicate);

  return MEMORY[0x2821F96F8]();
}

@end