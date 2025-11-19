@interface FCImageOnTopPremiumHeadlineTemplate
- (FCImageOnTopPremiumHeadlineTemplate)initWithJSONDictionary:(id)a3 versionNumber:(int64_t)a4 URLGenerator:(id)a5 allowNil:(BOOL)a6;
@end

@implementation FCImageOnTopPremiumHeadlineTemplate

- (FCImageOnTopPremiumHeadlineTemplate)initWithJSONDictionary:(id)a3 versionNumber:(int64_t)a4 URLGenerator:(id)a5 allowNil:(BOOL)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v21.receiver = self;
  v21.super_class = FCImageOnTopPremiumHeadlineTemplate;
  v11 = [(FCHeadlineTemplate *)&v21 initWithJSONDictionary:v10 versionNumber:a4 URLGenerator:a5];
  v12 = v11;
  if (v11)
  {
    if (v10)
    {
      if (a4 == 2)
      {
        v17 = [v10 objectForKeyedSubscript:@"templateType"];
        v18 = [v17 isEqualToString:@"Image On Top"];

        if ((v18 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "type == FCHeadlineTemplateTypeImageOnTopPremium"];
          *buf = 136315906;
          v23 = "[FCImageOnTopPremiumHeadlineTemplate initWithJSONDictionary:versionNumber:URLGenerator:allowNil:]";
          v24 = 2080;
          v25 = "FCHeadlineTemplate.m";
          v26 = 1024;
          v27 = 320;
          v28 = 2114;
          v29 = v15;
          v16 = MEMORY[0x1E69E9C10];
          goto LABEL_14;
        }
      }

      else if (a4 == 1)
      {
        v13 = [v10 objectForKeyedSubscript:@"templateType"];
        v14 = [v13 isEqualToString:@"Image On Top"];

        if ((v14 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "type == FCHeadlineTemplateTypeImageOnTopPremium"];
          *buf = 136315906;
          v23 = "[FCImageOnTopPremiumHeadlineTemplate initWithJSONDictionary:versionNumber:URLGenerator:allowNil:]";
          v24 = 2080;
          v25 = "FCHeadlineTemplate.m";
          v26 = 1024;
          v27 = 314;
          v28 = 2114;
          v29 = v15;
          v16 = MEMORY[0x1E69E9C10];
LABEL_14:
          _os_log_error_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }
      }
    }

    else if (!a6)
    {

      v12 = 0;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v12;
}

@end