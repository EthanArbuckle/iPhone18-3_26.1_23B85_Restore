@interface FBKFormResponse
- (BOOL)collectsFiles;
- (BOOL)evaluateConditional:(id)conditional;
- (BOOL)isAnswerExpectedForQuestion:(id)question;
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
- (id)answerForQuestion:(id)question;
- (id)answerForQuestionID:(id)d;
- (id)answersDictionary;
- (id)fileMatchers;
- (id)findAnswerForRole:(id)role;
- (id)formPlatform;
- (id)matcherPredicates;
- (id)valueForQuestionID:(id)d;
- (id)valuesForQuestionID:(id)d;
- (void)prepareForDeletion;
- (void)setPropertiesFromJSONObject:(id)object;
- (void)setValue:(id)value forQuestionID:(id)d;
- (void)updateExtractedValuesFromAnswers;
@end

@implementation FBKFormResponse

- (void)setPropertiesFromJSONObject:(id)object
{
  v83 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  [(FBKFormResponse *)self setRemote:1];
  v5 = [objectCopy objectForKeyedSubscript:@"created_at"];
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

  v8 = [objectCopy objectForKeyedSubscript:@"updated_at"];
  v9 = FBKNilIfNSNull(v8);

  if (v9)
  {
    v10 = FBKDateFromServerString(v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objectCopy objectForKeyedSubscript:@"for_build"];
  v12 = FBKNilIfNSNull(v11);

  if (v12)
  {
    [(FBKFormResponse *)self setBuildString:v12];
  }

  v76 = v12;
  v13 = [objectCopy objectForKeyedSubscript:@"form_id"];
  v14 = FBKNilIfNSNull(v13);
  [(FBKFormResponse *)self setFormID:v14];

  v15 = [objectCopy objectForKeyedSubscript:@"answers"];

  v72 = v10;
  if (!v15)
  {
    updatedAt = [(FBKFormResponse *)self updatedAt];
    v33 = updatedAt;
    if (updatedAt && v10)
    {
      answers = [(FBKFormResponse *)self answers];
      v35 = [answers count];

      if (v35)
      {
        updatedAt2 = [(FBKFormResponse *)self updatedAt];
        v37 = [v10 compare:updatedAt2];
        isStub = [(FBKFormResponse *)self isStub];
        if (v37 == 1)
        {
          v39 = 1;
        }

        else
        {
          v39 = isStub;
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

  v16 = [objectCopy objectForKeyedSubscript:@"form_id"];

  if (v16)
  {
    v17 = MEMORY[0x1E696AD98];
    v18 = [objectCopy objectForKeyedSubscript:@"form_id"];
    v19 = [v17 numberWithInteger:{objc_msgSend(v18, "integerValue")}];

    managedObjectContext = [(FBKFormResponse *)self managedObjectContext];
    v16 = [managedObjectContext feedbackObjectWithEntityName:@"BugForm" remoteID:v19 creatingIfNeeded:0];
  }

  v21 = [objectCopy objectForKeyedSubscript:{@"answers", v9, v6}];
  managedObjectContext2 = [(FBKFormResponse *)self managedObjectContext];
  v23 = [(FBKManagedFeedbackObject *)FBKAnswer importFromJSONArray:v21 intoContext:managedObjectContext2];
  [(FBKFormResponse *)self setAnswers:v23];

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  answers2 = [(FBKFormResponse *)self answers];
  v25 = [answers2 countByEnumeratingWithState:&v78 objects:v82 count:16];
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
          objc_enumerationMutation(answers2);
        }

        v29 = *(*(&v78 + 1) + 8 * i);
        questionID = [v29 questionID];
        v31 = [v16 questionForQuestionID:questionID];
        [v29 setQuestion:v31];
      }

      v26 = [answers2 countByEnumeratingWithState:&v78 objects:v82 count:16];
    }

    while (v26);
  }

  [(FBKFormResponse *)self setIsStub:0];
  v9 = v70;
  v6 = v71;
  v10 = v72;
LABEL_29:
  [(FBKFormResponse *)self setUpdatedAt:v10];
  v40 = [objectCopy objectForKeyedSubscript:@"short_description"];

  if (v40)
  {
    v41 = [objectCopy objectForKeyedSubscript:@"short_description"];
    null = [MEMORY[0x1E695DFB0] null];

    if (v41 == null)
    {
      v43 = &stru_1F5F14EC0;
    }

    else
    {
      v43 = [objectCopy objectForKeyedSubscript:@"short_description"];
    }

    [(FBKFormResponse *)self setExtractedProblemDescription:v43];
  }

  v44 = [objectCopy objectForKeyedSubscript:@"title"];
  v45 = FBKNilIfNSNull(v44);

  if (v45)
  {
    [(FBKFormResponse *)self setExtractedTitle:v45];
  }

  v46 = [objectCopy objectForKeyedSubscript:@"feedback_ident"];
  v47 = FBKNilIfNSNull(v46);

  if (v47)
  {
    [(FBKFormResponse *)self setFeedbackID:v47];
  }

  v48 = [objectCopy objectForKeyedSubscript:@"answers_complete"];
  v49 = FBKNilIfNSNull(v48);

  v77 = v49;
  if (v49 && [v49 BOOLValue])
  {
    [(FBKFormResponse *)self setCompleted:1];
  }

  v75 = v45;
  v50 = [objectCopy objectForKeyedSubscript:@"area_type"];
  v51 = v50;
  if (v50)
  {
    v52 = FBKNilIfNSNull(v50);
    [(FBKFormResponse *)self setExtractedIssueType:v52];
  }

  v73 = v51;
  v53 = [objectCopy objectForKeyedSubscript:@"followup_count"];
  if (v53)
  {
    null2 = [MEMORY[0x1E695DFB0] null];

    if (v53 != null2)
    {
      extractedFollowupCount = [(FBKFormResponse *)self extractedFollowupCount];
      if (!extractedFollowupCount || (v56 = extractedFollowupCount, -[FBKFormResponse extractedFollowupCount](self, "extractedFollowupCount"), v57 = objc_claimAutoreleasedReturnValue(), v58 = [v57 compare:v53], v57, v56, v58))
      {
        [(FBKFormResponse *)self setIsStub:1];
      }

      [(FBKFormResponse *)self setExtractedFollowupCount:v53];
    }
  }

  v59 = [objectCopy objectForKeyedSubscript:@"large_file_prefix"];
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
  v61 = [objectCopy objectForKeyedSubscript:@"is_complete"];
  v62 = FBKNilIfNSNull(v61);

  if (v62)
  {
    -[FBKFormResponse setServerSideIsComplete:](self, "setServerSideIsComplete:", [v62 BOOLValue]);
    -[FBKFormResponse setCompleted:](self, "setCompleted:", [v62 BOOLValue]);
  }

  v63 = [objectCopy objectForKeyedSubscript:@"file_promises"];
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
  primitiveCompleted = [(FBKFormResponse *)self primitiveCompleted];
  bOOLValue = [primitiveCompleted BOOLValue];

  [(FBKFormResponse *)self didAccessValueForKey:@"completed"];
  return bOOLValue;
}

- (id)answersDictionary
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:10];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  bugForm = [(FBKFormResponse *)self bugForm];
  questionGroups = [bugForm questionGroups];

  obj = questionGroups;
  v24 = [questionGroups countByEnumeratingWithState:&v30 objects:v35 count:16];
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
        questions = [v7 questions];
        v9 = [questions countByEnumeratingWithState:&v26 objects:v34 count:16];
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
                objc_enumerationMutation(questions);
              }

              v13 = *(*(&v26 + 1) + 8 * i);
              v14 = objc_alloc(MEMORY[0x1E695DEC8]);
              v15 = [(FBKFormResponse *)self answerForQuestion:v13];
              values = [v15 values];
              v17 = [v14 initWithArray:values copyItems:1];

              role = [v13 role];
              [v3 setObject:v17 forKey:role];
            }

            v10 = [questions countByEnumeratingWithState:&v26 objects:v34 count:16];
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

