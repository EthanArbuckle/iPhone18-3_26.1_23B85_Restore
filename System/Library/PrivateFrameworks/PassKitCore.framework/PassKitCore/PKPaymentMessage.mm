@interface PKPaymentMessage
+ (BOOL)canArchiveWithTransaction:(id)a3;
+ (id)paymentMessageWithDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPaymentMessage:(id)a3;
- (BOOL)isValid;
- (BOOL)shouldMessageArchiveWithTransaction:(id)a3;
- (PKPaymentMessage)init;
- (PKPaymentMessage)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentMessage

+ (id)paymentMessageWithDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKPaymentMessage);
  v5 = v3;
  v6 = [v5 mutableCopy];
  v7 = [v5 valueForKey:@"identifier"];

  [v6 removeObjectForKey:@"identifier"];
  [v6 setObject:v7 forKey:@"serviceIdentifier"];

  v8 = [v6 PKStringForKey:@"serviceIdentifier"];
  v9 = [v8 uppercaseString];
  [(PKPaymentMessage *)v4 setServiceIdentifier:v9];

  v10 = [v6 PKStringForKey:@"content"];
  [(PKPaymentMessage *)v4 setContent:v10];

  v11 = [v6 PKStringForKey:@"actionTitle"];
  [(PKPaymentMessage *)v4 setActionTitle:v11];

  v12 = [v6 PKURLForKey:@"actionURL"];
  [(PKPaymentMessage *)v4 setActionURL:v12];

  v13 = [v6 PKDateForKey:@"messageDate"];
  [(PKPaymentMessage *)v4 setMessageDate:v13];

  -[PKPaymentMessage setAllowDeepLinkToApp:](v4, "setAllowDeepLinkToApp:", [v6 PKBoolForKey:@"allowDeepLink"]);
  v14 = [v6 PKDateForKey:@"expirationDate"];
  [(PKPaymentMessage *)v4 setExpirationDate:v14];

  return v4;
}

- (PKPaymentMessage)init
{
  v7.receiver = self;
  v7.super_class = PKPaymentMessage;
  v2 = [(PKPaymentMessage *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v3 UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = v4;
  }

  return v2;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_serviceIdentifier];
  [v3 safelyAddObject:self->_content];
  [v3 safelyAddObject:self->_actionTitle];
  [v3 safelyAddObject:self->_actionURL];
  [v3 safelyAddObject:self->_expirationDate];
  [v3 safelyAddObject:self->_messageDate];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_messageType - v4 + 32 * v4;
  v6 = self->_allowDeepLinkToApp - v5 + 32 * v5;
  v7 = self->_hasAssociatedPaymentApplication - v6 + 32 * v6;
  v8 = self->_archived - v7 + 32 * v7;

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPaymentMessage *)self isEqualToPaymentMessage:v5];
  }

  return v6;
}

