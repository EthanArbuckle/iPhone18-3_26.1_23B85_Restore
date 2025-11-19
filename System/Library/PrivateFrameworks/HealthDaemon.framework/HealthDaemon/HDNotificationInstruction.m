@interface HDNotificationInstruction
- (BOOL)isEqual:(id)a3;
- (HDNotificationInstruction)initWithMessageIdentifier:(id)a3 creationDate:(id)a4 receivedDate:(id)a5 modificationDate:(id)a6 sendingDeviceName:(id)a7 sendingDeviceInfo:(id)a8 action:(int64_t)a9 clientIdentifier:(id)a10 categoryIdentifier:(id)a11 expirationDate:(id)a12 criteria:(id)a13 isInvalid:(BOOL)a14;
- (HDNotificationInstruction)initWithMessageIdentifier:(id)a3 receivedDate:(id)a4 sendingDeviceName:(id)a5 message:(id)a6;
- (id)description;
- (int64_t)isValidWithDatabaseTransaction:(id)a3 date:(id)a4 error:(id *)a5;
- (unint64_t)hash;
@end

@implementation HDNotificationInstruction

- (HDNotificationInstruction)initWithMessageIdentifier:(id)a3 creationDate:(id)a4 receivedDate:(id)a5 modificationDate:(id)a6 sendingDeviceName:(id)a7 sendingDeviceInfo:(id)a8 action:(int64_t)a9 clientIdentifier:(id)a10 categoryIdentifier:(id)a11 expirationDate:(id)a12 criteria:(id)a13 isInvalid:(BOOL)a14
{
  v51 = a3;
  v50 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  v27 = a13;
  v52.receiver = self;
  v52.super_class = HDNotificationInstruction;
  v28 = [(HDNotificationInstruction *)&v52 init];
  if (v28)
  {
    v29 = [v51 copy];
    messageIdentifier = v28->_messageIdentifier;
    v28->_messageIdentifier = v29;

    v31 = [v22 copy];
    sendingDeviceName = v28->_sendingDeviceName;
    v28->_sendingDeviceName = v31;

    v33 = [v23 copy];
    sendingDeviceInfo = v28->_sendingDeviceInfo;
    v28->_sendingDeviceInfo = v33;

    v28->_action = a9;
    v35 = [v24 copy];
    clientIdentifier = v28->_clientIdentifier;
    v28->_clientIdentifier = v35;

    v37 = [v25 copy];
    categoryIdentifier = v28->_categoryIdentifier;
    v28->_categoryIdentifier = v37;

    v39 = [v50 copy];
    creationDate = v28->_creationDate;
    v28->_creationDate = v39;

    v41 = [v20 copy];
    receivedDate = v28->_receivedDate;
    v28->_receivedDate = v41;

    v43 = [v26 copy];
    expirationDate = v28->_expirationDate;
    v28->_expirationDate = v43;

    v45 = [v21 copy];
    modificationDate = v28->_modificationDate;
    v28->_modificationDate = v45;

    v47 = [v27 copy];
    criteria = v28->_criteria;
    v28->_criteria = v47;

    v28->_isInvalid = a14;
  }

  return v28;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v26 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (HDNotificationInstruction)initWithMessageIdentifier:(id)a3 receivedDate:(id)a4 sendingDeviceName:(id)a5 message:(id)a6
{
  v7 = 0;
  if (a3 && a6)
  {
    v11 = a6;
    v25 = a5;
    v12 = a4;
    v13 = a3;
    v24 = [v11 creationDate];
    v23 = [v11 creationDate];
    v14 = [v11 sendingDeviceInfo];
    v15 = [v11 action];
    v22 = [v11 clientIdentifier];
    v16 = [v11 categoryIdentifier];
    v17 = [v11 expirationDate];
    v18 = [v11 criteria];

    LOBYTE(v21) = 0;
    v19 = [(HDNotificationInstruction *)self initWithMessageIdentifier:v13 creationDate:v24 receivedDate:v12 modificationDate:v23 sendingDeviceName:v25 sendingDeviceInfo:v14 action:v15 clientIdentifier:v22 categoryIdentifier:v16 expirationDate:v17 criteria:v18 isInvalid:v21];

    self = v19;
    v7 = self;
  }

  return v7;
}

- (int64_t)isValidWithDatabaseTransaction:(id)a3 date:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (-[HDNotificationInstruction isInvalid](self, "isInvalid") || (-[HDNotificationInstruction expirationDate](self, "expirationDate"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 hk_isAfterDate:v10], v10, (v11 & 1) != 0))
  {
    v12 = 2;
  }

  else
  {
    v14 = [(HDNotificationInstruction *)self criteria];

    if (v14)
    {
      v15 = [(HDNotificationInstruction *)self criteria];
      v12 = [v15 isValidWithDatabaseTransaction:v8 error:a5];
    }

    else
    {
      v12 = 1;
    }
  }

  return v12;
}

@end