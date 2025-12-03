@interface FCFDBFeed
- (BOOL)hasFetchedRangesInRange:(id)range;
- (BOOL)isEqual:(id)equal;
- (FCFDBFeed)initWithFeedID:(id)d feedLookupID:(int64_t)iD refreshedFromOrder:(unint64_t)order refreshedToOrder:(unint64_t)toOrder fetchedRanges:(id)ranges;
- (FCFeedRange)refreshRegion;
- (FCFeedRange)trailingEmptyRegion;
- (NSData)fetchedRangesData;
- (id)contiguousFetchedRangeInRange:(id)range;
- (id)copyWithRefreshedFromOrder:(unint64_t)order refreshedToOrder:(unint64_t)toOrder newlyFetchedRange:(id)range;
- (id)copyWithoutFetchedRange:(id)range;
- (id)fetchedRangeFollowingOrder:(unint64_t)order;
- (id)fetchedRangePrecedingOrder:(unint64_t)order;
- (id)initFromSQLWithFeedID:(const char *)d feedLookupID:(int64_t)iD refreshedFromOrder:(int64_t)order refreshedToOrder:(int64_t)toOrder fetchedRangesBytes:(const void *)bytes fetchedRangesLength:(int)length;
- (void)_visitContiguousRangesInRange:(id)range withBlock:(id)block;
- (void)enumerateGapsWithBlock:(id)block;
@end

@implementation FCFDBFeed

- (FCFDBFeed)initWithFeedID:(id)d feedLookupID:(int64_t)iD refreshedFromOrder:(unint64_t)order refreshedToOrder:(unint64_t)toOrder fetchedRanges:(id)ranges
{
  dCopy = d;
  rangesCopy = ranges;
  v19.receiver = self;
  v19.super_class = FCFDBFeed;
  v15 = [(FCFDBFeed *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_feedID, d);
    v16->_feedLookupID = iD;
    v16->_refreshedFromOrder = order;
    v16->_refreshedToOrder = toOrder;
    if (rangesCopy)
    {
      v17 = rangesCopy;
    }

    else
    {
      v17 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v16->_fetchedRanges, v17);
    [(FCFDBFeed *)v16 d_sanityCheck];
  }

  return v16;
}

- (id)initFromSQLWithFeedID:(const char *)d feedLookupID:(int64_t)iD refreshedFromOrder:(int64_t)order refreshedToOrder:(int64_t)toOrder fetchedRangesBytes:(const void *)bytes fetchedRangesLength:(int)length
{
  v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:d encoding:4];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __123__FCFDBFeed_initFromSQLWithFeedID_feedLookupID_refreshedFromOrder_refreshedToOrder_fetchedRangesBytes_fetchedRangesLength___block_invoke;
  v18[3] = &__block_descriptor_44_e24_v16__0__NSMutableArray_8l;
  v18[4] = bytes;
  lengthCopy = length;
  v15 = [MEMORY[0x1E695DEC8] fc_array:v18];
  v16 = [(FCFDBFeed *)self initWithFeedID:v14 feedLookupID:iD refreshedFromOrder:order refreshedToOrder:toOrder fetchedRanges:v15];

  return v16;
}

