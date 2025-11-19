@interface CNEmailAddressSanitizationTask
- (CNEmailAddressSanitizationTask)initWithAddress:(id)a3;
- (id)description;
- (id)run:(id *)a3;
- (void)removeMailtoPrefix;
@end

@implementation CNEmailAddressSanitizationTask

- (CNEmailAddressSanitizationTask)initWithAddress:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNEmailAddressSanitizationTask;
  v5 = [(CNTask *)&v10 initWithName:@"CNEmailAddressSanitizationTask"];
  if (v5)
  {
    v6 = [v4 copy];
    address = v5->_address;
    v5->_address = v6;

    v8 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"address" object:self->_address];
  v5 = [v3 build];

  return v5;
}

- (id)run:(id *)a3
{
  [(CNEmailAddressSanitizationTask *)self removeMailtoPrefix];
  address = self->_address;

  return address;
}

- (void)removeMailtoPrefix
{
  if ([(NSString *)self->_address hasPrefix:@"mailto:"])
  {
    v7 = [MEMORY[0x1E696AF20] componentsWithString:self->_address];
    v3 = [v7 path];
    v4 = off_1EF440708(&__block_literal_global_120, v3);

    if ((v4 & 1) == 0)
    {
      v5 = [v7 path];
      address = self->_address;
      self->_address = v5;
    }
  }
}

@end