@interface MSParsecSearchSessionInstantAnswer
- (MSParsecSearchSessionInstantAnswer)initWithIdentifier:(id)identifier date:(id)date inlineCard:(id)card isInstantAnswerUpdated:(BOOL)updated;
- (id)feedbackResult;
@end

@implementation MSParsecSearchSessionInstantAnswer

- (MSParsecSearchSessionInstantAnswer)initWithIdentifier:(id)identifier date:(id)date inlineCard:(id)card isInstantAnswerUpdated:(BOOL)updated
{
  cardCopy = card;
  v15.receiver = self;
  v15.super_class = MSParsecSearchSessionInstantAnswer;
  v12 = [(MSParsecSearchSessionMessageResult *)&v15 initResultWithIdentifier:identifier date:date];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(v12 + 5, card);
    v13->_isInstantAnswerUpdated = updated;
  }

  return v13;
}

- (id)feedbackResult
{
  v6.receiver = self;
  v6.super_class = MSParsecSearchSessionInstantAnswer;
  feedbackResult = [(MSParsecSearchSessionMessageResult *)&v6 feedbackResult];
  [feedbackResult setIsInstantAnswer:1];
  [feedbackResult setResultBundleId:@"com.apple.mail.search.instantanswer"];
  [feedbackResult setSectionBundleIdentifier:@"instantanswer"];
  [feedbackResult setInlineCard:self->_inlineCard];
  NSSelectorFromString(&cfstr_Ismailinstanta.isa);
  if (objc_opt_respondsToSelector())
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_isInstantAnswerUpdated];
    [feedbackResult setValue:v4 forKey:@"isMailInstantAnswerUpdated"];
  }

  return feedbackResult;
}

@end