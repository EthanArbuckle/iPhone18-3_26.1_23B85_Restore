@interface PKPassLiveRender
- (PKPassLiveRender)initWithCoder:(id)coder;
- (PKPassLiveRender)initWithEnabled:(BOOL)enabled;
- (id)_init;
- (id)description;
@end

@implementation PKPassLiveRender

- (PKPassLiveRender)initWithEnabled:(BOOL)enabled
{
  result = [(PKPassLiveRender *)self _init];
  if (result)
  {
    result->_enabled = enabled;
  }

  return result;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKPassLiveRender;
  return [(PKPassLiveRender *)&v3 init];
}

- (PKPassLiveRender)initWithCoder:(id)coder
{
  coderCopy = coder;
  _init = [(PKPassLiveRender *)self _init];
  if (_init)
  {
    _init->_enabled = [coderCopy decodeBoolForKey:@"enabled"];
  }

  return _init;
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