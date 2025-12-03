@interface IDSServerMessagingIncomingContext
- (IDSServerMessagingIncomingContext)initWithCoder:(id)coder;
- (IDSServerMessagingIncomingContext)initWithFromServerStorage:(BOOL)storage certifiedDeliveryContext:(id)context command:(id)command identifier:(id)identifier additionalTopLevelFields:(id)fields;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSServerMessagingIncomingContext

- (IDSServerMessagingIncomingContext)initWithFromServerStorage:(BOOL)storage certifiedDeliveryContext:(id)context command:(id)command identifier:(id)identifier additionalTopLevelFields:(id)fields
{
  contextCopy = context;
  commandCopy = command;
  identifierCopy = identifier;
  fieldsCopy = fields;
  v20.receiver = self;
  v20.super_class = IDSServerMessagingIncomingContext;
  v17 = [(IDSServerMessagingIncomingContext *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_fromServerStorage = storage;
    objc_storeStrong(&v17->_certifiedDeliveryContext, context);
    objc_storeStrong(&v18->_identifier, identifier);
    objc_storeStrong(&v18->_command, command);
    objc_storeStrong(&v18->_additionalTopLevelFields, fields);
  }

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[IDSServerMessagingIncomingContext fromServerStorage](self forKey:{"fromServerStorage"), @"fromStorage"}];
  certifiedDeliveryContext = [(IDSServerMessagingIncomingContext *)self certifiedDeliveryContext];
  [coderCopy encodeObject:certifiedDeliveryContext forKey:@"cdContext"];

  identifier = [(IDSServerMessagingIncomingContext *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  command = [(IDSServerMessagingIncomingContext *)self command];
  [coderCopy encodeObject:command forKey:@"command"];

  additionalTopLevelFields = [(IDSServerMessagingIncomingContext *)self additionalTopLevelFields];
  [coderCopy encodeObject:additionalTopLevelFields forKey:@"additionalTopLevel"];
}

- (IDSServerMessagingIncomingContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeBoolForKey:@"fromStorage"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cdContext"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"command"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v8 setWithObjects:{v9, v10, v11, v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"additionalTopLevel"];

  v15 = [(IDSServerMessagingIncomingContext *)self initWithFromServerStorage:v4 certifiedDeliveryContext:v5 command:v7 identifier:v6 additionalTopLevelFields:v14];
  return v15;
}

@end