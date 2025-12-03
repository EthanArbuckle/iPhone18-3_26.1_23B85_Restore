@interface GCDevicePhysicalInputButtonElementDescription
- (BOOL)isEqual:(id)equal;
- (GCDevicePhysicalInputButtonElementDescription)init;
- (GCDevicePhysicalInputButtonElementDescription)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (GCDevicePhysicalInputButtonElementDescription)initWithCoder:(id)coder
{
  v19.receiver = self;
  v19.super_class = GCDevicePhysicalInputButtonElementDescription;
  coderCopy = coder;
  v4 = [(GCDevicePhysicalInputElementDescription *)&v19 initWithCoder:coderCopy];
  v4->_supportsTouch = [coderCopy decodeBoolForKey:@"supportsTouch"];
  v4->_supportsForce = [coderCopy decodeBoolForKey:@"supportsForce"];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0, v19.receiver, v19.super_class}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"sources"];
  sources = v4->_sources;
  v4->_sources = v8;

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"touchSources"];
  touchSources = v4->_touchSources;
  v4->_touchSources = v13;

  v4->_analog = [coderCopy decodeBoolForKey:@"analog"];
  [coderCopy decodeFloatForKey:@"pressedThreshold"];
  v4->_pressedThreshold = v15;
  [coderCopy decodeFloatForKey:@"touchedThreshold"];
  v4->_touchedThreshold = v16;
  v4->_eventPressedValueField = [coderCopy decodeIntegerForKey:@"eventPressedValueField"];
  v4->_eventAnalogPressValueField = [coderCopy decodeIntegerForKey:@"eventAnalogPressValueField"];
  v4->_eventTouchValueField = [coderCopy decodeIntegerForKey:@"eventTouchValueField"];
  v17 = [coderCopy decodeIntegerForKey:@"eventForceValueField"];

  v4->_eventForceValueField = v17;
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = GCDevicePhysicalInputButtonElementDescription;
  coderCopy = coder;
  [(GCDevicePhysicalInputElementDescription *)&v7 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_supportsTouch forKey:{@"supportsTouch", v7.receiver, v7.super_class}];
  [coderCopy encodeBool:self->_supportsForce forKey:@"supportsForce"];
  [coderCopy encodeObject:self->_sources forKey:@"sources"];
  [coderCopy encodeObject:self->_touchSources forKey:@"touchSources"];
  [coderCopy encodeBool:self->_analog forKey:@"analog"];
  *&v5 = self->_pressedThreshold;
  [coderCopy encodeFloat:@"pressedThreshold" forKey:v5];
  *&v6 = self->_touchedThreshold;
  [coderCopy encodeFloat:@"touchedThreshold" forKey:v6];
  [coderCopy encodeInteger:self->_eventPressedValueField forKey:@"eventPressedValueField"];
  [coderCopy encodeInteger:self->_eventAnalogPressValueField forKey:@"eventAnalogPressValueField"];
  [coderCopy encodeInteger:self->_eventTouchValueField forKey:@"eventTouchValueField"];
  [coderCopy encodeInteger:self->_eventForceValueField forKey:@"eventForceValueField"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = GCDevicePhysicalInputButtonElementDescription;
  v4 = [(GCDevicePhysicalInputElementDescription *)&v6 copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v7 = (objc_opt_isKindOfClass() & 1) != 0 && (v9.receiver = self, v9.super_class = GCDevicePhysicalInputButtonElementDescription, [(GCDevicePhysicalInputElementDescription *)&v9 isEqual:equalCopy]) && self->_supportsTouch == *(equalCopy + 48) && self->_supportsForce == *(equalCopy + 49) && ((sources = self->_sources, sources == equalCopy[8]) || [(NSArray *)sources isEqual:?]) && ((touchSources = self->_touchSources, touchSources == equalCopy[9]) || [(NSArray *)touchSources isEqual:?]) && self->_analog == *(equalCopy + 50) && self->_pressedThreshold == *(equalCopy + 13) && self->_touchedThreshold == *(equalCopy + 14) && self->_eventPressedValueField == equalCopy[10] && self->_eventAnalogPressValueField == equalCopy[11] && self->_eventTouchValueField == equalCopy[12] && self->_eventForceValueField == equalCopy[13];

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