@interface PKCloudStoreRecordFetchTask
- (BOOL)isEqual:(id)equal;
- (BOOL)lastErrorIsSetupAssistantNotComplete;
- (PKCloudStoreRecordFetchTask)initWithCloudStoreZone:(id)zone type:(unint64_t)type;
- (PKCloudStoreRecordFetchTask)initWithCoder:(id)coder;
- (PKCloudStoreRecordFetchTask)initWithTransactionSourceIdentifier:(id)identifier type:(unint64_t)type;
- (PKCloudStoreRecordFetchTask)initWithType:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)identifier;
- (unint64_t)hash;
- (void)completeTaskWithError:(id)error;
- (void)encodeWithCoder:(id)coder;
- (void)queueTask;
- (void)startTask;
@end

@implementation PKCloudStoreRecordFetchTask

- (PKCloudStoreRecordFetchTask)initWithType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = PKCloudStoreRecordFetchTask;
  result = [(PKCloudStoreRecordFetchTask *)&v5 init];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

- (PKCloudStoreRecordFetchTask)initWithTransactionSourceIdentifier:(id)identifier type:(unint64_t)type
{
  identifierCopy = identifier;
  v8 = [(PKCloudStoreRecordFetchTask *)self initWithType:type];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_transactionSourceIdentifier, identifier);
  }

  return v9;
}

- (PKCloudStoreRecordFetchTask)initWithCloudStoreZone:(id)zone type:(unint64_t)type
{
  zoneCopy = zone;
  v8 = [(PKCloudStoreRecordFetchTask *)self initWithType:type];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_cloudStoreZone, zone);
  }

  return v9;
}

- (id)identifier
{
  transactionSourceIdentifier = self->_transactionSourceIdentifier;
  if (transactionSourceIdentifier)
  {
    zoneName = transactionSourceIdentifier;
  }

  else
  {
    cloudStoreZone = self->_cloudStoreZone;
    if (cloudStoreZone)
    {
      zoneName = [(PKCloudStoreZone *)cloudStoreZone zoneName];
    }

    else
    {
      zoneName = &stru_1F227FD28;
    }
  }

  return zoneName;
}

- (void)startTask
{
  date = [MEMORY[0x1E695DF00] date];
  startDate = self->_startDate;
  self->_startDate = date;

  endDate = self->_endDate;
  self->_endDate = 0;

  lastError = self->_lastError;
  self->_lastError = 0;

  nextPossibleFetchDate = self->_nextPossibleFetchDate;
  self->_nextPossibleFetchDate = 0;

  self->_status = 1;
}

- (void)queueTask
{
  date = [MEMORY[0x1E695DF00] date];
  startDate = self->_startDate;
  self->_startDate = date;

  endDate = self->_endDate;
  self->_endDate = 0;

  lastError = self->_lastError;
  self->_lastError = 0;

  nextPossibleFetchDate = self->_nextPossibleFetchDate;
  self->_nextPossibleFetchDate = 0;

  self->_status = 4;
}

- (void)completeTaskWithError:(id)error
{
  errorCopy = error;
  date = [MEMORY[0x1E695DF00] date];
  endDate = self->_endDate;
  self->_endDate = date;

  v7 = 2;
  if (errorCopy)
  {
    v7 = 3;
  }

  self->_status = v7;
  objc_storeStrong(&self->_lastError, error);
  lastErrorIsSetupAssistantNotComplete = [(PKCloudStoreRecordFetchTask *)self lastErrorIsSetupAssistantNotComplete];
  if (self->_status != 3 || lastErrorIsSetupAssistantNotComplete)
  {
    v11 = 0;
    self->_backoffLevel = 0;
  }

  else
  {
    backoffLevel = self->_backoffLevel;
    self->_backoffLevel = backoffLevel + 1;
    if ((backoffLevel + 1) < 0xD)
    {
      v10 = backoffLevel + 1;
    }

    else
    {
      v10 = 13;
    }

    v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:PKCloudStoreRecordFetchTaskBackOffLevelIntervals[v10]];
  }

  nextPossibleFetchDate = self->_nextPossibleFetchDate;
  self->_nextPossibleFetchDate = v11;
}

