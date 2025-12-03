@interface RTVehicle
- (BOOL)isEqual:(id)equal;
- (RTVehicle)initWithCoder:(id)coder;
- (RTVehicle)initWithDateInterval:(id)interval vehicleName:(id)name vehicleModelName:(id)modelName bluetoothAddress:(id)address;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTVehicle

- (RTVehicle)initWithDateInterval:(id)interval vehicleName:(id)name vehicleModelName:(id)modelName bluetoothAddress:(id)address
{
  intervalCopy = interval;
  nameCopy = name;
  modelNameCopy = modelName;
  addressCopy = address;
  if (intervalCopy)
  {
    v20.receiver = self;
    v20.super_class = RTVehicle;
    v15 = [(RTVehicle *)&v20 init];
    p_isa = &v15->super.isa;
    if (v15)
    {
      objc_storeStrong(&v15->_vehicleName, name);
      objc_storeStrong(p_isa + 3, modelName);
      objc_storeStrong(p_isa + 4, address);
      objc_storeStrong(p_isa + 1, interval);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dateInterval", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  dateInterval = self->_dateInterval;
  coderCopy = coder;
  [coderCopy encodeObject:dateInterval forKey:@"vehicleDateInterval"];
  [coderCopy encodeObject:self->_vehicleName forKey:@"vehicleName"];
  [coderCopy encodeObject:self->_vehicleModelName forKey:@"vehicleModelName"];
  [coderCopy encodeObject:self->_bluetoothAddress forKey:@"vehicleBluetoothAddress"];
}

- (RTVehicle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vehicleDateInterval"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vehicleName"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vehicleModelName"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vehicleBluetoothAddress"];

  v9 = [(RTVehicle *)self initWithDateInterval:v5 vehicleName:v6 vehicleModelName:v7 bluetoothAddress:v8];
  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = [equalCopy isMemberOfClass:objc_opt_class()];
  vehicleName = self->_vehicleName;
  if (vehicleName)
  {
    vehicleName = [equalCopy vehicleName];
    vehicleModelName = self->_vehicleName;
    if (vehicleName)
    {
      vehicleName2 = [equalCopy vehicleName];
      LOBYTE(v10) = [vehicleModelName isEqual:vehicleName2];
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
      if (vehicleModelName)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  vehicleModelName = v10;
  vehicleName3 = [equalCopy vehicleName];
  LOBYTE(v10) = vehicleName3 == 0;

  if (vehicleModelName)
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
    vehicleName2 = [equalCopy vehicleModelName];
    bluetoothAddress = self->_vehicleModelName;
    if (vehicleName2)
    {
      vehicleModelName = [equalCopy vehicleModelName];
      LOBYTE(v14) = [bluetoothAddress isEqual:vehicleModelName];
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
      if (bluetoothAddress)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  bluetoothAddress = v14;
  vehicleModelName2 = [equalCopy vehicleModelName];
  LOBYTE(v14) = vehicleModelName2 == 0;

  if (bluetoothAddress)
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
    vehicleName2 = [equalCopy bluetoothAddress];
    v17 = self->_bluetoothAddress;
    if (vehicleName2)
    {
      bluetoothAddress = [equalCopy bluetoothAddress];
      v18 = [(NSString *)v17 isEqual:bluetoothAddress];
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
  bluetoothAddress2 = [equalCopy bluetoothAddress];
  v18 = bluetoothAddress2 == 0;

  if (v19)
  {
  }

  if (bluetoothAddress)
  {
    goto LABEL_36;
  }

LABEL_37:
  dateInterval = self->_dateInterval;
  dateInterval = [equalCopy dateInterval];
  LOBYTE(dateInterval) = [(NSDateInterval *)dateInterval isEqual:dateInterval];

  return v7 & v10 & v14 & v18 & dateInterval;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  dateInterval = [(RTVehicle *)self dateInterval];
  v5 = [dateInterval description];
  vehicleName = [(RTVehicle *)self vehicleName];
  vehicleModelName = [(RTVehicle *)self vehicleModelName];
  bluetoothAddress = [(RTVehicle *)self bluetoothAddress];
  v9 = [v3 stringWithFormat:@"dateInterval, %@, vehicleName, %@, vehicleModelName, %@, bluetoothAddress, %@", v5, vehicleName, vehicleModelName, bluetoothAddress];

  return v9;
}

@end