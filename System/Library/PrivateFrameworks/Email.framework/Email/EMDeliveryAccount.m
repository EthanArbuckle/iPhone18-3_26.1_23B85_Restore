@interface EMDeliveryAccount
- (EMDeliveryAccount)initWithCoder:(id)a3;
- (EMDeliveryAccount)initWithObjectID:(id)a3 name:(id)a4 hostname:(id)a5 builder:(id)a6;
- (void)_commonInitName:(id)a3 hostname:(id)a4 builder:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMDeliveryAccount

- (EMDeliveryAccount)initWithObjectID:(id)a3 name:(id)a4 hostname:(id)a5 builder:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v14)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"EMDeliveryAccount.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"builderBlock"}];
  }

  v19.receiver = self;
  v19.super_class = EMDeliveryAccount;
  v15 = [(EMObject *)&v19 initWithObjectID:v11];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_name, a4);
    objc_storeStrong(&v16->_hostname, a5);
    v14[2](v14, v16);
  }

  return v16;
}

- (void)_commonInitName:(id)a3 hostname:(id)a4 builder:(id)a5
{
  v12 = a3;
  v9 = a4;
  objc_storeStrong(&self->_name, a3);
  v10 = a5;
  hostname = self->_hostname;
  self->_hostname = v9;

  v10[2](v10, self);
}

- (EMDeliveryAccount)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = EMDeliveryAccount;
  v5 = [(EMObject *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_name"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_hostname"];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __35__EMDeliveryAccount_initWithCoder___block_invoke;
    v9[3] = &unk_1E826CC30;
    v10 = v4;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = EMDeliveryAccount;
  [(EMObject *)&v9 encodeWithCoder:v4];
  v5 = [(EMDeliveryAccount *)self name];
  [v4 encodeObject:v5 forKey:@"EFPropertyKey_name"];

  v6 = [(EMDeliveryAccount *)self hostname];
  [v4 encodeObject:v6 forKey:@"EFPropertyKey_hostname"];

  v7 = [(EMDeliveryAccount *)self username];
  [v4 encodeObject:v7 forKey:@"EFPropertyKey_username"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[EMDeliveryAccount maximumMessageBytes](self, "maximumMessageBytes")}];
  [v4 encodeObject:v8 forKey:@"EFPropertyKey_maximumMessageBytes"];

  [v4 encodeBool:-[EMDeliveryAccount isPrimaryiCloudAccount](self forKey:{"isPrimaryiCloudAccount"), @"EFPropertyKey_primaryiCloudAccount"}];
}

@end