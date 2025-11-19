@interface RTSourceCoreRoutineVehicleEvent
- (BOOL)isEqual:(id)a3;
- (RTSourceCoreRoutineVehicleEvent)initWithCoder:(id)a3;
- (RTSourceCoreRoutineVehicleEvent)initWithVehicleEvent:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTSourceCoreRoutineVehicleEvent

- (RTSourceCoreRoutineVehicleEvent)initWithVehicleEvent:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RTSourceCoreRoutineVehicleEvent;
  v6 = [(RTSourceCoreRoutineVehicleEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_vehicleEvent, a3);
  }

  return v7;
}

- (RTSourceCoreRoutineVehicleEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RTSourceCoreRoutineVehicleEvent;
  v5 = [(RTSourceCoreRoutine *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vehicleEvent"];
    vehicleEvent = v5->_vehicleEvent;
    v5->_vehicleEvent = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = RTSourceCoreRoutineVehicleEvent;
  v4 = a3;
  [(RTSourceCoreRoutine *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_vehicleEvent forKey:{@"vehicleEvent", v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  vehicleEvent = self->_vehicleEvent;

  return [v4 initWithVehicleEvent:vehicleEvent];
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = RTSourceCoreRoutineVehicleEvent;
  if ([(RTSource *)&v12 isEqual:v5])
  {
    v6 = v5;
    v7 = [(RTSourceCoreRoutineVehicleEvent *)self vehicleEvent];
    if (v7 || ([v6 vehicleEvent], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [(RTSourceCoreRoutineVehicleEvent *)self vehicleEvent];
      v9 = [v6 vehicleEvent];
      v10 = [v8 isEqual:v9];

      if (v7)
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      v10 = 1;
    }

    goto LABEL_9;
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = RTSourceCoreRoutineVehicleEvent;
  v3 = [(RTSource *)&v7 hash];
  v4 = [(RTSourceCoreRoutineVehicleEvent *)self vehicleEvent];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(RTSourceCoreRoutineVehicleEvent *)self vehicleEvent];
  v7 = [v3 stringWithFormat:@"%@, vehicleEvent, %@", v5, v6];

  return v7;
}

@end