- (id)answerForQuestion:(id)question
{
  answers = [question answers];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__FBKFormResponse_answerForQuestion___block_invoke;
  v7[3] = &unk_1E8771C90;
  v7[4] = self;
  v5 = [answers ded_findWithBlock:v7];

  return v5;
}

uint64_t __37__FBKFormResponse_answerForQuestion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 formResponse];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)answerForQuestionID:(id)d
{
  dCopy = d;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"questionID = %@", dCopy];
    answers = [(FBKFormResponse *)self answers];
    v7 = [answers filteredSetUsingPredicate:dCopy];

    allObjects = [v7 allObjects];
    firstObject = [allObjects firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (void)updateExtractedValuesFromAnswers
{
  bugForm = [(FBKFormResponse *)self bugForm];
  v4 = [bugForm questionWithRole:@":title"];
  v5 = [v4 ID];
  v6 = [(FBKFormResponse *)self valueForQuestionID:v5];
  [(FBKFormResponse *)self setExtractedTitle:v6];

  bugForm2 = [(FBKFormResponse *)self bugForm];
  v8 = [bugForm2 questionWithRole:@":description"];
  v9 = [v8 ID];
  v10 = [(FBKFormResponse *)self valueForQuestionID:v9];
  [(FBKFormResponse *)self setExtractedProblemDescription:v10];

  bugForm3 = [(FBKFormResponse *)self bugForm];
  v11 = [bugForm3 questionWithRole:@":type"];
  v12 = [v11 ID];
  v13 = [(FBKFormResponse *)self valueForQuestionID:v12];
  [(FBKFormResponse *)self setExtractedIssueType:v13];
}

- (id)valueForQuestionID:(id)d
{
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"questionID = %@", d];
  answers = [(FBKFormResponse *)self answers];
  v6 = [answers filteredSetUsingPredicate:v4];

  allObjects = [v6 allObjects];
  firstObject = [allObjects firstObject];
  value = [firstObject value];

  return value;
}

