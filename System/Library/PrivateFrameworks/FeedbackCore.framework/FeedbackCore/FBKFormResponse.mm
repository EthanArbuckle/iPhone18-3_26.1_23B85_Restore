@interface FBKFormResponse
- (BOOL)collectsFiles;
- (BOOL)evaluateConditional:(id)a3;
- (BOOL)isAnswerExpectedForQuestion:(id)a3;
- (BOOL)isCompleted;
- (FBKAnswer)issueTypeAnswer;
- (FBKAnswer)problemDescriptionAnswer;
- (FBKAnswer)titleAnswer;
- (NSNumber)followupCount;
- (NSString)issueType;
- (NSString)platform;
- (NSString)problemDescription;
- (NSString)title;
- (id)allFileMatchers;
- (id)answerForQuestion:(id)a3;
- (id)answerForQuestionID:(id)a3;
- (id)answersDictionary;
- (id)fileMatchers;
- (id)findAnswerForRole:(id)a3;
- (id)formPlatform;
- (id)matcherPredicates;
- (id)valueForQuestionID:(id)a3;
- (id)valuesForQuestionID:(id)a3;
- (void)prepareForDeletion;
- (void)setPropertiesFromJSONObject:(id)a3;
- (void)setValue:(id)a3 forQuestionID:(id)a4;
- (void)updateExtractedValuesFromAnswers;
@end

@implementation FBKFormResponse

- (void)setPropertiesFromJSONObject:(id)a3
{
  v83 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(FBKFormResponse *)self setRemote:1];
  v5 = [v4 objectForKeyedSubscript:@"created_at"];
  v6 = FBKNilIfNSNull(v5);

  if (v6)
  {
    v7 = FBKDateFromServerString(v6);
    [(FBKFormResponse *)self setCreatedAt:v7];
  }

  else
  {
    [(FBKFormResponse *)self setCreatedAt:0];
  }

  v8 = [v4 objectForKeyedSubscript:@"updated_at"];
  v9 = FBKNilIfNSNull(v8);

  if (v9)
  {
    v10 = FBKDateFromServerString(v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v4 objectForKeyedSubscript:@"for_build"];
  v12 = FBKNilIfNSNull(v11);

  if (v12)
  {
    [(FBKFormResponse *)self setBuildString:v12];
  }

  v76 = v12;
  v13 = [v4 objectForKeyedSubscript:@"form_id"];
  v14 = FBKNilIfNSNull(v13);
  [(FBKFormResponse *)self setFormID:v14];

  v15 = [v4 objectForKeyedSubscript:@"answers"];

  v72 = v10;
  if (!v15)
  {
    v32 = [(FBKFormResponse *)self updatedAt];
    v33 = v32;
    if (v32 && v10)
    {
      v34 = [(FBKFormResponse *)self answers];
      v35 = [v34 count];

      if (v35)
      {
        v36 = [(FBKFormResponse *)self updatedAt];
        v37 = [v10 compare:v36];
        v38 = [(FBKFormResponse *)self isStub];
        if (v37 == 1)
        {
          v39 = 1;
        }

        else
        {
          v39 = v38;
        }

        [(FBKFormResponse *)self setIsStub:v39];

        goto LABEL_29;
      }
    }

    else
    {
    }

    [(FBKFormResponse *)self setIsStub:1];
    goto LABEL_29;
  }

  v16 = [v4 objectForKeyedSubscript:@"form_id"];

  if (v16)
  {
    v17 = MEMORY[0x1E696AD98];
    v18 = [v4 objectForKeyedSubscript:@"form_id"];
    v19 = [v17 numberWithInteger:{objc_msgSend(v18, "integerValue")}];

    v20 = [(FBKFormResponse *)self managedObjectContext];
    v16 = [v20 feedbackObjectWithEntityName:@"BugForm" remoteID:v19 creatingIfNeeded:0];
  }

  v21 = [v4 objectForKeyedSubscript:{@"answers", v9, v6}];
  v22 = [(FBKFormResponse *)self managedObjectContext];
  v23 = [(FBKManagedFeedbackObject *)FBKAnswer importFromJSONArray:v21 intoContext:v22];
  [(FBKFormResponse *)self setAnswers:v23];

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v24 = [(FBKFormResponse *)self answers];
  v25 = [v24 countByEnumeratingWithState:&v78 objects:v82 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v79;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v79 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v78 + 1) + 8 * i);
        v30 = [v29 questionID];
        v31 = [v16 questionForQuestionID:v30];
        [v29 setQuestion:v31];
      }

      v26 = [v24 countByEnumeratingWithState:&v78 objects:v82 count:16];
    }

    while (v26);
  }

  [(FBKFormResponse *)self setIsStub:0];
  v9 = v70;
  v6 = v71;
  v10 = v72;
