@interface FCCKOrderFeedRequest
- (FCCKOrderFeedRequest)init;
- (id)description;
@end

@implementation FCCKOrderFeedRequest

- (FCCKOrderFeedRequest)init
{
  v3.receiver = self;
  v3.super_class = FCCKOrderFeedRequest;
  result = [(FCCKOrderFeedRequest *)&v3 init];
  if (result)
  {
    *&result->_maxOrder = xmmword_1B681A6A0;
    result->_resultsLimit = 0xFFFFLL;
  }

  return result;
}

- (id)description
{
  v3 = [FCDescription descriptionWithObject:self];
  v4 = v3;
  if (self)
  {
    [v3 addField:@"feedID" value:self->_feedID];
    [v4 addField:@"maxOrder" format:{@"%llu", self->_maxOrder}];
    [v4 addField:@"minOrder" format:{@"%llu", self->_minOrder}];
    resultsLimit = self->_resultsLimit;
  }

  else
  {
    [v3 addField:@"feedID" value:0];
    [v4 addField:@"maxOrder" format:{@"%llu", 0}];
    [v4 addField:@"minOrder" format:{@"%llu", 0}];
    resultsLimit = 0;
  }

  [v4 addField:@"resultsLimit" format:{@"%llu", resultsLimit}];
  v6 = [v4 descriptionString];

  return v6;
}

@end