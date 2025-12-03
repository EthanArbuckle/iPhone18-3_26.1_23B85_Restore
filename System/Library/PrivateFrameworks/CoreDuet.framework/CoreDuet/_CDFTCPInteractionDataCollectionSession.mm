@interface _CDFTCPInteractionDataCollectionSession
+ (id)generateNewSession;
- (BOOL)isValidForCollectionDate:(id)date;
- (_CDFTCPInteractionDataCollectionSession)initWithCoder:(id)coder;
- (_CDFTCPInteractionDataCollectionSession)initWithIdentifier:(id)identifier salt:(id)salt latestStartDate:(id)date lastCollectionDate:(id)collectionDate batchNumber:(unint64_t)number;
- (id)copyWithZone:(_NSZone *)zone;
- (id)subsequentSessionWithlatestStartDate:(id)date lastCollectionDate:(id)collectionDate;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CDFTCPInteractionDataCollectionSession

- (_CDFTCPInteractionDataCollectionSession)initWithIdentifier:(id)identifier salt:(id)salt latestStartDate:(id)date lastCollectionDate:(id)collectionDate batchNumber:(unint64_t)number
{
  identifierCopy = identifier;
  saltCopy = salt;
  dateCopy = date;
  collectionDateCopy = collectionDate;
  v26.receiver = self;
  v26.super_class = _CDFTCPInteractionDataCollectionSession;
  v16 = [(_CDFTCPInteractionDataCollectionSession *)&v26 init];
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
  v6 = _CDRandomDataWithLength();
  v7 = [v2 initWithIdentifier:lowercaseString salt:v6 latestStartDate:0 lastCollectionDate:0 batchNumber:1];

  return v7;
}

- (id)subsequentSessionWithlatestStartDate:(id)date lastCollectionDate:(id)collectionDate
{
  dateCopy = date;
  collectionDateCopy = collectionDate;
  if (!dateCopy)
  {
    latestStartDate = [(_CDFTCPInteractionDataCollectionSession *)self latestStartDate];
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
  identifier = [(_CDFTCPInteractionDataCollectionSession *)self identifier];
  salt = [(_CDFTCPInteractionDataCollectionSession *)self salt];
  v14 = [v11 initWithIdentifier:identifier salt:salt latestStartDate:dateCopy lastCollectionDate:collectionDateCopy batchNumber:{-[_CDFTCPInteractionDataCollectionSession batchNumber](self, "batchNumber") + 1}];

  return v14;
}

- (BOOL)isValidForCollectionDate:(id)date
{
  dateCopy = date;
  latestStartDate = [(_CDFTCPInteractionDataCollectionSession *)self latestStartDate];
  if (latestStartDate)
  {
    v6 = latestStartDate;
    latestStartDate2 = [(_CDFTCPInteractionDataCollectionSession *)self latestStartDate];
    v8 = [dateCopy compare:latestStartDate2] != -1;
  }

  else
  {
    v8 = 1;
  }

  lastCollectionDate = [(_CDFTCPInteractionDataCollectionSession *)self lastCollectionDate];
  if (lastCollectionDate)
  {
    v10 = lastCollectionDate;
    lastCollectionDate2 = [(_CDFTCPInteractionDataCollectionSession *)self lastCollectionDate];
    v12 = [dateCopy compare:lastCollectionDate2];

    if (v12 == -1)
    {
      v8 = 0;
    }
  }

  identifier = [(_CDFTCPInteractionDataCollectionSession *)self identifier];
  if (identifier)
  {
    salt = [(_CDFTCPInteractionDataCollectionSession *)self salt];
    if (salt)
    {
      if ([(_CDFTCPInteractionDataCollectionSession *)self batchNumber])
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
  v4 = [_CDFTCPInteractionDataCollectionSession allocWithZone:zone];
  identifier = [(_CDFTCPInteractionDataCollectionSession *)self identifier];
  salt = [(_CDFTCPInteractionDataCollectionSession *)self salt];
  latestStartDate = [(_CDFTCPInteractionDataCollectionSession *)self latestStartDate];
  lastCollectionDate = [(_CDFTCPInteractionDataCollectionSession *)self lastCollectionDate];
  v9 = [(_CDFTCPInteractionDataCollectionSession *)v4 initWithIdentifier:identifier salt:salt latestStartDate:latestStartDate lastCollectionDate:lastCollectionDate batchNumber:[(_CDFTCPInteractionDataCollectionSession *)self batchNumber]];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(_CDFTCPInteractionDataCollectionSession *)self identifier];
  v6 = NSStringFromSelector(sel_identifier);
  [coderCopy encodeObject:identifier forKey:v6];

  salt = [(_CDFTCPInteractionDataCollectionSession *)self salt];
  v8 = NSStringFromSelector(sel_salt);
  [coderCopy encodeObject:salt forKey:v8];

  latestStartDate = [(_CDFTCPInteractionDataCollectionSession *)self latestStartDate];
  v10 = NSStringFromSelector(sel_latestStartDate);
  [coderCopy encodeObject:latestStartDate forKey:v10];

  lastCollectionDate = [(_CDFTCPInteractionDataCollectionSession *)self lastCollectionDate];
  v12 = NSStringFromSelector(sel_lastCollectionDate);
  [coderCopy encodeObject:lastCollectionDate forKey:v12];

  batchNumber = [(_CDFTCPInteractionDataCollectionSession *)self batchNumber];
  v14 = NSStringFromSelector(sel_batchNumber);
  [coderCopy encodeInteger:batchNumber forKey:v14];
}

- (_CDFTCPInteractionDataCollectionSession)initWithCoder:(id)coder
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

  v19 = [(_CDFTCPInteractionDataCollectionSession *)self initWithIdentifier:v7 salt:v10 latestStartDate:v13 lastCollectionDate:v16 batchNumber:v18];
  return v19;
}

@end