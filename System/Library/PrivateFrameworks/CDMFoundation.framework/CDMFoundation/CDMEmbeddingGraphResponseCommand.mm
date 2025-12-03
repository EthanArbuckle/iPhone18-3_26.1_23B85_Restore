@interface CDMEmbeddingGraphResponseCommand
- (CDMEmbeddingGraphResponseCommand)initWithCoder:(id)coder;
- (CDMEmbeddingGraphResponseCommand)initWithEmbeddingProtoResponseCommand:(id)command;
- (id)convertResponseToSubwordResponse;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CDMEmbeddingGraphResponseCommand

- (id)convertResponseToSubwordResponse
{
  v2 = MEMORY[0x1E69D1418];
  embeddingProtoResponseCommand = [(CDMEmbeddingGraphResponseCommand *)self embeddingProtoResponseCommand];
  response = [embeddingProtoResponseCommand response];
  v5 = [v2 convertToSubwordEmbeddingResponse:response];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = CDMEmbeddingGraphResponseCommand;
  [(CDMServiceGraphCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_embeddingProtoResponseCommand forKey:@"embeddingProtoResponseCommand"];
}

- (CDMEmbeddingGraphResponseCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CDMEmbeddingGraphResponseCommand;
  v5 = [(CDMServiceGraphCommand *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"embeddingProtoResponseCommand"];
    embeddingProtoResponseCommand = v5->_embeddingProtoResponseCommand;
    v5->_embeddingProtoResponseCommand = v6;
  }

  return v5;
}

- (CDMEmbeddingGraphResponseCommand)initWithEmbeddingProtoResponseCommand:(id)command
{
  commandCopy = command;
  v9.receiver = self;
  v9.super_class = CDMEmbeddingGraphResponseCommand;
  v6 = [(CDMBaseCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_embeddingProtoResponseCommand, command);
  }

  return v7;
}

@end