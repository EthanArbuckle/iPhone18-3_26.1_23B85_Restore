@interface PKAccountPaymentScheduleDetails
- (BOOL)isEqual:(id)a3;
- (PKAccountPaymentScheduleDetails)initWithCoder:(id)a3;
- (PKAccountPaymentScheduleDetails)initWithDictionary:(id)a3 productTimeZone:(id)a4;
- (id)description;
- (id)hashString;
- (id)jsonDictionaryRepresentation;
- (id)jsonString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAccountPaymentScheduleDetails

- (PKAccountPaymentScheduleDetails)initWithDictionary:(id)a3 productTimeZone:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKAccountPaymentScheduleDetails *)self init];
  if (v8)
  {
    v9 = [v6 PKStringForKey:@"frequency"];
    v8->_frequency = PKAccountPaymentFrequencyFromString(v9);
    v8->_scheduledDay = [v6 PKIntegerForKey:@"scheduledDay"];
    v10 = [v6 PKStringForKey:@"preset"];
    v8->_preset = PKAccountPaymentPresetFromString(v10);
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

    v16 = [v6 PKStringForKey:@"paymentTermsIdentifier"];
    paymentTermsIdentifier = v8->_paymentTermsIdentifier;
    v8->_paymentTermsIdentifier = v16;
  }

  return v8;
}

- (id)jsonString
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(PKAccountPaymentScheduleDetails *)self jsonDictionaryRepresentation];
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
  v4 = PKAccountPaymentFrequencyToString(self->_frequency);
  [v3 setObject:v4 forKeyedSubscript:@"frequency"];

  v5 = PKAccountPaymentPresetToString(self->_preset);
  [v3 setObject:v5 forKeyedSubscript:@"preset"];

  [v3 setObject:self->_paymentTermsIdentifier forKeyedSubscript:@"paymentTermsIdentifier"];
  if (self->_frequency == 6 && self->_scheduledDay)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [v3 setObject:v6 forKeyedSubscript:@"scheduledDay"];
  }

  else
  {
    v6 = PKPaymentDateFormatterWithTimeZone(self->_productTimeZone);
    v7 = [v6 stringFromDate:self->_scheduledDate];
    [v3 setObject:v7 forKeyedSubscript:@"scheduledDate"];
  }

  v8 = [v3 copy];

  return v8;
}

- (id)hashString
{
  v3 = [MEMORY[0x1E696AD60] string];
  frequency = self->_frequency;
  if (frequency)
  {
    v5 = PKAccountPaymentFrequencyToString(frequency);
    [v3 appendString:v5];
  }

  preset = self->_preset;
  if (preset)
  {
    v7 = PKAccountPaymentPresetToString(preset);
    [v3 appendString:v7];
  }

  if (self->_frequency == 6 && self->_scheduledDay)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    v9 = [v8 stringValue];
  }

  else
  {
    if (!self->_scheduledDate)
    {
      goto LABEL_11;
    }

    v8 = PKPaymentDateFormatterWithTimeZone(self->_productTimeZone);
    v9 = [v8 stringFromDate:self->_scheduledDate];
  }

  v10 = v9;
  [v3 appendString:v9];

LABEL_11:
  if (self->_paymentTermsIdentifier)
  {
    [v3 appendString:?];
  }

  v11 = [v3 copy];

  return v11;
}

- (PKAccountPaymentScheduleDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKAccountPaymentScheduleDetails;
  v5 = [(PKAccountPaymentScheduleDetails *)&v11 init];
  if (v5)
  {
    v5->_frequency = [v4 decodeIntegerForKey:@"frequency"];
    v5->_scheduledDay = [v4 decodeIntegerForKey:@"scheduledDay"];
    v5->_preset = [v4 decodeIntegerForKey:@"preset"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scheduledDate"];
    scheduledDate = v5->_scheduledDate;
    v5->_scheduledDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentTermsIdentifier"];
    paymentTermsIdentifier = v5->_paymentTermsIdentifier;
    v5->_paymentTermsIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  frequency = self->_frequency;
  v5 = a3;
  [v5 encodeInteger:frequency forKey:@"frequency"];
  [v5 encodeInteger:self->_preset forKey:@"preset"];
  [v5 encodeObject:self->_scheduledDate forKey:@"scheduledDate"];
  [v5 encodeInteger:self->_scheduledDay forKey:@"scheduledDay"];
  [v5 encodeObject:self->_paymentTermsIdentifier forKey:@"paymentTermsIdentifier"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_15;
  }

  scheduledDate = self->_scheduledDate;
  v6 = v4[5];
  if (scheduledDate && v6)
  {
    if (([(NSDate *)scheduledDate isEqual:?]& 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (scheduledDate != v6)
  {
    goto LABEL_15;
  }

  paymentTermsIdentifier = self->_paymentTermsIdentifier;
  v8 = v4[6];
  if (!paymentTermsIdentifier || !v8)
  {
    if (paymentTermsIdentifier == v8)
    {
      goto LABEL_12;
    }

LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  if (([(NSString *)paymentTermsIdentifier isEqual:?]& 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  if (self->_frequency != v4[2] || self->_scheduledDay != v4[3])
  {
    goto LABEL_15;
  }

  v9 = self->_preset == v4[4];
LABEL_16:

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_scheduledDate];
  [v3 safelyAddObject:self->_paymentTermsIdentifier];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_frequency - v4 + 32 * v4;
  v6 = self->_scheduledDay - v5 + 32 * v5;
  v7 = self->_preset - v6 + 32 * v6;

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = PKAccountPaymentFrequencyToString(self->_frequency);
  [v3 appendFormat:@"frequency: '%@'; ", v4];

  if (self->_scheduledDay)
  {
    [v3 appendFormat:@"scheduledDay: '%ld': ", self->_scheduledDay];
  }

  v5 = PKAccountPaymentPresetToString(self->_preset);
  [v3 appendFormat:@"preset: '%@'; ", v5];

  [v3 appendFormat:@"scheduledDate: '%@'; ", self->_scheduledDate];
  [v3 appendFormat:@"paymentTermsIdentifier: '%@'; ", self->_paymentTermsIdentifier];
  [v3 appendFormat:@">"];

  return v3;
}

@end