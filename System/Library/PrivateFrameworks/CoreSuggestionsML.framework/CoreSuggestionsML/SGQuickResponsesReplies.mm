@interface SGQuickResponsesReplies
+ (id)normalizeReplyText:(id)text;
+ (id)repliesWithArray:(id)array;
- (SGQuickResponsesReplies)initWithArray:(id)array;
- (id)normalizedReplyTextsSet;
- (id)replyTextForIndex:(unint64_t)index position:(unint64_t)position;
- (id)replyTextForIndexAndPosition:(id)position;
- (id)replyTextsForIndex:(unint64_t)index;
- (unint64_t)maxDistinctReplies;
- (unint64_t)modelCount;
- (unint64_t)replyClassCount;
- (unint64_t)replyCountForIndex:(unint64_t)index;
- (unint64_t)replyTextCount;
@end

@implementation SGQuickResponsesReplies

- (SGQuickResponsesReplies)initWithArray:(id)array
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesConfig.m" lineNumber:488 description:{@"%@ must implement -initWithArray:", objc_opt_class()}];

  return 0;
}

- (unint64_t)maxDistinctReplies
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesConfig.m" lineNumber:482 description:{@"%@ must implement -maxDistinctReplies:", objc_opt_class()}];

  return 0;
}

- (unint64_t)modelCount
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesConfig.m" lineNumber:476 description:{@"%@ must implement -modelCount:", objc_opt_class()}];

  return 0;
}

- (unint64_t)replyClassCount
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesConfig.m" lineNumber:470 description:{@"%@ must implement -replyClassCount:", objc_opt_class()}];

  return 0;
}

- (unint64_t)replyTextCount
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesConfig.m" lineNumber:464 description:{@"%@ must implement -replyTextCount:", objc_opt_class()}];

  return 0;
}

- (unint64_t)replyCountForIndex:(unint64_t)index
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesConfig.m" lineNumber:458 description:{@"%@ must implement -replyTextCount:", objc_opt_class()}];

  return 0;
}

- (id)replyTextsForIndex:(unint64_t)index
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesConfig.m" lineNumber:452 description:{@"%@ must implement -replyTextsForIndex:", objc_opt_class()}];

  return 0;
}

- (id)replyTextForIndexAndPosition:(id)position
{
  positionCopy = position;
  first = [positionCopy first];
  unsignedIntegerValue = [first unsignedIntegerValue];
  second = [positionCopy second];

  v8 = -[SGQuickResponsesReplies replyTextForIndex:position:](self, "replyTextForIndex:position:", unsignedIntegerValue, [second unsignedIntegerValue]);

  return v8;
}

- (id)replyTextForIndex:(unint64_t)index position:(unint64_t)position
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesConfig.m" lineNumber:441 description:{@"%@ must implement -replyTextsForIndex:position:", objc_opt_class()}];

  return 0;
}

- (id)normalizedReplyTextsSet
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesConfig.m" lineNumber:435 description:{@"%@ must implement -normalizedReplyTextsSet:", objc_opt_class()}];

  return 0;
}

+ (id)repliesWithArray:(id)array
{
  arrayCopy = array;
  v4 = arrayCopy;
  if (arrayCopy)
  {

    firstObject = [v4 firstObject];
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

+ (id)normalizeReplyText:(id)text
{
  v3 = SGNormalizeEmojisInString(text);
  localizedLowercaseString = [v3 localizedLowercaseString];

  return localizedLowercaseString;
}

@end