void __123__FCFDBFeed_initFromSQLWithFeedID_feedLookupID_refreshedFromOrder_refreshedToOrder_fetchedRangesBytes_fetchedRangesLength___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(a1 + 40);
    if (v4 >= 1)
    {
      v5 = &v3[v4];
      do
      {
        v6 = *v3;
        v7 = *(v3 + 1);
        v3 += 16;
        v8 = [FCFeedRange feedRangeWithMaxOrder:v6 minOrder:v7];
        [v9 addObject:v8];
      }

      while (v3 < v5);
    }
  }
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
    feedID = [(FCFDBFeed *)self feedID];
    feedID2 = [v6 feedID];
    if ([feedID isEqualToString:feedID2] && (v9 = -[FCFDBFeed feedLookupID](self, "feedLookupID"), v9 == objc_msgSend(v6, "feedLookupID")) && (v10 = -[FCFDBFeed refreshedFromOrder](self, "refreshedFromOrder"), v10 == objc_msgSend(v6, "refreshedFromOrder")) && (v11 = -[FCFDBFeed refreshedToOrder](self, "refreshedToOrder"), v11 == objc_msgSend(v6, "refreshedToOrder")))
    {
      fetchedRanges = [(FCFDBFeed *)self fetchedRanges];
      fetchedRanges2 = [v6 fetchedRanges];
      v14 = [fetchedRanges isEqualToArray:fetchedRanges2];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (NSData)fetchedRangesData
{
  v25 = *MEMORY[0x1E69E9840];
  fetchedRanges = [(FCFDBFeed *)self fetchedRanges];
  v4 = malloc_type_calloc(2 * [fetchedRanges count], 8uLL, 0x100004000313F17uLL);

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  fetchedRanges2 = [(FCFDBFeed *)self fetchedRanges];
  v6 = [fetchedRanges2 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    v9 = v4;
    do
    {
      v10 = 0;
      v11 = v9;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(fetchedRanges2);
        }

        v12 = *(*(&v20 + 1) + 8 * v10);
        v13 = [v12 top];
        *v11 = [v13 order];

        bottom = [v12 bottom];
        v9 = v11 + 2;
        v11[1] = [bottom order];

        ++v10;
        v11 += 2;
      }

      while (v7 != v10);
      v7 = [fetchedRanges2 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v15 = MEMORY[0x1E695DEF0];
  fetchedRanges3 = [(FCFDBFeed *)self fetchedRanges];
  v17 = [v15 dataWithBytesNoCopy:v4 length:16 * objc_msgSend(fetchedRanges3 freeWhenDone:{"count"), 1}];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (FCFeedRange)refreshRegion
{
  refreshedFromOrder = [(FCFDBFeed *)self refreshedFromOrder];
  if (refreshedFromOrder)
  {
    refreshedFromOrder = [FCFeedRange feedRangeWithMaxOrder:[(FCFDBFeed *)self refreshedFromOrder] minOrder:[(FCFDBFeed *)self refreshedToOrder]];
  }

  return refreshedFromOrder;
}

- (FCFeedRange)trailingEmptyRegion
{
  fetchedRanges = [(FCFDBFeed *)self fetchedRanges];
  v4 = [fetchedRanges count];

  if (v4)
  {
    fetchedRanges2 = [(FCFDBFeed *)self fetchedRanges];
    lastObject = [fetchedRanges2 lastObject];
    bottom = [lastObject bottom];
    v8 = +[FCFeedCursor cursorForBottomOfFeed];
    v9 = [FCFeedRange feedRangeWithTop:bottom bottom:v8];
  }

  else
  {
    fetchedRanges2 = +[FCFeedCursor cursorForTopOfFeed];
    lastObject = +[FCFeedCursor cursorForBottomOfFeed];
    v9 = [FCFeedRange feedRangeWithTop:fetchedRanges2 bottom:lastObject];
  }

  return v9;
}

- (id)copyWithRefreshedFromOrder:(unint64_t)order refreshedToOrder:(unint64_t)toOrder newlyFetchedRange:(id)range
{
  v51 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  array = [MEMORY[0x1E695DF70] array];
  v10 = array;
  if (rangeCopy)
  {
    toOrderCopy = toOrder;
    v45 = array;
    v11 = rangeCopy;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    fetchedRanges = [(FCFDBFeed *)self fetchedRanges];
    v13 = [fetchedRanges countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v13)
    {
      v14 = v13;
      obj = fetchedRanges;
      selfCopy = self;
      orderCopy = order;
      v42 = rangeCopy;
      v15 = *v47;
      v16 = v11;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v47 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v46 + 1) + 8 * i);
          bottom = [v18 bottom];
          order = [bottom order];
          v21 = [v11 top];
          order2 = [v21 order];

          if (order <= order2)
          {
            v23 = [v18 top];
            order3 = [v23 order];
            bottom2 = [v11 bottom];
            order4 = [bottom2 order];

            if (order3 >= order4)
            {
              v27 = [v16 feedRangeByUnioningWithRange:v18];

              v16 = v27;
            }

            else
            {
              if (v16)
              {
                [v45 addObject:v16];
              }

              [v45 addObject:v18];
              v16 = 0;
            }
          }

          else
          {
            [v45 addObject:v18];
          }
        }

        v14 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v14);

      order = orderCopy;
      rangeCopy = v42;
      self = selfCopy;
      if (!v16)
      {
        v28 = v45;
LABEL_21:
        toOrder = toOrderCopy;
        goto LABEL_22;
      }
    }

    else
    {

      v16 = v11;
    }

    v28 = v45;
    [v45 addObject:v16];

    goto LABEL_21;
  }

  fetchedRanges2 = [(FCFDBFeed *)self fetchedRanges];
  v28 = [fetchedRanges2 mutableCopy];

