@interface IDSEndpointTransparency
- (IDSEndpointTransparency)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSEndpointTransparency

- (id)description
{
  ktValidation = [(IDSEndpointTransparency *)self ktValidation];
  if (ktValidation > 5)
  {
    v4 = @"unknown";
  }

  else
  {
    v4 = off_1E77E1930[ktValidation];
  }

  v5 = MEMORY[0x1E696AEC0];
  ktError = [(IDSEndpointTransparency *)self ktError];
  v7 = [ktError description];
  v8 = v7;
  v9 = @"-";
  if (v7)
  {
    v9 = v7;
  }

  v10 = [v5 stringWithFormat:@"<IDSEndpointTransparency: %@ error: %@>", v4, v9];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[IDSEndpointTransparency ktValidation](self forKey:{"ktValidation"), @"ktValidation"}];
  ktError = [(IDSEndpointTransparency *)self ktError];
  [coderCopy encodeObject:ktError forKey:@"ktError"];
}

- (IDSEndpointTransparency)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"ktValidation"];
  if (v5 < 6)
  {
    [(IDSEndpointTransparency *)self setKtValidation:v5];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ktError"];
    [(IDSEndpointTransparency *)self setKtError:v8];

    selfCopy = self;
  }

  else
  {
    warning = [MEMORY[0x1E69A6138] warning];
    if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1BD3C(v5, warning);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end