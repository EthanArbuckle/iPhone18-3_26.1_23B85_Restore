@interface BMProtoField
- (BMProtoField)initWithName:(id)name number:(int64_t)number type:(int64_t)type subMessageClass:(Class)class;
- (id)description;
@end

@implementation BMProtoField

- (BMProtoField)initWithName:(id)name number:(int64_t)number type:(int64_t)type subMessageClass:(Class)class
{
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = BMProtoField;
  v12 = [(BMProtoField *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, name);
    v13->_number = number;
    v13->_type = type;
    objc_storeStrong(&v13->_subMessageClass, class);
  }

  return v13;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  name = self->_name;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_number];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  v8 = [v3 initWithFormat:@"<%@ %p> name: %@, number: %@, type: %@, subMessageClass: %@", v4, self, name, v6, v7, self->_subMessageClass];

  return v8;
}

@end