@interface SNNMILSourceLocation
+ (id)locationOrEmpty:(id)a3;
- (SNNMILSourceLocation)init;
- (SNNMILSourceLocation)initWithFilename:(id)a3 line:(unint64_t)a4 column:(unint64_t)a5;
- (unique_ptr<MIL::Location,)milLocation;
@end

@implementation SNNMILSourceLocation

- (SNNMILSourceLocation)init
{
  v3.receiver = self;
  v3.super_class = SNNMILSourceLocation;
  result = [(SNNMILSourceLocation *)&v3 init];
  result->_isLocationKnown = 0;
  return result;
}

- (SNNMILSourceLocation)initWithFilename:(id)a3 line:(unint64_t)a4 column:(unint64_t)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = SNNMILSourceLocation;
  v9 = [(SNNMILSourceLocation *)&v12 init];
  v9->_isLocationKnown = 1;
  filename = v9->_filename;
  v9->_filename = v8;

  v9->_line = a4;
  v9->_column = a5;
  return v9;
}

+ (id)locationOrEmpty:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_alloc_init(SNNMILSourceLocation);
  }

  v6 = v5;

  return v6;
}

- (unique_ptr<MIL::Location,)milLocation
{
  v3 = v2;
  if (self->_isLocationKnown)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, -[NSString UTF8String](self->_filename, "UTF8String"));
    line = self->_line;
    column = self->_column;
    v7 = MIL::TextFileLocation::Make();
    *v3 = v10;
    v10 = 0;
    if (v9 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    v7 = MIL::UnknownLocation::Make(&v10, self);
    *v3 = v10;
  }

  return v7;
}

@end