@interface HDPendingNotificationInstruction
- (BOOL)isEqual:(id)a3;
- (HDPendingNotificationInstruction)initWithMessageIdentifier:(id)a3 categoryIdentifier:(id)a4 sendingDeviceName:(id)a5;
- (unint64_t)hash;
@end

@implementation HDPendingNotificationInstruction

- (HDPendingNotificationInstruction)initWithMessageIdentifier:(id)a3 categoryIdentifier:(id)a4 sendingDeviceName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = HDPendingNotificationInstruction;
  v11 = [(HDPendingNotificationInstruction *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    messageIdentifier = v11->_messageIdentifier;
    v11->_messageIdentifier = v12;

    v14 = [v9 copy];
    categoryIdentifier = v11->_categoryIdentifier;
    v11->_categoryIdentifier = v14;

    v16 = [v10 copy];
    sendingDeviceName = v11->_sendingDeviceName;
    v11->_sendingDeviceName = v16;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      messageIdentifier = self->_messageIdentifier;
      v7 = v5->_messageIdentifier;
      if (messageIdentifier != v7 && (!v7 || ![(NSString *)messageIdentifier isEqualToString:?]))
      {
        goto LABEL_14;
      }

      categoryIdentifier = self->_categoryIdentifier;
      v9 = v5->_categoryIdentifier;
      if (categoryIdentifier != v9 && (!v9 || ![(NSString *)categoryIdentifier isEqualToString:?]))
      {
        goto LABEL_14;
      }

      sendingDeviceName = self->_sendingDeviceName;
      v11 = v5->_sendingDeviceName;
      if (sendingDeviceName == v11)
      {
        v12 = 1;
        goto LABEL_15;
      }

      if (v11)
      {
        v12 = [(NSString *)sendingDeviceName isEqualToString:?];
      }

      else
      {
LABEL_14:
        v12 = 0;
      }

LABEL_15:

      goto LABEL_16;
    }

    v12 = 0;
  }

LABEL_16:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_messageIdentifier hash];
  v4 = [(NSString *)self->_categoryIdentifier hash]^ v3;
  return v4 ^ [(NSString *)self->_sendingDeviceName hash];
}

@end