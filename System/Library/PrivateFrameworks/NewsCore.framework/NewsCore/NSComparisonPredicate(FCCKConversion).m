@interface NSComparisonPredicate(FCCKConversion)
- (id)_fcck_parseBasicOperatorFiltersWithTranslator:()FCCKConversion withError:;
- (id)_fcck_parseBeginsWithFiltersWithTranslator:()FCCKConversion withError:;
- (id)_fcck_parseBetweenFiltersWithTranslator:()FCCKConversion withError:;
- (id)_fcck_parseFullTextSearchFiltersWithTranslator:()FCCKConversion withError:;
- (id)_fcck_parseFullTextSearchUsingContainsTranslator:()FCCKConversion withError:;
- (id)_fcck_parseInFiltersWithTranslator:()FCCKConversion withError:;
- (id)_fcck_parseListContainsAllFiltersWithTranslator:()FCCKConversion withError:;
- (id)_fcck_parseListContainsAnyFiltersWithTranslator:()FCCKConversion withError:;
- (id)_fcck_parseListContainsFiltersWithTranslator:()FCCKConversion withError:;
- (id)fcck_queryFiltersWithTranslator:()FCCKConversion error:;
- (uint64_t)_comparisonOptionForString:()FCCKConversion;
@end

@implementation NSComparisonPredicate(FCCKConversion)

- (id)_fcck_parseListContainsFiltersWithTranslator:()FCCKConversion withError:
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 leftExpression];
  v6 = [a1 rightExpression];
  if ([a1 predicateOperatorType] != 10 || objc_msgSend(a1, "comparisonPredicateModifier") || objc_msgSend(v5, "expressionType") || objc_msgSend(v6, "expressionType") != 3)
  {
    if ([a1 predicateOperatorType] == 99 && !objc_msgSend(a1, "comparisonPredicateModifier") && objc_msgSend(v5, "expressionType") == 3 && !objc_msgSend(v6, "expressionType"))
    {
      v7 = objc_opt_new();
      v20 = [v5 CKExpressionValue];
      v21 = NTPBCKRecordFieldIdentifierForUserFieldName(v20);
      [v7 setFieldName:v21];

      [v7 setType:12];
      v22 = [v6 CKExpressionValue];
      v23 = [(FCCKProtocolTranslator *)v4 fieldValueFromObject:v22];
      [v7 setFieldValue:v23];

      v25 = v7;
      v12 = &v25;
    }

    else
    {
      if ([a1 predicateOperatorType] != 4 || objc_msgSend(a1, "comparisonPredicateModifier") != 2 || objc_msgSend(v5, "expressionType") != 3 || objc_msgSend(v6, "expressionType"))
      {
        v13 = 0;
        goto LABEL_15;
      }

      v7 = objc_opt_new();
      v16 = [v5 CKExpressionValue];
      v17 = NTPBCKRecordFieldIdentifierForUserFieldName(v16);
      [v7 setFieldName:v17];

      [v7 setType:12];
      v18 = [v6 CKExpressionValue];
      v19 = [(FCCKProtocolTranslator *)v4 fieldValueFromObject:v18];
      [v7 setFieldValue:v19];

      v24 = v7;
      v12 = &v24;
    }
  }

  else
  {
    v7 = objc_opt_new();
    v8 = [v6 CKExpressionValue];
    v9 = NTPBCKRecordFieldIdentifierForUserFieldName(v8);
    [v7 setFieldName:v9];

    [v7 setType:12];
    v10 = [v5 CKExpressionValue];
    v11 = [(FCCKProtocolTranslator *)v4 fieldValueFromObject:v10];
    [v7 setFieldValue:v11];

    v26 = v7;
    v12 = &v26;
  }

  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:{1, v24, v25, v26, v27}];

