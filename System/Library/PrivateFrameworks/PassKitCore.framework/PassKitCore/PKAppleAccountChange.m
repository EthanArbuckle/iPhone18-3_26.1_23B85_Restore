@interface PKAppleAccountChange
+ (int64_t)changeTypeToAccount:(id)a3 fromAccount:(id)a4;
- (BOOL)didEnablementOfRelevantDataclassesChange;
- (BOOL)shouldBeNotedByPassLibrary;
- (PKAppleAccountChange)initWithCoder:(id)a3;
- (PKAppleAccountChange)initWithEvent:(int64_t)a3 currentAccount:(id)a4 previousAccount:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAppleAccountChange

- (PKAppleAccountChange)initWithEvent:(int64_t)a3 currentAccount:(id)a4 previousAccount:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v8)
  {
    v9 = v8;
  }

  v11 = [v9 accountType];
  v12 = [v11 identifier];
  v13 = *MEMORY[0x1E69597F8];
  v14 = v12;
  v15 = v14;
  if (v14 != v13)
  {
    if (v14)
    {
      v16 = v13 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
    }

    else
    {
      v17 = [v14 isEqualToString:v13];

      if (v17)
      {
        goto LABEL_12;
      }
    }

    v23 = 0;
    goto LABEL_16;
  }

LABEL_12:
  v25.receiver = self;
  v25.super_class = PKAppleAccountChange;
  v18 = [(PKAppleAccountChange *)&v25 init];
  if (v18)
  {
    v18->_type = [objc_opt_class() changeTypeToAccount:v8 fromAccount:v10];
    v18->_event = a3;
    v19 = [[PKAppleAccountState alloc] initWithAccount:v8];
    currentState = v18->_currentState;
    v18->_currentState = v19;

    v21 = [[PKAppleAccountState alloc] initWithAccount:v10];
    previousState = v18->_previousState;
    v18->_previousState = v21;
  }

  self = v18;
  v23 = self;
LABEL_16:

  return v23;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  type = self->_type;
  v8 = a3;
  v6 = [v4 numberWithInteger:type];
  [v8 encodeObject:v6 forKey:@"type"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_event];
  [v8 encodeObject:v7 forKey:@"event"];

  [v8 encodeObject:self->_currentState forKey:@"currentState"];
  [v8 encodeObject:self->_previousState forKey:@"previousState"];
}

- (PKAppleAccountChange)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKAppleAccountChange;
  v5 = [(PKAppleAccountChange *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v6 integerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"event"];
    v5->_event = [v7 integerValue];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentState"];
    currentState = v5->_currentState;
    v5->_currentState = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"previousState"];
    previousState = v5->_previousState;
    v5->_previousState = v10;
  }

  return v5;
}

- (BOOL)didEnablementOfRelevantDataclassesChange
{
  if ([(PKAppleAccountChange *)self didEnablementOfWalletDataclassChange])
  {
    return 1;
  }

  return [(PKAppleAccountChange *)self didEnablementOfUbiquityDataclassChange];
}

- (BOOL)shouldBeNotedByPassLibrary
{
  type = self->_type;
  if (type == 3)
  {
    return [(PKAppleAccountChange *)self event]== 1;
  }

  if (type != 2)
  {
    if (type == 1)
    {
      return [(PKAppleAccountChange *)self event]== 2;
    }

    return 0;
  }

  if ([(PKAppleAccountChange *)self event]!= 2)
  {
    return 0;
  }

  if ([(PKAppleAccountChange *)self didEnablementOfRelevantDataclassesChange]|| [(PKAppleAccountChange *)self didAccountManagedStateChange])
  {
    return 1;
  }

  return [(PKAppleAccountChange *)self didAccountOrderChange];
}

- (id)description
{
  v2 = self->_type - 1;
  if (v2 > 2)
  {
    v3 = @"unsupported";
  }

  else
  {
    v3 = off_1E79E29C0[v2];
  }

  v4 = @"unknown";
  event = self->_event;
  if (event == 1)
  {
    v4 = @"will-change";
  }

  if (event == 2)
  {
    v6 = @"did-change";
  }

  else
  {
    v6 = v4;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"changeType: %@, event: %@, \n before - \n  %@, \n after - \n  %@, \n (will notify library: %i)", v3, v6, self->_previousState, self->_currentState, -[PKAppleAccountChange shouldBeNotedByPassLibrary](self, "shouldBeNotedByPassLibrary")];
}

+ (int64_t)changeTypeToAccount:(id)a3 fromAccount:(id)a4
{
  v5 = *MEMORY[0x1E698B760];
  v6 = a4;
  v7 = [a3 aa_isAccountClass:v5];
  v8 = [v6 aa_isAccountClass:v5];

  v9 = 3;
  if (((v7 ^ 1) & v8) == 0)
  {
    v9 = 0;
  }

  if ((v7 & v8) != 0)
  {
    v9 = 2;
  }

  if ((v7 ^ 1 | v8))
  {
    return v9;
  }

  else
  {
    return 1;
  }
}

@end