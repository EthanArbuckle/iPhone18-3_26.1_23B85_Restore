@interface GCDevicePhysicalInputCapacitiveDirectionPadElementDescription
- (BOOL)isEqual:(id)equal;
- (GCDevicePhysicalInputCapacitiveDirectionPadElementDescription)init;
- (GCDevicePhysicalInputCapacitiveDirectionPadElementDescription)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCDevicePhysicalInputCapacitiveDirectionPadElementDescription

- (GCDevicePhysicalInputCapacitiveDirectionPadElementDescription)init
{
  v3.receiver = self;
  v3.super_class = GCDevicePhysicalInputCapacitiveDirectionPadElementDescription;
  result = [(GCDevicePhysicalInputClickableDirectionPadElementDescription *)&v3 init];
  result->_eventTouchedValueField = -1;
  return result;
}

- (GCDevicePhysicalInputCapacitiveDirectionPadElementDescription)initWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = GCDevicePhysicalInputCapacitiveDirectionPadElementDescription;
  coderCopy = coder;
  v4 = [(GCDevicePhysicalInputClickableDirectionPadElementDescription *)&v12 initWithCoder:coderCopy];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0, v12.receiver, v12.super_class}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"touchedSources"];
  touchedSources = v4->_touchedSources;
  v4->_touchedSources = v8;

  v10 = [coderCopy decodeIntegerForKey:@"eventTouchedValueField"];
  v4->_eventTouchedValueField = v10;
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = GCDevicePhysicalInputCapacitiveDirectionPadElementDescription;
  coderCopy = coder;
  [(GCDevicePhysicalInputClickableDirectionPadElementDescription *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_touchedSources forKey:{@"touchedSources", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_eventTouchedValueField forKey:@"eventTouchedValueField"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = GCDevicePhysicalInputCapacitiveDirectionPadElementDescription;
  v4 = [(GCDevicePhysicalInputClickableDirectionPadElementDescription *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 20, self->_touchedSources);
  v4[21] = self->_eventTouchedValueField;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v6 = (objc_opt_isKindOfClass() & 1) != 0 && (v8.receiver = self, v8.super_class = GCDevicePhysicalInputCapacitiveDirectionPadElementDescription, [(GCDevicePhysicalInputClickableDirectionPadElementDescription *)&v8 isEqual:equalCopy]) && ((touchedSources = self->_touchedSources, touchedSources == equalCopy[20]) || [(NSArray *)touchedSources isEqual:?]) && self->_eventTouchedValueField == equalCopy[21];

  return v6;
}

@end