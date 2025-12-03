@interface PKAccountTransferScheduleDetails
- (BOOL)isEqual:(id)equal;
- (PKAccountTransferScheduleDetails)initWithCoder:(id)coder;
- (PKAccountTransferScheduleDetails)initWithDictionary:(id)dictionary productTimeZone:(id)zone;
- (id)description;
- (id)hashString;
- (id)jsonDictionaryRepresentation;
- (id)jsonString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAccountTransferScheduleDetails

- (PKAccountTransferScheduleDetails)initWithDictionary:(id)dictionary productTimeZone:(id)zone
{
  v19[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  zoneCopy = zone;
  v8 = [(PKAccountTransferScheduleDetails *)self init];
  if (v8)
  {
    v9 = [dictionaryCopy PKStringForKey:@"frequency"];
    v19[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v8->_frequency = PKAccountTransferFrequencyFromStrings(v10);

    v8->_scheduledDay = [dictionaryCopy PKIntegerForKey:@"scheduledDay"];
    v11 = [dictionaryCopy PKStringForKey:@"scheduledDate"];
    objc_storeStrong(&v8->_productTimeZone, zone);
    v12 = PKPaymentDateFormatterWithTimeZone(zoneCopy);
    v13 = v12;
    if (v11)
    {
      v14 = [v12 dateFromString:v11];
      scheduledDate = v8->_scheduledDate;
      v8->_scheduledDate = v14;
    }

    v16 = [dictionaryCopy PKStringForKey:@"transferTermsIdentifier"];
    transferTermsIdentifier = v8->_transferTermsIdentifier;
    v8->_transferTermsIdentifier = v16;
  }

  return v8;
}

- (id)jsonString
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ACB0];
  jsonDictionaryRepresentation = [(PKAccountTransferScheduleDetails *)self jsonDictionaryRepresentation];
  v9 = 0;
  v4 = [v2 dataWithJSONObject:jsonDictionaryRepresentation options:2 error:&v9];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = PKAccountTransferFrequencyToStrings(self->_frequency);
  firstObject = [v4 firstObject];
  [dictionary setObject:firstObject forKeyedSubscript:@"frequency"];

  [dictionary setObject:self->_transferTermsIdentifier forKeyedSubscript:@"transferTermsIdentifier"];
  v6 = [dictionary copy];

  return v6;
}

- (id)hashString
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = PKAccountTransferFrequencyToStrings(self->_frequency);
  firstObject = [v4 firstObject];
  [string appendString:firstObject];

  if (self->_transferTermsIdentifier)
  {
    [string appendString:?];
  }

  v6 = [string copy];

  return v6;
}

- (PKAccountTransferScheduleDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKAccountTransferScheduleDetails;
  v5 = [(PKAccountTransferScheduleDetails *)&v11 init];
  if (v5)
  {
    v5->_frequency = [coderCopy decodeIntegerForKey:@"frequency"];
    v5->_scheduledDay = [coderCopy decodeIntegerForKey:@"scheduledDay"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scheduledDate"];
    scheduledDate = v5->_scheduledDate;
    v5->_scheduledDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transferTermsIdentifier"];
    transferTermsIdentifier = v5->_transferTermsIdentifier;
    v5->_transferTermsIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  frequency = self->_frequency;
  coderCopy = coder;
  [coderCopy encodeInteger:frequency forKey:@"frequency"];
  [coderCopy encodeObject:self->_scheduledDate forKey:@"scheduledDate"];
  [coderCopy encodeInteger:self->_scheduledDay forKey:@"scheduledDay"];
  [coderCopy encodeObject:self->_transferTermsIdentifier forKey:@"transferTermsIdentifier"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  scheduledDate = self->_scheduledDate;
  v6 = equalCopy[4];
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
  v8 = equalCopy[5];
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
  if (self->_frequency != equalCopy[2])
  {
    goto LABEL_14;
  }

  v9 = self->_scheduledDay == equalCopy[3];
LABEL_15:

  return v9;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_scheduledDate];
  [array safelyAddObject:self->_transferTermsIdentifier];
  v4 = PKCombinedHash(17, array);
  v5 = self->_frequency - v4 + 32 * v4;
  v6 = self->_scheduledDay - v5 + 32 * v5;

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = PKAccountTransferFrequencyToStrings(self->_frequency);
  firstObject = [v4 firstObject];
  [v3 appendFormat:@"frequency: '%ld'; ", firstObject];

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