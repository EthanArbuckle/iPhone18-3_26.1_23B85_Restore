@interface MSParsecSearchSessionInstantAnswer
- (MSParsecSearchSessionInstantAnswer)initWithIdentifier:(id)a3 date:(id)a4 inlineCard:(id)a5 isInstantAnswerUpdated:(BOOL)a6;
- (id)feedbackResult;
@end

@implementation MSParsecSearchSessionInstantAnswer

- (MSParsecSearchSessionInstantAnswer)initWithIdentifier:(id)a3 date:(id)a4 inlineCard:(id)a5 isInstantAnswerUpdated:(BOOL)a6
{
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MSParsecSearchSessionInstantAnswer;
  v12 = [(MSParsecSearchSessionMessageResult *)&v15 initResultWithIdentifier:a3 date:a4];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(v12 + 5, a5);
    v13->_isInstantAnswerUpdated = a6;
  }

  return v13;
}

- (id)feedbackResult
{
  v6.receiver = self;
  v6.super_class = MSParsecSearchSessionInstantAnswer;
  v3 = [(MSParsecSearchSessionMessageResult *)&v6 feedbackResult];
  [v3 setIsInstantAnswer:1];
  [v3 setResultBundleId:@"com.apple.mail.search.instantanswer"];
  [v3 setSectionBundleIdentifier:@"instantanswer"];
  [v3 setInlineCard:self->_inlineCard];
  NSSelectorFromString(&cfstr_Ismailinstanta.isa);
  if (objc_opt_respondsToSelector())
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_isInstantAnswerUpdated];
    [v3 setValue:v4 forKey:@"isMailInstantAnswerUpdated"];
  }

  return v3;
}

@end