@interface _CDInteractionDataCollectionSession
+ (id)generateNewSession;
- (BOOL)isValidForCollectionDate:(id)a3;
- (_CDInteractionDataCollectionSession)initWithCoder:(id)a3;
- (_CDInteractionDataCollectionSession)initWithIdentifier:(id)a3 salt:(id)a4 latestStartDate:(id)a5 lastCollectionDate:(id)a6 batchNumber:(unint64_t)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)subsequentSessionWithlatestStartDate:(id)a3 lastCollectionDate:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _CDInteractionDataCollectionSession

- (_CDInteractionDataCollectionSession)initWithIdentifier:(id)a3 salt:(id)a4 latestStartDate:(id)a5 lastCollectionDate:(id)a6 batchNumber:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v26.receiver = self;
  v26.super_class = _CDInteractionDataCollectionSession;
  v16 = [(_CDInteractionDataCollectionSession *)&v26 init];
  if (v16)
  {
    v17 = [v12 copy];
    identifier = v16->_identifier;
    v16->_identifier = v17;

    v19 = [v13 copy];
    salt = v16->_salt;
    v16->_salt = v19;

    v21 = [v14 copy];
    latestStartDate = v16->_latestStartDate;
    v16->_latestStartDate = v21;

    v23 = [v15 copy];
    lastCollectionDate = v16->_lastCollectionDate;
    v16->_lastCollectionDate = v23;

    v16->_batchNumber = a7;
  }

  return v16;
}

+ (id)generateNewSession
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];
  v5 = [v4 lowercaseString];
  v6 = [MEMORY[0x1E695DF88] dataWithLength:32];
  if (SecRandomCopyBytes(*MEMORY[0x1E697B308], 0x20uLL, [v6 mutableBytes]))
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E695DEF0] dataWithData:v6];
  }

  v8 = [v2 initWithIdentifier:v5 salt:v7 latestStartDate:0 lastCollectionDate:0 batchNumber:1];

  return v8;
}

- (id)subsequentSessionWithlatestStartDate:(id)a3 lastCollectionDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v8 = [(_CDInteractionDataCollectionSession *)self latestStartDate];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [MEMORY[0x1E695DF00] distantPast];
    }

    v6 = v10;
  }

  v11 = objc_alloc(objc_opt_class());
  v12 = [(_CDInteractionDataCollectionSession *)self identifier];
  v13 = [(_CDInteractionDataCollectionSession *)self salt];
  v14 = [v11 initWithIdentifier:v12 salt:v13 latestStartDate:v6 lastCollectionDate:v7 batchNumber:{-[_CDInteractionDataCollectionSession batchNumber](self, "batchNumber") + 1}];

  return v14;
}

- (BOOL)isValidForCollectionDate:(id)a3
{
  v4 = a3;
  v5 = [(_CDInteractionDataCollectionSession *)self latestStartDate];
  if (v5)
  {
    v6 = v5;
    v7 = [(_CDInteractionDataCollectionSession *)self latestStartDate];
    v8 = [v4 compare:v7] != -1;
  }

  else
  {
    v8 = 1;
  }

  v9 = [(_CDInteractionDataCollectionSession *)self lastCollectionDate];
  if (v9)
  {
    v10 = v9;
    v11 = [(_CDInteractionDataCollectionSession *)self lastCollectionDate];
    v12 = [v4 compare:v11];

    if (v12 == -1)
    {
      v8 = 0;
    }
  }

  v13 = [(_CDInteractionDataCollectionSession *)self identifier];
  if (v13)
  {
    v14 = [(_CDInteractionDataCollectionSession *)self salt];
    if (v14)
    {
      if ([(_CDInteractionDataCollectionSession *)self batchNumber])
      {
        v15 = v8;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_CDInteractionDataCollectionSession allocWithZone:a3];
  v5 = [(_CDInteractionDataCollectionSession *)self identifier];
  v6 = [(_CDInteractionDataCollectionSession *)self salt];
  v7 = [(_CDInteractionDataCollectionSession *)self latestStartDate];
  v8 = [(_CDInteractionDataCollectionSession *)self lastCollectionDate];
  v9 = [(_CDInteractionDataCollectionSession *)v4 initWithIdentifier:v5 salt:v6 latestStartDate:v7 lastCollectionDate:v8 batchNumber:[(_CDInteractionDataCollectionSession *)self batchNumber]];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_CDInteractionDataCollectionSession *)self identifier];
  v6 = NSStringFromSelector(sel_identifier);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(_CDInteractionDataCollectionSession *)self salt];
  v8 = NSStringFromSelector(sel_salt);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(_CDInteractionDataCollectionSession *)self latestStartDate];
  v10 = NSStringFromSelector(sel_latestStartDate);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(_CDInteractionDataCollectionSession *)self lastCollectionDate];
  v12 = NSStringFromSelector(sel_lastCollectionDate);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(_CDInteractionDataCollectionSession *)self batchNumber];
  v14 = NSStringFromSelector(sel_batchNumber);
  [v4 encodeInteger:v13 forKey:v14];
}

- (_CDInteractionDataCollectionSession)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_identifier);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_salt);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_latestStartDate);
  v13 = [v4 decodeObjectOfClass:v11 forKey:v12];

  v14 = objc_opt_class();
  v15 = NSStringFromSelector(sel_lastCollectionDate);
  v16 = [v4 decodeObjectOfClass:v14 forKey:v15];

  v17 = NSStringFromSelector(sel_batchNumber);
  v18 = [v4 decodeIntegerForKey:v17];

  v19 = [(_CDInteractionDataCollectionSession *)self initWithIdentifier:v7 salt:v10 latestStartDate:v13 lastCollectionDate:v16 batchNumber:v18];
  return v19;
}

@end