@interface UARPPowerLogPendingReachabilityEvent
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)initModelNumber:(id)number uuid:(id)uuid;
@end

@implementation UARPPowerLogPendingReachabilityEvent

- (id)initModelNumber:(id)number uuid:(id)uuid
{
  numberCopy = number;
  uuidCopy = uuid;
  v12.receiver = self;
  v12.super_class = UARPPowerLogPendingReachabilityEvent;
  v8 = [(UARPPowerLogPendingReachabilityEvent *)&v12 init];
  if (v8)
  {
    v9 = [numberCopy copy];
    modelNumber = v8->_modelNumber;
    v8->_modelNumber = v9;

    objc_storeStrong(&v8->_uuid, uuid);
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uuid = self->_uuid;
    uuid = [equalCopy uuid];
    v7 = [(NSUUID *)uuid isEqual:uuid];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %@ %@>", v5, self->_modelNumber, self->_uuid];

  return v6;
}

@end