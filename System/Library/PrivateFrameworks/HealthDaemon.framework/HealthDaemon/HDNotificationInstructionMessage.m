@interface HDNotificationInstructionMessage
- (BOOL)isEqual:(id)a3;
- (HDCodableNotificationInstructionMessage)codableMessage;
- (HDNotificationInstructionMessage)initWithCodableNotificationInstructionMessage:(id)a3 criteriaClasses:(id)a4;
- (HDNotificationInstructionMessage)initWithCreationDate:(id)a3 sendingDeviceInfo:(id)a4 action:(int64_t)a5 clientIdentifier:(id)a6 categoryIdentifier:(id)a7 expirationDate:(id)a8 criteria:(id)a9;
- (HDNotificationInstructionMessage)initWithMessageDictionary:(id)a3 criteriaClasses:(id)a4;
- (NSDictionary)messageDictionary;
- (id)_initWithMinimumCompatibleVersion:(void *)a3 creationDateTimeIntervalNumber:(void *)a4 sendingDeviceInfo:(void *)a5 actionNumber:(void *)a6 clientIdentifier:(void *)a7 categoryIdentifier:(void *)a8 expirationDateTimeIntervalNumber:(void *)a9 criteria:;
- (id)description;
- (unint64_t)hash;
@end

@implementation HDNotificationInstructionMessage

- (id)_initWithMinimumCompatibleVersion:(void *)a3 creationDateTimeIntervalNumber:(void *)a4 sendingDeviceInfo:(void *)a5 actionNumber:(void *)a6 clientIdentifier:(void *)a7 categoryIdentifier:(void *)a8 expirationDateTimeIntervalNumber:(void *)a9 criteria:
{
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  if (a1 && v16 && [v16 integerValue] <= 1)
  {
    v24 = 0;
    if (v17 && v18 && v19 && v20 && v21 && v22)
    {
      v26 = MEMORY[0x277CBEAA8];
      [v17 doubleValue];
      v33 = [v26 dateWithTimeIntervalSinceReferenceDate:?];
      v32 = [v19 integerValue];
      v27 = MEMORY[0x277CBEAA8];
      [v22 doubleValue];
      v28 = [v27 dateWithTimeIntervalSinceReferenceDate:?];
      if ((v32 - 1) > 2)
      {
        v24 = 0;
      }

      else
      {
        v29 = a1;
        v30 = v28;
        v31 = [v29 initWithCreationDate:v33 sendingDeviceInfo:v18 action:v23 clientIdentifier:? categoryIdentifier:? expirationDate:? criteria:?];
        v28 = v30;
        a1 = v31;
        v24 = v31;
      }
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (HDNotificationInstructionMessage)initWithCreationDate:(id)a3 sendingDeviceInfo:(id)a4 action:(int64_t)a5 clientIdentifier:(id)a6 categoryIdentifier:(id)a7 expirationDate:(id)a8 criteria:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v35.receiver = self;
  v35.super_class = HDNotificationInstructionMessage;
  v21 = [(HDNotificationInstructionMessage *)&v35 init];
  if (v21)
  {
    v22 = [v16 copy];
    sendingDeviceInfo = v21->_sendingDeviceInfo;
    v21->_sendingDeviceInfo = v22;

    v21->_action = a5;
    v24 = [v17 copy];
    clientIdentifier = v21->_clientIdentifier;
    v21->_clientIdentifier = v24;

    v26 = [v18 copy];
    categoryIdentifier = v21->_categoryIdentifier;
    v21->_categoryIdentifier = v26;

    v28 = [v15 copy];
    creationDate = v21->_creationDate;
    v21->_creationDate = v28;

    v30 = [v19 copy];
    expirationDate = v21->_expirationDate;
    v21->_expirationDate = v30;

    v32 = [v20 copy];
    criteria = v21->_criteria;
    v21->_criteria = v32;
  }

  return v21;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if (self->_action != v5->_action)
      {
        goto LABEL_24;
      }

      categoryIdentifier = self->_categoryIdentifier;
      v7 = v5->_categoryIdentifier;
      if (categoryIdentifier != v7 && (!v7 || ![(NSString *)categoryIdentifier isEqualToString:?]))
      {
        goto LABEL_24;
      }

      clientIdentifier = self->_clientIdentifier;
      v9 = v5->_clientIdentifier;
      if (clientIdentifier != v9 && (!v9 || ![(NSString *)clientIdentifier isEqualToString:?]))
      {
        goto LABEL_24;
      }

      creationDate = self->_creationDate;
      v11 = v5->_creationDate;
      if (creationDate != v11 && (!v11 || ![(NSDate *)creationDate isEqualToDate:?]))
      {
        goto LABEL_24;
      }

      expirationDate = self->_expirationDate;
      v13 = v5->_expirationDate;
      if (expirationDate != v13 && (!v13 || ![(NSDate *)expirationDate isEqualToDate:?]))
      {
        goto LABEL_24;
      }

      sendingDeviceInfo = self->_sendingDeviceInfo;
      v15 = v5->_sendingDeviceInfo;
      if (sendingDeviceInfo != v15 && (!v15 || ![(NSString *)sendingDeviceInfo isEqualToString:?]))
      {
        goto LABEL_24;
      }

      criteria = self->_criteria;
      v17 = v5->_criteria;
      if (criteria == v17)
      {
        v18 = 1;
        goto LABEL_25;
      }

      if (v17)
      {
        v18 = [(HDNotificationInstructionCriteria *)criteria isEqual:?];
      }

      else
      {
LABEL_24:
        v18 = 0;
      }

LABEL_25:

      goto LABEL_26;
    }

    v18 = 0;
  }

LABEL_26:

  return v18;
}

