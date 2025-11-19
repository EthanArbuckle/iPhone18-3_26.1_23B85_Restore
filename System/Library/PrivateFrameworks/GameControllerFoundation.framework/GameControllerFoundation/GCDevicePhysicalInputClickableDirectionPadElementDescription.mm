@interface GCDevicePhysicalInputClickableDirectionPadElementDescription
- (BOOL)isEqual:(id)a3;
- (GCDevicePhysicalInputClickableDirectionPadElementDescription)init;
- (GCDevicePhysicalInputClickableDirectionPadElementDescription)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCDevicePhysicalInputClickableDirectionPadElementDescription

- (GCDevicePhysicalInputClickableDirectionPadElementDescription)init
{
  v3.receiver = self;
  v3.super_class = GCDevicePhysicalInputClickableDirectionPadElementDescription;
  result = [(GCDevicePhysicalInputDirectionPadElementDescription *)&v3 init];
  result->_eventPressedValueField = -1;
  return result;
}

- (GCDevicePhysicalInputClickableDirectionPadElementDescription)initWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = GCDevicePhysicalInputClickableDirectionPadElementDescription;
  v3 = a3;
  v4 = [(GCDevicePhysicalInputDirectionPadElementDescription *)&v12 initWithCoder:v3];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0, v12.receiver, v12.super_class}];
  v8 = [v3 decodeObjectOfClasses:v7 forKey:@"pressedSources"];
  pressedSources = v4->_pressedSources;
  v4->_pressedSources = v8;

  v10 = [v3 decodeIntegerForKey:@"eventPressedValueField"];
  v4->_eventPressedValueField = v10;
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GCDevicePhysicalInputClickableDirectionPadElementDescription;
  v4 = a3;
  [(GCDevicePhysicalInputDirectionPadElementDescription *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_pressedSources forKey:{@"pressedSources", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_eventPressedValueField forKey:@"eventPressedValueField"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = GCDevicePhysicalInputClickableDirectionPadElementDescription;
  v4 = [(GCDevicePhysicalInputDirectionPadElementDescription *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 18, self->_pressedSources);
  v4[19] = self->_eventPressedValueField;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v6 = (objc_opt_isKindOfClass() & 1) != 0 && (v8.receiver = self, v8.super_class = GCDevicePhysicalInputClickableDirectionPadElementDescription, [(GCDevicePhysicalInputDirectionPadElementDescription *)&v8 isEqual:v4]) && ((pressedSources = self->_pressedSources, pressedSources == v4[18]) || [(NSArray *)pressedSources isEqual:?]) && self->_eventPressedValueField == v4[19];

  return v6;
}

@end