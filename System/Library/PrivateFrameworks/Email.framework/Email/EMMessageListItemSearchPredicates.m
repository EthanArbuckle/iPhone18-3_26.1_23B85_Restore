@interface EMMessageListItemSearchPredicates
+ (id)spotlightBodySearchPredicateForValue:(id)a3;
+ (id)spotlightQueryPredicateForString:(id)a3;
+ (id)spotlightRecipientSearchPredicateForValue:(id)a3 operator:(unint64_t)a4;
+ (id)spotlightSearchPredicateForValue:(id)a3;
+ (id)spotlightSenderSearchPredicateForValue:(id)a3 operator:(unint64_t)a4;
+ (id)spotlightSubjectSearchPredicateForValue:(id)a3 operator:(unint64_t)a4;
+ (id)spotlightUserQueryStringPredicateForValue:(id)a3;
@end

@implementation EMMessageListItemSearchPredicates

+ (id)spotlightSearchPredicateForValue:(id)a3
{
  v15[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E696AB28];
  v6 = [a1 spotlightRecipientSearchPredicateForValue:v4 operator:99];
  v7 = [a1 spotlightSenderSearchPredicateForValue:v4 operator:{99, v6}];
  v15[1] = v7;
  v8 = [a1 spotlightSubjectSearchPredicateForValue:v4 operator:99];
  v15[2] = v8;
  v9 = [a1 spotlightBodySearchPredicateForValue:v4];
  v15[3] = v9;
  v10 = [a1 spotlightUserQueryStringPredicateForValue:v4];
  v15[4] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:5];
  v12 = [v5 orPredicateWithSubpredicates:v11];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)spotlightRecipientSearchPredicateForValue:(id)a3 operator:(unint64_t)a4
{
  v36[6] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MEMORY[0x1E696AB18];
  v35 = v5;
  v7 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"toList.emailAddressValue.simpleAddress"];
  v8 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v5];
  v9 = [v6 predicateWithLeftExpression:v7 rightExpression:v8 modifier:2 type:a4 options:1];

  v10 = MEMORY[0x1E696AB18];
  v11 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"toList.emailAddressValue.displayName"];
  v12 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v35];
  v13 = [v10 predicateWithLeftExpression:v11 rightExpression:v12 modifier:2 type:a4 options:1];

  v14 = MEMORY[0x1E696AB18];
  v15 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"ccList.emailAddressValue.simpleAddress"];
  v16 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v35];
  v17 = [v14 predicateWithLeftExpression:v15 rightExpression:v16 modifier:2 type:a4 options:1];

  v18 = MEMORY[0x1E696AB18];
  v19 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"ccList.emailAddressValue.displayName"];
  v20 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v35];
  v21 = [v18 predicateWithLeftExpression:v19 rightExpression:v20 modifier:2 type:a4 options:1];

  v22 = MEMORY[0x1E696AB18];
  v23 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"bccList.emailAddressValue.simpleAddress"];
  v24 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v35];
  v25 = [v22 predicateWithLeftExpression:v23 rightExpression:v24 modifier:2 type:a4 options:1];

  v26 = MEMORY[0x1E696AB18];
  v27 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"bccList.emailAddressValue.displayName"];
  v28 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v35];
  v29 = [v26 predicateWithLeftExpression:v27 rightExpression:v28 modifier:2 type:a4 options:1];

  v30 = MEMORY[0x1E696AB28];
  v36[0] = v9;
  v36[1] = v13;
  v36[2] = v17;
  v36[3] = v21;
  v36[4] = v25;
  v36[5] = v29;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:6];
  v32 = [v30 orPredicateWithSubpredicates:v31];

  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

+ (id)spotlightSenderSearchPredicateForValue:(id)a3 operator:(unint64_t)a4
{
  v19[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MEMORY[0x1E696AB18];
  v7 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"senderList.emailAddressValue.simpleAddress"];
  v8 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v5];
  v9 = [v6 predicateWithLeftExpression:v7 rightExpression:v8 modifier:2 type:a4 options:1];

  v10 = MEMORY[0x1E696AB18];
  v11 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"senderList.emailAddressValue.displayName"];
  v12 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v5];
  v13 = [v10 predicateWithLeftExpression:v11 rightExpression:v12 modifier:2 type:a4 options:1];

  v14 = MEMORY[0x1E696AB28];
  v19[0] = v9;
  v19[1] = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v16 = [v14 orPredicateWithSubpredicates:v15];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)spotlightSubjectSearchPredicateForValue:(id)a3 operator:(unint64_t)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E696AB18];
  v7 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"subject.subjectWithoutPrefix"];
  v8 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v5];
  v9 = [v6 predicateWithLeftExpression:v7 rightExpression:v8 modifier:0 type:a4 options:1];

  return v9;
}

+ (id)spotlightBodySearchPredicateForValue:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"body"];
  v6 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v3];
  v7 = [v4 predicateWithLeftExpression:v5 rightExpression:v6 modifier:0 type:99 options:1];

  return v7;
}

+ (id)spotlightUserQueryStringPredicateForValue:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"Spotlight"];
  v6 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v3];
  v7 = [v4 predicateWithLeftExpression:v5 rightExpression:v6 modifier:0 type:99 options:0];

  return v7;
}

+ (id)spotlightQueryPredicateForString:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"SpotlightQuery"];
  v6 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v3];
  v7 = [v4 predicateWithLeftExpression:v5 rightExpression:v6 modifier:0 type:99 options:0];

  return v7;
}

@end