- (BOOL)lastErrorIsSetupAssistantNotComplete
{
  lastError = self->_lastError;
  if (lastError)
  {
    domain = [(NSError *)lastError domain];
    v5 = domain;
    if (domain != @"PKPassKitErrorDomain")
    {
      if (domain)
      {
        v6 = @"PKPassKitErrorDomain" == 0;
      }

      else
      {
        v6 = 1;
      }

      if (v6)
      {
      }

      else
      {
        v8 = [(__CFString *)domain isEqualToString:@"PKPassKitErrorDomain"];

        if (v8)
        {
          goto LABEL_12;
        }
      }

      v7 = 0;
      goto LABEL_14;
    }

LABEL_12:
    v7 = [(NSError *)self->_lastError code]== -4016;
LABEL_14:

    return v7;
  }

  return 0;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  v5 = self->_type - 1;
  if (v5 > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79D9380[v5];
  }

  [v3 setObject:v6 forKeyedSubscript:@"type"];
  v7 = self->_status - 1;
  if (v7 > 3)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_1E79D9398[v7];
  }

  [v4 setObject:v8 forKeyedSubscript:@"status"];
  [v4 setObject:self->_transactionSourceIdentifier forKeyedSubscript:@"transactionSourceIdentifier"];
  zoneName = [(PKCloudStoreZone *)self->_cloudStoreZone zoneName];
  [v4 setObject:zoneName forKeyedSubscript:@"cloudStoreZone"];

  v10 = [(NSDate *)self->_startDate description];
  [v4 setObject:v10 forKeyedSubscript:@"startDate"];

  v11 = [(NSDate *)self->_endDate description];
  [v4 setObject:v11 forKeyedSubscript:@"endDate"];

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:self->_backoffLevel];
  [v4 setObject:v12 forKeyedSubscript:@"backoffLevel"];

  v13 = [(NSDate *)self->_nextPossibleFetchDate description];
  [v4 setObject:v13 forKeyedSubscript:@"nextPossibleFetchDate"];

  v14 = [(NSError *)self->_lastError description];
  [v4 setObject:v14 forKeyedSubscript:@"lastError"];

  v15 = [v4 copy];

  return v15;
}

- (PKCloudStoreRecordFetchTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = PKCloudStoreRecordFetchTask;
  v5 = [(PKCloudStoreRecordFetchTask *)&v19 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v5->_status = [coderCopy decodeIntegerForKey:@"status"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionSourceIdentifier"];
    transactionSourceIdentifier = v5->_transactionSourceIdentifier;
    v5->_transactionSourceIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cloudStoreZone"];
    cloudStoreZone = v5->_cloudStoreZone;
    v5->_cloudStoreZone = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v12;

    v5->_backoffLevel = [coderCopy decodeIntegerForKey:@"backoffLevel"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nextPossibleFetchDate"];
    nextPossibleFetchDate = v5->_nextPossibleFetchDate;
    v5->_nextPossibleFetchDate = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastError"];
    lastError = v5->_lastError;
    v5->_lastError = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeInteger:self->_status forKey:@"status"];
  [coderCopy encodeObject:self->_transactionSourceIdentifier forKey:@"transactionSourceIdentifier"];
  [coderCopy encodeObject:self->_cloudStoreZone forKey:@"cloudStoreZone"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  [coderCopy encodeInteger:self->_backoffLevel forKey:@"backoffLevel"];
  [coderCopy encodeObject:self->_nextPossibleFetchDate forKey:@"nextPossibleFetchDate"];
  [coderCopy encodeObject:self->_lastError forKey:@"lastError"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKCloudStoreRecordFetchTask allocWithZone:](PKCloudStoreRecordFetchTask init];
  v5->_type = self->_type;
  v5->_status = self->_status;
  v6 = [(NSString *)self->_transactionSourceIdentifier copyWithZone:zone];
  transactionSourceIdentifier = v5->_transactionSourceIdentifier;
  v5->_transactionSourceIdentifier = v6;

  v8 = [(PKCloudStoreZone *)self->_cloudStoreZone copyWithZone:zone];
  cloudStoreZone = v5->_cloudStoreZone;
  v5->_cloudStoreZone = v8;

  v10 = [(NSDate *)self->_startDate copyWithZone:zone];
  startDate = v5->_startDate;
  v5->_startDate = v10;

  v12 = [(NSDate *)self->_endDate copyWithZone:zone];
  endDate = v5->_endDate;
  v5->_endDate = v12;

  v5->_backoffLevel = self->_backoffLevel;
  v14 = [(NSDate *)self->_nextPossibleFetchDate copyWithZone:zone];
  nextPossibleFetchDate = v5->_nextPossibleFetchDate;
  v5->_nextPossibleFetchDate = v14;

  v16 = [(NSError *)self->_lastError copyWithZone:zone];
  lastError = v5->_lastError;
  v5->_lastError = v16;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (!v6 || self->_type != v6[1] || self->_status != v6[2])
  {
    goto LABEL_37;
  }

  v8 = v6[3];
  v9 = self->_transactionSourceIdentifier;
  v10 = v8;
  v11 = v10;
  if (v9 == v10)
  {
  }

  else
  {
    if (!v9 || !v10)
    {

      goto LABEL_37;
    }

    v12 = [(NSString *)v9 isEqualToString:v10];

    if (!v12)
    {
      goto LABEL_37;
    }
  }

  cloudStoreZone = self->_cloudStoreZone;
  v14 = v7[4];
  if (cloudStoreZone && v14)
  {
    if (![(PKCloudStoreZone *)cloudStoreZone isEqual:?])
    {
      goto LABEL_37;
    }
  }

  else if (cloudStoreZone != v14)
  {
    goto LABEL_37;
  }

  startDate = self->_startDate;
  v16 = v7[5];
  if (startDate && v16)
  {
    if (([(NSDate *)startDate isEqual:?]& 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (startDate != v16)
  {
    goto LABEL_37;
  }

  endDate = self->_endDate;
  v18 = v7[6];
  if (endDate && v18)
  {
    if (([(NSDate *)endDate isEqual:?]& 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (endDate != v18)
  {
    goto LABEL_37;
  }

  if (self->_backoffLevel != v7[7])
  {
    goto LABEL_37;
  }

  nextPossibleFetchDate = self->_nextPossibleFetchDate;
  v20 = v7[8];
  if (!nextPossibleFetchDate || !v20)
  {
    if (nextPossibleFetchDate == v20)
    {
      goto LABEL_33;
    }

LABEL_37:
    v23 = 0;
    goto LABEL_38;
  }

  if (([(NSDate *)nextPossibleFetchDate isEqual:?]& 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_33:
  lastError = self->_lastError;
  v22 = v7[9];
  if (lastError && v22)
  {
    v23 = [(NSError *)lastError isEqual:?];
  }

  else
  {
    v23 = lastError == v22;
  }

LABEL_38:

  return v23;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_transactionSourceIdentifier];
  [array safelyAddObject:self->_cloudStoreZone];
  [array safelyAddObject:self->_startDate];
  [array safelyAddObject:self->_endDate];
  [array safelyAddObject:self->_lastError];
  [array safelyAddObject:self->_nextPossibleFetchDate];
  v4 = PKCombinedHash(17, array);
  v5 = self->_type - v4 + 32 * v4;
  v6 = self->_status - v5 + 32 * v5;
  v7 = self->_backoffLevel - v6 + 32 * v6;

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  v5 = self->_type - 1;
  if (v5 > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79D9380[v5];
  }

  [v3 appendFormat:@"type: '%@'; ", v6];
  v7 = self->_status - 1;
  if (v7 > 3)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_1E79D9398[v7];
  }

  [v4 appendFormat:@"status: '%@'; ", v8];
  if (self->_transactionSourceIdentifier)
  {
    [v4 appendFormat:@"transactionSourceIdentifier: '%@'; ", self->_transactionSourceIdentifier];
  }

  cloudStoreZone = self->_cloudStoreZone;
  if (cloudStoreZone)
  {
    zoneName = [(PKCloudStoreZone *)cloudStoreZone zoneName];
    [v4 appendFormat:@"cloudStoreZone: '%@'; ", zoneName];
  }

  [v4 appendFormat:@"startDate: '%@'; ", self->_startDate];
  if (self->_endDate)
  {
    [v4 appendFormat:@"endDate: '%@'; ", self->_endDate];
  }

  if (self->_lastError)
  {
    [v4 appendFormat:@"lastError: '%@'; ", self->_lastError];
  }

  if (self->_backoffLevel >= 1)
  {
    [v4 appendFormat:@"backoffLevel: %ld; ", self->_backoffLevel];
  }

  if (self->_nextPossibleFetchDate)
  {
    [v4 appendFormat:@"nextPossibleFetchDate: '%@'; ", self->_nextPossibleFetchDate];
  }

  [v4 appendFormat:@">"];

  return v4;
}

@end