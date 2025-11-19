@interface PKImageDescriptorSymbol
+ (id)createForName:(id)a3 withTintColor:(int64_t)a4 hasBackground:(BOOL)a5;
- (PKImageDescriptorSymbol)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKImageDescriptorSymbol

+ (id)createForName:(id)a3 withTintColor:(int64_t)a4 hasBackground:(BOOL)a5
{
  if (!a3)
  {
    return 0;
  }

  v7 = a3;
  v8 = [PKImageDescriptor _createForType:a4 withTintColor:a5 hasBackground:?];
  v9 = [v7 copy];

  v10 = v8[4];
  v8[4] = v9;

  return v8;
}

- (PKImageDescriptorSymbol)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKImageDescriptorSymbol;
  v5 = [(PKImageDescriptor *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKImageDescriptorSymbol;
  v4 = a3;
  [(PKImageDescriptor *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_name forKey:{@"name", v5.receiver, v5.super_class}];
}

@end