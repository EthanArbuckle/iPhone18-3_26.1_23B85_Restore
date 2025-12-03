@interface PKPaymentOfferConfirmationRecord
- (BOOL)isEqual:(id)equal;
- (BOOL)isSetupPaymentOfferAfterPurchase;
- (PKPaymentOfferConfirmationRecord)initWithCoder:(id)coder;
- (PKPaymentOfferConfirmationRecord)initWithTransaction:(id)transaction passUniqueID:(id)d criteriaIdentifier:(id)identifier context:(unint64_t)context type:(unint64_t)type;
- (id)_dynamicContentMessageTileForPageType:(unint64_t)type;
- (id)_init;
- (id)description;
- (id)processedEventsString;
- (id)selectedOfferConfirmationRecord;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentOfferConfirmationRecord

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKPaymentOfferConfirmationRecord;
  return [(PKPaymentOfferConfirmationRecord *)&v3 init];
}

- (PKPaymentOfferConfirmationRecord)initWithTransaction:(id)transaction passUniqueID:(id)d criteriaIdentifier:(id)identifier context:(unint64_t)context type:(unint64_t)type
{
  transactionCopy = transaction;
  dCopy = d;
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = PKPaymentOfferConfirmationRecord;
  v16 = [(PKPaymentOfferConfirmationRecord *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_transaction, transaction);
    objc_storeStrong(&v17->_passUniqueID, d);
    objc_storeStrong(&v17->_criteriaIdentifier, identifier);
    v17->_context = context;
    v17->_type = type;
  }

  return v17;
}

