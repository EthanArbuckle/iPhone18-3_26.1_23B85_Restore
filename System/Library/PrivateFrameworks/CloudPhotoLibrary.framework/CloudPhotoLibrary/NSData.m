@interface NSData
@end

@implementation NSData

void __67__NSData_CPLSyncAnchorDescription__cplQueryCursorSimpleDescription__block_invoke(uint64_t a1)
{
  v2 = cplQueryCursorSimpleDescription_queryCursorDescriptions;
  if (!cplQueryCursorSimpleDescription_queryCursorDescriptions)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:100];
    v4 = cplQueryCursorSimpleDescription_queryCursorDescriptions;
    cplQueryCursorSimpleDescription_queryCursorDescriptions = v3;

    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:100];
    v6 = cplQueryCursorSimpleDescription_cachedQueryCursors;
    cplQueryCursorSimpleDescription_cachedQueryCursors = v5;

    v2 = cplQueryCursorSimpleDescription_queryCursorDescriptions;
  }

  v7 = [v2 objectForKey:*(a1 + 32)];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    ++cplQueryCursorSimpleDescription_syncAnchorIndex;
    if ([cplQueryCursorSimpleDescription_cachedQueryCursors count] == 100)
    {
      v10 = [cplQueryCursorSimpleDescription_cachedQueryCursors firstObject];
      [cplQueryCursorSimpleDescription_cachedQueryCursors removeObjectAtIndex:0];
      [cplQueryCursorSimpleDescription_queryCursorDescriptions removeObjectForKey:v10];
    }

    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = [v11 initWithFormat:@"QueryCursor-%lu", cplQueryCursorSimpleDescription_syncAnchorIndex];
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    [cplQueryCursorSimpleDescription_queryCursorDescriptions setObject:*(*(*(a1 + 40) + 8) + 40) forKey:*(a1 + 32)];
    v15 = cplQueryCursorSimpleDescription_cachedQueryCursors;
    v16 = *(a1 + 32);

    [v15 addObject:v16];
  }
}

void __66__NSData_CPLSyncAnchorDescription__cplSyncAnchorSimpleDescription__block_invoke(uint64_t a1)
{
  v2 = cplSyncAnchorSimpleDescription_syncAnchorDescriptions;
  if (!cplSyncAnchorSimpleDescription_syncAnchorDescriptions)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:100];
    v4 = cplSyncAnchorSimpleDescription_syncAnchorDescriptions;
    cplSyncAnchorSimpleDescription_syncAnchorDescriptions = v3;

    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:100];
    v6 = cplSyncAnchorSimpleDescription_cachedSyncAnchors;
    cplSyncAnchorSimpleDescription_cachedSyncAnchors = v5;

    v2 = cplSyncAnchorSimpleDescription_syncAnchorDescriptions;
  }

  v7 = [v2 objectForKey:*(a1 + 32)];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    ++cplSyncAnchorSimpleDescription_syncAnchorIndex;
    if ([cplSyncAnchorSimpleDescription_cachedSyncAnchors count] == 100)
    {
      v10 = [cplSyncAnchorSimpleDescription_cachedSyncAnchors firstObject];
      [cplSyncAnchorSimpleDescription_cachedSyncAnchors removeObjectAtIndex:0];
      [cplSyncAnchorSimpleDescription_syncAnchorDescriptions removeObjectForKey:v10];
    }

    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = [v11 initWithFormat:@"SyncAnchor-%lu", cplSyncAnchorSimpleDescription_syncAnchorIndex];
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    [cplSyncAnchorSimpleDescription_syncAnchorDescriptions setObject:*(*(*(a1 + 40) + 8) + 40) forKey:*(a1 + 32)];
    v15 = cplSyncAnchorSimpleDescription_cachedSyncAnchors;
    v16 = *(a1 + 32);

    [v15 addObject:v16];
  }
}

@end