@interface PKPassLiveRender
- (PKPassLiveRender)initWithCoder:(id)a3;
- (PKPassLiveRender)initWithEnabled:(BOOL)a3;
- (id)_init;
- (id)description;
@end

@implementation PKPassLiveRender

- (PKPassLiveRender)initWithEnabled:(BOOL)a3
{
  result = [(PKPassLiveRender *)self _init];
  if (result)
  {
    result->_enabled = a3;
  }

  return result;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKPassLiveRender;
  return [(PKPassLiveRender *)&v3 init];
}

- (PKPassLiveRender)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKPassLiveRender *)self _init];
  if (v5)
  {
    v5->_enabled = [v4 decodeBoolForKey:@"enabled"];
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  if (self->_enabled)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@"enabled: %@", v5];
  [v4 appendFormat:@">"];

  return v4;
}

@end