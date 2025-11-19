@interface _DNDSPendingMessageRecipients
- (_DNDSPendingMessageRecipients)initWithLastUpdateDate:(id)a3 deviceIdentifiers:(id)a4;
- (id)description;
@end

@implementation _DNDSPendingMessageRecipients

- (_DNDSPendingMessageRecipients)initWithLastUpdateDate:(id)a3 deviceIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _DNDSPendingMessageRecipients;
  v8 = [(_DNDSPendingMessageRecipients *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    lastUpdateDate = v8->_lastUpdateDate;
    v8->_lastUpdateDate = v9;

    v11 = [v7 copy];
    deviceIdentifiers = v8->_deviceIdentifiers;
    v8->_deviceIdentifiers = v11;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCA968] localizedStringFromDate:self->_lastUpdateDate dateStyle:1 timeStyle:1];
  v5 = [v3 stringWithFormat:@"sendDate: %@ deviceIdentifiers: %@", v4, self->_deviceIdentifiers];;

  return v5;
}

@end