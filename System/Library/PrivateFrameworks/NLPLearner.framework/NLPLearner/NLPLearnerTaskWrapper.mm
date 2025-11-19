@interface NLPLearnerTaskWrapper
+ (id)privacyIdentifierForTask:(int64_t)a3;
+ (int64_t)taskFromRecipe:(id)a3;
+ (void)initialize;
@end

@implementation NLPLearnerTaskWrapper

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    sLog_2 = os_log_create("com.apple.NLP", "NLPLearnerTaskWrapper");

    MEMORY[0x2821F96F8]();
  }
}

+ (int64_t)taskFromRecipe:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 isEqualToString:@"emoji"] & 1) == 0)
  {
    if ([v4 isEqualToString:@"lm"])
    {
      v5 = 2;
    }

    else if ([v4 isEqualToString:@"char_lm"])
    {
      v5 = 3;
    }

    else if ([v4 isEqualToString:@"fragment_lm"])
    {
      v5 = 5;
    }

    else if ([v4 isEqualToString:@"act"])
    {
      v5 = 7;
    }

    else
    {
      v7 = sLog_2;
      if (os_log_type_enabled(sLog_2, OS_LOG_TYPE_ERROR))
      {
        [(NLPLearnerTaskWrapper *)v4 taskFromRecipe:v7];
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

+ (id)privacyIdentifierForTask:(int64_t)a3
{
  v4 = sLog_2;
  if (os_log_type_enabled(sLog_2, OS_LOG_TYPE_ERROR))
  {
    [(NLPLearnerTaskWrapper *)a3 privacyIdentifierForTask:v4];
  }

  return &stru_286C38420;
}

+ (void)taskFromRecipe:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25AE22000, a2, OS_LOG_TYPE_ERROR, "Unexpected recipe parameter '%@'", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)privacyIdentifierForTask:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_25AE22000, a2, OS_LOG_TYPE_ERROR, "Task %ld doesn't have an associated privacy identifier", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end