- (unint64_t)hash
{
  action = self->_action;
  v4 = [(NSString *)self->_categoryIdentifier hash]^ action;
  v5 = [(NSString *)self->_clientIdentifier hash];
  v6 = v4 ^ v5 ^ [(NSDate *)self->_creationDate hash];
  v7 = [(NSDate *)self->_expirationDate hash];
  v8 = v7 ^ [(NSString *)self->_sendingDeviceInfo hash];
  return v6 ^ v8 ^ [(HDNotificationInstructionCriteria *)self->_criteria hash];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  action = self->_action;
  v6 = NSStringFromHKNotificationInstructionAction();
  criteria = self->_criteria;
  v8 = [v3 stringWithFormat:@"<%@:%@ ctime:%@ %@:%@ expires:%@ criteria:%@ device:%@>", v4, v6, self->_creationDate, self->_clientIdentifier, self->_categoryIdentifier, self->_expirationDate, criteria, self->_sendingDeviceInfo];

  return v8;
}

- (HDNotificationInstructionMessage)initWithMessageDictionary:(id)a3 criteriaClasses:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 hk_safeStringForKeyPath:@"criteriaIdentifier" error:0];
  if (v8)
  {
    v9 = [v6 hk_safeDictionaryForKeyPath:@"criteria" error:0];
    if (v9)
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __78__HDNotificationInstructionMessage_initWithMessageDictionary_criteriaClasses___block_invoke;
      v21[3] = &unk_278623A30;
      v22 = v8;
      v10 = [objc_alloc(objc_msgSend(v7 hk_firstObjectPassingTest:{v21)), "initWithMessageDictionary:", v9}];

      if (!v10)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v10 = 0;
    }

    v19 = v8;
    v20 = v7;
  }

  else
  {
    v19 = 0;
    v20 = v7;
    v10 = 0;
  }

  v11 = [v6 hk_safeNumberForKeyPath:@"minimumCompatibleVersion" error:0];
  v12 = [v6 hk_safeNumberForKeyPath:@"creationDate" error:0];
  v13 = [v6 hk_safeStringForKeyPath:@"sendingDeviceInfo" error:0];
  v14 = [v6 hk_safeNumberForKeyPath:@"action" error:0];
  v15 = [v6 hk_safeStringForKeyPath:@"clientIdentifier" error:0];
  v16 = [v6 hk_safeStringForKeyPath:@"categoryIdentifier" error:0];
  v17 = [v6 hk_safeNumberForKeyPath:@"expirationDate" error:0];
  self = [(HDNotificationInstructionMessage *)self _initWithMinimumCompatibleVersion:v11 creationDateTimeIntervalNumber:v12 sendingDeviceInfo:v13 actionNumber:v14 clientIdentifier:v15 categoryIdentifier:v16 expirationDateTimeIntervalNumber:v17 criteria:v10];

  v9 = v10;
  v10 = self;
  v8 = v19;
  v7 = v20;
