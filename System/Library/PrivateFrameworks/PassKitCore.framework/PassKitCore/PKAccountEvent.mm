@interface PKAccountEvent
+ (id)accountIdentifierFromRecord:(id)record;
+ (id)recordNameForEventIdentifier:(id)identifier;
+ (int64_t)accountEventTypeFromRecord:(id)record;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAccountEvent:(id)event;
- (PKAccountEvent)initWithCloudStoreCoder:(id)coder;
- (PKAccountEvent)initWithCoder:(id)coder;
- (id)description;
- (id)recordName;
- (id)recordNameForItem:(id)item;
- (id)recordTypesAndNamesForCodingType:(unint64_t)type;
- (id)updateReasonsDescription;
- (unint64_t)hash;
- (void)_encodeServerDataForCloudStoreCoder:(id)coder;
- (void)applyPropertiesFromCloudStoreRecord:(id)record;
- (void)encodeWithCloudStoreCoder:(id)coder codingType:(unint64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAccountEvent

+ (int64_t)accountEventTypeFromRecord:(id)record
{
  recordCopy = record;
  v4 = recordCopy;
  if (!recordCopy)
  {
    goto LABEL_6;
  }

  recordType = [recordCopy recordType];
  v6 = recordType;
  if (recordType == @"AccountEvent")
  {

    goto LABEL_8;
  }

  if (!recordType || !@"AccountEvent")
  {

    v8 = 0;
    goto LABEL_10;
  }

  v7 = [(__CFString *)recordType isEqualToString:@"AccountEvent"];

  if (v7)
  {
LABEL_8:
    v6 = [v4 pk_encryptedStringForKey:@"type"];
    v8 = PKAccountEventTypeFromString(v6);
LABEL_10:

    goto LABEL_11;
  }

LABEL_6:
  v8 = 0;
LABEL_11:

  return v8;
}

+ (id)accountIdentifierFromRecord:(id)record
{
  recordCopy = record;
  v4 = recordCopy;
  if (!recordCopy)
  {
    goto LABEL_10;
  }

  recordType = [recordCopy recordType];
  v6 = recordType;
  if (recordType == @"AccountEvent")
  {

    goto LABEL_8;
  }

  if (recordType && @"AccountEvent")
  {
    v7 = [(__CFString *)recordType isEqualToString:@"AccountEvent"];

    if (!v7)
    {
      goto LABEL_10;
    }

LABEL_8:
    v8 = [v4 pk_encryptedStringForKey:@"identifier"];
    goto LABEL_11;
  }

LABEL_10:
  v8 = 0;
LABEL_11:

  return v8;
}

- (id)recordName
{
  v3 = objc_opt_class();
  identifier = self->_identifier;

  return [v3 recordNameForEventIdentifier:identifier];
}

+ (id)recordNameForEventIdentifier:(id)identifier
{
  v4 = MEMORY[0x1E696AEC0];
  identifierCopy = identifier;
  recordNamePrefix = [self recordNamePrefix];
  identifierCopy = [v4 stringWithFormat:@"%@%@", recordNamePrefix, identifierCopy];

  return identifierCopy;
}

- (id)updateReasonsDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  updateReasons = self->_updateReasons;
  if (updateReasons)
  {
    v5 = 1;
    for (i = 1; i <= updateReasons; i = 1 << v5++)
    {
      if ((i & updateReasons) != 0)
      {
        if (i == 1)
        {
          v7 = @"InitialCloudKitSync";
          goto LABEL_8;
        }

        if (i == 2)
        {
          v7 = @"FetchAllRecords";
LABEL_8:
          [v3 addObject:v7];
          updateReasons = self->_updateReasons;
        }
      }
    }
  }

  v8 = [v3 description];

  return v8;
}

