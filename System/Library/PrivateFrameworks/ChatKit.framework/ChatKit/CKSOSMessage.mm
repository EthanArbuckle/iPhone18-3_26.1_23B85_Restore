@interface CKSOSMessage
- (CKSOSMessage)initWithMessage:(id)message recipients:(id)recipients;
- (CKSOSMessage)initWithSMSMessage:(id)message mmsMessage:(id)mmsMessage recipients:(id)recipients;
- (NSArray)handles;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)messageForReasons:(unint64_t)reasons;
- (void)setRecipients:(id)recipients;
@end

@implementation CKSOSMessage

- (CKSOSMessage)initWithMessage:(id)message recipients:(id)recipients
{
  messageCopy = message;
  recipientsCopy = recipients;
  v14.receiver = self;
  v14.super_class = CKSOSMessage;
  v9 = [(CKSOSMessage *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_smsMessage, message);
    v11 = [recipientsCopy copy];
    recipients = v10->_recipients;
    v10->_recipients = v11;
  }

  return v10;
}

- (CKSOSMessage)initWithSMSMessage:(id)message mmsMessage:(id)mmsMessage recipients:(id)recipients
{
  messageCopy = message;
  mmsMessageCopy = mmsMessage;
  recipientsCopy = recipients;
  v17.receiver = self;
  v17.super_class = CKSOSMessage;
  v12 = [(CKSOSMessage *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_smsMessage, message);
    objc_storeStrong(&v13->_mmsMessage, mmsMessage);
    v14 = [recipientsCopy copy];
    recipients = v13->_recipients;
    v13->_recipients = v14;
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  if (self->_useStandalone)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if (self->_location)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  recipients = self->_recipients;
  if ([(NSString *)self->_locationURL length])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  return [v3 stringWithFormat:@"CKSOSMessage: recipients %@ useStandalone %@ location present? %@ location URL present? %@  handles %@ ", recipients, v4, v5, v7, self->_handles];
}

- (id)messageForReasons:(unint64_t)reasons
{
  recipientReasonMessages = [(CKSOSMessage *)self recipientReasonMessages];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:reasons];
  v7 = [recipientReasonMessages objectForKeyedSubscript:v6];

  if (![v7 length])
  {
    mmsMessage = self->_mmsMessage;
    if (!mmsMessage)
    {
      mmsMessage = self->_smsMessage;
    }

    v9 = mmsMessage;

    v7 = v9;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_message copyWithZone:zone];
  [v5 setMessage:v6];

  v7 = [(NSString *)self->_smsMessage copyWithZone:zone];
  [v5 setSmsMessage:v7];

  v8 = [(NSString *)self->_mmsMessage copyWithZone:zone];
  [v5 setMmsMessage:v8];

  v9 = [(NSArray *)self->_recipients copyWithZone:zone];
  [v5 setRecipients:v9];

  v10 = [self->_failureBlock copy];
  [v5 setFailureBlock:v10];

  v11 = [(CLLocation *)self->_location copyWithZone:zone];
  [v5 setLocation:v11];

  v12 = [(NSString *)self->_locationURL copyWithZone:zone];
  [v5 setLocationURL:v12];

  [v5 setUseStandalone:self->_useStandalone];
  [v5 setIsCritical:self->_isCritical];
  return v5;
}

- (void)setRecipients:(id)recipients
{
  recipientsCopy = recipients;
  if (self->_recipients != recipientsCopy)
  {
    v7 = recipientsCopy;
    objc_storeStrong(&self->_recipients, recipients);
    handles = self->_handles;
    self->_handles = 0;

    recipientsCopy = v7;
  }
}

- (NSArray)handles
{
  handles = self->_handles;
  if (!handles)
  {
    recipients = self->_recipients;
    smsService = [MEMORY[0x1E69A5C90] smsService];
    v6 = CKMakeHandlesFromRecipientsWithFallbackService(recipients, smsService);
    v7 = self->_handles;
    self->_handles = v6;

    handles = self->_handles;
  }

  return handles;
}

@end