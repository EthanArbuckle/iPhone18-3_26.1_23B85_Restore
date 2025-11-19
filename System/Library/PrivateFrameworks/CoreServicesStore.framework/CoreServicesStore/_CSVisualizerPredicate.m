@interface _CSVisualizerPredicate
+ (id)constantValueForExpression:(id)a3;
+ (id)predicateWithFormatString:(id)a3 error:(id *)a4;
+ (id)translateNSPredicate:(id)a3 error:(id *)a4;
+ (void)getRanges:(void *)a3 matchingPredicate:(id)a4 inDescription:(id)a5;
- (BOOL)evaluateNumerically:(id)a3;
- (BOOL)evaluateWithObject:(id)a3 substitutionVariables:(id)a4;
- (BOOL)getRanges:(void *)a3 inDescription:(id)a4 options:(unint64_t)a5 limit:(unint64_t)a6 searchedInRange:(_NSRange *)a7;
- (_CSVisualizerPredicate)initWithExpression:(id)a3;
- (_CSVisualizerPredicate)initWithSearchString:(id)a3 forTitle:(id)a4 operator:(unint64_t)a5 error:(id *)a6;
- (id)debugDescription;
- (id)predicateFormat;
@end

@implementation _CSVisualizerPredicate

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(_CSVisualizerPredicate *)self predicateFormat];
  v6 = [v3 stringWithFormat:@"<%@ %p> { %@ }", v4, self, v5];

  return v6;
}

- (id)predicateFormat
{
  v3 = objc_autoreleasePoolPush();
  if (self->_title)
  {
    title = self->_title;
  }

  else
  {
    title = @"*";
  }

  v5 = [MEMORY[0x1E696ABC8] expressionForConstantValue:title];
  v6 = [MEMORY[0x1E696ABC8] expressionForConstantValue:self->_searchString];
  v7 = [objc_alloc(MEMORY[0x1E696AB18]) initWithLeftExpression:v5 rightExpression:v6 modifier:0 type:self->_operator options:0];
  v8 = [v7 predicateFormat];

  objc_autoreleasePoolPop(v3);

  return v8;
}

- (BOOL)evaluateWithObject:(id)a3 substitutionVariables:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    __p = 0;
    v8 = 0;
    v9 = 0;
    operator new();
  }

  v5 = *MEMORY[0x1E69E9840];
  return 0;
}

