@interface EDSearchableIndexExpressionGenerator
+ (BOOL)_keyPathIsSuggestable:(id)suggestable;
+ (OS_os_log)log;
+ (id)_comparisonOperationMatchingValue:(id)value operatorType:(unint64_t)type;
+ (id)_operandStringForCompoundPredicateType:(unint64_t)type;
+ (id)_queryWithAttributes:(id)attributes matchingValue:(id)value operatorType:(unint64_t)type;
+ (id)expressionForPredicate:(id)predicate suggestion:(id)suggestion bundleID:(id)d nonSpotlightPredicates:(id *)predicates;
+ (id)queryStringByJoiningQueries:(id)queries withPredicateType:(unint64_t)type;
+ (id)searchableIndexQueryStringForComparisionPredicate:(id)predicate hasSuggestion:(BOOL)suggestion;
@end

@implementation EDSearchableIndexExpressionGenerator

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__EDSearchableIndexExpressionGenerator_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_25 != -1)
  {
    dispatch_once(&log_onceToken_25, block);
  }

  v2 = log_log_24;

  return v2;
}

void __43__EDSearchableIndexExpressionGenerator_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_24;
  log_log_24 = v1;
}

+ (id)expressionForPredicate:(id)predicate suggestion:(id)suggestion bundleID:(id)d nonSpotlightPredicates:(id *)predicates
{
  v34[2] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  suggestionCopy = suggestion;
  dCopy = d;
  v31 = 0;
  v11 = [predicateCopy ed_searchableIndexQueryStringForQueryWithSuggestion:suggestionCopy != 0 originalSearchString:&v31 nonSpotlightPredicates:predicates];
  v12 = *MEMORY[0x1E6963EA0];
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ = %@", *MEMORY[0x1E6963EA0], *MEMORY[0x1E6982DA8]];
  if (v31)
  {
    v14 = objc_alloc(MEMORY[0x1E696AEC0]);
    v15 = [v14 initWithFormat:@"%@ == '*'", *MEMORY[0x1E6964A30]];
    v16 = MEMORY[0x1E699AE78];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == 'com.apple.spotlight.events'", *MEMORY[0x1E6963D40]];
    v34[0] = v17;
    dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == '%@'", *MEMORY[0x1E6964230], dCopy];
    v34[1] = dCopy;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
    v20 = [v16 queryStringByJoiningQueries:v19 withOperand:1];

    v21 = MEMORY[0x1E699AE78];
    v33[0] = v13;
    v33[1] = v15;
    v33[2] = v20;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];
    v23 = [v21 queryStringByJoiningQueries:v22 withOperand:2];

    v13 = v23;
  }

  if (v11)
  {
    v24 = MEMORY[0x1E699AE78];
    v32[0] = v13;
    v32[1] = v11;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
    v26 = [v24 queryStringByJoiningQueries:v25 withOperand:1];
  }

  else
  {
    v26 = v13;
  }

  v27 = [MEMORY[0x1E699AE80] expressionWithQueryString:v26 searchString:v31 updatedSuggestion:suggestionCopy];

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

+ (id)searchableIndexQueryStringForComparisionPredicate:(id)predicate hasSuggestion:(BOOL)suggestion
{
  suggestionCopy = suggestion;
  v19[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  if (searchableIndexQueryStringForComparisionPredicate_hasSuggestion__onceToken != -1)
  {
    +[EDSearchableIndexExpressionGenerator searchableIndexQueryStringForComparisionPredicate:hasSuggestion:];
  }

  leftExpression = [predicateCopy leftExpression];
  keyPath = [leftExpression keyPath];

  if (suggestionCopy && ([self _keyPathIsSuggestable:keyPath] & 1) != 0)
  {
    v9 = 0;
  }

  else
  {
    predicateOperatorType = [predicateCopy predicateOperatorType];
    rightExpression = [predicateCopy rightExpression];
    constantValue = [rightExpression constantValue];

    if ([keyPath isEqualToString:*MEMORY[0x1E699A880]])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [constantValue timeIntervalSinceReferenceDate];
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"$time.absolute(%f)", v13];
        v19[0] = *MEMORY[0x1E6964D10];
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
        v9 = [self _queryWithAttributes:v15 matchingValue:v14 operatorType:predicateOperatorType];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v16 = [searchableIndexQueryStringForComparisionPredicate_hasSuggestion__spotlightAttributesForKeypath objectForKeyedSubscript:keyPath];
      if (v16)
      {
        v9 = [self _queryWithAttributes:v16 matchingValue:constantValue operatorType:predicateOperatorType];
      }

      else
      {
        v9 = 0;
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];

  return v9;
}

void __104__EDSearchableIndexExpressionGenerator_searchableIndexQueryStringForComparisionPredicate_hasSuggestion___block_invoke()
{
  v16[5] = *MEMORY[0x1E69E9840];
  v15[0] = *MEMORY[0x1E699A9B0];
  v0 = *MEMORY[0x1E69649F0];
  v14[0] = *MEMORY[0x1E69649F8];
  v14[1] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v16[0] = v1;
  v15[1] = *MEMORY[0x1E699A980];
  v2 = *MEMORY[0x1E6963D00];
  v13[0] = *MEMORY[0x1E6963D18];
  v13[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v16[1] = v3;
  v15[2] = *MEMORY[0x1E699A970];
  v12 = *MEMORY[0x1E6964B58];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  v16[2] = v4;
  v15[3] = *MEMORY[0x1E699A968];
  v11 = *MEMORY[0x1E6964BB0];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  v16[3] = v5;
  v15[4] = *MEMORY[0x1E699A920];
  v10 = *MEMORY[0x1E69645B0];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  v16[4] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:5];
  v8 = searchableIndexQueryStringForComparisionPredicate_hasSuggestion__spotlightAttributesForKeypath;
  searchableIndexQueryStringForComparisionPredicate_hasSuggestion__spotlightAttributesForKeypath = v7;

  v9 = *MEMORY[0x1E69E9840];
}

+ (id)queryStringByJoiningQueries:(id)queries withPredicateType:(unint64_t)type
{
  queriesCopy = queries;
  if ([queriesCopy count] > 1)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = [self _operandStringForCompoundPredicateType:type];
    v10 = [v8 stringWithFormat:@" %@ ", v9];

    v11 = MEMORY[0x1E696AEC0];
    firstObject2 = [queriesCopy componentsJoinedByString:v10];
    v13 = [v11 stringWithFormat:@"(%@)", firstObject2];
  }

  else
  {
    if (type)
    {
      firstObject = [queriesCopy firstObject];
      goto LABEL_7;
    }

    v10 = [self _operandStringForCompoundPredicateType:0];
    v14 = MEMORY[0x1E696AEC0];
    firstObject2 = [queriesCopy firstObject];
    v13 = [v14 stringWithFormat:@"%@(%@)", v10, firstObject2];
  }

  firstObject = v13;

LABEL_7:

  return firstObject;
}

