@interface PKCreditInstallmentPlanPayment
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToInstallmentPlanPayment:(id)a3;
- (BOOL)isPaid;
- (NSString)localizedDisplay;
- (PKCreditInstallmentPlanPayment)initWithCoder:(id)a3;
- (PKCreditInstallmentPlanPayment)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKCreditInstallmentPlanPayment

- (PKCreditInstallmentPlanPayment)initWithDictionary:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = PKCreditInstallmentPlanPayment;
  v5 = [(PKCreditInstallmentPlanPayment *)&v27 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 PKStringForKey:@"statementIdentifier"];
    statementIdentifier = v5->_statementIdentifier;
    v5->_statementIdentifier = v8;

    v10 = [v4 PKStringForKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v10;

    v12 = [v4 PKDecimalNumberFromStringForKey:@"originalAmountDue"];
    originalAmountDue = v5->_originalAmountDue;
    v5->_originalAmountDue = v12;

    v14 = [v4 PKDecimalNumberFromStringForKey:@"amountDue"];
    amountDue = v5->_amountDue;
    v5->_amountDue = v14;

    v16 = [v4 PKDecimalNumberFromStringForKey:@"amountPaid"];
    amountPaid = v5->_amountPaid;
    v5->_amountPaid = v16;

    v18 = [v4 PKDateForKey:@"dueDate"];
    dueDate = v5->_dueDate;
    v5->_dueDate = v18;

    v20 = [v4 PKDateForKey:@"statementDate"];
    statementDate = v5->_statementDate;
    v5->_statementDate = v20;

    v22 = [v4 PKArrayContaining:objc_opt_class() forKey:@"lineItems"];
    v23 = v22;
    if (v22)
    {
      v24 = [v22 pk_arrayByApplyingBlock:&__block_literal_global_64];
      lineItems = v5->_lineItems;
      v5->_lineItems = v24;
    }
  }

  return v5;
}

PKCreditInstallmentPlanLineItem *__53__PKCreditInstallmentPlanPayment_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKCreditInstallmentPlanLineItem alloc] initWithDictionary:v2];

  return v3;
}

- (BOOL)isPaid
{
  amountPaid = self->_amountPaid;
  if (amountPaid)
  {
    if (self->_amountDue)
    {
      v3 = [MEMORY[0x1E696AB90] zero];
      LOBYTE(amountPaid) = [(NSDecimalNumber *)amountPaid compare:v3]== NSOrderedDescending;
    }

    else
    {
      LOBYTE(amountPaid) = 0;
    }
  }

  return amountPaid;
}

- (NSString)localizedDisplay
{
  if (self->_paymentCount && self->_paymentNumber)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_paymentNumber];
    v5 = [v3 stringFromNumber:v4];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_paymentCount];
    v14 = [v3 stringFromNumber:v6];
    v12 = PKLocalizedFeatureString(@"INSTALLMENT_PLAN_COUNT_FORMAT", 2, @"%@%@", v7, v8, v9, v10, v11, v5);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKCreditInstallmentPlanPayment *)self isEqualToInstallmentPlanPayment:v5];
  }

  return v6;
}

- (BOOL)isEqualToInstallmentPlanPayment:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_20;
  }

  v6 = v4[1];
  v7 = self->_identifier;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    if (!v7 || !v8)
    {
      goto LABEL_19;
    }

    v10 = [(NSString *)v7 isEqualToString:v8];

    if (!v10)
    {
      goto LABEL_20;
    }
  }

  v11 = v5[2];
  v7 = self->_statementIdentifier;
  v12 = v11;
  v9 = v12;
  if (v7 == v12)
  {
  }

  else
  {
    if (!v7 || !v12)
    {
      goto LABEL_19;
    }

    v13 = [(NSString *)v7 isEqualToString:v12];

    if (!v13)
    {
      goto LABEL_20;
    }
  }

  v14 = v5[3];
  v7 = self->_currencyCode;
  v15 = v14;
  v9 = v15;
  if (v7 != v15)
  {
    if (v7 && v15)
    {
      v16 = [(NSString *)v7 isEqualToString:v15];

      if (!v16)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }

LABEL_19:

    goto LABEL_20;
  }