LABEL_29:
  [(FBKFormResponse *)self setUpdatedAt:v10];
  v40 = [v4 objectForKeyedSubscript:@"short_description"];

  if (v40)
  {
    v41 = [v4 objectForKeyedSubscript:@"short_description"];
    v42 = [MEMORY[0x1E695DFB0] null];

    if (v41 == v42)
    {
      v43 = &stru_1F5F14EC0;
    }

    else
    {
      v43 = [v4 objectForKeyedSubscript:@"short_description"];
    }

    [(FBKFormResponse *)self setExtractedProblemDescription:v43];
  }

  v44 = [v4 objectForKeyedSubscript:@"title"];
  v45 = FBKNilIfNSNull(v44);

  if (v45)
  {
    [(FBKFormResponse *)self setExtractedTitle:v45];
  }

  v46 = [v4 objectForKeyedSubscript:@"feedback_ident"];
  v47 = FBKNilIfNSNull(v46);

  if (v47)
  {
    [(FBKFormResponse *)self setFeedbackID:v47];
  }

  v48 = [v4 objectForKeyedSubscript:@"answers_complete"];
  v49 = FBKNilIfNSNull(v48);

  v77 = v49;
  if (v49 && [v49 BOOLValue])
  {
    [(FBKFormResponse *)self setCompleted:1];
  }

  v75 = v45;
  v50 = [v4 objectForKeyedSubscript:@"area_type"];
  v51 = v50;
  if (v50)
  {
    v52 = FBKNilIfNSNull(v50);
    [(FBKFormResponse *)self setExtractedIssueType:v52];
  }

  v73 = v51;
  v53 = [v4 objectForKeyedSubscript:@"followup_count"];
  if (v53)
  {
    v54 = [MEMORY[0x1E695DFB0] null];

    if (v53 != v54)
    {
      v55 = [(FBKFormResponse *)self extractedFollowupCount];
      if (!v55 || (v56 = v55, -[FBKFormResponse extractedFollowupCount](self, "extractedFollowupCount"), v57 = objc_claimAutoreleasedReturnValue(), v58 = [v57 compare:v53], v57, v56, v58))
      {
        [(FBKFormResponse *)self setIsStub:1];
      }

      [(FBKFormResponse *)self setExtractedFollowupCount:v53];
    }
  }

  v59 = [v4 objectForKeyedSubscript:@"large_file_prefix"];
  v60 = FBKNilIfNSNull(v59);

  if (v60)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(FBKFormResponse *)self setLargeFilePrefix:v60];
    }
  }

  v74 = v47;
  v61 = [v4 objectForKeyedSubscript:@"is_complete"];
  v62 = FBKNilIfNSNull(v61);

  if (v62)
  {
    -[FBKFormResponse setServerSideIsComplete:](self, "setServerSideIsComplete:", [v62 BOOLValue]);
    -[FBKFormResponse setCompleted:](self, "setCompleted:", [v62 BOOLValue]);
  }

  v63 = [v4 objectForKeyedSubscript:@"file_promises"];
  v64 = FBKNilIfNSNull(v63);

  if (v64)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(FBKFormResponse *)self managedObjectContext];
      v65 = v9;
      v67 = v66 = v6;
      v68 = [(FBKManagedFeedbackObject *)FBKFilePromise importFromJSONArray:v64 intoContext:v67];
      [(FBKFormResponse *)self setFilePromises:v68];

      v6 = v66;
      v9 = v65;
      v10 = v72;
    }
  }

  v69 = *MEMORY[0x1E69E9840];
}

