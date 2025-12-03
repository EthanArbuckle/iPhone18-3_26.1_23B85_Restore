@interface BMIndexField
- (BMIndexField)initWithName:(id)name expression:(id)expression dataType:(int64_t)type;
- (id)description;
@end

@implementation BMIndexField

- (BMIndexField)initWithName:(id)name expression:(id)expression dataType:(int64_t)type
{
  nameCopy = name;
  expressionCopy = expression;
  v14.receiver = self;
  v14.super_class = BMIndexField;
  v11 = [(BMIndexField *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, name);
    objc_storeStrong(&v12->_expression, expression);
    v12->_dataType = type;
  }

  return v12;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%@ %p> name: %@; expression: %@; dataType: %ld", objc_opt_class(), self, self->_name, self->_expression, self->_dataType];

  return v2;
}

@end