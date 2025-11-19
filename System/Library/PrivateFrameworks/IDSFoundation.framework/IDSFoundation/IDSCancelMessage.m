@interface IDSCancelMessage
- (IDSCancelMessage)initWithQueueOneIdentifier:(id)a3 fromID:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)messageBody;
@end

@implementation IDSCancelMessage

- (IDSCancelMessage)initWithQueueOneIdentifier:(id)a3 fromID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IDSCancelMessage;
  v9 = [(IDSMessage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fromID, a4);
    objc_storeStrong(&v10->_queueOneIdentifier, a3);
  }

  return v10;
}

- (id)messageBody
{
  v8.receiver = self;
  v8.super_class = IDSCancelMessage;
  v3 = [(IDSMessage *)&v8 messageBody];
  v4 = [v3 mutableCopy];

  v5 = [(IDSCancelMessage *)self fromID];
  if (v5)
  {
    CFDictionarySetValue(v4, @"sP", v5);
  }

  v6 = [(IDSCancelMessage *)self queueOneIdentifier];
  if (v6)
  {
    CFDictionarySetValue(v4, @"qI", v6);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E20454();
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = IDSCancelMessage;
  v4 = [(IDSMessage *)&v8 copyWithZone:a3];
  v5 = [(IDSCancelMessage *)self fromID];
  [v4 setFromID:v5];

  v6 = [(IDSCancelMessage *)self queueOneIdentifier];
  [v4 setQueueOneIdentifier:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(IDSCancelMessage *)self fromID];
  v5 = [(IDSCancelMessage *)self queueOneIdentifier];
  v6 = [v3 stringWithFormat:@"<IDSCancelMessage %p: %@ %@>", self, v4, v5];

  return v6;
}

@end