LABEL_22:
  if ([v28 count])
  {
    firstObject = [v28 firstObject];
    v31 = [firstObject top];
    order5 = [v31 order];

    if (order5 > toOrder)
    {
      firstObject2 = [v28 firstObject];
      v34 = [firstObject2 top];
      toOrder = [v34 order];
    }
  }

  v35 = [FCFDBFeed alloc];
  feedID = [(FCFDBFeed *)self feedID];
  v37 = [(FCFDBFeed *)v35 initWithFeedID:feedID feedLookupID:[(FCFDBFeed *)self feedLookupID] refreshedFromOrder:order refreshedToOrder:toOrder fetchedRanges:v28];

  v38 = *MEMORY[0x1E69E9840];
  return v37;
}

- (id)copyWithoutFetchedRange:(id)range
{
  v40 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  array = [MEMORY[0x1E695DF70] array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  selfCopy = self;
  fetchedRanges = [(FCFDBFeed *)self fetchedRanges];
  v7 = [fetchedRanges countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    v34 = fetchedRanges;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(fetchedRanges);
        }

        v11 = *(*(&v35 + 1) + 8 * i);
        if (([rangeCopy containsFeedRange:v11] & 1) == 0)
        {
          if ([rangeCopy intersectsRange:v11])
          {
            v12 = array;
            v13 = [v11 top];
            order = [v13 order];
            v15 = [rangeCopy top];
            order2 = [v15 order];

            if (order <= order2)
            {
              bottom = [rangeCopy bottom];
              v21 = [v11 top];
              v19 = [FCFeedRange feedRangeWithTop:bottom bottom:v21];
            }

            else
            {
              v17 = [v11 top];
              v18 = [rangeCopy top];
              v19 = [FCFeedRange feedRangeWithTop:v17 bottom:v18];
            }

            array = v12;
            [v12 addObject:v19];

            fetchedRanges = v34;
          }

          else
          {
            [array addObject:v11];
          }
        }
      }

      v8 = [fetchedRanges countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v8);
  }

  refreshedFromOrder = [(FCFDBFeed *)selfCopy refreshedFromOrder];
  v23 = [rangeCopy top];
  order3 = [v23 order];

  if (refreshedFromOrder <= order3)
  {
    refreshedFromOrder = order3;
  }

  refreshedToOrder = [(FCFDBFeed *)selfCopy refreshedToOrder];
  v26 = [rangeCopy top];
  order4 = [v26 order];

  if (refreshedToOrder <= order4)
  {
    refreshedToOrder = order4;
  }

  v28 = [FCFDBFeed alloc];
  feedID = [(FCFDBFeed *)selfCopy feedID];
  v30 = [(FCFDBFeed *)v28 initWithFeedID:feedID feedLookupID:[(FCFDBFeed *)selfCopy feedLookupID] refreshedFromOrder:refreshedFromOrder refreshedToOrder:refreshedToOrder fetchedRanges:array];

  v31 = *MEMORY[0x1E69E9840];
  return v30;
}

