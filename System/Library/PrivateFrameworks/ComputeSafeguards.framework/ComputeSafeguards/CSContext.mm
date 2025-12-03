@interface CSContext
- (BOOL)isEqual:(id)equal;
- (CSContext)initWithIdentifier:(id)identifier andState:(id)state;
@end

@implementation CSContext

- (CSContext)initWithIdentifier:(id)identifier andState:(id)state
{
  identifierCopy = identifier;
  stateCopy = state;
  v12.receiver = self;
  v12.super_class = CSContext;
  v9 = [(CSContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_state, state);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else if ([(CSContext *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    identifier = self->_identifier;
    identifier = [(CSContext *)v5 identifier];
    if ([(NSString *)identifier isEqual:identifier])
    {
      state = self->_state;
      state = [(CSContext *)v5 state];
      v10 = [(NSNumber *)state isEqual:state];
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