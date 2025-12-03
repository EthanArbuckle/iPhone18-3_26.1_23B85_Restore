@interface FBKFeedbackStatus
- (BOOL)isEmpty;
- (FBKQuestionGroupStub)questionGroupStubRepresentation;
- (NSAttributedString)attributedStringRepresentation;
- (void)setPropertiesFromJSONObject:(id)object;
@end

@implementation FBKFeedbackStatus

- (void)setPropertiesFromJSONObject:(id)object
{
  v27 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  array = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [objectCopy objectForKeyedSubscript:@"status"];
  v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    selfCopy = self;
    v20 = objectCopy;
    v9 = 0;
    v10 = *v23;
    do
    {
      v11 = 0;
      v12 = v9;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v22 + 1) + 8 * v11);
        v9 = [v13 objectForKeyedSubscript:@"key"];

        v14 = [v13 objectForKeyedSubscript:@"value"];
        [dictionary setObject:v14 forKeyedSubscript:v9];

        [array addObject:v9];
        ++v11;
        v12 = v9;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);

    self = selfCopy;
    objectCopy = v20;
  }

  v15 = [array copy];
  [(FBKFeedbackStatus *)self setOrderedKeys:v15];

  v16 = [dictionary copy];
  [(FBKFeedbackStatus *)self setStatusPairs:v16];

  date = [MEMORY[0x1E695DF00] date];
  [(FBKFeedbackStatus *)self setUpdatedAt:date];

  v18 = *MEMORY[0x1E69E9840];
}

- (FBKQuestionGroupStub)questionGroupStubRepresentation
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  orderedKeys = [(FBKFeedbackStatus *)self orderedKeys];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(orderedKeys, "count")}];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(FBKFeedbackStatus *)self orderedKeys];
  v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v24;
    do
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v23 + 1) + 8 * v10);
        v13 = [FBKQuestionAnswerPair alloc];
        statusPairs = [(FBKFeedbackStatus *)self statusPairs];
        v15 = [statusPairs objectForKeyedSubscript:v12];
        v8 = [(FBKQuestionAnswerPair *)v13 initWithQuestionText:v12 andAnswerText:v15];

        [v5 addObject:v8];
        ++v10;
        v11 = v8;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  v16 = [FBKQuestionGroupStub alloc];
  v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"STATUS_SECTION_TITLE" value:&stru_1F5F14EC0 table:@"CommonStrings"];
  v19 = [(FBKQuestionGroupStub *)v16 initWithTitle:v18 questions:v5];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (BOOL)isEmpty
{
  if (FBKIsInternalInstall(self, a2))
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = [standardUserDefaults BOOLForKey:@"HideFeedbackStatus"];

    if (v4)
    {
      return 1;
    }
  }

  orderedKeys = [(FBKFeedbackStatus *)self orderedKeys];
  v5 = [orderedKeys count] == 0;

  return v5;
}

- (NSAttributedString)attributedStringRepresentation
{
  v51[2] = *MEMORY[0x1E69E9840];
  if (FBKIsInternalInstall(self, a2) && ([MEMORY[0x1E695E000] standardUserDefaults], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "BOOLForKey:", @"HideFeedbackStatus"), v3, v4))
  {
    v5 = +[FBKLog appHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E54BE000, v5, OS_LOG_TYPE_INFO, "DEV: hidding status", buf, 2u);
    }

    v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F5F14EC0 attributes:0];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AD40]);
    if (![(FBKFeedbackStatus *)self isEmpty])
    {
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      v9 = *MEMORY[0x1E69DDCF8];
      v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v9];
      v14 = *MEMORY[0x1E69DB648];
      v50[0] = *MEMORY[0x1E69DB650];
      v13 = v50[0];
      v50[1] = v14;
      v43 = v10;
      v44 = labelColor;
      v51[0] = labelColor;
      v51[1] = v10;
      v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:2];
      v48[0] = v13;
      v48[1] = v14;
      v41 = v12;
      v42 = secondaryLabelColor;
      v49[0] = secondaryLabelColor;
      v49[1] = v12;
      v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:2];
      orderedKeys = [(FBKFeedbackStatus *)self orderedKeys];
      v16 = [orderedKeys count];

      if (v16)
      {
        v17 = 0;
        do
        {
          orderedKeys2 = [(FBKFeedbackStatus *)self orderedKeys];
          v19 = [orderedKeys2 objectAtIndexedSubscript:v17];

          statusPairs = [(FBKFeedbackStatus *)self statusPairs];
          v21 = [statusPairs objectForKeyedSubscript:v19];

          v22 = isLanguageRTL();
          if (v22)
          {
            v23 = @":%@";
          }

          else
          {
            v23 = @"%@:";
          }

          if (v22)
          {
            v24 = @"%@ ";
          }

          else
          {
            v24 = @" %@";
          }

          v25 = [MEMORY[0x1E696AEC0] stringWithFormat:v23, v19];
          v26 = [MEMORY[0x1E696AEC0] stringWithFormat:v24, v21];
          orderedKeys3 = [(FBKFeedbackStatus *)self orderedKeys];
          v28 = [orderedKeys3 count] - 1;

          if (v28 > v17)
          {
            if (isLanguageRTL())
            {
              v29 = [v25 stringByAppendingString:@"\n"];
              v30 = v25;
              v25 = v29;
            }

            else
            {
              v31 = [v26 stringByAppendingString:@"\n"];
              v30 = v26;
              v26 = v31;
            }
          }

          v32 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v25 attributes:v46];
          v33 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v26 attributes:v45];
          v34 = isLanguageRTL();
          if (v34)
          {
            v35 = v33;
          }

          else
          {
            v35 = v32;
          }

          if (v34)
          {
            v36 = v32;
          }

          else
          {
            v36 = v33;
          }

          [v7 appendAttributedString:v35];
          [v7 appendAttributedString:v36];

          ++v17;
          orderedKeys4 = [(FBKFeedbackStatus *)self orderedKeys];
          v38 = [orderedKeys4 count];
        }

        while (v38 > v17);
      }
    }

    v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithAttributedString:v7];
  }

  v39 = *MEMORY[0x1E69E9840];

  return v6;
}

@end