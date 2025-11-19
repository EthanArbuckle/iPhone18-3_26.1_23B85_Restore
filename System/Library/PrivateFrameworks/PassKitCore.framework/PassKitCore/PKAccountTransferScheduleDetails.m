@interface PKAccountTransferScheduleDetails
- (BOOL)isEqual:(id)a3;
- (PKAccountTransferScheduleDetails)initWithCoder:(id)a3;
- (PKAccountTransferScheduleDetails)initWithDictionary:(id)a3 productTimeZone:(id)a4;
- (id)description;
- (id)hashString;
- (id)jsonDictionaryRepresentation;
- (id)jsonString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAccountTransferScheduleDetails

- (PKAccountTransferScheduleDetails)initWithDictionary:(id)a3 productTimeZone:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PKAccountTransferScheduleDetails *)self init];
  if (v8)
  {
    v9 = [v6 PKStringForKey:@"frequency"];
    v19[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v8->_frequency = PKAccountTransferFrequencyFromStrings(v10);

    v8->_scheduledDay = [v6 PKIntegerForKey:@"scheduledDay"];
    v11 = [v6 PKStringForKey:@"scheduledDate"];
    objc_storeStrong(&v8->_productTimeZone, a4);
    v12 = PKPaymentDateFormatterWithTimeZone(v7);
    v13 = v12;
    if (v11)
    {
      v14 = [v12 dateFromString:v11];
      scheduledDate = v8->_scheduledDate;
      v8->_scheduledDate = v14;
    }

    v16 = [v6 PKStringForKey:@"transferTermsIdentifier"];
    transferTermsIdentifier = v8->_transferTermsIdentifier;
    v8->_transferTermsIdentifier = v16;
  }

  return v8;
}

- (id)jsonString
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(PKAccountTransferScheduleDetails *)self jsonDictionaryRepresentation];
  v9 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:2 error:&v9];
  v5 = v9;

  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Error forming json dictionary for CloudKit with error: %@", buf, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v4 encoding:4];
  }

  return v7;
}

- (id)jsonDictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = PKAccountTransferFrequencyToStrings(self->_frequency);
  v5 = [v4 firstObject];
  [v3 setObject:v5 forKeyedSubscript:@"frequency"];

  [v3 setObject:self->_transferTermsIdentifier forKeyedSubscript:@"transferTermsIdentifier"];
  v6 = [v3 copy];

  return v6;
}

- (id)hashString
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = PKAccountTransferFrequencyToStrings(self->_frequency);
  v5 = [v4 firstObject];
  [v3 appendString:v5];

  if (self->_transferTermsIdentifier)
  {
    [v3 appendString:?];
  }

  v6 = [v3 copy];

  return v6;
}

- (PKAccountTransferScheduleDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKAccountTransferScheduleDetails;
  v5 = [(PKAccountTransferScheduleDetails *)&v11 init];
  if (v5)
  {
    v5->_frequency = [v4 decodeIntegerForKey:@"frequency"];
    v5->_scheduledDay = [v4 decodeIntegerForKey:@"scheduledDay"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scheduledDate"];
    scheduledDate = v5->_scheduledDate;
    v5->_scheduledDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transferTermsIdentifier"];
    transferTermsIdentifier = v5->_transferTermsIdentifier;
    v5->_transferTermsIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  frequency = self->_frequency;
  v5 = a3;
  [v5 encodeInteger:frequency forKey:@"frequency"];
  [v5 encodeObject:self->_scheduledDate forKey:@"scheduledDate"];
  [v5 encodeInteger:self->_scheduledDay forKey:@"scheduledDay"];
  [v5 encodeObject:self->_transferTermsIdentifier forKey:@"transferTermsIdentifier"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  scheduledDate = self->_scheduledDate;
  v6 = v4[4];
  if (scheduledDate && v6)
  {
    if (([(NSDate *)scheduledDate isEqual:?]& 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (scheduledDate != v6)
  {
    goto LABEL_14;
  }

  transferTermsIdentifier = self->_transferTermsIdentifier;
  v8 = v4[5];
  if (!transferTermsIdentifier || !v8)
  {
    if (transferTermsIdentifier == v8)
    {
      goto LABEL_12;
    }

LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  if (([(NSString *)transferTermsIdentifier isEqual:?]& 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (self->_frequency != v4[2])
  {
    goto LABEL_14;
  }

  v9 = self->_scheduledDay == v4[3];
LABEL_15:

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_scheduledDate];
  [v3 safelyAddObject:self->_transferTermsIdentifier];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_frequency - v4 + 32 * v4;
  v6 = self->_scheduledDay - v5 + 32 * v5;

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = PKAccountTransferFrequencyToStrings(self->_frequency);
  v5 = [v4 firstObject];
  [v3 appendFormat:@"frequency: '%ld'; ", v5];

  if (self->_scheduledDay)
  {
    [v3 appendFormat:@"scheduledDay: '%ld': ", self->_scheduledDay];
  }

  [v3 appendFormat:@"scheduledDate: '%@'; ", self->_scheduledDate];
  [v3 appendFormat:@"transferTermsIdentifier: '%@'; ", self->_transferTermsIdentifier];
  [v3 appendFormat:@">"];

  return v3;
}

@end