@interface _GKURLRequestDictionaryKey
+ (id)keyWithRequest:(id)a3;
- (BOOL)isEqual:(id)a3;
- (_GKURLRequestDictionaryKey)initWithRequest:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation _GKURLRequestDictionaryKey

- (_GKURLRequestDictionaryKey)initWithRequest:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _GKURLRequestDictionaryKey;
  v5 = [(_GKURLRequestDictionaryKey *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    request = v5->_request;
    v5->_request = v6;
  }

  return v5;
}

+ (id)keyWithRequest:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithRequest:v4];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  request = self->_request;
  v6 = objc_opt_class();
  v7 = [(NSURLRequest *)self->_request URL];
  v8 = [v7 absoluteString];
  v9 = [v3 stringWithFormat:@"<%@ %p> %@ %@", v4, self, v6, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 request];
    v6 = [v5 URL];
    v7 = [(NSURLRequest *)self->_request URL];
    v8 = [v6 isEqual:v7];

    if (v8)
    {
      v9 = [(NSURLRequest *)self->_request HTTPMethod];
      v10 = [(NSURLRequest *)self->_request HTTPMethod];
      if (v9 == v10 || [v9 isEqual:v10])
      {
        v11 = [v5 allHTTPHeaderFields];
        v12 = [(NSURLRequest *)self->_request allHTTPHeaderFields];
        if (v11 == v12 || [v11 isEqual:v12])
        {
          v13 = [v5 HTTPBody];
          v14 = [(NSURLRequest *)self->_request HTTPBody];
          v15 = v13 == v14 || [v13 isEqual:v14];
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