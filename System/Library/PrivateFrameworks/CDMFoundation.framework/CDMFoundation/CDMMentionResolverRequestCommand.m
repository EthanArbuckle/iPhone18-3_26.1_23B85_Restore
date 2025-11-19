@interface CDMMentionResolverRequestCommand
- (CDMMentionResolverRequestCommand)initWithMRRequest:(id)a3;
- (id)description;
@end

@implementation CDMMentionResolverRequestCommand

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v4 = [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self->_mrRequest dictionaryRepresentation];
  v5 = [v3 initWithDictionary:v4];

  [v5 removeObjectForKey:@"embedding_tensor"];
  [v5 removeObjectForKey:@"matching_spans"];
  v6 = [v5 description];

  return v6;
}

- (CDMMentionResolverRequestCommand)initWithMRRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CDMMentionResolverRequestCommand;
  v6 = [(CDMBaseCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mrRequest, a3);
  }

  return v7;
}

@end