+ (id)_operandStringForCompoundPredicateType:(unint64_t)type
{
  v3 = @"&&";
  if (type == 2)
  {
    v3 = @"||";
  }

  if (type)
  {
    return v3;
  }

  else
  {
    return @"!";
  }
}

+ (id)_queryWithAttributes:(id)attributes matchingValue:(id)value operatorType:(unint64_t)type
{
  attributesCopy = attributes;
  valueCopy = value;
  v10 = [self _comparisonOperationMatchingValue:valueCopy operatorType:type];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __88__EDSearchableIndexExpressionGenerator__queryWithAttributes_matchingValue_operatorType___block_invoke;
  v16[3] = &unk_1E8255B10;
  v11 = v10;
  v17 = v11;
  v12 = [attributesCopy ef_map:v16];
  if (type == 5)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  v14 = [MEMORY[0x1E699AE78] queryStringByJoiningQueries:v12 withOperand:v13];

  return v14;
}

id __88__EDSearchableIndexExpressionGenerator__queryWithAttributes_matchingValue_operatorType___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", a2, *(a1 + 32)];

  return v2;
}

+ (id)_comparisonOperationMatchingValue:(id)value operatorType:(unint64_t)type
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = 0;
      goto LABEL_27;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [valueCopy em_stringForQuotingWithCharacter:39];
  }

  else
  {
    [valueCopy stringValue];
  }
  v9 = ;
  if (type <= 3)
  {
    if (type > 1)
    {
      if (type == 2)
      {
        v8 = @"> %@";
      }

      else
      {
        v8 = @">= %@";
      }

      goto LABEL_25;
    }

    if (!type)
    {
      v8 = @"< %@";
      goto LABEL_25;
    }

    if (type == 1)
    {
      v8 = @"<= %@";
      goto LABEL_25;
    }

LABEL_30:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDSearchableIndexExpressionGenerator.m" lineNumber:286 description:@"unexpected operator type"];

    v10 = 0;
    goto LABEL_26;
  }

  if (type <= 7)
  {
    if (type == 4)
    {
      v8 = @"= '%@'cd";
      goto LABEL_25;
    }

    if (type == 5)
    {
      v8 = @"!= '%@'cd";
      goto LABEL_25;
    }

    goto LABEL_30;
  }

  v8 = @"= '%@*'cdwt";
  if (type == 8 || type == 99)
  {
    goto LABEL_25;
  }

  if (type != 9)
  {
    goto LABEL_30;
  }

  v8 = @"= '*%@'cdwt";
LABEL_25:
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:v8, v9];
LABEL_26:

LABEL_27:

  return v10;
}

+ (BOOL)_keyPathIsSuggestable:(id)suggestable
{
  suggestableCopy = suggestable;
  if (_keyPathIsSuggestable__onceToken != -1)
  {
    +[EDSearchableIndexExpressionGenerator _keyPathIsSuggestable:];
  }

  v4 = [_keyPathIsSuggestable__suggestableKeyPaths containsObject:suggestableCopy];

  return v4;
}

void __62__EDSearchableIndexExpressionGenerator__keyPathIsSuggestable___block_invoke()
{
  v0 = *MEMORY[0x1E699A9B8];
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E699A9B0], *MEMORY[0x1E699A9B8], *MEMORY[0x1E699A858], *MEMORY[0x1E699A818], *MEMORY[0x1E699A820], *MEMORY[0x1E699A980], *MEMORY[0x1E699A988], *MEMORY[0x1E699A970], *MEMORY[0x1E699A968], *MEMORY[0x1E699A880], 0}];
  v2 = _keyPathIsSuggestable__suggestableKeyPaths;
  _keyPathIsSuggestable__suggestableKeyPaths = v1;
}

@end