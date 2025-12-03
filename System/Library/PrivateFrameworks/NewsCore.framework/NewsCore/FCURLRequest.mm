@interface FCURLRequest
- (id)description;
@end

@implementation FCURLRequest

uint64_t __26__FCURLRequest_comparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  if (a2)
  {
    v5 = a2;
    v6 = v5;
    if (v4)
    {
      v7 = v4[3];
    }

    else
    {
      v7 = 0;
    }

    v8 = v5[3];
    v9 = v7 < v8;
    v10 = v7 > v8;
    if (v9)
    {
      v11 = -1;
    }

    else
    {
      v11 = v10;
    }

    if (!v11)
    {
      if (v4)
      {
        v12 = v4[4];
      }

      else
      {
        v12 = 0;
      }

      v13 = v5[4];
      v11 = [v13 compare:v12];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = [[FCDescription alloc] initWithObject:self];
  if (self)
  {
    v4 = [(NSURLRequest *)self->_URLRequest URL];
    absoluteString = [v4 absoluteString];
    [(FCDescription *)v3 addField:@"URL" value:absoluteString];

    priority = self->_priority;
  }

  else
  {
    v12 = [0 URL];
    absoluteString2 = [v12 absoluteString];
    [(FCDescription *)v3 addField:@"URL" value:absoluteString2];

    priority = 0;
  }

  v7 = FCStringFromRelativePriority(priority);
  [(FCDescription *)v3 addField:@"priority" object:v7];

  if (self)
  {
    v8 = [(NSDate *)self->_dateInitiated description];
    [(FCDescription *)v3 addField:@"dateInitiated" object:v8];

    loggingKey = self->_loggingKey;
  }

  else
  {
    v14 = [0 description];
    [(FCDescription *)v3 addField:@"dateInitiated" object:v14];

    loggingKey = 0;
  }

  [(FCDescription *)v3 addField:@"loggingKey" object:loggingKey];
  descriptionString = [(FCDescription *)v3 descriptionString];

  return descriptionString;
}

@end