@interface UARPPowerLogPendingReachabilityEvent
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)initModelNumber:(id)a3 uuid:(id)a4;
@end

@implementation UARPPowerLogPendingReachabilityEvent

- (id)initModelNumber:(id)a3 uuid:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = UARPPowerLogPendingReachabilityEvent;
  v8 = [(UARPPowerLogPendingReachabilityEvent *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    modelNumber = v8->_modelNumber;
    v8->_modelNumber = v9;

    objc_storeStrong(&v8->_uuid, a4);
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uuid = self->_uuid;
    v6 = [v4 uuid];
    v7 = [(NSUUID *)uuid isEqual:v6];
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