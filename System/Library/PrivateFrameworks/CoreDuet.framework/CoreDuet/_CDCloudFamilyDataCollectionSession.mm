@interface _CDCloudFamilyDataCollectionSession
+ (void)generateNewSession;
- (_CDCloudFamilyDataCollectionSession)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (uint64_t)isValidForCollectionDate:(uint64_t)date;
- (void)encodeWithCoder:(id)coder;
- (void)initWithIdentifier:(void *)identifier salt:(void *)salt latestStartDate:(void *)date lastCollectionDate:(uint64_t)collectionDate batchNumber:;
- (void)subsequentSessionWithlatestStartDate:(void *)date lastCollectionDate:;
@end

@implementation _CDCloudFamilyDataCollectionSession

- (void)initWithIdentifier:(void *)identifier salt:(void *)salt latestStartDate:(void *)date lastCollectionDate:(uint64_t)collectionDate batchNumber:
{
  v11 = a2;
  identifierCopy = identifier;
  saltCopy = salt;
  dateCopy = date;
  if (self)
  {
    v24.receiver = self;
    v24.super_class = _CDCloudFamilyDataCollectionSession;
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
  v0 = objc_alloc(objc_opt_self());
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  lowercaseString = [uUIDString lowercaseString];
  v4 = [MEMORY[0x1E695DF88] dataWithLength:32];
  if (SecRandomCopyBytes(*MEMORY[0x1E697B308], 0x20uLL, [v4 mutableBytes]))
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithData:v4];
  }

  v6 = [(_CDCloudFamilyDataCollectionSession *)v0 initWithIdentifier:lowercaseString salt:v5 latestStartDate:0 lastCollectionDate:0 batchNumber:1];

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
    v15 = OUTLINED_FUNCTION_65_0();
    self = [(_CDCloudFamilyDataCollectionSession *)v15 initWithIdentifier:v16 salt:v12 latestStartDate:v5 lastCollectionDate:dateCopy batchNumber:v17];
  }

  return self;
}

- (uint64_t)isValidForCollectionDate:(uint64_t)date
{
  v3 = a2;
  if (date)
  {
    v4 = *(date + 24);
    if (v4)
    {
      v5 = v4;
      v6 = [v3 compare:*(date + 24)] != -1;
    }

    else
    {
      v6 = 1;
    }

    v7 = *(date + 32);
    if (v7)
    {
      v8 = v7;
      v9 = [v3 compare:*(date + 32)];

      if (v9 == -1)
      {
        v6 = 0;
      }
    }

    if (*(date + 8) && *(date + 16))
    {
      if (*(date + 40))
      {
        date = v6;
      }

      else
      {
        date = 0;
      }
    }

    else
    {
      date = 0;
    }
  }

  return date;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_CDCloudFamilyDataCollectionSession allocWithZone:zone];
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

  v10 = [(_CDCloudFamilyDataCollectionSession *)v4 initWithIdentifier:v5 salt:v6 latestStartDate:v7 lastCollectionDate:v8 batchNumber:batchNumber];

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

- (_CDCloudFamilyDataCollectionSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"salt"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"latestStartDate"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastCollectionDate"];
  v9 = [coderCopy decodeIntegerForKey:@"batchNumber"];

  v10 = [(_CDCloudFamilyDataCollectionSession *)self initWithIdentifier:v5 salt:v6 latestStartDate:v7 lastCollectionDate:v8 batchNumber:v9];
  return v10;
}

@end