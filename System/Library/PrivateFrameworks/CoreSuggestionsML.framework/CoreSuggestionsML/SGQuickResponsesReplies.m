@interface SGQuickResponsesReplies
+ (id)normalizeReplyText:(id)a3;
+ (id)repliesWithArray:(id)a3;
- (SGQuickResponsesReplies)initWithArray:(id)a3;
- (id)normalizedReplyTextsSet;
- (id)replyTextForIndex:(unint64_t)a3 position:(unint64_t)a4;
- (id)replyTextForIndexAndPosition:(id)a3;
- (id)replyTextsForIndex:(unint64_t)a3;
- (unint64_t)maxDistinctReplies;
- (unint64_t)modelCount;
- (unint64_t)replyClassCount;
- (unint64_t)replyCountForIndex:(unint64_t)a3;
- (unint64_t)replyTextCount;
@end

@implementation SGQuickResponsesReplies

- (SGQuickResponsesReplies)initWithArray:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesConfig.m" lineNumber:488 description:{@"%@ must implement -initWithArray:", objc_opt_class()}];

  return 0;
}

- (unint64_t)maxDistinctReplies
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesConfig.m" lineNumber:482 description:{@"%@ must implement -maxDistinctReplies:", objc_opt_class()}];

  return 0;
}

- (unint64_t)modelCount
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesConfig.m" lineNumber:476 description:{@"%@ must implement -modelCount:", objc_opt_class()}];

  return 0;
}

- (unint64_t)replyClassCount
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesConfig.m" lineNumber:470 description:{@"%@ must implement -replyClassCount:", objc_opt_class()}];

  return 0;
}

- (unint64_t)replyTextCount
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesConfig.m" lineNumber:464 description:{@"%@ must implement -replyTextCount:", objc_opt_class()}];

  return 0;
}

- (unint64_t)replyCountForIndex:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesConfig.m" lineNumber:458 description:{@"%@ must implement -replyTextCount:", objc_opt_class()}];

  return 0;
}

- (id)replyTextsForIndex:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesConfig.m" lineNumber:452 description:{@"%@ must implement -replyTextsForIndex:", objc_opt_class()}];

  return 0;
}

- (id)replyTextForIndexAndPosition:(id)a3
{
  v4 = a3;
  v5 = [v4 first];
  v6 = [v5 unsignedIntegerValue];
  v7 = [v4 second];

  v8 = -[SGQuickResponsesReplies replyTextForIndex:position:](self, "replyTextForIndex:position:", v6, [v7 unsignedIntegerValue]);

  return v8;
}

- (id)replyTextForIndex:(unint64_t)a3 position:(unint64_t)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesConfig.m" lineNumber:441 description:{@"%@ must implement -replyTextsForIndex:position:", objc_opt_class()}];

  return 0;
}

- (id)normalizedReplyTextsSet
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesConfig.m" lineNumber:435 description:{@"%@ must implement -normalizedReplyTextsSet:", objc_opt_class()}];

  return 0;
}

+ (id)repliesWithArray:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {

    v5 = [v4 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = SGQuickResponsesRepliesNested;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
          {
            *v9 = 0;
            _os_log_fault_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Failure to read SGQuickResponsesReplies from config.", v9, 2u);
          }

          v7 = 0;
          goto LABEL_11;
        }
      }

      v6 = SGQuickResponsesRepliesFlattened;
    }

    v7 = [[v6 alloc] initWithArray:v4];
LABEL_11:

    goto LABEL_12;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "array", buf, 2u);
  }

  v7 = 0;
LABEL_12:

  return v7;
}

+ (id)normalizeReplyText:(id)a3
{
  v3 = SGNormalizeEmojisInString(a3);
  v4 = [v3 localizedLowercaseString];

  return v4;
}

@end