- (id)valuesForQuestionID:(id)d
{
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"questionID = %@", d];
  answers = [(FBKFormResponse *)self answers];
  v6 = [answers filteredSetUsingPredicate:v4];

  allObjects = [v6 allObjects];
  firstObject = [allObjects firstObject];
  values = [firstObject values];

  return values;
}

- (void)setValue:(id)value forQuestionID:(id)d
{
  v22 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  dCopy = d;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  answers = [(FBKFormResponse *)self answers];
  v9 = [answers countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(answers);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        questionID = [v13 questionID];
        v15 = [questionID isEqual:dCopy];

        if (v15)
        {
          [v13 setValue:valueCopy];
          goto LABEL_11;
        }
      }

      v10 = [answers countByEnumeratingWithState:&v17 objects:v21 count:16];
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
  titleAnswers = [(FBKFormResponse *)self titleAnswers];
  lastObject = [titleAnswers lastObject];

  return lastObject;
}

- (NSString)title
{
  [(FBKFormResponse *)self willAccessValueForKey:@"title"];
  titleAnswer = [(FBKFormResponse *)self titleAnswer];

  if (titleAnswer)
  {
    titleAnswer2 = [(FBKFormResponse *)self titleAnswer];
    value = [titleAnswer2 value];
  }

  else
  {
    value = [(FBKFormResponse *)self extractedTitle];
  }

  [(FBKFormResponse *)self didAccessValueForKey:@"title"];

  return value;
}

- (FBKAnswer)problemDescriptionAnswer
{
  problemDescriptionAnswers = [(FBKFormResponse *)self problemDescriptionAnswers];
  lastObject = [problemDescriptionAnswers lastObject];

  return lastObject;
}