- (void)enumerateGapsWithBlock:(id)block
{
  v39 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v37 = 0;
  fetchedRanges = [(FCFDBFeed *)self fetchedRanges];
  v6 = [fetchedRanges count];

  fetchedRanges4 = +[FCFeedCursor cursorForTopOfFeed];
  if (v6)
  {
    fetchedRanges2 = [(FCFDBFeed *)self fetchedRanges];
    firstObject = [fetchedRanges2 firstObject];
    v10 = [firstObject top];
    v11 = +[FCFeedCursor cursorForOrder:](FCFeedCursor, "cursorForOrder:", [v10 order]);
    v12 = [FCFeedRange feedRangeWithTop:fetchedRanges4 bottom:v11];
    blockCopy[2](blockCopy, v12, &v37);

    if (v37)
    {
      goto LABEL_19;
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    fetchedRanges3 = [(FCFDBFeed *)self fetchedRanges];
    v14 = [fetchedRanges3 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v14)
    {
      v15 = v14;
      selfCopy = self;
      v32 = blockCopy;
      v16 = 0;
      v17 = *v34;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          fetchedRanges4 = v16;
          if (*v34 != v17)
          {
            objc_enumerationMutation(fetchedRanges3);
          }

          v19 = *(*(&v33 + 1) + 8 * i);
          if (fetchedRanges4)
          {
            v20 = [*(*(&v33 + 1) + 8 * i) top];
            order = [v20 order];
            bottom = [fetchedRanges4 bottom];
            order2 = [bottom order];

            if (order != order2)
            {
              bottom2 = [fetchedRanges4 bottom];
              v25 = [v19 top];
              v26 = [FCFeedRange feedRangeWithTop:bottom2 bottom:v25];
              v32[2](v32, v26, &v37);

              if (v37)
              {
                blockCopy = v32;
                goto LABEL_18;
              }
            }
          }

          v16 = v19;
        }

        v15 = [fetchedRanges3 countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }

      blockCopy = v32;
      self = selfCopy;
    }

    fetchedRanges4 = [(FCFDBFeed *)self fetchedRanges];
    fetchedRanges3 = [fetchedRanges4 lastObject];
    bottom3 = [fetchedRanges3 bottom];
    v28 = +[FCFeedCursor cursorForBottomOfFeed];
    v29 = [FCFeedRange feedRangeWithTop:bottom3 bottom:v28];
    blockCopy[2](blockCopy, v29, &v37);
  }

  else
  {
    fetchedRanges3 = +[FCFeedCursor cursorForBottomOfFeed];
    bottom3 = [FCFeedRange feedRangeWithTop:fetchedRanges4 bottom:fetchedRanges3];
    blockCopy[2](blockCopy, bottom3, &v37);
  }

LABEL_18:
LABEL_19:

  v30 = *MEMORY[0x1E69E9840];
}

- (id)fetchedRangePrecedingOrder:(unint64_t)order
{
  fetchedRanges = [(FCFDBFeed *)self fetchedRanges];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__FCFDBFeed_fetchedRangePrecedingOrder___block_invoke;
  v7[3] = &__block_descriptor_40_e21_B16__0__FCFeedRange_8l;
  v7[4] = order;
  v5 = [fetchedRanges fc_lastObjectPassingTest:v7];

  return v5;
}

BOOL __40__FCFDBFeed_fetchedRangePrecedingOrder___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 top];
  v4 = [v3 order] > *(a1 + 32);

  return v4;
}

- (id)fetchedRangeFollowingOrder:(unint64_t)order
{
  fetchedRanges = [(FCFDBFeed *)self fetchedRanges];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__FCFDBFeed_fetchedRangeFollowingOrder___block_invoke;
  v7[3] = &__block_descriptor_40_e21_B16__0__FCFeedRange_8l;
  v7[4] = order;
  v5 = [fetchedRanges fc_firstObjectPassingTest:v7];

  return v5;
}

BOOL __40__FCFDBFeed_fetchedRangeFollowingOrder___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bottom];
  v4 = [v3 order] < *(a1 + 32);

  return v4;
}