LABEL_9:

  return v10;
}

uint64_t __78__HDNotificationInstructionMessage_initWithMessageDictionary_criteriaClasses___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 criteriaIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (NSDictionary)messageDictionary
{
  v20[8] = *MEMORY[0x277D85DE8];
  v19[0] = @"currentCompatibilityVersion";
  v19[1] = @"minimumCompatibleVersion";
  v20[0] = &unk_283CB2F58;
  v20[1] = &unk_283CB2F70;
  v19[2] = @"creationDate";
  v3 = MEMORY[0x277CCABB0];
  [(NSDate *)self->_creationDate timeIntervalSinceReferenceDate];
  v4 = [v3 numberWithDouble:?];
  sendingDeviceInfo = self->_sendingDeviceInfo;
  action = self->_action;
  v20[2] = v4;
  v20[3] = sendingDeviceInfo;
  v19[3] = @"sendingDeviceInfo";
  v19[4] = @"action";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:action];
  clientIdentifier = self->_clientIdentifier;
  categoryIdentifier = self->_categoryIdentifier;
  v20[4] = v7;
  v20[5] = clientIdentifier;
  v19[5] = @"clientIdentifier";
  v19[6] = @"categoryIdentifier";
  v20[6] = categoryIdentifier;
  v19[7] = @"expirationDate";
  v10 = MEMORY[0x277CCABB0];
  [(NSDate *)self->_expirationDate timeIntervalSinceReferenceDate];
  v11 = [v10 numberWithDouble:?];
  v20[7] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:8];
  v13 = [v12 mutableCopy];

  if (self->_criteria)
  {
    v14 = [objc_opt_class() criteriaIdentifier];
    [v13 setObject:v14 forKeyedSubscript:@"criteriaIdentifier"];

    v15 = [(HDNotificationInstructionCriteria *)self->_criteria messageDictionary];
    [v13 setObject:v15 forKeyedSubscript:@"criteria"];
  }

  v16 = [v13 copy];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (HDNotificationInstructionMessage)initWithCodableNotificationInstructionMessage:(id)a3 criteriaClasses:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 hasCriteria])
  {
    v8 = [v6 criteria];
    if (([v8 hasIdentifier] & 1) == 0)
    {

      v10 = 0;
LABEL_42:
      v20 = 0;
      goto LABEL_43;
    }

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __98__HDNotificationInstructionMessage_initWithCodableNotificationInstructionMessage_criteriaClasses___block_invoke;
    v29[3] = &unk_278623A30;
    v30 = v8;
    v9 = v8;
    v10 = [objc_alloc(objc_msgSend(v7 hk_firstObjectPassingTest:{v29)), "initWithCodableNotificationInstructionCriteria:", v9}];

    if (!v10)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v10 = 0;
  }

  v25 = v7;
  v24 = [v6 hasMinimumCompatibleVersion];
  if (v24)
  {
    v28 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v6, "minimumCompatibleVersion")}];
  }

  else
  {
    v28 = 0;
  }

  v23 = [v6 hasCreationDateTimeInterval];
  if (v23)
  {
    v11 = MEMORY[0x277CCABB0];
    [v6 creationDateTimeInterval];
    v27 = [v11 numberWithDouble:?];
  }

  else
  {
    v27 = 0;
  }

  v22 = [v6 hasSendingDeviceInfo];
  if (v22)
  {
    v26 = [v6 sendingDeviceInfo];
  }

  else
  {
    v26 = 0;
  }

  v12 = [v6 hasAction];
  if (v12)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v6, "action")}];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v6 hasClientIdentifier];
  if (v14)
  {
    v15 = [v6 clientIdentifier];
  }

  else
  {
    v15 = 0;
  }

  v16 = [v6 hasCategoryIdentifier];
  if (v16)
  {
    v17 = [v6 categoryIdentifier];
  }

  else
  {
    v17 = 0;
  }

  if ([v6 hasExpirationDateTimeInterval])
  {
    v18 = MEMORY[0x277CCABB0];
    [v6 expirationDateTimeInterval];
    v19 = [v18 numberWithDouble:?];
    self = [(HDNotificationInstructionMessage *)self _initWithMinimumCompatibleVersion:v28 creationDateTimeIntervalNumber:v27 sendingDeviceInfo:v26 actionNumber:v13 clientIdentifier:v15 categoryIdentifier:v17 expirationDateTimeIntervalNumber:v19 criteria:v10];
  }

  else
  {
    self = [(HDNotificationInstructionMessage *)self _initWithMinimumCompatibleVersion:v28 creationDateTimeIntervalNumber:v27 sendingDeviceInfo:v26 actionNumber:v13 clientIdentifier:v15 categoryIdentifier:v17 expirationDateTimeIntervalNumber:0 criteria:v10];
  }

  v7 = v25;
  if (!v16)
  {
    if (!v14)
    {
      goto LABEL_29;
    }

LABEL_39:

    if (!v12)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (v14)
  {
    goto LABEL_39;
  }

LABEL_29:
  if (v12)
  {
LABEL_30:
  }

LABEL_31:
  if (v22)
  {
  }

  if (v23)
  {
  }

  if (v24)
  {
  }

  v20 = self;
LABEL_43:

  return v20;
}