LABEL_15:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_fcck_parseInFiltersWithTranslator:()FCCKConversion withError:
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 leftExpression];
  v6 = [a1 rightExpression];
  v7 = [v5 expressionType];
  v8 = [v6 expressionType];
  if ([a1 predicateOperatorType] == 10 && !objc_msgSend(a1, "comparisonPredicateModifier") && v7 == 3 && (v8 == 14 || !v8))
  {
    v9 = objc_opt_new();
    v10 = [v5 CKExpressionValue];
    v11 = NTPBCKRecordFieldIdentifierForUserFieldName(v10);
    [v9 setFieldName:v11];

    [v9 setType:3];
    v12 = [v6 CKExpressionValue];
    v13 = FCCKNSArrayFromCollection(v12);
    v14 = [(FCCKProtocolTranslator *)v4 fieldValueFromObject:v13];
    [v9 setFieldValue:v14];

    v33 = v9;
    v15 = &v33;
  }

  else if ([a1 predicateOperatorType] == 4 && objc_msgSend(a1, "comparisonPredicateModifier") == 2 && (v7 != 14 ? (v16 = v7 == 0) : (v16 = 1), v16 && v8 == 3))
  {
    v9 = objc_opt_new();
    v17 = [v6 CKExpressionValue];
    v18 = NTPBCKRecordFieldIdentifierForUserFieldName(v17);
    [v9 setFieldName:v18];

    [v9 setType:3];
    v19 = [v5 CKExpressionValue];
    v20 = FCCKNSArrayFromCollection(v19);
    v21 = [(FCCKProtocolTranslator *)v4 fieldValueFromObject:v20];
    [v9 setFieldValue:v21];

    v32 = v9;
    v15 = &v32;
  }

  else
  {
    if ([a1 predicateOperatorType] != 99 || objc_msgSend(a1, "comparisonPredicateModifier"))
    {
      v22 = 0;
      goto LABEL_27;
    }

    v22 = 0;
    v23 = v7 == 14 || v7 == 0;
    if (!v23 || v8 != 3)
    {
      goto LABEL_27;
    }

    v9 = objc_opt_new();
    v24 = [v6 CKExpressionValue];
    v25 = NTPBCKRecordFieldIdentifierForUserFieldName(v24);
    [v9 setFieldName:v25];

    [v9 setType:3];
    v26 = [v5 CKExpressionValue];
    v27 = FCCKNSArrayFromCollection(v26);
    v28 = [(FCCKProtocolTranslator *)v4 fieldValueFromObject:v27];
    [v9 setFieldValue:v28];

    v31 = v9;
    v15 = &v31;
  }

  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:{1, v31, v32, v33, v34}];

LABEL_27:
  v29 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)_fcck_parseListContainsAnyFiltersWithTranslator:()FCCKConversion withError:
{
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 leftExpression];
  v6 = [a1 rightExpression];
  v7 = [v5 expressionType];
  v8 = [v6 expressionType];
  if ([a1 predicateOperatorType] == 10 && objc_msgSend(a1, "comparisonPredicateModifier") == 2 && v7 == 3 && (v8 == 14 || !v8))
  {
    v9 = objc_opt_new();
    v10 = [v5 CKExpressionValue];
    v11 = NTPBCKRecordFieldIdentifierForUserFieldName(v10);
    [v9 setFieldName:v11];

    [v9 setType:14];
    v12 = [v6 CKExpressionValue];
    v13 = FCCKNSArrayFromCollection(v12);
    v14 = [(FCCKProtocolTranslator *)v4 fieldValueFromObject:v13];
    [v9 setFieldValue:v14];

    v26[0] = v9;
    v15 = v26;
LABEL_16:
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

    goto LABEL_18;
  }

  if ([a1 predicateOperatorType] == 10 && objc_msgSend(a1, "comparisonPredicateModifier") == 2)
  {
    v16 = 0;
    v17 = v7 == 14 || v7 == 0;
    if (!v17 || v8 != 3)
    {
      goto LABEL_18;
    }

    v9 = objc_opt_new();
    v18 = [v6 CKExpressionValue];
    v19 = NTPBCKRecordFieldIdentifierForUserFieldName(v18);
    [v9 setFieldName:v19];

    [v9 setType:14];
    v20 = [v5 CKExpressionValue];
    v21 = FCCKNSArrayFromCollection(v20);
    v22 = [(FCCKProtocolTranslator *)v4 fieldValueFromObject:v21];
    [v9 setFieldValue:v22];

    v25 = v9;
    v15 = &v25;
    goto LABEL_16;
  }

  v16 = 0;
