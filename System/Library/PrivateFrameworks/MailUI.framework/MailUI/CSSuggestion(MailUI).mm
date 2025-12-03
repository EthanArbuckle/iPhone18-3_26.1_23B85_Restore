@interface CSSuggestion(MailUI)
+ (id)mui_emptySuggestion;
+ (id)mui_log;
+ (id)mui_mergeCurrentSuggestion:()MailUI suggestion:;
+ (id)mui_spotlightSuggestionForEmailAddress:()MailUI scope:currentSuggestion:;
+ (id)mui_spotlightSuggestionFromSerializedRepresentation:()MailUI;
+ (id)mui_suggestionForSpotlightQueryWithString:()MailUI;
- (BOOL)mui_isEmpty;
- (id)mui_serializedSpotlightSuggestionRepresentation;
- (void)mui_serializedSpotlightSuggestionRepresentation;
@end

@implementation CSSuggestion(MailUI)

+ (id)mui_log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__CSSuggestion_MailUI__mui_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (mui_log_onceToken != -1)
  {
    dispatch_once(&mui_log_onceToken, block);
  }

  v1 = mui_log_log;

  return v1;
}

+ (id)mui_emptySuggestion
{
  if (mui_emptySuggestion_onceToken != -1)
  {
    +[CSSuggestion(MailUI) mui_emptySuggestion];
  }

  v1 = mui_emptySuggestion_emptySuggestion;

  return v1;
}

+ (id)mui_spotlightSuggestionForEmailAddress:()MailUI scope:currentSuggestion:
{
  v7 = a3;
  mui_emptySuggestion = a5;
  if (a4 > 2)
  {
    v10 = 0;
  }

  else
  {
    v9 = [(__CFString *)off_278188AF0[a4] stringByAppendingString:v7];
    if (!mui_emptySuggestion)
    {
      mui_emptySuggestion = [MEMORY[0x277CC34D8] mui_emptySuggestion];
    }

    v10 = [MEMORY[0x277CC34D8] updatedSuggestionWithCurrentSuggestion:mui_emptySuggestion highlightedText:v9];
  }

  return v10;
}

+ (id)mui_spotlightSuggestionFromSerializedRepresentation:()MailUI
{
  v3 = a3;
  if (v3)
  {
    v8 = 0;
    v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v8];
    mui_log2 = v8;
    if (!v4)
    {
      mui_log = [MEMORY[0x277CC34D8] mui_log];
      if (os_log_type_enabled(mui_log, OS_LOG_TYPE_ERROR))
      {
        [CSSuggestion(MailUI) mui_spotlightSuggestionFromSerializedRepresentation:mui_log2];
      }
    }
  }

  else
  {
    mui_log2 = [MEMORY[0x277CC34D8] mui_log];
    if (os_log_type_enabled(mui_log2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_214A5E000, mui_log2, OS_LOG_TYPE_DEFAULT, "Could not decode data as CSSuggestion. Reason: Data is nil", buf, 2u);
    }

    v4 = 0;
  }

  return v4;
}

+ (id)mui_mergeCurrentSuggestion:()MailUI suggestion:
{
  v5 = a4;
  v6 = a3;
  userQueryString = [v6 userQueryString];
  currentTokens = [v6 currentTokens];

  if ([userQueryString length] || objc_msgSend(currentTokens, "count"))
  {
    v9 = [userQueryString length];
    userQueryString2 = [v5 userQueryString];
    if (v9)
    {
      v11 = [userQueryString stringByAppendingString:userQueryString2];

      userQueryString2 = v11;
    }

    userQueryString3 = [v5 userQueryString];
    v13 = [userQueryString3 isEqualToString:userQueryString];

    if (v13)
    {
      userQueryString4 = [v5 userQueryString];

      userQueryString2 = userQueryString4;
    }

    controlCharacterSet = [MEMORY[0x277CCA900] controlCharacterSet];
    v16 = [userQueryString2 stringByTrimmingCharactersInSet:controlCharacterSet];

    currentTokens2 = [v5 currentTokens];
    v18 = [currentTokens arrayByAddingObjectsFromArray:currentTokens2];

    v19 = MEMORY[0x277CC34D8];
    emptySuggestion = [MEMORY[0x277CC34D8] emptySuggestion];
    v21 = [v19 updatedSuggestionWithCurrentSuggestion:emptySuggestion userString:v16 tokens:v18];
  }

  else
  {
    v21 = v5;
  }

  return v21;
}

- (id)mui_serializedSpotlightSuggestionRepresentation
{
  v5 = 0;
  v1 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v5];
  v2 = v5;
  if (!v1)
  {
    mui_log = [MEMORY[0x277CC34D8] mui_log];
    if (os_log_type_enabled(mui_log, OS_LOG_TYPE_ERROR))
    {
      [(CSSuggestion(MailUI) *)v2 mui_serializedSpotlightSuggestionRepresentation];
    }
  }

  return v1;
}

- (BOOL)mui_isEmpty
{
  suggestionTokens = [self suggestionTokens];
  if ([suggestionTokens count])
  {
    v3 = 0;
  }

  else
  {
    userQueryString = [self userQueryString];
    v3 = [userQueryString length] == 0;
  }

  return v3;
}

+ (id)mui_suggestionForSpotlightQueryWithString:()MailUI
{
  v3 = MEMORY[0x277CC34D8];
  v4 = a3;
  emptySuggestion = [v3 emptySuggestion];
  v6 = [v3 updatedSuggestionWithCurrentSuggestion:emptySuggestion userString:v4 tokens:MEMORY[0x277CBEBF8]];

  return v6;
}

+ (void)mui_spotlightSuggestionFromSerializedRepresentation:()MailUI .cold.1(void *a1)
{
  v1 = [a1 ef_publicDescription];
  OUTLINED_FUNCTION_0(&dword_214A5E000, v2, v3, "Could not decode data as CSSuggestion. Error: %{public}@", v4, v5, v6, v7, 2u);
}

- (void)mui_serializedSpotlightSuggestionRepresentation
{
  ef_publicDescription = [self ef_publicDescription];
  OUTLINED_FUNCTION_0(&dword_214A5E000, v2, v3, "Failed to encode data from CSSuggestion. Error: %{public}@", v4, v5, v6, v7, 2u);
}

@end