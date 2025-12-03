@interface IDSServerMessagingOptions
- (IDSServerMessagingOptions)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSServerMessagingOptions

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  timeout = [(IDSServerMessagingOptions *)self timeout];
  [coderCopy encodeObject:timeout forKey:@"timeout"];

  command = [(IDSServerMessagingOptions *)self command];
  [coderCopy encodeObject:command forKey:@"command"];

  cancelOnClientCrash = [(IDSServerMessagingOptions *)self cancelOnClientCrash];
  [coderCopy encodeObject:cancelOnClientCrash forKey:@"cancelOnCrash"];

  additionalTopLevelFields = [(IDSServerMessagingOptions *)self additionalTopLevelFields];
  [coderCopy encodeObject:additionalTopLevelFields forKey:@"options"];
}

- (IDSServerMessagingOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = IDSServerMessagingOptions;
  v5 = [(IDSServerMessagingOptions *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeout"];
    timeout = v5->_timeout;
    v5->_timeout = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"command"];
    command = v5->_command;
    v5->_command = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cancelOnCrash"];
    cancelOnClientCrash = v5->_cancelOnClientCrash;
    v5->_cancelOnClientCrash = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v12 setWithObjects:{v13, v14, v15, v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"options"];
    additionalTopLevelFields = v5->_additionalTopLevelFields;
    v5->_additionalTopLevelFields = v18;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  timeout = [(IDSServerMessagingOptions *)self timeout];
  command = [(IDSServerMessagingOptions *)self command];
  cancelOnClientCrash = [(IDSServerMessagingOptions *)self cancelOnClientCrash];
  additionalTopLevelFields = [(IDSServerMessagingOptions *)self additionalTopLevelFields];
  v9 = [v3 stringWithFormat:@"<%@: %p timeout: %@, command: %@, cancelOnClientCrash: %@, additionalTopLevelFields: %@>", v4, self, timeout, command, cancelOnClientCrash, additionalTopLevelFields];

  return v9;
}

@end