@interface _CDEventIndexerBookmark
+ (id)baseBookmarkWithVersion:(uint64_t)a1;
- (BOOL)isEqual:(id)a3;
- (_CDEventIndexerBookmark)initWithCoder:(id)a3;
- (id)description;
- (id)initWithEarliestCreationDate:(void *)a3 latestCreationDate:(void *)a4 latestTombstoneDate:(void *)a5 version:;
- (id)updatedBookmarkWithEarliestCreationDate:(id *)a1;
- (id)updatedBookmarkWithLatestCreationDate:(id *)a1;
- (id)updatedBookmarkWithLatestTombstoneDate:(id *)a1;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _CDEventIndexerBookmark

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if (self)
  {
    v5 = self->_earliestCreationDate;
    v6 = self->_latestCreationDate;
    v7 = self->_latestTombstoneDate;
    version = self->_version;
  }

  else
  {
    [_CDEventIndexerBookmark description];
    v7 = 0;
    v5 = 0;
    v6 = 0;
    version = 0;
  }

  v9 = [v3 stringWithFormat:@"<%@ %p> earliest creation date: %@, latest creation date: %@, latest tombstone date: %@, version: %ld", v4, self, v5, v6, v7, version];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  if (self)
  {
    [v8 encodeObject:self->_earliestCreationDate forKey:@"earliestCreationDate"];
    latestCreationDate = self->_latestCreationDate;
  }

  else
  {
    [(_CDEventIndexerBookmark *)v8 encodeWithCoder:v4];
    latestCreationDate = 0;
  }

  [v8 encodeObject:latestCreationDate forKey:@"latestCreationDate"];
  if (self)
  {
    [v8 encodeObject:self->_latestTombstoneDate forKey:@"latestTombstoneDate"];
    version = self->_version;
  }

  else
  {
    [(_CDEventIndexerBookmark *)v8 encodeWithCoder:v6];
    version = 0;
  }

  [v8 encodeInteger:version forKey:@"version"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v8.receiver = self, v8.super_class = _CDEventIndexerBookmark, [(_CDEventIndexerBookmark *)&v8 isEqual:v5]))
  {
    [(_CDEventIndexerBookmark *)v5 isEqual:&v9];
    v6 = v9;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)initWithEarliestCreationDate:(void *)a3 latestCreationDate:(void *)a4 latestTombstoneDate:(void *)a5 version:
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = _CDEventIndexerBookmark;
    v13 = objc_msgSendSuper2(&v15, sel_init);
    a1 = v13;
    if (v13)
    {
      objc_storeStrong(v13 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      objc_storeStrong(a1 + 3, a4);
      a1[4] = a5;
    }
  }

  return a1;
}

+ (id)baseBookmarkWithVersion:(uint64_t)a1
{
  objc_opt_self();
  [MEMORY[0x1E695DF00] distantPast];
  objc_claimAutoreleasedReturnValue();
  v4 = objc_alloc(OUTLINED_FUNCTION_16_0());
  v5 = [(_CDEventIndexerBookmark *)v4 initWithEarliestCreationDate:v2 latestCreationDate:v2 latestTombstoneDate:v2 version:a2];

  return v5;
}

- (id)updatedBookmarkWithEarliestCreationDate:(id *)a1
{
  v3 = a1;
  if (a1)
  {
    v4 = a2;
    OUTLINED_FUNCTION_7_10();
    v5 = objc_alloc(objc_opt_class());
    v6 = v3[2];
    v7 = v3[3];
    v8 = v3[4];
    v9 = v6;
    v3 = [(_CDEventIndexerBookmark *)v5 initWithEarliestCreationDate:v2 latestCreationDate:v9 latestTombstoneDate:v7 version:v8];
  }

  return v3;
}

- (id)updatedBookmarkWithLatestCreationDate:(id *)a1
{
  v3 = a1;
  if (a1)
  {
    v4 = a2;
    OUTLINED_FUNCTION_7_10();
    v5 = objc_alloc(objc_opt_class());
    v6 = v3[1];
    v8 = v3[3];
    v7 = v3[4];
    v9 = v6;
    v3 = [(_CDEventIndexerBookmark *)v5 initWithEarliestCreationDate:v9 latestCreationDate:v2 latestTombstoneDate:v8 version:v7];
  }

  return v3;
}

- (id)updatedBookmarkWithLatestTombstoneDate:(id *)a1
{
  v3 = a1;
  if (a1)
  {
    v4 = a2;
    OUTLINED_FUNCTION_7_10();
    v5 = objc_alloc(objc_opt_class());
    v6 = v3[1];
    v7 = v3[2];
    v8 = v3[4];
    v9 = v6;
    v3 = [(_CDEventIndexerBookmark *)v5 initWithEarliestCreationDate:v9 latestCreationDate:v7 latestTombstoneDate:v2 version:v8];
  }

  return v3;
}

- (_CDEventIndexerBookmark)initWithCoder:(id)a3
{
  v5 = a3;
  OUTLINED_FUNCTION_16_0();
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"earliestCreationDate"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"latestCreationDate"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"latestTombstoneDate"];
  v9 = [v3 decodeIntegerForKey:@"version"];

  v10 = [(_CDEventIndexerBookmark *)&self->super.isa initWithEarliestCreationDate:v6 latestCreationDate:v7 latestTombstoneDate:v8 version:v9];
  return v10;
}

- (unint64_t)hash
{
  if (self)
  {
    earliestCreationDate = self->_earliestCreationDate;
  }

  else
  {
    earliestCreationDate = 0;
  }

  v4 = earliestCreationDate;
  v5 = [(NSDate *)v4 hash];
  if (self)
  {
    latestCreationDate = self->_latestCreationDate;
  }

  else
  {
    latestCreationDate = 0;
  }

  v7 = latestCreationDate;
  v8 = [(NSDate *)v7 hash];
  if (self)
  {
    latestTombstoneDate = self->_latestTombstoneDate;
  }

  else
  {
    latestTombstoneDate = 0;
  }

  v10 = [(NSDate *)latestTombstoneDate hash];
  if (self)
  {
    version = self->_version;
  }

  else
  {
    version = 0;
  }

  v12 = v8 ^ v5;
  v13 = v10 ^ version;

  return v12 ^ v13;
}

- (void)isEqual:(BOOL *)a3 .cold.1(void *a1, void *a2, BOOL *a3)
{
  v6 = a1;
  if (a2)
  {
    v7 = a2[1];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = v6[1];
  if ([OUTLINED_FUNCTION_4_17() isEqualToDate:?])
  {
    if (a2)
    {
      v10 = a2[2];
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = v6[2];
    if ([v11 isEqualToDate:v12])
    {
      if (a2)
      {
        v13 = a2[3];
      }

      else
      {
        v13 = 0;
      }

      v14 = v6[3];
      v15 = v13;
      if ([v15 isEqualToDate:v14])
      {
        if (a2)
        {
          v16 = a2[4];
        }

        else
        {
          v16 = 0;
        }

        v17 = v16 == v6[4];
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  *a3 = v17;
}

@end