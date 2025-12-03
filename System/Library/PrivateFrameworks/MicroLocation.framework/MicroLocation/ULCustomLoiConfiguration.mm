@interface ULCustomLoiConfiguration
- (ULCustomLoiConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ULCustomLoiConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  isInRoomDetectionEnabled = self->_isInRoomDetectionEnabled;

  return [v4 initWithEnableInRoomDetection:isInRoomDetectionEnabled];
}

- (ULCustomLoiConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = ULCustomLoiConfiguration;
  v5 = [(ULCustomLoiConfiguration *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isInRoomDetectionEnabled"];
    v7 = v6;
    if (v6)
    {
      bOOLValue = [(ULCustomLoiConfiguration *)v6 BOOLValue];

      v5->_isInRoomDetectionEnabled = bOOLValue;
      v7 = v5;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v3 = MEMORY[0x277CCABB0];
  isInRoomDetectionEnabled = self->_isInRoomDetectionEnabled;
  coderCopy = coder;
  v6 = [v3 numberWithBool:isInRoomDetectionEnabled];
  [coderCopy encodeObject:v6 forKey:@"isInRoomDetectionEnabled"];
}

@end