- (PKAccountEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v36.receiver = self;
  v36.super_class = PKAccountEvent;
  v5 = [(PKAccountEvent *)&v36 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v14;

    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v5->_blockNotification = [coderCopy decodeBoolForKey:@"blockNotification"];
    v35 = MEMORY[0x1E695DFD8];
    v34 = objc_opt_class();
    v33 = objc_opt_class();
    v32 = objc_opt_class();
    v31 = objc_opt_class();
    v30 = objc_opt_class();
    v29 = objc_opt_class();
    v28 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = [v35 setWithObjects:{v34, v33, v32, v31, v30, v29, v28, v16, v17, v18, v19, v20, v21, v22, v23, objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"items"];
    items = v5->_items;
    v5->_items = v25;

    v5->_updateReasons = [coderCopy decodeIntegerForKey:@"updateReasons"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_accountIdentifier forKey:@"accountIdentifier"];
  [coderCopy encodeObject:self->_altDSID forKey:@"altDSID"];
  [coderCopy encodeObject:self->_date forKey:@"date"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeBool:self->_blockNotification forKey:@"blockNotification"];
  [coderCopy encodeObject:self->_items forKey:@"items"];
  [coderCopy encodeInteger:self->_updateReasons forKey:@"updateReasons"];
}

- (PKAccountEvent)initWithCloudStoreCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = PKAccountEvent;
  v5 = [(PKAccountEvent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PKAccountEvent *)v5 applyPropertiesFromCloudStoreRecord:coderCopy];
  }

  return v6;
}

