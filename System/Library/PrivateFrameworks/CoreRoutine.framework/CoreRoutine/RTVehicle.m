@interface RTVehicle
- (BOOL)isEqual:(id)a3;
- (RTVehicle)initWithCoder:(id)a3;
- (RTVehicle)initWithDateInterval:(id)a3 vehicleName:(id)a4 vehicleModelName:(id)a5 bluetoothAddress:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTVehicle

- (RTVehicle)initWithDateInterval:(id)a3 vehicleName:(id)a4 vehicleModelName:(id)a5 bluetoothAddress:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    v20.receiver = self;
    v20.super_class = RTVehicle;
    v15 = [(RTVehicle *)&v20 init];
    p_isa = &v15->super.isa;
    if (v15)
    {
      objc_storeStrong(&v15->_vehicleName, a4);
      objc_storeStrong(p_isa + 3, a5);
      objc_storeStrong(p_isa + 4, a6);
      objc_storeStrong(p_isa + 1, a3);
    }

    self = p_isa;
    v17 = self;
  }

  else
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dateInterval", buf, 2u);
    }

    v17 = 0;
  }

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  dateInterval = self->_dateInterval;
  v5 = a3;
  [v5 encodeObject:dateInterval forKey:@"vehicleDateInterval"];
  [v5 encodeObject:self->_vehicleName forKey:@"vehicleName"];
  [v5 encodeObject:self->_vehicleModelName forKey:@"vehicleModelName"];
  [v5 encodeObject:self->_bluetoothAddress forKey:@"vehicleBluetoothAddress"];
}

- (RTVehicle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vehicleDateInterval"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vehicleName"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vehicleModelName"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vehicleBluetoothAddress"];

  v9 = [(RTVehicle *)self initWithDateInterval:v5 vehicleName:v6 vehicleModelName:v7 bluetoothAddress:v8];
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  v7 = [v6 isMemberOfClass:objc_opt_class()];
  vehicleName = self->_vehicleName;
  if (vehicleName)
  {
    v3 = [v6 vehicleName];
    v9 = self->_vehicleName;
    if (v3)
    {
      v4 = [v6 vehicleName];
      LOBYTE(v10) = [v9 isEqual:v4];
      if ((v10 & 1) != 0 || self->_vehicleName)
      {

LABEL_12:
        goto LABEL_13;
      }

      v10 = 1;
    }

    else
    {
      v10 = 0;
      if (v9)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v9 = v10;
  v11 = [v6 vehicleName];
  LOBYTE(v10) = v11 == 0;

  if (v9)
  {
  }

  if (vehicleName)
  {
    goto LABEL_12;
  }

LABEL_13:
  vehicleModelName = self->_vehicleModelName;
  if (vehicleModelName)
  {
    v4 = [v6 vehicleModelName];
    v13 = self->_vehicleModelName;
    if (v4)
    {
      v9 = [v6 vehicleModelName];
      LOBYTE(v14) = [v13 isEqual:v9];
      if ((v14 & 1) != 0 || self->_vehicleModelName)
      {

LABEL_24:
        goto LABEL_25;
      }

      v14 = 1;
    }

    else
    {
      v14 = 0;
      if (v13)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v13 = v14;
  v15 = [v6 vehicleModelName];
  LOBYTE(v14) = v15 == 0;

  if (v13)
  {
  }

  if (vehicleModelName)
  {
    goto LABEL_24;
  }

LABEL_25:
  bluetoothAddress = self->_bluetoothAddress;
  if (bluetoothAddress)
  {
    v4 = [v6 bluetoothAddress];
    v17 = self->_bluetoothAddress;
    if (v4)
    {
      v13 = [v6 bluetoothAddress];
      v18 = [(NSString *)v17 isEqual:v13];
      if ((v18 & 1) != 0 || self->_bluetoothAddress)
      {

LABEL_36:
        goto LABEL_37;
      }

      v18 = 1;
    }

    else
    {
      v18 = 0;
      if (v17)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  v20 = [v6 bluetoothAddress];
  v18 = v20 == 0;

  if (v19)
  {
  }

  if (bluetoothAddress)
  {
    goto LABEL_36;
  }

LABEL_37:
  dateInterval = self->_dateInterval;
  v22 = [v6 dateInterval];
  LOBYTE(dateInterval) = [(NSDateInterval *)dateInterval isEqual:v22];

  return v7 & v10 & v14 & v18 & dateInterval;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(RTVehicle *)self dateInterval];
  v5 = [v4 description];
  v6 = [(RTVehicle *)self vehicleName];
  v7 = [(RTVehicle *)self vehicleModelName];
  v8 = [(RTVehicle *)self bluetoothAddress];
  v9 = [v3 stringWithFormat:@"dateInterval, %@, vehicleName, %@, vehicleModelName, %@, bluetoothAddress, %@", v5, v6, v7, v8];

  return v9;
}

@end