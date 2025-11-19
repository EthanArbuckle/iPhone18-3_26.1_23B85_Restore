@interface LNActionConfirmationResponse
- (LNActionConfirmationResponse)initWithCoder:(id)a3;
- (LNActionConfirmationResponse)initWithIdentifier:(id)a3 context:(id)a4 value:(id)a5 updates:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNActionConfirmationResponse

- (LNActionConfirmationResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"updates"];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    self = [(LNActionConfirmationResponse *)self initWithIdentifier:v5 context:v12 value:v6 updates:v11];

    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = LNActionConfirmationResponse;
  v4 = a3;
  [(LNResponse *)&v7 encodeWithCoder:v4];
  v5 = [(LNActionConfirmationResponse *)self value:v7.receiver];
  [v4 encodeObject:v5 forKey:@"value"];

  v6 = [(LNActionConfirmationResponse *)self updates];
  [v4 encodeObject:v6 forKey:@"updates"];
}

- (LNActionConfirmationResponse)initWithIdentifier:(id)a3 context:(id)a4 value:(id)a5 updates:(id)a6
{
  v11 = a5;
  v12 = a6;
  v17.receiver = self;
  v17.super_class = LNActionConfirmationResponse;
  v13 = [(LNResponse *)&v17 initWithIdentifier:a3 context:a4];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_value, a5);
    objc_storeStrong(&v14->_updates, a6);
    v15 = v14;
  }

  return v14;
}

@end