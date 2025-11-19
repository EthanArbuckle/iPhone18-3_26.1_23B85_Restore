@interface MAKVStoreDataField
- (MAKVStoreDataField)initWithName:(id)a3 type:(unint64_t)a4 options:(unint64_t)a5;
@end

@implementation MAKVStoreDataField

- (MAKVStoreDataField)initWithName:(id)a3 type:(unint64_t)a4 options:(unint64_t)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = MAKVStoreDataField;
  v9 = [(MAKVStoreDataField *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    name = v9->_name;
    v9->_name = v10;

    v9->_type = a4;
    v9->_options = a5;
  }

  return v9;
}

@end