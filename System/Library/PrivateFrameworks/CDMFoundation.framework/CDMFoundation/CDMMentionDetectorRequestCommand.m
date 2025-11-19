@interface CDMMentionDetectorRequestCommand
- (CDMMentionDetectorRequestCommand)initWithMDRequest:(id)a3 withCurrTurn:(id)a4;
- (id)description;
@end

@implementation CDMMentionDetectorRequestCommand

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v4 = [(SIRINLUINTERNALMENTION_DETECTORMentionDetectorRequest *)self->_mdRequest dictionaryRepresentation];
  v5 = [v3 initWithDictionary:v4];

  [v5 removeObjectForKey:@"embedding_tensor"];
  [v5 removeObjectForKey:@"matching_spans"];
  v6 = [v5 description];

  return v6;
}

- (CDMMentionDetectorRequestCommand)initWithMDRequest:(id)a3 withCurrTurn:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CDMMentionDetectorRequestCommand;
  v9 = [(CDMBaseCommand *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mdRequest, a3);
    objc_storeStrong(&v10->_turnInput, a4);
  }

  return v10;
}

@end