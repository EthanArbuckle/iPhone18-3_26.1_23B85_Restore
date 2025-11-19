@interface NSPredicate
- (BOOL)cr_isInvalidOperatorType:(unint64_t)a3 forKeyPath:(id)a4;
- (id)cr_predicateClauseWithBindings:(id)a3 error:(id *)a4;
- (id)cr_simplifiedPredicate;
@end

@implementation NSPredicate

- (id)cr_simplifiedPredicate
{
  result = [(NSPredicate *)self cr_simplifiedPredicateSingleStep];
  if (result != self)
  {
    v4 = -3;
    do
    {
      v5 = v4;
      result = [(NSPredicate *)self cr_simplifiedPredicateSingleStep];
      if (result == self)
      {
        break;
      }

      v4 = v5 + 1;
    }

    while (v5);
  }

  return result;
}

- (BOOL)cr_isInvalidOperatorType:(unint64_t)a3 forKeyPath:(id)a4
{
  v5 = [a4 componentsSeparatedByString:@"."];
  if ([v5 count] && (v6 = objc_msgSend(v5, "objectAtIndex:", 0)) != 0 && (v7 = sub_10000172C(v6)) != 0 && (v8 = v7, v9 = objc_msgSend(objc_msgSend(v7, "objectForKey:", @"count"), "unsignedIntegerValue"), v9 >= objc_msgSend(v5, "count")))
  {
    v10 = [v8 objectForKey:@"operator"];
    if (v10)
    {
      LOBYTE(v10) = [v10 unsignedIntegerValue] != a3;
    }
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (id)cr_predicateClauseWithBindings:(id)a3 error:(id *)a4
{
  v7 = [(NSPredicate *)self cr_simplifiedPredicate];
  v8 = objc_alloc_init(_ClauseGenerationContext);
  [v7 cr_processWithContext:v8];
  if ([(_ClauseGenerationContext *)v8 hadError])
  {
    if (a4)
    {
      v11 = @"predicate";
      v12 = self;
      v9 = 0;
      *a4 = [NSError errorWithDomain:CRRecentContactsErrorDomain code:1000 userInfo:[NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1]];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = [(_ClauseGenerationContext *)v8 clauseWithBindings:a3];
  }

  return v9;
}

@end