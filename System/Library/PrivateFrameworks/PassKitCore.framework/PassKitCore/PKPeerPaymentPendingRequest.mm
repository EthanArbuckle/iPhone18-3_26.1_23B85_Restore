@interface PKPeerPaymentPendingRequest
+ (id)recordNameForRequestToken:(id)a3;
+ (id)requestTokenFromRecordName:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPaid;
- (PKPeerPaymentPendingRequest)initWithCloudStoreCoder:(id)a3;
- (PKPeerPaymentPendingRequest)initWithCoder:(id)a3;
- (id)description;
- (id)recordTypesAndNamesForCodingType:(unint64_t)a3;
- (unint64_t)hash;
- (void)applyPropertiesFromCloudStoreRecord:(id)a3;
- (void)encodeWithCloudStoreCoder:(id)a3 codingType:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPeerPaymentPendingRequest

- (BOOL)isPaid
{
  v17 = *MEMORY[0x1E69E9840];
  if (!self->_validRecipientCount)
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_receivedTransactions;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) transactionStatus];
        if ((v9 - 4) < 4 || v9 == 1)
        {
          ++v6;
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 == self->_validRecipientCount;
}

- (PKPeerPaymentPendingRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = PKPeerPaymentPendingRequest;
  v5 = [(PKPeerPaymentPendingRequest *)&v38 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestToken"];
    requestToken = v5->_requestToken;
    v5->_requestToken = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requesterAddress"];
    requesterAddress = v5->_requesterAddress;
    v5->_requesterAddress = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requesteeAddress"];
    requesteeAddress = v5->_requesteeAddress;
    v5->_requesteeAddress = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyAmount"];
    currencyAmount = v5->_currencyAmount;
    v5->_currencyAmount = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"memo"];
    memo = v5->_memo;
    v5->_memo = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
    sessionID = v5->_sessionID;
    v5->_sessionID = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestDate"];
    requestDate = v5->_requestDate;
    v5->_requestDate = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expiryDate"];
    expiryDate = v5->_expiryDate;
    v5->_expiryDate = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastDismissedDate"];
    lastDismissedDate = v5->_lastDismissedDate;
    v5->_lastDismissedDate = v22;

    v24 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"actions"];
    actions = v5->_actions;
    v5->_actions = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"status"];
    status = v5->_status;
    v5->_status = v26;

    v5->_context = [v4 decodeIntegerForKey:@"context"];
    v5->_validRecipientCount = [v4 decodeIntegerForKey:@"validRecipientCount"];
    v5->_complete = [v4 decodeBoolForKey:@"complete"];
    v5->_sentOnThisDevice = [v4 decodeBoolForKey:@"sentOnThisDevice"];
    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"messageGUID"];
    messageGUID = v5->_messageGUID;
    v5->_messageGUID = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupID"];
    groupID = v5->_groupID;
    v5->_groupID = v30;

    v32 = MEMORY[0x1E695DFD8];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    v35 = [v4 decodeObjectOfClasses:v34 forKey:@"receivedTransactions"];
    receivedTransactions = v5->_receivedTransactions;
    v5->_receivedTransactions = v35;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  requestToken = self->_requestToken;
  v5 = a3;
  [v5 encodeObject:requestToken forKey:@"requestToken"];
  [v5 encodeObject:self->_requesterAddress forKey:@"requesterAddress"];
  [v5 encodeObject:self->_requesteeAddress forKey:@"requesteeAddress"];
  [v5 encodeObject:self->_currencyAmount forKey:@"currencyAmount"];
  [v5 encodeObject:self->_memo forKey:@"memo"];
  [v5 encodeObject:self->_sessionID forKey:@"sessionID"];
  [v5 encodeObject:self->_requestDate forKey:@"requestDate"];
  [v5 encodeObject:self->_expiryDate forKey:@"expiryDate"];
  [v5 encodeObject:self->_lastDismissedDate forKey:@"lastDismissedDate"];
  [v5 encodeObject:self->_actions forKey:@"actions"];
  [v5 encodeObject:self->_status forKey:@"status"];
  [v5 encodeInteger:self->_context forKey:@"context"];
  [v5 encodeInteger:self->_validRecipientCount forKey:@"validRecipientCount"];
  [v5 encodeBool:self->_complete forKey:@"complete"];
  [v5 encodeBool:self->_sentOnThisDevice forKey:@"sentOnThisDevice"];
  [v5 encodeObject:self->_messageGUID forKey:@"messageGUID"];
  [v5 encodeObject:self->_groupID forKey:@"groupID"];
  [v5 encodeObject:self->_receivedTransactions forKey:@"receivedTransactions"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"requestToken: '%@'; ", self->_requestToken];
  [v6 appendFormat:@"requesterAddress: '%@'; ", self->_requesterAddress];
  [v6 appendFormat:@"requesteeAddress: '%@'; ", self->_requesteeAddress];
  [v6 appendFormat:@"currencyAmount: '%@'; ", self->_currencyAmount];
  [v6 appendFormat:@"memo: '%@'; ", self->_memo];
  [v6 appendFormat:@"sessionID: '%@'; ", self->_sessionID];
  [v6 appendFormat:@"requestDate: '%@'; ", self->_requestDate];
  [v6 appendFormat:@"expiryDate: '%@'; ", self->_expiryDate];
  [v6 appendFormat:@"lastDismissedDate: '%@'; ", self->_lastDismissedDate];
  [v6 appendFormat:@"actions: '%@'; ", self->_actions];
  [v6 appendFormat:@"status: '%@'; ", self->_status];
  v7 = PKPeerPaymentMessagesContextToString(self->_context);
  [v6 appendFormat:@"context: '%@'; ", v7];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_validRecipientCount];
  [v6 appendFormat:@"validRecipientCount: '%@'; ", v8];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](self->_receivedTransactions, "count")}];
  [v6 appendFormat:@"receivedTransactionsCount: '%@'; ", v9];

  if (self->_complete)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [v6 appendFormat:@"isComplete: '%@'; ", v10];
  if (self->_sentOnThisDevice)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  [v6 appendFormat:@"sentOnThisDevice: '%@'; ", v11];
  [v6 appendFormat:@"messageGUID: '%@'; ", self->_messageGUID];
  [v6 appendFormat:@"groupID: '%@'; ", self->_groupID];
  [v6 appendFormat:@">"];
  v12 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v12;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_requestToken];
  [v3 safelyAddObject:self->_requesterAddress];
  [v3 safelyAddObject:self->_requesteeAddress];
  [v3 safelyAddObject:self->_currencyAmount];
  [v3 safelyAddObject:self->_memo];
  [v3 safelyAddObject:self->_sessionID];
  [v3 safelyAddObject:self->_requestDate];
  [v3 safelyAddObject:self->_expiryDate];
  [v3 safelyAddObject:self->_lastDismissedDate];
  [v3 safelyAddObject:self->_actions];
  [v3 safelyAddObject:self->_status];
  [v3 safelyAddObject:self->_messageGUID];
  [v3 safelyAddObject:self->_groupID];
  [v3 safelyAddObject:self->_receivedTransactions];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_context - v4 + 32 * v4;
  v6 = self->_validRecipientCount - v5 + 32 * v5;
  v7 = self->_complete - v6 + 32 * v6;
  v8 = self->_sentOnThisDevice - v7 + 32 * v7;

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_79;
  }

  requestToken = self->_requestToken;
  v6 = v4[2];
  if (requestToken && v6)
  {
    if (([(NSString *)requestToken isEqual:?]& 1) == 0)
    {
      goto LABEL_79;
    }
  }

  else if (requestToken != v6)
  {
    goto LABEL_79;
  }

  requesterAddress = self->_requesterAddress;
  v8 = v4[3];
  if (requesterAddress && v8)
  {
    if (([(NSString *)requesterAddress isEqual:?]& 1) == 0)
    {
      goto LABEL_79;
    }
  }

  else if (requesterAddress != v8)
  {
    goto LABEL_79;
  }

  requesteeAddress = self->_requesteeAddress;
  v10 = v4[4];
  if (requesteeAddress && v10)
  {
    if (([(NSString *)requesteeAddress isEqual:?]& 1) == 0)
    {
      goto LABEL_79;
    }
  }

  else if (requesteeAddress != v10)
  {
    goto LABEL_79;
  }

  currencyAmount = self->_currencyAmount;
  v12 = v4[5];
  if (currencyAmount && v12)
  {
    if (![(PKCurrencyAmount *)currencyAmount isEqual:?])
    {
      goto LABEL_79;
    }
  }

  else if (currencyAmount != v12)
  {
    goto LABEL_79;
  }

  memo = self->_memo;
  v14 = v4[6];
  if (memo && v14)
  {
    if (([(NSString *)memo isEqual:?]& 1) == 0)
    {
      goto LABEL_79;
    }
  }

  else if (memo != v14)
  {
    goto LABEL_79;
  }

  sessionID = self->_sessionID;
  v16 = v4[7];
  if (sessionID && v16)
  {
    if (([(NSString *)sessionID isEqual:?]& 1) == 0)
    {
      goto LABEL_79;
    }
  }

  else if (sessionID != v16)
  {
    goto LABEL_79;
  }

  requestDate = self->_requestDate;
  v18 = v4[8];
  if (requestDate && v18)
  {
    if (([(NSDate *)requestDate isEqual:?]& 1) == 0)
    {
      goto LABEL_79;
    }
  }

  else if (requestDate != v18)
  {
    goto LABEL_79;
  }

  expiryDate = self->_expiryDate;
  v20 = v4[9];
  if (expiryDate && v20)
  {
    if (([(NSDate *)expiryDate isEqual:?]& 1) == 0)
    {
      goto LABEL_79;
    }
  }

  else if (expiryDate != v20)
  {
    goto LABEL_79;
  }

  lastDismissedDate = self->_lastDismissedDate;
  v22 = v4[10];
  if (lastDismissedDate && v22)
  {
    if (([(NSDate *)lastDismissedDate isEqual:?]& 1) == 0)
    {
      goto LABEL_79;
    }
  }

  else if (lastDismissedDate != v22)
  {
    goto LABEL_79;
  }

  actions = self->_actions;
  v24 = v4[11];
  if (actions && v24)
  {
    if (([(NSArray *)actions isEqual:?]& 1) == 0)
    {
      goto LABEL_79;
    }
  }

  else if (actions != v24)
  {
    goto LABEL_79;
  }

  status = self->_status;
  v26 = v4[12];
  if (status && v26)
  {
    if (([(NSString *)status isEqual:?]& 1) == 0)
    {
      goto LABEL_79;
    }
  }

  else if (status != v26)
  {
    goto LABEL_79;
  }

  receivedTransactions = self->_receivedTransactions;
  v28 = v4[14];
  if (!receivedTransactions || !v28)
  {
    if (receivedTransactions == v28)
    {
      goto LABEL_62;
    }

LABEL_79:
    v37 = 0;
    goto LABEL_80;
  }

  if (([(NSArray *)receivedTransactions isEqual:?]& 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_62:
  v29 = v4[16];
  v30 = self->_messageGUID;
  v31 = v29;
  v32 = v31;
  if (v30 == v31)
  {
  }

  else
  {
    if (!v30 || !v31)
    {
LABEL_73:

      goto LABEL_79;
    }

    v33 = [(NSString *)v30 isEqualToString:v31];

    if (!v33)
    {
      goto LABEL_79;
    }
  }

  v34 = v4[17];
  v30 = self->_groupID;
  v35 = v34;
  v32 = v35;
  if (v30 == v35)
  {

    goto LABEL_75;
  }

  if (!v30 || !v35)
  {
    goto LABEL_73;
  }

  v36 = [(NSString *)v30 isEqualToString:v35];

  if (!v36)
  {
    goto LABEL_79;
  }

LABEL_75:
  if (self->_context != v4[13] || self->_validRecipientCount != v4[15] || self->_complete != *(v4 + 8))
  {
    goto LABEL_79;
  }

  v37 = self->_sentOnThisDevice == *(v4 + 9);
LABEL_80:

  return v37;
}

- (PKPeerPaymentPendingRequest)initWithCloudStoreCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKPeerPaymentPendingRequest;
  v5 = [(PKPeerPaymentPendingRequest *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PKPeerPaymentPendingRequest *)v5 applyPropertiesFromCloudStoreRecord:v4];
  }

  return v6;
}

