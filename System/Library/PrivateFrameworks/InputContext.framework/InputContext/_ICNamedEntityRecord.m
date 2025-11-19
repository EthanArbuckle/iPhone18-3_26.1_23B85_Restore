@interface _ICNamedEntityRecord
- (_ICNamedEntityRecord)initWithName:(id)a3;
- (_ICNamedEntityRecord)initWithName:(id)a3 data:(unint64_t)a4;
- (_ICNamedEntityRecord)initWithName:(id)a3 timestamp:(double)a4 passesFilters:(BOOL)a5;
@end

@implementation _ICNamedEntityRecord

- (_ICNamedEntityRecord)initWithName:(id)a3 data:(unint64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = _ICNamedEntityRecord;
  v7 = [(_ICNamedEntityRecord *)&v12 init];
  if (v7)
  {
    v8 = [v6 copy];
    name = v7->_name;
    v7->_name = v8;

    v7->_data = a4;
    v7->_timestamp = CFAbsoluteTimeGetCurrent();
    v7->_passesFilters = 1;
    v10 = v7;
  }

  return v7;
}

- (_ICNamedEntityRecord)initWithName:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _ICNamedEntityRecord;
  v5 = [(_ICNamedEntityRecord *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    name = v5->_name;
    v5->_name = v6;

    v5->_timestamp = CFAbsoluteTimeGetCurrent();
    v5->_passesFilters = 1;
    v8 = v5;
  }

  return v5;
}

- (_ICNamedEntityRecord)initWithName:(id)a3 timestamp:(double)a4 passesFilters:(BOOL)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = _ICNamedEntityRecord;
  v9 = [(_ICNamedEntityRecord *)&v14 init];
  if (v9)
  {
    v10 = [v8 copy];
    name = v9->_name;
    v9->_name = v10;

    v9->_timestamp = a4;
    v9->_passesFilters = a5;
    v12 = v9;
  }

  return v9;
}

@end