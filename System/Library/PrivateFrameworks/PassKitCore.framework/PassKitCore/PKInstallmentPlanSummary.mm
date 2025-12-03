@interface PKInstallmentPlanSummary
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToInstallmentPlanSummary:(id)summary;
- (PKInstallmentPlanSummary)initWithCoder:(id)coder;
- (PKInstallmentPlanSummary)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKInstallmentPlanSummary

- (PKInstallmentPlanSummary)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = PKInstallmentPlanSummary;
  v5 = [(PKInstallmentPlanSummary *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKDateForKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [dictionaryCopy PKDateForKey:@"originalEndDate"];
    originalEndDate = v5->_originalEndDate;
    v5->_originalEndDate = v8;

    v10 = [dictionaryCopy PKDateForKey:@"currentEndDate"];
    currentEndDate = v5->_currentEndDate;
    v5->_currentEndDate = v10;

    v12 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"currentBalance"];
    currentBalance = v5->_currentBalance;
    v5->_currentBalance = v12;

    v14 = [dictionaryCopy PKStringForKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v14;

    v16 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"minimumDue"];
    minimumDue = v5->_minimumDue;
    v5->_minimumDue = v16;

    v18 = [dictionaryCopy PKDateForKey:@"minimumDueDate"];
    minimumDueDate = v5->_minimumDueDate;
    v5->_minimumDueDate = v18;

    v20 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"interestCharged"];
    interestCharged = v5->_interestCharged;
    v5->_interestCharged = v20;

    v22 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"paymentsToDateAmount"];
    paymentsToDateAmount = v5->_paymentsToDateAmount;
    v5->_paymentsToDateAmount = v22;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKInstallmentPlanSummary *)self isEqualToInstallmentPlanSummary:v5];
  }

  return v6;
}

- (BOOL)isEqualToInstallmentPlanSummary:(id)summary
{
  summaryCopy = summary;
  if (!summaryCopy)
  {
    goto LABEL_47;
  }

  startDate = self->_startDate;
  v6 = summaryCopy[1];
  if (startDate)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (startDate != v6)
    {
      goto LABEL_47;
    }
  }

  else if (([(NSDate *)startDate isEqual:?]& 1) == 0)
  {
    goto LABEL_47;
  }

  originalEndDate = self->_originalEndDate;
  v9 = summaryCopy[2];
  if (originalEndDate && v9)
  {
    if (([(NSDate *)originalEndDate isEqual:?]& 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else if (originalEndDate != v9)
  {
    goto LABEL_47;
  }

  currentEndDate = self->_currentEndDate;
  v11 = summaryCopy[3];
  if (currentEndDate && v11)
  {
    if (([(NSDate *)currentEndDate isEqual:?]& 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else if (currentEndDate != v11)
  {
    goto LABEL_47;
  }

  currentBalance = self->_currentBalance;
  v13 = summaryCopy[4];
  if (currentBalance && v13)
  {
    if (([(NSDecimalNumber *)currentBalance isEqual:?]& 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else if (currentBalance != v13)
  {
    goto LABEL_47;
  }

  currencyCode = self->_currencyCode;
  v15 = summaryCopy[5];
  if (currencyCode && v15)
  {
    if (([(NSString *)currencyCode isEqual:?]& 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else if (currencyCode != v15)
  {
    goto LABEL_47;
  }

  minimumDue = self->_minimumDue;
  v17 = summaryCopy[6];
  if (minimumDue && v17)
  {
    if (([(NSDecimalNumber *)minimumDue isEqual:?]& 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else if (minimumDue != v17)
  {
    goto LABEL_47;
  }

  minimumDueDate = self->_minimumDueDate;
  v19 = summaryCopy[7];
  if (minimumDueDate && v19)
  {
    if (([(NSDate *)minimumDueDate isEqual:?]& 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else if (minimumDueDate != v19)
  {
    goto LABEL_47;
  }

  interestCharged = self->_interestCharged;
  v21 = summaryCopy[8];
  if (!interestCharged || !v21)
  {
    if (interestCharged == v21)
    {
      goto LABEL_43;
    }

LABEL_47:
    v24 = 0;
    goto LABEL_48;
  }

  if (([(NSDecimalNumber *)interestCharged isEqual:?]& 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_43:
  paymentsToDateAmount = self->_paymentsToDateAmount;
  v23 = summaryCopy[9];
  if (paymentsToDateAmount && v23)
  {
    v24 = [(NSDecimalNumber *)paymentsToDateAmount isEqual:?];
  }

  else
  {
    v24 = paymentsToDateAmount == v23;
  }

LABEL_48:

  return v24;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_startDate];
  [v3 safelyAddObject:self->_originalEndDate];
  [v3 safelyAddObject:self->_currentEndDate];
  [v3 safelyAddObject:self->_currentBalance];
  [v3 safelyAddObject:self->_currencyCode];
  [v3 safelyAddObject:self->_minimumDue];
  [v3 safelyAddObject:self->_minimumDueDate];
  [v3 safelyAddObject:self->_interestCharged];
  [v3 safelyAddObject:self->_paymentsToDateAmount];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (PKInstallmentPlanSummary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = PKInstallmentPlanSummary;
  v5 = [(PKInstallmentPlanSummary *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originalEndDate"];
    originalEndDate = v5->_originalEndDate;
    v5->_originalEndDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentEndDate"];
    currentEndDate = v5->_currentEndDate;
    v5->_currentEndDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentBalance"];
    currentBalance = v5->_currentBalance;
    v5->_currentBalance = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minimumDue"];
    minimumDue = v5->_minimumDue;
    v5->_minimumDue = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minimumDueDate"];
    minimumDueDate = v5->_minimumDueDate;
    v5->_minimumDueDate = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interestCharged"];
    interestCharged = v5->_interestCharged;
    v5->_interestCharged = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentsToDateAmount"];
    paymentsToDateAmount = v5->_paymentsToDateAmount;
    v5->_paymentsToDateAmount = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  startDate = self->_startDate;
  coderCopy = coder;
  [coderCopy encodeObject:startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_originalEndDate forKey:@"originalEndDate"];
  [coderCopy encodeObject:self->_currentEndDate forKey:@"currentEndDate"];
  [coderCopy encodeObject:self->_currentBalance forKey:@"currentBalance"];
  [coderCopy encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [coderCopy encodeObject:self->_minimumDue forKey:@"minimumDue"];
  [coderCopy encodeObject:self->_minimumDueDate forKey:@"minimumDueDate"];
  [coderCopy encodeObject:self->_interestCharged forKey:@"interestCharged"];
  [coderCopy encodeObject:self->_paymentsToDateAmount forKey:@"paymentsToDateAmount"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSDate *)self->_startDate copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSDate *)self->_originalEndDate copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSDate *)self->_currentEndDate copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSDecimalNumber *)self->_currentBalance copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSString *)self->_currencyCode copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  v16 = [(NSDecimalNumber *)self->_minimumDue copyWithZone:zone];
  v17 = v5[6];
  v5[6] = v16;

  v18 = [(NSDate *)self->_minimumDueDate copyWithZone:zone];
  v19 = v5[7];
  v5[7] = v18;

  v20 = [(NSDecimalNumber *)self->_interestCharged copyWithZone:zone];
  v21 = v5[8];
  v5[8] = v20;

  v22 = [(NSDecimalNumber *)self->_paymentsToDateAmount copyWithZone:zone];
  v23 = v5[9];
  v5[9] = v22;

  return v5;
}

@end