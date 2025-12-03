@interface MAKVStoreDataField
- (MAKVStoreDataField)initWithName:(id)name type:(unint64_t)type options:(unint64_t)options;
@end

@implementation MAKVStoreDataField

- (MAKVStoreDataField)initWithName:(id)name type:(unint64_t)type options:(unint64_t)options
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = MAKVStoreDataField;
  v9 = [(MAKVStoreDataField *)&v13 init];
  if (v9)
  {
    v10 = [nameCopy copy];
    name = v9->_name;
    v9->_name = v10;

    v9->_type = type;
    v9->_options = options;
  }

  return v9;
}

@end