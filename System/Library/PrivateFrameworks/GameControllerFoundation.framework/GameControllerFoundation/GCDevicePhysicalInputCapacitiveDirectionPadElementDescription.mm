@interface GCDevicePhysicalInputCapacitiveDirectionPadElementDescription
- (BOOL)isEqual:(id)a3;
- (GCDevicePhysicalInputCapacitiveDirectionPadElementDescription)init;
- (GCDevicePhysicalInputCapacitiveDirectionPadElementDescription)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
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

- (GCDevicePhysicalInputCapacitiveDirectionPadElementDescription)initWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = GCDevicePhysicalInputCapacitiveDirectionPadElementDescription;
  v3 = a3;
  v4 = [(GCDevicePhysicalInputClickableDirectionPadElementDescription *)&v12 initWithCoder:v3];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0, v12.receiver, v12.super_class}];
  v8 = [v3 decodeObjectOfClasses:v7 forKey:@"touchedSources"];
  touchedSources = v4->_touchedSources;
  v4->_touchedSources = v8;

  v10 = [v3 decodeIntegerForKey:@"eventTouchedValueField"];
  v4->_eventTouchedValueField = v10;
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GCDevicePhysicalInputCapacitiveDirectionPadElementDescription;
  v4 = a3;
  [(GCDevicePhysicalInputClickableDirectionPadElementDescription *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_touchedSources forKey:{@"touchedSources", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_eventTouchedValueField forKey:@"eventTouchedValueField"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = GCDevicePhysicalInputCapacitiveDirectionPadElementDescription;
  v4 = [(GCDevicePhysicalInputClickableDirectionPadElementDescription *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 20, self->_touchedSources);
  v4[21] = self->_eventTouchedValueField;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v6 = (objc_opt_isKindOfClass() & 1) != 0 && (v8.receiver = self, v8.super_class = GCDevicePhysicalInputCapacitiveDirectionPadElementDescription, [(GCDevicePhysicalInputClickableDirectionPadElementDescription *)&v8 isEqual:v4]) && ((touchedSources = self->_touchedSources, touchedSources == v4[20]) || [(NSArray *)touchedSources isEqual:?]) && self->_eventTouchedValueField == v4[21];

  return v6;
}

@end