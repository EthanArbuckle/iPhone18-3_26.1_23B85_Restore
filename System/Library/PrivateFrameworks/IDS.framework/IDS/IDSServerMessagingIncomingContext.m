@interface IDSServerMessagingIncomingContext
- (IDSServerMessagingIncomingContext)initWithCoder:(id)a3;
- (IDSServerMessagingIncomingContext)initWithFromServerStorage:(BOOL)a3 certifiedDeliveryContext:(id)a4 command:(id)a5 identifier:(id)a6 additionalTopLevelFields:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSServerMessagingIncomingContext

- (IDSServerMessagingIncomingContext)initWithFromServerStorage:(BOOL)a3 certifiedDeliveryContext:(id)a4 command:(id)a5 identifier:(id)a6 additionalTopLevelFields:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = IDSServerMessagingIncomingContext;
  v17 = [(IDSServerMessagingIncomingContext *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_fromServerStorage = a3;
    objc_storeStrong(&v17->_certifiedDeliveryContext, a4);
    objc_storeStrong(&v18->_identifier, a6);
    objc_storeStrong(&v18->_command, a5);
    objc_storeStrong(&v18->_additionalTopLevelFields, a7);
  }

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[IDSServerMessagingIncomingContext fromServerStorage](self forKey:{"fromServerStorage"), @"fromStorage"}];
  v5 = [(IDSServerMessagingIncomingContext *)self certifiedDeliveryContext];
  [v4 encodeObject:v5 forKey:@"cdContext"];

  v6 = [(IDSServerMessagingIncomingContext *)self identifier];
  [v4 encodeObject:v6 forKey:@"identifier"];

  v7 = [(IDSServerMessagingIncomingContext *)self command];
  [v4 encodeObject:v7 forKey:@"command"];

  v8 = [(IDSServerMessagingIncomingContext *)self additionalTopLevelFields];
  [v4 encodeObject:v8 forKey:@"additionalTopLevel"];
}

- (IDSServerMessagingIncomingContext)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeBoolForKey:@"fromStorage"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"cdContext"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"command"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v8 setWithObjects:{v9, v10, v11, v12, objc_opt_class(), 0}];
  v14 = [v3 decodeObjectOfClasses:v13 forKey:@"additionalTopLevel"];

  v15 = [(IDSServerMessagingIncomingContext *)self initWithFromServerStorage:v4 certifiedDeliveryContext:v5 command:v7 identifier:v6 additionalTopLevelFields:v14];
  return v15;
}

@end