- (BOOL)isCompleted
{
  [(FBKFormResponse *)self willAccessValueForKey:@"completed"];
  v3 = [(FBKFormResponse *)self primitiveCompleted];
  v4 = [v3 BOOLValue];

  [(FBKFormResponse *)self didAccessValueForKey:@"completed"];
  return v4;
}

- (id)answersDictionary
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:10];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = [(FBKFormResponse *)self bugForm];
  v5 = [v4 questionGroups];

  obj = v5;
  v24 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v24)
  {
    v23 = *v31;
    do
    {
      v6 = 0;
      do
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v6;
        v7 = *(*(&v30 + 1) + 8 * v6);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v8 = [v7 questions];
        v9 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v27;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v27 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v26 + 1) + 8 * i);
              v14 = objc_alloc(MEMORY[0x1E695DEC8]);
              v15 = [(FBKFormResponse *)self answerForQuestion:v13];
              v16 = [v15 values];
              v17 = [v14 initWithArray:v16 copyItems:1];

              v18 = [v13 role];
              [v3 setObject:v17 forKey:v18];
            }

            v10 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v10);
        }

        v6 = v25 + 1;
      }

      while (v25 + 1 != v24);
      v24 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v24);
  }

  v19 = [v3 copy];
  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)answerForQuestion:(id)a3
{
  v4 = [a3 answers];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__FBKFormResponse_answerForQuestion___block_invoke;
  v7[3] = &unk_1E8771C90;
  v7[4] = self;
  v5 = [v4 ded_findWithBlock:v7];

  return v5;
}

uint64_t __37__FBKFormResponse_answerForQuestion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 formResponse];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)answerForQuestionID:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"questionID = %@", v4];
    v6 = [(FBKFormResponse *)self answers];
    v7 = [v6 filteredSetUsingPredicate:v5];

    v8 = [v7 allObjects];
    v9 = [v8 firstObject];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)updateExtractedValuesFromAnswers
{
  v3 = [(FBKFormResponse *)self bugForm];
  v4 = [v3 questionWithRole:@":title"];
  v5 = [v4 ID];
  v6 = [(FBKFormResponse *)self valueForQuestionID:v5];
  [(FBKFormResponse *)self setExtractedTitle:v6];

  v7 = [(FBKFormResponse *)self bugForm];
  v8 = [v7 questionWithRole:@":description"];
  v9 = [v8 ID];
  v10 = [(FBKFormResponse *)self valueForQuestionID:v9];
  [(FBKFormResponse *)self setExtractedProblemDescription:v10];

  v14 = [(FBKFormResponse *)self bugForm];
  v11 = [v14 questionWithRole:@":type"];
  v12 = [v11 ID];
  v13 = [(FBKFormResponse *)self valueForQuestionID:v12];
  [(FBKFormResponse *)self setExtractedIssueType:v13];
}

- (id)valueForQuestionID:(id)a3
{
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"questionID = %@", a3];
  v5 = [(FBKFormResponse *)self answers];
  v6 = [v5 filteredSetUsingPredicate:v4];

  v7 = [v6 allObjects];
  v8 = [v7 firstObject];
  v9 = [v8 value];

  return v9;
}

- (id)valuesForQuestionID:(id)a3
{
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"questionID = %@", a3];
  v5 = [(FBKFormResponse *)self answers];
  v6 = [v5 filteredSetUsingPredicate:v4];

  v7 = [v6 allObjects];
  v8 = [v7 firstObject];
  v9 = [v8 values];

  return v9;
}

- (void)setValue:(id)a3 forQuestionID:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [(FBKFormResponse *)self answers];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v13 questionID];
        v15 = [v14 isEqual:v7];

        if (v15)
        {
          [v13 setValue:v6];
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v16 = *MEMORY[0x1E69E9840];
}

- (FBKAnswer)titleAnswer
{
  v2 = [(FBKFormResponse *)self titleAnswers];
  v3 = [v2 lastObject];

  return v3;
}

