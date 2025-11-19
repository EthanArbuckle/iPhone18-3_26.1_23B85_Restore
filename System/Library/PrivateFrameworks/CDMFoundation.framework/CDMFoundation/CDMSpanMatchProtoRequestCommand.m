@interface CDMSpanMatchProtoRequestCommand
- (CDMSpanMatchProtoRequestCommand)initWithRequest:(id)a3;
- (CDMSpanMatchProtoRequestCommand)initWithRequests:(id)a3;
- (CDMSpanMatchProtoRequestCommand)initWithRequests:(id)a3 asrHypothesis:(id)a4 selfMetadata:(id)a5;
- (CDMSpanMatchProtoRequestCommand)initWithRequests:(id)a3 selfMetadata:(id)a4;
@end

@implementation CDMSpanMatchProtoRequestCommand

- (CDMSpanMatchProtoRequestCommand)initWithRequests:(id)a3 asrHypothesis:(id)a4 selfMetadata:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CDMSpanMatchProtoRequestCommand;
  v12 = [(CDMBaseCommand *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_spanMatchRequests, a3);
    objc_storeStrong(&v13->_asrHypothesis, a4);
    objc_storeStrong(&v13->_selfMetadata, a5);
  }

  return v13;
}

- (CDMSpanMatchProtoRequestCommand)initWithRequests:(id)a3 selfMetadata:(id)a4
{
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 array];
  v10 = [(CDMSpanMatchProtoRequestCommand *)self initWithRequests:v8 asrHypothesis:v9 selfMetadata:v7];

  return v10;
}

- (CDMSpanMatchProtoRequestCommand)initWithRequests:(id)a3
{
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 array];
  v7 = [(CDMSpanMatchProtoRequestCommand *)self initWithRequests:v5 asrHypothesis:v6 selfMetadata:0];

  return v7;
}

- (CDMSpanMatchProtoRequestCommand)initWithRequest:(id)a3
{
  v4 = [MEMORY[0x1E695DEC8] arrayWithObject:a3];
  v5 = [(CDMSpanMatchProtoRequestCommand *)self initWithRequests:v4];

  return v5;
}

@end