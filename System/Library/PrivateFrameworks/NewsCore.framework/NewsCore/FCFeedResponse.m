@interface FCFeedResponse
- (FCFeedRange)feedRange;
- (FCFeedResponse)init;
- (id)feedResponseByMergingWithResponse:(id)a3;
- (int64_t)compareFeedItemCount:(id)a3;
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

- (id)feedResponseByMergingWithResponse:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(FCFeedResponse);
  v6 = [(FCFeedResponse *)self feedID];
  [(FCFeedResponse *)v5 setFeedID:v6];

  v7 = [(FCFeedResponse *)self error];
  [(FCFeedResponse *)v5 setError:v7];

  v8 = [(FCFeedResponse *)self error];
  if (v8)
  {
    v9 = v8;
    v10 = [v4 error];

    if (v10)
    {
      v11 = MEMORY[0x1E695DEC8];
      v12 = [(FCFeedResponse *)self feedItems];
      v13 = [v4 feedItems];
      v14 = [v11 fc_arrayByAddingObjectsFromArray:v12 toArray:v13];
      [(FCFeedResponse *)v5 setFeedItems:v14];

      if ([(FCFeedResponse *)self exhaustedRequestRange])
      {
        v15 = [v4 exhaustedRequestRange];
      }

      else
      {
        v15 = 0;
      }

      [(FCFeedResponse *)v5 setExhaustedRequestRange:v15];
    }
  }

  return v5;
}

- (int64_t)compareFeedItemCount:(id)a3
{
  v4 = a3;
  v5 = [(FCFeedResponse *)self feedItems];
  v6 = [v5 count];
  v7 = [v4 feedItems];

  v8 = [v7 count];
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
  v3 = [(FCFeedResponse *)self feedItems];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(FCFeedResponse *)self feedItems];
    v6 = [v5 firstObject];
    v7 = +[FCFeedCursor cursorForOrder:](FCFeedCursor, "cursorForOrder:", [v6 order]);

    v8 = [(FCFeedResponse *)self feedItems];
    v9 = [v8 lastObject];
    v10 = +[FCFeedCursor cursorForOrder:](FCFeedCursor, "cursorForOrder:", [v9 order] - 1);

    v11 = [FCFeedRange feedRangeWithTop:v7 bottom:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end