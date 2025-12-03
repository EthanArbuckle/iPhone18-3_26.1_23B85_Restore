@interface _CDEventIndexerContext
- (_CDEventIndexerContext)init;
- (id)description;
- (uint64_t)isBookmarkValid;
- (uint64_t)isBookmarkValidInRecoverableThreshold;
@end

@implementation _CDEventIndexerContext

- (_CDEventIndexerContext)init
{
  v8.receiver = self;
  v8.super_class = _CDEventIndexerContext;
  v2 = [(_CDEventIndexerContext *)&v8 init];
  if (v2)
  {
    date = [MEMORY[0x1E695DF00] date];
    indexDate = v2->_indexDate;
    v2->_indexDate = date;

    v5 = os_transaction_create();
    transaction = v2->_transaction;
    v2->_transaction = v5;
  }

  return v2;
}

- (uint64_t)isBookmarkValid
{
  selfCopy = self;
  if (self)
  {
    v3 = *(self + 8);
    if (v3)
    {
      v3 = *(v3 + 32);
    }

    if (*(self + 16) == v3)
    {
      v4 = *(self + 8);
      v5 = v4;
      if (v4)
      {
        v6 = *(v4 + 3);
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;
      v8 = *(selfCopy + 40);
      if ([OUTLINED_FUNCTION_4_17() compare:?] == 1)
      {
        selfCopy = 0;
      }

      else
      {
        v9 = *(selfCopy + 8);
        if (v9)
        {
          v10 = v9[2];
        }

        else
        {
          v10 = 0;
        }

        v11 = *(selfCopy + 40);
        v12 = v10;
        v13 = v9;
        selfCopy = [v12 compare:v11] != 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return selfCopy;
}

- (uint64_t)isBookmarkValidInRecoverableThreshold
{
  selfCopy = self;
  if (self)
  {
    v3 = *(self + 8);
    if (v3)
    {
      v3 = *(v3 + 32);
    }

    if (*(self + 16) == v3)
    {
      v4 = *(self + 8);
      v5 = v4;
      if (v4)
      {
        v6 = *(v4 + 3);
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;
      v8 = *(selfCopy + 40);
      [OUTLINED_FUNCTION_4_17() timeIntervalSinceDate:?];
      if (v9 >= 86400.0)
      {
        selfCopy = 0;
      }

      else
      {
        v10 = *(selfCopy + 8);
        if (v10)
        {
          v11 = v10[2];
        }

        else
        {
          v11 = 0;
        }

        v12 = *(selfCopy + 40);
        v13 = v11;
        v14 = v10;
        [v13 timeIntervalSinceDate:v12];
        selfCopy = v15 < 86400.0;
      }
    }

    else
    {
      return 0;
    }
  }

  return selfCopy;
}

- (id)description
{
  if (([(_CDEventIndexerContext *)self isBookmarkValid]& 1) != 0)
  {
    v3 = @"valid";
  }

  else
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithObject:@"invalid"];
    if (self)
    {
      v5 = self->_bookmark;
      v6 = v5;
      if (v5)
      {
        latestTombstoneDate = v5->_latestTombstoneDate;
      }

      else
      {
        latestTombstoneDate = 0;
      }

      v8 = latestTombstoneDate;
      indexDate = self->_indexDate;
    }

    else
    {
      v8 = 0;
      v6 = 0;
      indexDate = 0;
    }

    [(NSDate *)v8 timeIntervalSinceDate:indexDate];
    v11 = v10;

    if (v11 > 0.0)
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
      [v12 stringWithFormat:@"(latest tombstone date is past index date by %@ seconds)", v13];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_16_0() addObject:v12];
    }

    if (self)
    {
      v14 = self->_bookmark;
      v15 = v14;
      if (v14)
      {
        latestCreationDate = v14->_latestCreationDate;
      }

      else
      {
        latestCreationDate = 0;
      }

      v17 = latestCreationDate;
      v18 = self->_indexDate;
    }

    else
    {
      v17 = 0;
      v15 = 0;
      v18 = 0;
    }

    [(NSDate *)v17 timeIntervalSinceDate:v18];
    v20 = v19;

    if (v20 > 0.0)
    {
      v21 = MEMORY[0x1E696AEC0];
      v22 = [MEMORY[0x1E696AD98] numberWithDouble:v20];
      [v21 stringWithFormat:@"(latest creation date is past index date by %@ seconds)", v22];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_16_0() addObject:v21];
    }

    v3 = [v4 componentsJoinedByString:@" "];
  }

  v23 = MEMORY[0x1E696AEC0];
  v24 = objc_opt_class();
  if (self)
  {
    v25 = self->_indexDate;
    bookmark = self->_bookmark;
  }

  else
  {
    v25 = 0;
    bookmark = 0;
  }

  v27 = [v23 stringWithFormat:@"<%@ %p> indexDate: %@, bookmark: %@, validity: %@", v24, self, v25, bookmark, v3];

  return v27;
}

@end