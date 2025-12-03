@interface _CDDataCollectionSession
+ (void)generateNewSession;
- (_CDDataCollectionSession)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)initWithIdentifier:(void *)identifier salt:(void *)salt latestStartDate:(void *)date lastCollectionDate:(uint64_t)collectionDate batchNumber:;
- (void)subsequentSessionWithlatestStartDate:(void *)date lastCollectionDate:;
@end

@implementation _CDDataCollectionSession

- (void)initWithIdentifier:(void *)identifier salt:(void *)salt latestStartDate:(void *)date lastCollectionDate:(uint64_t)collectionDate batchNumber:
{
  v11 = a2;
  identifierCopy = identifier;
  saltCopy = salt;
  dateCopy = date;
  if (self)
  {
    v24.receiver = self;
    v24.super_class = _CDDataCollectionSession;
    self = objc_msgSendSuper2(&v24, sel_init);
    if (self)
    {
      v15 = [v11 copy];
      v16 = self[1];
      self[1] = v15;

      v17 = [identifierCopy copy];
      v18 = self[2];
      self[2] = v17;

      v19 = [saltCopy copy];
      v20 = self[3];
      self[3] = v19;

      v21 = [dateCopy copy];
      v22 = self[4];
      self[4] = v21;

      self[5] = collectionDate;
    }
  }

  return self;
}

+ (void)generateNewSession
{
  v0 = objc_opt_self();
  v1 = [_CDDataCollectionUtilities randomDataWithLength:32];
  v2 = [v0 alloc];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  lowercaseString = [uUIDString lowercaseString];
  v6 = [(_CDDataCollectionSession *)v2 initWithIdentifier:lowercaseString salt:v1 latestStartDate:0 lastCollectionDate:0 batchNumber:1];

  return v6;
}

- (void)subsequentSessionWithlatestStartDate:(void *)date lastCollectionDate:
{
  v5 = a2;
  dateCopy = date;
  if (self)
  {
    if (!v5)
    {
      v7 = self[3];
      v8 = v7;
      if (v7)
      {
        distantPast = v7;
      }

      else
      {
        distantPast = [MEMORY[0x1E695DF00] distantPast];
      }

      v5 = distantPast;
    }

    v10 = objc_alloc(objc_opt_class());
    v11 = self[1];
    v12 = self[2];
    v13 = self[5];
    v14 = v11;
    self = [(_CDDataCollectionSession *)v10 initWithIdentifier:v14 salt:v12 latestStartDate:v5 lastCollectionDate:dateCopy batchNumber:v13 + 1];
  }

  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_CDDataCollectionSession allocWithZone:zone];
  if (self)
  {
    v5 = self->_identifier;
    v6 = self->_salt;
    v7 = self->_latestStartDate;
    v8 = self->_lastCollectionDate;
    batchNumber = self->_batchNumber;
  }

  else
  {
    v8 = 0;
    v6 = 0;
    v5 = 0;
    v7 = 0;
    batchNumber = 0;
  }

  v10 = [(_CDDataCollectionSession *)v4 initWithIdentifier:v5 salt:v6 latestStartDate:v7 lastCollectionDate:v8 batchNumber:batchNumber];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v8 = coderCopy;
  if (self)
  {
    [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
    salt = self->_salt;
  }

  else
  {
    [coderCopy encodeObject:0 forKey:@"identifier"];
    salt = 0;
  }

  [v8 encodeObject:salt forKey:@"salt"];
  if (self)
  {
    [v8 encodeObject:self->_latestStartDate forKey:@"latestStartDate"];
    lastCollectionDate = self->_lastCollectionDate;
  }

  else
  {
    [v8 encodeObject:0 forKey:@"latestStartDate"];
    lastCollectionDate = 0;
  }

  [v8 encodeObject:lastCollectionDate forKey:@"lastCollectionDate"];
  if (self)
  {
    batchNumber = self->_batchNumber;
  }

  else
  {
    batchNumber = 0;
  }

  [v8 encodeInteger:batchNumber forKey:@"batchNumber"];
}

- (_CDDataCollectionSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"salt"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"latestStartDate"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastCollectionDate"];
  v9 = [coderCopy decodeIntegerForKey:@"batchNumber"];

  v10 = [(_CDDataCollectionSession *)self initWithIdentifier:v5 salt:v6 latestStartDate:v7 lastCollectionDate:v8 batchNumber:v9];
  return v10;
}

@end