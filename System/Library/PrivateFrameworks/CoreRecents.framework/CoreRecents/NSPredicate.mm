@interface NSPredicate
- (BOOL)cr_isInvalidOperatorType:(unint64_t)type forKeyPath:(id)path;
- (id)cr_predicateClauseWithBindings:(id)bindings error:(id *)error;
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

- (BOOL)cr_isInvalidOperatorType:(unint64_t)type forKeyPath:(id)path
{
  v5 = [path componentsSeparatedByString:@"."];
  if ([v5 count] && (v6 = objc_msgSend(v5, "objectAtIndex:", 0)) != 0 && (v7 = sub_10000172C(v6)) != 0 && (v8 = v7, v9 = objc_msgSend(objc_msgSend(v7, "objectForKey:", @"count"), "unsignedIntegerValue"), v9 >= objc_msgSend(v5, "count")))
  {
    v10 = [v8 objectForKey:@"operator"];
    if (v10)
    {
      LOBYTE(v10) = [v10 unsignedIntegerValue] != type;
    }
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (id)cr_predicateClauseWithBindings:(id)bindings error:(id *)error
{
  cr_simplifiedPredicate = [(NSPredicate *)self cr_simplifiedPredicate];
  v8 = objc_alloc_init(_ClauseGenerationContext);
  [cr_simplifiedPredicate cr_processWithContext:v8];
  if ([(_ClauseGenerationContext *)v8 hadError])
  {
    if (error)
    {
      v11 = @"predicate";
      selfCopy = self;
      v9 = 0;
      *error = [NSError errorWithDomain:CRRecentContactsErrorDomain code:1000 userInfo:[NSDictionary dictionaryWithObjects:&selfCopy forKeys:&v11 count:1]];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = [(_ClauseGenerationContext *)v8 clauseWithBindings:bindings];
  }

  return v9;
}

@end