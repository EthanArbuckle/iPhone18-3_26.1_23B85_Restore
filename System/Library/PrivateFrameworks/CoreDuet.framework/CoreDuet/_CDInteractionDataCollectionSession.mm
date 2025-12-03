@interface _CDInteractionDataCollectionSession
+ (id)generateNewSession;
- (BOOL)isValidForCollectionDate:(id)date;
- (_CDInteractionDataCollectionSession)initWithCoder:(id)coder;
- (_CDInteractionDataCollectionSession)initWithIdentifier:(id)identifier salt:(id)salt latestStartDate:(id)date lastCollectionDate:(id)collectionDate batchNumber:(unint64_t)number;
- (id)copyWithZone:(_NSZone *)zone;
- (id)subsequentSessionWithlatestStartDate:(id)date lastCollectionDate:(id)collectionDate;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CDInteractionDataCollectionSession

- (_CDInteractionDataCollectionSession)initWithIdentifier:(id)identifier salt:(id)salt latestStartDate:(id)date lastCollectionDate:(id)collectionDate batchNumber:(unint64_t)number
{
  identifierCopy = identifier;
  saltCopy = salt;
  dateCopy = date;
  collectionDateCopy = collectionDate;
  v26.receiver = self;
  v26.super_class = _CDInteractionDataCollectionSession;
  v16 = [(_CDInteractionDataCollectionSession *)&v26 init];
  if (v16)
  {
    v17 = [identifierCopy copy];
    identifier = v16->_identifier;
    v16->_identifier = v17;

    v19 = [saltCopy copy];
    salt = v16->_salt;
    v16->_salt = v19;

    v21 = [dateCopy copy];
    latestStartDate = v16->_latestStartDate;
    v16->_latestStartDate = v21;

    v23 = [collectionDateCopy copy];
    lastCollectionDate = v16->_lastCollectionDate;
    v16->_lastCollectionDate = v23;

    v16->_batchNumber = number;
  }

  return v16;
}

+ (id)generateNewSession
{
  v2 = [self alloc];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  lowercaseString = [uUIDString lowercaseString];
  v6 = [MEMORY[0x1E695DF88] dataWithLength:32];
  if (SecRandomCopyBytes(*MEMORY[0x1E697B308], 0x20uLL, [v6 mutableBytes]))
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E695DEF0] dataWithData:v6];
  }

  v8 = [v2 initWithIdentifier:lowercaseString salt:v7 latestStartDate:0 lastCollectionDate:0 batchNumber:1];

  return v8;
}

- (id)subsequentSessionWithlatestStartDate:(id)date lastCollectionDate:(id)collectionDate
{
  dateCopy = date;
  collectionDateCopy = collectionDate;
  if (!dateCopy)
  {
    latestStartDate = [(_CDInteractionDataCollectionSession *)self latestStartDate];
    v9 = latestStartDate;
    if (latestStartDate)
    {
      distantPast = latestStartDate;
    }

    else
    {
      distantPast = [MEMORY[0x1E695DF00] distantPast];
    }

    dateCopy = distantPast;
  }

  v11 = objc_alloc(objc_opt_class());
  identifier = [(_CDInteractionDataCollectionSession *)self identifier];
  salt = [(_CDInteractionDataCollectionSession *)self salt];
  v14 = [v11 initWithIdentifier:identifier salt:salt latestStartDate:dateCopy lastCollectionDate:collectionDateCopy batchNumber:{-[_CDInteractionDataCollectionSession batchNumber](self, "batchNumber") + 1}];

  return v14;
}

- (BOOL)isValidForCollectionDate:(id)date
{
  dateCopy = date;
  latestStartDate = [(_CDInteractionDataCollectionSession *)self latestStartDate];
  if (latestStartDate)
  {
    v6 = latestStartDate;
    latestStartDate2 = [(_CDInteractionDataCollectionSession *)self latestStartDate];
    v8 = [dateCopy compare:latestStartDate2] != -1;
  }

  else
  {
    v8 = 1;
  }

  lastCollectionDate = [(_CDInteractionDataCollectionSession *)self lastCollectionDate];
  if (lastCollectionDate)
  {
    v10 = lastCollectionDate;
    lastCollectionDate2 = [(_CDInteractionDataCollectionSession *)self lastCollectionDate];
    v12 = [dateCopy compare:lastCollectionDate2];

    if (v12 == -1)
    {
      v8 = 0;
    }
  }

  identifier = [(_CDInteractionDataCollectionSession *)self identifier];
  if (identifier)
  {
    salt = [(_CDInteractionDataCollectionSession *)self salt];
    if (salt)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_CDInteractionDataCollectionSession allocWithZone:zone];
  identifier = [(_CDInteractionDataCollectionSession *)self identifier];
  salt = [(_CDInteractionDataCollectionSession *)self salt];
  latestStartDate = [(_CDInteractionDataCollectionSession *)self latestStartDate];
  lastCollectionDate = [(_CDInteractionDataCollectionSession *)self lastCollectionDate];
  v9 = [(_CDInteractionDataCollectionSession *)v4 initWithIdentifier:identifier salt:salt latestStartDate:latestStartDate lastCollectionDate:lastCollectionDate batchNumber:[(_CDInteractionDataCollectionSession *)self batchNumber]];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(_CDInteractionDataCollectionSession *)self identifier];
  v6 = NSStringFromSelector(sel_identifier);
  [coderCopy encodeObject:identifier forKey:v6];

  salt = [(_CDInteractionDataCollectionSession *)self salt];
  v8 = NSStringFromSelector(sel_salt);
  [coderCopy encodeObject:salt forKey:v8];

  latestStartDate = [(_CDInteractionDataCollectionSession *)self latestStartDate];
  v10 = NSStringFromSelector(sel_latestStartDate);
  [coderCopy encodeObject:latestStartDate forKey:v10];

  lastCollectionDate = [(_CDInteractionDataCollectionSession *)self lastCollectionDate];
  v12 = NSStringFromSelector(sel_lastCollectionDate);
  [coderCopy encodeObject:lastCollectionDate forKey:v12];

  batchNumber = [(_CDInteractionDataCollectionSession *)self batchNumber];
  v14 = NSStringFromSelector(sel_batchNumber);
  [coderCopy encodeInteger:batchNumber forKey:v14];
}

- (_CDInteractionDataCollectionSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_identifier);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_salt);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_latestStartDate);
  v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];

  v14 = objc_opt_class();
  v15 = NSStringFromSelector(sel_lastCollectionDate);
  v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];

  v17 = NSStringFromSelector(sel_batchNumber);
  v18 = [coderCopy decodeIntegerForKey:v17];

  v19 = [(_CDInteractionDataCollectionSession *)self initWithIdentifier:v7 salt:v10 latestStartDate:v13 lastCollectionDate:v16 batchNumber:v18];
  return v19;
}

@end