- (void)applyPropertiesFromCloudStoreRecord:(id)record
{
  v84 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v5 = [recordCopy recordsWithRecordType:@"AccountEvent"];
  firstObject = [v5 firstObject];

  if (firstObject)
  {
    v7 = [firstObject pk_encryptedStringForKey:@"identifier"];
    identifier = self->_identifier;
    self->_identifier = v7;

    v9 = [firstObject pk_encryptedStringForKey:@"accountIdentifier"];
    accountIdentifier = self->_accountIdentifier;
    self->_accountIdentifier = v9;

    v11 = [firstObject pk_encryptedStringForKey:@"altDSID"];
    altDSID = self->_altDSID;
    self->_altDSID = v11;

    v13 = [firstObject pk_encryptedDateForKey:@"expirationDate"];
    expirationDate = self->_expirationDate;
    self->_expirationDate = v13;

    v15 = [firstObject pk_encryptedDateForKey:@"date"];
    date = self->_date;
    self->_date = v15;

    v17 = [firstObject pk_encryptedStringForKey:@"type"];
    self->_type = PKAccountEventTypeFromString(v17);

    v75 = firstObject;
    selfCopy = self;
    self->_blockNotification = [firstObject pk_encryptedBoolForKey:@"blockNotification"];
    v18 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v76 = recordCopy;
    obj = [recordCopy records];
    v19 = [obj countByEnumeratingWithState:&v79 objects:v83 count:16];
    if (!v19)
    {
      goto LABEL_131;
    }

    v20 = v19;
    v21 = *v80;
    v74 = @"AssistanceProgram";
    while (1)
    {
      v22 = 0;
      do
      {
        if (*v80 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v79 + 1) + 8 * v22);
        recordType = [v23 recordType];
        v25 = recordType;
        if (recordType == @"Rewards")
        {

LABEL_13:
          v27 = PKAccountRewards;
          goto LABEL_30;
        }

        if (@"Rewards" && recordType)
        {
          v26 = [(__CFString *)recordType isEqualToString:@"Rewards"];

          if (v26)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }

        v28 = v25;
        v29 = v28;
        if (v28 == @"Statement")
        {

LABEL_21:
          v27 = PKCreditAccountStatement;
          goto LABEL_30;
        }

        if (@"Statement" && v25)
        {
          v30 = [(__CFString *)v28 isEqualToString:@"Statement"];

          if (v30)
          {
            goto LABEL_21;
          }
        }

        else
        {
        }

        v31 = v29;
        v32 = v31;
        if (v31 == @"Servicing")
        {

LABEL_29:
          v27 = PKAccountServicingEvent;
          goto LABEL_30;
        }

        if (@"Servicing" && v25)
        {
          v33 = [(__CFString *)v31 isEqualToString:?];

          if (v33)
          {
            goto LABEL_29;
          }
        }

        else
        {
        }

        v35 = v32;
        v36 = v35;
        if (v35 == @"Payment")
        {

LABEL_42:
          v34 = [[PKAccountPayment alloc] initWithRecord:v23];
          v38 = [(PKAccountEvent *)selfCopy type]- 5;
          if (v38 <= 3)
          {
            v39 = &unk_1ADB9B1C0;
            goto LABEL_53;
          }

LABEL_31:
          [v18 addObject:v34];
LABEL_32:

          goto LABEL_33;
        }

        if (@"Payment" && v25)
        {
          v37 = [(__CFString *)v35 isEqualToString:?];

          if (v37)
          {
            goto LABEL_42;
          }
        }

        else
        {
        }

        v40 = v36;
        v41 = v40;
        if (v40 == @"Transfer")
        {

LABEL_51:
          v34 = [[PKAccountTransfer alloc] initWithRecord:v23];
          v38 = [(PKAccountEvent *)selfCopy type]- 19;
          if (v38 > 5)
          {
            goto LABEL_31;
          }

          v39 = &unk_1ADB9B1E0;
LABEL_53:
          v43 = v39[v38];
LABEL_54:
          [(PKAccountPayment *)v34 setState:v43];
          goto LABEL_31;
        }

        if (@"Transfer" && v25)
        {
          v42 = [(__CFString *)v40 isEqualToString:?];

          if (v42)
          {
            goto LABEL_51;
          }
        }

        else
        {
        }

        v44 = v41;
        v45 = v44;
        if (v44 == @"AccountHold")
        {

LABEL_62:
          v34 = [[PKAccountHold alloc] initWithRecord:v23];
          type = [(PKAccountEvent *)selfCopy type];
          if (type == 25)
          {
            v43 = 1;
          }

          else
          {
            if (type != 26)
            {
              goto LABEL_31;
            }

            v43 = 2;
          }

          goto LABEL_54;
        }

        if (@"AccountHold" && v25)
        {
          v46 = [(__CFString *)v44 isEqualToString:?];

          if (v46)
          {
            goto LABEL_62;
          }
        }

        else
        {
        }

        v48 = v45;
        v49 = v48;
        if (v48 == @"PaymentReminder")
        {

LABEL_73:
          v27 = PKAccountPaymentReminder;
LABEL_30:
          v34 = [[v27 alloc] initWithRecord:v23];
          goto LABEL_31;
        }

        if (@"PaymentReminder" && v25)
        {
          v50 = [(__CFString *)v48 isEqualToString:?];

          if (v50)
          {
            goto LABEL_73;
          }
        }

        else
        {
        }

        v51 = v49;
        v52 = v51;
        if (v51 == @"CreditTermsUpdate")
        {

LABEL_81:
          v27 = PKAccountCreditTermsUpdate;
          goto LABEL_30;
        }

        if (@"CreditTermsUpdate" && v25)
        {
          v53 = [(__CFString *)v51 isEqualToString:?];

          if (v53)
          {
            goto LABEL_81;
          }
        }

        else
        {
        }

        v54 = v52;
        v55 = v54;
        if (v54 == @"PhysicalCardStatusUpdate")
        {

LABEL_89:
          v27 = PKAccountPhysicalCardStatusUpdate;
          goto LABEL_30;
        }

        if (@"PhysicalCardStatusUpdate" && v25)
        {
          v56 = [(__CFString *)v54 isEqualToString:?];

          if (v56)
          {
            goto LABEL_89;
          }
        }

        else
        {
        }

        v57 = v55;
        v58 = v57;
        if (v57 == @"PhysicalCardShippingUpdate")
        {

LABEL_97:
          v27 = PKAccountPhysicalCardShippingUpdate;
          goto LABEL_30;
        }

        if (@"PhysicalCardShippingUpdate" && v25)
        {
          v59 = [(__CFString *)v57 isEqualToString:?];

          if (v59)
          {
            goto LABEL_97;
          }
        }

        else
        {
        }

        v60 = v58;
        v61 = v60;
        if (v60 == @"VirtualCardStatusUpdate")
        {

LABEL_105:
          v27 = PKAccountVirtualCardStatusUpdate;
          goto LABEL_30;
        }

        if (@"VirtualCardStatusUpdate" && v25)
        {
          v62 = [(__CFString *)v60 isEqualToString:?];

          if (v62)
          {
            goto LABEL_105;
          }
        }

        else
        {
        }

        v63 = v61;
        v64 = v63;
        if (v63 == @"BillPaymentSelectedSuggestedAmount")
        {

LABEL_113:
          v27 = PKBillPaymentSelectedSuggestedAmountData;
          goto LABEL_30;
        }

        if (@"BillPaymentSelectedSuggestedAmount" && v25)
        {
          v65 = [(__CFString *)v63 isEqualToString:?];

          if (v65)
          {
            goto LABEL_113;
          }
        }

        else
        {
        }

        v66 = v64;
        v67 = v66;
        if (v66 == @"UserInfo")
        {

LABEL_121:
          v27 = PKAccountUserInfoUpdate;
          goto LABEL_30;
        }

        if (@"UserInfo" && v25)
        {
          v68 = [(__CFString *)v66 isEqualToString:?];

          if (v68)
          {
            goto LABEL_121;
          }
        }

        else
        {
        }

        v69 = v67;
        v34 = v69;
        if (v69 == v74)
        {

LABEL_129:
          v27 = PKAccountAssistanceProgramMessage;
          goto LABEL_30;
        }

        if (!v74 || !v25)
        {
          goto LABEL_32;
        }

        v70 = [(__CFString *)v69 isEqualToString:?];

        if (v70)
        {
          goto LABEL_129;
        }

LABEL_33:

        ++v22;
      }

      while (v20 != v22);
      v71 = [obj countByEnumeratingWithState:&v79 objects:v83 count:16];
      v20 = v71;
      if (!v71)
      {
LABEL_131:

        v72 = [v18 copy];
        items = selfCopy->_items;
        selfCopy->_items = v72;

        firstObject = v75;
        recordCopy = v76;
        break;
      }
    }
  }
}

