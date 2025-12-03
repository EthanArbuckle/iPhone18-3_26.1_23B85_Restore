@interface _CDEventIndexerBookmark
+ (id)baseBookmarkWithVersion:(uint64_t)version;
- (BOOL)isEqual:(id)equal;
- (_CDEventIndexerBookmark)initWithCoder:(id)coder;
- (id)description;
- (id)initWithEarliestCreationDate:(void *)date latestCreationDate:(void *)creationDate latestTombstoneDate:(void *)tombstoneDate version:;
- (id)updatedBookmarkWithEarliestCreationDate:(id *)date;
- (id)updatedBookmarkWithLatestCreationDate:(id *)date;
- (id)updatedBookmarkWithLatestTombstoneDate:(id *)date;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

  version = [v3 stringWithFormat:@"<%@ %p> earliest creation date: %@, latest creation date: %@, latest tombstone date: %@, version: %ld", v4, self, v5, v6, v7, version];

  return version;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (self)
  {
    [coderCopy encodeObject:self->_earliestCreationDate forKey:@"earliestCreationDate"];
    latestCreationDate = self->_latestCreationDate;
  }

  else
  {
    [(_CDEventIndexerBookmark *)coderCopy encodeWithCoder:v4];
    latestCreationDate = 0;
  }

  [coderCopy encodeObject:latestCreationDate forKey:@"latestCreationDate"];
  if (self)
  {
    [coderCopy encodeObject:self->_latestTombstoneDate forKey:@"latestTombstoneDate"];
    version = self->_version;
  }

  else
  {
    [(_CDEventIndexerBookmark *)coderCopy encodeWithCoder:v6];
    version = 0;
  }

  [coderCopy encodeInteger:version forKey:@"version"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v8.receiver = self, v8.super_class = _CDEventIndexerBookmark, [(_CDEventIndexerBookmark *)&v8 isEqual:v5]))
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

- (id)initWithEarliestCreationDate:(void *)date latestCreationDate:(void *)creationDate latestTombstoneDate:(void *)tombstoneDate version:
{
  v10 = a2;
  dateCopy = date;
  creationDateCopy = creationDate;
  if (self)
  {
    v15.receiver = self;
    v15.super_class = _CDEventIndexerBookmark;
    v13 = objc_msgSendSuper2(&v15, sel_init);
    self = v13;
    if (v13)
    {
      objc_storeStrong(v13 + 1, a2);
      objc_storeStrong(self + 2, date);
      objc_storeStrong(self + 3, creationDate);
      self[4] = tombstoneDate;
    }
  }

  return self;
}

+ (id)baseBookmarkWithVersion:(uint64_t)version
{
  objc_opt_self();
  [MEMORY[0x1E695DF00] distantPast];
  objc_claimAutoreleasedReturnValue();
  v4 = objc_alloc(OUTLINED_FUNCTION_16_0());
  v5 = [(_CDEventIndexerBookmark *)v4 initWithEarliestCreationDate:v2 latestCreationDate:v2 latestTombstoneDate:v2 version:a2];

  return v5;
}

- (id)updatedBookmarkWithEarliestCreationDate:(id *)date
{
  dateCopy = date;
  if (date)
  {
    v4 = a2;
    OUTLINED_FUNCTION_7_10();
    v5 = objc_alloc(objc_opt_class());
    v6 = dateCopy[2];
    v7 = dateCopy[3];
    v8 = dateCopy[4];
    v9 = v6;
    dateCopy = [(_CDEventIndexerBookmark *)v5 initWithEarliestCreationDate:v2 latestCreationDate:v9 latestTombstoneDate:v7 version:v8];
  }

  return dateCopy;
}

- (id)updatedBookmarkWithLatestCreationDate:(id *)date
{
  dateCopy = date;
  if (date)
  {
    v4 = a2;
    OUTLINED_FUNCTION_7_10();
    v5 = objc_alloc(objc_opt_class());
    v6 = dateCopy[1];
    v8 = dateCopy[3];
    v7 = dateCopy[4];
    v9 = v6;
    dateCopy = [(_CDEventIndexerBookmark *)v5 initWithEarliestCreationDate:v9 latestCreationDate:v2 latestTombstoneDate:v8 version:v7];
  }

  return dateCopy;
}

- (id)updatedBookmarkWithLatestTombstoneDate:(id *)date
{
  dateCopy = date;
  if (date)
  {
    v4 = a2;
    OUTLINED_FUNCTION_7_10();
    v5 = objc_alloc(objc_opt_class());
    v6 = dateCopy[1];
    v7 = dateCopy[2];
    v8 = dateCopy[4];
    v9 = v6;
    dateCopy = [(_CDEventIndexerBookmark *)v5 initWithEarliestCreationDate:v9 latestCreationDate:v7 latestTombstoneDate:v2 version:v8];
  }

  return dateCopy;
}

- (_CDEventIndexerBookmark)initWithCoder:(id)coder
{
  coderCopy = coder;
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