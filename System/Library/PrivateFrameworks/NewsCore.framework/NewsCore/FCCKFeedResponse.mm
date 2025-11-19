@interface FCCKFeedResponse
- (id)description;
@end

@implementation FCCKFeedResponse

- (id)description
{
  v3 = [FCDescription descriptionWithObject:self];
  v4 = v3;
  if (self)
  {
    [v3 addField:@"feedID" value:self->_feedID];
    feedItemAndArticleRecords = self->_feedItemAndArticleRecords;
  }

  else
  {
    [v3 addField:@"feedID" value:0];
    feedItemAndArticleRecords = 0;
  }

  [v4 addField:@"feedItemAndArticleRecords" format:{@"%lu", -[NSArray count](feedItemAndArticleRecords, "count")}];
  if (self)
  {
    if (self->_reachedEnd)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    [v4 addField:@"reachedEnd" value:v6];
    if (self->_reachedOrderLimit)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    [v4 addField:@"reachedOrderLimit" value:v7];
    [v4 addField:@"extent" format:{@"%llu", self->_extent}];
    cursor = self->_cursor;
  }

  else
  {
    [v4 addField:@"reachedEnd" value:@"NO"];
    [v4 addField:@"reachedOrderLimit" value:@"NO"];
    [v4 addField:@"extent" format:{@"%llu", 0}];
    cursor = 0;
  }

  if (cursor)
  {
    v9 = @"non-nil";
  }

  else
  {
    v9 = @"nil";
  }

  [v4 addField:@"cursor" format:{@"%@", v9}];
  v10 = @"NO";
  if (self && self->_wasDropped)
  {
    v10 = @"YES";
  }

  [v4 addField:@"wasDropped" value:v10];
  v11 = [v4 descriptionString];

  return v11;
}

@end