- (void)applyPropertiesFromCloudStoreRecord:(id)a3
{
  v4 = [a3 recordsWithRecordType:@"PendingRequest"];
  v13 = [v4 firstObject];

  v5 = [v13 pk_encryptedDateForKey:@"requestDate"];
  requestDate = self->_requestDate;
  self->_requestDate = v5;

  v7 = [v13 pk_encryptedStringForKey:@"memo"];
  memo = self->_memo;
  self->_memo = v7;

  v9 = [v13 pk_encryptedStringForKey:@"messageGUID"];
  messageGUID = self->_messageGUID;
  self->_messageGUID = v9;

  if (![(NSString *)self->_requestToken length])
  {
    v11 = [v13 pk_encryptedStringForKey:@"requestToken"];
    requestToken = self->_requestToken;
    self->_requestToken = v11;
  }
}

- (void)encodeWithCloudStoreCoder:(id)a3 codingType:(unint64_t)a4
{
  v5 = [a3 recordsWithRecordType:{@"PendingRequest", a4}];
  v7 = [v5 firstObject];

  v6 = [v7 encryptedValues];
  [v6 setObject:self->_requestToken forKey:@"requestToken"];
  [v6 setObject:self->_requestDate forKey:@"requestDate"];
  [v6 setObject:self->_memo forKey:@"memo"];
  [v6 setObject:self->_messageGUID forKey:@"messageGUID"];
}

- (id)recordTypesAndNamesForCodingType:(unint64_t)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v7 = @"PendingRequest";
  v3 = [objc_opt_class() recordNameForRequestToken:{self->_requestToken, @"PendingRequest"}];
  v8 = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  return v5;
}

+ (id)recordNameForRequestToken:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [a1 recordNamePrefix];
  v8 = [v6 initWithFormat:@"%@%@", v7, v5];

  return v8;
}

+ (id)requestTokenFromRecordName:(id)a3
{
  v4 = a3;
  v5 = [a1 recordNamePrefix];
  v6 = [v4 hasPrefix:v5];

  if (v6)
  {
    v7 = [a1 recordNamePrefix];
    v8 = [v4 substringFromIndex:{objc_msgSend(v7, "length")}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end