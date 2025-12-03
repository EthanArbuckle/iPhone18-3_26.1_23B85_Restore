@interface EMDeliveryAccount
- (EMDeliveryAccount)initWithCoder:(id)coder;
- (EMDeliveryAccount)initWithObjectID:(id)d name:(id)name hostname:(id)hostname builder:(id)builder;
- (void)_commonInitName:(id)name hostname:(id)hostname builder:(id)builder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMDeliveryAccount

- (EMDeliveryAccount)initWithObjectID:(id)d name:(id)name hostname:(id)hostname builder:(id)builder
{
  dCopy = d;
  nameCopy = name;
  hostnameCopy = hostname;
  builderCopy = builder;
  if (!builderCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMDeliveryAccount.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"builderBlock"}];
  }

  v19.receiver = self;
  v19.super_class = EMDeliveryAccount;
  v15 = [(EMObject *)&v19 initWithObjectID:dCopy];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_name, name);
    objc_storeStrong(&v16->_hostname, hostname);
    builderCopy[2](builderCopy, v16);
  }

  return v16;
}

- (void)_commonInitName:(id)name hostname:(id)hostname builder:(id)builder
{
  nameCopy = name;
  hostnameCopy = hostname;
  objc_storeStrong(&self->_name, name);
  builderCopy = builder;
  hostname = self->_hostname;
  self->_hostname = hostnameCopy;

  builderCopy[2](builderCopy, self);
}

- (EMDeliveryAccount)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = EMDeliveryAccount;
  v5 = [(EMObject *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_name"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_hostname"];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __35__EMDeliveryAccount_initWithCoder___block_invoke;
    v9[3] = &unk_1E826CC30;
    v10 = coderCopy;
    [(EMDeliveryAccount *)v5 _commonInitName:v6 hostname:v7 builder:v9];
  }

  return v5;
}

void __35__EMDeliveryAccount_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_username"];
  [v7 setUsername:v3];

  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v6 = [v4 decodeObjectOfClasses:v5 forKey:@"EFPropertyKey_maximumMessageBytes"];
  [v7 setMaximumMessageBytes:{objc_msgSend(v6, "unsignedLongLongValue")}];

  [v7 setPrimaryiCloudAccount:{objc_msgSend(*(a1 + 32), "decodeBoolForKey:", @"EFPropertyKey_primaryiCloudAccount"}];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = EMDeliveryAccount;
  [(EMObject *)&v9 encodeWithCoder:coderCopy];
  name = [(EMDeliveryAccount *)self name];
  [coderCopy encodeObject:name forKey:@"EFPropertyKey_name"];

  hostname = [(EMDeliveryAccount *)self hostname];
  [coderCopy encodeObject:hostname forKey:@"EFPropertyKey_hostname"];

  username = [(EMDeliveryAccount *)self username];
  [coderCopy encodeObject:username forKey:@"EFPropertyKey_username"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[EMDeliveryAccount maximumMessageBytes](self, "maximumMessageBytes")}];
  [coderCopy encodeObject:v8 forKey:@"EFPropertyKey_maximumMessageBytes"];

  [coderCopy encodeBool:-[EMDeliveryAccount isPrimaryiCloudAccount](self forKey:{"isPrimaryiCloudAccount"), @"EFPropertyKey_primaryiCloudAccount"}];
}

@end