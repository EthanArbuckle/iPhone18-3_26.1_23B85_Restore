@interface BMProtoField
- (BMProtoField)initWithName:(id)a3 number:(int64_t)a4 type:(int64_t)a5 subMessageClass:(Class)a6;
- (id)description;
@end

@implementation BMProtoField

- (BMProtoField)initWithName:(id)a3 number:(int64_t)a4 type:(int64_t)a5 subMessageClass:(Class)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = BMProtoField;
  v12 = [(BMProtoField *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, a3);
    v13->_number = a4;
    v13->_type = a5;
    objc_storeStrong(&v13->_subMessageClass, a6);
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