- (NSString)title
{
  [(FBKFormResponse *)self willAccessValueForKey:@"title"];
  v3 = [(FBKFormResponse *)self titleAnswer];

  if (v3)
  {
    v4 = [(FBKFormResponse *)self titleAnswer];
    v5 = [v4 value];
  }

  else
  {
    v5 = [(FBKFormResponse *)self extractedTitle];
  }

  [(FBKFormResponse *)self didAccessValueForKey:@"title"];

  return v5;
}

- (FBKAnswer)problemDescriptionAnswer
{
  v2 = [(FBKFormResponse *)self problemDescriptionAnswers];
  v3 = [v2 lastObject];

  return v3;
}

- (NSString)problemDescription
{
  [(FBKFormResponse *)self willAccessValueForKey:@"problemDescription"];
  v3 = [(FBKFormResponse *)self problemDescriptionAnswer];

  if (v3)
  {
    v4 = [(FBKFormResponse *)self problemDescriptionAnswer];
    v5 = [v4 value];
  }

  else
  {
    v5 = [(FBKFormResponse *)self extractedProblemDescription];
  }

  [(FBKFormResponse *)self didAccessValueForKey:@"problemDescription"];

  return v5;
}

- (FBKAnswer)issueTypeAnswer
{
  v2 = [(FBKFormResponse *)self issueTypeAnswers];
  v3 = [v2 lastObject];

  return v3;
}

- (NSString)issueType
{
  [(FBKFormResponse *)self willAccessValueForKey:@"issueType"];
  v3 = [(FBKFormResponse *)self issueTypeAnswer];

  if (v3)
  {
    v4 = [(FBKFormResponse *)self issueTypeAnswer];
    v5 = [v4 value];
  }

  else
  {
    v5 = [(FBKFormResponse *)self extractedIssueType];
  }

  [(FBKFormResponse *)self didAccessValueForKey:@"issueType"];

  return v5;
}

- (NSNumber)followupCount
{
  [(FBKFormResponse *)self willAccessValueForKey:@"followupCount"];
  v3 = [(FBKFormResponse *)self feedback];
  v4 = [v3 feedbackFollowups];

  if (v4)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = [(FBKFormResponse *)self feedback];
    v7 = [v6 feedbackFollowups];
    v8 = [v5 numberWithInteger:{objc_msgSend(v7, "count")}];
  }

  else
  {
    v8 = [(FBKFormResponse *)self extractedFollowupCount];
  }

  [(FBKFormResponse *)self didAccessValueForKey:@"followupCount"];

  return v8;
}

- (void)prepareForDeletion
{
  v6.receiver = self;
  v6.super_class = FBKFormResponse;
  [(FBKFormResponse *)&v6 prepareForDeletion];
  v3 = [(FBKFormResponse *)self filerFormID];

  if (v3)
  {
    v4 = [FBKFileManager draftDirectoryForFilerForm:self];
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    [v5 removeItemAtURL:v4 error:0];
  }
}

- (NSString)platform
{
  v2 = [(FBKFormResponse *)self bugForm];
  v3 = [v2 platform];

  return v3;
}

- (id)formPlatform
{
  v2 = [(FBKFormResponse *)self bugForm];
  v3 = [v2 platform];

  return v3;
}

- (BOOL)collectsFiles
{
  v2 = [(FBKFormResponse *)self bugForm];
  v3 = [v2 collectsFiles];

  return v3;
}

- (id)findAnswerForRole:(id)a3
{
  v4 = a3;
  v5 = [(FBKFormResponse *)self bugForm];
  v6 = [v5 questionWithRole:v4];

  v7 = [(FBKFormResponse *)self answerForQuestion:v6];
  v8 = [v7 value];

  return v8;
}

- (BOOL)evaluateConditional:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  v6 = [v4 objectAtIndexedSubscript:0];
  if (v5 == 1)
  {
    LOBYTE(v7) = [(FBKFormResponse *)self evaluateConditional:v6];
    goto LABEL_25;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = MEMORY[0x1E696AD98];
    v6 = [v4 objectAtIndexedSubscript:0];
    v10 = [v9 numberWithBool:{-[FBKFormResponse evaluateConditional:](self, "evaluateConditional:", v6)}];
  }

  else
  {
    v11 = [v4 objectAtIndexedSubscript:0];
    objc_opt_class();
    v12 = objc_opt_isKindOfClass();

    v6 = [v4 objectAtIndexedSubscript:0];
    if (v12)
    {
      goto LABEL_8;
    }

    v10 = [(FBKFormResponse *)self findAnswerForRole:v6];
  }

  v13 = v10;

  v6 = v13;