- (void)encodeWithCloudStoreCoder:(id)coder codingType:(unint64_t)type
{
  if (type - 1 <= 1)
  {
    [(PKAccountEvent *)self _encodeServerDataForCloudStoreCoder:coder];
  }
}

- (void)_encodeServerDataForCloudStoreCoder:(id)coder
{
  v34 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v4 = [coderCopy recordsWithRecordType:@"AccountEvent"];
  firstObject = [v4 firstObject];

  encryptedValues = [firstObject encryptedValues];
  [encryptedValues setObject:self->_identifier forKey:@"identifier"];
  [encryptedValues setObject:self->_accountIdentifier forKey:@"accountIdentifier"];
  [encryptedValues setObject:self->_altDSID forKey:@"altDSID"];
  [encryptedValues setObject:self->_date forKey:@"date"];
  [encryptedValues setObject:self->_expirationDate forKey:@"expirationDate"];
  v7 = PKAccountEventTypeToString(self->_type);
  [encryptedValues setObject:v7 forKey:@"type"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_blockNotification];
  v24 = encryptedValues;
  [encryptedValues setObject:v8 forKey:@"blockNotification"];

  recordID = [firstObject recordID];
  zoneID = [recordID zoneID];

  v25 = firstObject;
  v10 = [objc_alloc(MEMORY[0x1E695BAB0]) initWithRecord:firstObject action:1];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  selfCopy = self;
  obj = self->_items;
  v12 = [(NSSet *)obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    do
    {
      v15 = 0;
      do
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v29 + 1) + 8 * v15);
        v17 = objc_alloc(MEMORY[0x1E695BA70]);
        v18 = [(PKAccountEvent *)selfCopy recordNameForItem:v16];
        v19 = [v17 initWithRecordName:v18 zoneID:zoneID];

        v20 = objc_alloc(MEMORY[0x1E695BA60]);
        recordType = [objc_opt_class() recordType];
        v22 = [v20 initWithRecordType:recordType recordID:v19];

        valuesByKey = [v22 valuesByKey];
        [valuesByKey setObject:v10 forKey:@"accountEventReference"];

        [v16 encodeWithRecord:v22];
        if (v22)
        {
          [coderCopy addRecord:v22];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSSet *)obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v13);
  }
}

