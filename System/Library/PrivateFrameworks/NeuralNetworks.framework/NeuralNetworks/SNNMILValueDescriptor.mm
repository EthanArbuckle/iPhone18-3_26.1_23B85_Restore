@interface SNNMILValueDescriptor
- (BOOL)isScalar;
- (SNNMILValueDescriptor)initWithShape:(id)a3 dataType:(unint64_t)a4;
- (SNNMILValueDescriptor)initWithShape:(id)a3 dataType:(unint64_t)a4 name:(id)a5;
@end

@implementation SNNMILValueDescriptor

- (SNNMILValueDescriptor)initWithShape:(id)a3 dataType:(unint64_t)a4 name:(id)a5
{
  v8 = a3;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = SNNMILValueDescriptor;
  v10 = [(SNNMILValue *)&v15 init];
  dimensions = v10->_dimensions;
  v10->_dimensions = v8;
  v12 = v8;

  v10->_dataType = a4;
  name = v10->_name;
  v10->_name = v9;

  return v10;
}

- (SNNMILValueDescriptor)initWithShape:(id)a3 dataType:(unint64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = SNNMILValueDescriptor;
  v7 = [(SNNMILValue *)&v10 init];
  dimensions = v7->_dimensions;
  v7->_dimensions = v6;

  v7->_dataType = a4;
  return v7;
}

- (BOOL)isScalar
{
  v2 = [(SNNMILValueDescriptor *)self dimensions];
  v3 = [v2 count] == 0;

  return v3;
}

@end