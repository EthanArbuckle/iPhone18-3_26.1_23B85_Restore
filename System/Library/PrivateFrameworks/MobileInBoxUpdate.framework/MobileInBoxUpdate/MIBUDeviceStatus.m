@interface MIBUDeviceStatus
- (BOOL)isEqual:(id)a3;
- (MIBUDeviceStatus)init;
@end

@implementation MIBUDeviceStatus

- (MIBUDeviceStatus)init
{
  v5.receiver = self;
  v5.super_class = MIBUDeviceStatus;
  v2 = [(MIBUDeviceStatus *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MIBUDeviceStatus *)v2 setState:0];
    [(MIBUDeviceStatus *)v3 setOperation:0];
    [(MIBUDeviceStatus *)v3 setOperationDetails:0];
    [(MIBUDeviceStatus *)v3 setOperationError:0];
    [(MIBUDeviceStatus *)v3 setBatteryLevel:0];
    [(MIBUDeviceStatus *)v3 setThermalDetails:0];
    [(MIBUDeviceStatus *)v3 setBatteryDetails:0];
    [(MIBUDeviceStatus *)v3 setUpdateSummary:0];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  v5 = [v4 state];
  if (v5 != [(MIBUDeviceStatus *)self state])
  {
    goto LABEL_11;
  }

  v6 = [v4 operation];
  if (v6 != [(MIBUDeviceStatus *)self operation])
  {
    goto LABEL_11;
  }

  v7 = [v4 operationError];
  v8 = [v7 domain];
  v9 = [(MIBUDeviceStatus *)self operationError];
  v10 = [v9 domain];
  v11 = [v8 isEqualToString:v10];

  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = [v4 operationError];
  v13 = [v12 code];
  v14 = [(MIBUDeviceStatus *)self operationError];
  v15 = [v14 code];

  if (v13 != v15)
  {
    goto LABEL_11;
  }

  v16 = [v4 batteryLevel];
  v17 = [(MIBUDeviceStatus *)self batteryLevel];
  v18 = [v16 isEqualToNumber:v17];

  if (!v18)
  {
    goto LABEL_11;
  }

  v19 = [v4 operationDetails];
  v20 = [(MIBUDeviceStatus *)self operationDetails];
  v21 = [v19 isEqualToDictionary:v20];

  if (!v21)
  {
    goto LABEL_11;
  }

  v22 = [v4 thermalDetails];
  v23 = [(MIBUDeviceStatus *)self thermalDetails];
  v24 = [v22 isEqualToDictionary:v23];

  if (!v24)
  {
    goto LABEL_11;
  }

  v25 = [v4 batteryDetails];
  v26 = [(MIBUDeviceStatus *)self batteryDetails];
  v27 = [v25 isEqualToDictionary:v26];

  if (v27)
  {
    v28 = [v4 updateSummary];
    v29 = [(MIBUDeviceStatus *)self updateSummary];
    v30 = [v28 isEqualToDictionary:v29];
  }

  else
  {
LABEL_11:
    v30 = 0;
  }

  return v30;
}

@end