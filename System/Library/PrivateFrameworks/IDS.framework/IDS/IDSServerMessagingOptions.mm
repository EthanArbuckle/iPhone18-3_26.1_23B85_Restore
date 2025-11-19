@interface IDSServerMessagingOptions
- (IDSServerMessagingOptions)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSServerMessagingOptions

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IDSServerMessagingOptions *)self timeout];
  [v4 encodeObject:v5 forKey:@"timeout"];

  v6 = [(IDSServerMessagingOptions *)self command];
  [v4 encodeObject:v6 forKey:@"command"];

  v7 = [(IDSServerMessagingOptions *)self cancelOnClientCrash];
  [v4 encodeObject:v7 forKey:@"cancelOnCrash"];

  v8 = [(IDSServerMessagingOptions *)self additionalTopLevelFields];
  [v4 encodeObject:v8 forKey:@"options"];
}

- (IDSServerMessagingOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = IDSServerMessagingOptions;
  v5 = [(IDSServerMessagingOptions *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeout"];
    timeout = v5->_timeout;
    v5->_timeout = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"command"];
    command = v5->_command;
    v5->_command = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cancelOnCrash"];
    cancelOnClientCrash = v5->_cancelOnClientCrash;
    v5->_cancelOnClientCrash = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v12 setWithObjects:{v13, v14, v15, v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"options"];
    additionalTopLevelFields = v5->_additionalTopLevelFields;
    v5->_additionalTopLevelFields = v18;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IDSServerMessagingOptions *)self timeout];
  v6 = [(IDSServerMessagingOptions *)self command];
  v7 = [(IDSServerMessagingOptions *)self cancelOnClientCrash];
  v8 = [(IDSServerMessagingOptions *)self additionalTopLevelFields];
  v9 = [v3 stringWithFormat:@"<%@: %p timeout: %@, command: %@, cancelOnClientCrash: %@, additionalTopLevelFields: %@>", v4, self, v5, v6, v7, v8];

  return v9;
}

@end