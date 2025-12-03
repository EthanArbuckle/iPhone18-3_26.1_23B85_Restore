@interface SNNMILValueDescriptor
- (BOOL)isScalar;
- (SNNMILValueDescriptor)initWithShape:(id)shape dataType:(unint64_t)type;
- (SNNMILValueDescriptor)initWithShape:(id)shape dataType:(unint64_t)type name:(id)name;
@end

@implementation SNNMILValueDescriptor

- (SNNMILValueDescriptor)initWithShape:(id)shape dataType:(unint64_t)type name:(id)name
{
  shapeCopy = shape;
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = SNNMILValueDescriptor;
  v10 = [(SNNMILValue *)&v15 init];
  dimensions = v10->_dimensions;
  v10->_dimensions = shapeCopy;
  v12 = shapeCopy;

  v10->_dataType = type;
  name = v10->_name;
  v10->_name = nameCopy;

  return v10;
}

- (SNNMILValueDescriptor)initWithShape:(id)shape dataType:(unint64_t)type
{
  shapeCopy = shape;
  v10.receiver = self;
  v10.super_class = SNNMILValueDescriptor;
  v7 = [(SNNMILValue *)&v10 init];
  dimensions = v7->_dimensions;
  v7->_dimensions = shapeCopy;

  v7->_dataType = type;
  return v7;
}

- (BOOL)isScalar
{
  dimensions = [(SNNMILValueDescriptor *)self dimensions];
  v3 = [dimensions count] == 0;

  return v3;
}

@end