LABEL_18:

  v23 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)_fcck_parseListContainsAllFiltersWithTranslator:()FCCKConversion withError:
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 leftExpression];
  v6 = [a1 rightExpression];
  v7 = [v5 expressionType];
  v8 = [v6 expressionType];
  if ([a1 predicateOperatorType] == 10 && objc_msgSend(a1, "comparisonPredicateModifier") == 1)
  {
    v9 = 0;
    v10 = v7 == 14 || v7 == 0;
    if (v10 && v8 == 3)
    {
      v11 = objc_opt_new();
      v12 = [v6 CKExpressionValue];
      v13 = NTPBCKRecordFieldIdentifierForUserFieldName(v12);
      [v11 setFieldName:v13];

      [v11 setType:20];
      v14 = [v5 CKExpressionValue];
      v15 = FCCKNSArrayFromCollection(v14);
      v16 = [(FCCKProtocolTranslator *)v4 fieldValueFromObject:v15];
      [v11 setFieldValue:v16];

      v19[0] = v11;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    }
  }

  else
  {
    v9 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_fcck_parseBeginsWithFiltersWithTranslator:()FCCKConversion withError:
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 leftExpression];
  v8 = [a1 rightExpression];
  if ([a1 predicateOperatorType] != 8 || objc_msgSend(v7, "expressionType") != 3 || objc_msgSend(v8, "expressionType"))
  {
    v9 = 0;
    goto LABEL_5;
  }

  v12 = [v8 CKExpressionValue];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        [MEMORY[0x1E695B978] errorWithCode:1009 format:{@"Expected NSString or NSData on right hand side: %@", a1}];
        *a4 = v9 = 0;
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_19;
    }
  }

  v13 = objc_opt_new();
  v14 = [v7 CKExpressionValue];
  v15 = NTPBCKRecordFieldIdentifierForUserFieldName(v14);
  [v13 setFieldName:v15];

  v16 = [(FCCKProtocolTranslator *)v6 fieldValueFromObject:v12];
  [v13 setFieldValue:v16];

  if ([a1 comparisonPredicateModifier])
  {
    if ([a1 comparisonPredicateModifier] != 2)
    {
      v9 = 0;
      goto LABEL_18;
    }

    v17 = 18;
  }

  else
  {
    v17 = 16;
  }

  [v13 setType:v17];
  v18[0] = v13;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
LABEL_18:

