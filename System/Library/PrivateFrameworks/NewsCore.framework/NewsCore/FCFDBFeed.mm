@interface FCFDBFeed
- (BOOL)hasFetchedRangesInRange:(id)a3;
- (BOOL)isEqual:(id)a3;
- (FCFDBFeed)initWithFeedID:(id)a3 feedLookupID:(int64_t)a4 refreshedFromOrder:(unint64_t)a5 refreshedToOrder:(unint64_t)a6 fetchedRanges:(id)a7;
- (FCFeedRange)refreshRegion;
- (FCFeedRange)trailingEmptyRegion;
- (NSData)fetchedRangesData;
- (id)contiguousFetchedRangeInRange:(id)a3;
- (id)copyWithRefreshedFromOrder:(unint64_t)a3 refreshedToOrder:(unint64_t)a4 newlyFetchedRange:(id)a5;
- (id)copyWithoutFetchedRange:(id)a3;
- (id)fetchedRangeFollowingOrder:(unint64_t)a3;
- (id)fetchedRangePrecedingOrder:(unint64_t)a3;
- (id)initFromSQLWithFeedID:(const char *)a3 feedLookupID:(int64_t)a4 refreshedFromOrder:(int64_t)a5 refreshedToOrder:(int64_t)a6 fetchedRangesBytes:(const void *)a7 fetchedRangesLength:(int)a8;
- (void)_visitContiguousRangesInRange:(id)a3 withBlock:(id)a4;
- (void)enumerateGapsWithBlock:(id)a3;
@end

@implementation FCFDBFeed

- (FCFDBFeed)initWithFeedID:(id)a3 feedLookupID:(int64_t)a4 refreshedFromOrder:(unint64_t)a5 refreshedToOrder:(unint64_t)a6 fetchedRanges:(id)a7
{
  v13 = a3;
  v14 = a7;
  v19.receiver = self;
  v19.super_class = FCFDBFeed;
  v15 = [(FCFDBFeed *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_feedID, a3);
    v16->_feedLookupID = a4;
    v16->_refreshedFromOrder = a5;
    v16->_refreshedToOrder = a6;
    if (v14)
    {
      v17 = v14;
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

- (id)initFromSQLWithFeedID:(const char *)a3 feedLookupID:(int64_t)a4 refreshedFromOrder:(int64_t)a5 refreshedToOrder:(int64_t)a6 fetchedRangesBytes:(const void *)a7 fetchedRangesLength:(int)a8
{
  v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:a3 encoding:4];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __123__FCFDBFeed_initFromSQLWithFeedID_feedLookupID_refreshedFromOrder_refreshedToOrder_fetchedRangesBytes_fetchedRangesLength___block_invoke;
  v18[3] = &__block_descriptor_44_e24_v16__0__NSMutableArray_8l;
  v18[4] = a7;
  v19 = a8;
  v15 = [MEMORY[0x1E695DEC8] fc_array:v18];
  v16 = [(FCFDBFeed *)self initWithFeedID:v14 feedLookupID:a4 refreshedFromOrder:a5 refreshedToOrder:a6 fetchedRanges:v15];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
    v7 = [(FCFDBFeed *)self feedID];
    v8 = [v6 feedID];
    if ([v7 isEqualToString:v8] && (v9 = -[FCFDBFeed feedLookupID](self, "feedLookupID"), v9 == objc_msgSend(v6, "feedLookupID")) && (v10 = -[FCFDBFeed refreshedFromOrder](self, "refreshedFromOrder"), v10 == objc_msgSend(v6, "refreshedFromOrder")) && (v11 = -[FCFDBFeed refreshedToOrder](self, "refreshedToOrder"), v11 == objc_msgSend(v6, "refreshedToOrder")))
    {
      v12 = [(FCFDBFeed *)self fetchedRanges];
      v13 = [v6 fetchedRanges];
      v14 = [v12 isEqualToArray:v13];
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
  v3 = [(FCFDBFeed *)self fetchedRanges];
  v4 = malloc_type_calloc(2 * [v3 count], 8uLL, 0x100004000313F17uLL);

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(FCFDBFeed *)self fetchedRanges];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v20 + 1) + 8 * v10);
        v13 = [v12 top];
        *v11 = [v13 order];

        v14 = [v12 bottom];
        v9 = v11 + 2;
        v11[1] = [v14 order];

        ++v10;
        v11 += 2;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v15 = MEMORY[0x1E695DEF0];
  v16 = [(FCFDBFeed *)self fetchedRanges];
  v17 = [v15 dataWithBytesNoCopy:v4 length:16 * objc_msgSend(v16 freeWhenDone:{"count"), 1}];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (FCFeedRange)refreshRegion
{
  v3 = [(FCFDBFeed *)self refreshedFromOrder];
  if (v3)
  {
    v3 = [FCFeedRange feedRangeWithMaxOrder:[(FCFDBFeed *)self refreshedFromOrder] minOrder:[(FCFDBFeed *)self refreshedToOrder]];
  }

  return v3;
}

- (FCFeedRange)trailingEmptyRegion
{
  v3 = [(FCFDBFeed *)self fetchedRanges];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(FCFDBFeed *)self fetchedRanges];
    v6 = [v5 lastObject];
    v7 = [v6 bottom];
    v8 = +[FCFeedCursor cursorForBottomOfFeed];
    v9 = [FCFeedRange feedRangeWithTop:v7 bottom:v8];
  }

  else
  {
    v5 = +[FCFeedCursor cursorForTopOfFeed];
    v6 = +[FCFeedCursor cursorForBottomOfFeed];
    v9 = [FCFeedRange feedRangeWithTop:v5 bottom:v6];
  }

  return v9;
}

