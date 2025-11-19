@interface SGConversationHistory
- (SGConversationHistory)initWithMessages:(id)a3;
@end

@implementation SGConversationHistory

- (SGConversationHistory)initWithMessages:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = SGConversationHistory;
  v6 = [(SGConversationHistory *)&v12 init];
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = sgMapAndFilter();
    objc_storeStrong(&v6->_messages, a3);
    v9 = [MEMORY[0x277D3A248] detectLanguageFromLanguageTags:v8];
    likelyLanguage = v6->_likelyLanguage;
    v6->_likelyLanguage = v9;

    objc_autoreleasePoolPop(v7);
  }

  return v6;
}

@end