- (BOOL)getRanges:(void *)a3 inDescription:(id)a4 options:(unint64_t)a5 limit:(unint64_t)a6 searchedInRange:(_NSRange *)a7
{
  v37[2] = *MEMORY[0x1E69E9840];
  v12 = a4;
  context = objc_autoreleasePoolPush();
  v33 = self->_searchString;
  v13 = [v12 string];
  v14 = v13;
  title = self->_title;
  if (title)
  {
    v16 = [_CSVisualizer rangeOfValueForTitle:title inDescription:v12];
    v18 = v17;
    v35.location = v16;
    v35.length = v17;
    v19 = v16 != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v18 = [v13 length];
    v16 = 0;
    v35.location = 0;
    v35.length = v18;
    v19 = 1;
  }

  v31 = v19;
  if (a7)
  {
    *a7 = v35;
  }

  if (v14 && v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (self->_numericPredicate)
    {
      if ([(_CSVisualizerPredicate *)self evaluateNumerically:v12])
      {
        std::vector<_NSRange>::push_back[abi:nn200100](a3, &v35);
      }
    }

    else if ((self->_operator & 0xFFFFFFFFFFFFFFFELL) == 6)
    {
      if ([_CSVisualizerPredicate getRanges:inDescription:options:limit:searchedInRange:]::once != -1)
      {
        dispatch_once(&[_CSVisualizerPredicate getRanges:inDescription:options:limit:searchedInRange:]::once, &__block_literal_global_273);
      }

      if (self->_operator == 7)
      {
        v20 = &[_CSVisualizerPredicate getRanges:inDescription:options:limit:searchedInRange:]::likePredicate;
      }

      else
      {
        v20 = &[_CSVisualizerPredicate getRanges:inDescription:options:limit:searchedInRange:]::matchesPredicate;
      }

      v21 = *v20;
      v36[0] = @"HAYSTACK";
      v22 = [v14 substringWithRange:{v16, v18}];
      v36[1] = @"NEEDLE";
      v37[0] = v22;
      v37[1] = v33;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];

      if ([v21 evaluateWithObject:0 substitutionVariables:v23])
      {
        std::vector<_NSRange>::push_back[abi:nn200100](a3, &v35);
      }
    }

    else if (v18)
    {
      v24 = v18;
      v25 = v16;
      do
      {
        if (a6 <= (*(a3 + 1) - *a3) >> 4)
        {
          break;
        }

        v26 = [v14 rangeOfString:v33 options:a5 | 1 range:{v25, v24}];
        v28 = v27;
        *&v34 = v26;
        *(&v34 + 1) = v27;
        if (v26 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        std::vector<_NSRange>::push_back[abi:nn200100](a3, &v34);
        v25 = v28 + v26;
        if (v28 + v26 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v24 = v16 - v25 + v18;
      }

      while (v24);
    }
  }

  objc_autoreleasePoolPop(context);
  v29 = *MEMORY[0x1E69E9840];
  return v31;
}

- (BOOL)evaluateNumerically:(id)a3
{
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  title = self->_title;
  if (title)
  {
    v8 = [_CSVisualizer rangeOfValueForTitle:title inDescription:v4];
  }

  else
  {
    v7 = [v4 length];
    v8 = 0;
  }

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [v5 attributedSubstringFromRange:{v8, v7}];
    v11 = [v10 attribute:@"_CSVNum" atIndex:0 effectiveRange:0];
    if (!v11)
    {
      v17 = objc_alloc(MEMORY[0x1E696AE88]);
      v18 = [v10 string];
      v14 = [v17 initWithString:v18];

      [v14 setCaseSensitive:0];
      v24 = 0;
      v22 = 0uLL;
      v23 = 0;
      if ([v14 scanString:@"0x" intoString:0] && objc_msgSend(v14, "scanHexLongLong:", &v24))
      {
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v24];
      }

      else
      {
        if (([v14 scanDecimal:&v22] & 1) == 0)
        {
          v9 = 0;
          goto LABEL_8;
        }

        v20 = v22;
        v21 = v23;
        v19 = [MEMORY[0x1E696AB90] decimalNumberWithDecimal:&v20];
      }

      v11 = v19;

      if (!v11)
      {
        v9 = 0;
        goto LABEL_9;
      }
    }

    numericPredicate = self->_numericPredicate;
    v25 = @"HAYSTACK";
    v26[0] = v11;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v9 = [(NSPredicate *)numericPredicate evaluateWithObject:0 substitutionVariables:v13];

    v14 = v11;
LABEL_8:

LABEL_9:
    goto LABEL_10;
  }

  v9 = 0;
LABEL_10:

  v15 = *MEMORY[0x1E69E9840];
  return v9;
}

