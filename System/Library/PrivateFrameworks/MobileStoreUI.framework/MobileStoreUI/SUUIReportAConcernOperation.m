@interface SUUIReportAConcernOperation
- (SUUIReportAConcernOperation)initWithMetadata:(id)a3;
- (id)_httpBody;
- (void)run;
@end

@implementation SUUIReportAConcernOperation

- (SUUIReportAConcernOperation)initWithMetadata:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUUIReportAConcernOperation;
  v6 = [(SUUIReportAConcernOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metadata, a3);
  }

  return v7;
}

- (void)run
{
  v3 = objc_alloc_init(MEMORY[0x277D7FD48]);
  v4 = [(SUUIReportAConcernOperation *)self metadata];
  v5 = [v4 reportConcernURL];

  v6 = [objc_alloc(MEMORY[0x277D69BD0]) initWithURL:v5];
  [v6 setAllowedRetryCount:0];
  [v6 setCachePolicy:1];
  v7 = [(SUUIReportAConcernOperation *)self _httpBody];
  [v6 setHTTPBody:v7];

  [v6 setHTTPMethod:@"POST"];
  [v3 setRequestProperties:v6];
  v8 = [MEMORY[0x277D7FD30] provider];
  [v8 setShouldProcessDialogs:0];
  [v3 setDataProvider:v8];
  v14 = 0;
  v9 = [(SUUIReportAConcernOperation *)self runSubOperation:v3 returningError:&v14];
  v10 = v14;
  v11 = 0;
  if (v9)
  {
    v12 = [v8 output];
    v13 = [v12 objectForKey:@"status-code"];
    objc_opt_class();
    v11 = (objc_opt_isKindOfClass() & 1) != 0 && [v13 integerValue] == 3200;
    [(SUUIReportAConcernOperation *)self setResponseDictionary:v12];
  }

  [(SUUIReportAConcernOperation *)self setError:v10];
  [(SUUIReportAConcernOperation *)self setSuccess:v11];
}

- (id)_httpBody
{
  v2 = [(SUUIReportAConcernOperation *)self metadata];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", objc_msgSend(v2, "itemIdentifier")];
  [v3 setObject:v4 forKey:@"userReviewId"];

  v5 = [v2 selectedReason];
  v6 = [v5 reasonID];

  v7 = [v6 stringValue];
  v8 = [v7 length];

  if (v8)
  {
    [v3 setObject:v6 forKey:@"selectedReson"];
  }

  v9 = [v2 details];
  if ([v9 length])
  {
    [v3 setObject:v9 forKey:@"explanation"];
  }

  v10 = [MEMORY[0x277D7FCE0] sharedInstance];
  v11 = [v10 guid];

  if (v11)
  {
    [v3 setObject:v11 forKey:@"guid"];
  }

  v12 = [MEMORY[0x277CBEBC0] queryStringForDictionary:v3 escapedValues:1];
  v13 = [v12 dataUsingEncoding:4];

  return v13;
}

@end