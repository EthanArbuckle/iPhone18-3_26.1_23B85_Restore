@interface CKSOSMessage
- (CKSOSMessage)initWithMessage:(id)a3 recipients:(id)a4;
- (CKSOSMessage)initWithSMSMessage:(id)a3 mmsMessage:(id)a4 recipients:(id)a5;
- (NSArray)handles;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)messageForReasons:(unint64_t)a3;
- (void)setRecipients:(id)a3;
@end

@implementation CKSOSMessage

- (CKSOSMessage)initWithMessage:(id)a3 recipients:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CKSOSMessage;
  v9 = [(CKSOSMessage *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_smsMessage, a3);
    v11 = [v8 copy];
    recipients = v10->_recipients;
    v10->_recipients = v11;
  }

  return v10;
}

- (CKSOSMessage)initWithSMSMessage:(id)a3 mmsMessage:(id)a4 recipients:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = CKSOSMessage;
  v12 = [(CKSOSMessage *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_smsMessage, a3);
    objc_storeStrong(&v13->_mmsMessage, a4);
    v14 = [v11 copy];
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

- (id)messageForReasons:(unint64_t)a3
{
  v5 = [(CKSOSMessage *)self recipientReasonMessages];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v7 = [v5 objectForKeyedSubscript:v6];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_message copyWithZone:a3];
  [v5 setMessage:v6];

  v7 = [(NSString *)self->_smsMessage copyWithZone:a3];
  [v5 setSmsMessage:v7];

  v8 = [(NSString *)self->_mmsMessage copyWithZone:a3];
  [v5 setMmsMessage:v8];

  v9 = [(NSArray *)self->_recipients copyWithZone:a3];
  [v5 setRecipients:v9];

  v10 = [self->_failureBlock copy];
  [v5 setFailureBlock:v10];

  v11 = [(CLLocation *)self->_location copyWithZone:a3];
  [v5 setLocation:v11];

  v12 = [(NSString *)self->_locationURL copyWithZone:a3];
  [v5 setLocationURL:v12];

  [v5 setUseStandalone:self->_useStandalone];
  [v5 setIsCritical:self->_isCritical];
  return v5;
}

- (void)setRecipients:(id)a3
{
  v5 = a3;
  if (self->_recipients != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_recipients, a3);
    handles = self->_handles;
    self->_handles = 0;

    v5 = v7;
  }
}

- (NSArray)handles
{
  handles = self->_handles;
  if (!handles)
  {
    recipients = self->_recipients;
    v5 = [MEMORY[0x1E69A5C90] smsService];
    v6 = CKMakeHandlesFromRecipientsWithFallbackService(recipients, v5);
    v7 = self->_handles;
    self->_handles = v6;

    handles = self->_handles;
  }

  return handles;
}

@end