@interface BMIndexField
- (BMIndexField)initWithName:(id)a3 expression:(id)a4 dataType:(int64_t)a5;
- (id)description;
@end

@implementation BMIndexField

- (BMIndexField)initWithName:(id)a3 expression:(id)a4 dataType:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = BMIndexField;
  v11 = [(BMIndexField *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, a3);
    objc_storeStrong(&v12->_expression, a4);
    v12->_dataType = a5;
  }

  return v12;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%@ %p> name: %@; expression: %@; dataType: %ld", objc_opt_class(), self, self->_name, self->_expression, self->_dataType];

  return v2;
}

@end