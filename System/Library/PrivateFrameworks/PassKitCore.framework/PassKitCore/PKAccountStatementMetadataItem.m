@interface PKAccountStatementMetadataItem
- (BOOL)isEqual:(id)a3;
- (PKAccountStatementMetadataItem)initWithCoder:(id)a3;
- (PKAccountStatementMetadataItem)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAccountStatementMetadataItem

- (PKAccountStatementMetadataItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKAccountStatementMetadataItem;
  v5 = [(PKAccountStatementMetadataItem *)&v15 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 PKStringForKey:@"type"];
    v5->_type = PKAccountStatementMetadataItemTypeFromString(v8);

    v9 = [v4 PKStringForKey:@"accountEventType"];
    v5->_accountEventType = PKAccountEventTypeFromString(v9);

    v10 = [v4 PKStringForKey:@"originatorAltDSID"];
    originatorAltDSID = v5->_originatorAltDSID;
    v5->_originatorAltDSID = v10;

    v12 = [v4 PKStringForKey:@"zoneName"];
    zoneName = v5->_zoneName;
    v5->_zoneName = v12;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 safelySetObject:self->_identifier forKey:@"identifier"];
  type = self->_type;
  v5 = @"unknown";
  v6 = @"accountEvent";
  if (type != 2)
  {
    v6 = @"unknown";
  }

  if (type == 1)
  {
    v7 = @"transaction";
  }

  else
  {
    v7 = v6;
  }

  [v3 safelySetObject:v7 forKey:@"type"];
  v8 = PKAccountEventTypeToString(self->_accountEventType);
  [v3 safelySetObject:v8 forKey:@"accountEventType"];

  [v3 safelySetObject:self->_originatorAltDSID forKey:@"originatorAltDSID"];
  [v3 safelySetObject:self->_zoneName forKey:@"zoneName"];
  status = self->_status;
  v10 = @"missing";
  if (status != 2)
  {
    v10 = @"unknown";
  }

  if (status == 1)
  {
    v11 = @"onDevice";
  }

  else
  {
    v11 = v10;
  }

  [v3 safelySetObject:v11 forKey:@"status"];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasBeenProcessed];
  [v3 safelySetObject:v12 forKey:@"hasBeenProcessed"];

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:self->_processedAttemptCount];
  [v3 safelySetObject:v13 forKey:@"processedAttemptCount"];

  v14 = PKISO8601DateStringFromDate(self->_lastProcessedDate);
  [v3 safelySetObject:v14 forKey:@"lastProcessedDate"];

  v15 = PKISO8601DateStringFromDate(self->_lastReportDate);
  [v3 safelySetObject:v15 forKey:@"lastReportDate"];

  v16 = [MEMORY[0x1E696AD98] numberWithInteger:self->_reportCount];
  [v3 safelySetObject:v16 forKey:@"reportCount"];

  error = self->_error;
  if (error <= 2)
  {
    v5 = off_1E79E2C68[error];
  }

  [v3 safelySetObject:v5 forKey:@"error"];
  v18 = [v3 copy];

  return v18;
}

