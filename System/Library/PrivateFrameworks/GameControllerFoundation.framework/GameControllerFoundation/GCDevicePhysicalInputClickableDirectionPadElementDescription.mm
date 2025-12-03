@interface GCDevicePhysicalInputClickableDirectionPadElementDescription
- (BOOL)isEqual:(id)equal;
- (GCDevicePhysicalInputClickableDirectionPadElementDescription)init;
- (GCDevicePhysicalInputClickableDirectionPadElementDescription)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
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

- (GCDevicePhysicalInputClickableDirectionPadElementDescription)initWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = GCDevicePhysicalInputClickableDirectionPadElementDescription;
  coderCopy = coder;
  v4 = [(GCDevicePhysicalInputDirectionPadElementDescription *)&v12 initWithCoder:coderCopy];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0, v12.receiver, v12.super_class}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"pressedSources"];
  pressedSources = v4->_pressedSources;
  v4->_pressedSources = v8;

  v10 = [coderCopy decodeIntegerForKey:@"eventPressedValueField"];
  v4->_eventPressedValueField = v10;
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = GCDevicePhysicalInputClickableDirectionPadElementDescription;
  coderCopy = coder;
  [(GCDevicePhysicalInputDirectionPadElementDescription *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_pressedSources forKey:{@"pressedSources", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_eventPressedValueField forKey:@"eventPressedValueField"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = GCDevicePhysicalInputClickableDirectionPadElementDescription;
  v4 = [(GCDevicePhysicalInputDirectionPadElementDescription *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 18, self->_pressedSources);
  v4[19] = self->_eventPressedValueField;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v6 = (objc_opt_isKindOfClass() & 1) != 0 && (v8.receiver = self, v8.super_class = GCDevicePhysicalInputClickableDirectionPadElementDescription, [(GCDevicePhysicalInputDirectionPadElementDescription *)&v8 isEqual:equalCopy]) && ((pressedSources = self->_pressedSources, pressedSources == equalCopy[18]) || [(NSArray *)pressedSources isEqual:?]) && self->_eventPressedValueField == equalCopy[19];

  return v6;
}

@end