uint64_t __98__HDNotificationInstructionMessage_initWithCodableNotificationInstructionMessage_criteriaClasses___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 criteriaIdentifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (HDCodableNotificationInstructionMessage)codableMessage
{
  v3 = objc_alloc_init(HDCodableNotificationInstructionMessage);
  [(HDCodableNotificationInstructionMessage *)v3 setCurrentCompatibilityVersion:2];
  [(HDCodableNotificationInstructionMessage *)v3 setMinimumCompatibleVersion:1];
  [(NSDate *)self->_creationDate timeIntervalSinceReferenceDate];
  [(HDCodableNotificationInstructionMessage *)v3 setCreationDateTimeInterval:?];
  [(HDCodableNotificationInstructionMessage *)v3 setSendingDeviceInfo:self->_sendingDeviceInfo];
  [(HDCodableNotificationInstructionMessage *)v3 setAction:self->_action];
  [(HDCodableNotificationInstructionMessage *)v3 setClientIdentifier:self->_clientIdentifier];
  [(HDCodableNotificationInstructionMessage *)v3 setCategoryIdentifier:self->_categoryIdentifier];
  [(NSDate *)self->_expirationDate timeIntervalSinceReferenceDate];
  [(HDCodableNotificationInstructionMessage *)v3 setExpirationDateTimeInterval:?];
  criteria = self->_criteria;
  if (criteria)
  {
    v5 = [(HDNotificationInstructionCriteria *)criteria codableCriteria];
    [(HDCodableNotificationInstructionMessage *)v3 setCriteria:v5];
  }

  return v3;
}

@end