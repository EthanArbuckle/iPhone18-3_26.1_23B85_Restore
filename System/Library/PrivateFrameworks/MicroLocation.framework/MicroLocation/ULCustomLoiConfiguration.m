@interface ULCustomLoiConfiguration
- (ULCustomLoiConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ULCustomLoiConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  isInRoomDetectionEnabled = self->_isInRoomDetectionEnabled;

  return [v4 initWithEnableInRoomDetection:isInRoomDetectionEnabled];
}

- (ULCustomLoiConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ULCustomLoiConfiguration;
  v5 = [(ULCustomLoiConfiguration *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isInRoomDetectionEnabled"];
    v7 = v6;
    if (v6)
    {
      v8 = [(ULCustomLoiConfiguration *)v6 BOOLValue];

      v5->_isInRoomDetectionEnabled = v8;
      v7 = v5;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  isInRoomDetectionEnabled = self->_isInRoomDetectionEnabled;
  v5 = a3;
  v6 = [v3 numberWithBool:isInRoomDetectionEnabled];
  [v5 encodeObject:v6 forKey:@"isInRoomDetectionEnabled"];
}

@end