- (NSString)problemDescription
{
  [(FBKFormResponse *)self willAccessValueForKey:@"problemDescription"];
  problemDescriptionAnswer = [(FBKFormResponse *)self problemDescriptionAnswer];

  if (problemDescriptionAnswer)
  {
    problemDescriptionAnswer2 = [(FBKFormResponse *)self problemDescriptionAnswer];
    value = [problemDescriptionAnswer2 value];
  }

  else
  {
    value = [(FBKFormResponse *)self extractedProblemDescription];
  }

  [(FBKFormResponse *)self didAccessValueForKey:@"problemDescription"];

  return value;
}

- (FBKAnswer)issueTypeAnswer
{
  issueTypeAnswers = [(FBKFormResponse *)self issueTypeAnswers];
  lastObject = [issueTypeAnswers lastObject];

  return lastObject;
}

- (NSString)issueType
{
  [(FBKFormResponse *)self willAccessValueForKey:@"issueType"];
  issueTypeAnswer = [(FBKFormResponse *)self issueTypeAnswer];

  if (issueTypeAnswer)
  {
    issueTypeAnswer2 = [(FBKFormResponse *)self issueTypeAnswer];
    value = [issueTypeAnswer2 value];
  }

  else
  {
    value = [(FBKFormResponse *)self extractedIssueType];
  }

  [(FBKFormResponse *)self didAccessValueForKey:@"issueType"];

  return value;
}

- (NSNumber)followupCount
{
  [(FBKFormResponse *)self willAccessValueForKey:@"followupCount"];
  feedback = [(FBKFormResponse *)self feedback];
  feedbackFollowups = [feedback feedbackFollowups];

  if (feedbackFollowups)
  {
    v5 = MEMORY[0x1E696AD98];
    feedback2 = [(FBKFormResponse *)self feedback];
    feedbackFollowups2 = [feedback2 feedbackFollowups];
    extractedFollowupCount = [v5 numberWithInteger:{objc_msgSend(feedbackFollowups2, "count")}];
  }

  else
  {
    extractedFollowupCount = [(FBKFormResponse *)self extractedFollowupCount];
  }

  [(FBKFormResponse *)self didAccessValueForKey:@"followupCount"];

  return extractedFollowupCount;
}

- (void)prepareForDeletion
{
  v6.receiver = self;
  v6.super_class = FBKFormResponse;
  [(FBKFormResponse *)&v6 prepareForDeletion];
  filerFormID = [(FBKFormResponse *)self filerFormID];

  if (filerFormID)
  {
    v4 = [FBKFileManager draftDirectoryForFilerForm:self];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager removeItemAtURL:v4 error:0];
  }
}

- (NSString)platform
{
  bugForm = [(FBKFormResponse *)self bugForm];
  platform = [bugForm platform];

  return platform;
}

- (id)formPlatform
{
  bugForm = [(FBKFormResponse *)self bugForm];
  platform = [bugForm platform];

  return platform;
}

- (BOOL)collectsFiles
{
  bugForm = [(FBKFormResponse *)self bugForm];
  collectsFiles = [bugForm collectsFiles];

  return collectsFiles;
}

- (id)findAnswerForRole:(id)role
{
  roleCopy = role;
  bugForm = [(FBKFormResponse *)self bugForm];
  v6 = [bugForm questionWithRole:roleCopy];

  v7 = [(FBKFormResponse *)self answerForQuestion:v6];
  value = [v7 value];

  return value;
}

- (BOOL)evaluateConditional:(id)conditional
{
  conditionalCopy = conditional;
  v5 = [conditionalCopy count];
  v6 = [conditionalCopy objectAtIndexedSubscript:0];
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
    v6 = [conditionalCopy objectAtIndexedSubscript:0];
    v10 = [v9 numberWithBool:{-[FBKFormResponse evaluateConditional:](self, "evaluateConditional:", v6)}];
  }

  else
  {
    v11 = [conditionalCopy objectAtIndexedSubscript:0];
    objc_opt_class();
    v12 = objc_opt_isKindOfClass();

    v6 = [conditionalCopy objectAtIndexedSubscript:0];
    if (v12)
    {
      goto LABEL_8;
    }

    v10 = [(FBKFormResponse *)self findAnswerForRole:v6];
  }

  v13 = v10;

  v6 = v13;
