@interface GCDevicePhysicalInputSwitchElementDescription
- (BOOL)isEqual:(id)equal;
- (GCDevicePhysicalInputSwitchElementDescription)init;
- (GCDevicePhysicalInputSwitchElementDescription)initWithCoder:(id)coder;
- (_NSRange)positionRange;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCDevicePhysicalInputSwitchElementDescription

- (GCDevicePhysicalInputSwitchElementDescription)init
{
  v3.receiver = self;
  v3.super_class = GCDevicePhysicalInputSwitchElementDescription;
  result = [(GCDevicePhysicalInputElementDescription *)&v3 init];
  result->_sequential = 0;
  result->_canWrap = 0;
  result->_positionRange.location = 0;
  result->_positionRange.length = 0;
  result->_eventPositionField = -1;
  return result;
}

- (GCDevicePhysicalInputSwitchElementDescription)initWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = GCDevicePhysicalInputSwitchElementDescription;
  coderCopy = coder;
  v4 = [(GCDevicePhysicalInputElementDescription *)&v12 initWithCoder:coderCopy];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0, v12.receiver, v12.super_class}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"sources"];
  sources = v4->_sources;
  v4->_sources = v8;

  v4->_sequential = [coderCopy decodeBoolForKey:@"sequential"];
  v4->_canWrap = [coderCopy decodeBoolForKey:@"canWrap"];
  v4->_positionRange.location = [coderCopy decodeIntegerForKey:@"positionStart"];
  v4->_positionRange.length = [coderCopy decodeIntegerForKey:@"positionLength"];
  v10 = [coderCopy decodeIntegerForKey:@"eventPositionField"];

  v4->_eventPositionField = v10;
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = GCDevicePhysicalInputSwitchElementDescription;
  coderCopy = coder;
  [(GCDevicePhysicalInputElementDescription *)&v7 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_sources forKey:{@"sources", v7.receiver, v7.super_class}];
  [coderCopy encodeBool:self->_sequential forKey:@"sequential"];
  LOBYTE(v5) = self->_canWrap;
  *&v6 = v5;
  [coderCopy encodeFloat:@"canWrap" forKey:v6];
  [coderCopy encodeInteger:self->_positionRange.location forKey:@"positionStart"];
  [coderCopy encodeInteger:self->_positionRange.length forKey:@"positionLength"];
  [coderCopy encodeInteger:self->_eventPositionField forKey:@"eventPositionField"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = GCDevicePhysicalInputSwitchElementDescription;
  v4 = [(GCDevicePhysicalInputElementDescription *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 7, self->_sources);
  v4[48] = self->_sequential;
  v4[49] = self->_canWrap;
  *(v4 + 72) = self->_positionRange;
  *(v4 + 8) = self->_eventPositionField;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v6 = (objc_opt_isKindOfClass() & 1) != 0 && (v8.receiver = self, v8.super_class = GCDevicePhysicalInputSwitchElementDescription, [(GCDevicePhysicalInputElementDescription *)&v8 isEqual:equalCopy]) && ((sources = self->_sources, sources == equalCopy[7]) || [(NSArray *)sources isEqual:?]) && self->_sequential == *(equalCopy + 48) && self->_canWrap == *(equalCopy + 49) && self->_positionRange.location == equalCopy[9] && self->_positionRange.length == equalCopy[10] && self->_eventPositionField == equalCopy[8];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = GCDevicePhysicalInputSwitchElementDescription;
  v4 = [(GCDevicePhysicalInputElementDescription *)&v10 description];
  v5 = v4;
  v6 = &stru_1F4E1BE30;
  if (self->_sequential)
  {
    v7 = @" sequential";
  }

  else
  {
    v7 = &stru_1F4E1BE30;
  }

  if (self->_canWrap)
  {
    v6 = @" wraps";
  }

  v8 = [v3 stringWithFormat:@"Switch %@ %#zx%@%@", v4, self->_eventPositionField, v7, v6];

  return v8;
}

- (_NSRange)positionRange
{
  p_positionRange = &self->_positionRange;
  location = self->_positionRange.location;
  length = p_positionRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end