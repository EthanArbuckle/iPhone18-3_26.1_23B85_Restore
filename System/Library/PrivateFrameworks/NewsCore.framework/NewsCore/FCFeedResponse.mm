@interface FCFeedResponse
- (FCFeedRange)feedRange;
- (FCFeedResponse)init;
- (id)feedResponseByMergingWithResponse:(id)response;
- (int64_t)compareFeedItemCount:(id)count;
@end

@implementation FCFeedResponse

- (FCFeedResponse)init
{
  v6.receiver = self;
  v6.super_class = FCFeedResponse;
  v2 = [(FCFeedResponse *)&v6 init];
  v3 = v2;
  if (v2)
  {
    feedItems = v2->_feedItems;
    v2->_feedItems = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (id)feedResponseByMergingWithResponse:(id)response
{
  responseCopy = response;
  v5 = objc_alloc_init(FCFeedResponse);
  feedID = [(FCFeedResponse *)self feedID];
  [(FCFeedResponse *)v5 setFeedID:feedID];

  error = [(FCFeedResponse *)self error];
  [(FCFeedResponse *)v5 setError:error];

  error2 = [(FCFeedResponse *)self error];
  if (error2)
  {
    v9 = error2;
    error3 = [responseCopy error];

    if (error3)
    {
      v11 = MEMORY[0x1E695DEC8];
      feedItems = [(FCFeedResponse *)self feedItems];
      feedItems2 = [responseCopy feedItems];
      v14 = [v11 fc_arrayByAddingObjectsFromArray:feedItems toArray:feedItems2];
      [(FCFeedResponse *)v5 setFeedItems:v14];

      if ([(FCFeedResponse *)self exhaustedRequestRange])
      {
        exhaustedRequestRange = [responseCopy exhaustedRequestRange];
      }

      else
      {
        exhaustedRequestRange = 0;
      }

      [(FCFeedResponse *)v5 setExhaustedRequestRange:exhaustedRequestRange];
    }
  }

  return v5;
}

- (int64_t)compareFeedItemCount:(id)count
{
  countCopy = count;
  feedItems = [(FCFeedResponse *)self feedItems];
  v6 = [feedItems count];
  feedItems2 = [countCopy feedItems];

  v8 = [feedItems2 count];
  if (v6 < v8)
  {
    v9 = -1;
  }

  else
  {
    v9 = v6 > v8;
  }

  return v9;
}

- (FCFeedRange)feedRange
{
  feedItems = [(FCFeedResponse *)self feedItems];
  v4 = [feedItems count];

  if (v4)
  {
    feedItems2 = [(FCFeedResponse *)self feedItems];
    firstObject = [feedItems2 firstObject];
    v7 = +[FCFeedCursor cursorForOrder:](FCFeedCursor, "cursorForOrder:", [firstObject order]);

    feedItems3 = [(FCFeedResponse *)self feedItems];
    lastObject = [feedItems3 lastObject];
    v10 = +[FCFeedCursor cursorForOrder:](FCFeedCursor, "cursorForOrder:", [lastObject order] - 1);

    v11 = [FCFeedRange feedRangeWithTop:v7 bottom:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end