- (id)copyWithRefreshedFromOrder:(unint64_t)a3 refreshedToOrder:(unint64_t)a4 newlyFetchedRange:(id)a5
{
  v51 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = [MEMORY[0x1E695DF70] array];
  v10 = v9;
  if (v8)
  {
    v43 = a4;
    v45 = v9;
    v11 = v8;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v12 = [(FCFDBFeed *)self fetchedRanges];
    v13 = [v12 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v13)
    {
      v14 = v13;
      obj = v12;
      v40 = self;
      v41 = a3;
      v42 = v8;
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
          v19 = [v18 bottom];
          v20 = [v19 order];
          v21 = [v11 top];
          v22 = [v21 order];

          if (v20 <= v22)
          {
            v23 = [v18 top];
            v24 = [v23 order];
            v25 = [v11 bottom];
            v26 = [v25 order];

            if (v24 >= v26)
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

      a3 = v41;
      v8 = v42;
      self = v40;
      if (!v16)
      {
        v28 = v45;
LABEL_21:
        a4 = v43;
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

  v29 = [(FCFDBFeed *)self fetchedRanges];
  v28 = [v29 mutableCopy];

LABEL_22:
  if ([v28 count])
  {
    v30 = [v28 firstObject];
    v31 = [v30 top];
    v32 = [v31 order];

    if (v32 > a4)
    {
      v33 = [v28 firstObject];
      v34 = [v33 top];
      a4 = [v34 order];
    }
  }

  v35 = [FCFDBFeed alloc];
  v36 = [(FCFDBFeed *)self feedID];
  v37 = [(FCFDBFeed *)v35 initWithFeedID:v36 feedLookupID:[(FCFDBFeed *)self feedLookupID] refreshedFromOrder:a3 refreshedToOrder:a4 fetchedRanges:v28];

  v38 = *MEMORY[0x1E69E9840];
  return v37;
}

- (id)copyWithoutFetchedRange:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v33 = self;
  v6 = [(FCFDBFeed *)self fetchedRanges];
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    v34 = v6;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v35 + 1) + 8 * i);
        if (([v4 containsFeedRange:v11] & 1) == 0)
        {
          if ([v4 intersectsRange:v11])
          {
            v12 = v5;
            v13 = [v11 top];
            v14 = [v13 order];
            v15 = [v4 top];
            v16 = [v15 order];

            if (v14 <= v16)
            {
              v20 = [v4 bottom];
              v21 = [v11 top];
              v19 = [FCFeedRange feedRangeWithTop:v20 bottom:v21];
            }

            else
            {
              v17 = [v11 top];
              v18 = [v4 top];
              v19 = [FCFeedRange feedRangeWithTop:v17 bottom:v18];
            }

            v5 = v12;
            [v12 addObject:v19];

            v6 = v34;
          }

          else
          {
            [v5 addObject:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v8);
  }

  v22 = [(FCFDBFeed *)v33 refreshedFromOrder];
  v23 = [v4 top];
  v24 = [v23 order];

  if (v22 <= v24)
  {
    v22 = v24;
  }

  v25 = [(FCFDBFeed *)v33 refreshedToOrder];
  v26 = [v4 top];
  v27 = [v26 order];

  if (v25 <= v27)
  {
    v25 = v27;
  }

  v28 = [FCFDBFeed alloc];
  v29 = [(FCFDBFeed *)v33 feedID];
  v30 = [(FCFDBFeed *)v28 initWithFeedID:v29 feedLookupID:[(FCFDBFeed *)v33 feedLookupID] refreshedFromOrder:v22 refreshedToOrder:v25 fetchedRanges:v5];

  v31 = *MEMORY[0x1E69E9840];
  return v30;
}

- (void)enumerateGapsWithBlock:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v37 = 0;
  v5 = [(FCFDBFeed *)self fetchedRanges];
  v6 = [v5 count];

  v7 = +[FCFeedCursor cursorForTopOfFeed];
  if (v6)
  {
    v8 = [(FCFDBFeed *)self fetchedRanges];
    v9 = [v8 firstObject];
    v10 = [v9 top];
    v11 = +[FCFeedCursor cursorForOrder:](FCFeedCursor, "cursorForOrder:", [v10 order]);
    v12 = [FCFeedRange feedRangeWithTop:v7 bottom:v11];
    v4[2](v4, v12, &v37);

    if (v37)
    {
      goto LABEL_19;
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v13 = [(FCFDBFeed *)self fetchedRanges];
    v14 = [v13 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v14)
    {
      v15 = v14;
      v31 = self;
      v32 = v4;
      v16 = 0;
      v17 = *v34;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          v7 = v16;
          if (*v34 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v33 + 1) + 8 * i);
          if (v7)
          {
            v20 = [*(*(&v33 + 1) + 8 * i) top];
            v21 = [v20 order];
            v22 = [v7 bottom];
            v23 = [v22 order];

            if (v21 != v23)
            {
              v24 = [v7 bottom];
              v25 = [v19 top];
              v26 = [FCFeedRange feedRangeWithTop:v24 bottom:v25];
              v32[2](v32, v26, &v37);

              if (v37)
              {
                v4 = v32;
                goto LABEL_18;
              }
            }
          }

          v16 = v19;
        }

        v15 = [v13 countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }

      v4 = v32;
      self = v31;
    }

    v7 = [(FCFDBFeed *)self fetchedRanges];
    v13 = [v7 lastObject];
    v27 = [v13 bottom];
    v28 = +[FCFeedCursor cursorForBottomOfFeed];
    v29 = [FCFeedRange feedRangeWithTop:v27 bottom:v28];
    v4[2](v4, v29, &v37);
  }

  else
  {
    v13 = +[FCFeedCursor cursorForBottomOfFeed];
    v27 = [FCFeedRange feedRangeWithTop:v7 bottom:v13];
    v4[2](v4, v27, &v37);
  }

LABEL_18:
LABEL_19:

  v30 = *MEMORY[0x1E69E9840];
}

