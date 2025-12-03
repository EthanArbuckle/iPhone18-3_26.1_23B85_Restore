@interface CCSetChangeBookmark
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSetChangeBookmark:(id)bookmark;
- (CCSetChangeBookmark)init;
- (CCSetChangeBookmark)initWithCoder:(id)coder;
- (CCSetChangeBookmark)initWithContentVector:(id)vector metaContentVector:(id)contentVector localResourceGeneration:(int64_t)generation lastDeltaDate:(int64_t)date set:(id)set;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CCSetChangeBookmark

- (CCSetChangeBookmark)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CCSetChangeBookmark)initWithContentVector:(id)vector metaContentVector:(id)contentVector localResourceGeneration:(int64_t)generation lastDeltaDate:(int64_t)date set:(id)set
{
  vectorCopy = vector;
  contentVectorCopy = contentVector;
  setCopy = set;
  v19.receiver = self;
  v19.super_class = CCSetChangeBookmark;
  v16 = [(CCSetChangeBookmark *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_contentVector, vector);
    objc_storeStrong(&v17->_metaContentVector, contentVector);
    v17->_bookmarkVersion = 2;
    v17->_localResourceGeneration = generation;
    v17->_lastDeltaDate = date;
    objc_storeStrong(&v17->_set, set);
  }

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CCSetChangeBookmark *)self isEqualToSetChangeBookmark:v5];
  }

  return v6;
}

- (BOOL)isEqualToSetChangeBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  localResourceGeneration = self->_localResourceGeneration;
  if (localResourceGeneration == [bookmarkCopy localResourceGeneration] && (bookmarkVersion = self->_bookmarkVersion, bookmarkVersion == objc_msgSend(bookmarkCopy, "bookmarkVersion")) && (lastDeltaDate = self->_lastDeltaDate, lastDeltaDate == objc_msgSend(bookmarkCopy, "lastDeltaDate")))
  {
    set = self->_set;
    v9 = [bookmarkCopy set];
    if ([(CCSet *)set isEqual:v9])
    {
      contentVector = self->_contentVector;
      contentVector = [bookmarkCopy contentVector];
      if ([(CKDistributedTimestampStateVector *)contentVector isEqual:contentVector])
      {
        metaContentVector = self->_metaContentVector;
        metaContentVector = [bookmarkCopy metaContentVector];
        v14 = [(CKDistributedTimestampStateVector *)metaContentVector isEqual:metaContentVector];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_contentVector forKey:@"c"];
  [coderCopy encodeObject:self->_metaContentVector forKey:@"m"];
  [coderCopy encodeInt64:self->_localResourceGeneration forKey:@"r"];
  [coderCopy encodeInt32:self->_bookmarkVersion forKey:@"b"];
  [coderCopy encodeInt64:self->_lastDeltaDate forKey:@"d"];
  set = self->_set;
  p_set = &self->_set;
  v7 = set;
  v8 = *p_set;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [CCSet alloc];
    itemType = [*p_set itemType];
    personaIdentifier = [*p_set personaIdentifier];
    descriptors = [*p_set descriptors];
    options = [*p_set options];
    v17 = 0;
    v14 = [(CCSet *)v9 initWithItemType:itemType personaIdentifier:personaIdentifier descriptors:descriptors options:options error:&v17];
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

  [coderCopy encodeObject:v7 forKey:@"s"];
}

- (CCSetChangeBookmark)initWithCoder:(id)coder
{
  v21 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"r"];
  v6 = [coderCopy decodeInt32ForKey:@"b"];
  v7 = [coderCopy decodeInt64ForKey:@"d"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"s"];
  if (v8)
  {
    v9 = [coderCopy decodeObjectOfClass:getCKDistributedTimestampStateVectorClass() forKey:@"c"];
    if (v9)
    {
      v10 = [coderCopy decodeObjectOfClass:getCKDistributedTimestampStateVectorClass() forKey:@"m"];
      if (v10)
      {
        self = [(CCSetChangeBookmark *)self initWithContentVector:v9 metaContentVector:v10 localResourceGeneration:v5 lastDeltaDate:v7 set:v8];
        selfCopy = self;
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

    selfCopy = 0;
    goto LABEL_14;
  }

  v9 = __biome_log_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(CCSetChangeBookmark *)v5 initWithCoder:v6, v9];
  }

  selfCopy = 0;
LABEL_15:

  v14 = *MEMORY[0x1E69E9840];
  return selfCopy;
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