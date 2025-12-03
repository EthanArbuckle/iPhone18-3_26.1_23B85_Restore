@interface _ICNamedEntityRecord
- (_ICNamedEntityRecord)initWithName:(id)name;
- (_ICNamedEntityRecord)initWithName:(id)name data:(unint64_t)data;
- (_ICNamedEntityRecord)initWithName:(id)name timestamp:(double)timestamp passesFilters:(BOOL)filters;
@end

@implementation _ICNamedEntityRecord

- (_ICNamedEntityRecord)initWithName:(id)name data:(unint64_t)data
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = _ICNamedEntityRecord;
  v7 = [(_ICNamedEntityRecord *)&v12 init];
  if (v7)
  {
    v8 = [nameCopy copy];
    name = v7->_name;
    v7->_name = v8;

    v7->_data = data;
    v7->_timestamp = CFAbsoluteTimeGetCurrent();
    v7->_passesFilters = 1;
    v10 = v7;
  }

  return v7;
}

- (_ICNamedEntityRecord)initWithName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = _ICNamedEntityRecord;
  v5 = [(_ICNamedEntityRecord *)&v10 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    name = v5->_name;
    v5->_name = v6;

    v5->_timestamp = CFAbsoluteTimeGetCurrent();
    v5->_passesFilters = 1;
    v8 = v5;
  }

  return v5;
}

- (_ICNamedEntityRecord)initWithName:(id)name timestamp:(double)timestamp passesFilters:(BOOL)filters
{
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = _ICNamedEntityRecord;
  v9 = [(_ICNamedEntityRecord *)&v14 init];
  if (v9)
  {
    v10 = [nameCopy copy];
    name = v9->_name;
    v9->_name = v10;

    v9->_timestamp = timestamp;
    v9->_passesFilters = filters;
    v12 = v9;
  }

  return v9;
}

@end