- (id)fetchedRangePrecedingOrder:(unint64_t)a3
{
  v4 = [(FCFDBFeed *)self fetchedRanges];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__FCFDBFeed_fetchedRangePrecedingOrder___block_invoke;
  v7[3] = &__block_descriptor_40_e21_B16__0__FCFeedRange_8l;
  v7[4] = a3;
  v5 = [v4 fc_lastObjectPassingTest:v7];

  return v5;
}

BOOL __40__FCFDBFeed_fetchedRangePrecedingOrder___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 top];
  v4 = [v3 order] > *(a1 + 32);

  return v4;
}

- (id)fetchedRangeFollowingOrder:(unint64_t)a3
{
  v4 = [(FCFDBFeed *)self fetchedRanges];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__FCFDBFeed_fetchedRangeFollowingOrder___block_invoke;
  v7[3] = &__block_descriptor_40_e21_B16__0__FCFeedRange_8l;
  v7[4] = a3;
  v5 = [v4 fc_firstObjectPassingTest:v7];

  return v5;
}

BOOL __40__FCFDBFeed_fetchedRangeFollowingOrder___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bottom];
  v4 = [v3 order] < *(a1 + 32);

  return v4;
}

- (id)contiguousFetchedRangeInRange:(id)a3
{
  v4 = a3;
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
  [(FCFDBFeed *)self _visitContiguousRangesInRange:v4 withBlock:v10];
  if ([(FCFDBFeed *)self refreshedFromOrder])
  {
    v5 = [FCFeedRange feedRangeWithMaxOrder:[(FCFDBFeed *)self refreshedFromOrder] minOrder:[(FCFDBFeed *)self refreshedToOrder]];
    if ([v5 intersectsOrAdjoinsRange:v4])
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

- (BOOL)hasFetchedRangesInRange:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(FCFDBFeed *)self fetchedRanges];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__FCFDBFeed_hasFetchedRangesInRange___block_invoke;
  v8[3] = &unk_1E7C47668;
  v10 = &v11;
  v6 = v4;
  v9 = v6;
  [v5 enumerateObjectsWithOptions:2 usingBlock:v8];

  LOBYTE(v5) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return v5;
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

- (void)_visitContiguousRangesInRange:(id)a3 withBlock:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
  v8 = v6;
  v21 = v8;
  v9 = v7;
  v22 = v9;
  v10 = _Block_copy(aBlock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = [(FCFDBFeed *)self fetchedRanges];
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v12)
  {
    v13 = *v17;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v17 != v13)
      {
        objc_enumerationMutation(v11);
      }

      if ((v10[2](v10, *(*(&v16 + 1) + 8 * v14)) & 1) == 0)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v11 countByEnumeratingWithState:&v16 objects:v26 count:16];
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