- (_CSVisualizerPredicate)initWithSearchString:(id)a3 forTitle:(id)a4 operator:(unint64_t)a5 error:(id *)a6
{
  v42[6] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v36.receiver = self;
  v36.super_class = _CSVisualizerPredicate;
  v12 = [(_CSVisualizerPredicate *)&v36 init];
  if (!v12)
  {
    v24 = MEMORY[0x1E696ABC0];
    v37[0] = *MEMORY[0x1E696A278];
    v37[1] = @"Line";
    v38[0] = @"mFulErr";
    v38[1] = &unk_1F37D7F58;
    v25 = *MEMORY[0x1E696A588];
    v38[2] = @"Failed to allocate NSPredicate instance.";
    v37[2] = v25;
    v37[3] = @"Operator";
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
    v38[3] = v26;
    v38[4] = v10;
    v37[4] = @"SearchString";
    v37[5] = @"Title";
    v38[5] = v11;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:6];
    v28 = [v24 errorWithDomain:*MEMORY[0x1E696A768] code:-41 userInfo:v27];
LABEL_8:
    v17 = v28;

    if (a6)
    {
      v29 = v17;
      v12 = 0;
      *a6 = v17;
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_11;
  }

  v13 = [v10 copy];
  searchString = v12->_searchString;
  v12->_searchString = v13;

  v15 = [v11 copy];
  title = v12->_title;
  v12->_title = v15;

  v17 = 0;
  v12->_operator = a5;
  if (a5 - 4 >= 6 && a5 != 99)
  {
    if (v11)
    {
      if ([objc_opt_class() operatorIsNumeric:a5])
      {
        v18 = [MEMORY[0x1E696AB90] decimalNumberWithString:v10];
        v19 = objc_alloc(MEMORY[0x1E696AB18]);
        v20 = [MEMORY[0x1E696ABC8] expressionForVariable:@"HAYSTACK"];
        v21 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v18];
        v22 = [v19 initWithLeftExpression:v20 rightExpression:v21 modifier:0 type:a5 options:0];
        numericPredicate = v12->_numericPredicate;
        v12->_numericPredicate = v22;

        v17 = 0;
        goto LABEL_11;
      }

      v34 = MEMORY[0x1E696ABC0];
      v41[0] = *MEMORY[0x1E696A278];
      v41[1] = @"Line";
      v42[0] = @"kCSStorePredicateErr";
      v42[1] = &unk_1F37D7F28;
      v35 = *MEMORY[0x1E696A588];
      v42[2] = @"Unsupported operator type.";
      v41[2] = v35;
      v41[3] = @"Operator";
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
      v42[3] = v26;
      v42[4] = v10;
      v41[4] = @"SearchString";
      v41[5] = @"Title";
      v42[5] = v11;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:6];
      v28 = [v34 errorWithDomain:*MEMORY[0x1E696A768] code:-9495 userInfo:v27];
    }

    else
    {

      v32 = MEMORY[0x1E696ABC0];
      v39[0] = *MEMORY[0x1E696A278];
      v39[1] = @"Line";
      v40[0] = @"kCSStorePredicateErr";
      v40[1] = &unk_1F37D7F40;
      v33 = *MEMORY[0x1E696A588];
      v40[2] = @"Unsupported operator type.";
      v39[2] = v33;
      v39[3] = @"Operator";
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
      v39[4] = @"SearchString";
      v40[3] = v26;
      v40[4] = v10;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:5];
      v28 = [v32 errorWithDomain:*MEMORY[0x1E696A768] code:-9495 userInfo:v27];
    }

    goto LABEL_8;
  }

LABEL_11:

  v30 = *MEMORY[0x1E69E9840];
  return v12;
}

