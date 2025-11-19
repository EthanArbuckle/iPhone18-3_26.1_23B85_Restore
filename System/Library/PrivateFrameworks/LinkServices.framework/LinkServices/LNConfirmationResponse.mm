@interface LNConfirmationResponse
- (LNConfirmationResponse)initWithCoder:(id)a3;
- (LNConfirmationResponse)initWithIdentifier:(id)a3 context:(id)a4 confirmed:(BOOL)a5 updates:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNConfirmationResponse

- (LNConfirmationResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeBoolForKey:@"confirmed"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"updates"];

  if (v5)
  {
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    self = [(LNConfirmationResponse *)self initWithIdentifier:v5 context:v12 confirmed:v6 updates:v11];

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
  v6.receiver = self;
  v6.super_class = LNConfirmationResponse;
  v4 = a3;
  [(LNResponse *)&v6 encodeWithCoder:v4];
  [v4 encodeBool:-[LNConfirmationResponse isConfirmed](self forKey:{"isConfirmed", v6.receiver, v6.super_class), @"confirmed"}];
  v5 = [(LNConfirmationResponse *)self updates];
  [v4 encodeObject:v5 forKey:@"updates"];
}

- (LNConfirmationResponse)initWithIdentifier:(id)a3 context:(id)a4 confirmed:(BOOL)a5 updates:(id)a6
{
  v11 = a6;
  v16.receiver = self;
  v16.super_class = LNConfirmationResponse;
  v12 = [(LNResponse *)&v16 initWithIdentifier:a3 context:a4];
  v13 = v12;
  if (v12)
  {
    v12->_confirmed = a5;
    objc_storeStrong(&v12->_updates, a6);
    v14 = v13;
  }

  return v13;
}

@end