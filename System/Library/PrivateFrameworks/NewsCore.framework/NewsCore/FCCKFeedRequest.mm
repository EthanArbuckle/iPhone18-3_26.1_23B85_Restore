@interface FCCKFeedRequest
- (FCCKFeedRequest)init;
- (id)description;
@end

@implementation FCCKFeedRequest

- (FCCKFeedRequest)init
{
  v4.receiver = self;
  v4.super_class = FCCKFeedRequest;
  result = [(FCCKFeedRequest *)&v4 init];
  if (result)
  {
    *&result->_startOrder = xmmword_1B681A6A0;
    *&v3 = 0xFFFFLL;
    *(&v3 + 1) = 0xFFFFLL;
    *&result->_softResultsLimit = v3;
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
    startCursor = self->_startCursor;
  }

  else
  {
    [v3 addField:@"feedID" value:0];
    startCursor = 0;
  }

  v6 = [(NSData *)startCursor length];
  v7 = @"non-empty";
  if (!v6)
  {
    v7 = @"empty";
  }

  [v4 addField:@"startCursor" format:{@"%@", v7}];
  if (self)
  {
    [v4 addField:@"startOrder" format:{@"%llu", self->_startOrder}];
    [v4 addField:@"orderLimit" format:{@"%llu", self->_orderLimit}];
    [v4 addField:@"softResultsLimit" format:{@"%llu", self->_softResultsLimit}];
    hardResultsLimit = self->_hardResultsLimit;
  }

  else
  {
    [v4 addField:@"startOrder" format:{@"%llu", 0}];
    [v4 addField:@"orderLimit" format:{@"%llu", 0}];
    [v4 addField:@"softResultsLimit" format:{@"%llu", 0}];
    hardResultsLimit = 0;
  }

  [v4 addField:@"hardResultsLimit" format:{@"%llu", hardResultsLimit}];
  descriptionString = [v4 descriptionString];

  return descriptionString;
}

@end