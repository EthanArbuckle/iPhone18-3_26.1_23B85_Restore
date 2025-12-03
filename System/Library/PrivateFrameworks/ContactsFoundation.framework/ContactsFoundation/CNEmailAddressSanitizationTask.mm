@interface CNEmailAddressSanitizationTask
- (CNEmailAddressSanitizationTask)initWithAddress:(id)address;
- (id)description;
- (id)run:(id *)run;
- (void)removeMailtoPrefix;
@end

@implementation CNEmailAddressSanitizationTask

- (CNEmailAddressSanitizationTask)initWithAddress:(id)address
{
  addressCopy = address;
  v10.receiver = self;
  v10.super_class = CNEmailAddressSanitizationTask;
  v5 = [(CNTask *)&v10 initWithName:@"CNEmailAddressSanitizationTask"];
  if (v5)
  {
    v6 = [addressCopy copy];
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
  build = [v3 build];

  return build;
}

- (id)run:(id *)run
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
    path = [v7 path];
    v4 = off_1EF440708(&__block_literal_global_120, path);

    if ((v4 & 1) == 0)
    {
      path2 = [v7 path];
      address = self->_address;
      self->_address = path2;
    }
  }
}

@end