LABEL_19:
LABEL_5:

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_fcck_parseBetweenFiltersWithTranslator:()FCCKConversion withError:
{
  v28[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 leftExpression];
  v8 = [a1 rightExpression];
  if ([a1 predicateOperatorType] == 100 && !objc_msgSend(a1, "comparisonPredicateModifier") && objc_msgSend(v7, "expressionType") == 3 && objc_msgSend(v8, "expressionType") == 14)
  {
    v9 = [v8 constantValue];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 count] == 2)
    {
      v10 = [v9 objectAtIndexedSubscript:0];
      v11 = [v10 CKExpressionValue];

      v12 = [v9 objectAtIndexedSubscript:1];
      v13 = [v12 CKExpressionValue];

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v14 = objc_opt_new();
        v27 = objc_opt_new();
        v15 = [v7 CKExpressionValue];
        NTPBCKRecordFieldIdentifierForUserFieldName(v15);
        v17 = v16 = v11;
        [v14 setFieldName:v17];

        v11 = v16;
        v18 = [(FCCKProtocolTranslator *)v6 fieldValueFromObject:v16];
        [v14 setFieldValue:v18];

        [v14 setType:8];
        v19 = [v14 fieldName];
        [v27 setFieldName:v19];

        v20 = [(FCCKProtocolTranslator *)v6 fieldValueFromObject:v13];
        [v27 setFieldValue:v20];

        [v27 setType:6];
        v28[0] = v14;
        v28[1] = v27;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
      }

      else if (a4)
      {
        [MEMORY[0x1E695B978] errorWithCode:1009 format:{@"Expected array with two number arguments on right hand side: %@", a1}];
        *a4 = v21 = 0;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      if (a4)
      {
        v24 = MEMORY[0x1E695B978];
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        *a4 = [v24 errorWithCode:1009 format:{@"Expected array with two number arguments on right hand side, but got %@: %@", v26, a1}];
      }

      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (uint64_t)_comparisonOptionForString:()FCCKConversion
{
  v3 = a3;
  if ([v3 rangeOfString:@"n"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v3, "rangeOfString:", @"N") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [v3 rangeOfString:@"c"] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v3, "rangeOfString:", @"C") != 0x7FFFFFFFFFFFFFFFLL;
    if ([v3 rangeOfString:@"d"] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v3, "rangeOfString:", @"D") != 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 |= 2uLL;
    }

    if ([v3 rangeOfString:@"l"] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v3, "rangeOfString:", @"L") != 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 |= 8uLL;
    }
  }

  else
  {
    v4 = 4;
  }

  return v4;
}