- (id)recordTypesAndNamesForCodingType:(unint64_t)type
{
  v27[1] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v26 = @"AccountEvent";
  v5 = MEMORY[0x1E696AEC0];
  recordNamePrefix = [objc_opt_class() recordNamePrefix];
  v7 = [v5 stringWithFormat:@"%@%@", recordNamePrefix, self->_identifier];
  v27[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  [array addObject:v8];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = self->_items;
  v10 = [(NSSet *)v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        recordType = [objc_opt_class() recordType];
        v23 = recordType;
        v16 = [(PKAccountEvent *)self recordNameForItem:v14];
        v24 = v16;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        [array addObject:v17];
      }

      v11 = [(NSSet *)v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v11);
  }

  return array;
}

- (id)recordNameForItem:(id)item
{
  v4 = MEMORY[0x1E696AEC0];
  recordNamePrefix = [objc_opt_class() recordNamePrefix];
  v6 = [v4 stringWithFormat:@"%@%@", recordNamePrefix, self->_identifier];

  return v6;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_identifier];
  [array safelyAddObject:self->_accountIdentifier];
  [array safelyAddObject:self->_altDSID];
  [array safelyAddObject:self->_expirationDate];
  [array safelyAddObject:self->_date];
  [array safelyAddObject:self->_items];
  v4 = PKCombinedHash(17, array);
  v5 = self->_type - v4 + 32 * v4;
  v6 = self->_blockNotification - v5 + 32 * v5;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAccountEvent *)self isEqualToAccountEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToAccountEvent:(id)event
{
  eventCopy = event;
  identifier = self->_identifier;
  v6 = eventCopy[2];
  if (identifier)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (identifier != v6)
    {
      goto LABEL_36;
    }
  }

  else if (([(NSString *)identifier isEqual:?]& 1) == 0)
  {
    goto LABEL_36;
  }

  accountIdentifier = self->_accountIdentifier;
  v9 = eventCopy[3];
  if (accountIdentifier && v9)
  {
    if (([(NSString *)accountIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (accountIdentifier != v9)
  {
    goto LABEL_36;
  }

  altDSID = self->_altDSID;
  v11 = eventCopy[4];
  if (altDSID && v11)
  {
    if (([(NSString *)altDSID isEqual:?]& 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (altDSID != v11)
  {
    goto LABEL_36;
  }

  expirationDate = self->_expirationDate;
  v13 = eventCopy[7];
  if (expirationDate && v13)
  {
    if (([(NSDate *)expirationDate isEqual:?]& 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (expirationDate != v13)
  {
    goto LABEL_36;
  }

  date = self->_date;
  v15 = eventCopy[6];
  if (date && v15)
  {
    if (([(NSDate *)date isEqual:?]& 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (date != v15)
  {
    goto LABEL_36;
  }

  items = self->_items;
  v17 = eventCopy[8];
  if (!items || !v17)
  {
    if (items == v17)
    {
      goto LABEL_34;
    }

LABEL_36:
    v18 = 0;
    goto LABEL_37;
  }

  if (([(NSSet *)items isEqual:?]& 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_34:
  if (self->_type != eventCopy[5])
  {
    goto LABEL_36;
  }

  v18 = self->_blockNotification == *(eventCopy + 8);
LABEL_37:

  return v18;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  [v3 appendFormat:@"account identifier: '%@'; ", self->_accountIdentifier];
  [v3 appendFormat:@"altDSID: '%@'; ", self->_altDSID];
  v4 = PKAccountEventTypeToString(self->_type);
  [v3 appendFormat:@"type: '%@'; ", v4];

  v5 = [(NSDate *)self->_date description];
  [v3 appendFormat:@"date: '%@'; ", v5];

  v6 = [(NSDate *)self->_expirationDate description];
  [v3 appendFormat:@"expiration date: '%@'; ", v6];

  v7 = [(NSSet *)self->_items description];
  [v3 appendFormat:@"items: '%@'; ", v7];

  if (self->_blockNotification)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v3 appendFormat:@"blockNotification: '%@'; ", v8];
  [v3 appendFormat:@">"];

  return v3;
}

@end