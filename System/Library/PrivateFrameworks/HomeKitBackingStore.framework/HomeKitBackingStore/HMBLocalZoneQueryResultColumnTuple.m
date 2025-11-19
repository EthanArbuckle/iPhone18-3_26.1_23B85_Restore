@interface HMBLocalZoneQueryResultColumnTuple
- (HMBLocalZoneQueryResultColumnTuple)initWithName:(id)a3 offset:(int)a4 modelField:(id)a5;
- (id)description;
@end

@implementation HMBLocalZoneQueryResultColumnTuple

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMBLocalZoneQueryResultColumnTuple *)self name];
  v5 = [(HMBLocalZoneQueryResultColumnTuple *)self offset];
  v6 = [(HMBLocalZoneQueryResultColumnTuple *)self modelField];
  v7 = [v3 stringWithFormat:@"<HMBQueryEncoder: %@ / %lu %@>", v4, v5, v6];

  return v7;
}

- (HMBLocalZoneQueryResultColumnTuple)initWithName:(id)a3 offset:(int)a4 modelField:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HMBLocalZoneQueryResultColumnTuple;
  v11 = [(HMBLocalZoneQueryResultColumnTuple *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, a3);
    v12->_offset = a4;
    objc_storeStrong(&v12->_modelField, a5);
  }

  return v12;
}

@end