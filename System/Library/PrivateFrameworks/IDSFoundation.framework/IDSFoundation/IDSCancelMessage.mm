@interface IDSCancelMessage
- (IDSCancelMessage)initWithQueueOneIdentifier:(id)identifier fromID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)messageBody;
@end

@implementation IDSCancelMessage

- (IDSCancelMessage)initWithQueueOneIdentifier:(id)identifier fromID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = IDSCancelMessage;
  v9 = [(IDSMessage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fromID, d);
    objc_storeStrong(&v10->_queueOneIdentifier, identifier);
  }

  return v10;
}

- (id)messageBody
{
  v8.receiver = self;
  v8.super_class = IDSCancelMessage;
  messageBody = [(IDSMessage *)&v8 messageBody];
  v4 = [messageBody mutableCopy];

  fromID = [(IDSCancelMessage *)self fromID];
  if (fromID)
  {
    CFDictionarySetValue(v4, @"sP", fromID);
  }

  queueOneIdentifier = [(IDSCancelMessage *)self queueOneIdentifier];
  if (queueOneIdentifier)
  {
    CFDictionarySetValue(v4, @"qI", queueOneIdentifier);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E20454();
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = IDSCancelMessage;
  v4 = [(IDSMessage *)&v8 copyWithZone:zone];
  fromID = [(IDSCancelMessage *)self fromID];
  [v4 setFromID:fromID];

  queueOneIdentifier = [(IDSCancelMessage *)self queueOneIdentifier];
  [v4 setQueueOneIdentifier:queueOneIdentifier];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  fromID = [(IDSCancelMessage *)self fromID];
  queueOneIdentifier = [(IDSCancelMessage *)self queueOneIdentifier];
  v6 = [v3 stringWithFormat:@"<IDSCancelMessage %p: %@ %@>", self, fromID, queueOneIdentifier];

  return v6;
}

@end