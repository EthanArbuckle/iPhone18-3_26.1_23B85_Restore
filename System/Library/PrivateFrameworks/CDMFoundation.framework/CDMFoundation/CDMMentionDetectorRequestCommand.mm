@interface CDMMentionDetectorRequestCommand
- (CDMMentionDetectorRequestCommand)initWithMDRequest:(id)request withCurrTurn:(id)turn;
- (id)description;
@end

@implementation CDMMentionDetectorRequestCommand

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  dictionaryRepresentation = [(SIRINLUINTERNALMENTION_DETECTORMentionDetectorRequest *)self->_mdRequest dictionaryRepresentation];
  v5 = [v3 initWithDictionary:dictionaryRepresentation];

  [v5 removeObjectForKey:@"embedding_tensor"];
  [v5 removeObjectForKey:@"matching_spans"];
  v6 = [v5 description];

  return v6;
}

- (CDMMentionDetectorRequestCommand)initWithMDRequest:(id)request withCurrTurn:(id)turn
{
  requestCopy = request;
  turnCopy = turn;
  v12.receiver = self;
  v12.super_class = CDMMentionDetectorRequestCommand;
  v9 = [(CDMBaseCommand *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mdRequest, request);
    objc_storeStrong(&v10->_turnInput, turn);
  }

  return v10;
}

@end