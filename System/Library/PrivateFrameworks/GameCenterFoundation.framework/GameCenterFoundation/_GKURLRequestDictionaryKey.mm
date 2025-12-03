@interface _GKURLRequestDictionaryKey
+ (id)keyWithRequest:(id)request;
- (BOOL)isEqual:(id)equal;
- (_GKURLRequestDictionaryKey)initWithRequest:(id)request;
- (id)description;
- (unint64_t)hash;
@end

@implementation _GKURLRequestDictionaryKey

- (_GKURLRequestDictionaryKey)initWithRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = _GKURLRequestDictionaryKey;
  v5 = [(_GKURLRequestDictionaryKey *)&v9 init];
  if (v5)
  {
    v6 = [requestCopy copy];
    request = v5->_request;
    v5->_request = v6;
  }

  return v5;
}

+ (id)keyWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[self alloc] initWithRequest:requestCopy];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  request = self->_request;
  v6 = objc_opt_class();
  v7 = [(NSURLRequest *)self->_request URL];
  absoluteString = [v7 absoluteString];
  v9 = [v3 stringWithFormat:@"<%@ %p> %@ %@", v4, self, v6, absoluteString];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    request = [equalCopy request];
    v6 = [request URL];
    v7 = [(NSURLRequest *)self->_request URL];
    v8 = [v6 isEqual:v7];

    if (v8)
    {
      hTTPMethod = [(NSURLRequest *)self->_request HTTPMethod];
      hTTPMethod2 = [(NSURLRequest *)self->_request HTTPMethod];
      if (hTTPMethod == hTTPMethod2 || [hTTPMethod isEqual:hTTPMethod2])
      {
        allHTTPHeaderFields = [request allHTTPHeaderFields];
        allHTTPHeaderFields2 = [(NSURLRequest *)self->_request allHTTPHeaderFields];
        if (allHTTPHeaderFields == allHTTPHeaderFields2 || [allHTTPHeaderFields isEqual:allHTTPHeaderFields2])
        {
          hTTPBody = [request HTTPBody];
          hTTPBody2 = [(NSURLRequest *)self->_request HTTPBody];
          v15 = hTTPBody == hTTPBody2 || [hTTPBody isEqual:hTTPBody2];
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (unint64_t)hash
{
  v2 = [(NSURLRequest *)self->_request URL];
  v3 = [v2 hash];

  return v3;
}

@end