- (PKAccountStatementMetadataItem)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKAccountStatementMetadataItem;
  v5 = [(PKAccountStatementMetadataItem *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v5->_accountEventType = [v4 decodeIntegerForKey:@"accountEventType"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originatorAltDSID"];
    originatorAltDSID = v5->_originatorAltDSID;
    v5->_originatorAltDSID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"zoneName"];
    zoneName = v5->_zoneName;
    v5->_zoneName = v10;

    v5->_status = [v4 decodeIntegerForKey:@"status"];
    v5->_hasBeenProcessed = [v4 decodeBoolForKey:@"hasBeenProcessed"];
    v5->_processedAttemptCount = [v4 decodeIntegerForKey:@"processedAttemptCount"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastProcessedDate"];
    lastProcessedDate = v5->_lastProcessedDate;
    v5->_lastProcessedDate = v12;

    v5->_lastReportDate = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastReportDate"];
    v5->_error = [v4 decodeIntegerForKey:@"error"];
    v5->_reportCount = [v4 decodeIntegerForKey:@"reportCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeInteger:self->_type forKey:@"type"];
  [v5 encodeInteger:self->_accountEventType forKey:@"accountEventType"];
  [v5 encodeObject:self->_originatorAltDSID forKey:@"originatorAltDSID"];
  [v5 encodeObject:self->_zoneName forKey:@"zoneName"];
  [v5 encodeInteger:self->_status forKey:@"status"];
  [v5 encodeBool:self->_hasBeenProcessed forKey:@"hasBeenProcessed"];
  [v5 encodeInteger:self->_processedAttemptCount forKey:@"processedAttemptCount"];
  [v5 encodeObject:self->_lastProcessedDate forKey:@"lastProcessedDate"];
  [v5 encodeObject:self->_lastReportDate forKey:@"lastReportDate"];
  [v5 encodeInteger:self->_error forKey:@"error"];
  [v5 encodeInteger:self->_reportCount forKey:@"reportCount"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_20;
  }

  v5 = v4[2];
  v6 = self->_identifier;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (!v6 || !v7)
    {
      goto LABEL_19;
    }

    v9 = [(NSString *)v6 isEqualToString:v7];

    if (!v9)
    {
      goto LABEL_20;
    }
  }

  v10 = v4[5];
  v6 = self->_originatorAltDSID;
  v11 = v10;
  v8 = v11;
  if (v6 == v11)
  {
  }

  else
  {
    if (!v6 || !v11)
    {
      goto LABEL_19;
    }

    v12 = [(NSString *)v6 isEqualToString:v11];

    if (!v12)
    {
      goto LABEL_20;
    }
  }

  v13 = v4[6];
  v6 = self->_zoneName;
  v14 = v13;
  v8 = v14;
  if (v6 != v14)
  {
    if (v6 && v14)
    {
      v15 = [(NSString *)v6 isEqualToString:v14];

      if (!v15)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }

LABEL_19:

    goto LABEL_20;
  }

LABEL_23:
  lastProcessedDate = self->_lastProcessedDate;
  v19 = v4[9];
  if (lastProcessedDate && v19)
  {
    if (([(NSDate *)lastProcessedDate isEqual:?]& 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (lastProcessedDate != v19)
  {
    goto LABEL_20;
  }

  lastReportDate = self->_lastReportDate;
  v21 = v4[10];
  if (lastReportDate && v21)
  {
    if (([(NSDate *)lastReportDate isEqual:?]& 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (lastReportDate != v21)
  {
    goto LABEL_20;
  }

  if (self->_status == v4[7] && self->_type == v4[3] && self->_accountEventType == v4[4] && self->_hasBeenProcessed == *(v4 + 8) && self->_processedAttemptCount == v4[8] && self->_reportCount == v4[11])
  {
    v16 = self->_error == v4[12];
    goto LABEL_21;
  }

LABEL_20:
  v16 = 0;
LABEL_21:

  return v16;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_originatorAltDSID];
  [v3 safelyAddObject:self->_zoneName];
  [v3 safelyAddObject:self->_lastProcessedDate];
  [v3 safelyAddObject:self->_lastReportDate];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_status - v4 + 32 * v4;
  v6 = self->_type - v5 + 32 * v5;
  v7 = self->_accountEventType - v6 + 32 * v6;
  v8 = self->_hasBeenProcessed - v7 + 32 * v7;
  v9 = self->_processedAttemptCount - v8 + 32 * v8;
  v10 = self->_error - v9 + 32 * v9;
  v11 = self->_reportCount - v10 + 32 * v10;

  return v11;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  type = self->_type;
  v5 = @"unknown";
  v6 = @"accountEvent";
  if (type != 2)
  {
    v6 = @"unknown";
  }

  if (type == 1)
  {
    v7 = @"transaction";
  }

  else
  {
    v7 = v6;
  }

  [v3 appendFormat:@"type: '%@'; ", v7];
  v8 = PKAccountEventTypeToString(self->_accountEventType);
  [v3 appendFormat:@"accountEventType: '%@'; ", v8];

  [v3 appendFormat:@"originatorAltDSID: '%@'; ", self->_originatorAltDSID];
  [v3 appendFormat:@"zoneName: '%@'; ", self->_zoneName];
  status = self->_status;
  v10 = @"missing";
  if (status != 2)
  {
    v10 = @"unknown";
  }

  if (status == 1)
  {
    v11 = @"onDevice";
  }

  else
  {
    v11 = v10;
  }

  [v3 appendFormat:@"status: '%@'; ", v11];
  if (self->_hasBeenProcessed)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  [v3 appendFormat:@"hasBeenProcessed: '%@'; ", v12];
  [v3 appendFormat:@"processedAttemptCount: %ld; ", self->_processedAttemptCount];
  [v3 appendFormat:@"lastProcessedDate: '%@'; ", self->_lastProcessedDate];
  [v3 appendFormat:@"lastReportDate: '%@'; ", self->_lastReportDate];
  [v3 appendFormat:@"reportCount: %ld; ", self->_reportCount];
  error = self->_error;
  if (error <= 2)
  {
    v5 = off_1E79E2C68[error];
  }

  [v3 appendFormat:@"error: '%@'; ", v5];
  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_originatorAltDSID copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(NSString *)self->_zoneName copyWithZone:a3];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  v12 = [(NSDate *)self->_lastProcessedDate copyWithZone:a3];
  v13 = *(v5 + 72);
  *(v5 + 72) = v12;

  *(v5 + 56) = self->_status;
  *(v5 + 24) = self->_type;
  *(v5 + 32) = self->_accountEventType;
  *(v5 + 8) = self->_hasBeenProcessed;
  *(v5 + 64) = self->_processedAttemptCount;
  *(v5 + 96) = self->_error;
  return v5;
}

@end