- (_CSVisualizerPredicate)initWithExpression:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() constantValueForExpression:v4];
  if (v5)
  {
    v6 = [(_CSVisualizerPredicate *)self initWithSearchString:v5 operator:99 error:0];
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

+ (void)getRanges:(void *)a3 matchingPredicate:(id)a4 inDescription:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"CSPredicate.mm" lineNumber:373 description:{@"Invalid parameter not satisfying: %@", @"predicate != nil"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v21 = [MEMORY[0x1E696AAA8] currentHandler];
  [v21 handleFailureInMethod:a2 object:a1 file:@"CSPredicate.mm" lineNumber:374 description:{@"Invalid parameter not satisfying: %@", @"description != nil"}];

LABEL_3:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v9;
    v13 = v12;
    if (v12[4] != 5)
    {
      [v12 getRanges:a3 inDescription:v11 options:0 limit:-1 searchedInRange:0];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v9;
      if ([v14 compoundPredicateType])
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v15 = [v14 subpredicates];
        v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v16)
        {
          v17 = *v23;
          do
          {
            v18 = 0;
            do
            {
              if (*v23 != v17)
              {
                objc_enumerationMutation(v15);
              }

              [a1 getRanges:a3 matchingPredicate:*(*(&v22 + 1) + 8 * v18++) inDescription:v11];
            }

            while (v16 != v18);
            v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
          }

          while (v16);
        }
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

+ (id)predicateWithFormatString:(id)a3 error:(id *)a4
{
  v20[15] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:v6 argumentArray:MEMORY[0x1E695E0F0]];
  if (v8)
  {
    v18[0] = 0;
    v9 = [a1 translateNSPredicate:v8 error:v18];
    v10 = v18[0];

    if (v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = [MEMORY[0x1E696ABC8] expressionWithFormat:v6 argumentArray:MEMORY[0x1E695E0F0]];
  if (v11)
  {
    v9 = [[a1 alloc] initWithExpression:v11];
    if (!v9)
    {
      v12 = MEMORY[0x1E696ABC0];
      v19[0] = *MEMORY[0x1E696A278];
      v19[1] = @"Line";
      v20[0] = @"kCSStorePredicateErr";
      v20[1] = &unk_1F37D7EF8;
      v19[2] = *MEMORY[0x1E696A588];
      v19[3] = @"Expression";
      v20[2] = @"Could not translate generated expression to a form usable by CoreServicesStore.";
      v20[3] = v11;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];
      v14 = [v12 errorWithDomain:*MEMORY[0x1E696A768] code:-9495 userInfo:v13];

      v9 = 0;
      v10 = v14;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_10:
  objc_autoreleasePoolPop(v7);
  if (a4 && !v9)
  {
    v15 = v10;
    *a4 = v10;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)translateNSPredicate:(id)a3 error:(id *)a4
{
  v58 = *MEMORY[0x1E69E9840];
  v40 = a3;
  v39 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  v38 = [MEMORY[0x1E696AE18] predicateWithValue:0];
  if (([v40 isEqual:v39] & 1) != 0 || objc_msgSend(v40, "isEqual:", v38))
  {
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = v40;
    v12 = [v36 subpredicates];
    if ([v12 count] == 1)
    {
      v13 = [v36 compoundPredicateType];

      if (v13)
      {
        v14 = [v36 subpredicates];
        v15 = [v14 objectAtIndexedSubscript:0];
        v48 = 0;
        v5 = [a1 translateNSPredicate:v15 error:&v48];
        v6 = v48;
LABEL_35:

        v15 = v14;
        goto LABEL_36;
      }
    }

    else
    {
    }

    v15 = [MEMORY[0x1E695DF70] array];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v14 = [v36 subpredicates];
    v6 = 0;
    v25 = [v14 countByEnumeratingWithState:&v44 objects:v57 count:16];
    if (v25)
    {
      v26 = *v45;
      while (2)
      {
        v27 = 0;
        v28 = v6;
        do
        {
          if (*v45 != v26)
          {
            objc_enumerationMutation(v14);
          }

          v29 = *(*(&v44 + 1) + 8 * v27);
          v43 = v28;
          v30 = [a1 translateNSPredicate:v29 error:&v43];
          v6 = v43;

          if (!v30)
          {
            v5 = 0;
            goto LABEL_35;
          }

          [v15 addObject:v30];

          ++v27;
          v28 = v6;
        }

        while (v25 != v27);
        v25 = [v14 countByEnumeratingWithState:&v44 objects:v57 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }
    }

    if (!v15)
    {
      v5 = 0;
      goto LABEL_37;
    }

    v5 = [objc_alloc(MEMORY[0x1E696AB28]) initWithType:objc_msgSend(v36 subpredicates:{"compoundPredicateType"), v15}];
LABEL_36:

LABEL_37:
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v40;
    v17 = [v16 leftExpression];
    v18 = [a1 constantValueForExpression:v17];

    v19 = [v16 predicateOperatorType];
    v20 = [v16 rightExpression];
    v21 = [a1 constantValueForExpression:v20];

    if (v18)
    {
      if (v21)
      {
        if (![v16 comparisonPredicateModifier])
        {
          v23 = v18;
          v33 = v21;
          if ([v23 isEqualToString:@"*"])
          {
            v42 = 0;
            v34 = &v42;
            v35 = [[_CSVisualizerPredicate alloc] initWithSearchString:v33 operator:v19 error:&v42];
          }

          else
          {
            v41 = 0;
            v34 = &v41;
            v35 = [[_CSVisualizerPredicate alloc] initWithSearchString:v33 forTitle:v23 operator:v19 error:&v41];
          }

          v5 = v35;
          v6 = *v34;

          goto LABEL_41;
        }

        v22 = MEMORY[0x1E696ABC0];
        v51[0] = *MEMORY[0x1E696A278];
        v51[1] = @"Line";
        v52[0] = @"kCSStorePredicateErr";
        v52[1] = &unk_1F37D7EB0;
        v51[2] = *MEMORY[0x1E696A588];
        v51[3] = @"Predicate";
        v52[2] = @"Aggregate operations (ANY, ALL, etc.) are not supported.";
        v52[3] = v16;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:4];
        v24 = [v22 errorWithDomain:*MEMORY[0x1E696A768] code:-9495 userInfo:v23];
      }

      else
      {
        v32 = MEMORY[0x1E696ABC0];
        v53[0] = *MEMORY[0x1E696A278];
        v53[1] = @"Line";
        v54[0] = @"kCSStorePredicateErr";
        v54[1] = &unk_1F37D7E98;
        v53[2] = *MEMORY[0x1E696A588];
        v53[3] = @"Predicate";
        v54[2] = @"Unsupported expression type (right-hand side).";
        v54[3] = v16;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:4];
        v24 = [v32 errorWithDomain:*MEMORY[0x1E696A768] code:-9495 userInfo:v23];
      }
    }

    else
    {
      v31 = MEMORY[0x1E696ABC0];
      v55[0] = *MEMORY[0x1E696A278];
      v55[1] = @"Line";
      v56[0] = @"kCSStorePredicateErr";
      v56[1] = &unk_1F37D7E80;
      v55[2] = *MEMORY[0x1E696A588];
      v55[3] = @"Predicate";
      v56[2] = @"Unsupported expression type (left-hand side).";
      v56[3] = v16;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:4];
      v24 = [v31 errorWithDomain:*MEMORY[0x1E696A768] code:-9495 userInfo:v23];
    }

    v6 = v24;
    v5 = 0;
LABEL_41:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    v5 = 0;
    goto LABEL_4;
  }

LABEL_3:
  v5 = v40;
  v6 = 0;
LABEL_4:
  if (a4 && !v5)
  {
    if (!v6)
    {
      v7 = MEMORY[0x1E696ABC0];
      v49[0] = *MEMORY[0x1E696A278];
      v49[1] = @"Line";
      v50[0] = @"kCSStorePredicateErr";
      v50[1] = &unk_1F37D7EC8;
      v49[2] = *MEMORY[0x1E696A588];
      v49[3] = @"Predicate";
      v50[2] = @"Could not translate generated predicate to a form usable by CoreServicesStore.";
      v50[3] = v40;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:4];
      v6 = [v7 errorWithDomain:*MEMORY[0x1E696A768] code:-9495 userInfo:v8];
    }

    v9 = v6;
    *a4 = v6;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)constantValueForExpression:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_11;
  }

  if ([v3 expressionType])
  {
    if ([v4 expressionType] != 3)
    {
LABEL_11:
      v11 = 0;
      goto LABEL_14;
    }

    v5 = [v4 keyPath];
  }

  else
  {
    v5 = [v4 constantValue];
  }

  v6 = v5;
  if (!v5)
  {
    goto LABEL_11;
  }

  TypeID = CFBooleanGetTypeID();
  if (TypeID == CFGetTypeID(v6))
  {
    v8 = [v6 BOOLValue];
    v9 = @"false";
    if (v8)
    {
      v9 = @"true";
    }

    v10 = v9;
  }

  else
  {
    v10 = [v6 description];
  }

  v11 = v10;

LABEL_14:

  return v11;
}

@end