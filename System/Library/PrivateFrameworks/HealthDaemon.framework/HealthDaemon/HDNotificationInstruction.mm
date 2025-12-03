@interface HDNotificationInstruction
- (BOOL)isEqual:(id)equal;
- (HDNotificationInstruction)initWithMessageIdentifier:(id)identifier creationDate:(id)date receivedDate:(id)receivedDate modificationDate:(id)modificationDate sendingDeviceName:(id)name sendingDeviceInfo:(id)info action:(int64_t)action clientIdentifier:(id)self0 categoryIdentifier:(id)self1 expirationDate:(id)self2 criteria:(id)self3 isInvalid:(BOOL)self4;
- (HDNotificationInstruction)initWithMessageIdentifier:(id)identifier receivedDate:(id)date sendingDeviceName:(id)name message:(id)message;
- (id)description;
- (int64_t)isValidWithDatabaseTransaction:(id)transaction date:(id)date error:(id *)error;
- (unint64_t)hash;
@end

@implementation HDNotificationInstruction

- (HDNotificationInstruction)initWithMessageIdentifier:(id)identifier creationDate:(id)date receivedDate:(id)receivedDate modificationDate:(id)modificationDate sendingDeviceName:(id)name sendingDeviceInfo:(id)info action:(int64_t)action clientIdentifier:(id)self0 categoryIdentifier:(id)self1 expirationDate:(id)self2 criteria:(id)self3 isInvalid:(BOOL)self4
{
  identifierCopy = identifier;
  dateCopy = date;
  receivedDateCopy = receivedDate;
  modificationDateCopy = modificationDate;
  nameCopy = name;
  infoCopy = info;
  clientIdentifierCopy = clientIdentifier;
  categoryIdentifierCopy = categoryIdentifier;
  expirationDateCopy = expirationDate;
  criteriaCopy = criteria;
  v52.receiver = self;
  v52.super_class = HDNotificationInstruction;
  v28 = [(HDNotificationInstruction *)&v52 init];
  if (v28)
  {
    v29 = [identifierCopy copy];
    messageIdentifier = v28->_messageIdentifier;
    v28->_messageIdentifier = v29;

    v31 = [nameCopy copy];
    sendingDeviceName = v28->_sendingDeviceName;
    v28->_sendingDeviceName = v31;

    v33 = [infoCopy copy];
    sendingDeviceInfo = v28->_sendingDeviceInfo;
    v28->_sendingDeviceInfo = v33;

    v28->_action = action;
    v35 = [clientIdentifierCopy copy];
    clientIdentifier = v28->_clientIdentifier;
    v28->_clientIdentifier = v35;

    v37 = [categoryIdentifierCopy copy];
    categoryIdentifier = v28->_categoryIdentifier;
    v28->_categoryIdentifier = v37;

    v39 = [dateCopy copy];
    creationDate = v28->_creationDate;
    v28->_creationDate = v39;

    v41 = [receivedDateCopy copy];
    receivedDate = v28->_receivedDate;
    v28->_receivedDate = v41;

    v43 = [expirationDateCopy copy];
    expirationDate = v28->_expirationDate;
    v28->_expirationDate = v43;

    v45 = [modificationDateCopy copy];
    modificationDate = v28->_modificationDate;
    v28->_modificationDate = v45;

    v47 = [criteriaCopy copy];
    criteria = v28->_criteria;
    v28->_criteria = v47;

    v28->_isInvalid = invalid;
  }

  return v28;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v26 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if (self->_action != v5->_action)
      {
        goto LABEL_37;
      }

      categoryIdentifier = self->_categoryIdentifier;
      v7 = v5->_categoryIdentifier;
      if (categoryIdentifier != v7 && (!v7 || ![(NSString *)categoryIdentifier isEqualToString:?]))
      {
        goto LABEL_37;
      }

      clientIdentifier = self->_clientIdentifier;
      v9 = v5->_clientIdentifier;
      if (clientIdentifier != v9 && (!v9 || ![(NSString *)clientIdentifier isEqualToString:?]))
      {
        goto LABEL_37;
      }

      creationDate = self->_creationDate;
      v11 = v5->_creationDate;
      if (creationDate != v11 && (!v11 || ![(NSDate *)creationDate isEqualToDate:?]))
      {
        goto LABEL_37;
      }

      receivedDate = self->_receivedDate;
      v13 = v5->_receivedDate;
      if (receivedDate != v13 && (!v13 || ![(NSDate *)receivedDate isEqualToDate:?]))
      {
        goto LABEL_37;
      }

      expirationDate = self->_expirationDate;
      v15 = v5->_expirationDate;
      if (expirationDate != v15 && (!v15 || ![(NSDate *)expirationDate isEqualToDate:?]))
      {
        goto LABEL_37;
      }

      modificationDate = self->_modificationDate;
      v17 = v5->_modificationDate;
      if (modificationDate != v17 && (!v17 || ![(NSDate *)modificationDate isEqualToDate:?]))
      {
        goto LABEL_37;
      }

      messageIdentifier = self->_messageIdentifier;
      v19 = v5->_messageIdentifier;
      if (messageIdentifier != v19 && (!v19 || ![(NSString *)messageIdentifier isEqualToString:?]))
      {
        goto LABEL_37;
      }

      if (((sendingDeviceName = self->_sendingDeviceName, v21 = v5->_sendingDeviceName, sendingDeviceName == v21) || v21 && [(NSString *)sendingDeviceName isEqualToString:?]) && ((sendingDeviceInfo = self->_sendingDeviceInfo, v23 = v5->_sendingDeviceInfo, sendingDeviceInfo == v23) || v23 && [(NSString *)sendingDeviceInfo isEqualToString:?]) && ((criteria = self->_criteria, v25 = v5->_criteria, criteria == v25) || v25 && [(HDNotificationInstructionCriteria *)criteria isEqual:?]))
      {
        v26 = self->_isInvalid == v5->_isInvalid;
      }

      else
      {
LABEL_37:
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }
  }

  return v26;
}

