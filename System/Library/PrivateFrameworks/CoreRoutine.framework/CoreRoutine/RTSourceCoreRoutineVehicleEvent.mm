@interface RTSourceCoreRoutineVehicleEvent
- (BOOL)isEqual:(id)equal;
- (RTSourceCoreRoutineVehicleEvent)initWithCoder:(id)coder;
- (RTSourceCoreRoutineVehicleEvent)initWithVehicleEvent:(id)event;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTSourceCoreRoutineVehicleEvent

- (RTSourceCoreRoutineVehicleEvent)initWithVehicleEvent:(id)event
{
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = RTSourceCoreRoutineVehicleEvent;
  v6 = [(RTSourceCoreRoutineVehicleEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_vehicleEvent, event);
  }

  return v7;
}

- (RTSourceCoreRoutineVehicleEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = RTSourceCoreRoutineVehicleEvent;
  v5 = [(RTSourceCoreRoutine *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vehicleEvent"];
    vehicleEvent = v5->_vehicleEvent;
    v5->_vehicleEvent = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = RTSourceCoreRoutineVehicleEvent;
  coderCopy = coder;
  [(RTSourceCoreRoutine *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_vehicleEvent forKey:{@"vehicleEvent", v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  vehicleEvent = self->_vehicleEvent;

  return [v4 initWithVehicleEvent:vehicleEvent];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = RTSourceCoreRoutineVehicleEvent;
  if ([(RTSource *)&v12 isEqual:equalCopy])
  {
    v6 = equalCopy;
    vehicleEvent = [(RTSourceCoreRoutineVehicleEvent *)self vehicleEvent];
    if (vehicleEvent || ([v6 vehicleEvent], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      vehicleEvent2 = [(RTSourceCoreRoutineVehicleEvent *)self vehicleEvent];
      vehicleEvent3 = [v6 vehicleEvent];
      v10 = [vehicleEvent2 isEqual:vehicleEvent3];

      if (vehicleEvent)
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
  vehicleEvent = [(RTSourceCoreRoutineVehicleEvent *)self vehicleEvent];
  v5 = [vehicleEvent hash];

  return v5 ^ v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  vehicleEvent = [(RTSourceCoreRoutineVehicleEvent *)self vehicleEvent];
  v7 = [v3 stringWithFormat:@"%@, vehicleEvent, %@", v5, vehicleEvent];

  return v7;
}

@end