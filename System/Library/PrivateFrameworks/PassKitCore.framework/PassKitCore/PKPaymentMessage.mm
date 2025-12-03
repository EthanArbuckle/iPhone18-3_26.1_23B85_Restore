@interface PKPaymentMessage
+ (BOOL)canArchiveWithTransaction:(id)transaction;
+ (id)paymentMessageWithDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPaymentMessage:(id)message;
- (BOOL)isValid;
- (BOOL)shouldMessageArchiveWithTransaction:(id)transaction;
- (PKPaymentMessage)init;
- (PKPaymentMessage)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentMessage

+ (id)paymentMessageWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(PKPaymentMessage);
  v5 = dictionaryCopy;
  v6 = [v5 mutableCopy];
  v7 = [v5 valueForKey:@"identifier"];

  [v6 removeObjectForKey:@"identifier"];
  [v6 setObject:v7 forKey:@"serviceIdentifier"];

  v8 = [v6 PKStringForKey:@"serviceIdentifier"];
  uppercaseString = [v8 uppercaseString];
  [(PKPaymentMessage *)v4 setServiceIdentifier:uppercaseString];

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
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = uUIDString;
  }

  return v2;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_identifier];
  [array safelyAddObject:self->_serviceIdentifier];
  [array safelyAddObject:self->_content];
  [array safelyAddObject:self->_actionTitle];
  [array safelyAddObject:self->_actionURL];
  [array safelyAddObject:self->_expirationDate];
  [array safelyAddObject:self->_messageDate];
  v4 = PKCombinedHash(17, array);
  v5 = self->_messageType - v4 + 32 * v4;
  v6 = self->_allowDeepLinkToApp - v5 + 32 * v5;
  v7 = self->_hasAssociatedPaymentApplication - v6 + 32 * v6;
  v8 = self->_archived - v7 + 32 * v7;

  return v8;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPaymentMessage *)self isEqualToPaymentMessage:v5];
  }

  return v6;
}

- (BOOL)isEqualToPaymentMessage:(id)message
{
  messageCopy = message;
  identifier = self->_identifier;
  v6 = messageCopy[2];
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
  v9 = messageCopy[3];
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
  v11 = messageCopy[4];
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
  v13 = messageCopy[5];
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
  v15 = messageCopy[6];
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
  v17 = messageCopy[7];
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
  v19 = messageCopy[8];
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
  if (self->_messageType != messageCopy[9] || self->_allowDeepLinkToApp != *(messageCopy + 8) || self->_hasAssociatedPaymentApplication != *(messageCopy + 9))
  {
    goto LABEL_43;
  }

  v20 = self->_archived == *(messageCopy + 10);
LABEL_44:

  return v20;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(PKPaymentMessage *)self identifier];
  serviceIdentifier = [(PKPaymentMessage *)self serviceIdentifier];
  content = [(PKPaymentMessage *)self content];
  v7 = [v3 stringWithFormat:@"Identifier: %@, Service Identifier: %@, Content: %@", identifier, serviceIdentifier, content];

  return v7;
}

- (PKPaymentMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = PKPaymentMessage;
  v5 = [(PKPaymentMessage *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceIdentifier"];
    serviceIdentifier = v5->_serviceIdentifier;
    v5->_serviceIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"content"];
    content = v5->_content;
    v5->_content = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionTitle"];
    actionTitle = v5->_actionTitle;
    v5->_actionTitle = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionURL"];
    actionURL = v5->_actionURL;
    v5->_actionURL = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"messageDate"];
    messageDate = v5->_messageDate;
    v5->_messageDate = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v18;

    v5->_messageType = [coderCopy decodeBoolForKey:@"messageType"];
    v5->_allowDeepLinkToApp = [coderCopy decodeBoolForKey:@"allowDeepLink"];
    v5->_hasAssociatedPaymentApplication = [coderCopy decodeBoolForKey:@"hasAssociatedPaymentApplication"];
    v5->_archived = [coderCopy decodeBoolForKey:@"archived"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_serviceIdentifier forKey:@"serviceIdentifier"];
  [coderCopy encodeObject:self->_content forKey:@"content"];
  [coderCopy encodeObject:self->_actionTitle forKey:@"actionTitle"];
  [coderCopy encodeObject:self->_actionURL forKey:@"actionURL"];
  [coderCopy encodeObject:self->_messageDate forKey:@"messageDate"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [coderCopy encodeBool:self->_messageType != 0 forKey:@"messageType"];
  [coderCopy encodeBool:self->_allowDeepLinkToApp forKey:@"allowDeepLink"];
  [coderCopy encodeBool:self->_hasAssociatedPaymentApplication forKey:@"hasAssociatedPaymentApplication"];
  [coderCopy encodeBool:self->_archived forKey:@"archived"];
}

- (BOOL)isValid
{
  if (self->_archived || ![(NSString *)self->_content length])
  {
    return 0;
  }

  expirationDate = self->_expirationDate;
  date = [MEMORY[0x1E695DF00] date];
  v5 = [(NSDate *)expirationDate compare:date]!= NSOrderedAscending;

  return v5;
}

+ (BOOL)canArchiveWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  v4 = transactionCopy;
  if (!transactionCopy || ([transactionCopy updateReasonIsInitialDownload] & 1) != 0)
  {
    goto LABEL_3;
  }

  featureIdentifier = [v4 featureIdentifier];
  transactionType = [v4 transactionType];
  if (featureIdentifier != 4)
  {
    v5 = 1;
    goto LABEL_4;
  }

  if (transactionType == 6)
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

- (BOOL)shouldMessageArchiveWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  if (self->_messageType == 1)
  {
    v5 = ![(PKPaymentMessage *)self isValid];
    if ([PKPaymentMessage canArchiveWithTransaction:transactionCopy])
    {
      transactionDate = [transactionCopy transactionDate];
      v7 = [transactionDate compare:self->_messageDate] == 1;
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