- (id)contiguousFetchedRangeInRange:(id)range
{
  rangeCopy = range;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__89;
  v15 = __Block_byref_object_dispose__89;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__FCFDBFeed_contiguousFetchedRangeInRange___block_invoke;
  v10[3] = &unk_1E7C47640;
  v10[4] = &v11;
  [(FCFDBFeed *)self _visitContiguousRangesInRange:rangeCopy withBlock:v10];
  if ([(FCFDBFeed *)self refreshedFromOrder])
  {
    v5 = [FCFeedRange feedRangeWithMaxOrder:[(FCFDBFeed *)self refreshedFromOrder] minOrder:[(FCFDBFeed *)self refreshedToOrder]];
    if ([v5 intersectsOrAdjoinsRange:rangeCopy])
    {
      v6 = [FCFeedRange feedRangeByMergingRange:v12[5] withRange:v5];
      v7 = v12[5];
      v12[5] = v6;
    }
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __43__FCFDBFeed_contiguousFetchedRangeInRange___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [FCFeedRange feedRangeByMergingRange:*(*(*(a1 + 32) + 8) + 40) withRange:a2];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

- (BOOL)hasFetchedRangesInRange:(id)range
{
  rangeCopy = range;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  fetchedRanges = [(FCFDBFeed *)self fetchedRanges];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__FCFDBFeed_hasFetchedRangesInRange___block_invoke;
  v8[3] = &unk_1E7C47668;
  v10 = &v11;
  v6 = rangeCopy;
  v9 = v6;
  [fetchedRanges enumerateObjectsWithOptions:2 usingBlock:v8];

  LOBYTE(fetchedRanges) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return fetchedRanges;
}

void __37__FCFDBFeed_hasFetchedRangesInRange___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v9 = a2;
  *(*(*(a1 + 40) + 8) + 24) = [v9 intersectsRange:*(a1 + 32)];
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  else
  {
    v6 = [v9 top];
    v7 = [v6 order];
    v8 = [*(a1 + 32) bottom];
    *a4 = v7 > [v8 order];
  }
}

- (void)_visitContiguousRangesInRange:(id)range withBlock:(id)block
{
  v27 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  blockCopy = block;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__89;
  v24[4] = __Block_byref_object_dispose__89;
  v25 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__FCFDBFeed__visitContiguousRangesInRange_withBlock___block_invoke;
  aBlock[3] = &unk_1E7C47690;
  v23 = v24;
  v8 = rangeCopy;
  v21 = v8;
  v9 = blockCopy;
  v22 = v9;
  v10 = _Block_copy(aBlock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  fetchedRanges = [(FCFDBFeed *)self fetchedRanges];
  v12 = [fetchedRanges countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v12)
  {
    v13 = *v17;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v17 != v13)
      {
        objc_enumerationMutation(fetchedRanges);
      }

      if ((v10[2](v10, *(*(&v16 + 1) + 8 * v14)) & 1) == 0)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [fetchedRanges countByEnumeratingWithState:&v16 objects:v26 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  _Block_object_dispose(v24, 8);
  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __53__FCFDBFeed__visitContiguousRangesInRange_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    if ([v3 intersectsOrAdjoinsRange:?])
    {
      (*(*(a1 + 40) + 16))();
      v5 = [FCFeedRange feedRangeByMergingRange:*(*(*(a1 + 48) + 8) + 40) withRange:v4];
      v6 = *(*(a1 + 48) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;
LABEL_7:

      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v8 = [v3 bottom];
  v9 = [v8 order];
  v10 = [*(a1 + 32) top];
  v11 = [v10 order];

  if (v9 < v11)
  {
    if ([v4 intersectsRange:*(a1 + 32)])
    {
      (*(*(a1 + 40) + 16))();
      v12 = *(*(a1 + 48) + 8);
      v13 = v4;
      v7 = *(v12 + 40);
      *(v12 + 40) = v13;
      goto LABEL_7;
    }

LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

LABEL_8:
  v14 = 1;
LABEL_10:

  return v14;
}

@end