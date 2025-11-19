@interface CCSetChangeBookmark
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSetChangeBookmark:(id)a3;
- (CCSetChangeBookmark)init;
- (CCSetChangeBookmark)initWithCoder:(id)a3;
- (CCSetChangeBookmark)initWithContentVector:(id)a3 metaContentVector:(id)a4 localResourceGeneration:(int64_t)a5 lastDeltaDate:(int64_t)a6 set:(id)a7;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CCSetChangeBookmark

- (CCSetChangeBookmark)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CCSetChangeBookmark)initWithContentVector:(id)a3 metaContentVector:(id)a4 localResourceGeneration:(int64_t)a5 lastDeltaDate:(int64_t)a6 set:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = CCSetChangeBookmark;
  v16 = [(CCSetChangeBookmark *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_contentVector, a3);
    objc_storeStrong(&v17->_metaContentVector, a4);
    v17->_bookmarkVersion = 2;
    v17->_localResourceGeneration = a5;
    v17->_lastDeltaDate = a6;
    objc_storeStrong(&v17->_set, a7);
  }

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CCSetChangeBookmark *)self isEqualToSetChangeBookmark:v5];
  }

  return v6;
}

- (BOOL)isEqualToSetChangeBookmark:(id)a3
{
  v4 = a3;
  localResourceGeneration = self->_localResourceGeneration;
  if (localResourceGeneration == [v4 localResourceGeneration] && (bookmarkVersion = self->_bookmarkVersion, bookmarkVersion == objc_msgSend(v4, "bookmarkVersion")) && (lastDeltaDate = self->_lastDeltaDate, lastDeltaDate == objc_msgSend(v4, "lastDeltaDate")))
  {
    set = self->_set;
    v9 = [v4 set];
    if ([(CCSet *)set isEqual:v9])
    {
      contentVector = self->_contentVector;
      v11 = [v4 contentVector];
      if ([(CKDistributedTimestampStateVector *)contentVector isEqual:v11])
      {
        metaContentVector = self->_metaContentVector;
        v13 = [v4 metaContentVector];
        v14 = [(CKDistributedTimestampStateVector *)metaContentVector isEqual:v13];
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
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = [(CKDistributedTimestampStateVector *)self->_contentVector hash];
  v4 = [(CKDistributedTimestampStateVector *)self->_metaContentVector hash]^ v3;
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_localResourceGeneration];
  v6 = v4 ^ [v5 hash];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_bookmarkVersion];
  v8 = [v7 hash];
  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_lastDeltaDate];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(CCSet *)self->_set hash];

  return v10 ^ v11;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  localResourceGeneration = self->_localResourceGeneration;
  set = self->_set;
  v6 = CCDateFormattedStringFromTimeMicros(self->_lastDeltaDate);
  v7 = [v3 stringWithFormat:@"Bookmark for Cascade Set: %@ resourceGeneration: %lld lastDelta: %@ <bv:%u> sharedItemCount: %lu localItemInstanceCount: %lu", set, localResourceGeneration, v6, self->_bookmarkVersion, +[CCDatabaseSetChangeEnumerator sharedItemCountFromBookmark:](CCDatabaseSetChangeEnumerator, "sharedItemCountFromBookmark:", self), +[CCDatabaseSetChangeEnumerator localItemInstanceCountFromBookmark:](CCDatabaseSetChangeEnumerator, "localItemInstanceCountFromBookmark:", self)];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_contentVector forKey:@"c"];
  [v4 encodeObject:self->_metaContentVector forKey:@"m"];
  [v4 encodeInt64:self->_localResourceGeneration forKey:@"r"];
  [v4 encodeInt32:self->_bookmarkVersion forKey:@"b"];
  [v4 encodeInt64:self->_lastDeltaDate forKey:@"d"];
  set = self->_set;
  p_set = &self->_set;
  v7 = set;
  v8 = *p_set;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [CCSet alloc];
    v10 = [*p_set itemType];
    v11 = [*p_set personaIdentifier];
    v12 = [*p_set descriptors];
    v13 = [*p_set options];
    v17 = 0;
    v14 = [(CCSet *)v9 initWithItemType:v10 personaIdentifier:v11 descriptors:v12 options:v13 error:&v17];
    v15 = v17;

    if (!v14)
    {
      v16 = __biome_log_for_category();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(CCSetChangeBookmark *)p_set encodeWithCoder:v15, v16];
      }
    }

    v7 = v14;
  }

  [v4 encodeObject:v7 forKey:@"s"];
}

- (CCSetChangeBookmark)initWithCoder:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"r"];
  v6 = [v4 decodeInt32ForKey:@"b"];
  v7 = [v4 decodeInt64ForKey:@"d"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"s"];
  if (v8)
  {
    v9 = [v4 decodeObjectOfClass:getCKDistributedTimestampStateVectorClass() forKey:@"c"];
    if (v9)
    {
      v10 = [v4 decodeObjectOfClass:getCKDistributedTimestampStateVectorClass() forKey:@"m"];
      if (v10)
      {
        self = [(CCSetChangeBookmark *)self initWithContentVector:v9 metaContentVector:v10 localResourceGeneration:v5 lastDeltaDate:v7 set:v8];
        v11 = self;
LABEL_14:

        goto LABEL_15;
      }

      v13 = __biome_log_for_category();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"versions: {resource: %lld bookmark: %d}", v5, v6];
        *buf = 138412546;
        v18 = v8;
        v19 = 2112;
        v20 = v16;
        _os_log_error_impl(&dword_1B6DB2000, v13, OS_LOG_TYPE_ERROR, "Bookmark for set: %@ missing metacontent vector. %@", buf, 0x16u);
      }
    }

    else
    {
      v10 = __biome_log_for_category();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"versions: {resource: %lld bookmark: %d}", v5, v6];
        *buf = 138412546;
        v18 = v8;
        v19 = 2112;
        v20 = v12;
        _os_log_error_impl(&dword_1B6DB2000, v10, OS_LOG_TYPE_ERROR, "Bookmark for set: %@ missing content vector. %@", buf, 0x16u);
      }
    }

    v11 = 0;
    goto LABEL_14;
  }

  v9 = __biome_log_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(CCSetChangeBookmark *)v5 initWithCoder:v6, v9];
  }

  v11 = 0;
LABEL_15:

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)encodeWithCoder:(os_log_t)log .cold.1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1B6DB2000, log, OS_LOG_TYPE_ERROR, "Failed to copy serialized set: %@ error: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"versions: {resource: %lld bookmark: %d}", a1, a2];
  *buf = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_1B6DB2000, a3, OS_LOG_TYPE_ERROR, "Bookmark missing set %@", buf, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

@end