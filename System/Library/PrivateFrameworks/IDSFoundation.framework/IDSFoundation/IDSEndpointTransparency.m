@interface IDSEndpointTransparency
- (IDSEndpointTransparency)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSEndpointTransparency

- (id)description
{
  v3 = [(IDSEndpointTransparency *)self ktValidation];
  if (v3 > 5)
  {
    v4 = @"unknown";
  }

  else
  {
    v4 = off_1E77E1930[v3];
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(IDSEndpointTransparency *)self ktError];
  v7 = [v6 description];
  v8 = v7;
  v9 = @"-";
  if (v7)
  {
    v9 = v7;
  }

  v10 = [v5 stringWithFormat:@"<IDSEndpointTransparency: %@ error: %@>", v4, v9];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[IDSEndpointTransparency ktValidation](self forKey:{"ktValidation"), @"ktValidation"}];
  v5 = [(IDSEndpointTransparency *)self ktError];
  [v4 encodeObject:v5 forKey:@"ktError"];
}

- (IDSEndpointTransparency)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"ktValidation"];
  if (v5 < 6)
  {
    [(IDSEndpointTransparency *)self setKtValidation:v5];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ktError"];
    [(IDSEndpointTransparency *)self setKtError:v8];

    v7 = self;
  }

  else
  {
    v6 = [MEMORY[0x1E69A6138] warning];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1BD3C(v5, v6);
    }

    v7 = 0;
  }

  return v7;
}

@end