- (id)selectedOfferConfirmationRecord
{
  if (self->_type == 1)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isSetupPaymentOfferAfterPurchase
{
  type = self->_type;
  if (type <= 1)
  {
    if (type == 1)
    {
      selectedOfferConfirmationRecord = [(PKPaymentOfferConfirmationRecord *)self selectedOfferConfirmationRecord];
      selectedOffer = [selectedOfferConfirmationRecord selectedOffer];
      installmentSelectedPaymentOffer = [selectedOffer installmentSelectedPaymentOffer];

      if (!installmentSelectedPaymentOffer)
      {
        v7 = 0;
        goto LABEL_9;
      }

      selectionType = [installmentSelectedPaymentOffer selectionType];
      if (selectionType <= 2)
      {
        v7 = selectionType;
LABEL_9:

        return v7 & 1;
      }
    }

LABEL_11:
    v7 = 0;
    return v7 & 1;
  }

  if (type != 3)
  {
    goto LABEL_11;
  }

  v7 = 1;
  return v7 & 1;
}

- (id)_dynamicContentMessageTileForPageType:(unint64_t)type
{
  formattedBalanceAdjustmentAmount = [(PKPaymentTransaction *)self->_transaction formattedBalanceAdjustmentAmount];
  merchant = [(PKPaymentTransaction *)self->_transaction merchant];
  displayName = [merchant displayName];

  type = self->_type;
  if (type != 1)
  {
    if (type == 3)
    {
      v9 = [PKPaymentOfferDynamicContentPage postPurchaseChoosePlanDynamicContentPageForAmountString:formattedBalanceAdjustmentAmount merchantName:displayName];
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  selectedOfferConfirmationRecord = [(PKPaymentOfferConfirmationRecord *)self selectedOfferConfirmationRecord];
  selectedOffer = [selectedOfferConfirmationRecord selectedOffer];
  installmentSelectedPaymentOffer = [selectedOffer installmentSelectedPaymentOffer];

  if (!installmentSelectedPaymentOffer)
  {
    v9 = 0;
    goto LABEL_11;
  }

  selectionType = [installmentSelectedPaymentOffer selectionType];
  if (!selectionType || selectionType == 2)
  {
    installmentAssessment = [installmentSelectedPaymentOffer installmentAssessment];
    dynamicContent = [installmentAssessment dynamicContent];
    v9 = [dynamicContent dynamicContentPageForPageType:type];

    goto LABEL_11;
  }

  if (selectionType == 1)
  {
    v9 = [PKPaymentOfferDynamicContentPage postPurchaseChoosePlanDynamicContentPageForAmountString:formattedBalanceAdjustmentAmount merchantName:displayName];
LABEL_11:

    goto LABEL_14;
  }

LABEL_13:
  v9 = 0;
LABEL_14:

  return v9;
}

- (id)processedEventsString
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  processedEvents = self->_processedEvents;
  if (processedEvents)
  {
    v5 = 1;
    for (i = 1; i <= processedEvents; i = 1 << v5++)
    {
      if ((i & processedEvents) != 0 && i <= 3)
      {
        [v3 addObject:off_1E79D45B8[i]];
        processedEvents = self->_processedEvents;
      }
    }
  }

  v7 = [v3 description];

  return v7;
}

- (PKPaymentOfferConfirmationRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = PKPaymentOfferConfirmationRecord;
  v5 = [(PKPaymentOfferConfirmationRecord *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transaction"];
    transaction = v5->_transaction;
    v5->_transaction = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueID"];
    passUniqueID = v5->_passUniqueID;
    v5->_passUniqueID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"criteriaIdentifier"];
    criteriaIdentifier = v5->_criteriaIdentifier;
    v5->_criteriaIdentifier = v10;

    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v5->_context = [coderCopy decodeIntegerForKey:@"context"];
    v5->_processedEvents = [coderCopy decodeIntegerForKey:@"processedEvents"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nextAttempt"];
    nextAttempt = v5->_nextAttempt;
    v5->_nextAttempt = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastAttempt"];
    lastAttempt = v5->_lastAttempt;
    v5->_lastAttempt = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullyProcessedDate"];
    fullyProcessedDate = v5->_fullyProcessedDate;
    v5->_fullyProcessedDate = v16;

    v5->_backoffLevel = [coderCopy decodeIntegerForKey:@"backoffLevel"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  transaction = self->_transaction;
  coderCopy = coder;
  [coderCopy encodeObject:transaction forKey:@"transaction"];
  [coderCopy encodeObject:self->_passUniqueID forKey:@"passUniqueID"];
  [coderCopy encodeObject:self->_criteriaIdentifier forKey:@"criteriaIdentifier"];
  [coderCopy encodeObject:self->_criteriaIdentifier forKey:@"criteriaIdentifier"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeInteger:self->_context forKey:@"context"];
  [coderCopy encodeObject:self->_nextAttempt forKey:@"nextAttempt"];
  [coderCopy encodeObject:self->_lastAttempt forKey:@"lastAttempt"];
  [coderCopy encodeObject:self->_fullyProcessedDate forKey:@"fullyProcessedDate"];
  [coderCopy encodeInteger:self->_backoffLevel forKey:@"backoffLevel"];
  [coderCopy encodeInteger:self->_processedEvents forKey:@"processedEvents"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        transaction = self->_transaction;
        v8 = v6->_transaction;
        if (transaction && v8)
        {
          if (![(PKPaymentTransaction *)transaction isEqual:?])
          {
            goto LABEL_43;
          }
        }

        else if (transaction != v8)
        {
          goto LABEL_43;
        }

        passUniqueID = v6->_passUniqueID;
        v11 = self->_passUniqueID;
        v12 = passUniqueID;
        v13 = v12;
        if (v11 == v12)
        {
        }

        else
        {
          if (!v11 || !v12)
          {
            goto LABEL_22;
          }

          v14 = [(NSString *)v11 isEqualToString:v12];

          if (!v14)
          {
            goto LABEL_43;
          }
        }

        criteriaIdentifier = v6->_criteriaIdentifier;
        v11 = self->_criteriaIdentifier;
        v16 = criteriaIdentifier;
        v13 = v16;
        if (v11 == v16)
        {

LABEL_24:
          if (self->_type != v6->_type || self->_context != v6->_context)
          {
            goto LABEL_43;
          }

          nextAttempt = self->_nextAttempt;
          v19 = v6->_nextAttempt;
          if (nextAttempt && v19)
          {
            if (([(NSDate *)nextAttempt isEqual:?]& 1) == 0)
            {
              goto LABEL_43;
            }
          }

          else if (nextAttempt != v19)
          {
            goto LABEL_43;
          }

          lastAttempt = self->_lastAttempt;
          v21 = v6->_lastAttempt;
          if (lastAttempt && v21)
          {
            if (([(NSDate *)lastAttempt isEqual:?]& 1) == 0)
            {
              goto LABEL_43;
            }
          }

          else if (lastAttempt != v21)
          {
            goto LABEL_43;
          }

          fullyProcessedDate = self->_fullyProcessedDate;
          v23 = v6->_fullyProcessedDate;
          if (fullyProcessedDate && v23)
          {
            if (([(NSDate *)fullyProcessedDate isEqual:?]& 1) == 0)
            {
              goto LABEL_43;
            }
          }

          else if (fullyProcessedDate != v23)
          {
            goto LABEL_43;
          }

          if (self->_processedEvents == v6->_processedEvents)
          {
            v9 = self->_backoffLevel == v6->_backoffLevel;
LABEL_44:

            goto LABEL_45;
          }

LABEL_43:
          v9 = 0;
          goto LABEL_44;
        }

        if (v11 && v16)
        {
          v17 = [(NSString *)v11 isEqualToString:v16];

          if (!v17)
          {
            goto LABEL_43;
          }

          goto LABEL_24;
        }

LABEL_22:

        goto LABEL_43;
      }
    }

    v9 = 0;
  }

LABEL_45:

  return v9;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_transaction];
  [v3 safelyAddObject:self->_passUniqueID];
  [v3 safelyAddObject:self->_criteriaIdentifier];
  [v3 safelyAddObject:self->_nextAttempt];
  [v3 safelyAddObject:self->_lastAttempt];
  [v3 safelyAddObject:self->_fullyProcessedDate];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_type - v4 + 32 * v4;
  v6 = self->_context - v5 + 32 * v5;
  v7 = self->_processedEvents - v6 + 32 * v6;
  v8 = self->_backoffLevel - v7 + 32 * v7;

  return v8;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  v4 = self->_type - 1;
  if (v4 > 2)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_1E79D45D8[v4];
  }

  [v3 appendFormat:@"type: '%@'; ", v5];
  [v3 appendFormat:@"passUniqueID: '%@'; ", self->_passUniqueID];
  [v3 appendFormat:@"transaction: '%@'; ", self->_transaction];
  [v3 appendFormat:@"criteriaIdentifier: '%@'; ", self->_criteriaIdentifier];
  v6 = PKPaymentOffersSessionDetailsContextToString(self->_context);
  [v3 appendFormat:@"context: '%@'; ", v6];

  processedEventsString = [(PKPaymentOfferConfirmationRecord *)self processedEventsString];
  [v3 appendFormat:@"processedEvents: '%@'; ", processedEventsString];

  [v3 appendFormat:@"lastAttempt: '%@'; ", self->_lastAttempt];
  [v3 appendFormat:@"nextAttempt: '%@'; ", self->_nextAttempt];
  [v3 appendFormat:@"fullyProcessedDate: '%@'; ", self->_fullyProcessedDate];
  [v3 appendFormat:@"backoffLevel: %ld; ", self->_backoffLevel];
  [v3 appendFormat:@">"];

  return v3;
}

@end