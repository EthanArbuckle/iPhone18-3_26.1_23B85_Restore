@interface CDMSpanMatcherRequestCommand
- (CDMSpanMatcherRequestCommand)initWithRequest:(id)request;
- (CDMSpanMatcherRequestCommand)initWithRequests:(id)requests;
- (CDMSpanMatcherRequestCommand)initWithRequests:(id)requests asrHypothesis:(id)hypothesis selfMetadata:(id)metadata;
- (CDMSpanMatcherRequestCommand)initWithRequests:(id)requests selfMetadata:(id)metadata;
@end

@implementation CDMSpanMatcherRequestCommand

- (CDMSpanMatcherRequestCommand)initWithRequests:(id)requests asrHypothesis:(id)hypothesis selfMetadata:(id)metadata
{
  requestsCopy = requests;
  hypothesisCopy = hypothesis;
  metadataCopy = metadata;
  v15.receiver = self;
  v15.super_class = CDMSpanMatcherRequestCommand;
  v12 = [(CDMBaseCommand *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_spanMatchRequests, requests);
    objc_storeStrong(&v13->_asrHypothesis, hypothesis);
    objc_storeStrong(&v13->_selfMetadata, metadata);
  }

  return v13;
}

- (CDMSpanMatcherRequestCommand)initWithRequests:(id)requests selfMetadata:(id)metadata
{
  v6 = MEMORY[0x1E695DEC8];
  metadataCopy = metadata;
  requestsCopy = requests;
  array = [v6 array];
  v10 = [(CDMSpanMatcherRequestCommand *)self initWithRequests:requestsCopy asrHypothesis:array selfMetadata:metadataCopy];

  return v10;
}

- (CDMSpanMatcherRequestCommand)initWithRequests:(id)requests
{
  v4 = MEMORY[0x1E695DEC8];
  requestsCopy = requests;
  array = [v4 array];
  v7 = [(CDMSpanMatcherRequestCommand *)self initWithRequests:requestsCopy asrHypothesis:array selfMetadata:0];

  return v7;
}

- (CDMSpanMatcherRequestCommand)initWithRequest:(id)request
{
  v4 = [MEMORY[0x1E695DEC8] arrayWithObject:request];
  v5 = [(CDMSpanMatcherRequestCommand *)self initWithRequests:v4];

  return v5;
}

@end