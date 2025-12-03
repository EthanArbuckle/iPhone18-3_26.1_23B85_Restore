@interface HMBLocalZoneQueryResultColumnTuple
- (HMBLocalZoneQueryResultColumnTuple)initWithName:(id)name offset:(int)offset modelField:(id)field;
- (id)description;
@end

@implementation HMBLocalZoneQueryResultColumnTuple

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  name = [(HMBLocalZoneQueryResultColumnTuple *)self name];
  offset = [(HMBLocalZoneQueryResultColumnTuple *)self offset];
  modelField = [(HMBLocalZoneQueryResultColumnTuple *)self modelField];
  v7 = [v3 stringWithFormat:@"<HMBQueryEncoder: %@ / %lu %@>", name, offset, modelField];

  return v7;
}

- (HMBLocalZoneQueryResultColumnTuple)initWithName:(id)name offset:(int)offset modelField:(id)field
{
  nameCopy = name;
  fieldCopy = field;
  v14.receiver = self;
  v14.super_class = HMBLocalZoneQueryResultColumnTuple;
  v11 = [(HMBLocalZoneQueryResultColumnTuple *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, name);
    v12->_offset = offset;
    objc_storeStrong(&v12->_modelField, field);
  }

  return v12;
}

@end