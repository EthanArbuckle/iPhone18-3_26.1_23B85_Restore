@interface GCDevicePhysicalInputJoystickElementDescription
- (BOOL)isEqual:(id)equal;
- (GCDevicePhysicalInputJoystickElementDescription)init;
- (GCDevicePhysicalInputJoystickElementDescription)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCDevicePhysicalInputJoystickElementDescription

- (GCDevicePhysicalInputJoystickElementDescription)init
{
  v3.receiver = self;
  v3.super_class = GCDevicePhysicalInputJoystickElementDescription;
  result = [(GCDevicePhysicalInputElementDescription *)&v3 init];
  result->_eventXValueField = -1;
  result->_eventYValueField = -1;
  result->_eventPressValueField = -1;
  result->_eventTouchValueField = -1;
  return result;
}

- (GCDevicePhysicalInputJoystickElementDescription)initWithCoder:(id)coder
{
  v55.receiver = self;
  v55.super_class = GCDevicePhysicalInputJoystickElementDescription;
  coderCopy = coder;
  v4 = [(GCDevicePhysicalInputElementDescription *)&v55 initWithCoder:coderCopy];
  v4->_supportsPress = [coderCopy decodeBoolForKey:@"supportsPress"];
  v4->_supportsTouch = [coderCopy decodeBoolForKey:@"supportsTouch"];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0, v55.receiver, v55.super_class}];
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

  v40 = MEMORY[0x1E695DFD8];
  v41 = objc_opt_class();
  v42 = [v40 setWithObjects:{v41, objc_opt_class(), 0}];
  v43 = [coderCopy decodeObjectOfClasses:v42 forKey:@"pressSources"];
  pressSources = v4->_pressSources;
  v4->_pressSources = v43;

  v45 = MEMORY[0x1E695DFD8];
  v46 = objc_opt_class();
  v47 = [v45 setWithObjects:{v46, objc_opt_class(), 0}];
  v48 = [coderCopy decodeObjectOfClasses:v47 forKey:@"touchSources"];
  touchSources = v4->_touchSources;
  v4->_touchSources = v48;

  v4->_analogAxes = [coderCopy decodeBoolForKey:@"analogAxes"];
  v4->_analogPress = [coderCopy decodeBoolForKey:@"analogPress"];
  [coderCopy decodeFloatForKey:@"directionPressedThreshold"];
  v4->_directionPressedThreshold = v50;
  [coderCopy decodeFloatForKey:@"pressedThreshold"];
  v4->_pressedThreshold = v51;
  [coderCopy decodeFloatForKey:@"touchedThreshold"];
  v4->_touchedThreshold = v52;
  v4->_eventXValueField = [coderCopy decodeIntegerForKey:@"eventXValueField"];
  v4->_eventYValueField = [coderCopy decodeIntegerForKey:@"eventYValueField"];
  v4->_eventPressValueField = [coderCopy decodeIntegerForKey:@"eventPressValueField"];
  v53 = [coderCopy decodeIntegerForKey:@"eventTouchValueField"];

  v4->_eventTouchValueField = v53;
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = GCDevicePhysicalInputJoystickElementDescription;
  coderCopy = coder;
  [(GCDevicePhysicalInputElementDescription *)&v8 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_supportsPress forKey:{@"supportsPress", v8.receiver, v8.super_class}];
  [coderCopy encodeBool:self->_supportsTouch forKey:@"supportsTouch"];
  [coderCopy encodeObject:self->_xySources forKey:@"xySources"];
  [coderCopy encodeObject:self->_xSources forKey:@"xSources"];
  [coderCopy encodeObject:self->_ySources forKey:@"ySources"];
  [coderCopy encodeObject:self->_upSources forKey:@"upSources"];
  [coderCopy encodeObject:self->_leftSources forKey:@"leftSources"];
  [coderCopy encodeObject:self->_downSources forKey:@"downSources"];
  [coderCopy encodeObject:self->_rightSources forKey:@"rightSources"];
  [coderCopy encodeObject:self->_pressSources forKey:@"pressSources"];
  [coderCopy encodeObject:self->_touchSources forKey:@"touchSources"];
  [coderCopy encodeBool:self->_analogAxes forKey:@"analogAxes"];
  [coderCopy encodeBool:self->_analogPress forKey:@"analogPress"];
  *&v5 = self->_directionPressedThreshold;
  [coderCopy encodeFloat:@"directionPressedThreshold" forKey:v5];
  *&v6 = self->_pressedThreshold;
  [coderCopy encodeFloat:@"pressedThreshold" forKey:v6];
  *&v7 = self->_touchedThreshold;
  [coderCopy encodeFloat:@"touchedThreshold" forKey:v7];
  [coderCopy encodeInteger:self->_eventXValueField forKey:@"eventXValueField"];
  [coderCopy encodeInteger:self->_eventYValueField forKey:@"eventYValueField"];
  [coderCopy encodeInteger:self->_eventPressValueField forKey:@"eventPressValueField"];
  [coderCopy encodeInteger:self->_eventTouchValueField forKey:@"eventTouchValueField"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = GCDevicePhysicalInputJoystickElementDescription;
  v4 = [(GCDevicePhysicalInputElementDescription *)&v6 copyWithZone:zone];
  *(v4 + 48) = self->_supportsPress;
  *(v4 + 49) = self->_supportsTouch;
  objc_storeStrong(v4 + 8, self->_xySources);
  objc_storeStrong(v4 + 9, self->_xSources);
  objc_storeStrong(v4 + 10, self->_ySources);
  objc_storeStrong(v4 + 11, self->_upSources);
  objc_storeStrong(v4 + 12, self->_leftSources);
  objc_storeStrong(v4 + 13, self->_downSources);
  objc_storeStrong(v4 + 14, self->_rightSources);
  objc_storeStrong(v4 + 15, self->_pressSources);
  objc_storeStrong(v4 + 16, self->_touchSources);
  *(v4 + 50) = self->_analogAxes;
  *(v4 + 51) = self->_analogPress;
  *(v4 + 13) = LODWORD(self->_directionPressedThreshold);
  *(v4 + 14) = LODWORD(self->_pressedThreshold);
  *(v4 + 15) = LODWORD(self->_touchedThreshold);
  *(v4 + 17) = self->_eventXValueField;
  *(v4 + 18) = self->_eventYValueField;
  *(v4 + 19) = self->_eventPressValueField;
  *(v4 + 20) = self->_eventTouchValueField;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_32;
  }

  v16.receiver = self;
  v16.super_class = GCDevicePhysicalInputJoystickElementDescription;
  if (![(GCDevicePhysicalInputElementDescription *)&v16 isEqual:equalCopy])
  {
    goto LABEL_32;
  }

  if (self->_supportsPress != *(equalCopy + 48))
  {
    goto LABEL_32;
  }

  if (self->_supportsTouch != *(equalCopy + 49))
  {
    goto LABEL_32;
  }

  xySources = self->_xySources;
  if (xySources != equalCopy[8] && ![(NSArray *)xySources isEqual:?])
  {
    goto LABEL_32;
  }

  xSources = self->_xSources;
  if (xSources != equalCopy[9] && ![(NSArray *)xSources isEqual:?])
  {
    goto LABEL_32;
  }

  if (((ySources = self->_ySources, ySources == equalCopy[10]) || [(NSArray *)ySources isEqual:?]) && ((upSources = self->_upSources, upSources == equalCopy[11]) || [(NSArray *)upSources isEqual:?]) && ((leftSources = self->_leftSources, leftSources == equalCopy[12]) || [(NSArray *)leftSources isEqual:?]) && ((downSources = self->_downSources, downSources == equalCopy[13]) || [(NSArray *)downSources isEqual:?]) && ((rightSources = self->_rightSources, rightSources == equalCopy[14]) || [(NSArray *)rightSources isEqual:?]) && ((pressSources = self->_pressSources, pressSources == equalCopy[15]) || [(NSArray *)pressSources isEqual:?]) && ((touchSources = self->_touchSources, touchSources == equalCopy[16]) || [(NSArray *)touchSources isEqual:?]) && self->_analogAxes == *(equalCopy + 50) && self->_analogPress == *(equalCopy + 51) && self->_directionPressedThreshold == *(equalCopy + 13) && self->_pressedThreshold == *(equalCopy + 14) && self->_touchedThreshold == *(equalCopy + 15) && self->_eventXValueField == equalCopy[17] && self->_eventYValueField == equalCopy[18] && self->_eventPressValueField == equalCopy[19])
  {
    v14 = self->_eventTouchValueField == equalCopy[20];
  }

  else
  {
LABEL_32:
    v14 = 0;
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = GCDevicePhysicalInputJoystickElementDescription;
  v4 = [(GCDevicePhysicalInputElementDescription *)&v10 description];
  v5 = v4;
  if (self->_analogAxes)
  {
    v6 = @"analog";
  }

  else
  {
    v6 = @"digital";
  }

  eventPressValueField = self->_eventPressValueField;
  v8 = [v3 stringWithFormat:@"Joystick %@ %@ X:%#zx Y:%#zx P:%#zx T:%#zx", v4, v6, self->_eventXValueField, self->_eventYValueField, eventPressValueField, self->_eventTouchValueField];

  return v8;
}

@end