@interface FCFeedPrewarmRequest
- (BOOL)isEqual:(id)equal;
- (FCFeedPrewarmRequest)initWithRequestKey:(id)key feedRequests:(id)requests options:(int64_t)options edgeCacheHint:(id)hint;
- (id)description;
- (unint64_t)hash;
@end

@implementation FCFeedPrewarmRequest

- (FCFeedPrewarmRequest)initWithRequestKey:(id)key feedRequests:(id)requests options:(int64_t)options edgeCacheHint:(id)hint
{
  keyCopy = key;
  requestsCopy = requests;
  hintCopy = hint;
  v17.receiver = self;
  v17.super_class = FCFeedPrewarmRequest;
  v14 = [(FCFeedPrewarmRequest *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_requestKey, key);
    objc_storeStrong(&v15->_feedRequests, requests);
    v15->_options = options;
    objc_storeStrong(&v15->_edgeCacheHint, hint);
  }

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (equalCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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
    requestKey = [(FCFeedPrewarmRequest *)self requestKey];
    requestKey2 = [v6 requestKey];
    v9 = [requestKey isEqual:requestKey2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  requestKey = [(FCFeedPrewarmRequest *)self requestKey];
  v3 = [requestKey hash];

  return v3;
}

- (id)description
{
  v3 = [[FCDescription alloc] initWithObject:self];
  requestKey = [(FCFeedPrewarmRequest *)self requestKey];
  [(FCDescription *)v3 addField:@"requestKey" object:requestKey];

  descriptionString = [(FCDescription *)v3 descriptionString];

  return descriptionString;
}

@end