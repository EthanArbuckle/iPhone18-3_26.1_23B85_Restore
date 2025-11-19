@interface CSContext
- (BOOL)isEqual:(id)a3;
- (CSContext)initWithIdentifier:(id)a3 andState:(id)a4;
@end

@implementation CSContext

- (CSContext)initWithIdentifier:(id)a3 andState:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CSContext;
  v9 = [(CSContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_state, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else if ([(CSContext *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    identifier = self->_identifier;
    v7 = [(CSContext *)v5 identifier];
    if ([(NSString *)identifier isEqual:v7])
    {
      state = self->_state;
      v9 = [(CSContext *)v5 state];
      v10 = [(NSNumber *)state isEqual:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end