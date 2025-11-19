@interface _CPLPruneRequestCounter
- (NSDictionary)statusDictionary;
- (NSString)status;
- (_CPLPruneRequestCounter)initWithTitle:(id)a3 statusKey:(id)a4;
- (void)noteRequestForResource:(id)a3 successful:(BOOL)a4 prunedSize:(unint64_t)a5;
@end

@implementation _CPLPruneRequestCounter

- (NSDictionary)statusDictionary
{
  if (self->_lastRequestDate)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{+[CPLResource countOfResourceTypes](CPLResource, "countOfResourceTypes")}];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __43___CPLPruneRequestCounter_statusDictionary__block_invoke;
    v11 = &unk_1E861B890;
    v12 = self;
    v5 = v4;
    v13 = v5;
    [CPLResource enumerateResourceTypesWithBlock:&v8];
    if (self->_successSize)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{v8, v9, v10, v11, v12}];
      [v3 setObject:v6 forKeyedSubscript:@"size"];
    }

    if ([v5 count])
    {
      [v3 setObject:v5 forKeyedSubscript:@"requests"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)status
{
  if (!self->_lastRequestDate)
  {
    goto LABEL_5;
  }

  v2 = self;
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{+[CPLResource countOfResourceTypes](CPLResource, "countOfResourceTypes") / 3 + 1}];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__0;
  v16[4] = __Block_byref_object_dispose__0;
  v17 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __33___CPLPruneRequestCounter_status__block_invoke;
  v11[3] = &unk_1E861B868;
  v11[4] = v2;
  v13 = v16;
  v14 = v15;
  v4 = v3;
  v12 = v4;
  [CPLResource enumerateResourceTypesWithBlock:v11];
  v5 = [v4 count];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = [MEMORY[0x1E696AAF0] stringFromByteCount:v2->_successSize countStyle:1];
    v8 = [CPLDateFormatter stringFromDateAgo:v2->_lastRequestDate now:0];
    v9 = [v4 componentsJoinedByString:@"\n\t"];
    v2 = [v6 initWithFormat:@"%@, %@\n\t%@", v7, v8, v9];
  }

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v16, 8);

  if (!v5)
  {
LABEL_5:
    v2 = 0;
  }

  return v2;
}

- (void)noteRequestForResource:(id)a3 successful:(BOOL)a4 prunedSize:(unint64_t)a5
{
  v6 = a4;
  v16 = a3;
  [(NSDate *)self->_lastRequestDate timeIntervalSinceNow];
  if (self->_lastRequestDate)
  {
    if (v8 > 0.0 || v8 < -60.0)
    {
      [(NSCountedSet *)self->_successStatsPerResourceType removeAllObjects];
      [(NSCountedSet *)self->_failedStatsPerResourceType removeAllObjects];
      self->_successSize = 0;
    }
  }

  if (v6)
  {
    successStatsPerResourceType = self->_successStatsPerResourceType;
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v16, "resourceType")}];
    [(NSCountedSet *)successStatsPerResourceType addObject:v11];

    self->_successSize += a5;
  }

  else
  {
    failedStatsPerResourceType = self->_failedStatsPerResourceType;
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v16, "resourceType")}];
    [(NSCountedSet *)failedStatsPerResourceType addObject:v13];
  }

  v14 = [MEMORY[0x1E695DF00] date];
  lastRequestDate = self->_lastRequestDate;
  self->_lastRequestDate = v14;
}

- (_CPLPruneRequestCounter)initWithTitle:(id)a3 statusKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = _CPLPruneRequestCounter;
  v8 = [(_CPLPruneRequestCounter *)&v18 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AB50]);
    successStatsPerResourceType = v8->_successStatsPerResourceType;
    v8->_successStatsPerResourceType = v9;

    v11 = objc_alloc_init(MEMORY[0x1E696AB50]);
    failedStatsPerResourceType = v8->_failedStatsPerResourceType;
    v8->_failedStatsPerResourceType = v11;

    v13 = [v6 copy];
    title = v8->_title;
    v8->_title = v13;

    v15 = [v7 copy];
    statusKey = v8->_statusKey;
    v8->_statusKey = v15;
  }

  return v8;
}

@end