LABEL_8:
  v14 = [conditionalCopy objectAtIndexedSubscript:1];
  v15 = [conditionalCopy objectAtIndexedSubscript:2];
  objc_opt_class();
  v16 = objc_opt_isKindOfClass();

  if (v16)
  {
    v17 = MEMORY[0x1E696AD98];
    v18 = [conditionalCopy objectAtIndexedSubscript:2];
    v19 = [v17 numberWithBool:{-[FBKFormResponse evaluateConditional:](self, "evaluateConditional:", v18)}];
  }

  else
  {
    v19 = [conditionalCopy objectAtIndexedSubscript:2];
  }

  if ([v14 isEqualToString:@":=="])
  {
    bOOLValue = [v6 isEqualToString:v19];
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

    bOOLValue = [v19 BOOLValue];
  }

  v7 = bOOLValue;
LABEL_22:
  if ([conditionalCopy count] != 3)
  {
    v21 = MEMORY[0x1E695DEC8];
    v7 = [MEMORY[0x1E696AD98] numberWithBool:v7];
    v22 = [v21 arrayWithObject:v7];
    v23 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{3, objc_msgSend(conditionalCopy, "count") - 3}];
    v24 = [conditionalCopy objectsAtIndexes:v23];
    v25 = [v22 arrayByAddingObjectsFromArray:v24];

    LOBYTE(v7) = [(FBKFormResponse *)self evaluateConditional:v25];
  }

LABEL_25:
  return v7;
}

- (BOOL)isAnswerExpectedForQuestion:(id)question
{
  questionCopy = question;
  if ([questionCopy isConditional])
  {
    conditions = [questionCopy conditions];

    if (conditions)
    {
      conditions2 = [questionCopy conditions];
      v7 = [(FBKFormResponse *)self evaluateConditional:conditions2];
LABEL_10:

      goto LABEL_11;
    }

    conditionQuestionID = [questionCopy conditionQuestionID];

    if (conditionQuestionID)
    {
      conditionQuestionID2 = [questionCopy conditionQuestionID];
      conditions2 = [(FBKFormResponse *)self valueForQuestionID:conditionQuestionID2];

      conditionValue = [questionCopy conditionValue];
      if (conditions2 == conditionValue)
      {
        v7 = 1;
      }

      else
      {
        v7 = [conditions2 isEqual:conditionValue];
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
  bugForm = [(FBKFormResponse *)self bugForm];
  filePredicates = [bugForm filePredicates];

  obj = filePredicates;
  v6 = [filePredicates countByEnumeratingWithState:&v27 objects:v32 count:16];
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
          selfCopy = self;
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          matchers = [v10 matchers];
          v13 = [matchers countByEnumeratingWithState:&v23 objects:v31 count:16];
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
                  objc_enumerationMutation(matchers);
                }

                v17 = [[FBKMatcherPredicate alloc] initWithFileMatcher:*(*(&v23 + 1) + 8 * i) filePredicate:v10];
                [v3 addObject:v17];
              }

              v14 = [matchers countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v14);
          }

          self = selfCopy;
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
  matcherPredicates = [(FBKFormResponse *)self matcherPredicates];
  v3 = [matcherPredicates ded_flatMapWithBlock:&__block_literal_global_2];

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
  bugForm = [(FBKFormResponse *)self bugForm];
  filePredicates = [bugForm filePredicates];

  v6 = [filePredicates countByEnumeratingWithState:&v23 objects:v28 count:16];
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
          objc_enumerationMutation(filePredicates);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        matchers = [v10 matchers];
        v12 = [matchers countByEnumeratingWithState:&v19 objects:v27 count:16];
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
                objc_enumerationMutation(matchers);
              }

              [v3 addObject:*(*(&v19 + 1) + 8 * j)];
            }

            v13 = [matchers countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v13);
        }
      }

      v7 = [filePredicates countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v16 = [MEMORY[0x1E695DFD8] setWithSet:v3];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

@end