- (unint64_t)hash
{
  action = self->_action;
  v4 = [(NSString *)self->_categoryIdentifier hash]^ action;
  v5 = [(NSString *)self->_clientIdentifier hash];
  v6 = v4 ^ v5 ^ [(NSDate *)self->_creationDate hash];
  v7 = [(NSDate *)self->_receivedDate hash];
  v8 = v7 ^ [(NSDate *)self->_expirationDate hash];
  v9 = v6 ^ v8 ^ [(NSDate *)self->_modificationDate hash];
  v10 = [(NSString *)self->_messageIdentifier hash];
  v11 = v10 ^ [(NSString *)self->_sendingDeviceName hash];
  v12 = v11 ^ [(NSString *)self->_sendingDeviceInfo hash];
  return v9 ^ v12 ^ [(HDNotificationInstructionCriteria *)self->_criteria hash]^ self->_isInvalid;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  action = self->_action;
  v6 = NSStringFromHKNotificationInstructionAction();
  v14 = *&self->_receivedDate;
  v15 = *&self->_messageIdentifier;
  v13 = *&self->_clientIdentifier;
  v12 = *&self->_expirationDate;
  sendingDeviceName = self->_sendingDeviceName;
  sendingDeviceInfo = self->_sendingDeviceInfo;
  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_isInvalid];
  v10 = [v3 stringWithFormat:@"<%@:%@ mID:%@ ctime:%@ rtime:%@ mtime:%@ %@:%@ expires:%@ criteria:%@ device:%@%@ invalid:%@>", v4, v6, v15, v14, v13, v12, sendingDeviceName, sendingDeviceInfo, v9];;

  return v10;
}

- (HDNotificationInstruction)initWithMessageIdentifier:(id)identifier receivedDate:(id)date sendingDeviceName:(id)name message:(id)message
{
  selfCopy = 0;
  if (identifier && message)
  {
    messageCopy = message;
    nameCopy = name;
    dateCopy = date;
    identifierCopy = identifier;
    creationDate = [messageCopy creationDate];
    creationDate2 = [messageCopy creationDate];
    sendingDeviceInfo = [messageCopy sendingDeviceInfo];
    action = [messageCopy action];
    clientIdentifier = [messageCopy clientIdentifier];
    categoryIdentifier = [messageCopy categoryIdentifier];
    expirationDate = [messageCopy expirationDate];
    criteria = [messageCopy criteria];

    LOBYTE(v21) = 0;
    v19 = [(HDNotificationInstruction *)self initWithMessageIdentifier:identifierCopy creationDate:creationDate receivedDate:dateCopy modificationDate:creationDate2 sendingDeviceName:nameCopy sendingDeviceInfo:sendingDeviceInfo action:action clientIdentifier:clientIdentifier categoryIdentifier:categoryIdentifier expirationDate:expirationDate criteria:criteria isInvalid:v21];

    self = v19;
    selfCopy = self;
  }

  return selfCopy;
}

- (int64_t)isValidWithDatabaseTransaction:(id)transaction date:(id)date error:(id *)error
{
  transactionCopy = transaction;
  dateCopy = date;
  if (-[HDNotificationInstruction isInvalid](self, "isInvalid") || (-[HDNotificationInstruction expirationDate](self, "expirationDate"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [dateCopy hk_isAfterDate:v10], v10, (v11 & 1) != 0))
  {
    v12 = 2;
  }

  else
  {
    criteria = [(HDNotificationInstruction *)self criteria];

    if (criteria)
    {
      criteria2 = [(HDNotificationInstruction *)self criteria];
      v12 = [criteria2 isValidWithDatabaseTransaction:transactionCopy error:error];
    }

    else
    {
      v12 = 1;
    }
  }

  return v12;
}

@end