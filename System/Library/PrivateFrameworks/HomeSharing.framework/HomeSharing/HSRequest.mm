@interface HSRequest
+ (id)request;
- (HSRequest)initWithAction:(id)action;
- (id)URLRequestForBaseURL:(id)l sessionID:(unsigned int)d;
- (id)description;
- (id)requestURLForBaseURL:(id)l sessionID:(unsigned int)d;
- (void)setValue:(id)value forArgument:(id)argument;
@end

@implementation HSRequest

- (id)URLRequestForBaseURL:(id)l sessionID:(unsigned int)d
{
  v5 = [(HSRequest *)self requestURLForBaseURL:l sessionID:*&d];
  v6 = MEMORY[0x277CCAB70];
  [(HSRequest *)self timeoutInterval];
  v7 = [v6 requestWithURL:v5 cachePolicy:0 timeoutInterval:?];
  v8 = v7;
  if (self->_method == 1)
  {
    v9 = @"POST";
  }

  else
  {
    v9 = @"GET";
  }

  [v7 setHTTPMethod:v9];
  if ([(HSRequest *)self acceptsGzipEncoding])
  {
    [v8 setValue:@"gzip" forHTTPHeaderField:@"Accept-Encoding"];
  }

  if ([(NSData *)self->_bodyData length])
  {
    [v8 setHTTPBody:self->_bodyData];
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.%d", 3, 16];
  [v8 setValue:v10 forHTTPHeaderField:@"Client-iTunes-Sharing-Version"];

  return v8;
}

- (id)requestURLForBaseURL:(id)l sessionID:(unsigned int)d
{
  v4 = *&d;
  lCopy = l;
  v7 = [(NSString *)self->_action mutableCopy];
  if (v4)
  {
    arguments = self->_arguments;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
    [(NSDictionary *)arguments setValue:v9 forKey:@"session-id"];
  }

  if ([(NSDictionary *)self->_arguments count])
  {
    array = [MEMORY[0x277CBEB18] array];
    v11 = self->_arguments;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __44__HSRequest_requestURLForBaseURL_sessionID___block_invoke;
    v16[3] = &unk_27977A3C8;
    v17 = array;
    v12 = array;
    [(NSDictionary *)v11 enumerateKeysAndObjectsUsingBlock:v16];
    v13 = [v12 componentsJoinedByString:@"&"];
    [v7 appendString:@"?"];
    [v7 appendString:v13];
  }

  v14 = [MEMORY[0x277CBEBC0] URLWithString:v7 relativeToURL:lCopy];

  return v14;
}

void __44__HSRequest_requestURLForBaseURL_sessionID___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", a2, a3];
  [v3 addObject:v4];
}

- (void)setValue:(id)value forArgument:(id)argument
{
  valueCopy = value;
  argumentCopy = argument;
  arguments = self->_arguments;
  if (!arguments)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = self->_arguments;
    self->_arguments = v8;

    arguments = self->_arguments;
  }

  [(NSDictionary *)arguments setObject:valueCopy forKey:argumentCopy];
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = HSRequest;
  v3 = [(HSRequest *)&v8 description];
  v4 = v3;
  v5 = @"GET";
  if (self->_method == 1)
  {
    v5 = @"POST";
  }

  v6 = [v3 stringByAppendingFormat:@" %@ [%@]", v5, self->_action];

  return v6;
}

- (HSRequest)initWithAction:(id)action
{
  actionCopy = action;
  v9.receiver = self;
  v9.super_class = HSRequest;
  v5 = [(HSRequest *)&v9 init];
  if (v5)
  {
    v6 = [actionCopy copy];
    action = v5->_action;
    v5->_action = v6;
  }

  return v5;
}

+ (id)request
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"subclass must implement"];
  }

  v3 = objc_alloc_init(objc_opt_class());

  return v3;
}

@end