@interface _CDCloudFamilyDataCollectionSession
+ (void)generateNewSession;
- (_CDCloudFamilyDataCollectionSession)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (uint64_t)isValidForCollectionDate:(uint64_t)a1;
- (void)encodeWithCoder:(id)a3;
- (void)initWithIdentifier:(void *)a3 salt:(void *)a4 latestStartDate:(void *)a5 lastCollectionDate:(uint64_t)a6 batchNumber:;
- (void)subsequentSessionWithlatestStartDate:(void *)a3 lastCollectionDate:;
@end

@implementation _CDCloudFamilyDataCollectionSession

- (void)initWithIdentifier:(void *)a3 salt:(void *)a4 latestStartDate:(void *)a5 lastCollectionDate:(uint64_t)a6 batchNumber:
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (a1)
  {
    v24.receiver = a1;
    v24.super_class = _CDCloudFamilyDataCollectionSession;
    a1 = objc_msgSendSuper2(&v24, sel_init);
    if (a1)
    {
      v15 = [v11 copy];
      v16 = a1[1];
      a1[1] = v15;

      v17 = [v12 copy];
      v18 = a1[2];
      a1[2] = v17;

      v19 = [v13 copy];
      v20 = a1[3];
      a1[3] = v19;

      v21 = [v14 copy];
      v22 = a1[4];
      a1[4] = v21;

      a1[5] = a6;
    }
  }

  return a1;
}

+ (void)generateNewSession
{
  v0 = objc_alloc(objc_opt_self());
  v1 = [MEMORY[0x1E696AFB0] UUID];
  v2 = [v1 UUIDString];
  v3 = [v2 lowercaseString];
  v4 = [MEMORY[0x1E695DF88] dataWithLength:32];
  if (SecRandomCopyBytes(*MEMORY[0x1E697B308], 0x20uLL, [v4 mutableBytes]))
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithData:v4];
  }

  v6 = [(_CDCloudFamilyDataCollectionSession *)v0 initWithIdentifier:v3 salt:v5 latestStartDate:0 lastCollectionDate:0 batchNumber:1];

  return v6;
}

- (void)subsequentSessionWithlatestStartDate:(void *)a3 lastCollectionDate:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if (!v5)
    {
      v7 = a1[3];
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = [MEMORY[0x1E695DF00] distantPast];
      }

      v5 = v9;
    }

    v10 = objc_alloc(objc_opt_class());
    v11 = a1[1];
    v12 = a1[2];
    v13 = a1[5];
    v14 = v11;
    v15 = OUTLINED_FUNCTION_65_0();
    a1 = [(_CDCloudFamilyDataCollectionSession *)v15 initWithIdentifier:v16 salt:v12 latestStartDate:v5 lastCollectionDate:v6 batchNumber:v17];
  }

  return a1;
}

- (uint64_t)isValidForCollectionDate:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      v5 = v4;
      v6 = [v3 compare:*(a1 + 24)] != -1;
    }

    else
    {
      v6 = 1;
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = v7;
      v9 = [v3 compare:*(a1 + 32)];

      if (v9 == -1)
      {
        v6 = 0;
      }
    }

    if (*(a1 + 8) && *(a1 + 16))
    {
      if (*(a1 + 40))
      {
        a1 = v6;
      }

      else
      {
        a1 = 0;
      }
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_CDCloudFamilyDataCollectionSession allocWithZone:a3];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self)
  {
    [v4 encodeObject:self->_identifier forKey:@"identifier"];
    salt = self->_salt;
  }

  else
  {
    [v4 encodeObject:0 forKey:@"identifier"];
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

- (_CDCloudFamilyDataCollectionSession)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"salt"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"latestStartDate"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastCollectionDate"];
  v9 = [v4 decodeIntegerForKey:@"batchNumber"];

  v10 = [(_CDCloudFamilyDataCollectionSession *)self initWithIdentifier:v5 salt:v6 latestStartDate:v7 lastCollectionDate:v8 batchNumber:v9];
  return v10;
}

@end