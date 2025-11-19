@interface FCFeedPrewarmRequest
- (BOOL)isEqual:(id)a3;
- (FCFeedPrewarmRequest)initWithRequestKey:(id)a3 feedRequests:(id)a4 options:(int64_t)a5 edgeCacheHint:(id)a6;
- (id)description;
- (unint64_t)hash;
@end

@implementation FCFeedPrewarmRequest

- (FCFeedPrewarmRequest)initWithRequestKey:(id)a3 feedRequests:(id)a4 options:(int64_t)a5 edgeCacheHint:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = FCFeedPrewarmRequest;
  v14 = [(FCFeedPrewarmRequest *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_requestKey, a3);
    objc_storeStrong(&v15->_feedRequests, a4);
    v15->_options = a5;
    objc_storeStrong(&v15->_edgeCacheHint, a6);
  }

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [(FCFeedPrewarmRequest *)self requestKey];
    v8 = [v6 requestKey];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(FCFeedPrewarmRequest *)self requestKey];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = [[FCDescription alloc] initWithObject:self];
  v4 = [(FCFeedPrewarmRequest *)self requestKey];
  [(FCDescription *)v3 addField:@"requestKey" object:v4];

  v5 = [(FCDescription *)v3 descriptionString];

  return v5;
}

@end