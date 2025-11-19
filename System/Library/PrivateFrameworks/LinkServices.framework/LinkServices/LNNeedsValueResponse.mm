@interface LNNeedsValueResponse
- (LNNeedsValueResponse)initWithCoder:(id)a3;
- (LNNeedsValueResponse)initWithIdentifier:(id)a3 context:(id)a4 value:(id)a5 updates:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNNeedsValueResponse

- (LNNeedsValueResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"updates"];

  if (v5 && v6 | v11)
  {
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    self = [(LNNeedsValueResponse *)self initWithIdentifier:v5 context:v12 value:v6 updates:v11];

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
  v7.super_class = LNNeedsValueResponse;
  v4 = a3;
  [(LNResponse *)&v7 encodeWithCoder:v4];
  v5 = [(LNNeedsValueResponse *)self value:v7.receiver];
  [v4 encodeObject:v5 forKey:@"value"];

  v6 = [(LNNeedsValueResponse *)self updates];
  [v4 encodeObject:v6 forKey:@"updates"];
}

- (LNNeedsValueResponse)initWithIdentifier:(id)a3 context:(id)a4 value:(id)a5 updates:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!(v13 | v14))
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"LNNeedsValueResponse.m" lineNumber:20 description:@"either value or updates must be non-null."];
  }

  v20.receiver = self;
  v20.super_class = LNNeedsValueResponse;
  v15 = [(LNResponse *)&v20 initWithIdentifier:v11 context:v12];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_value, a5);
    objc_storeStrong(&v16->_updates, a6);
    v17 = v16;
  }

  return v16;
}

@end