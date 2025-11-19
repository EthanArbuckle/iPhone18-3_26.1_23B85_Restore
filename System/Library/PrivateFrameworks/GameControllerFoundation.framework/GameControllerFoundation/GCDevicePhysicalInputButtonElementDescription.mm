@interface GCDevicePhysicalInputButtonElementDescription
- (BOOL)isEqual:(id)a3;
- (GCDevicePhysicalInputButtonElementDescription)init;
- (GCDevicePhysicalInputButtonElementDescription)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCDevicePhysicalInputButtonElementDescription

- (GCDevicePhysicalInputButtonElementDescription)init
{
  v3.receiver = self;
  v3.super_class = GCDevicePhysicalInputButtonElementDescription;
  result = [(GCDevicePhysicalInputElementDescription *)&v3 init];
  result->_analog = 0;
  result->_pressedThreshold = 0.0;
  result->_touchedThreshold = 0.0;
  result->_eventPressedValueField = -1;
  result->_eventAnalogPressValueField = -1;
  result->_eventTouchValueField = -1;
  result->_eventForceValueField = -1;
  return result;
}

- (GCDevicePhysicalInputButtonElementDescription)initWithCoder:(id)a3
{
  v19.receiver = self;
  v19.super_class = GCDevicePhysicalInputButtonElementDescription;
  v3 = a3;
  v4 = [(GCDevicePhysicalInputElementDescription *)&v19 initWithCoder:v3];
  v4->_supportsTouch = [v3 decodeBoolForKey:@"supportsTouch"];
  v4->_supportsForce = [v3 decodeBoolForKey:@"supportsForce"];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0, v19.receiver, v19.super_class}];
  v8 = [v3 decodeObjectOfClasses:v7 forKey:@"sources"];
  sources = v4->_sources;
  v4->_sources = v8;

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [v3 decodeObjectOfClasses:v12 forKey:@"touchSources"];
  touchSources = v4->_touchSources;
  v4->_touchSources = v13;

  v4->_analog = [v3 decodeBoolForKey:@"analog"];
  [v3 decodeFloatForKey:@"pressedThreshold"];
  v4->_pressedThreshold = v15;
  [v3 decodeFloatForKey:@"touchedThreshold"];
  v4->_touchedThreshold = v16;
  v4->_eventPressedValueField = [v3 decodeIntegerForKey:@"eventPressedValueField"];
  v4->_eventAnalogPressValueField = [v3 decodeIntegerForKey:@"eventAnalogPressValueField"];
  v4->_eventTouchValueField = [v3 decodeIntegerForKey:@"eventTouchValueField"];
  v17 = [v3 decodeIntegerForKey:@"eventForceValueField"];

  v4->_eventForceValueField = v17;
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = GCDevicePhysicalInputButtonElementDescription;
  v4 = a3;
  [(GCDevicePhysicalInputElementDescription *)&v7 encodeWithCoder:v4];
  [v4 encodeBool:self->_supportsTouch forKey:{@"supportsTouch", v7.receiver, v7.super_class}];
  [v4 encodeBool:self->_supportsForce forKey:@"supportsForce"];
  [v4 encodeObject:self->_sources forKey:@"sources"];
  [v4 encodeObject:self->_touchSources forKey:@"touchSources"];
  [v4 encodeBool:self->_analog forKey:@"analog"];
  *&v5 = self->_pressedThreshold;
  [v4 encodeFloat:@"pressedThreshold" forKey:v5];
  *&v6 = self->_touchedThreshold;
  [v4 encodeFloat:@"touchedThreshold" forKey:v6];
  [v4 encodeInteger:self->_eventPressedValueField forKey:@"eventPressedValueField"];
  [v4 encodeInteger:self->_eventAnalogPressValueField forKey:@"eventAnalogPressValueField"];
  [v4 encodeInteger:self->_eventTouchValueField forKey:@"eventTouchValueField"];
  [v4 encodeInteger:self->_eventForceValueField forKey:@"eventForceValueField"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = GCDevicePhysicalInputButtonElementDescription;
  v4 = [(GCDevicePhysicalInputElementDescription *)&v6 copyWithZone:a3];
  *(v4 + 48) = self->_supportsTouch;
  *(v4 + 49) = self->_supportsForce;
  objc_storeStrong(v4 + 8, self->_sources);
  objc_storeStrong(v4 + 9, self->_touchSources);
  *(v4 + 50) = self->_analog;
  *(v4 + 13) = LODWORD(self->_pressedThreshold);
  *(v4 + 14) = LODWORD(self->_touchedThreshold);
  *(v4 + 10) = self->_eventPressedValueField;
  *(v4 + 11) = self->_eventAnalogPressValueField;
  *(v4 + 12) = self->_eventTouchValueField;
  *(v4 + 13) = self->_eventForceValueField;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v7 = (objc_opt_isKindOfClass() & 1) != 0 && (v9.receiver = self, v9.super_class = GCDevicePhysicalInputButtonElementDescription, [(GCDevicePhysicalInputElementDescription *)&v9 isEqual:v4]) && self->_supportsTouch == *(v4 + 48) && self->_supportsForce == *(v4 + 49) && ((sources = self->_sources, sources == v4[8]) || [(NSArray *)sources isEqual:?]) && ((touchSources = self->_touchSources, touchSources == v4[9]) || [(NSArray *)touchSources isEqual:?]) && self->_analog == *(v4 + 50) && self->_pressedThreshold == *(v4 + 13) && self->_touchedThreshold == *(v4 + 14) && self->_eventPressedValueField == v4[10] && self->_eventAnalogPressValueField == v4[11] && self->_eventTouchValueField == v4[12] && self->_eventForceValueField == v4[13];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = GCDevicePhysicalInputButtonElementDescription;
  v4 = [(GCDevicePhysicalInputElementDescription *)&v10 description];
  v5 = v4;
  if (self->_analog)
  {
    v6 = @"analog";
  }

  else
  {
    v6 = @"digital";
  }

  eventTouchValueField = self->_eventTouchValueField;
  v8 = [v3 stringWithFormat:@"Button %@ %@ P:%#zx V:%#zx T:%#zx F:%#zx", v4, v6, self->_eventPressedValueField, self->_eventAnalogPressValueField, eventTouchValueField, self->_eventForceValueField];

  return v8;
}

@end