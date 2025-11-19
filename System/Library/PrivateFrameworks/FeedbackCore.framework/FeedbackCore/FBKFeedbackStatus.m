@interface FBKFeedbackStatus
- (BOOL)isEmpty;
- (FBKQuestionGroupStub)questionGroupStubRepresentation;
- (NSAttributedString)attributedStringRepresentation;
- (void)setPropertiesFromJSONObject:(id)a3;
@end

@implementation FBKFeedbackStatus

- (void)setPropertiesFromJSONObject:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [v4 objectForKeyedSubscript:@"status"];
  v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v19 = self;
    v20 = v4;
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
        [v5 setObject:v14 forKeyedSubscript:v9];

        [v6 addObject:v9];
        ++v11;
        v12 = v9;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);

    self = v19;
    v4 = v20;
  }

  v15 = [v6 copy];
  [(FBKFeedbackStatus *)self setOrderedKeys:v15];

  v16 = [v5 copy];
  [(FBKFeedbackStatus *)self setStatusPairs:v16];

  v17 = [MEMORY[0x1E695DF00] date];
  [(FBKFeedbackStatus *)self setUpdatedAt:v17];

  v18 = *MEMORY[0x1E69E9840];
}

- (FBKQuestionGroupStub)questionGroupStubRepresentation
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = [(FBKFeedbackStatus *)self orderedKeys];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

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
        v14 = [(FBKFeedbackStatus *)self statusPairs];
        v15 = [v14 objectForKeyedSubscript:v12];
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
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = [v3 BOOLForKey:@"HideFeedbackStatus"];

    if (v4)
    {
      return 1;
    }
  }

  v6 = [(FBKFeedbackStatus *)self orderedKeys];
  v5 = [v6 count] == 0;

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
      v8 = [MEMORY[0x1E69DC888] labelColor];
      v9 = *MEMORY[0x1E69DDCF8];
      v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
      v11 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v9];
      v14 = *MEMORY[0x1E69DB648];
      v50[0] = *MEMORY[0x1E69DB650];
      v13 = v50[0];
      v50[1] = v14;
      v43 = v10;
      v44 = v8;
      v51[0] = v8;
      v51[1] = v10;
      v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:2];
      v48[0] = v13;
      v48[1] = v14;
      v41 = v12;
      v42 = v11;
      v49[0] = v11;
      v49[1] = v12;
      v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:2];
      v15 = [(FBKFeedbackStatus *)self orderedKeys];
      v16 = [v15 count];

      if (v16)
      {
        v17 = 0;
        do
        {
          v18 = [(FBKFeedbackStatus *)self orderedKeys];
          v19 = [v18 objectAtIndexedSubscript:v17];

          v20 = [(FBKFeedbackStatus *)self statusPairs];
          v21 = [v20 objectForKeyedSubscript:v19];

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
          v27 = [(FBKFeedbackStatus *)self orderedKeys];
          v28 = [v27 count] - 1;

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
          v37 = [(FBKFeedbackStatus *)self orderedKeys];
          v38 = [v37 count];
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