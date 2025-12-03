@interface PKImageDescriptorSymbol
+ (id)createForName:(id)name withTintColor:(int64_t)color hasBackground:(BOOL)background;
- (PKImageDescriptorSymbol)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKImageDescriptorSymbol

+ (id)createForName:(id)name withTintColor:(int64_t)color hasBackground:(BOOL)background
{
  if (!name)
  {
    return 0;
  }

  nameCopy = name;
  v8 = [PKImageDescriptor _createForType:color withTintColor:background hasBackground:?];
  v9 = [nameCopy copy];

  v10 = v8[4];
  v8[4] = v9;

  return v8;
}

- (PKImageDescriptorSymbol)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKImageDescriptorSymbol;
  v5 = [(PKImageDescriptor *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKImageDescriptorSymbol;
  coderCopy = coder;
  [(PKImageDescriptor *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_name forKey:{@"name", v5.receiver, v5.super_class}];
}

@end