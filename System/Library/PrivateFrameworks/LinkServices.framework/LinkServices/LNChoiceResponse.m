@interface LNChoiceResponse
- (LNChoiceResponse)initWithCoder:(id)a3;
- (LNChoiceResponse)initWithIdentifier:(id)a3 selectedOption:(id)a4 context:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNChoiceResponse

- (LNChoiceResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selectedOption"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    self = [(LNChoiceResponse *)self initWithIdentifier:v5 selectedOption:v7 context:v9];

    v10 = self;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = LNChoiceResponse;
  v4 = a3;
  [(LNResponse *)&v6 encodeWithCoder:v4];
  v5 = [(LNChoiceResponse *)self selectedOption:v6.receiver];
  [v4 encodeObject:v5 forKey:@"selectedOption"];
}

- (LNChoiceResponse)initWithIdentifier:(id)a3 selectedOption:(id)a4 context:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"LNChoiceResponse.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"LNChoiceResponse.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"selectedOption"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = LNChoiceResponse;
  v12 = [(LNResponse *)&v18 initWithIdentifier:v9 context:v11];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_selectedOption, a4);
    v14 = v13;
  }

  return v13;
}

@end