- (id)_fcck_parseFullTextSearchUsingContainsTranslator:()FCCKConversion withError:
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 leftExpression];
  v6 = [a1 rightExpression];
  if ([a1 predicateOperatorType] == 99 && objc_msgSend(v5, "expressionType") == 1 && !objc_msgSend(v6, "expressionType"))
  {
    v10 = objc_opt_new();
    if ([a1 comparisonPredicateModifier] == 1)
    {
      v11 = 10;
    }

    else
    {
      v11 = 11;
    }

    [v10 setType:v11];
    v12 = [v6 constantValue];
    v13 = [(FCCKProtocolTranslator *)v4 fieldValueFromObject:v12];
    [v10 setFieldValue:v13];

    v14[0] = v10;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_fcck_parseFullTextSearchFiltersWithTranslator:()FCCKConversion withError:
{
  v44[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 leftExpression];
  v8 = [a1 rightExpression];
  if ([v7 expressionType] != 3 || (objc_msgSend(v7, "keyPath"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", @"allTokens"), v9, v11 = v7, v12 = v8, (v10 & 1) == 0))
  {
    if ([v8 expressionType] != 3 || (objc_msgSend(v8, "keyPath"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", @"allTokens"), v13, v11 = v8, v12 = v7, !v14))
    {
      v29 = 0;
      goto LABEL_59;
    }
  }

  v15 = v11;
  v16 = v12;
  v17 = objc_opt_new();
  v18 = [v16 expressionType];
  if (!v18)
  {
    v42 = v6;
    v27 = [v16 constantValue];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        *a4 = [MEMORY[0x1E695B978] errorWithCode:1009 format:{@"Required string or tokenize() arguments when comparing to special key-path allTokens: %@", a1}];
      }

      v29 = 0;
      v6 = v42;
      goto LABEL_58;
    }

    v41 = v15;
    v28 = [v16 constantValue];
    v30 = [(FCCKProtocolTranslator *)v42 fieldValueFromObject:v28];
    [v17 setFieldValue:v30];

LABEL_17:
    v15 = v41;
    if ([a1 comparisonPredicateModifier] == 1 && v41 == v7)
    {
      v6 = v42;
      if (a4)
      {
        [MEMORY[0x1E695B978] errorWithCode:1009 format:{@"Enumerating special key-path allTokens is not allowed: %@", a1}];
        goto LABEL_14;
      }

LABEL_57:
      v29 = 0;
      goto LABEL_58;
    }

    v6 = v42;
    if ([a1 predicateOperatorType] == 1000)
    {
      if (!v18 && (([a1 options] & 4) != 0 || (objc_msgSend(a1, "options") & 1) == 0 || (objc_msgSend(a1, "options") & 2) == 0 || (objc_msgSend(a1, "options") & 8) == 0))
      {
        if (a4)
        {
          [MEMORY[0x1E695B978] errorWithCode:1009 format:{@"Required NSCaseInsensitivePredicateOption, NSDiacriticInsensitivePredicateOption, and NSLocaleSensitivePredicateOption comparison predicate options: %@", a1}];
          goto LABEL_14;
        }

        goto LABEL_57;
      }

      if ([a1 comparisonPredicateModifier] == 1)
      {
        v31 = 10;
      }

      else
      {
        v31 = 11;
      }

      [v17 setType:v31];
      v44[0] = v17;
      v32 = MEMORY[0x1E695DEC8];
      v33 = v44;
    }

    else
    {
      if ([a1 predicateOperatorType] != 10)
      {
        if (a4)
        {
          [MEMORY[0x1E695B978] errorWithCode:1009 format:{@"Required comparison operators TOKENMATCHES or IN when searching special key-path allTokens: %@", a1}];
          goto LABEL_14;
        }

        goto LABEL_57;
      }

      if ([a1 comparisonPredicateModifier] == 2)
      {
        v34 = 11;
      }

      else
      {
        if ([a1 comparisonPredicateModifier] != 1)
        {
          if (a4)
          {
            [MEMORY[0x1E695B978] errorWithCode:1009 format:{@"Required predicate modifier ANY or ALL when searching special key-path allTokens: %@", a1}];
            goto LABEL_14;
          }

          goto LABEL_57;
        }

        v34 = 10;
      }

      [v17 setType:v34];
      if (![v16 expressionType])
      {
        if (a4)
        {
          [MEMORY[0x1E695B978] errorWithCode:1009 format:{@"Required tokenize() operand when searching special key-path allTokens: %@", a1}];
          goto LABEL_14;
        }

        goto LABEL_57;
      }

      v43 = v17;
      v32 = MEMORY[0x1E695DEC8];
      v33 = &v43;
    }

    v29 = [v32 arrayWithObjects:v33 count:1];
    goto LABEL_58;
  }

  if ([v16 expressionType] == 4)
  {
    [v16 function];
    v19 = v41 = v15;
    v20 = [v19 isEqualToString:@"tokenize:using:"];

    v15 = v41;
    if (v20)
    {
      v40 = v17;
      v42 = v6;
      v21 = [v16 arguments];
      v22 = [v21 objectAtIndexedSubscript:1];
      v23 = [v22 constantValue];
      v24 = [a1 _comparisonOptionForString:v23];

      if ((v24 & 0xF) == 0xBLL)
      {
        v25 = [v16 arguments];
        v26 = [v25 objectAtIndexedSubscript:0];
        v27 = [v26 constantValue];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = [(FCCKProtocolTranslator *)v42 fieldValueFromObject:v27];
          v17 = v40;
          [v40 setFieldValue:v28];
          goto LABEL_17;
        }

        if (a4)
        {
          v35 = MEMORY[0x1E695B978];
          v36 = objc_opt_class();
          v37 = NSStringFromClass(v36);
          *a4 = [v35 errorWithCode:1009 format:{@"Required string argument when using tokenize(), but got %@: %@", v37, a1}];
        }

        v29 = 0;
        v15 = v41;
        v6 = v42;
      }

      else
      {
        v15 = v41;
        v6 = v42;
        if (a4)
        {
          [MEMORY[0x1E695B978] errorWithCode:1009 format:{@"Required NSCaseInsensitivePredicateOption, NSDiacriticInsensitivePredicateOption, and NSLocaleSensitivePredicateOption tokenization options on tokenize() function: %@", a1}];
          *a4 = v29 = 0;
        }

        else
        {
          v29 = 0;
        }
      }

      v17 = v40;
      goto LABEL_58;
    }
  }

  if (!a4)
  {
    goto LABEL_57;
  }

  [MEMORY[0x1E695B978] errorWithCode:1009 format:{@"Required string or tokenize() arguments when searching special key-path allTokens: %@", a1}];
LABEL_14:
  *a4 = v29 = 0;
LABEL_58:

LABEL_59:
  v38 = *MEMORY[0x1E69E9840];

  return v29;
}

- (id)_fcck_parseBasicOperatorFiltersWithTranslator:()FCCKConversion withError:
{
  v34[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 leftExpression];
  v8 = [a1 rightExpression];
  if ([a1 predicateOperatorType] > 5)
  {
    v11 = 0;
LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  if ([v7 expressionType] == 3 || objc_msgSend(v7, "expressionType") == 1)
  {
    v9 = 0;
    v10 = v7;
LABEL_5:
    v11 = [v10 CKExpressionValue];
    goto LABEL_6;
  }

  if ([v8 expressionType] == 3 || objc_msgSend(v8, "expressionType") == 1)
  {
    v9 = 1;
    v10 = v8;
    goto LABEL_5;
  }

  v11 = 0;
  v9 = 0;
LABEL_6:
  if (![v7 expressionType])
  {
    v19 = v7;
LABEL_21:
    v16 = [v19 CKExpressionValue];
    goto LABEL_22;
  }

  if (![v8 expressionType])
  {
    v19 = v8;
    goto LABEL_21;
  }

  if ([v7 expressionType] != 4 || (objc_msgSend(v7, "function"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", @"now"), v12, !v13))
  {
    if ([v8 expressionType] != 4 || (objc_msgSend(v8, "function"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", @"now"), v14, !v15))
    {
      v17 = 0;
      if (v11)
      {
        goto LABEL_23;
      }

LABEL_36:
      if (a4)
      {
        v22 = [MEMORY[0x1E695B978] errorWithCode:1009 format:{@"Expected key-path in comparison expression: %@", a1}];
        v11 = 0;
        goto LABEL_42;
      }

      v11 = 0;
LABEL_15:
      v18 = 0;
      goto LABEL_43;
    }
  }

  v16 = [MEMORY[0x1E695DF00] date];
LABEL_22:
  v17 = v16;
  if (!v11)
  {
    goto LABEL_36;
  }

LABEL_23:
  v20 = [v11 isEqualToString:*MEMORY[0x1E695B7F8]];
  v21 = v20;
  if (!v17 && (v20 & 1) == 0)
  {
    if (a4)
    {
      v22 = [MEMORY[0x1E695B978] errorWithCode:1009 format:{@"Expected constant value in comparison expression: %@", a1}];
      v17 = 0;
LABEL_42:
      v18 = 0;
      *a4 = v22;
      goto LABEL_43;
    }

    goto LABEL_14;
  }

  v23 = [a1 predicateOperatorType];
  v24 = v23;
  if (v23 < 4)
  {
    v25 = v9;
  }

  else
  {
    v25 = 0;
  }

  if (v25 == 1)
  {
    v24 = qword_1B681A8D8[v23];
  }

  if ([a1 comparisonPredicateModifier] == 1)
  {
    if (!a4)
    {
      goto LABEL_15;
    }

    [MEMORY[0x1E695B978] errorWithCode:1009 format:{@"Aggregate operator ALL not allowed for comparison expression: %@", a1}];
    v22 = LABEL_41:;
    goto LABEL_42;
  }

  if ([a1 comparisonPredicateModifier] == 2)
  {
    if (!a4)
    {
      goto LABEL_15;
    }

    [MEMORY[0x1E695B978] errorWithCode:1009 format:{@"Aggregate operator ANY not allowed for comparison expression: %@", a1}];
    goto LABEL_41;
  }

  if (!CKValueIsAcceptablePredicateClass() && (v17 != 0) | (v21 ^ 1) & 1)
  {
    if (a4)
    {
      v28 = MEMORY[0x1E695B978];
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *a4 = [v28 errorWithCode:1009 format:{@"Type '%@' not allowed in comparison expression: %@", v30, a1}];
    }

    goto LABEL_15;
  }

  v31 = objc_opt_new();
  v32 = NTPBCKRecordFieldIdentifierForUserFieldName(v11);
  [v31 setFieldName:v32];

  [v31 setType:NTPBCKQueryFilterTypeForNSPredicateOperatorType(v24)];
  v33 = [(FCCKProtocolTranslator *)v6 fieldValueFromObject:v17];
  [v31 setFieldValue:v33];

  v34[0] = v31;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];

LABEL_43:
  v26 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)fcck_queryFiltersWithTranslator:()FCCKConversion error:
{
  v6 = a3;
  v32 = 0;
  v7 = [a1 _fcck_parseFullTextSearchUsingContainsTranslator:v6 withError:&v32];
  v8 = v32;
  v9 = v8;
  if (v7)
  {
    v10 = v7;
    goto LABEL_13;
  }

  v31 = v8;
  v11 = [a1 _fcck_parseFullTextSearchFiltersWithTranslator:v6 withError:&v31];
  v12 = v31;

  if (v11)
  {
    v13 = v11;
LABEL_5:
    v10 = v13;
LABEL_12:
    v9 = v12;
    goto LABEL_13;
  }

  if (v12)
  {
LABEL_9:
    v10 = 0;
    if (a4 && v12)
    {
      v14 = v12;
      v10 = 0;
      *a4 = v12;
    }

    goto LABEL_12;
  }

  if ([a1 options])
  {
    v12 = [MEMORY[0x1E695B978] errorWithCode:1009 format:{@"Predicate comparison options are not supported for expression: %@", a1}];
    goto LABEL_9;
  }

  v30 = 0;
  v16 = [a1 _fcck_parseListContainsFiltersWithTranslator:v6 withError:&v30];
  v17 = v30;
  v12 = v17;
  if (v16)
  {
    goto LABEL_17;
  }

  if (v17)
  {
    goto LABEL_9;
  }

  v29 = 0;
  v16 = [a1 _fcck_parseInFiltersWithTranslator:v6 withError:&v29];
  v18 = v29;
  v12 = v18;
  if (v16)
  {
    goto LABEL_17;
  }

  if (v18)
  {
    goto LABEL_9;
  }

  v28 = 0;
  v16 = [a1 _fcck_parseListContainsAnyFiltersWithTranslator:v6 withError:&v28];
  v19 = v28;
  v12 = v19;
  if (v16)
  {
    goto LABEL_17;
  }

  if (v19)
  {
    goto LABEL_9;
  }

  v27 = 0;
  v16 = [a1 _fcck_parseListContainsAllFiltersWithTranslator:v6 withError:&v27];
  v20 = v27;
  v12 = v20;
  if (v16)
  {
    goto LABEL_17;
  }

  if (v20)
  {
    goto LABEL_9;
  }

  v26 = 0;
  v16 = [a1 _fcck_parseBeginsWithFiltersWithTranslator:v6 withError:&v26];
  v21 = v26;
  v12 = v21;
  if (v16)
  {
    goto LABEL_17;
  }

  if (v21)
  {
    goto LABEL_9;
  }

  v25 = 0;
  v16 = [a1 _fcck_parseBetweenFiltersWithTranslator:v6 withError:&v25];
  v22 = v25;
  v12 = v22;
  if (v16)
  {
    goto LABEL_17;
  }

  if (v22)
  {
    goto LABEL_9;
  }

  v24 = 0;
  v16 = [a1 _fcck_parseBasicOperatorFiltersWithTranslator:v6 withError:&v24];
  v23 = v24;
  v12 = v23;
  if (v16)
  {
LABEL_17:
    v13 = v16;
    goto LABEL_5;
  }

  if (v23)
  {
    goto LABEL_9;
  }

  if (a4)
  {
    [MEMORY[0x1E695B978] errorWithCode:1009 format:{@"Unexpected expression: %@", a1}];
    v10 = 0;
    *a4 = v9 = 0;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

LABEL_13:

  return v10;
}

@end