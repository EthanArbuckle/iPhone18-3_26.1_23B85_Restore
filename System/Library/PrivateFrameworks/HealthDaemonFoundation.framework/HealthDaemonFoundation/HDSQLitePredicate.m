@interface HDSQLitePredicate
+ (id)BOOLeanPredicateWithValue:(BOOL)a3;
+ (id)compoundPredicateWithPredicate:(id)a3 otherPredicate:(id)a4;
+ (id)compoundPredicateWithPredicate:(id)a3 otherPredicate:(id)a4 otherPredicate:(id)a5;
+ (id)disjunctionWithPredicate:(id)a3 otherPredicate:(id)a4;
+ (id)falsePredicate;
+ (id)truePredicate;
- (BOOL)isCompatibleWithPredicate:(id)a3;
- (BOOL)isEqual:(id)a3;
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

- (BOOL)isCompatibleWithPredicate:(id)a3
{
  if (a3)
  {
    v3 = a3;
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

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = objc_opt_class();

  return v4 == v5;
}

+ (id)compoundPredicateWithPredicate:(id)a3 otherPredicate:(id)a4
{
  v13[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    v13[0] = v5;
    v13[1] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    v9 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v8];
  }

  else
  {
    if (v5)
    {
      v10 = v5;
    }

    else
    {
      v10 = v6;
    }

    v9 = v10;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)compoundPredicateWithPredicate:(id)a3 otherPredicate:(id)a4 otherPredicate:(id)a5
{
  v19[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v8)
  {
    v14 = a1;
    v15 = v9;
LABEL_7:
    v16 = v11;
    goto LABEL_8;
  }

  if (!v9)
  {
    v14 = a1;
    v15 = v8;
    goto LABEL_7;
  }

  if (v10)
  {
    v19[0] = v8;
    v19[1] = v9;
    v19[2] = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
    v13 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v12];

    goto LABEL_9;
  }

  v14 = a1;
  v15 = v8;
  v16 = v9;
LABEL_8:
  v13 = [v14 compoundPredicateWithPredicate:v15 otherPredicate:v16];
LABEL_9:

  v17 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)disjunctionWithPredicate:(id)a3 otherPredicate:(id)a4
{
  v13[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    v13[0] = v5;
    v13[1] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    v9 = [HDSQLiteCompoundPredicate predicateMatchingAnyPredicates:v8];
  }

  else
  {
    if (v5)
    {
      v10 = v5;
    }

    else
    {
      v10 = v6;
    }

    v9 = v10;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)BOOLeanPredicateWithValue:(BOOL)a3
{
  if (a3)
  {
    [a1 truePredicate];
  }

  else
  {
    [a1 falsePredicate];
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