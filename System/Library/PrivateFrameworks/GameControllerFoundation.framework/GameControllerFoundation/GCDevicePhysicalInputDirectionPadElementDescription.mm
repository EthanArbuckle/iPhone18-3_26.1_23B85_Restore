@interface GCDevicePhysicalInputDirectionPadElementDescription
- (BOOL)isEqual:(id)equal;
- (GCDevicePhysicalInputDirectionPadElementDescription)init;
- (GCDevicePhysicalInputDirectionPadElementDescription)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCDevicePhysicalInputDirectionPadElementDescription

- (GCDevicePhysicalInputDirectionPadElementDescription)init
{
  v3.receiver = self;
  v3.super_class = GCDevicePhysicalInputDirectionPadElementDescription;
  result = [(GCDevicePhysicalInputElementDescription *)&v3 init];
  result->_eventUpValueField = -1;
  result->_eventDownValueField = -1;
  result->_eventLeftValueField = -1;
  result->_eventRightValueField = -1;
  return result;
}

- (GCDevicePhysicalInputDirectionPadElementDescription)initWithCoder:(id)coder
{
  v42.receiver = self;
  v42.super_class = GCDevicePhysicalInputDirectionPadElementDescription;
  coderCopy = coder;
  v4 = [(GCDevicePhysicalInputElementDescription *)&v42 initWithCoder:coderCopy];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0, v42.receiver, v42.super_class}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"xySources"];
  xySources = v4->_xySources;
  v4->_xySources = v8;

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"xSources"];
  xSources = v4->_xSources;
  v4->_xSources = v13;

  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"ySources"];
  ySources = v4->_ySources;
  v4->_ySources = v18;

  v20 = MEMORY[0x1E695DFD8];
  v21 = objc_opt_class();
  v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
  v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"upSources"];
  upSources = v4->_upSources;
  v4->_upSources = v23;

  v25 = MEMORY[0x1E695DFD8];
  v26 = objc_opt_class();
  v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
  v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"leftSources"];
  leftSources = v4->_leftSources;
  v4->_leftSources = v28;

  v30 = MEMORY[0x1E695DFD8];
  v31 = objc_opt_class();
  v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
  v33 = [coderCopy decodeObjectOfClasses:v32 forKey:@"downSources"];
  downSources = v4->_downSources;
  v4->_downSources = v33;

  v35 = MEMORY[0x1E695DFD8];
  v36 = objc_opt_class();
  v37 = [v35 setWithObjects:{v36, objc_opt_class(), 0}];
  v38 = [coderCopy decodeObjectOfClasses:v37 forKey:@"rightSources"];
  rightSources = v4->_rightSources;
  v4->_rightSources = v38;

  v4->_analog = [coderCopy decodeBoolForKey:@"analog"];
  v4->_eventUpValueField = [coderCopy decodeIntegerForKey:@"eventUpValueField"];
  v4->_eventDownValueField = [coderCopy decodeIntegerForKey:@"eventDownValueField"];
  v4->_eventLeftValueField = [coderCopy decodeIntegerForKey:@"eventLeftValueField"];
  v40 = [coderCopy decodeIntegerForKey:@"eventRightValueField"];

  v4->_eventRightValueField = v40;
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = GCDevicePhysicalInputDirectionPadElementDescription;
  coderCopy = coder;
  [(GCDevicePhysicalInputElementDescription *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_xySources forKey:{@"xySources", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_xSources forKey:@"xSources"];
  [coderCopy encodeObject:self->_ySources forKey:@"ySources"];
  [coderCopy encodeObject:self->_upSources forKey:@"upSources"];
  [coderCopy encodeObject:self->_leftSources forKey:@"leftSources"];
  [coderCopy encodeObject:self->_downSources forKey:@"downSources"];
  [coderCopy encodeObject:self->_rightSources forKey:@"rightSources"];
  [coderCopy encodeBool:self->_analog forKey:@"analog"];
  [coderCopy encodeInteger:self->_eventUpValueField forKey:@"eventUpValueField"];
  [coderCopy encodeInteger:self->_eventDownValueField forKey:@"eventDownValueField"];
  [coderCopy encodeInteger:self->_eventLeftValueField forKey:@"eventLeftValueField"];
  [coderCopy encodeInteger:self->_eventRightValueField forKey:@"eventRightValueField"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = GCDevicePhysicalInputDirectionPadElementDescription;
  v4 = [(GCDevicePhysicalInputElementDescription *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 7, self->_xySources);
  objc_storeStrong(v4 + 8, self->_xSources);
  objc_storeStrong(v4 + 9, self->_ySources);
  objc_storeStrong(v4 + 10, self->_upSources);
  objc_storeStrong(v4 + 11, self->_leftSources);
  objc_storeStrong(v4 + 12, self->_downSources);
  objc_storeStrong(v4 + 13, self->_rightSources);
  *(v4 + 48) = self->_analog;
  v4[14] = self->_eventUpValueField;
  v4[15] = self->_eventDownValueField;
  v4[16] = self->_eventLeftValueField;
  v4[17] = self->_eventRightValueField;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_22;
  }

  v14.receiver = self;
  v14.super_class = GCDevicePhysicalInputDirectionPadElementDescription;
  if (![(GCDevicePhysicalInputElementDescription *)&v14 isEqual:equalCopy])
  {
    goto LABEL_22;
  }

  xySources = self->_xySources;
  if (xySources != equalCopy[7] && ![(NSArray *)xySources isEqual:?])
  {
    goto LABEL_22;
  }

  if (((xSources = self->_xSources, xSources == equalCopy[8]) || [(NSArray *)xSources isEqual:?]) && ((ySources = self->_ySources, ySources == equalCopy[9]) || [(NSArray *)ySources isEqual:?]) && ((upSources = self->_upSources, upSources == equalCopy[10]) || [(NSArray *)upSources isEqual:?]) && ((leftSources = self->_leftSources, leftSources == equalCopy[11]) || [(NSArray *)leftSources isEqual:?]) && ((downSources = self->_downSources, downSources == equalCopy[12]) || [(NSArray *)downSources isEqual:?]) && ((rightSources = self->_rightSources, rightSources == equalCopy[13]) || [(NSArray *)rightSources isEqual:?]) && self->_analog == *(equalCopy + 48) && self->_eventUpValueField == equalCopy[14] && self->_eventDownValueField == equalCopy[15] && self->_eventLeftValueField == equalCopy[16])
  {
    v12 = self->_eventRightValueField == equalCopy[17];
  }

  else
  {
LABEL_22:
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = GCDevicePhysicalInputDirectionPadElementDescription;
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

  eventDownValueField = self->_eventDownValueField;
  v8 = [v3 stringWithFormat:@"Direction Pad %@ %@ ⬆%#zx ➡%#zx ⬇%#zx ⬅%#zx", v4, v6, self->_eventUpValueField, self->_eventRightValueField, eventDownValueField, self->_eventLeftValueField];

  return v8;
}

@end