@interface GCDevicePhysicalInputSwitchElementDescription
- (BOOL)isEqual:(id)a3;
- (GCDevicePhysicalInputSwitchElementDescription)init;
- (GCDevicePhysicalInputSwitchElementDescription)initWithCoder:(id)a3;
- (_NSRange)positionRange;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (GCDevicePhysicalInputSwitchElementDescription)initWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = GCDevicePhysicalInputSwitchElementDescription;
  v3 = a3;
  v4 = [(GCDevicePhysicalInputElementDescription *)&v12 initWithCoder:v3];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0, v12.receiver, v12.super_class}];
  v8 = [v3 decodeObjectOfClasses:v7 forKey:@"sources"];
  sources = v4->_sources;
  v4->_sources = v8;

  v4->_sequential = [v3 decodeBoolForKey:@"sequential"];
  v4->_canWrap = [v3 decodeBoolForKey:@"canWrap"];
  v4->_positionRange.location = [v3 decodeIntegerForKey:@"positionStart"];
  v4->_positionRange.length = [v3 decodeIntegerForKey:@"positionLength"];
  v10 = [v3 decodeIntegerForKey:@"eventPositionField"];

  v4->_eventPositionField = v10;
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = GCDevicePhysicalInputSwitchElementDescription;
  v4 = a3;
  [(GCDevicePhysicalInputElementDescription *)&v7 encodeWithCoder:v4];
  [v4 encodeObject:self->_sources forKey:{@"sources", v7.receiver, v7.super_class}];
  [v4 encodeBool:self->_sequential forKey:@"sequential"];
  LOBYTE(v5) = self->_canWrap;
  *&v6 = v5;
  [v4 encodeFloat:@"canWrap" forKey:v6];
  [v4 encodeInteger:self->_positionRange.location forKey:@"positionStart"];
  [v4 encodeInteger:self->_positionRange.length forKey:@"positionLength"];
  [v4 encodeInteger:self->_eventPositionField forKey:@"eventPositionField"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = GCDevicePhysicalInputSwitchElementDescription;
  v4 = [(GCDevicePhysicalInputElementDescription *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 7, self->_sources);
  v4[48] = self->_sequential;
  v4[49] = self->_canWrap;
  *(v4 + 72) = self->_positionRange;
  *(v4 + 8) = self->_eventPositionField;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v6 = (objc_opt_isKindOfClass() & 1) != 0 && (v8.receiver = self, v8.super_class = GCDevicePhysicalInputSwitchElementDescription, [(GCDevicePhysicalInputElementDescription *)&v8 isEqual:v4]) && ((sources = self->_sources, sources == v4[7]) || [(NSArray *)sources isEqual:?]) && self->_sequential == *(v4 + 48) && self->_canWrap == *(v4 + 49) && self->_positionRange.location == v4[9] && self->_positionRange.length == v4[10] && self->_eventPositionField == v4[8];

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