LABEL_8:
  v14 = [v4 objectAtIndexedSubscript:1];
  v15 = [v4 objectAtIndexedSubscript:2];
  objc_opt_class();
  v16 = objc_opt_isKindOfClass();

  if (v16)
  {
    v17 = MEMORY[0x1E696AD98];
    v18 = [v4 objectAtIndexedSubscript:2];
    v19 = [v17 numberWithBool:{-[FBKFormResponse evaluateConditional:](self, "evaluateConditional:", v18)}];
  }

  else
  {
    v19 = [v4 objectAtIndexedSubscript:2];
  }

  if ([v14 isEqualToString:@":=="])
  {
    v20 = [v6 isEqualToString:v19];
  }

  else
  {
    if ([v14 isEqualToString:@":!="])
    {
      v7 = [v6 isEqualToString:v19] ^ 1;
      goto LABEL_22;
    }

    if ([v14 isEqualToString:@":and"])
    {
      if (![v6 BOOLValue])
      {
        v7 = 0;
        goto LABEL_22;
      }
    }

    else if (![v14 isEqualToString:@":or"] || (objc_msgSend(v6, "BOOLValue") & 1) != 0)
    {
      v7 = 1;
      goto LABEL_22;
    }

    v20 = [v19 BOOLValue];
  }

  v7 = v20;
LABEL_22:
  if ([v4 count] != 3)
  {
    v21 = MEMORY[0x1E695DEC8];
    v7 = [MEMORY[0x1E696AD98] numberWithBool:v7];
    v22 = [v21 arrayWithObject:v7];
    v23 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{3, objc_msgSend(v4, "count") - 3}];
    v24 = [v4 objectsAtIndexes:v23];
    v25 = [v22 arrayByAddingObjectsFromArray:v24];

    LOBYTE(v7) = [(FBKFormResponse *)self evaluateConditional:v25];
  }

LABEL_25:
  return v7;
}

- (BOOL)isAnswerExpectedForQuestion:(id)a3
{
  v4 = a3;
  if ([v4 isConditional])
  {
    v5 = [v4 conditions];

    if (v5)
    {
      v6 = [v4 conditions];
      v7 = [(FBKFormResponse *)self evaluateConditional:v6];
LABEL_10:

      goto LABEL_11;
    }

    v8 = [v4 conditionQuestionID];

    if (v8)
    {
      v9 = [v4 conditionQuestionID];
      v6 = [(FBKFormResponse *)self valueForQuestionID:v9];

      v10 = [v4 conditionValue];
      if (v6 == v10)
      {
        v7 = 1;
      }

      else
      {
        v7 = [v6 isEqual:v10];
      }

      goto LABEL_10;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (id)matcherPredicates
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = [(FBKFormResponse *)self bugForm];
  v5 = [v4 filePredicates];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    v20 = *v28;
    do
    {
      v9 = 0;
      v21 = v7;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        if ([v10 satisfiedBy:self])
        {
          v11 = self;
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v12 = [v10 matchers];
          v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v24;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v24 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = [[FBKMatcherPredicate alloc] initWithFileMatcher:*(*(&v23 + 1) + 8 * i) filePredicate:v10];
                [v3 addObject:v17];
              }

              v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v14);
          }

          self = v11;
          v8 = v20;
          v7 = v21;
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v7);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)fileMatchers
{
  v2 = [(FBKFormResponse *)self matcherPredicates];
  v3 = [v2 ded_flatMapWithBlock:&__block_literal_global_2];

  return v3;
}

- (id)allFileMatchers
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] setWithCapacity:20];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [(FBKFormResponse *)self bugForm];
  v5 = [v4 filePredicates];

  v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v11 = [v10 matchers];
        v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v20;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(v11);
              }

              [v3 addObject:*(*(&v19 + 1) + 8 * j)];
            }

            v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v13);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v16 = [MEMORY[0x1E695DFD8] setWithSet:v3];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

@end