- (BOOL)isEqualToPaymentMessage:(id)a3
{
  v4 = a3;
  identifier = self->_identifier;
  v6 = v4[2];
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
      goto LABEL_43;
    }
  }

  else if (([(NSString *)identifier isEqual:?]& 1) == 0)
  {
    goto LABEL_43;
  }

  serviceIdentifier = self->_serviceIdentifier;
  v9 = v4[3];
  if (serviceIdentifier && v9)
  {
    if (([(NSString *)serviceIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (serviceIdentifier != v9)
  {
    goto LABEL_43;
  }

  content = self->_content;
  v11 = v4[4];
  if (content && v11)
  {
    if (([(NSString *)content isEqual:?]& 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (content != v11)
  {
    goto LABEL_43;
  }

  actionTitle = self->_actionTitle;
  v13 = v4[5];
  if (actionTitle && v13)
  {
    if (([(NSString *)actionTitle isEqual:?]& 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (actionTitle != v13)
  {
    goto LABEL_43;
  }

  actionURL = self->_actionURL;
  v15 = v4[6];
  if (actionURL && v15)
  {
    if (([(NSURL *)actionURL isEqual:?]& 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (actionURL != v15)
  {
    goto LABEL_43;
  }

  messageDate = self->_messageDate;
  v17 = v4[7];
  if (messageDate && v17)
  {
    if (([(NSDate *)messageDate isEqual:?]& 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (messageDate != v17)
  {
    goto LABEL_43;
  }

  expirationDate = self->_expirationDate;
  v19 = v4[8];
  if (!expirationDate || !v19)
  {
    if (expirationDate == v19)
    {
      goto LABEL_39;
    }

LABEL_43:
    v20 = 0;
    goto LABEL_44;
  }

  if (([(NSDate *)expirationDate isEqual:?]& 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_39:
  if (self->_messageType != v4[9] || self->_allowDeepLinkToApp != *(v4 + 8) || self->_hasAssociatedPaymentApplication != *(v4 + 9))
  {
    goto LABEL_43;
  }

  v20 = self->_archived == *(v4 + 10);
LABEL_44:

  return v20;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PKPaymentMessage *)self identifier];
  v5 = [(PKPaymentMessage *)self serviceIdentifier];
  v6 = [(PKPaymentMessage *)self content];
  v7 = [v3 stringWithFormat:@"Identifier: %@, Service Identifier: %@, Content: %@", v4, v5, v6];

  return v7;
}

- (PKPaymentMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PKPaymentMessage;
  v5 = [(PKPaymentMessage *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceIdentifier"];
    serviceIdentifier = v5->_serviceIdentifier;
    v5->_serviceIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"content"];
    content = v5->_content;
    v5->_content = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionTitle"];
    actionTitle = v5->_actionTitle;
    v5->_actionTitle = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionURL"];
    actionURL = v5->_actionURL;
    v5->_actionURL = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"messageDate"];
    messageDate = v5->_messageDate;
    v5->_messageDate = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v18;

    v5->_messageType = [v4 decodeBoolForKey:@"messageType"];
    v5->_allowDeepLinkToApp = [v4 decodeBoolForKey:@"allowDeepLink"];
    v5->_hasAssociatedPaymentApplication = [v4 decodeBoolForKey:@"hasAssociatedPaymentApplication"];
    v5->_archived = [v4 decodeBoolForKey:@"archived"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_serviceIdentifier forKey:@"serviceIdentifier"];
  [v5 encodeObject:self->_content forKey:@"content"];
  [v5 encodeObject:self->_actionTitle forKey:@"actionTitle"];
  [v5 encodeObject:self->_actionURL forKey:@"actionURL"];
  [v5 encodeObject:self->_messageDate forKey:@"messageDate"];
  [v5 encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [v5 encodeBool:self->_messageType != 0 forKey:@"messageType"];
  [v5 encodeBool:self->_allowDeepLinkToApp forKey:@"allowDeepLink"];
  [v5 encodeBool:self->_hasAssociatedPaymentApplication forKey:@"hasAssociatedPaymentApplication"];
  [v5 encodeBool:self->_archived forKey:@"archived"];
}

- (BOOL)isValid
{
  if (self->_archived || ![(NSString *)self->_content length])
  {
    return 0;
  }

  expirationDate = self->_expirationDate;
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [(NSDate *)expirationDate compare:v4]!= NSOrderedAscending;

  return v5;
}

+ (BOOL)canArchiveWithTransaction:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3 || ([v3 updateReasonIsInitialDownload] & 1) != 0)
  {
    goto LABEL_3;
  }

  v7 = [v4 featureIdentifier];
  v8 = [v4 transactionType];
  if (v7 != 4)
  {
    v5 = 1;
    goto LABEL_4;
  }

  if (v8 == 6)
  {
    v5 = ([v4 topUpType] - 5) < 2;
  }

  else
  {
LABEL_3:
    v5 = 0;
  }

LABEL_4:

  return v5;
}

- (BOOL)shouldMessageArchiveWithTransaction:(id)a3
{
  v4 = a3;
  if (self->_messageType == 1)
  {
    v5 = ![(PKPaymentMessage *)self isValid];
    if ([PKPaymentMessage canArchiveWithTransaction:v4])
    {
      v6 = [v4 transactionDate];
      v7 = [v6 compare:self->_messageDate] == 1;
    }

    else
    {
      v7 = 0;
    }

    v8 = v5 | v7;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

@end