LABEL_23:
  originalAmountDue = self->_originalAmountDue;
  v20 = v5[4];
  if (originalAmountDue && v20)
  {
    if (([(NSDecimalNumber *)originalAmountDue isEqual:?]& 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (originalAmountDue != v20)
  {
    goto LABEL_20;
  }

  amountDue = self->_amountDue;
  v22 = v5[5];
  if (amountDue && v22)
  {
    if (([(NSDecimalNumber *)amountDue isEqual:?]& 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (amountDue != v22)
  {
    goto LABEL_20;
  }

  amountPaid = self->_amountPaid;
  v24 = v5[6];
  if (amountPaid && v24)
  {
    if (([(NSDecimalNumber *)amountPaid isEqual:?]& 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (amountPaid != v24)
  {
    goto LABEL_20;
  }

  dueDate = self->_dueDate;
  v26 = v5[7];
  if (dueDate && v26)
  {
    if (([(NSDate *)dueDate isEqual:?]& 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (dueDate != v26)
  {
    goto LABEL_20;
  }

  statementDate = self->_statementDate;
  v28 = v5[8];
  if (statementDate && v28)
  {
    if (([(NSDate *)statementDate isEqual:?]& 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (statementDate != v28)
  {
    goto LABEL_20;
  }

  lineItems = self->_lineItems;
  v30 = v5[9];
  if (lineItems && v30)
  {
    if (([(NSArray *)lineItems isEqual:?]& 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (lineItems != v30)
  {
    goto LABEL_20;
  }

  statement = self->_statement;
  v32 = v5[12];
  if (statement && v32)
  {
    if (![(PKCreditAccountStatement *)statement isEqual:?])
    {
      goto LABEL_20;
    }
  }

  else if (statement != v32)
  {
    goto LABEL_20;
  }

  if (self->_paymentNumber == v5[10])
  {
    v17 = self->_paymentCount == v5[11];
    goto LABEL_21;
  }

LABEL_20:
  v17 = 0;
LABEL_21:

  return v17;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_statementIdentifier];
  [v3 safelyAddObject:self->_currencyCode];
  [v3 safelyAddObject:self->_originalAmountDue];
  [v3 safelyAddObject:self->_amountDue];
  [v3 safelyAddObject:self->_amountPaid];
  [v3 safelyAddObject:self->_dueDate];
  [v3 safelyAddObject:self->_statementDate];
  [v3 safelyAddObject:self->_lineItems];
  [v3 safelyAddObject:self->_statement];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_paymentNumber - v4 + 32 * v4;
  v6 = self->_paymentCount - v5 + 32 * v5;

  return v6;
}

- (PKCreditInstallmentPlanPayment)initWithCoder:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = PKCreditInstallmentPlanPayment;
  v5 = [(PKCreditInstallmentPlanPayment *)&v30 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"statementIdentifier"];
    statementIdentifier = v5->_statementIdentifier;
    v5->_statementIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originalAmountDue"];
    originalAmountDue = v5->_originalAmountDue;
    v5->_originalAmountDue = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"amountDue"];
    amountDue = v5->_amountDue;
    v5->_amountDue = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"amountPaid"];
    amountPaid = v5->_amountPaid;
    v5->_amountPaid = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dueDate"];
    dueDate = v5->_dueDate;
    v5->_dueDate = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"statementDate"];
    statementDate = v5->_statementDate;
    v5->_statementDate = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"lineItems"];
    lineItems = v5->_lineItems;
    v5->_lineItems = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"statement"];
    statement = v5->_statement;
    v5->_statement = v27;

    v5->_paymentNumber = [v4 decodeIntegerForKey:@"paymentNumber"];
    v5->_paymentCount = [v4 decodeIntegerForKey:@"paymentCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_statementIdentifier forKey:@"statementIdentifier"];
  [v5 encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [v5 encodeObject:self->_originalAmountDue forKey:@"originalAmountDue"];
  [v5 encodeObject:self->_amountDue forKey:@"amountDue"];
  [v5 encodeObject:self->_amountPaid forKey:@"amountPaid"];
  [v5 encodeObject:self->_dueDate forKey:@"dueDate"];
  [v5 encodeObject:self->_statementDate forKey:@"statementDate"];
  [v5 encodeObject:self->_lineItems forKey:@"lineItems"];
  [v5 encodeObject:self->_statement forKey:@"statement"];
  [v5 encodeInteger:self->_paymentNumber forKey:@"paymentNumber"];
  [v5 encodeInteger:self->_paymentCount forKey:@"paymentCount"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_statementIdentifier copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_currencyCode copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSDecimalNumber *)self->_originalAmountDue copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSDecimalNumber *)self->_amountDue copyWithZone:a3];
  v15 = v5[5];
  v5[5] = v14;

  v16 = [(NSDecimalNumber *)self->_amountPaid copyWithZone:a3];
  v17 = v5[6];
  v5[6] = v16;

  v18 = [(NSDate *)self->_dueDate copyWithZone:a3];
  v19 = v5[7];
  v5[7] = v18;

  v20 = [(NSDate *)self->_statementDate copyWithZone:a3];
  v21 = v5[8];
  v5[8] = v20;

  v22 = [(PKCreditAccountStatement *)self->_statement copyWithZone:a3];
  v23 = v5[12];
  v5[12] = v22;

  v5[10] = self->_paymentNumber;
  v5[11] = self->_paymentCount;
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v25 = self->_lineItems;
  v26 = [(NSArray *)v25 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v35;
    do
    {
      v29 = 0;
      do
      {
        if (*v35 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [*(*(&v34 + 1) + 8 * v29) copyWithZone:{a3, v34}];
        [v24 addObject:v30];

        ++v29;
      }

      while (v27 != v29);
      v27 = [(NSArray *)v25 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v27);
  }

  if ([v24 count])
  {
    v31 = [v24 copy];
    v32 = v5[9];
    v5[9] = v31;
  }

  return v5;
}

@end